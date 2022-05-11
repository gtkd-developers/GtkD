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


module glib.Timer;

private import glib.ConstructionException;
private import glib.c.functions;
public  import glib.c.types;


/**
 * Opaque datatype that records a start time.
 */
public class Timer
{
	/** the main Gtk struct */
	protected GTimer* gTimer;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTimer* getTimerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTimer;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTimer* gTimer, bool ownedRef = false)
	{
		this.gTimer = gTimer;
		this.ownedRef = ownedRef;
	}


	/**
	 * Resumes a timer that has previously been stopped with
	 * g_timer_stop(). g_timer_stop() must be called before using this
	 * function.
	 *
	 * Since: 2.4
	 */
	public void continue_()
	{
		g_timer_continue(gTimer);
	}

	/**
	 * Destroys a timer, freeing associated resources.
	 */
	public void destroy()
	{
		g_timer_destroy(gTimer);
	}

	/**
	 * If @timer has been started but not stopped, obtains the time since
	 * the timer was started. If @timer has been stopped, obtains the
	 * elapsed time between the time it was started and the time it was
	 * stopped. The return value is the number of seconds elapsed,
	 * including any fractional part. The @microseconds out parameter is
	 * essentially useless.
	 *
	 * Params:
	 *     microseconds = return location for the fractional part of seconds
	 *         elapsed, in microseconds (that is, the total number
	 *         of microseconds elapsed, modulo 1000000), or %NULL
	 *
	 * Returns: seconds elapsed as a floating point value, including any
	 *     fractional part.
	 */
	public double elapsed(gulong* microseconds)
	{
		return g_timer_elapsed(gTimer, microseconds);
	}

	/**
	 * Exposes whether the timer is currently active.
	 *
	 * Returns: %TRUE if the timer is running, %FALSE otherwise
	 *
	 * Since: 2.62
	 */
	public bool isActive()
	{
		return g_timer_is_active(gTimer) != 0;
	}

	/**
	 * This function is useless; it's fine to call g_timer_start() on an
	 * already-started timer to reset the start time, so g_timer_reset()
	 * serves no purpose.
	 */
	public void reset()
	{
		g_timer_reset(gTimer);
	}

	/**
	 * Marks a start time, so that future calls to g_timer_elapsed() will
	 * report the time since g_timer_start() was called. g_timer_new()
	 * automatically marks the start time, so no need to call
	 * g_timer_start() immediately after creating the timer.
	 */
	public void start()
	{
		g_timer_start(gTimer);
	}

	/**
	 * Marks an end time, so calls to g_timer_elapsed() will return the
	 * difference between this end time and the start time.
	 */
	public void stop()
	{
		g_timer_stop(gTimer);
	}

	/**
	 * Creates a new timer, and starts timing (i.e. g_timer_start() is
	 * implicitly called for you).
	 *
	 * Returns: a new #GTimer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_timer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GTimer*) __p);
	}
}
