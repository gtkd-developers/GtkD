/*
 * gstreamer_helloworld is placed in the
 * public domain.
 */

module gstreamer_helloworld;

import std.stdio;

//gtkD imports:

import glib.Str;
import gtk.Main;

//gstreamerD imports:

import gstreamer.GStreamer;

import gobject.ObjectG;
import glib.ErrorG;
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
		debug(gstreamer)
		{
			writefln("GstHello.busCall(msg) START.");
			scope(exit) writefln("GstHello.busCall(msg) END.");
		}

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				writefln("Unknown message type.");
			break;
			case GstMessageType.EOS:
				writefln("End-of-stream.");
				Main.quit();
			break;

			case GstMessageType.ERROR:
			{
				string dbug;
				ErrorG err;
				msg.parseError(err, dbug);
				//g_free (dbug);
				writefln("Error: %s dbug: %s", Str.toString(err.getErrorGStruct().message), dbug);
				Main.quit();
			break;
			}
			default:
			break;
		}

		return true;
	}

	this(string file)
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
			writefln("One or more element could not be created");

			if( pipeline is null ) writefln(" : no pipeline.");
			if( source is null ) writefln(" : no source.");
			if( parser is null ) writefln(" : no parser.");
			if( decoder is null ) writefln(" : no decoder.");
			if( conv is null ) writefln(" : no conv.");
			if( sink is null ) writefln(" : no sink.");
			
			throw new Exception("One or more gstreamerD elements could not be created.");
		}
		
		// set filename property on the file source. Also add a message handler.

		source.location( file ); //You can also use this like a D property: source.location = file;
		//Or you can also do: source.setProperty("location", file);

		pipeline.getBus().addWatch( &busCall );

		// put all elements in a bin
		pipeline.addMany( source, parser, decoder, conv, sink );
		
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
		writefln("Setting to PLAYING.");
		pipeline.setState( GstState.PLAYING );
		writefln("Running.");
	}

	~this()
	{
		pipeline.setState( GstState.NULL );
	}

	void newPad( Pad pad, Element element )
	{
		writefln("newPad callback called. START.");

		Pad sinkpad;

		// We can now link this pad with the audio decoder
		writefln("Dynamic pad created, linking parser/decoder");

		sinkpad = decoder.getStaticPad("sink");

		writefln("doing a gst_pad_link.");

		pad.link( sinkpad );

		writefln("Done. That was ok.");
	}

protected:

	Pipeline pipeline;
	Element source, parser, decoder, conv, sink;
}


int main(string[] args)
{
	writefln("gstreamerD Hello World!");

	uint major, minor, micro, nano;

	writefln("Trying to init...");

	//Main.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 2)
	{
		writefln("Usage: %s <Ogg/Vorbis filename>", args[0]);

		return -1;
	}

	writefln("Checking version of GStreamer...");

	GStreamer.versio(major, minor, micro, nano);

	writefln("The installed version of GStreamer is %s.%s.%s", major, minor, micro );
	writefln( "The file is: %s", args[1] );

	GstHello gstHello = new GstHello( args[1] );

	//We must use the gtkD mainloop to run gstreamerD apps.
	Main.run();

	return 0;
}
