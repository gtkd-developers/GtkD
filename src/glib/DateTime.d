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
 * inFile  = glib-GDateTime.html
 * outPack = glib
 * outFile = DateTime
 * strct   = GDateTime
 * realStrct=
 * ctorStrct=
 * clss    = DateTime
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_date_time_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_date_time_new_now_utc
 * 	- g_date_time_new_now_local
 * 	- g_date_time_new_from_unix_local
 * 	- g_date_time_new_from_unix_utc
 * 	- g_date_time_new_from_timeval_local
 * 	- g_date_time_new_from_timeval_utc
 * 	- g_date_time_new_local
 * 	- g_date_time_new_utc
 * 	- g_date_time_hash
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.TimeZone
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GDateTime* -> DateTime
 * 	- GTimeZone* -> TimeZone
 * 	- void* -> DateTime
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.DateTime;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.TimeZone;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * GDateTime is a structure that combines a Gregorian date and time
 * into a single structure. It provides many conversion and methods to
 * manipulate dates and times. Time precision is provided down to
 * microseconds and the time can range (proleptically) from 0001-01-01
 * 00:00:00 to 9999-12-31 23:59:59.999999. GDateTime follows POSIX
 * time in the sense that it is oblivious to leap seconds.
 * GDateTime is an immutable object; once it has been created it cannot
 * be modified further. All modifiers will create a new GDateTime.
 * Nearly all such functions can fail due to the date or time going out
 * of range, in which case NULL will be returned.
 * GDateTime is reference counted: the reference count is increased by calling
 * g_date_time_ref() and decreased by calling g_date_time_unref(). When the
 * reference count drops to 0, the resources allocated by the GDateTime
 * structure are released.
 * Many parts of the API may produce non-obvious results. As an
 * example, adding two months to January 31st will yield March 31st
 * whereas adding one month and then one month again will yield either
 * March 28th or March 29th. Also note that adding 24 hours is not
 * always the same as adding one day (since days containing daylight
 * savings time transitions are either 23 or 25 hours in length).
 * GDateTime is available since GLib 2.26.
 */
public class DateTime
{
	
	/** the main Gtk struct */
	protected GDateTime* gDateTime;
	
	
	public GDateTime* getDateTimeStruct()
	{
		return gDateTime;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDateTime;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDateTime* gDateTime)
	{
		this.gDateTime = gDateTime;
	}
	
	/**
	 * Creates a GDateTime corresponding to the given Unix time t
	 * Unix time is the number of seconds that have elapsed since 1970-01-01
	 * 00:00:00 UTC, regardless of the local time offset.
	 *
	 * This call can fail (returning NULL) if t represents a time outside
	 * of the supported range of GDateTime.
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 * Since 2.26
	 *
	 * Params:
	 *     t   = the Unix time
	 *     utc = If true use utc else use the local timezone.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (long t, bool utc = true)
	{
		// GDateTime * g_date_time_new_from_unix_local (gint64 t);
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
	 * Creates a GDateTime corresponding to the given GTimeVal tv.
	 * The time contained in a GTimeVal is always stored in the form of
	 * seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
	 * local time offset.
	 *
	 * This call can fail (returning NULL) if tv represents a time outside
	 * of the supported range of GDateTime.
	 * You should release the return value by calling unref()
	 * when you are done with it.
	 * Since 2.26
	 *
	 * Params:
	 *     tv  = a GTimeVal
	 *     utc = If true use utc else use the local timezone.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ref GTimeVal tv, bool utc = true)
	{
		// GDateTime * g_date_time_new_from_timeval_local (const GTimeVal *tv);
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
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gDateTime !is null )
		{
			g_date_time_unref(gDateTime);
		}
	}
	
	version(D_Version2)
	{
		override bool opEquals(Object rhs)
		{
			DateTime date = cast(DateTime)rhs;
			
			if ( date is null )
			return false;
			
			return equal(this, date) != 0;
		}
	}
	else
	{
		override int opEquals(Object rhs)
		{
			DateTime date = cast(DateTime)rhs;
			
			if ( date is null )
			return false;
			
			return equal(this, date);
		}
	}
	
	override int opCmp(Object rhs)
	{
		DateTime date = cast(DateTime)rhs;
		
		if ( date is null )
		return int.min;
		
		return compare(this, date);
	}
	
	override hash_t toHash()
	{
		return hash(this);
	}
	
	version(D_Version2)
	{
		/**
		 * Hashes datetime into a guint, suitable for use within GHashTable.
		 * Since 2.26
		 * Params:
		 * datetime = a GDateTime
		 * Returns: a guint containing the hash
		 */
		mixin("public static nothrow @trusted uint hash(DateTime datetime)
		{
			try
			{
				// guint g_date_time_hash (gconstpointer datetime);
				return g_date_time_hash((datetime is null) ? null : datetime.getDateTimeStruct());
			}
			catch(Exception e)
			{
				return 0;
			}
		}");
	}
	else
	{
		/**
		 * Hashes datetime into a guint, suitable for use within GHashTable.
		 * Since 2.26
		 * Params:
		 * datetime = a GDateTime
		 * Returns: a guint containing the hash
		 */
		public static uint hash(DateTime datetime)
		{
			// guint g_date_time_hash (gconstpointer datetime);
			return g_date_time_hash((datetime is null) ? null : datetime.getDateTimeStruct());
		}
	}
	
	/**
	 */
	
	/**
	 * Atomically decrements the reference count of datetime by one.
	 * When the reference count reaches zero, the resources allocated by
	 * datetime are freed
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_date_time_unref (GDateTime *datetime);
		g_date_time_unref(gDateTime);
	}
	
	/**
	 * Atomically increments the reference count of datetime by one.
	 * Since 2.26
	 * Returns: the GDateTime with the reference count increased
	 */
	public DateTime doref()
	{
		// GDateTime * g_date_time_ref (GDateTime *datetime);
		auto p = g_date_time_ref(gDateTime);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a GDateTime corresponding to this exact instant in the given
	 * time zone tz. The time is as accurate as the system allows, to a
	 * maximum accuracy of 1 microsecond.
	 * This function will always succeed unless the system clock is set to
	 * truly insane values (or unless GLib is still being used after the
	 * year 9999).
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 * Since 2.26
	 * Params:
	 * tz = a GTimeZone
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TimeZone tz)
	{
		// GDateTime * g_date_time_new_now (GTimeZone *tz);
		auto p = g_date_time_new_now((tz is null) ? null : tz.getTimeZoneStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_date_time_new_now((tz is null) ? null : tz.getTimeZoneStruct())");
		}
		this(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a new GDateTime corresponding to the given date and time in
	 * the time zone tz.
	 * The year must be between 1 and 9999, month between 1 and 12 and day
	 * between 1 and 28, 29, 30 or 31 depending on the month and the year.
	 * hour must be between 0 and 23 and minute must be between 0 and 59.
	 * seconds must be at least 0.0 and must be strictly less than 60.0.
	 * It will be rounded down to the nearest microsecond.
	 * If the given time is not representable in the given time zone (for
	 * example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
	 * time) then the time will be rounded up to the nearest existing time
	 * (in this case, 03:00). If this matters to you then you should verify
	 * the return value for containing the same as the numbers you gave.
	 * In the case that the given time is ambiguous in the given time zone
	 * (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
	 * Since 2.26
	 * Params:
	 * tz = a GTimeZone
	 * year = the year component of the date
	 * month = the month component of the date
	 * day = the day component of the date
	 * hour = the hour component of the date
	 * minute = the minute component of the date
	 * seconds = the number of seconds past the minute
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TimeZone tz, int year, int month, int day, int hour, int minute, double seconds)
	{
		// GDateTime * g_date_time_new (GTimeZone *tz,  gint year,  gint month,  gint day,  gint hour,  gint minute,  gdouble seconds);
		auto p = g_date_time_new((tz is null) ? null : tz.getTimeZoneStruct(), year, month, day, hour, minute, seconds);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_date_time_new((tz is null) ? null : tz.getTimeZoneStruct(), year, month, day, hour, minute, seconds)");
		}
		this(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified timespan to the copy.
	 * Since 2.26
	 * Params:
	 * timespan = a GTimeSpan
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime add(GTimeSpan timespan)
	{
		// GDateTime * g_date_time_add (GDateTime *datetime,  GTimeSpan timespan);
		auto p = g_date_time_add(gDateTime, timespan);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of years to the
	 * copy.
	 * Since 2.26
	 * Params:
	 * years = the number of years
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addYears(int years)
	{
		// GDateTime * g_date_time_add_years (GDateTime *datetime,  gint years);
		auto p = g_date_time_add_years(gDateTime, years);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of months to the
	 * copy.
	 * Since 2.26
	 * Params:
	 * months = the number of months
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addMonths(int months)
	{
		// GDateTime * g_date_time_add_months (GDateTime *datetime,  gint months);
		auto p = g_date_time_add_months(gDateTime, months);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of weeks to the
	 * copy.
	 * Since 2.26
	 * Params:
	 * weeks = the number of weeks
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addWeeks(int weeks)
	{
		// GDateTime * g_date_time_add_weeks (GDateTime *datetime,  gint weeks);
		auto p = g_date_time_add_weeks(gDateTime, weeks);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of days to the
	 * copy.
	 * Since 2.26
	 * Params:
	 * days = the number of days
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addDays(int days)
	{
		// GDateTime * g_date_time_add_days (GDateTime *datetime,  gint days);
		auto p = g_date_time_add_days(gDateTime, days);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of hours
	 * Since 2.26
	 * Params:
	 * hours = the number of hours to add
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addHours(int hours)
	{
		// GDateTime * g_date_time_add_hours (GDateTime *datetime,  gint hours);
		auto p = g_date_time_add_hours(gDateTime, hours);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime adding the specified number of minutes.
	 * Since 2.26
	 * Params:
	 * minutes = the number of minutes to add
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addMinutes(int minutes)
	{
		// GDateTime * g_date_time_add_minutes (GDateTime *datetime,  gint minutes);
		auto p = g_date_time_add_minutes(gDateTime, minutes);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a copy of datetime and adds the specified number of seconds.
	 * Since 2.26
	 * Params:
	 * seconds = the number of seconds to add
	 * Returns: the newly created GDateTime which should be freed with g_date_time_unref().
	 */
	public DateTime addSeconds(double seconds)
	{
		// GDateTime * g_date_time_add_seconds (GDateTime *datetime,  gdouble seconds);
		auto p = g_date_time_add_seconds(gDateTime, seconds);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a new GDateTime adding the specified values to the current date and
	 * time in datetime.
	 * Since 2.26
	 * Params:
	 * years = the number of years to add
	 * months = the number of months to add
	 * days = the number of days to add
	 * hours = the number of hours to add
	 * minutes = the number of minutes to add
	 * seconds = the number of seconds to add
	 * Returns: the newly created GDateTime that should be freed with g_date_time_unref().
	 */
	public DateTime addFull(int years, int months, int days, int hours, int minutes, double seconds)
	{
		// GDateTime * g_date_time_add_full (GDateTime *datetime,  gint years,  gint months,  gint days,  gint hours,  gint minutes,  gdouble seconds);
		auto p = g_date_time_add_full(gDateTime, years, months, days, hours, minutes, seconds);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * A comparison function for GDateTimes that is suitable
	 * as a GCompareFunc. Both GDateTimes must be non-NULL.
	 * Since 2.26
	 * Params:
	 * dt1 = first GDateTime to compare
	 * dt2 = second GDateTime to compare
	 * Returns: -1, 0 or 1 if dt1 is less than, equal to or greater than dt2.
	 */
	public static int compare(DateTime dt1, DateTime dt2)
	{
		// gint g_date_time_compare (gconstpointer dt1,  gconstpointer dt2);
		return g_date_time_compare((dt1 is null) ? null : dt1.getDateTimeStruct(), (dt2 is null) ? null : dt2.getDateTimeStruct());
	}
	
	/**
	 * Calculates the difference in time between end and begin. The
	 * Since 2.26
	 * Params:
	 * begin = a GDateTime
	 * Returns: the difference between the two GDateTime, as a time span expressed in microseconds.
	 */
	public GTimeSpan difference(DateTime begin)
	{
		// GTimeSpan g_date_time_difference (GDateTime *end,  GDateTime *begin);
		return g_date_time_difference(gDateTime, (begin is null) ? null : begin.getDateTimeStruct());
	}
	
	/**
	 * Checks to see if dt1 and dt2 are equal.
	 * Equal here means that they represent the same moment after converting
	 * them to the same time zone.
	 * Since 2.26
	 * Params:
	 * dt1 = a GDateTime
	 * dt2 = a GDateTime
	 * Returns: TRUE if dt1 and dt2 are equal
	 */
	public static int equal(DateTime dt1, DateTime dt2)
	{
		// gboolean g_date_time_equal (gconstpointer dt1,  gconstpointer dt2);
		return g_date_time_equal((dt1 is null) ? null : dt1.getDateTimeStruct(), (dt2 is null) ? null : dt2.getDateTimeStruct());
	}
	
	/**
	 * Retrieves the Gregorian day, month, and year of a given GDateTime.
	 * Since 2.26
	 * Params:
	 * year = the return location for the gregorian year, or NULL. [out][allow-none]
	 * month = the return location for the month of the year, or NULL. [out][allow-none]
	 * day = the return location for the day of the month, or NULL. [out][allow-none]
	 */
	public void getYmd(out int year, out int month, out int day)
	{
		// void g_date_time_get_ymd (GDateTime *datetime,  gint *year,  gint *month,  gint *day);
		g_date_time_get_ymd(gDateTime, &year, &month, &day);
	}
	
	/**
	 * Retrieves the year represented by datetime in the Gregorian calendar.
	 * Since 2.26
	 * Returns: the year represented by datetime
	 */
	public int getYear()
	{
		// gint g_date_time_get_year (GDateTime *datetime);
		return g_date_time_get_year(gDateTime);
	}
	
	/**
	 * Retrieves the month of the year represented by datetime in the Gregorian
	 * calendar.
	 * Since 2.26
	 * Returns: the month represented by datetime
	 */
	public int getMonth()
	{
		// gint g_date_time_get_month (GDateTime *datetime);
		return g_date_time_get_month(gDateTime);
	}
	
	/**
	 * Retrieves the day of the month represented by datetime in the gregorian
	 * calendar.
	 * Since 2.26
	 * Returns: the day of the month
	 */
	public int getDayOfMonth()
	{
		// gint g_date_time_get_day_of_month (GDateTime *datetime);
		return g_date_time_get_day_of_month(gDateTime);
	}
	
	/**
	 * Returns the ISO 8601 week-numbering year in which the week containing
	 * datetime falls.
	 * This function, taken together with g_date_time_get_week_of_year() and
	 * g_date_time_get_day_of_week() can be used to determine the full ISO
	 * week date on which datetime falls.
	 * This is usually equal to the normal Gregorian year (as returned by
	 * Since 2.26
	 * Returns: the ISO 8601 week-numbering year for datetime
	 */
	public int getWeekNumberingYear()
	{
		// gint g_date_time_get_week_numbering_year (GDateTime *datetime);
		return g_date_time_get_week_numbering_year(gDateTime);
	}
	
	/**
	 * Returns the ISO 8601 week number for the week containing datetime.
	 * The ISO 8601 week number is the same for every day of the week (from
	 * Moday through Sunday). That can produce some unusual results
	 * (described below).
	 * The first week of the year is week 1. This is the week that contains
	 * the first Thursday of the year. Equivalently, this is the first week
	 * that has more than 4 of its days falling within the calendar year.
	 * The value 0 is never returned by this function. Days contained
	 * within a year but occurring before the first ISO 8601 week of that
	 * year are considered as being contained in the last week of the
	 * previous year. Similarly, the final days of a calendar year may be
	 * considered as being part of the first ISO 8601 week of the next year
	 * if 4 or more days of that week are contained within the new year.
	 * Since 2.26
	 * Returns: the ISO 8601 week number for datetime.
	 */
	public int getWeekOfYear()
	{
		// gint g_date_time_get_week_of_year (GDateTime *datetime);
		return g_date_time_get_week_of_year(gDateTime);
	}
	
	/**
	 * Retrieves the ISO 8601 day of the week on which datetime falls (1 is
	 * Monday, 2 is Tuesday... 7 is Sunday).
	 * Since 2.26
	 * Returns: the day of the week
	 */
	public int getDayOfWeek()
	{
		// gint g_date_time_get_day_of_week (GDateTime *datetime);
		return g_date_time_get_day_of_week(gDateTime);
	}
	
	/**
	 * Retrieves the day of the year represented by datetime in the Gregorian
	 * calendar.
	 * Since 2.26
	 * Returns: the day of the year
	 */
	public int getDayOfYear()
	{
		// gint g_date_time_get_day_of_year (GDateTime *datetime);
		return g_date_time_get_day_of_year(gDateTime);
	}
	
	/**
	 * Retrieves the hour of the day represented by datetime
	 * Since 2.26
	 * Returns: the hour of the day
	 */
	public int getHour()
	{
		// gint g_date_time_get_hour (GDateTime *datetime);
		return g_date_time_get_hour(gDateTime);
	}
	
	/**
	 * Retrieves the minute of the hour represented by datetime
	 * Since 2.26
	 * Returns: the minute of the hour
	 */
	public int getMinute()
	{
		// gint g_date_time_get_minute (GDateTime *datetime);
		return g_date_time_get_minute(gDateTime);
	}
	
	/**
	 * Retrieves the second of the minute represented by datetime
	 * Since 2.26
	 * Returns: the second represented by datetime
	 */
	public int getSecond()
	{
		// gint g_date_time_get_second (GDateTime *datetime);
		return g_date_time_get_second(gDateTime);
	}
	
	/**
	 * Retrieves the microsecond of the date represented by datetime
	 * Since 2.26
	 * Returns: the microsecond of the second
	 */
	public int getMicrosecond()
	{
		// gint g_date_time_get_microsecond (GDateTime *datetime);
		return g_date_time_get_microsecond(gDateTime);
	}
	
	/**
	 * Retrieves the number of seconds since the start of the last minute,
	 * including the fractional part.
	 * Since 2.26
	 * Returns: the number of seconds
	 */
	public double getSeconds()
	{
		// gdouble g_date_time_get_seconds (GDateTime *datetime);
		return g_date_time_get_seconds(gDateTime);
	}
	
	/**
	 * Gives the Unix time corresponding to datetime, rounding down to the
	 * nearest second.
	 * Unix time is the number of seconds that have elapsed since 1970-01-01
	 * 00:00:00 UTC, regardless of the time zone associated with datetime.
	 * Since 2.26
	 * Returns: the Unix time corresponding to datetime
	 */
	public long toUnix()
	{
		// gint64 g_date_time_to_unix (GDateTime *datetime);
		return g_date_time_to_unix(gDateTime);
	}
	
	/**
	 * Stores the instant in time that datetime represents into tv.
	 * The time contained in a GTimeVal is always stored in the form of
	 * seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the time
	 * zone associated with datetime.
	 * On systems where 'long' is 32bit (ie: all 32bit systems and all
	 * Windows systems), a GTimeVal is incapable of storing the entire
	 * range of values that GDateTime is capable of expressing. On those
	 * systems, this function returns FALSE to indicate that the time is
	 * out of range.
	 * On systems where 'long' is 64bit, this function never fails.
	 * Since 2.26
	 * Params:
	 * tv = a GTimeVal to modify
	 * Returns: TRUE if successful, else FALSE
	 */
	public int toTimeval(out GTimeVal tv)
	{
		// gboolean g_date_time_to_timeval (GDateTime *datetime,  GTimeVal *tv);
		return g_date_time_to_timeval(gDateTime, &tv);
	}
	
	/**
	 * Determines the offset to UTC in effect at the time and in the time
	 * zone of datetime.
	 * The offset is the number of microseconds that you add to UTC time to
	 * arrive at local time for the time zone (ie: negative numbers for time
	 * zones west of GMT, positive numbers for east).
	 * If datetime represents UTC time, then the offset is always zero.
	 * Since 2.26
	 * Returns: the number of microseconds that should be added to UTC to get the local time
	 */
	public GTimeSpan getUtcOffset()
	{
		// GTimeSpan g_date_time_get_utc_offset (GDateTime *datetime);
		return g_date_time_get_utc_offset(gDateTime);
	}
	
	/**
	 * Determines the time zone abbreviation to be used at the time and in
	 * the time zone of datetime.
	 * For example, in Toronto this is currently "EST" during the winter
	 * months and "EDT" during the summer months when daylight savings
	 * time is in effect.
	 * Since 2.26
	 * Returns: the time zone abbreviation. The returned string is owned by the GDateTime and it should not be modified or freed. [transfer none]
	 */
	public string getTimezoneAbbreviation()
	{
		// const gchar * g_date_time_get_timezone_abbreviation  (GDateTime *datetime);
		return Str.toString(g_date_time_get_timezone_abbreviation(gDateTime));
	}
	
	/**
	 * Determines if daylight savings time is in effect at the time and in
	 * the time zone of datetime.
	 * Since 2.26
	 * Returns: TRUE if daylight savings time is in effect
	 */
	public int isDaylightSavings()
	{
		// gboolean g_date_time_is_daylight_savings (GDateTime *datetime);
		return g_date_time_is_daylight_savings(gDateTime);
	}
	
	/**
	 * Create a new GDateTime corresponding to the same instant in time as
	 * datetime, but in the time zone tz.
	 * This call can fail in the case that the time goes out of bounds. For
	 * example, converting 0001-01-01 00:00:00 UTC to a time zone west of
	 * Greenwich will fail (due to the year 0 being out of range).
	 * You should release the return value by calling g_date_time_unref()
	 * when you are done with it.
	 * Since 2.26
	 * Params:
	 * tz = the new GTimeZone
	 * Returns: a new GDateTime, or NULL
	 */
	public DateTime toTimezone(TimeZone tz)
	{
		// GDateTime * g_date_time_to_timezone (GDateTime *datetime,  GTimeZone *tz);
		auto p = g_date_time_to_timezone(gDateTime, (tz is null) ? null : tz.getTimeZoneStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a new GDateTime corresponding to the same instant in time as
	 * datetime, but in the local time zone.
	 * This call is equivalent to calling g_date_time_to_timezone() with the
	 * time zone returned by g_time_zone_new_local().
	 * Since 2.26
	 * Returns: the newly created GDateTime
	 */
	public DateTime toLocal()
	{
		// GDateTime * g_date_time_to_local (GDateTime *datetime);
		auto p = g_date_time_to_local(gDateTime);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a new GDateTime corresponding to the same instant in time as
	 * datetime, but in UTC.
	 * This call is equivalent to calling g_date_time_to_timezone() with the
	 * time zone returned by g_time_zone_new_utc().
	 * Since 2.26
	 * Returns: the newly created GDateTime
	 */
	public DateTime toUtc()
	{
		// GDateTime * g_date_time_to_utc (GDateTime *datetime);
		auto p = g_date_time_to_utc(gDateTime);
		
		if(p is null)
		{
			return null;
		}
		
		return new DateTime(cast(GDateTime*) p);
	}
	
	/**
	 * Creates a newly allocated string representing the requested format.
	 * The format strings understood by this function are a subset of the
	 * strftime() format language as specified by C99. The %D, %U and %W
	 * conversions are not supported, nor is the 'E' modifier. The GNU
	 * extensions %k, %l, %s and %P are supported, however, as are the
	 * '0', '_' and '-' modifiers.
	 * In contrast to strftime(), this function always produces a UTF-8
	 * string, regardless of the current locale. Note that the rendering of
	 * many formats is locale-dependent and may not match the strftime()
	 * output exactly.
	 * Since 2.26
	 * Params:
	 * format = a valid UTF-8 string, containing the format for the
	 * GDateTime
	 * Returns: a newly allocated string formatted to the requested format or NULL in the case that there was an error. The string should be freed with g_free().
	 */
	public string format(string format)
	{
		// gchar * g_date_time_format (GDateTime *datetime,  const gchar *format);
		return Str.toString(g_date_time_format(gDateTime, Str.toStringz(format)));
	}
}
