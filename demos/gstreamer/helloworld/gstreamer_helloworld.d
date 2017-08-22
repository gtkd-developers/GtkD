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
import gstreamer.ElementFactory;
import gstreamer.Message;
import gstreamer.Uri;

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
		// create the playbin.
		playbin = ElementFactory.make("playbin");

		if( playbin is null )
		{
			throw new Exception("'playbin' gstreamer plugin missing.");
		}
		
		// Make sure that file is an URI.
		if ( !Uri.isValid(file) )
			file = Uri.filenameToUri(file);

		playbin.setProperty("uri", file);
		playbin.getBus().addWatch( &busCall );

		// Now set to playing and iterate.
		writefln("Setting to PLAYING.");
		playbin.setState( GstState.PLAYING );
		writefln("Running.");
	}

	~this()
	{
		playbin.setState( GstState.NULL );
	}

protected:
	Element playbin;
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
