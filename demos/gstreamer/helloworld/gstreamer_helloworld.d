/*
 * gstreamer_helloworld is placed in the
 * public domain.
 */

module gstreamer_helloworld;


//Phobos imports:
//import std.stdio;

//Tango imports
import tango.util.log.Trace;//Thread safe console output.
import Util = tango.text.Util;
import Integer = tango.text.convert.Integer;
import tango.util.collection.LinkSeq;
import Stringz = tango.stdc.stringz;


//gtkD imports:

import gtk.Main;

//gstreamerD imports:

import gstreamer.gstreamer;

import gobject.ObjectG;
import gstreamer.Element;
import gstreamer.Pipeline;
import gstreamer.ElementFactory;
import gstreamer.Pad;
import gstreamer.Message;
import gstreamer.Bus;

import gstreamerc.gstreamertypes;
import gstreamerc.gstreamer;

import gtkc.glib;


class GstHello
{
public:

	bool busCall( Message msg )
	{
		debug(gstreamer) Trace.formatln("GstHello.busCall(msg) START.");
		debug(gstreamer) scope(exit) Trace.formatln("GstHello.busCall(msg) END.");

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				Trace.formatln("Unknown message type.");
			break;
			case GstMessageType.EOS:
				Trace.formatln("End-of-stream.");
				Main.quit();
			break;

			case GstMessageType.ERROR:
			{
				string  dbug;
				GError* err;
				msg.parseError(err, dbug);
				//g_free (dbug);
				Trace.formatln("Error: {} dbug: {}", Stringz.fromStringz(err.message), dbug );
				//g_error_free (err);
				Main.quit();
			break;
			}
			default:
			break;
		}

		return true;
	}

	this(char[] file)
	{

		// create elements
		
		pipeline = new Pipeline("audio-player");

		source = ElementFactory.make("filesrc", "file-source");
		parser = ElementFactory.make("oggdemux", "ogg-parser");
		decoder = ElementFactory.make("vorbisdec", "vorbis-decoder");
		conv = ElementFactory.make("audioconvert", "converter");
		sink = ElementFactory.make("alsasink", "alsa-output");

		if( pipeline is null || source is null || parser is null || decoder is null || conv is null || sink is null )
		{
			Trace.formatln("One or more element could not be created");
			if( pipeline is null ) Trace.formatln(" : no pipeline.");
			if( source is null ) Trace.formatln(" : no source.");
			if( parser is null ) Trace.formatln(" : no parser.");
			if( decoder is null ) Trace.formatln(" : no decoder.");
			if( conv is null ) Trace.formatln(" : no conv.");
			if( sink is null ) Trace.formatln(" : no sink.");

			throw new Exception("One or more gstreamerD elements could not be created.");
		}
		
		// set filename property on the file source. Also add a message handler.

		source.location( file ); //You can also use this like a D property: source.location = file;
		//Or you can also do: source.setProperty("location", file);

		pipeline.getBus().addWatch( &busCall );

		// put all elements in a bin

		//shouldbe, but doesn't work yet:
		//pipeline.addMany( source, parser, decoder, conv, sink );
		//TODO, add variable number of arguments (...) support to GtkWrapper
		pipeline.add( source );
		pipeline.add( parser );
		pipeline.add( decoder );
		pipeline.add( conv );
		pipeline.add( sink );

		// link together - note that we cannot link the parser and
		// decoder yet, because the parser uses dynamic pads. For that,
		// we set a pad-added signal handler.
		source.link( parser );

		//shouldbe, but doesn't work yet:
		//decoder.linkMany( conv, sink );
		decoder.link( conv );
		conv.link( sink );
		//Here's where we set the pad-added signal handler. It will
		//connect the dynamic pads when they become available.
		parser.addOnPadAdded(&newPad);

		// Now set to playing and iterate.
		Trace.formatln("Setting to PLAYING.");
		pipeline.setState( GstState.PLAYING );
		Trace.formatln("Running.");
	}

	~this()
	{
		pipeline.setState( GstState.NULL );
	}

	void newPad( Pad pad, Element element )
	{
		Trace.formatln("newPad callback called. START.");
		Pad sinkpad;

		// We can now link this pad with the audio decoder
		Trace.formatln("Dynamic pad created, linking parser/decoder");

		sinkpad = decoder.getPad("sink");
		Trace.formatln("doing a gst_pad_link.");
		pad.link( sinkpad );
		Trace.formatln("Done. That was ok.");

	}

protected:

	Pipeline pipeline;
	Element source, parser, decoder, conv, sink;
}


int main(char[][] args)
{
	Trace.formatln("gstreamerD Hello World!");

	uint major, minor, micro, nano;

	Trace.formatln("Trying to init...");

	//Main.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 2)
	{
		Trace.formatln("Usage: {} <Ogg/Vorbis filename>", args[0]);
		return -1;
	}

	Trace.formatln("Checking version of GStreamer...");
	GStreamer.versio(&major, &minor, &micro, &nano);
	Trace.formatln("The installed version of GStreamer is {}.{}.{}", major, minor, micro );

	Trace.formatln( "The file is: {}", args[1] );
	GstHello gstHello = new GstHello( args[1] );

	//We must use the gtkD mainloop to run gstreamerD apps.
	Main.run();

	return 0;
}


