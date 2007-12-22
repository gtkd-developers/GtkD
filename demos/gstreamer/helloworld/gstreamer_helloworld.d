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
 * by Jonas Kivi
 */

module gstreamer_helloworld;


//Phobos imports:
//import std.stdio;

//Tango imports
import tango.io.Stdout;
import Util = tango.text.Util;
import Integer = tango.text.convert.Integer;
import tango.util.collection.LinkSeq;
import Stringz = tango.stdc.stringz;


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
		debug(gstreamer) Stdout("GstHello.busCall(msg) START.").newline;
		debug(gstreamer) scope(exit) Stdout("GstHello.busCall(msg) END.").newline;

		switch( msg.type )
		{
			case GstMessageType.UNKNOWN:
				Stdout("Unknown message type.").newline;
			break;
			case GstMessageType.EOS:
				Stdout("End-of-stream.").newline;
				GtkD.mainQuit();
			break;

			case GstMessageType.ERROR:
			{
				gchar *dbug;
				GError *err;
				msg.parseError(&err, &dbug);
				//g_free (dbug);
				Stdout("Error: ")( Stringz.fromUtf8z(err.message) )(" dbug: ")( Stringz.fromUtf8z(dbug) ).newline;
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
			Stdout("One or more element could not be created").newline;
			if( pipeline is null ) Stdout(" : no pipeline.").newline;
			if( source is null ) Stdout(" : no source.").newline;
			if( parser is null ) Stdout(" : no parser.").newline;
			if( decoder is null ) Stdout(" : no decoder.").newline;
			if( conv is null ) Stdout(" : no conv.").newline;
			if( sink is null ) Stdout(" : no sink.").newline;

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
		Stdout("Setting to PLAYING.").newline;
		pipeline.setState( GstState.PLAYING );
		Stdout("Running.").newline;
	}

	~this()
	{
		pipeline.setState( GstState.NULL );
	}

	void newPad( Pad pad, Element element )
	{
		Stdout("newPad callback called. START.").newline;
		Pad sinkpad;

		// We can now link this pad with the audio decoder
		Stdout("Dynamic pad created, linking parser/decoder").newline;

		sinkpad = decoder.getPad("sink");
		Stdout("doing a gst_pad_link.").newline;
		pad.link( sinkpad );
		Stdout("Done. That was ok.").newline;

	}

protected:

	Pipeline pipeline;
	Element source, parser, decoder, conv, sink;
}


int main(char[][] args)
{
	Stdout("gstreamerD Hello World!").newline;

	uint major, minor, micro, nano;

	Stdout("Trying to init...").newline;

	//GtkD.init(args);
	GStreamer.init(args);

	// check input arguments
	if (args.length != 2)
	{
		Stdout("Usage: %s <Ogg/Vorbis filename>\n")( args[0]).newline;
		return -1;
	}

	Stdout("Checking version of GStreamer...").newline;
	GStreamer.versio(&major, &minor, &micro, &nano);
	Stdout("This program is linked against GStreamer ")( major)( ".")( minor)( ".")( micro ).newline;

	Stdout( "The file is: ")( args[1] ).newline;
	GstHello gstHello = new GstHello( args[1] );

	//We must use the gtkD mainloop to run gstreamerD apps.
	GtkD.main();

	return 0;
}


