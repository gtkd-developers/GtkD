/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/**
 * This is a port of the Glib GTimer object.
 * @author pac@tuxfamily.org
 */

module dglib.TimerG;

private import def.Types;
private import lib.glib;

/**
 * TimerG records a start time, and counts microseconds elapsed since that time.
 * This is done somewhat differently on different platforms, and can be tricky to
 * get exactly right, so TimerG provides a portable/convenient interface.
 */
public:
class TimerG
{

	protected:
	GTimer* gTimer;
	
	public:

	/**
	 * Creates a new TimerG.
	 */
	this()
	{
		gTimer = g_timer_new();
	}

	/**
	 * Creates a TimerG from a GTimer
	 * @param *gTimer the glib struct timer pointer
	 */
	this(GTimer *gTimer)
	{
		this.gTimer = gTimer;
	}

	/**
	 * Destroy our gTimer
	 */
	~this()
	{
		if ( gTimer !is  null )
		{
			g_timer_destroy(gTimer);
			gTimer = null;
		}
	}

	/**
	 * Marks a start time, so that future calls to gTimerElapsed() will report the time since start() was
	 * called. Creating a new TimerG automatically marks the start time,
	 * so no need to call gTimerStart() immediately after creating the timer.
	 */
	void start()
	{
		g_timer_start(gTimer);
	}

	/**
	 * Marks an end time, so calls to elapsed() will return the difference between
	 * this end time and the start time.
	 */
	void stop()
	{
		g_timer_stop(gTimer);
	}
	
	/**
	 * Resumes a timer that has previously been stopped with stop().
	 * stop() must be called before using this function.
	 */
	void resume()
	{
		g_timer_continue(gTimer);
	}

	/**
	 * If timer has been started but not stopped, obtains the time since the timer was started.
	 * If timer has been stopped, obtains the elapsed time between the time it was started and the time it was stopped.
	 * The return value is the number of seconds elapsed, including any fractional part.
	 * The microseconds out parameter is essentially useless.
	 * @param microseconds fractional part of seconds elapsed, in microseconds (that is, the total number of
	 * microseconds elapsed, modulo 1000000)
	 * @return seconds elapsed as a floating point value, including any fractional part.
	 */
	gdouble elapsed(out gulong microseconds)
	{
		return g_timer_elapsed(gTimer, &microseconds);
	}

	/**
	 * This function is useless; it's fine to call start() on an already-started timer to reset the start time,
	 * so reset() serves no purpose.
	 */
	void reset()
	{
		g_timer_reset(gTimer);
	}
}
