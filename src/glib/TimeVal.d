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
 * inFile  = glib-Date-and-Time-Functions.html
 * outPack = glib
 * outFile = TimeVal
 * strct   = GTimeVal
 * realStrct=
 * ctorStrct=
 * clss    = TimeVal
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_time_val_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * 	- g_date_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.TimeVal;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * The GDate data structure represents a day between January 1, Year 1,
 * and sometime a few thousand years in the future (right now it will go
 * to the year 65535 or so, but g_date_set_parse() only parses up to the
 * year 8000 or so - just count on "a few thousand"). GDate is meant to
 * represent everyday dates, not astronomical dates or historical dates
 * or ISO timestamps or the like. It extrapolates the current Gregorian
 * calendar forward and backward in time; there is no attempt to change
 * the calendar to match time periods or locations. GDate does not store
 * time information; it represents a day.
 * The GDate implementation has several nice features; it is only a
 * 64-bit struct, so storing large numbers of dates is very efficient. It
 * can keep both a Julian and day-month-year representation of the date,
 * since some calculations are much easier with one representation or the
 * other. A Julian representation is simply a count of days since some
 * fixed day in the past; for GDate the fixed day is January 1, 1 AD.
 * ("Julian" dates in the GDate API aren't really Julian dates in the
 * technical sense; technically, Julian dates count from the start of the
 * Julian period, Jan 1, 4713 BC).
 * GDate is simple to use. First you need a "blank" date; you can get a
 * dynamically allocated date from g_date_new(), or you can declare an
 * automatic variable or array and initialize it to a sane state by
 * calling g_date_clear(). A cleared date is sane; it's safe to call
 * g_date_set_dmy() and the other mutator functions to initialize the
 * value of a cleared date. However, a cleared date is initially
 * invalid, meaning that it doesn't represent a day
 * that exists. It is undefined to call any of the date calculation
 * routines on an invalid date. If you obtain a date from a user or other
 * unpredictable source, you should check its validity with the
 * g_date_valid() predicate. g_date_valid() is also used to check for
 * errors with g_date_set_parse() and other functions that can
 * fail. Dates can be invalidated by calling g_date_clear() again.
 * It is very important to use the API to access the GDate
 * struct. Often only the day-month-year or only the Julian
 * representation is valid. Sometimes neither is valid. Use the API.
 * GLib doesn't contain any time-manipulation functions; however, there
 * is a GTime typedef and a GTimeVal struct which represents a more
 * precise time (with microseconds). You can request the current time as
 * a GTimeVal with g_get_current_time().
 */
public class TimeVal
{
	
	/** the main Gtk struct */
	protected GTimeVal* gTimeVal;
	
	
	public GTimeVal* getTimeValStruct()
	{
		return gTimeVal;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimeVal;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTimeVal* gTimeVal)
	{
		if(gTimeVal is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gTimeVal passed to constructor.");
			else return;
		}
		this.gTimeVal = gTimeVal;
	}
	
	/**
	 */
	
	/**
	 * Equivalent to the UNIX gettimeofday() function, but portable.
	 */
	public void getCurrentTime()
	{
		// void g_get_current_time (GTimeVal *result);
		g_get_current_time(gTimeVal);
	}
	
	/**
	 * Pauses the current thread for the given number of microseconds. There
	 * are 1 million microseconds per second (represented by the
	 * G_USEC_PER_SEC macro). g_usleep() may have limited precision,
	 * depending on hardware and operating system; don't rely on the exact
	 * length of the sleep.
	 * Params:
	 * microseconds = number of microseconds to pause
	 */
	public static void usleep(uint microseconds)
	{
		// void g_usleep (gulong microseconds);
		g_usleep(microseconds);
	}
	
	/**
	 * Adds the given number of microseconds to time_. microseconds can
	 * also be negative to decrease the value of time_.
	 * Params:
	 * microseconds =  number of microseconds to add to time
	 */
	public void add(int microseconds)
	{
		// void g_time_val_add (GTimeVal *time_,  glong microseconds);
		g_time_val_add(gTimeVal, microseconds);
	}
	
	/**
	 * Converts a string containing an ISO 8601 encoded date and time
	 * to a GTimeVal and puts it into time_.
	 * Since 2.12
	 * Params:
	 * isoDate =  a ISO 8601 encoded date string
	 * time =  a GTimeVal
	 * Returns: TRUE if the conversion was successful.
	 */
	public static int fromIso8601(char[] isoDate, GTimeVal* time)
	{
		// gboolean g_time_val_from_iso8601 (const gchar *iso_date,  GTimeVal *time_);
		return g_time_val_from_iso8601(Str.toStringz(isoDate), time);
	}
	
	/**
	 * Converts time_ into a ISO 8601 encoded string, relative to the
	 * Coordinated Universal Time (UTC).
	 * Since 2.12
	 * Returns: a newly allocated string containing a ISO 8601 date
	 */
	public char[] toIso8601()
	{
		// gchar* g_time_val_to_iso8601 (GTimeVal *time_);
		return Str.toString(g_time_val_to_iso8601(gTimeVal)).dup;
	}
}
