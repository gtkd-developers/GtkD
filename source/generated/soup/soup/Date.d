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


module soup.Date;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.TimeVal;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A date and time. The date is assumed to be in the (proleptic)
 * Gregorian calendar. The time is in UTC if @utc is %TRUE. Otherwise,
 * the time is a local time, and @offset gives the offset from UTC in
 * minutes (such that adding @offset to the time would give the
 * correct UTC time). If @utc is %FALSE and @offset is 0, then the
 * %SoupDate represents a "floating" time with no associated timezone
 * information.
 */
public final class Date
{
	/** the main Gtk struct */
	protected SoupDate* soupDate;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupDate* getDateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupDate;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupDate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupDate* soupDate, bool ownedRef = false)
	{
		this.soupDate = soupDate;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_date_free(soupDate);
	}


	/**
	 * the year, 1 to 9999
	 */
	public @property int year()
	{
		return soupDate.year;
	}

	/** Ditto */
	public @property void year(int value)
	{
		soupDate.year = value;
	}

	/**
	 * the month, 1 to 12
	 */
	public @property int month()
	{
		return soupDate.month;
	}

	/** Ditto */
	public @property void month(int value)
	{
		soupDate.month = value;
	}

	/**
	 * day of the month, 1 to 31
	 */
	public @property int day()
	{
		return soupDate.day;
	}

	/** Ditto */
	public @property void day(int value)
	{
		soupDate.day = value;
	}

	/**
	 * hour of the day, 0 to 23
	 */
	public @property int hour()
	{
		return soupDate.hour;
	}

	/** Ditto */
	public @property void hour(int value)
	{
		soupDate.hour = value;
	}

	/**
	 * minute, 0 to 59
	 */
	public @property int minute()
	{
		return soupDate.minute;
	}

	/** Ditto */
	public @property void minute(int value)
	{
		soupDate.minute = value;
	}

	/**
	 * second, 0 to 59 (or up to 61 in the case of leap seconds)
	 */
	public @property int second()
	{
		return soupDate.second;
	}

	/** Ditto */
	public @property void second(int value)
	{
		soupDate.second = value;
	}

	/**
	 * %TRUE if the date is in UTC
	 */
	public @property bool utc()
	{
		return soupDate.utc != 0;
	}

	/** Ditto */
	public @property void utc(bool value)
	{
		soupDate.utc = value;
	}

	/**
	 * offset from UTC
	 */
	public @property int offset()
	{
		return soupDate.offset;
	}

	/** Ditto */
	public @property void offset(int value)
	{
		soupDate.offset = value;
	}

	/** */
	public static GType getType()
	{
		return soup_date_get_type();
	}

	/**
	 * Creates a #SoupDate representing the indicated time, UTC.
	 *
	 * Params:
	 *     year = the year (1-9999)
	 *     month = the month (1-12)
	 *     day = the day of the month (1-31, as appropriate for @month)
	 *     hour = the hour (0-23)
	 *     minute = the minute (0-59)
	 *     second = the second (0-59, or up to 61 for leap seconds)
	 *
	 * Returns: a new #SoupDate
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int year, int month, int day, int hour, int minute, int second)
	{
		auto __p = soup_date_new(year, month, day, hour, minute, second);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupDate*) __p);
	}

	/**
	 * Creates a #SoupDate representing a time @offset_seconds after the
	 * current time (or before it, if @offset_seconds is negative). If
	 * offset_seconds is 0, returns the current time.
	 *
	 * If @offset_seconds would indicate a time not expressible as a
	 * <type>time_t</type>, the return value will be clamped into range.
	 *
	 * Params:
	 *     offsetSeconds = offset from current time
	 *
	 * Returns: a new #SoupDate
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int offsetSeconds)
	{
		auto __p = soup_date_new_from_now(offsetSeconds);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_now");
		}

		this(cast(SoupDate*) __p);
	}

	/**
	 * Parses @date_string and tries to extract a date from it. This
	 * recognizes all of the "HTTP-date" formats from RFC 2616, all ISO
	 * 8601 formats containing both a time and a date, RFC 2822 dates,
	 * and reasonable approximations thereof. (Eg, it is lenient about
	 * whitespace, leading "0"s, etc.)
	 *
	 * Params:
	 *     dateString = the date in some plausible format
	 *
	 * Returns: a new #SoupDate, or %NULL if @date_string
	 *     could not be parsed.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string dateString)
	{
		auto __p = soup_date_new_from_string(Str.toStringz(dateString));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}

		this(cast(SoupDate*) __p);
	}

	/**
	 * Creates a #SoupDate corresponding to @when
	 *
	 * Params:
	 *     when = a <type>time_t</type>
	 *
	 * Returns: a new #SoupDate
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint when)
	{
		auto __p = soup_date_new_from_time_t(when);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_time_t");
		}

		this(cast(SoupDate*) __p);
	}

	/**
	 * Copies @date.
	 *
	 * Since: 2.24
	 */
	public Date copy()
	{
		auto __p = soup_date_copy(soupDate);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Date)(cast(SoupDate*) __p, true);
	}

	/**
	 * Frees @date.
	 *
	 * Since: 2.24
	 */
	public void free()
	{
		soup_date_free(soupDate);
		ownedRef = false;
	}

	/**
	 * Gets @date's day.
	 *
	 * Returns: @date's day
	 *
	 * Since: 2.32
	 */
	public int getDay()
	{
		return soup_date_get_day(soupDate);
	}

	/**
	 * Gets @date's hour.
	 *
	 * Returns: @date's hour
	 *
	 * Since: 2.32
	 */
	public int getHour()
	{
		return soup_date_get_hour(soupDate);
	}

	/**
	 * Gets @date's minute.
	 *
	 * Returns: @date's minute
	 *
	 * Since: 2.32
	 */
	public int getMinute()
	{
		return soup_date_get_minute(soupDate);
	}

	/**
	 * Gets @date's month.
	 *
	 * Returns: @date's month
	 *
	 * Since: 2.32
	 */
	public int getMonth()
	{
		return soup_date_get_month(soupDate);
	}

	/**
	 * Gets @date's offset from UTC.
	 *
	 * Returns: @date's offset from UTC. If soup_date_get_utc()
	 *     returns %FALSE but soup_date_get_offset() returns 0, that means the
	 *     date is a "floating" time with no associated offset information.
	 *
	 * Since: 2.32
	 */
	public int getOffset()
	{
		return soup_date_get_offset(soupDate);
	}

	/**
	 * Gets @date's second.
	 *
	 * Returns: @date's second
	 *
	 * Since: 2.32
	 */
	public int getSecond()
	{
		return soup_date_get_second(soupDate);
	}

	/**
	 * Gets @date's UTC flag
	 *
	 * Returns: %TRUE if @date is UTC.
	 *
	 * Since: 2.32
	 */
	public int getUtc()
	{
		return soup_date_get_utc(soupDate);
	}

	/**
	 * Gets @date's year.
	 *
	 * Returns: @date's year
	 *
	 * Since: 2.32
	 */
	public int getYear()
	{
		return soup_date_get_year(soupDate);
	}

	/**
	 * Determines if @date is in the past.
	 *
	 * Returns: %TRUE if @date is in the past
	 *
	 * Since: 2.24
	 */
	public bool isPast()
	{
		return soup_date_is_past(soupDate) != 0;
	}

	/**
	 * Converts @date to a string in the format described by @format.
	 *
	 * Params:
	 *     format = the format to generate the date in
	 *
	 * Returns: @date as a string
	 */
	public string toString(SoupDateFormat format)
	{
		auto retStr = soup_date_to_string(soupDate, format);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts @date to a <type>time_t</type>, assumming it to be in
	 * UTC.
	 *
	 * If @date is not representable as a <type>time_t</type>, it will be
	 * clamped into range. (In particular, some HTTP cookies have
	 * expiration dates after "Y2.038k" (2038-01-19T03:14:07Z).)
	 *
	 * Returns: @date as a <type>time_t</type>
	 */
	public uint to_time_t()
	{
		return soup_date_to_time_t(soupDate);
	}

	/**
	 * Converts @date to a #GTimeVal.
	 *
	 * Deprecated: Do not use #GTimeVal, as it's not Y2038-safe.
	 *
	 * Params:
	 *     time = a #GTimeVal structure in which to store the converted time.
	 *
	 * Since: 2.24
	 */
	public void toTimeval(out TimeVal time)
	{
		GTimeVal* outtime = sliceNew!GTimeVal();

		soup_date_to_timeval(soupDate, outtime);

		time = new TimeVal(outtime, true);
	}
}
