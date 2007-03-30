/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 *
 * gstreamerD GNonLin video and two track audio example.
 * by Joonas Kiviharju
 *
 * This example isn't final quality, and it represents some not-so-good API
 * found from gstreamerD. Also it doesn't yet do all the things it is supposed to
 * because of GNonLin not being finished. And therefore it has it's share of bugs.
 */

//Phobos imports:
import std.stdio;
import std.string;

//gtkD imports:
import gtk.GtkD;
import gtk.MainWindow;
import gtk.VBox;
import gtk.Button;
import gobject.Value;

//gstreamerD imports:
import gstreamer.gstreamer;
import gstreamer.Pipeline;
import gstreamer.Bin;
import gstreamer.Element;
import gstreamer.ElementFactory;
import gstreamer.Pad;
import gstreamer.Caps;
import gstreamer.Message;
import gstreamer.Bus;
import gstreamerc.gstreamertypes;

//debug=GnonlinHello;

const long FRAME_25 = (GST_SECOND / 25L);//40000000

class GnonlinHello : MainWindow
{
public:
	
	this( char[] file1, char[] file2, char[] file3, char[] file4 )
	{
		debug(GnonlinHello) writefln("GnonlinHello.this() START.");
		debug(GnonlinHello) scope(exit) writefln("GnonlinHello.this() END.");
		
		super("Gnonlin helloworld");
		
		vbox = new VBox(false,0);
		playButton = new Button("Play");
		playButton.addOnClicked( &onPlay );
		vbox.packStart( playButton, false, false, 0 );
		
		stopButton = new Button("Stop");
		stopButton.addOnClicked( &onStop );
		vbox.packStart( stopButton, false, false, 0 );
		
		seekButton = new Button("Back to start");
		seekButton.addOnClicked( &onSeek );
		vbox.packStart( seekButton, false, false, 0 );
		
		forwardOneButton = new Button("Forward one");
		forwardOneButton.addOnClicked( &onForwardOne );
		vbox.packStart( forwardOneButton, false, false, 0 );
		
		backwardOneButton = new Button("Backward one");
		backwardOneButton.addOnClicked( &onBackwardOne );
		vbox.packStart( backwardOneButton, false, false, 0 );
		
		add( vbox );
		
		showAll();
		
		// create elements
		
		pipeline = new Pipeline("mypipeline");
		
		pipeline.getBus().addWatch( &busCall );
		
		gnl_video_composition = new Bin( ElementFactory.make("gnlcomposition", "gnl_video_composition") );
		if( pipeline.add( gnl_video_composition ) == false ) throw new Exception("pipeline.add(gnl_video_composition)");
		gnl_video_composition.addOnPadAdded(&newPad);
		
		
		debug(GnonlinHello)
		{
			writefln("At the moment getting videotestsrc usually segfaults if you put even one writefln before it.");
			writefln("Remove all writeflns and debugs to make it work.");
			//That's why debug=GnonlinHello is not on now.
			//If you need the writeflns, then comment-out the following six lines.
		}
		
		m_defaultVideoElement = ElementFactory.make( "videotestsrc", "default-videoelement" );
		m_defaultVideoElement.setProperty("pattern", 2);
		m_defaultVideoSource = new Bin( ElementFactory.make( "gnlsource", "defaultvideosource") );
		m_defaultVideoSource.add( m_defaultVideoElement );
		m_defaultVideoSource.setProperty("priority", 4294967295 );// 2 ** 32 -1 );
		gnl_video_composition.add( m_defaultVideoSource );
		
		
		gnl_audio_composition1 = new Bin( ElementFactory.make("gnlcomposition", "gnl_audio_composition1") );
		if( pipeline.add( gnl_audio_composition1 ) == false ) throw new Exception("pipeline.add(gnl_audio_composition1)");
		gnl_audio_composition1.addOnPadAdded(&newPad);

		gnl_audio_composition2 = new Bin( ElementFactory.make("gnlcomposition", "gnl_audio_composition2") );
		if( pipeline.add( gnl_audio_composition2 ) == false ) throw new Exception("pipeline.add(gnl_audio_composition2)");
		gnl_audio_composition2.addOnPadAdded(&newPad);
	
		m_defaultAudioElement1 = ElementFactory.make( "audiotestsrc", "defaultaudioelement1" );
		m_defaultAudioElement1.setProperty("volume", 0);
		m_defaultAudioSource1 = new Bin( ElementFactory.make( "gnlsource", "defaultaudiosource1") );
		m_defaultAudioSource1.add( m_defaultAudioElement1 );
		m_defaultAudioSource1.setProperty("priority", 4294967295 );//2 ** 32 -1 );
		
		gnl_audio_composition1.add( m_defaultAudioSource1 );
		
		
		//This is how'd you do it, if it worked. For some reason adding a defaultaudiosource
		//to a gnlcomposition that has it's first gnlfilesource in other than zero
		//ends up with errors in the playback.
		//This makes it impossible for now to have a second track of audio, that doesn't
		//start from zero. But as long as you have something starting from zero, it works.
		m_defaultAudioElement2 = ElementFactory.make( "audiotestsrc", "defaultaudioelement2" );
		m_defaultAudioElement2.setProperty("volume", 0);
		m_defaultAudioSource2 = new Bin( ElementFactory.make( "gnlsource", "defaultaudiosource2") );
		m_defaultAudioSource2.add( m_defaultAudioElement2 );
		m_defaultAudioSource2.setProperty("priority", 4294967295 );//2 ** 32 -1 );
		
		gnl_audio_composition2.add( m_defaultAudioSource2 );
		
		
		//VIDEOSINK
		
		//Test one of these: xvimagesink, ximagesink, sdlvideosink
		//xvimagesink is accelerated
		videosink = ElementFactory.make("xvimagesink", "video-output-xvimagesink");
		if( videosink.getElementStruct() is null )
		{
			writefln("Creation of xvimagesink failed.");
		}
		
		if( pipeline.add( videosink ) == false ) throw new Exception("pipeline.add(videosink)");
		
		//AUDIOSINK:

		//The adder element can add/mix several audio tracks together.
		audio_adder = new Bin( ElementFactory.make("adder", "audio_adder") );
		if( pipeline.add( audio_adder ) == false ) throw new Exception("pipeline.add(audio_adder)");

		audioconvert = ElementFactory.make("audioconvert", "audioconverter");
		if( pipeline.add( audioconvert ) == false ) throw new Exception("pipeline.add(audioconvert)");
		
		if( audio_adder.link( audioconvert ) == false ) throw new Exception("audio_adder.link(audioconvert)");

		audiosink = ElementFactory.make("alsasink", "audio-output-alsa");
		if( pipeline.add( audiosink ) == false ) throw new Exception("pipeline.add(audiosink)");
		if( audioconvert.link( audiosink ) == false ) throw new Exception("audioconvert.link(audiosink)");


		//GNLFILESOURCES:

		debug(GnonlinHello) writefln("GnonlinHello.this() Initing gnlfilesources.");

		//This isn't entirely necessary, but demonstrated here because this way you could
		//use video files that have audio as audiofiles.
		Caps videocaps = Caps.fromString("video/x-raw-yuv;video/x-raw-rgb");
		Caps audiocaps = Caps.fromString("audio/x-raw-int;audio/x-raw-float");

		//VIDEO1:
		
		debug(GnonlinHello) writefln("GnonlinHello.this() video_material1.");

		video_material1 = ElementFactory.make("gnlfilesource", "video_material1");
		//video_material1.addOnPadAdded(&newPad);
		debug(GnonlinHello) writefln("GnonlinHello.this() Trying to do gnl_video_composition.add( video_material1 ).");
		if( (cast(Bin)gnl_video_composition).add( video_material1 ) == false ) throw new Exception("gnl_video_composition.add(video_material1)");
		
		debug(GnonlinHello) writefln("GnonlinHello.this() Setting properties for video_material1.");

		video_material1.location( file1 );
		//alternatively: video_material1.setProperty("location", file1 );

		//This is just an example of getting the properties. It is difficult at the moment.
		//This API should be simplified:
		scope Value locval = new Value( "empty" );
		video_material1.getProperty( "location", locval );
		char[] loc = locval.getString();
		debug(GnonlinHello) writefln("video_material1 location:", loc );

		video_material1.setProperty("start", 0 * SECOND );
		video_material1.setProperty("duration", 5 * SECOND );
		video_material1.setProperty("media-start", 0 * SECOND );
		video_material1.setProperty("media-duration", 5 * SECOND );

		//This isn't entirely necessary, but demonstrated here because this way you could
		//use video files that have audio as audiofiles.
		video_material1.caps( videocaps );

		//VIDEO2:

		video_material2 = ElementFactory.make("gnlfilesource", "video_material2");
		if( (cast(Bin)gnl_video_composition).add( video_material2 ) == false ) throw new Exception("gnl_video_composition.add(video_material2)");
	
		video_material2.location( file2 );
		video_material2.setProperty("start",  5 * SECOND );
		video_material2.setProperty("duration", 5 * SECOND );
		video_material2.setProperty("media-start", 0 * SECOND );
		video_material2.setProperty("media-duration", 5 * SECOND );

		video_material2.caps( videocaps );

		debug(GnonlinHello) writefln("Setting audio properties.");

		audio1 = ElementFactory.make("gnlfilesource", "audio1");
		if( (cast(Bin)gnl_audio_composition1).add( audio1 ) == false ) throw new Exception("gnl_audio_composition1.add(audio1)");

		audio1.location( file3 );
		audio1.setProperty("start",  0 * SECOND );
		audio1.setProperty("duration", 10 * SECOND );
		audio1.setProperty("media-start", 0 * SECOND );
		audio1.setProperty("media-duration", 10 * SECOND );

		//This isn't entirely necessary, but demonstrated here because this way you could
		//use video files that have audio as audiofiles.
		audio1.caps( audiocaps );

		audio2 = ElementFactory.make("gnlfilesource", "audio2");
		if( (cast(Bin)gnl_audio_composition2).add( audio2 ) == false ) throw new Exception("gnl_audio_composition2.add(audio2)");

		audio2.location( file4 );
		audio2.setProperty("start",  0 * SECOND );
		audio2.setProperty("duration", 5 * SECOND );
		audio2.setProperty("media-start", 0 * SECOND );
		audio2.setProperty("media-duration", 5 * SECOND );

		audio2.caps( audiocaps );

	}

	~this()
	{
		pipeline.setState( GstState.NULL );
	}

	void onSeek(Button button)
	{
		pipeline.seek( 0 * GST_SECOND );
	}

	void onForwardOne(Button button)
	{
		long cur_pos = pipeline.queryPosition();
		debug(GnonlinHello) writefln("position: ", cur_pos );
		pipeline.seek( cur_pos + FRAME_25 );

	}

	void onBackwardOne(Button button)
	{
		long cur_pos = pipeline.queryPosition();
		debug(GnonlinHello) writefln("position: ", cur_pos );
		pipeline.seek( cur_pos - FRAME_25 );

	}

	void onPlay(Button button)
	{
		debug(GnonlinHello) writefln("Setting to PLAYING.");
		pipeline.setState( GstState.PLAYING );
		debug(GnonlinHello) writefln("Running.");
	}

	void onStop(Button button)
	{
		debug(GnonlinHello) writefln("Setting to STOP.");
		//pipeline.setState( GstState.NULL );
		pipeline.setState( GstState.PAUSED );
		debug(GnonlinHello) writefln("Stopped.");
	}

	void newPad( Pad pad, Element element )
	{
		debug(GnonlinHello) writefln("newPad callback called. START.");

		if( pad is null )
			throw new Exception("newPad: pad is null.");
		else if( pad.getPadStruct() is null )
			throw new Exception("newPad: pad.getPadStruct is null.");
		if( element is null )
			throw new Exception("newPad: element is null.");
		
		Pad convpad;

		// We can now link this pad with the audio decoder
		debug(GnonlinHello) writefln("Dynamic pad created, linking parser/decoder");

		Caps caps = pad.getCaps();

		char[] pad_type = caps.getStructure(0).getName();

		debug(GnonlinHello) writefln("pad_type: ", pad_type );

		if( std.string.find( pad_type, "video" ) == -1 )
		{
			//it's audio:
			debug(GnonlinHello) writefln("newPad(): linking to audio-output.");
			//convpad = audioconvert.getPad("audiosink");
			//convpad = audioconvert.getCompatiblePad( pad, pad.getCaps() );
			convpad = audio_adder.getCompatiblePad( pad, pad.getCaps() );
		}
		else
		{
			//it's video:
			debug(GnonlinHello) writefln("newPad(): linking to video-output.");
			convpad = videosink.getCompatiblePad( pad, pad.getCaps() );

		}


		if( convpad is null )
			throw new Exception("newPad: convpad is null.");
		else if( convpad.getPadStruct() is null )
			throw new Exception("newPad: convpad.getPadStruct is null.");

		debug(GnonlinHello)
		{
			writefln("Pad name: ", pad.getName() );
			writefln("convpad name: ", convpad.getName() );
			writefln("Pad parent name: ", pad.getParent().getName() );
			writefln("convpad parent name: ", convpad.getParent().getName() );
		}

		debug(GnonlinHello) writefln("doing a gst_pad_link.");
		//if(
		pad.link( convpad );// != GstPadLinkReturn.OK ) throw new Exception("dynamic pad.link(convpad)");

		debug(GnonlinHello) writefln("Done. That was ok.");

	}
	
	bool busCall( Message msg )
	{
		debug(GnonlinHello) writefln("GnonlinHello.busCall(msg) START.");
		debug(GnonlinHello) scope(exit) writefln("GnonlinHello.busCall(msg) END.");

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				debug(GnonlinHello) writefln("Unknown message type.");
			break;
			case GstMessageType.EOS:
				debug(GnonlinHello) writefln("End-of-stream.");
				//GtkD.mainQuit();
			break;

			case GstMessageType.ERROR:
			{
				gchar *dbug;
				GError *err;
				msg.parseError(&err, &dbug);
				//g_free (dbug);
				writefln("Error: %s\n", err.message);
				//g_error_free (err);
				//GtkD.mainQuit();
			break;
			}
			default:
			break;
		}

		return true;
	}
	
protected:
	
	//GStreamer elements:
	
	Pipeline pipeline;
	
	Bin gnl_video_composition;
		Element video_material1, video_material2;

	Element audio_adder;
		Bin gnl_audio_composition1;
			Element audio1;
		Bin gnl_audio_composition2;
			Element audio2;

	//default sources:
	Element m_defaultVideoElement;
	Bin m_defaultVideoSource;
	Element m_defaultAudioElement1;
	Bin m_defaultAudioSource1;
	Element m_defaultAudioElement2;
	Bin m_defaultAudioSource2;

	Element audioconvert, audiosink;
	Element videosink;

	//GUI elements for our little remote controller:

	VBox vbox;
	Button playButton;
	Button stopButton;
	Button seekButton;
	Button forwardOneButton;
	Button backwardOneButton;
}


int main(char[][] args)
{
	debug(GnonlinHello) writefln("GStreamerD Hello!");

	uint major, minor, micro, nano;

	debug(GnonlinHello) writefln("Trying to init...");

	GtkD.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 5)
	{
		writefln("Give it two videofiles and two audiofiles. The files must be atleast 10 seconds long. Usage example: %s videofile1.dv videofile2.mov audiofile1.ogg audiofile2.ogg\n", args[0]);
		return -1;
	}

	debug(GnonlinHello) writefln("Checking version of GStreamer...");
	GStreamer.versio(&major, &minor, &micro, &nano);
	debug(GnonlinHello) writefln("This program is linked against GStreamer ", major, ".", minor, ".", micro );
	
	GnonlinHello gstHello = new GnonlinHello( args[1], args[2], args[3], args[4] );

	GtkD.main();

	return 0;
}


