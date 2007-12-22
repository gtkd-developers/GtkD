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
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GstSystemClock.html
 * outPack = gstreamer
 * outFile = SystemClock
 * strct   = GstSystemClock
 * realStrct=
 * ctorStrct=
 * clss    = SystemClock
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_system_clock_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Clock
 * structWrap:
 * 	- GstClock* -> Clock
 * 	- GstSystemClock* -> SystemClock
 * module aliases:
 * local aliases:
 */

module gstreamer.SystemClock;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import gstreamer.Clock;




/**
 * Description
 * The GStreamer core provides a GstSystemClock based on the system time.
 * Asynchronous callbacks are scheduled from an internal thread.
 * Clock implementors are encouraged to subclass this systemclock as it
 * implements the async notification.
 * Subclasses can however override all of the important methods for sync and
 * async notifications to implement their own callback methods or blocking
 * wait operations.
 * Last reviewed on 2006-03-08 (0.10.4)
 */
private import gstreamer.Clock;
public class SystemClock : Clock
{
	
	/** the main Gtk struct */
	protected GstSystemClock* gstSystemClock;
	
	
	public GstSystemClock* getSystemClockStruct()
	{
		return gstSystemClock;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstSystemClock;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstSystemClock* gstSystemClock)
	{
		version(noAssert)
		{
			if ( gstSystemClock is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstSystemClock is null on constructor").newline;
				}
				else
				{
					printf("struct gstSystemClock is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstSystemClock !is null, "struct gstSystemClock is null on constructor");
		}
		super(cast(GstClock*)gstSystemClock);
		this.gstSystemClock = gstSystemClock;
	}
	
	/**
	 */
	
	
	/**
	 * Get a handle to the default system clock. The refcount of the
	 * clock will be increased so you need to unref the clock after
	 * usage.
	 * Returns:
	 *  the default clock.
	 * MT safe.
	 * See Also
	 * GstClock
	 */
	public static Clock obtain()
	{
		// GstClock* gst_system_clock_obtain (void);
		return new Clock( gst_system_clock_obtain() );
	}
}
