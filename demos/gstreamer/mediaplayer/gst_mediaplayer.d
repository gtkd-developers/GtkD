/*
 * gst_mediaplayer is placed in the
 * public domain.
 */

module gst_mediaplayer;

import std.conv;
import std.file;
import std.path;
import std.stdio;

//gtkD imports:
import gtk.Main;
import gtk.MainWindow;

import gtk.Widget;
import gdk.Window;
import gdk.Event;
import gtk.DrawingArea;
import gtk.AspectFrame;

import gtk.FileChooserDialog;

import gdk.X11;//Needed for VideoOverlay

import gtk.VBox;
import gtk.HBox;
import gtk.Button;
import gtk.ComboBoxText;

import gobject.Value;

//gstreamerD imports:

import gstreamer.gstreamer;

import gobject.ObjectG;
import glib.ErrorG;
import gstreamer.Element;
import gstreamer.Bin;
import gstreamer.Pipeline;
import gstreamer.ElementFactory;
import gstreamer.Pad;
import gstreamer.Message;
import gstreamer.Structure;
import gstreamer.Bus;

import gstreamerc.gstreamertypes;
import gstreamerc.gstreamer;

//import gstreamerc.gstinterfacestypes;//For GstXOverlay*

import gstinterfaces.VideoOverlay;

import gtkc.glib;
import gtkc.gobject;


class MonitorOverlay : DrawingArea
{
public:
	
	this()
	{
		debug(MonitorOverlay) writeln("Monitor.this() START.");
		debug(MonitorOverlay) scope(exit) writeln("Monitor.this() END.");
		
		setAppPaintable( true );
		
		//For some reason this does more harm than good?
		//addOnExpose( &onExpose );
	}
	
	/*
	//For some reason this does more harm than good?
	int onExpose(GdkEventExpose* event, Widget widget)
	{
		if( videoOverlay !is null )
		{
			//writeln("And we even have an videoOverlay");
			videoOverlay.expose();//For some reason this does more harm than good?
		}
		return false;//?
	}
	*/
	
	public VideoOverlay videoOverlay() { return m_videoOverlay; }
	/**
	* Give this method an VideoOverlay that you've created from
	* a videoSink. like: monitorOverlay.videoOverlay = new VideoOverlay( videoSink );
	*/
	public VideoOverlay videoOverlay(VideoOverlay set)
	{
		debug(MonitorOverlay) writeln("Monitor.videoOverlay(set) START.");
		debug(MonitorOverlay) scope(exit) writeln("Monitor.videoOverlay(set) END.");
		m_videoOverlay = set;
		
		debug(MonitorOverlay) writeln("Monitor.videoOverlay(set) videoOverlay set. Now setting XwindowId.");
		m_videoOverlay.setWindowHandle( X11.windowGetXid( getWindow() ) );
		
		debug(MonitorOverlay) writeln("X11.drawableGetXid: {}", X11.windowGetXid( getWindow() ) );
		
		return m_videoOverlay;
	}
	protected VideoOverlay m_videoOverlay;
	
}


class GstMediaPlayer : MainWindow
{
public:

	GstBusSyncReply createVideoOverlayWindowCb( Message msg )
	{
		// ignore anything but 'prepare-xwindow-id' element messages
		if( msg.type() != GstMessageType.ELEMENT )
		//if (GST_MESSAGE_TYPE (message) != GST_MESSAGE_ELEMENT)
			return GstBusSyncReply.PASS;
		
		/*GstMessageType typ = msg.type();
		Stdout("The message type is: ")( cast(int)typ ).newline;
		
		ObjectGst obu = msg.src();
		Stdout("The message source is named: ")( obu.getName() ).newline;
		*/
		Structure str = msg.getStructure();
		if( str.hasName("prepare-xwindow-id") == false )
		//if (!gst_structure_has_name (message->structure, "prepare-xwindow-id"))
			return GstBusSyncReply.PASS;
		
		debug(MonitorOverlay) writeln("Now we should create the X window.");
		
		monitorOverlay.videoOverlay = new VideoOverlay( videosink );
		
		debug(MonitorOverlay) writeln("Created an VideoOverlay.");
		
		return GstBusSyncReply.DROP;
	}

	bool busCall( Message msg )
	{
		debug(gstreamer) writeln("GstMediaPlayer.busCall(msg) START.");
		debug(gstreamer) scope(exit) writeln("GstMediaPlayer.busCall(msg) END.");

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				writeln("Unknown message type.");
			break;
			case GstMessageType.EOS:
				writeln("End-of-stream. Looping from the start.");
				//Main.quit();
				onSeekToStart(null);
			break;

			case GstMessageType.ERROR:
			{
				string dbug;
				ErrorG err;
				msg.parseError(err, dbug);
				//g_free (dbug);
				writefln("Error: %s dbug: %s", to!string(err.getErrorGStruct().message), dbug );
				//g_error_free (err);
				Main.quit();
			break;
			}
			default:
			break;
		}

		return true;
	}

	string g_appDir;

	this(string[] args)
	{

		super("GstMediaPlayer");
		
		setSizeRequest(600, 400);
		
		vbox = new VBox(false,0);
		
		monitorOverlay = new MonitorOverlay();
		monitorAspectFrame = new AspectFrame("", 0.5, 0.5, 16.0/9.0, false );
		
		monitorAspectFrame.add( monitorOverlay );
		monitorAspectFrame.setShadowType( GtkShadowType.NONE );
		monitorAspectFrame.setLabelWidget( null );//Yes! This get's rid of that stupid label on top of the aspectframe! More room for the monitor.
		monitorAspectFrame.setBorderWidth(0);//No effect. Trying to get rid of that one pixel border...
		monitorAspectFrame.setSizeRequest(360, -1);//No effect. Why?
		
		vbox.packStart( monitorAspectFrame, true, true, 0 );
		
		buttonsHBox = new HBox(false,0);
		
		openButton = new Button("Open...");
		openButton.addOnClicked( &onOpen );
		buttonsHBox.packStart( openButton, false, false, 0 );
		
		playButton = new Button("Play");
		playButton.addOnClicked( &onPlay );
		buttonsHBox.packStart( playButton, false, false, 0 );
		
		aspectComboBox = new ComboBoxText();//Create a new text ComboBox.
		aspectComboBox.appendText("16:9");
		aspectComboBox.appendText("4:3");
		aspectComboBox.setActiveText("16:9");
		aspectComboBox.addOnChanged( &onAspectComboBoxChanged );
		
		buttonsHBox.packStart( aspectComboBox, false, false, 0 );
		
		quitButton = new Button(StockID.QUIT);
		quitButton.addOnClicked( &onQuit );
		buttonsHBox.packStart( quitButton, false, false, 0 );
		
		vbox.packStart( buttonsHBox, false, false, 0 );
		
		add( vbox );
		
		showAll();

		if (args.length > 1)
		{
			mediaFileUri = args[1];

			if ( !isRooted(mediaFileUri) )
			{
				mediaFileUri = buildNormalizedPath(getcwd(), mediaFileUri);
			}
		
			//This will construct the filename to be a URI, but it will only
			//work for files in the same directory.
			if( mediaFileUri[0..7] != "file://" && mediaFileUri[0..7] != "http://" )
				mediaFileUri = "file://"~ mediaFileUri;
		}
		
		/*
		// check input arguments
		if (args.length > 1)
		{
			for( uint i = 0; i < args.length; i++ )
			{
				string ar = args[i];
				
				if( ar == "--help" )
				{
					writeln("Usage: {} <mediafilename>", args[0]);
					return -1;
				}
			}
		}
		*/

		if( mediaFileUri != "" )
			playMediaFile(mediaFileUri);
		
	}
	
	void playMediaFile(string file)
	{
		if( source !is null )
		{
			fullStop();
			delete source;
		}
		if( videosink !is null )
			delete videosink;
	
		// create elements

		source = ElementFactory.make("playbin", "ourplaybin");
		//source = ElementFactory.make("playbin2", "ourplaybin");//playbin2 doesn't work,
		//correctly with VideoOverlay.
		videosink = ElementFactory.make("xvimagesink", "video-output-xvimagesink");
		//Only xvimagesink work (almost) correctly with VideoOverlay, but even it still
		//has some problems. It won't work with compositing enabled...
		//videosink = ElementFactory.make("autovideosink", "video-output-sink");
		//videosink = ElementFactory.make("fakesink", "video-sink");

		if( source is null )
		{
			writeln("PlayBin could not be created");
			throw new Exception("One or more gstreamerD elements could not be created.");
		}
		
		if( videosink is null )
		{
			writeln("videosink could not be created");
			throw new Exception("One or more gstreamerD elements could not be created.");
		}

		//add message handlers
		source.getBus().setSyncHandler( &createVideoOverlayWindowCb );
		source.getBus().addWatch( &busCall );

		//Some Value handling, to get our videosink C GstElement*
		//to be accepted by setProperty. This could propably made cleaner.
		//One idea is to add a Element.setProperty(string, void*); method.
		
		Value val = new Value();
		val.init(GType.OBJECT);
		val.setObject( videosink.getElementStruct() );
		source.setProperty( "video-sink", val );
	
		source.setProperty("uri", file);
		play();
	}
	

	~this()
	{
		fullStop();
	}

	void onPlay(Button button)
	{
		play();
	}
	
	void play()
	{
		if( isPlaying == false )
		{
			isPlaying = true;
			// Now set to playing and iterate.
			debug(1) writeln("Setting to PLAYING.");
			//pipeline.setState( GstState.PLAYING );
			source.setState( GstState.PLAYING );
			debug(1) writeln("Running.");
		}
		else
		{
			isPlaying = false;
			source.setState( GstState.PAUSED );
		}
	}
	
	void fullStop()
	{
		if( source !is null )
			source.setState( GstState.NULL );
		isPlaying = false;
	}
	
	void onSeekToStart(Button button)
	{
		source.seek( 0 );//seek to start.
	}

	void onOpen(Button button)
	{
		runImportMaterialFileChooser();
	}
	
	void onQuit(Button button)
	{
		fullStop();
		Main.quit();
	}
	
	void onAspectComboBoxChanged( ComboBoxText combo )
	{
		string asp = combo.getActiveText();
		if( asp == "16:9" )
			monitorAspectFrame.set( 0.5, 0.5, 16.0/9.0, false );
		else //if( asp == "4:3" )
			monitorAspectFrame.set( 0.5, 0.5, 4.0/3.0, false );
			
	}
	
	void runImportMaterialFileChooser()
	{
		string[] a;
		ResponseType[] r;
		a ~= "Play file";
		a ~= "Close";
		r ~= ResponseType.APPLY;//GTK_RESPONSE_OK;
		r ~= ResponseType.CANCEL;
		if ( importMaterialFileChooserDialog  is  null )
		{
			importMaterialFileChooserDialog = new FileChooserDialog("Play mediafile", this, FileChooserAction.OPEN, a, r);
		}
		
		if( importMaterialFileChooserDialog.run() != ResponseType.CANCEL )
		{
			mediaFileUri = importMaterialFileChooserDialog.getUri();
			
			writefln( "file selected: %s", mediaFileUri );
			playMediaFile(mediaFileUri);
		}
		
		importMaterialFileChooserDialog.hide();
	}
	
protected:

	string mediaFileUri = "";

	Element source, videosink;
	
	VBox vbox;
	HBox buttonsHBox;
	Button openButton;
	Button playButton;
	bool isPlaying(bool set)
	{
		m_isPlaying = set;
		/*
		//For some reason enabling this change of playButton
		//label, from Play to Pause, will cause the VideoOverlay
		//not to show the picture while we're on Pause.
		//That's why it's disabled. VideoOverlay just doesn't work
		//properly...
		if( playButton !is null )
		{
			if( m_isPlaying == true )
			{
				playButton.setLabel("Pause");
			}
			else
			{
				playButton.setLabel("Play");
			}
		}
		*/
		return m_isPlaying;
	}
	bool isPlaying() { return m_isPlaying; }
	bool m_isPlaying = false;
	
	ComboBoxText aspectComboBox;
	Button quitButton;
	
	MonitorOverlay monitorOverlay;
	AspectFrame monitorAspectFrame;
	
	FileChooserDialog importMaterialFileChooserDialog;
}


int main(string[] args)
{
	writeln("gstreamerD GstMediaPlayer");

	uint major, minor, micro, nano;

	writeln("Trying to init...");

	Main.init(args);
	GStreamer.init(args);

	writeln("Checking version of GStreamer...");
	GStreamer.versio(major, minor, micro, nano);
	writefln("The installed version of GStreamer is %s.%s.%s", major, minor, micro );

	GstMediaPlayer gstMediaPlayer = new GstMediaPlayer(args);

	//We must use the gtkD mainloop to run gstreamerD apps.
	Main.run();

	return 0;
}



