/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Timer
 * strct   = GTimer
 * realStrct=
 * clss    = Timer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_timer
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * 	- GTimer* -> Timer
 * local aliases:
 */

module glib.Timer;

private import glib.typedefs;

private import lib.glib;


/**
 * Description
 * GTimer records a start time, and counts microseconds elapsed since that time.
 * This is done somewhat differently on different platforms, and can be tricky to
 * get exactly right, so GTimer provides a portable/convenient interface.
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
	
	/**
	 */
	
	
	/**
	 * Creates a new timer, and starts timing (i.e. g_timer_start() is implicitly
	 * called for you).
	 * Returns:
	 * a new GTimer.
	 */
	public static Timer _New()
	{
		// GTimer* g_timer_new (void);
		return new Timer( g_timer_new() );
	}
	
	/**
	 * Marks a start time, so that future calls to g_timer_elapsed() will report the
	 * time since g_timer_start() was called. g_timer_new() automatically marks the
	 * start time, so no need to call g_timer_start() immediately after creating the
	 * timer.
	 * timer:
	 * a GTimer.
	 */
	public void _Start()
	{
		// void g_timer_start (GTimer *timer);
		g_timer_start(gTimer);
	}
	
	/**
	 * Marks an end time, so calls to g_timer_elapsed() will return the difference
	 * between this end time and the start time.
	 * timer:
	 * a GTimer.
	 */
	public void _Stop()
	{
		// void g_timer_stop (GTimer *timer);
		g_timer_stop(gTimer);
	}
	
	/**
	 * Resumes a timer that has previously been stopped with g_timer_stop().
	 * g_timer_stop() must be called before using this function.
	 * timer:
	 * a GTimer.
	 * Since 2.4
	 */
	public void _Continue()
	{
		// void g_timer_continue (GTimer *timer);
		g_timer_continue(gTimer);
	}
	
	/**
	 * If timer has been started but not stopped, obtains the time since the timer was
	 * started. If timer has been stopped, obtains the elapsed time between the time
	 * it was started and the time it was stopped. The return value is the number of
	 * seconds elapsed, including any fractional part. The microseconds
	 * out parameter is essentially useless.
	 * timer:
	 * a GTimer.
	 * microseconds:
	 * fractional part of seconds elapsed, in microseconds
	 *  (that is, the total number of microseconds elapsed, modulo
	 *  1000000)
	 * Returns:
	 * seconds elapsed as a floating point value, including
	 *  any fractional part.
	 */
	public double _Elapsed(uint* microseconds)
	{
		// gdouble g_timer_elapsed (GTimer *timer,  gulong *microseconds);
		return g_timer_elapsed(gTimer, microseconds);
	}
	
	/**
	 * This function is useless; it's fine to call g_timer_start() on an
	 * already-started timer to reset the start time, so g_timer_reset() serves no
	 * purpose.
	 * timer:
	 * a GTimer.
	 */
	public void _Reset()
	{
		// void g_timer_reset (GTimer *timer);
		g_timer_reset(gTimer);
	}
	
	/**
	 * Destroys a timer, freeing associated resources.
	 * timer:
	 * a GTimer to destroy.
	 */
	public void _Destroy()
	{
		// void g_timer_destroy (GTimer *timer);
		g_timer_destroy(gTimer);
	}
}
