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
 * by Jonas Kivi
 *
 * This example isn't final quality, and it represents some not-so-good API
 * found from gstreamerD. Also it doesn't yet do all the things it is supposed to
 * because of GNonLin not being finished. And therefore it has it's share of bugs.
 */

module gnonlin_encoding;

//Phobos imports:
//import std.stdio;
//import std.string;

//Tango imports
import tango.io.Stdout;
import Util = tango.text.Util;
import Integer = tango.text.convert.Integer;
import tango.util.collection.LinkSeq;
import Stringz = tango.stdc.stringz;

//gtkD imports:
import gtk.GtkD;
import gtk.MainWindow;
import gtk.VBox;
import gtk.Button;
import gobject.Value;
import gtk.Timeout;
import gtk.ProgressBar;

//gstreamerD imports:
import gstreamer.gstreamer;
import gstreamer.Pipeline;
import gstreamer.Bin;
import gstreamer.Element;
import gstreamer.ElementFactory;
import gstreamer.Pad;
import gstreamer.GhostPad;
import gstreamer.Caps;
import gstreamer.Message;
import gstreamer.Bus;
import gstreamerc.gstreamertypes;

import smartvideoscale;

//debug=GnonlinHello;

const long FRAME_25 = (GST_SECOND / 25L);//40000000

class GnonlinHello : MainWindow
{
public:
	
	void initEncoding()
	{
		if( encodeBin is null )//we haven't yet inited encoding elements.
		{
			debug(encoding) Stdout("PipelinePlayer.initEncoding() START.").newline;
			debug(encoding) scope(exit) Stdout("PipelinePlayer.initEncoding() END.").newline;
			
			m_encodeBin = new Bin( ElementFactory.make("bin") );
			
			//IMPORTANT: Here we put the encodeBin to the currentEncodePipeline
			m_currentEncodePipeline.add( encodeBin );
			
			m_videoInQueue = ElementFactory.make("queue", "videoInQueue");
			m_videoIdentity = ElementFactory.make("identity", "videoIdentity");
			m_colourspace = ElementFactory.make("ffmpegcolorspace");
			m_videoFrameRate = ElementFactory.make("videorate", "videoFrameRate");
			
			m_smartVideoScale = new SmartVideoScale();
			
			//m_videoScale = ElementFactory.make(TODO"?", "videoScale");
			m_encoder = ElementFactory.make("theoraenc");
			m_encoder.setProperty( "bitrate", 2000 );
			m_videoOutQueue = ElementFactory.make("queue", "videoOutQueue");
			
			m_audioInQueue = ElementFactory.make("queue", "audioInQueue");
			m_audioIdentity = ElementFactory.make("identity", "audioIdentity");
			m_audioConvertEnc = ElementFactory.make("audioconvert");
			m_audioResample = ElementFactory.make("audioresample", "audioResample");
			m_audioBitRate = ElementFactory.make("audiorate", "audioBitRate");
			m_audioEncoder = ElementFactory.make("vorbisenc");
			m_audioOutQueue = ElementFactory.make("queue", "audioOutQueue");
			
			m_muxer = ElementFactory.make("oggmux");
			m_fileSink = ElementFactory.make("filesink");
			//fileSink.location = g_appDir ~ "testifile.ogg";
			fileSink.location = "/home/joonaz/testifile.ogg";
			
			encodeBin.add( videoInQueue );
			encodeBin.add( videoIdentity );
			encodeBin.add( colourspace );
			encodeBin.add( videoFrameRate );
			encodeBin.add( videoScale );
			encodeBin.add( encoder );
			encodeBin.add( videoOutQueue );
			
			encodeBin.add( audioInQueue );
			encodeBin.add( audioIdentity );
			encodeBin.add( audioConvertEnc );
			encodeBin.add( audioResample );
			encodeBin.add( audioBitRate );
			encodeBin.add( audioEncoder );
			encodeBin.add( audioOutQueue );
			
			encodeBin.add( muxer );
			encodeBin.add( fileSink );
			
			Caps vide_caps = getVideoCaps();
			videoScale.setCaps( vide_caps );
			
			if( videoInQueue.link( videoIdentity ) == false )
			{
				Stdout("videoInQueue-videoIdentity").newline;
				throw new Exception("Unable to link videoInQueue to videoIdentity.");
			}
			if( videoIdentity.link( colourspace ) == false )
			{
				Stdout("videoIdentity-colourspace").newline;
				throw new Exception("Unable to link videoIdentity to colourspace.");
			}
			if( colourspace.link( videoScale ) == false )
			//if( colourspace.link( videoFrameRate ) == false )
			{
				Stdout("colourspace-videoScale").newline;
				throw new Exception("Unable to link colourspace to videoScale.");
			}
			if( videoScale.link( videoFrameRate ) == false )
			{
				Stdout("videoScale-videoFrameRate").newline;
				throw new Exception("Unable to link videoScale to videoFrameRate.");
			}
			if( videoFrameRate.linkFiltered( encoder, vide_caps ) == false )
			{
				Stdout("videoFrameRate-encoder").newline;
				throw new Exception("Unable to link videoFrameRate to encoder.");
			}
			//encoder.link( muxer );
			if( encoder.link( videoOutQueue ) == false )
			{
				Stdout("encoder-videoOutQueue").newline;
				throw new Exception("Unable to link encoder to videoOutQueue.");
			}
			if( videoOutQueue.link( muxer ) == false )
			{
				Stdout("videoOutQueue-muxer").newline;
				throw new Exception("Unable to link videoOutQueue to muxer.");
			}
			//Pad vid_enc_pad = encoder.getPad("src");
			//Pad vid_mux_pad = muxer.getCompatiblePad( vid_enc_pad, vid_enc_pad.getCaps() );
			//g_checkPadLinkReturn( vid_enc_pad.link( vid_mux_pad ), "encoder-muxer" );
			
			if( audioInQueue.link( audioIdentity ) == false )
			{
				Stdout("audioInQueue-audioIdentity").newline;
				throw new Exception("Unable to link audioInQueue to audioIdentity.");
			}
			if( audioIdentity.link( audioConvertEnc ) == false )
			{
				Stdout("audioIdentity-audioConvertEnc").newline;
				throw new Exception("Unable to link audioIdentity to audioConvertEnc.");
			}
			if( audioConvertEnc.link( audioResample ) == false )
			{
				Stdout("audioConvertEnc-audioResample").newline;
				throw new Exception("Unable to link audioConvertEnc to audioResample.");
			}
			if( audioResample.link( audioBitRate ) == false )
			{
				Stdout("audioResample-audioBitRate").newline;
				throw new Exception("Unable to link audioResample to audioBitRate.");
			}
			if( audioBitRate.linkFiltered( audioEncoder, getAudioCaps() ) == false )
			{
				Stdout("audioBitRate-audioEncoder").newline;
				throw new Exception("Unable to link audioBitRate to audioEncoder.");
			}
			//audioEncoder.link( muxer );
			if( audioEncoder.link( audioOutQueue ) == false )
			{
				Stdout("audioEncoder-audioOutQueue").newline;
				throw new Exception("Unable to link audioEncoder to audioOutQueue.");
			}
			if( audioOutQueue.link( muxer ) == false )
			{
				Stdout("audioOutQueue-muxer").newline;
				throw new Exception("Unable to link audioOutQueue to muxer.");
			}
			//Pad aud_enc_pad = audioEncoder.getPad("src");
			//Pad aud_mux_pad = muxer.getCompatiblePad( aud_enc_pad, aud_enc_pad.getCaps() );
			//g_checkPadLinkReturn( aud_enc_pad.link( aud_mux_pad ), "audioEncoder-muxer" );
			
			if( muxer.link( fileSink ) == false )
			{
				Stdout("muxer-fileSink").newline;
				throw new Exception("Unable to link muxer to fileSink.");
			}
			
			GhostPad vgpad = new GhostPad( "vsink", videoInQueue.getPad("sink") );
			vgpad.setActive(true);
			encodeBin.addPad( vgpad );
			GhostPad agpad = new GhostPad( "asink", audioInQueue.getPad("sink") );
			agpad.setActive(true);
			encodeBin.addPad( agpad );
		}
	}
	
	this( char[] file1, char[] file2, char[] file3, char[] file4 )
	{
		debug(GnonlinHello) Stdout("GnonlinHello.this() START.").newline;
		debug(GnonlinHello) scope(exit) Stdout("GnonlinHello.this() END.").newline;
		
		super("Gnonlin helloworld");
		
		vbox = new VBox(false,0);
		/*
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
		*/
		encodeButton = new Button("Encode");
		encodeButton.addOnClicked( &onEncode );
		vbox.packStart( encodeButton, false, false, 0 );
		
		progressBar = new ProgressBar();
		progressBar.setText( "Stopped" );
		vbox.packStart( progressBar, false, false, 0 );
		
		
		add( vbox );
		
		showAll();
		
		// create elements
		
		pipeline = new Pipeline("mypipeline");
		
		pipeline.getBus().addWatch( &busCall );
		
		m_currentEncodePipeline = pipeline;
		
		gnl_video_composition = new Bin( ElementFactory.make("gnlcomposition", "gnl_video_composition") );
		if( pipeline.add( gnl_video_composition ) == false ) throw new Exception("pipeline.add(gnl_video_composition)");
		gnl_video_composition.addOnPadAdded(&newPad);
		
		
		debug(GnonlinHello)
		{
			Stdout("At the moment getting videotestsrc usually segfaults if you put even one Stdout before it.").newline;
			Stdout("Remove all Stdouts and debugs to make it work.").newline;
			//That's why debug=GnonlinHello is not on now.
			//If you need the Stdouts, then comment-out the following six lines.
		}
		
	/*
		m_defaultVideoElement = ElementFactory.make( "videotestsrc", "default-videoelement" );
		m_defaultVideoElement.setProperty("pattern", 2);
		m_defaultVideoSource = new Bin( ElementFactory.make( "gnlsource", "defaultvideosource") );
		m_defaultVideoSource.add( m_defaultVideoElement );
		m_defaultVideoSource.setProperty("priority", 4294967295 );// 2 ** 32 -1 );
		gnl_video_composition.add( m_defaultVideoSource );
	*/
		
		
		gnl_audio_composition1 = new Bin( ElementFactory.make("gnlcomposition", "gnl_audio_composition1") );
		if( pipeline.add( gnl_audio_composition1 ) == false ) throw new Exception("pipeline.add(gnl_audio_composition1)");
		gnl_audio_composition1.addOnPadAdded(&newPad);

		/*gnl_audio_composition2 = new Bin( ElementFactory.make("gnlcomposition", "gnl_audio_composition2") );
		if( pipeline.add( gnl_audio_composition2 ) == false ) throw new Exception("pipeline.add(gnl_audio_composition2)");
		gnl_audio_composition2.addOnPadAdded(&newPad);*/
	
	/*
		m_defaultAudioElement1 = ElementFactory.make( "audiotestsrc", "defaultaudioelement1" );
		m_defaultAudioElement1.setProperty("volume", 0);
		m_defaultAudioSource1 = new Bin( ElementFactory.make( "gnlsource", "defaultaudiosource1") );
		m_defaultAudioSource1.add( m_defaultAudioElement1 );
		m_defaultAudioSource1.setProperty("priority", 4294967295 );//2 ** 32 -1 );
		
		gnl_audio_composition1.add( m_defaultAudioSource1 );
	*/	
		
		//This is how'd you do it, if it worked. For some reason adding a defaultaudiosource
		//to a gnlcomposition that has it's first gnlfilesource in other than zero
		//ends up with errors in the playback.
		//This makes it impossible for now to have a second track of audio, that doesn't
		//start from zero. But as long as you have something starting from zero, it works.
/*		m_defaultAudioElement2 = ElementFactory.make( "audiotestsrc", "defaultaudioelement2" );
		m_defaultAudioElement2.setProperty("volume", 0);
		m_defaultAudioSource2 = new Bin( ElementFactory.make( "gnlsource", "defaultaudiosource2") );
		m_defaultAudioSource2.add( m_defaultAudioElement2 );
		m_defaultAudioSource2.setProperty("priority", 4294967295 );//2 ** 32 -1 );
		
		gnl_audio_composition2.add( m_defaultAudioSource2 );
	*/	
		
		//VIDEOSINK
		
		//Test one of these: xvimagesink, ximagesink, sdlvideosink
		//xvimagesink is accelerated
		
		
	/*
		videosink = ElementFactory.make("xvimagesink", "video-output-xvimagesink");
		if( videosink.getElementStruct() is null )
		{
			Stdout("Creation of xvimagesink failed.").newline;
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
	*/

		initEncoding();

		//GNLFILESOURCES:

		debug(GnonlinHello) Stdout("GnonlinHello.this() Initing gnlfilesources.").newline;

		//This isn't entirely necessary, but demonstrated here because this way you could
		//use video files that have audio as audiofiles.
		Caps videocaps = Caps.fromString("video/x-raw-yuv;video/x-raw-rgb");
		Caps audiocaps = Caps.fromString("audio/x-raw-int;audio/x-raw-float");

		//VIDEO1:
		
		debug(GnonlinHello) Stdout("GnonlinHello.this() video_material1.").newline;

		video_material1 = ElementFactory.make("gnlfilesource", "video_material1");
		//video_material1.addOnPadAdded(&newPad);
		debug(GnonlinHello) Stdout("GnonlinHello.this() Trying to do gnl_video_composition.add( video_material1 ).").newline;
		if( (cast(Bin)gnl_video_composition).add( video_material1 ) == false ) throw new Exception("gnl_video_composition.add(video_material1)");
		
		debug(GnonlinHello) Stdout("GnonlinHello.this() Setting properties for video_material1.").newline;

		video_material1.location( file1 );
		//alternatively: video_material1.setProperty("location", file1 );

		//This is just an example of getting the properties. It is difficult at the moment.
		//This API should be simplified:
		scope Value locval = new Value( "empty" );
		video_material1.getProperty( "location", locval );
		char[] loc = locval.getString();
		debug(GnonlinHello) Stdout("video_material1 location:", loc ).newline;

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
		
		video_material3 = ElementFactory.make("gnlfilesource", "video_material3");
		if( (cast(Bin)gnl_video_composition).add( video_material3 ) == false ) throw new Exception("gnl_video_composition.add(video_material3)");
	
		video_material3.location( file1 );
		video_material3.setProperty("start",  10 * SECOND );
		video_material3.setProperty("duration", 5 * SECOND );
		video_material3.setProperty("media-start", 0 * SECOND );
		video_material3.setProperty("media-duration", 5 * SECOND );

		video_material3.caps( videocaps );

		debug(GnonlinHello) Stdout("Setting audio properties.").newline;

		audio1 = ElementFactory.make("gnlfilesource", "audio1");
		if( (cast(Bin)gnl_audio_composition1).add( audio1 ) == false ) throw new Exception("gnl_audio_composition1.add(audio1)");

		audio1.location( file3 );
		audio1.setProperty("start",  0 * SECOND );
		audio1.setProperty("duration", 8 * SECOND );
		audio1.setProperty("media-start", 0 * SECOND );
		audio1.setProperty("media-duration", 8 * SECOND );

		//This isn't entirely necessary, but demonstrated here because this way you could
		//use video files that have audio as audiofiles.
		audio1.caps( audiocaps );

		audio2 = ElementFactory.make("gnlfilesource", "audio2");
		//if( (cast(Bin)gnl_audio_composition2).add( audio2 ) == false ) throw new Exception("gnl_audio_composition2.add(audio2)");
		if( (cast(Bin)gnl_audio_composition1).add( audio2 ) == false ) throw new Exception("gnl_audio_composition2.add(audio2)");

		audio2.location( file4 );
		audio2.setProperty("start",  5 * SECOND );
		audio2.setProperty("duration", 7 * SECOND );
		audio2.setProperty("media-start", 0 * SECOND );
		audio2.setProperty("media-duration", 7 * SECOND );

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
		debug(GnonlinHello) Stdout("position: ")( cur_pos ).newline;
		pipeline.seek( cur_pos + FRAME_25 );

	}

	void onBackwardOne(Button button)
	{
		long cur_pos = pipeline.queryPosition();
		debug(GnonlinHello) Stdout("position: ")( cur_pos ).newline;
		pipeline.seek( cur_pos - FRAME_25 );

	}

	void onPlay(Button button)
	{
		debug(GnonlinHello) Stdout("Setting to PLAYING.").newline;
		pipeline.setState( GstState.PLAYING );
		debug(GnonlinHello) Stdout("Running.").newline;
	}
	
	void onEncode(Button button)
	{
		debug(GnonlinHello) Stdout("Setting to PLAYING.").newline;
		pipeline.setState( GstState.PLAYING );
		debug(GnonlinHello) Stdout("Running.").newline;
		
		progressBar.setText("Encoding");
		
		if ( m_timeout is null )
		{
			m_timeout = new Timeout( 300, &updatePosition, false );
		}
	}
	
	
	Timeout m_timeout;
	long duration = 0L;
	long position = 0L;	
	
	bool updatePosition()
	{
		if( pipeline !is null )
		{
			if( duration == 0L )
			{
				duration = pipeline.queryDuration();
				Stdout("duration: ")(duration).newline;
			}
			position = pipeline.queryPosition();
			
			double percent = cast(double)position/cast(double)duration;
			if( percent < 0.0 ) percent = 0.0;
			else if( percent > 1.0 ) percent = 1.0;
			
			//progressBar.pulse();
			progressBar.setFraction( percent );
			
			Stdout("position: ")(position).newline;
			
			if( position >= duration && duration != 0L )
			{
				progressBar.setText("Finished");
				return false;
			}
		}
		
		return true;
	}

	void onStop(Button button)
	{
		debug(GnonlinHello) Stdout("Setting to STOP.").newline;
		//pipeline.setState( GstState.NULL );
		pipeline.setState( GstState.PAUSED );
		debug(GnonlinHello) Stdout("Stopped.").newline;
	}

	void newPad( Pad pad, Element element )
	{
		debug(GnonlinHello) Stdout("newPad callback called. START.").newline;

		if( pad is null )
			throw new Exception("newPad: pad is null.");
		else if( pad.getPadStruct() is null )
			throw new Exception("newPad: pad.getPadStruct is null.");
		if( element is null )
			throw new Exception("newPad: element is null.");
		
		Pad convpad;

		// We can now link this pad with the audio decoder
		debug(GnonlinHello) Stdout("Dynamic pad created, linking parser/decoder").newline;

		Caps caps = pad.getCaps();

		char[] pad_type = caps.getStructure(0).getName();

		debug(GnonlinHello) Stdout("pad_type: ")( pad_type ).newline;

		//if( std.string.find( pad_type, "video" ) == -1 )
		if( Util.containsPattern( pad_type, "audio" ) == true )
		{
			//it's audio:
			debug(GnonlinHello) Stdout("newPad(): linking to audio-output.").newline;
			//convpad = audioconvert.getPad("audiosink");
			//convpad = audioconvert.getCompatiblePad( pad, pad.getCaps() );
			//convpad = audio_adder.getCompatiblePad( pad, pad.getCaps() );
			convpad = encodeBin.getPad("asink");
		}
		else
		{
			//it's video:
			debug(GnonlinHello) Stdout("newPad(): linking to video-output.").newline;
			//convpad = videosink.getCompatiblePad( pad, pad.getCaps() );
			convpad = encodeBin.getPad("vsink");
		}


		if( convpad is null )
			throw new Exception("newPad: convpad is null.");
		else if( convpad.getPadStruct() is null )
			throw new Exception("newPad: convpad.getPadStruct is null.");

		debug(GnonlinHello)
		{
			Stdout("Pad name: ")( pad.getName() ).newline;
			Stdout("convpad name: ")( convpad.getName() ).newline;
			Stdout("Pad parent name: ")( pad.getParent().getName() ).newline;
			Stdout("convpad parent name: ")( convpad.getParent().getName() ).newline;
		}

		debug(GnonlinHello) Stdout("doing a gst_pad_link.").newline;
		//if(
		//pad.link( convpad );// != GstPadLinkReturn.OK ) throw new Exception("dynamic pad.link(convpad)");
		switch( pad.link( convpad ) )
		{
			case GstPadLinkReturn.OK:
				debug(gstreamer) Stdout("PipelinePlayer.linkPadToAudioEncodeBin() linking was successfull. OK.").newline;
			break;
			case GstPadLinkReturn.WRONG_HIERARCHY:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. WRONG_HIERARCHY.").newline;
			break;
			case GstPadLinkReturn.WAS_LINKED:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. WAS_LINKED.").newline;
			break;
			case GstPadLinkReturn.WRONG_DIRECTION:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. WRONG_DIRECTION.").newline;
			break;
			case GstPadLinkReturn.NOFORMAT:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. NOFORMAT.").newline;
			break;
			case GstPadLinkReturn.NOSCHED:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. NOSCHED.").newline;
			break;
			case GstPadLinkReturn.REFUSED:
				debug(gstreamer) Stdout("Error: PipelinePlayer.linkPadToAudioEncodeBin() unable to link pad. REFUSED.").newline;
			break;
		}

		debug(GnonlinHello) Stdout("Done. That was ok.").newline;

	}
	
	bool busCall( Message msg )
	{
		//debug(GnonlinHello) Stdout("GnonlinHello.busCall(msg) START.").newline;
		//debug(GnonlinHello) scope(exit) Stdout("GnonlinHello.busCall(msg) END.").newline;

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				debug(GnonlinHello) Stdout("Unknown message type.").newline;
			break;
			case GstMessageType.EOS:
				debug(GnonlinHello) Stdout("End-of-stream.").newline;
				//GtkD.mainQuit();
			break;

			case GstMessageType.ERROR:
			{
				gchar *dbug;
				GError *err;
				msg.parseError(&err, &dbug);
				//g_free (dbug);
				Stdout("Error: ")( Stringz.fromUtf8z(err.message) )(" dbug: ")( Stringz.fromUtf8z(dbug) ).newline;
				//g_error_free (err);
				//GtkD.mainQuit();
			break;
			}
			
			case GstMessageType.WARNING:
				debug(gstreamerbus) Stdout("Bus message: WARNING.").newline;
			break;

			case GstMessageType.INFO:
				debug(gstreamerbus) Stdout("Bus message: INFO.").newline;
			break;
	
			case GstMessageType.TAG:
				debug(gstreamerbus) Stdout("Bus message: TAG.").newline;
			break;
		
			case GstMessageType.BUFFERING:
				debug(gstreamerbus) Stdout("Bus message: BUFFERING.").newline;
			break;
			
			case GstMessageType.STATE_CHANGED:
				//This happens too often to be worth printing.
			break;
			
			case GstMessageType.STATE_DIRTY:
				debug(gstreamerbus) Stdout("Bus message: STATE DIRTY.").newline;
			break;

			case GstMessageType.STEP_DONE:
				debug(gstreamerbus) Stdout("Bus message: STEP DONE.").newline;
			break;

			case GstMessageType.CLOCK_PROVIDE:
				debug(gstreamerbus) Stdout("Bus message: CLOCK_PROVIDE.").newline;
			break;

			case GstMessageType.CLOCK_LOST:
				debug(gstreamerbus) Stdout("Bus message: CLOCK_LOST.").newline;
			break;

			case GstMessageType.NEW_CLOCK:
				debug(gstreamerbus) Stdout("Bus message: NEW_CLOCK.").newline;
			break;

			case GstMessageType.STRUCTURE_CHANGE:
				debug(gstreamerbus) Stdout("Bus message: STRUCTURE_CHANGE.").newline;
			break;

			case GstMessageType.STREAM_STATUS:
				debug(gstreamerbus) Stdout("Bus message: STREAM_STATUS.").newline;
			break;

			case GstMessageType.APPLICATION:
				debug(gstreamerbus) Stdout("Bus message: APPLICATION.").newline;
			break;

			case GstMessageType.ELEMENT:
				debug(gstreamerbus) Stdout("Bus message: ELEMENT.").newline;
			break;

			case GstMessageType.SEGMENT_START:
				debug(gstreamerbus) Stdout("Bus message: SEGMENT_START.").newline;
			break;

			case GstMessageType.SEGMENT_DONE:
				debug(gstreamerbus) Stdout("Bus message: SEGMENT_DONE.").newline;
			break;

			case GstMessageType.DURATION:
				debug(gstreamerbus) Stdout("Bus message: DURATION.").newline;
			break;
			
			default:
			break;
		}

		return true;
	}
	
protected:
	
	//GStreamer elements:
	
	Pipeline pipeline;
	
	Bin gnl_video_composition;
		Element video_material1, video_material2, video_material3;

	Element audio_adder;
		Bin gnl_audio_composition1;
			Element audio1;
		Bin gnl_audio_composition2;
			Element audio2;

	//default sources:
	/*Element m_defaultVideoElement;
	Bin m_defaultVideoSource;
	Element m_defaultAudioElement1;
	Bin m_defaultAudioSource1;
	Element m_defaultAudioElement2;
	Bin m_defaultAudioSource2;*/

	Element audioconvert, audiosink;
	Element videosink;

	//GUI elements for our little remote controller:

	VBox vbox;
	Button playButton;
	Button stopButton;
	Button seekButton;
	Button forwardOneButton;
	Button backwardOneButton;
	Button encodeButton;
	ProgressBar progressBar;
	
	//Encoding:
	
	uint encodeBusWatchId = 0;
	Bus m_encodeBus;
	
	public Pipeline currentEncodePipeline() { return m_currentEncodePipeline; }
	protected Pipeline m_currentEncodePipeline;
	
	public Bin encodeBin() { return m_encodeBin; }
	protected Bin m_encodeBin;
	
		public Element videoInQueue() { return m_videoInQueue; }
		protected Element m_videoInQueue;
		public Element videoIdentity() { return m_videoIdentity; }
		protected Element m_videoIdentity;
		public Element colourspace() { return m_colourspace; }
		protected Element m_colourspace;
		public Element videoFrameRate() { return m_videoFrameRate; }
		protected Element m_videoFrameRate;
		public SmartVideoScale videoScale() { return m_smartVideoScale; }
		//////protected SmartVideoScale m_videoScale;//TEMP This has been temporarily made global
		//until the issues with binding setSetCaps are solved in smartvideoscale.
		//protected SmartVideoScale m_smartVideoScale;
		
		//public Element videoScale() { return m_videoScale; }
		//protected Element m_videoScale;
		public Element encoder() { return m_encoder; }
		protected Element m_encoder;//Hey, this is almost an inside joke!
		public Element videoOutQueue() { return m_videoOutQueue; }
		protected Element m_videoOutQueue;
		
		public Element audioInQueue() { return m_audioInQueue; }
		protected Element m_audioInQueue;
		public Element audioIdentity() { return m_audioIdentity; }
		protected Element m_audioIdentity;
		public Element audioConvertEnc() { return m_audioConvertEnc; }
		protected Element m_audioConvertEnc;
		public Element audioResample() { return m_audioResample; }
		protected Element m_audioResample;
		public Element audioBitRate() { return m_audioBitRate; }
		protected Element m_audioBitRate;
		public Element audioEncoder() { return m_audioEncoder; }
		protected Element m_audioEncoder;
		public Element audioOutQueue() { return m_audioOutQueue; }
		protected Element m_audioOutQueue;
		
		public Element muxer() { return m_muxer; }
		protected Element m_muxer;
		public Element fileSink() { return m_fileSink; }
		protected Element m_fileSink;
		
	//TODO move these to settings class:
	uint videoWidth = 720;
	uint videoHeight = 576;
	uint[2] s_videoFrameRate = [25,1];//Gst.Fraction
	uint[2] videoPixelAspectRatio = [1,1];//Gst.Fraction
	uint audioChannels = 2;
	uint audioSampleRate = 44100;
	uint audioBitDepth = 16;
	//char[] videoEncoderString = "theoraenc";
	//char[] audioEncoderString = "vorbisenc";
	//char[] muxerString = "oggmux";
	
	Caps getVideoCaps()
	{
		char[] str = 
			"width=" ~ Integer.toUtf8( videoWidth )
			~ ",height=" ~ Integer.toUtf8( videoHeight )
			~ ",pixel-aspect-ratio=" ~ Integer.toUtf8( videoPixelAspectRatio[0] ) ~ "/" ~ Integer.toUtf8( videoPixelAspectRatio[1] )
			~ ",framerate=" ~ Integer.toUtf8( s_videoFrameRate[0] ) ~ "/" ~ Integer.toUtf8( s_videoFrameRate[1] );
			
		return Caps.fromString( "video/x-raw-yuv," ~ str ~ ";video/x-raw-rgb," ~ str );
	}
	
	Caps getAudioCaps()
	{
		char[] str =
			"rate=" ~ Integer.toUtf8( audioSampleRate )
			~ "depth=" ~ Integer.toUtf8( audioBitDepth )
			~ "channels=" ~ Integer.toUtf8( audioChannels );
			
		return Caps.fromString( "audio/x-raw-int," ~ str ~ ";audio/x-raw-float," ~ str );
	}
}


int main(char[][] args)
{
	debug(GnonlinHello) Stdout("GStreamerD Hello!").newline;

	uint major, minor, micro, nano;

	debug(GnonlinHello) Stdout("Trying to init...").newline;

	GtkD.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 5)
	{
		Stdout("Give it two videofiles and two audiofiles. The files must be atleast 10 seconds long. Usage example: %s videofile1.dv videofile2.mov audiofile1.ogg audiofile2.ogg\n")( args[0]).newline;
		return -1;
	}

	debug(GnonlinHello) Stdout("Checking version of GStreamer...").newline;
	GStreamer.versio(&major, &minor, &micro, &nano);
	debug(GnonlinHello) Stdout("This program is linked against GStreamer ")( major)( ".")( minor)( ".")( micro ).newline;
	
	GnonlinHello gstHello = new GnonlinHello( args[1], args[2], args[3], args[4] );

	GtkD.main();

	return 0;
}


