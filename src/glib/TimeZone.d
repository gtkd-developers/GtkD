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
 * inFile  = glib-GTimeZone.html
 * outPack = glib
 * outFile = TimeZone
 * strct   = GTimeZone
 * realStrct=
 * ctorStrct=
 * clss    = TimeZone
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_time_zone_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_time_zone_new_local
 * 	- g_time_zone_new_utc
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GTimeZone* -> TimeZone
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.TimeZone;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * GTimeZone is a structure that represents a time zone, at no
 * particular point in time. It is refcounted and immutable.
 * A time zone contains a number of intervals. Each interval has
 * an abbreviation to describe it, an offet to UTC and a flag indicating
 * if the daylight savings time is in effect during that interval. A
 * time zone always has at least one interval -- interval 0.
 * Every UTC time is contained within exactly one interval, but a given
 * local time may be contained within zero, one or two intervals (due to
 * incontinuities associated with daylight savings time).
 * An interval may refer to a specific period of time (eg: the duration
 * of daylight savings time during 2010) or it may refer to many periods
 * of time that share the same properties (eg: all periods of daylight
 * savings time). It is also possible (usually for political reasons)
 * that some properties (like the abbreviation) change between intervals
 * without other properties changing.
 * GTimeZone is available since GLib 2.26.
 */
public class TimeZone
{
	
	/** the main Gtk struct */
	protected GTimeZone* gTimeZone;
	
	
	public GTimeZone* getTimeZoneStruct()
	{
		return gTimeZone;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimeZone;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTimeZone* gTimeZone)
	{
		this.gTimeZone = gTimeZone;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gTimeZone !is null )
		{
			g_time_zone_unref(gTimeZone);
		}
	}
	
	/**
	 */
	
	/**
	 * Decreases the reference count on tz.
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_time_zone_unref (GTimeZone *tz);
		g_time_zone_unref(gTimeZone);
	}
	
	/**
	 * Increases the reference count on tz.
	 * Since 2.26
	 * Returns: a new reference to tz.
	 */
	public TimeZone doref()
	{
		// GTimeZone * g_time_zone_ref (GTimeZone *tz);
		auto p = g_time_zone_ref(gTimeZone);
		
		if(p is null)
		{
			return null;
		}
		
		return new TimeZone(cast(GTimeZone*) p);
	}
	
	/**
	 * Creates a GTimeZone corresponding to identifier.
	 * identifier can either be an RFC3339/ISO 8601 time offset or
	 * something that would pass as a valid value for the
	 * TZ environment variable (including NULL).
	 * Valid RFC3339 time offsets are "Z" (for UTC) or
	 * "±hh:mm". ISO 8601 additionally specifies
	 * "±hhmm" and "±hh".
	 * The TZ environment variable typically corresponds
	 * to the name of a file in the zoneinfo database, but there are many
	 * other possibilities. Note that those other possibilities are not
	 * currently implemented, but are planned.
	 * g_time_zone_new_local() calls this function with the value of the
	 * TZ environment variable. This function itself is
	 * independent of the value of TZ, but if identifier
	 * is NULL then /etc/localtime will be consulted
	 * to discover the correct timezone.
	 * See RFC3339
	 * §5.6 for a precise definition of valid RFC3339 time offsets
	 * (the time-offset expansion) and ISO 8601 for the
	 * full list of valid time offsets. See The
	 * GNU C Library manual for an explanation of the possible
	 * values of the TZ environment variable.
	 * You should release the return value by calling g_time_zone_unref()
	 * when you are done with it.
	 * Since 2.26
	 * Params:
	 * identifier = a timezone identifier. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string identifier)
	{
		// GTimeZone * g_time_zone_new (const gchar *identifier);
		auto p = g_time_zone_new(Str.toStringz(identifier));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_time_zone_new(Str.toStringz(identifier))");
		}
		this(cast(GTimeZone*) p);
	}
	
	/**
	 * Finds an the interval within tz that corresponds to the given time_.
	 * The meaning of time_ depends on type.
	 * If type is G_TIME_TYPE_UNIVERSAL then this function will always
	 * succeed (since universal time is monotonic and continuous).
	 * Otherwise time_ is treated is local time. The distinction between
	 * G_TIME_TYPE_STANDARD and G_TIME_TYPE_DAYLIGHT is ignored except in
	 * the case that the given time_ is ambiguous. In Toronto, for example,
	 * 01:30 on November 7th 2010 occurred twice (once inside of daylight
	 * savings time and the next, an hour later, outside of daylight savings
	 * time). In this case, the different value of type would result in a
	 * different interval being returned.
	 * It is still possible for this function to fail. In Toronto, for
	 * example, 02:00 on March 14th 2010 does not exist (due to the leap
	 * forward to begin daylight savings time). -1 is returned in that
	 * case.
	 * Since 2.26
	 * Params:
	 * type = the GTimeType of time_
	 * time = a number of seconds since January 1, 1970
	 * Returns: the interval containing time_, or -1 in case of failure
	 */
	public int findInterval(GTimeType type, long time)
	{
		// gint g_time_zone_find_interval (GTimeZone *tz,  GTimeType type,  gint64 time_);
		return g_time_zone_find_interval(gTimeZone, type, time);
	}
	
	/**
	 * Finds an interval within tz that corresponds to the given time_,
	 * possibly adjusting time_ if required to fit into an interval.
	 * The meaning of time_ depends on type.
	 * This function is similar to g_time_zone_find_interval(), with the
	 * difference that it always succeeds (by making the adjustments
	 * described below).
	 * In any of the cases where g_time_zone_find_interval() succeeds then
	 * this function returns the same value, without modifying time_.
	 * This function may, however, modify time_ in order to deal with
	 * non-existent times. If the non-existent local time_ of 02:30 were
	 * requested on March 14th 2010 in Toronto then this function would
	 * adjust time_ to be 03:00 and return the interval containing the
	 * adjusted time.
	 * Since 2.26
	 * Params:
	 * type = the GTimeType of time_
	 * time = a pointer to a number of seconds since January 1, 1970
	 * Returns: the interval containing time_, never -1
	 */
	public int adjustTime(GTimeType type, ref long time)
	{
		// gint g_time_zone_adjust_time (GTimeZone *tz,  GTimeType type,  gint64 *time_);
		return g_time_zone_adjust_time(gTimeZone, type, &time);
	}
	
	/**
	 * Determines the time zone abbreviation to be used during a particular
	 * interval of time in the time zone tz.
	 * For example, in Toronto this is currently "EST" during the winter
	 * months and "EDT" during the summer months when daylight savings time
	 * is in effect.
	 * Since 2.26
	 * Params:
	 * interval = an interval within the timezone
	 * Returns: the time zone abbreviation, which belongs to tz
	 */
	public string getAbbreviation(int interval)
	{
		// const gchar * g_time_zone_get_abbreviation (GTimeZone *tz,  gint interval);
		return Str.toString(g_time_zone_get_abbreviation(gTimeZone, interval));
	}
	
	/**
	 * Determines the offset to UTC in effect during a particular interval
	 * of time in the time zone tz.
	 * The offset is the number of seconds that you add to UTC time to
	 * arrive at local time for tz (ie: negative numbers for time zones
	 * west of GMT, positive numbers for east).
	 * Since 2.26
	 * Params:
	 * interval = an interval within the timezone
	 * Returns: the number of seconds that should be added to UTC to get the local time in tz
	 */
	public int getOffset(int interval)
	{
		// gint32 g_time_zone_get_offset (GTimeZone *tz,  gint interval);
		return g_time_zone_get_offset(gTimeZone, interval);
	}
	
	/**
	 * Determines if daylight savings time is in effect during a particular
	 * interval of time in the time zone tz.
	 * Since 2.26
	 * Params:
	 * interval = an interval within the timezone
	 * Returns: TRUE if daylight savings time is in effect
	 */
	public int isDst(int interval)
	{
		// gboolean g_time_zone_is_dst (GTimeZone *tz,  gint interval);
		return g_time_zone_is_dst(gTimeZone, interval);
	}
}
