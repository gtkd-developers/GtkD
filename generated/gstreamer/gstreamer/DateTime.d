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


module gstreamer.DateTime;

private import glib.ConstructionException;
private import glib.DateTime : GLibDateTime = DateTime;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * Struct to store date, time and timezone information altogether.
 * #GstDateTime is refcounted and immutable.
 * 
 * Date information is handled using the proleptic Gregorian calendar.
 * 
 * Provides basic creation functions and accessor functions to its fields.
 */
public class DateTime
{
	/** the main Gtk struct */
	protected GstDateTime* gstDateTime;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstDateTime* getDateTimeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstDateTime;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstDateTime;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDateTime* gstDateTime, bool ownedRef = false)
	{
		this.gstDateTime = gstDateTime;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_date_time_unref(gstDateTime);
	}

	/**
	 * Creates a new GstDateTime representing the current date and time.
	 *
	 * Params:
	 *     utc  = If true use utc else use the local timezone.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (bool utc)
	{
		GstDateTime* p;

		if ( utc )
		{
			p = gst_date_time_new_now_utc();
		}
		else
		{
			p = gst_date_time_new_now_local_time();
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_date_time_new_now_local_time()");
		}
		this(p); //, true);
	}

	/**
	 * Creates a new GstDateTime using the time since Jan 1, 1970 specified by
	 * secs.
	 *
	 * Params:
	 *     secs = Seconds from the Unix epoch
	 *     utc  = If true use utc else use the local timezone.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (long secs, bool utc)
	{
		GstDateTime* p;

		if ( utc )
		{
			p = gst_date_time_new_from_unix_epoch_utc(secs);
		}
		else
		{
			p = gst_date_time_new_from_unix_epoch_local_time(secs);
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_date_time_new_from_unix_epoch_local_time(secs)");
		}
		this(p); //, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_date_time_get_type();
	}

	/**
	 * Creates a new #GstDateTime using the date and times in the gregorian calendar
	 * in the supplied timezone.
	 *
	 * @year should be from 1 to 9999, @month should be from 1 to 12, @day from
	 * 1 to 31, @hour from 0 to 23, @minutes and @seconds from 0 to 59.
	 *
	 * Note that @tzoffset is a float and was chosen so for being able to handle
	 * some fractional timezones, while it still keeps the readability of
	 * representing it in hours for most timezones.
	 *
	 * If value is -1 then all over value will be ignored. For example
	 * if @month == -1, then #GstDateTime will created only for @year. If
	 * @day == -1, then #GstDateTime will created for @year and @month and
	 * so on.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     tzoffset = Offset from UTC in hours.
	 *     year = the gregorian year
	 *     month = the gregorian month
	 *     day = the day of the gregorian month
	 *     hour = the hour of the day
	 *     minute = the minute of the hour
	 *     seconds = the second of the minute
	 *
	 * Returns: the newly created #GstDateTime
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(float tzoffset, int year, int month, int day, int hour, int minute, double seconds)
	{
		auto p = gst_date_time_new(tzoffset, year, month, day, hour, minute, seconds);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Creates a new #GstDateTime from a #GDateTime object.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     dt = the #GDateTime. The new #GstDateTime takes ownership.
	 *
	 * Returns: a newly created #GstDateTime,
	 *     or %NULL on error
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLibDateTime dt)
	{
		auto p = gst_date_time_new_from_g_date_time((dt is null) ? null : dt.getDateTimeStruct(true));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_g_date_time");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Tries to parse common variants of ISO-8601 datetime strings into a
	 * #GstDateTime. Possible input formats are (for example):
	 * 2012-06-30T22:46:43Z, 2012, 2012-06, 2012-06-30, 2012-06-30T22:46:43-0430,
	 * 2012-06-30T22:46Z, 2012-06-30T22:46-0430, 2012-06-30 22:46,
	 * 2012-06-30 22:46:43, 2012-06-00, 2012-00-00, 2012-00-30, 22:46:43Z, 22:46Z,
	 * 22:46:43-0430, 22:46-0430, 22:46:30, 22:46
	 * If no date is provided, it is assumed to be "today" in the timezone
	 * provided (if any), otherwise UTC.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     string_ = ISO 8601-formatted datetime string.
	 *
	 * Returns: a newly created #GstDateTime,
	 *     or %NULL on error
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto p = gst_date_time_new_from_iso8601_string(Str.toStringz(string_));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_iso8601_string");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Creates a new #GstDateTime using the date and times in the gregorian calendar
	 * in the local timezone.
	 *
	 * @year should be from 1 to 9999, @month should be from 1 to 12, @day from
	 * 1 to 31, @hour from 0 to 23, @minutes and @seconds from 0 to 59.
	 *
	 * If @month is -1, then the #GstDateTime created will only contain @year,
	 * and all other fields will be considered not set.
	 *
	 * If @day is -1, then the #GstDateTime created will only contain @year and
	 * @month and all other fields will be considered not set.
	 *
	 * If @hour is -1, then the #GstDateTime created will only contain @year and
	 * @month and @day, and the time fields will be considered not set. In this
	 * case @minute and @seconds should also be -1.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     year = the gregorian year
	 *     month = the gregorian month, or -1
	 *     day = the day of the gregorian month, or -1
	 *     hour = the hour of the day, or -1
	 *     minute = the minute of the hour, or -1
	 *     seconds = the second of the minute, or -1
	 *
	 * Returns: the newly created #GstDateTime
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int year, int month, int day, int hour, int minute, double seconds)
	{
		auto p = gst_date_time_new_local_time(year, month, day, hour, minute, seconds);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_local_time");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Creates a new #GstDateTime using the date and times in the gregorian calendar
	 * in the local timezone.
	 *
	 * @year should be from 1 to 9999.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     year = the gregorian year
	 *
	 * Returns: the newly created #GstDateTime
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int year)
	{
		auto p = gst_date_time_new_y(year);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_y");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Creates a new #GstDateTime using the date and times in the gregorian calendar
	 * in the local timezone.
	 *
	 * @year should be from 1 to 9999, @month should be from 1 to 12.
	 *
	 * If value is -1 then all over value will be ignored. For example
	 * if @month == -1, then #GstDateTime will created only for @year.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     year = the gregorian year
	 *     month = the gregorian month
	 *
	 * Returns: the newly created #GstDateTime
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int year, int month)
	{
		auto p = gst_date_time_new_ym(year, month);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_ym");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Creates a new #GstDateTime using the date and times in the gregorian calendar
	 * in the local timezone.
	 *
	 * @year should be from 1 to 9999, @month should be from 1 to 12, @day from
	 * 1 to 31.
	 *
	 * If value is -1 then all over value will be ignored. For example
	 * if @month == -1, then #GstDateTime will created only for @year. If
	 * @day == -1, then #GstDateTime will created for @year and @month and
	 * so on.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     year = the gregorian year
	 *     month = the gregorian month
	 *     day = the day of the gregorian month
	 *
	 * Returns: the newly created #GstDateTime
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int year, int month, int day)
	{
		auto p = gst_date_time_new_ymd(year, month, day);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_ymd");
		}

		this(cast(GstDateTime*) p);
	}

	/**
	 * Returns the day of the month of this #GstDateTime.
	 * Call gst_date_time_has_day before, to avoid warnings.
	 *
	 * Returns: The day of this #GstDateTime
	 */
	public int getDay()
	{
		return gst_date_time_get_day(gstDateTime);
	}

	/**
	 * Retrieves the hour of the day represented by @datetime in the gregorian
	 * calendar. The return is in the range of 0 to 23.
	 * Call gst_date_time_has_haur before, to avoid warnings.
	 *
	 * Returns: the hour of the day
	 */
	public int getHour()
	{
		return gst_date_time_get_hour(gstDateTime);
	}

	/**
	 * Retrieves the fractional part of the seconds in microseconds represented by
	 * @datetime in the gregorian calendar.
	 *
	 * Returns: the microsecond of the second
	 */
	public int getMicrosecond()
	{
		return gst_date_time_get_microsecond(gstDateTime);
	}

	/**
	 * Retrieves the minute of the hour represented by @datetime in the gregorian
	 * calendar.
	 * Call gst_date_time_has_minute before, to avoid warnings.
	 *
	 * Returns: the minute of the hour
	 */
	public int getMinute()
	{
		return gst_date_time_get_minute(gstDateTime);
	}

	/**
	 * Returns the month of this #GstDateTime. January is 1, February is 2, etc..
	 * Call gst_date_time_has_month before, to avoid warnings.
	 *
	 * Returns: The month of this #GstDateTime
	 */
	public int getMonth()
	{
		return gst_date_time_get_month(gstDateTime);
	}

	/**
	 * Retrieves the second of the minute represented by @datetime in the gregorian
	 * calendar.
	 * Call gst_date_time_has_second before, to avoid warnings.
	 *
	 * Returns: the second represented by @datetime
	 */
	public int getSecond()
	{
		return gst_date_time_get_second(gstDateTime);
	}

	/**
	 * Retrieves the offset from UTC in hours that the timezone specified
	 * by @datetime represents. Timezones ahead (to the east) of UTC have positive
	 * values, timezones before (to the west) of UTC have negative values.
	 * If @datetime represents UTC time, then the offset is zero.
	 *
	 * Returns: the offset from UTC in hours
	 */
	public float getTimeZoneOffset()
	{
		return gst_date_time_get_time_zone_offset(gstDateTime);
	}

	/**
	 * Returns the year of this #GstDateTime
	 * Call gst_date_time_has_year before, to avoid warnings.
	 *
	 * Returns: The year of this #GstDateTime
	 */
	public int getYear()
	{
		return gst_date_time_get_year(gstDateTime);
	}

	/**
	 * Returns: %TRUE if @datetime<!-- -->'s day field is set, otherwise %FALSE
	 */
	public bool hasDay()
	{
		return gst_date_time_has_day(gstDateTime) != 0;
	}

	/**
	 * Returns: %TRUE if @datetime<!-- -->'s month field is set, otherwise %FALSE
	 */
	public bool hasMonth()
	{
		return gst_date_time_has_month(gstDateTime) != 0;
	}

	/**
	 * Returns: %TRUE if @datetime<!-- -->'s second field is set, otherwise %FALSE
	 */
	public bool hasSecond()
	{
		return gst_date_time_has_second(gstDateTime) != 0;
	}

	/**
	 * Returns: %TRUE if @datetime<!-- -->'s hour and minute fields are set,
	 *     otherwise %FALSE
	 */
	public bool hasTime()
	{
		return gst_date_time_has_time(gstDateTime) != 0;
	}

	/**
	 * Returns: %TRUE if @datetime<!-- -->'s year field is set (which should always
	 *     be the case), otherwise %FALSE
	 */
	public bool hasYear()
	{
		return gst_date_time_has_year(gstDateTime) != 0;
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @datetime by one.
	 *
	 * Returns: the reference @datetime
	 */
	public DateTime ref_()
	{
		auto p = gst_date_time_ref(gstDateTime);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DateTime)(cast(GstDateTime*) p, true);
	}

	/**
	 * Creates a new #GDateTime from a fully defined #GstDateTime object.
	 *
	 * Free-function: g_date_time_unref
	 *
	 * Returns: a newly created #GDateTime, or
	 *     %NULL on error
	 */
	public GLibDateTime toGDateTime()
	{
		auto p = gst_date_time_to_g_date_time(gstDateTime);

		if(p is null)
		{
			return null;
		}

		return new GLibDateTime(cast(GDateTime*) p, true);
	}

	/**
	 * Create a minimal string compatible with ISO-8601. Possible output formats
	 * are (for example): 2012, 2012-06, 2012-06-23, 2012-06-23T23:30Z,
	 * 2012-06-23T23:30+0100, 2012-06-23T23:30:59Z, 2012-06-23T23:30:59+0100
	 *
	 * Returns: a newly allocated string formatted according
	 *     to ISO 8601 and only including the datetime fields that are
	 *     valid, or %NULL in case there was an error. The string should
	 *     be freed with g_free().
	 */
	public string toIso8601String()
	{
		auto retStr = gst_date_time_to_iso8601_string(gstDateTime);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Atomically decrements the reference count of @datetime by one.  When the
	 * reference count reaches zero, the structure is freed.
	 */
	public void unref()
	{
		gst_date_time_unref(gstDateTime);
	}
}
