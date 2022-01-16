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


module glib.DateTime;

private import glib.ConstructionException;
private import glib.Str;
private import glib.TimeVal;
private import glib.TimeZone;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * An opaque structure that represents a date and time, including a time zone.
 *
 * Since: 2.26
 */
public class DateTime
{
	/** the main Gtk struct */
	protected GDateTime* gDateTime;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDateTime* getDateTimeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDateTime;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDateTime;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDateTime* gDateTime, bool ownedRef = false)
	{
		this.gDateTime = gDateTime;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_date_time_unref(gDateTime);
	}

	/**
	 * Creates a DateTime corresponding to the given Unix time t
	 * Unix time is the number of seconds that have elapsed since 1970-01-01
	 * 00:00:00 UTC, regardless of the local time offset.
	 *
	 * This call can fail (ConstructionException) if t represents a time outside
	 * of the supported range of GDateTime.
	 * You should release the return value by calling unref()
	 * when you are done with it
	 *
	 * Params:
	 *     t   = the Unix time
	 *     utc = If true use utc else use the local timezone.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 *
	 * Since: 2.26
	 */
	public this (long t, bool utc = true)
	{
		GDateTime* p;

		if ( utc )
		{
			p = g_date_time_new_from_unix_utc(t);
		}
		else
		{
			p = g_date_time_new_from_unix_local(t);
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by g_date_time_new_from_unix_local(t)");
		}
		this(cast(GDateTime*) p);
	}

	/**
	 * Creates a DateTime corresponding to the given TimeVal tv.
	 * The time contained in a TimeVal is always stored in the form of
	 * seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
	 * local time offset.
	 *
	 * This call can fail (ConstructionException) if tv represents a time outside
	 * of the supported range of DateTime.
	 * You should release the return value by calling unref()
	 * when you are done with it.
	 *
	 * Params:
	 *     tv  = a GTimeVal
	 *     utc = If true use utc else use the local timezone.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 *
	 * Since: 2.26
	 */
	public this (ref GTimeVal tv, bool utc = true)
	{
		GDateTime* p;

		if ( utc )
		{
			p = g_date_time_new_from_timeval_utc(&tv);
		}
		else
		{
			p = g_date_time_new_from_timeval_local(&tv);
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by g_date_time_new_from_timeval_local((tv is null) ? null : tv.getTimeValStruct())");
		}
		this(cast(GDateTime*) p);
	}

	/** */
	override bool opEquals(Object rhs)
	{
		DateTime date = cast(DateTime)rhs;

		if ( date is null )
			return false;

		return equal(date) != 0;
	}

	/** */
	override int opCmp(Object rhs)
	{
		DateTime date = cast(DateTime)rhs;

		if ( date is null )
			return int.min;

		return compare(date);
	}

	/** */
	override nothrow @trusted hash_t toHash()
	{
		return hash();
	}

	/**
	 * Hashes datetime into a guint, suitable for use within GHashTable.
	 * Since 2.26
	 * Params:
	 * datetime = a GDateTime
	 * Returns: a guint containing the hash
	 */
	public nothrow @trusted uint hash()
	{
		try
		{
			return g_date_time_hash(gDateTime);
		}
		catch(Exception e)
		{
			return 0;
		}
	}

	/**
	 */

	/**
	 * Creates a new #GDateTime corresponding to the given date and time in
	 * the time zone @tz.
	 *
	 * The @year must be between 1 and 9999, @month between 1 and 12 and @day
	 * between 1 and 28, 29, 30 or 31 depending on the month and the year.
	 *
	 * @hour must be between 0 and 23 and @minute must be between 0 and 59.
	 *
	 * @seconds must be at least 0.0 and must be strictly less than 60.0.
	 * It will be rounded down to the nearest microsecond.
	 *
	 * If the given time is not representable in the given time zone (for
	 * example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
	 * time) then the time will be rounded up to the nearest existing time
	 * (in this case, 03:00).  If this matters to you then you should verify
	 * the return value for containing the same as the numbers you gave.
	 *
	 * In the case that the given time is ambiguous in the given time zone
	 * (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
	 * savings time) then the time falling within standard (ie:
	 * non-daylight) time is taken.
	 *
	 * It not considered a programmer error for the values to this function
	 * to be out of range, but in the case that they are, the function will
	 * return %NULL.
	 *
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 *
	 * Params:
	 *     tz = a #GTimeZone
	 *     year = the year component of the date
	 *     month = the month component of the date
	 *     day = the day component of the date
	 *     hour = the hour component of the date
	 *     minute = the minute component of the date
	 *     seconds = the number of seconds past the minute
	 *
	 * Returns: a new #GDateTime, or %NULL
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TimeZone tz, int year, int month, int day, int hour, int minute, double seconds)
	{
		auto __p = g_date_time_new((tz is null) ? null : tz.getTimeZoneStruct(), year, month, day, hour, minute, seconds);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDateTime*) __p);
	}

	/**
	 * Creates a #GDateTime corresponding to the given
	 * [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
	 * @text. ISO 8601 strings of the form <date><sep><time><tz> are supported, with
	 * some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
	 * mentioned below.
	 *
	 * Note that as #GDateTime "is oblivious to leap seconds", leap seconds information
	 * in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
	 * `23:59:59`.
	 *
	 * <sep> is the separator and can be either 'T', 't' or ' '. The latter two
	 * separators are an extension from
	 * [RFC 3339](https://tools.ietf.org/html/rfc3339#section-5.6).
	 *
	 * <date> is in the form:
	 *
	 * - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
	 * - `YYYYMMDD` - Same as above without dividers.
	 * - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
	 * - `YYYYDDD` - Same as above without dividers.
	 * - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
	 * e.g. 2016-W34-3.
	 * - `YYYYWwwD` - Same as above without dividers.
	 *
	 * <time> is in the form:
	 *
	 * - `hh:mm:ss(.sss)` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
	 * - `hhmmss(.sss)` - Same as above without dividers.
	 *
	 * <tz> is an optional timezone suffix of the form:
	 *
	 * - `Z` - UTC.
	 * - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
	 * - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
	 *
	 * If the timezone is not provided in @text it must be provided in @default_tz
	 * (this field is otherwise ignored).
	 *
	 * This call can fail (returning %NULL) if @text is not a valid ISO 8601
	 * formatted string.
	 *
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 *
	 * Params:
	 *     text = an ISO 8601 formatted time string.
	 *     defaultTz = a #GTimeZone to use if the text doesn't contain a
	 *         timezone, or %NULL.
	 *
	 * Returns: a new #GDateTime, or %NULL
	 *
	 * Since: 2.56
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string text, TimeZone defaultTz)
	{
		auto __p = g_date_time_new_from_iso8601(Str.toStringz(text), (defaultTz is null) ? null : defaultTz.getTimeZoneStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_iso8601");
		}

		this(cast(GDateTime*) __p);
	}

	/**
	 * Creates a #GDateTime corresponding to this exact instant in the given
	 * time zone @tz.  The time is as accurate as the system allows, to a
	 * maximum accuracy of 1 microsecond.
	 *
	 * This function will always succeed unless GLib is still being used after the
	 * year 9999.
	 *
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 *
	 * Params:
	 *     tz = a #GTimeZone
	 *
	 * Returns: a new #GDateTime, or %NULL
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TimeZone tz)
	{
		auto __p = g_date_time_new_now((tz is null) ? null : tz.getTimeZoneStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_now");
		}

		this(cast(GDateTime*) __p);
	}

	/**
	 * Creates a copy of @datetime and adds the specified timespan to the copy.
	 *
	 * Params:
	 *     timespan = a #GTimeSpan
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime add(GTimeSpan timespan)
	{
		auto __p = g_date_time_add(gDateTime, timespan);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of days to the
	 * copy. Add negative values to subtract days.
	 *
	 * Params:
	 *     days = the number of days
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addDays(int days)
	{
		auto __p = g_date_time_add_days(gDateTime, days);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a new #GDateTime adding the specified values to the current date and
	 * time in @datetime. Add negative values to subtract.
	 *
	 * Params:
	 *     years = the number of years to add
	 *     months = the number of months to add
	 *     days = the number of days to add
	 *     hours = the number of hours to add
	 *     minutes = the number of minutes to add
	 *     seconds = the number of seconds to add
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addFull(int years, int months, int days, int hours, int minutes, double seconds)
	{
		auto __p = g_date_time_add_full(gDateTime, years, months, days, hours, minutes, seconds);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of hours.
	 * Add negative values to subtract hours.
	 *
	 * Params:
	 *     hours = the number of hours to add
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addHours(int hours)
	{
		auto __p = g_date_time_add_hours(gDateTime, hours);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime adding the specified number of minutes.
	 * Add negative values to subtract minutes.
	 *
	 * Params:
	 *     minutes = the number of minutes to add
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addMinutes(int minutes)
	{
		auto __p = g_date_time_add_minutes(gDateTime, minutes);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of months to the
	 * copy. Add negative values to subtract months.
	 *
	 * The day of the month of the resulting #GDateTime is clamped to the number
	 * of days in the updated calendar month. For example, if adding 1 month to
	 * 31st January 2018, the result would be 28th February 2018. In 2020 (a leap
	 * year), the result would be 29th February.
	 *
	 * Params:
	 *     months = the number of months
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addMonths(int months)
	{
		auto __p = g_date_time_add_months(gDateTime, months);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of seconds.
	 * Add negative values to subtract seconds.
	 *
	 * Params:
	 *     seconds = the number of seconds to add
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addSeconds(double seconds)
	{
		auto __p = g_date_time_add_seconds(gDateTime, seconds);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of weeks to the
	 * copy. Add negative values to subtract weeks.
	 *
	 * Params:
	 *     weeks = the number of weeks
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addWeeks(int weeks)
	{
		auto __p = g_date_time_add_weeks(gDateTime, weeks);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a copy of @datetime and adds the specified number of years to the
	 * copy. Add negative values to subtract years.
	 *
	 * As with g_date_time_add_months(), if the resulting date would be 29th
	 * February on a non-leap year, the day will be clamped to 28th February.
	 *
	 * Params:
	 *     years = the number of years
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime addYears(int years)
	{
		auto __p = g_date_time_add_years(gDateTime, years);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * A comparison function for #GDateTimes that is suitable
	 * as a #GCompareFunc. Both #GDateTimes must be non-%NULL.
	 *
	 * Params:
	 *     dt2 = second #GDateTime to compare
	 *
	 * Returns: -1, 0 or 1 if @dt1 is less than, equal to or greater
	 *     than @dt2.
	 *
	 * Since: 2.26
	 */
	public int compare(DateTime dt2)
	{
		return g_date_time_compare(gDateTime, (dt2 is null) ? null : dt2.getDateTimeStruct());
	}

	/**
	 * Calculates the difference in time between @end and @begin.  The
	 * #GTimeSpan that is returned is effectively @end - @begin (ie:
	 * positive if the first parameter is larger).
	 *
	 * Params:
	 *     begin = a #GDateTime
	 *
	 * Returns: the difference between the two #GDateTime, as a time
	 *     span expressed in microseconds.
	 *
	 * Since: 2.26
	 */
	public GTimeSpan difference(DateTime begin)
	{
		return g_date_time_difference(gDateTime, (begin is null) ? null : begin.getDateTimeStruct());
	}

	/**
	 * Checks to see if @dt1 and @dt2 are equal.
	 *
	 * Equal here means that they represent the same moment after converting
	 * them to the same time zone.
	 *
	 * Params:
	 *     dt2 = a #GDateTime
	 *
	 * Returns: %TRUE if @dt1 and @dt2 are equal
	 *
	 * Since: 2.26
	 */
	public bool equal(DateTime dt2)
	{
		return g_date_time_equal(gDateTime, (dt2 is null) ? null : dt2.getDateTimeStruct()) != 0;
	}

	/**
	 * Creates a newly allocated string representing the requested @format.
	 *
	 * The format strings understood by this function are a subset of the
	 * strftime() format language as specified by C99.  The \%D, \%U and \%W
	 * conversions are not supported, nor is the 'E' modifier.  The GNU
	 * extensions \%k, \%l, \%s and \%P are supported, however, as are the
	 * '0', '_' and '-' modifiers. The Python extension \%f is also supported.
	 *
	 * In contrast to strftime(), this function always produces a UTF-8
	 * string, regardless of the current locale.  Note that the rendering of
	 * many formats is locale-dependent and may not match the strftime()
	 * output exactly.
	 *
	 * The following format specifiers are supported:
	 *
	 * - \%a: the abbreviated weekday name according to the current locale
	 * - \%A: the full weekday name according to the current locale
	 * - \%b: the abbreviated month name according to the current locale
	 * - \%B: the full month name according to the current locale
	 * - \%c: the preferred date and time representation for the current locale
	 * - \%C: the century number (year/100) as a 2-digit integer (00-99)
	 * - \%d: the day of the month as a decimal number (range 01 to 31)
	 * - \%e: the day of the month as a decimal number (range  1 to 31)
	 * - \%F: equivalent to `%Y-%m-%d` (the ISO 8601 date format)
	 * - \%g: the last two digits of the ISO 8601 week-based year as a
	 * decimal number (00-99). This works well with \%V and \%u.
	 * - \%G: the ISO 8601 week-based year as a decimal number. This works
	 * well with \%V and \%u.
	 * - \%h: equivalent to \%b
	 * - \%H: the hour as a decimal number using a 24-hour clock (range 00 to 23)
	 * - \%I: the hour as a decimal number using a 12-hour clock (range 01 to 12)
	 * - \%j: the day of the year as a decimal number (range 001 to 366)
	 * - \%k: the hour (24-hour clock) as a decimal number (range 0 to 23);
	 * single digits are preceded by a blank
	 * - \%l: the hour (12-hour clock) as a decimal number (range 1 to 12);
	 * single digits are preceded by a blank
	 * - \%m: the month as a decimal number (range 01 to 12)
	 * - \%M: the minute as a decimal number (range 00 to 59)
	 * - \%f: the microsecond as a decimal number (range 000000 to 999999)
	 * - \%p: either "AM" or "PM" according to the given time value, or the
	 * corresponding  strings for the current locale.  Noon is treated as
	 * "PM" and midnight as "AM". Use of this format specifier is discouraged, as
	 * many locales have no concept of AM/PM formatting. Use \%c or \%X instead.
	 * - \%P: like \%p but lowercase: "am" or "pm" or a corresponding string for
	 * the current locale. Use of this format specifier is discouraged, as
	 * many locales have no concept of AM/PM formatting. Use \%c or \%X instead.
	 * - \%r: the time in a.m. or p.m. notation. Use of this format specifier is
	 * discouraged, as many locales have no concept of AM/PM formatting. Use \%c
	 * or \%X instead.
	 * - \%R: the time in 24-hour notation (\%H:\%M)
	 * - \%s: the number of seconds since the Epoch, that is, since 1970-01-01
	 * 00:00:00 UTC
	 * - \%S: the second as a decimal number (range 00 to 60)
	 * - \%t: a tab character
	 * - \%T: the time in 24-hour notation with seconds (\%H:\%M:\%S)
	 * - \%u: the ISO 8601 standard day of the week as a decimal, range 1 to 7,
	 * Monday being 1. This works well with \%G and \%V.
	 * - \%V: the ISO 8601 standard week number of the current year as a decimal
	 * number, range 01 to 53, where week 1 is the first week that has at
	 * least 4 days in the new year. See g_date_time_get_week_of_year().
	 * This works well with \%G and \%u.
	 * - \%w: the day of the week as a decimal, range 0 to 6, Sunday being 0.
	 * This is not the ISO 8601 standard format -- use \%u instead.
	 * - \%x: the preferred date representation for the current locale without
	 * the time
	 * - \%X: the preferred time representation for the current locale without
	 * the date
	 * - \%y: the year as a decimal number without the century
	 * - \%Y: the year as a decimal number including the century
	 * - \%z: the time zone as an offset from UTC (+hhmm)
	 * - \%:z: the time zone as an offset from UTC (+hh:mm).
	 * This is a gnulib strftime() extension. Since: 2.38
	 * - \%::z: the time zone as an offset from UTC (+hh:mm:ss). This is a
	 * gnulib strftime() extension. Since: 2.38
	 * - \%:::z: the time zone as an offset from UTC, with : to necessary
	 * precision (e.g., -04, +05:30). This is a gnulib strftime() extension. Since: 2.38
	 * - \%Z: the time zone or name or abbreviation
	 * - \%\%: a literal \% character
	 *
	 * Some conversion specifications can be modified by preceding the
	 * conversion specifier by one or more modifier characters. The
	 * following modifiers are supported for many of the numeric
	 * conversions:
	 *
	 * - O: Use alternative numeric symbols, if the current locale supports those.
	 * - _: Pad a numeric result with spaces. This overrides the default padding
	 * for the specifier.
	 * - -: Do not pad a numeric result. This overrides the default padding
	 * for the specifier.
	 * - 0: Pad a numeric result with zeros. This overrides the default padding
	 * for the specifier.
	 *
	 * Additionally, when O is used with B, b, or h, it produces the alternative
	 * form of a month name. The alternative form should be used when the month
	 * name is used without a day number (e.g., standalone). It is required in
	 * some languages (Baltic, Slavic, Greek, and more) due to their grammatical
	 * rules. For other languages there is no difference. \%OB is a GNU and BSD
	 * strftime() extension expected to be added to the future POSIX specification,
	 * \%Ob and \%Oh are GNU strftime() extensions. Since: 2.56
	 *
	 * Params:
	 *     format = a valid UTF-8 string, containing the format for the
	 *         #GDateTime
	 *
	 * Returns: a newly allocated string formatted to
	 *     the requested format or %NULL in the case that there was an error (such
	 *     as a format specifier not being supported in the current locale). The
	 *     string should be freed with g_free().
	 *
	 * Since: 2.26
	 */
	public string format(string format)
	{
		auto retStr = g_date_time_format(gDateTime, Str.toStringz(format));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Format @datetime in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601),
	 * including the date, time and time zone, and return that as a UTF-8 encoded
	 * string.
	 *
	 * Since GLib 2.66, this will output to sub-second precision if needed.
	 *
	 * Returns: a newly allocated string formatted in
	 *     ISO 8601 format or %NULL in the case that there was an error. The string
	 *     should be freed with g_free().
	 *
	 * Since: 2.62
	 */
	public string formatIso8601()
	{
		auto retStr = g_date_time_format_iso8601(gDateTime);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves the day of the month represented by @datetime in the gregorian
	 * calendar.
	 *
	 * Returns: the day of the month
	 *
	 * Since: 2.26
	 */
	public int getDayOfMonth()
	{
		return g_date_time_get_day_of_month(gDateTime);
	}

	/**
	 * Retrieves the ISO 8601 day of the week on which @datetime falls (1 is
	 * Monday, 2 is Tuesday... 7 is Sunday).
	 *
	 * Returns: the day of the week
	 *
	 * Since: 2.26
	 */
	public int getDayOfWeek()
	{
		return g_date_time_get_day_of_week(gDateTime);
	}

	/**
	 * Retrieves the day of the year represented by @datetime in the Gregorian
	 * calendar.
	 *
	 * Returns: the day of the year
	 *
	 * Since: 2.26
	 */
	public int getDayOfYear()
	{
		return g_date_time_get_day_of_year(gDateTime);
	}

	/**
	 * Retrieves the hour of the day represented by @datetime
	 *
	 * Returns: the hour of the day
	 *
	 * Since: 2.26
	 */
	public int getHour()
	{
		return g_date_time_get_hour(gDateTime);
	}

	/**
	 * Retrieves the microsecond of the date represented by @datetime
	 *
	 * Returns: the microsecond of the second
	 *
	 * Since: 2.26
	 */
	public int getMicrosecond()
	{
		return g_date_time_get_microsecond(gDateTime);
	}

	/**
	 * Retrieves the minute of the hour represented by @datetime
	 *
	 * Returns: the minute of the hour
	 *
	 * Since: 2.26
	 */
	public int getMinute()
	{
		return g_date_time_get_minute(gDateTime);
	}

	/**
	 * Retrieves the month of the year represented by @datetime in the Gregorian
	 * calendar.
	 *
	 * Returns: the month represented by @datetime
	 *
	 * Since: 2.26
	 */
	public int getMonth()
	{
		return g_date_time_get_month(gDateTime);
	}

	/**
	 * Retrieves the second of the minute represented by @datetime
	 *
	 * Returns: the second represented by @datetime
	 *
	 * Since: 2.26
	 */
	public int getSecond()
	{
		return g_date_time_get_second(gDateTime);
	}

	/**
	 * Retrieves the number of seconds since the start of the last minute,
	 * including the fractional part.
	 *
	 * Returns: the number of seconds
	 *
	 * Since: 2.26
	 */
	public double getSeconds()
	{
		return g_date_time_get_seconds(gDateTime);
	}

	/**
	 * Get the time zone for this @datetime.
	 *
	 * Returns: the time zone
	 *
	 * Since: 2.58
	 */
	public TimeZone getTimezone()
	{
		auto __p = g_date_time_get_timezone(gDateTime);

		if(__p is null)
		{
			return null;
		}

		return new TimeZone(cast(GTimeZone*) __p);
	}

	/**
	 * Determines the time zone abbreviation to be used at the time and in
	 * the time zone of @datetime.
	 *
	 * For example, in Toronto this is currently "EST" during the winter
	 * months and "EDT" during the summer months when daylight savings
	 * time is in effect.
	 *
	 * Returns: the time zone abbreviation. The returned
	 *     string is owned by the #GDateTime and it should not be
	 *     modified or freed
	 *
	 * Since: 2.26
	 */
	public string getTimezoneAbbreviation()
	{
		return Str.toString(g_date_time_get_timezone_abbreviation(gDateTime));
	}

	/**
	 * Determines the offset to UTC in effect at the time and in the time
	 * zone of @datetime.
	 *
	 * The offset is the number of microseconds that you add to UTC time to
	 * arrive at local time for the time zone (ie: negative numbers for time
	 * zones west of GMT, positive numbers for east).
	 *
	 * If @datetime represents UTC time, then the offset is always zero.
	 *
	 * Returns: the number of microseconds that should be added to UTC to
	 *     get the local time
	 *
	 * Since: 2.26
	 */
	public GTimeSpan getUtcOffset()
	{
		return g_date_time_get_utc_offset(gDateTime);
	}

	/**
	 * Returns the ISO 8601 week-numbering year in which the week containing
	 * @datetime falls.
	 *
	 * This function, taken together with g_date_time_get_week_of_year() and
	 * g_date_time_get_day_of_week() can be used to determine the full ISO
	 * week date on which @datetime falls.
	 *
	 * This is usually equal to the normal Gregorian year (as returned by
	 * g_date_time_get_year()), except as detailed below:
	 *
	 * For Thursday, the week-numbering year is always equal to the usual
	 * calendar year.  For other days, the number is such that every day
	 * within a complete week (Monday to Sunday) is contained within the
	 * same week-numbering year.
	 *
	 * For Monday, Tuesday and Wednesday occurring near the end of the year,
	 * this may mean that the week-numbering year is one greater than the
	 * calendar year (so that these days have the same week-numbering year
	 * as the Thursday occurring early in the next year).
	 *
	 * For Friday, Saturday and Sunday occurring near the start of the year,
	 * this may mean that the week-numbering year is one less than the
	 * calendar year (so that these days have the same week-numbering year
	 * as the Thursday occurring late in the previous year).
	 *
	 * An equivalent description is that the week-numbering year is equal to
	 * the calendar year containing the majority of the days in the current
	 * week (Monday to Sunday).
	 *
	 * Note that January 1 0001 in the proleptic Gregorian calendar is a
	 * Monday, so this function never returns 0.
	 *
	 * Returns: the ISO 8601 week-numbering year for @datetime
	 *
	 * Since: 2.26
	 */
	public int getWeekNumberingYear()
	{
		return g_date_time_get_week_numbering_year(gDateTime);
	}

	/**
	 * Returns the ISO 8601 week number for the week containing @datetime.
	 * The ISO 8601 week number is the same for every day of the week (from
	 * Moday through Sunday).  That can produce some unusual results
	 * (described below).
	 *
	 * The first week of the year is week 1.  This is the week that contains
	 * the first Thursday of the year.  Equivalently, this is the first week
	 * that has more than 4 of its days falling within the calendar year.
	 *
	 * The value 0 is never returned by this function.  Days contained
	 * within a year but occurring before the first ISO 8601 week of that
	 * year are considered as being contained in the last week of the
	 * previous year.  Similarly, the final days of a calendar year may be
	 * considered as being part of the first ISO 8601 week of the next year
	 * if 4 or more days of that week are contained within the new year.
	 *
	 * Returns: the ISO 8601 week number for @datetime.
	 *
	 * Since: 2.26
	 */
	public int getWeekOfYear()
	{
		return g_date_time_get_week_of_year(gDateTime);
	}

	/**
	 * Retrieves the year represented by @datetime in the Gregorian calendar.
	 *
	 * Returns: the year represented by @datetime
	 *
	 * Since: 2.26
	 */
	public int getYear()
	{
		return g_date_time_get_year(gDateTime);
	}

	/**
	 * Retrieves the Gregorian day, month, and year of a given #GDateTime.
	 *
	 * Params:
	 *     year = the return location for the gregorian year, or %NULL.
	 *     month = the return location for the month of the year, or %NULL.
	 *     day = the return location for the day of the month, or %NULL.
	 *
	 * Since: 2.26
	 */
	public void getYmd(out int year, out int month, out int day)
	{
		g_date_time_get_ymd(gDateTime, &year, &month, &day);
	}

	/**
	 * Determines if daylight savings time is in effect at the time and in
	 * the time zone of @datetime.
	 *
	 * Returns: %TRUE if daylight savings time is in effect
	 *
	 * Since: 2.26
	 */
	public bool isDaylightSavings()
	{
		return g_date_time_is_daylight_savings(gDateTime) != 0;
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @datetime by one.
	 *
	 * Returns: the #GDateTime with the reference count increased
	 *
	 * Since: 2.26
	 */
	public DateTime ref_()
	{
		auto __p = g_date_time_ref(gDateTime);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Creates a new #GDateTime corresponding to the same instant in time as
	 * @datetime, but in the local time zone.
	 *
	 * This call is equivalent to calling g_date_time_to_timezone() with the
	 * time zone returned by g_time_zone_new_local().
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime toLocal()
	{
		auto __p = g_date_time_to_local(gDateTime);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Stores the instant in time that @datetime represents into @tv.
	 *
	 * The time contained in a #GTimeVal is always stored in the form of
	 * seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the time
	 * zone associated with @datetime.
	 *
	 * On systems where 'long' is 32bit (ie: all 32bit systems and all
	 * Windows systems), a #GTimeVal is incapable of storing the entire
	 * range of values that #GDateTime is capable of expressing.  On those
	 * systems, this function returns %FALSE to indicate that the time is
	 * out of range.
	 *
	 * On systems where 'long' is 64bit, this function never fails.
	 *
	 * Deprecated: #GTimeVal is not year-2038-safe. Use
	 * g_date_time_to_unix() instead.
	 *
	 * Params:
	 *     tv = a #GTimeVal to modify
	 *
	 * Returns: %TRUE if successful, else %FALSE
	 *
	 * Since: 2.26
	 */
	public bool toTimeval(TimeVal tv)
	{
		return g_date_time_to_timeval(gDateTime, (tv is null) ? null : tv.getTimeValStruct()) != 0;
	}

	/**
	 * Create a new #GDateTime corresponding to the same instant in time as
	 * @datetime, but in the time zone @tz.
	 *
	 * This call can fail in the case that the time goes out of bounds.  For
	 * example, converting 0001-01-01 00:00:00 UTC to a time zone west of
	 * Greenwich will fail (due to the year 0 being out of range).
	 *
	 * Params:
	 *     tz = the new #GTimeZone
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime toTimezone(TimeZone tz)
	{
		auto __p = g_date_time_to_timezone(gDateTime, (tz is null) ? null : tz.getTimeZoneStruct());

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Gives the Unix time corresponding to @datetime, rounding down to the
	 * nearest second.
	 *
	 * Unix time is the number of seconds that have elapsed since 1970-01-01
	 * 00:00:00 UTC, regardless of the time zone associated with @datetime.
	 *
	 * Returns: the Unix time corresponding to @datetime
	 *
	 * Since: 2.26
	 */
	public long toUnix()
	{
		return g_date_time_to_unix(gDateTime);
	}

	/**
	 * Creates a new #GDateTime corresponding to the same instant in time as
	 * @datetime, but in UTC.
	 *
	 * This call is equivalent to calling g_date_time_to_timezone() with the
	 * time zone returned by g_time_zone_new_utc().
	 *
	 * Returns: the newly created #GDateTime which
	 *     should be freed with g_date_time_unref(), or %NULL
	 *
	 * Since: 2.26
	 */
	public DateTime toUtc()
	{
		auto __p = g_date_time_to_utc(gDateTime);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @datetime by one.
	 *
	 * When the reference count reaches zero, the resources allocated by
	 * @datetime are freed
	 *
	 * Since: 2.26
	 */
	public void unref()
	{
		g_date_time_unref(gDateTime);
	}
}
