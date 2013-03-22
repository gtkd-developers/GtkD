/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Timers.html
 * outPack = glib
 * outFile = Timer
 * strct   = GTimer
 * realStrct=
 * ctorStrct=
 * clss    = Timer
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_timer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GTimer* -> Timer
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Timer;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import gtkc.Loader;
private import gtkc.paths;




/**
 * GTimer records a start time, and counts microseconds elapsed since
 * that time. This is done somewhat differently on different platforms,
 * and can be tricky to get exactly right, so GTimer provides a
 * portable/convenient interface.
 */
public class Timer
{
	
	/** the main Gtk struct */
	protected GTimer* gTimer;
	
	
	public GTimer* getTimerStruct()
	{
		return gTimer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTimer* gTimer)
	{
		this.gTimer = gTimer;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gTimer !is null )
		{
			g_timer_destroy(gTimer);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new timer, and starts timing (i.e. g_timer_start() is
	 * implicitly called for you).
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GTimer * g_timer_new (void);
		auto p = g_timer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_timer_new()");
		}
		this(cast(GTimer*) p);
	}
	
	/**
	 * Marks a start time, so that future calls to g_timer_elapsed() will
	 * report the time since g_timer_start() was called. g_timer_new()
	 * automatically marks the start time, so no need to call
	 * g_timer_start() immediately after creating the timer.
	 */
	public void start()
	{
		// void g_timer_start (GTimer *timer);
		g_timer_start(gTimer);
	}
	
	/**
	 * Marks an end time, so calls to g_timer_elapsed() will return the
	 * difference between this end time and the start time.
	 */
	public void stop()
	{
		// void g_timer_stop (GTimer *timer);
		g_timer_stop(gTimer);
	}
	
	/**
	 * Resumes a timer that has previously been stopped with
	 * g_timer_stop(). g_timer_stop() must be called before using this
	 * function.
	 * Since 2.4
	 */
	public void continu()
	{
		// void g_timer_continue (GTimer *timer);
		g_timer_continue(gTimer);
	}
	
	/**
	 * If timer has been started but not stopped, obtains the time since
	 * the timer was started. If timer has been stopped, obtains the
	 * elapsed time between the time it was started and the time it was
	 * stopped. The return value is the number of seconds elapsed,
	 * including any fractional part. The microseconds out parameter is
	 * essentially useless.
	 * Params:
	 * microseconds = return location for the fractional part of seconds
	 * elapsed, in microseconds (that is, the total number
	 * of microseconds elapsed, modulo 1000000), or NULL
	 * Returns: seconds elapsed as a floating point value, including any fractional part.
	 */
	public double elapsed(out gulong microseconds)
	{
		// gdouble g_timer_elapsed (GTimer *timer,  gulong *microseconds);
		return g_timer_elapsed(gTimer, &microseconds);
	}
	
	/**
	 * This function is useless; it's fine to call g_timer_start() on an
	 * already-started timer to reset the start time, so g_timer_reset()
	 * serves no purpose.
	 */
	public void reset()
	{
		// void g_timer_reset (GTimer *timer);
		g_timer_reset(gTimer);
	}
	
	/**
	 * Destroys a timer, freeing associated resources.
	 */
	public void destroy()
	{
		// void g_timer_destroy (GTimer *timer);
		g_timer_destroy(gTimer);
	}
}
