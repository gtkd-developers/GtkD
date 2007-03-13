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
 * gstreamerD helloworld.
 * by Joonas Kiviharju
 */


//Phobos imports:

import std.stdio;

//gtkD imports:

import gtk.GtkD;

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
		debug(gstreamer) writefln("GstHello.busCall(msg) START.");
		debug(gstreamer) scope(exit) writefln("GstHello.busCall(msg) END.");

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				writefln("Unknown message type.");
			break;
			case GstMessageType.EOS:
				writefln("End-of-stream.");
				GtkD.mainQuit();
			break;

			case GstMessageType.ERROR:
			{
				gchar *dbug;
				GError *err;
				msg.parseError(&err, &dbug);
				//g_free (dbug);
				writefln("Error: %s\n", err.message);
				//g_error_free (err);
				GtkD.mainQuit();
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

		sinkpad = decoder.getPad("sink");
		writefln("doing a gst_pad_link.");
		pad.link( sinkpad );
		writefln("Done. That was ok.");

	}

protected:

	Pipeline pipeline;
	Element source, parser, decoder, conv, sink;
}


int main(char[][] args)
{
	writefln("gstreamerD Hello World!");

	uint major, minor, micro, nano;

	writefln("Trying to init...");

	//GtkD.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 2)
	{
		writefln("Usage: %s <Ogg/Vorbis filename>\n", args[0]);
		return -1;
	}

	writefln("Checking version of GStreamer...");
	GStreamer.versio(&major, &minor, &micro, &nano);
	writefln("This program is linked against GStreamer ", major, ".", minor, ".", micro );

	writefln( "The file is: ", args[1] );
	GstHello gstHello = new GstHello( args[1] );

	//We must use the gtkD mainloop to run gstreamerD apps.
	GtkD.main();

	return 0;
}


