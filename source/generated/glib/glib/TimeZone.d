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


module glib.TimeZone;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * #GTimeZone is an opaque structure whose members cannot be accessed
 * directly.
 *
 * Since: 2.26
 */
public class TimeZone
{
	/** the main Gtk struct */
	protected GTimeZone* gTimeZone;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTimeZone* getTimeZoneStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTimeZone;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimeZone;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTimeZone* gTimeZone, bool ownedRef = false)
	{
		this.gTimeZone = gTimeZone;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_time_zone_unref(gTimeZone);
	}


	/**
	 * A version of g_time_zone_new_identifier() which returns the UTC time zone
	 * if @identifier could not be parsed or loaded.
	 *
	 * If you need to check whether @identifier was loaded successfully, use
	 * g_time_zone_new_identifier().
	 *
	 * Deprecated: Use g_time_zone_new_identifier() instead, as it provides
	 * error reporting. Change your code to handle a potentially %NULL return
	 * value.
	 *
	 * Params:
	 *     identifier = a timezone identifier
	 *
	 * Returns: the requested timezone
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string identifier)
	{
		auto __p = g_time_zone_new(Str.toStringz(identifier));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GTimeZone*) __p);
	}

	/**
	 * Creates a #GTimeZone corresponding to the given constant offset from UTC,
	 * in seconds.
	 *
	 * This is equivalent to calling g_time_zone_new() with a string in the form
	 * `[+|-]hh[:mm[:ss]]`.
	 *
	 * Params:
	 *     seconds = offset to UTC, in seconds
	 *
	 * Returns: a timezone at the given offset from UTC
	 *
	 * Since: 2.58
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int seconds)
	{
		auto __p = g_time_zone_new_offset(seconds);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_offset");
		}

		this(cast(GTimeZone*) __p);
	}

	/**
	 * Finds an interval within @tz that corresponds to the given @time_,
	 * possibly adjusting @time_ if required to fit into an interval.
	 * The meaning of @time_ depends on @type.
	 *
	 * This function is similar to g_time_zone_find_interval(), with the
	 * difference that it always succeeds (by making the adjustments
	 * described below).
	 *
	 * In any of the cases where g_time_zone_find_interval() succeeds then
	 * this function returns the same value, without modifying @time_.
	 *
	 * This function may, however, modify @time_ in order to deal with
	 * non-existent times.  If the non-existent local @time_ of 02:30 were
	 * requested on March 14th 2010 in Toronto then this function would
	 * adjust @time_ to be 03:00 and return the interval containing the
	 * adjusted time.
	 *
	 * Params:
	 *     type = the #GTimeType of @time_
	 *     time = a pointer to a number of seconds since January 1, 1970
	 *
	 * Returns: the interval containing @time_, never -1
	 *
	 * Since: 2.26
	 */
	public int adjustTime(GTimeType type, long* time)
	{
		return g_time_zone_adjust_time(gTimeZone, type, time);
	}

	/**
	 * Finds an interval within @tz that corresponds to the given @time_.
	 * The meaning of @time_ depends on @type.
	 *
	 * If @type is %G_TIME_TYPE_UNIVERSAL then this function will always
	 * succeed (since universal time is monotonic and continuous).
	 *
	 * Otherwise @time_ is treated as local time.  The distinction between
	 * %G_TIME_TYPE_STANDARD and %G_TIME_TYPE_DAYLIGHT is ignored except in
	 * the case that the given @time_ is ambiguous.  In Toronto, for example,
	 * 01:30 on November 7th 2010 occurred twice (once inside of daylight
	 * savings time and the next, an hour later, outside of daylight savings
	 * time).  In this case, the different value of @type would result in a
	 * different interval being returned.
	 *
	 * It is still possible for this function to fail.  In Toronto, for
	 * example, 02:00 on March 14th 2010 does not exist (due to the leap
	 * forward to begin daylight savings time).  -1 is returned in that
	 * case.
	 *
	 * Params:
	 *     type = the #GTimeType of @time_
	 *     time = a number of seconds since January 1, 1970
	 *
	 * Returns: the interval containing @time_, or -1 in case of failure
	 *
	 * Since: 2.26
	 */
	public int findInterval(GTimeType type, long time)
	{
		return g_time_zone_find_interval(gTimeZone, type, time);
	}

	/**
	 * Determines the time zone abbreviation to be used during a particular
	 * @interval of time in the time zone @tz.
	 *
	 * For example, in Toronto this is currently "EST" during the winter
	 * months and "EDT" during the summer months when daylight savings time
	 * is in effect.
	 *
	 * Params:
	 *     interval = an interval within the timezone
	 *
	 * Returns: the time zone abbreviation, which belongs to @tz
	 *
	 * Since: 2.26
	 */
	public string getAbbreviation(int interval)
	{
		return Str.toString(g_time_zone_get_abbreviation(gTimeZone, interval));
	}

	/**
	 * Get the identifier of this #GTimeZone, as passed to g_time_zone_new().
	 * If the identifier passed at construction time was not recognised, `UTC` will
	 * be returned. If it was %NULL, the identifier of the local timezone at
	 * construction time will be returned.
	 *
	 * The identifier will be returned in the same format as provided at
	 * construction time: if provided as a time offset, that will be returned by
	 * this function.
	 *
	 * Returns: identifier for this timezone
	 *
	 * Since: 2.58
	 */
	public string getIdentifier()
	{
		return Str.toString(g_time_zone_get_identifier(gTimeZone));
	}

	/**
	 * Determines the offset to UTC in effect during a particular @interval
	 * of time in the time zone @tz.
	 *
	 * The offset is the number of seconds that you add to UTC time to
	 * arrive at local time for @tz (ie: negative numbers for time zones
	 * west of GMT, positive numbers for east).
	 *
	 * Params:
	 *     interval = an interval within the timezone
	 *
	 * Returns: the number of seconds that should be added to UTC to get the
	 *     local time in @tz
	 *
	 * Since: 2.26
	 */
	public int getOffset(int interval)
	{
		return g_time_zone_get_offset(gTimeZone, interval);
	}

	/**
	 * Determines if daylight savings time is in effect during a particular
	 * @interval of time in the time zone @tz.
	 *
	 * Params:
	 *     interval = an interval within the timezone
	 *
	 * Returns: %TRUE if daylight savings time is in effect
	 *
	 * Since: 2.26
	 */
	public bool isDst(int interval)
	{
		return g_time_zone_is_dst(gTimeZone, interval) != 0;
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on @tz.
	 *
	 * Returns: a new reference to @tz.
	 *
	 * Since: 2.26
	 */
	public TimeZone ref_()
	{
		auto __p = g_time_zone_ref(gTimeZone);

		if(__p is null)
		{
			return null;
		}

		return new TimeZone(cast(GTimeZone*) __p, true);
	}

	/**
	 * Decreases the reference count on @tz.
	 *
	 * Since: 2.26
	 */
	public void unref()
	{
		g_time_zone_unref(gTimeZone);
	}
}
