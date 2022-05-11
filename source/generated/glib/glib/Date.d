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


module glib.Date;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.TimeVal;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * Represents a day between January 1, Year 1 and a few thousand years in
 * the future. None of its members should be accessed directly.
 * 
 * If the `GDate` is obtained from g_date_new(), it will be safe
 * to mutate but invalid and thus not safe for calendrical computations.
 * 
 * If it's declared on the stack, it will contain garbage so must be
 * initialized with g_date_clear(). g_date_clear() makes the date invalid
 * but safe. An invalid date doesn't represent a day, it's "empty." A date
 * becomes valid after you set it to a Julian day or you set a day, month,
 * and year.
 */
public final class Date
{
	/** the main Gtk struct */
	protected GDate* gDate;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDate* getDateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDate;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDate* gDate, bool ownedRef = false)
	{
		this.gDate = gDate;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_date_free(gDate);
	}


	/**
	 * the Julian representation of the date
	 */
	public @property uint julianDays()
	{
		return gDate.julianDays;
	}

	/** Ditto */
	public @property void julianDays(uint value)
	{
		gDate.julianDays = value;
	}

	/**
	 * this bit is set if @julian_days is valid
	 */
	public @property uint julian()
	{
		return gDate.julian;
	}

	/** Ditto */
	public @property void julian(uint value)
	{
		gDate.julian = value;
	}

	/**
	 * this is set if @day, @month and @year are valid
	 */
	public @property uint dmy()
	{
		return gDate.dmy;
	}

	/** Ditto */
	public @property void dmy(uint value)
	{
		gDate.dmy = value;
	}

	/**
	 * the day of the day-month-year representation of the date,
	 * as a number between 1 and 31
	 */
	public @property uint day()
	{
		return gDate.day;
	}

	/** Ditto */
	public @property void day(uint value)
	{
		gDate.day = value;
	}

	/**
	 * the day of the day-month-year representation of the date,
	 * as a number between 1 and 12
	 */
	public @property uint month()
	{
		return gDate.month;
	}

	/** Ditto */
	public @property void month(uint value)
	{
		gDate.month = value;
	}

	/**
	 * the day of the day-month-year representation of the date
	 */
	public @property uint year()
	{
		return gDate.year;
	}

	/** Ditto */
	public @property void year(uint value)
	{
		gDate.year = value;
	}

	/**
	 * Allocates a #GDate and initializes
	 * it to a safe state. The new date will
	 * be cleared (as if you'd called g_date_clear()) but invalid (it won't
	 * represent an existing day). Free the return value with g_date_free().
	 *
	 * Returns: a newly-allocated #GDate
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_date_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDate*) __p);
	}

	/**
	 * Create a new #GDate representing the given day-month-year triplet.
	 *
	 * The triplet you pass in must represent a valid date. Use g_date_valid_dmy()
	 * if needed to validate it. The returned #GDate is guaranteed to be non-%NULL
	 * and valid.
	 *
	 * Params:
	 *     day = day of the month
	 *     month = month of the year
	 *     year = year
	 *
	 * Returns: a newly-allocated #GDate
	 *     initialized with @day, @month, and @year
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GDateDay day, GDateMonth month, GDateYear year)
	{
		auto __p = g_date_new_dmy(day, month, year);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_dmy");
		}

		this(cast(GDate*) __p);
	}

	/**
	 * Create a new #GDate representing the given Julian date.
	 *
	 * The @julian_day you pass in must be valid. Use g_date_valid_julian() if
	 * needed to validate it. The returned #GDate is guaranteed to be non-%NULL and
	 * valid.
	 *
	 * Params:
	 *     julianDay = days since January 1, Year 1
	 *
	 * Returns: a newly-allocated #GDate initialized
	 *     with @julian_day
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint julianDay)
	{
		auto __p = g_date_new_julian(julianDay);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_julian");
		}

		this(cast(GDate*) __p);
	}

	/**
	 * Increments a date some number of days.
	 * To move forward by weeks, add weeks*7 days.
	 * The date must be valid.
	 *
	 * Params:
	 *     nDays = number of days to move the date forward
	 */
	public void addDays(uint nDays)
	{
		g_date_add_days(gDate, nDays);
	}

	/**
	 * Increments a date by some number of months.
	 * If the day of the month is greater than 28,
	 * this routine may change the day of the month
	 * (because the destination month may not have
	 * the current day in it). The date must be valid.
	 *
	 * Params:
	 *     nMonths = number of months to move forward
	 */
	public void addMonths(uint nMonths)
	{
		g_date_add_months(gDate, nMonths);
	}

	/**
	 * Increments a date by some number of years.
	 * If the date is February 29, and the destination
	 * year is not a leap year, the date will be changed
	 * to February 28. The date must be valid.
	 *
	 * Params:
	 *     nYears = number of years to move forward
	 */
	public void addYears(uint nYears)
	{
		g_date_add_years(gDate, nYears);
	}

	/**
	 * If @date is prior to @min_date, sets @date equal to @min_date.
	 * If @date falls after @max_date, sets @date equal to @max_date.
	 * Otherwise, @date is unchanged.
	 * Either of @min_date and @max_date may be %NULL.
	 * All non-%NULL dates must be valid.
	 *
	 * Params:
	 *     minDate = minimum accepted value for @date
	 *     maxDate = maximum accepted value for @date
	 */
	public void clamp(Date minDate, Date maxDate)
	{
		g_date_clamp(gDate, (minDate is null) ? null : minDate.getDateStruct(), (maxDate is null) ? null : maxDate.getDateStruct());
	}

	/**
	 * Initializes one or more #GDate structs to a safe but invalid
	 * state. The cleared dates will not represent an existing date, but will
	 * not contain garbage. Useful to init a date declared on the stack.
	 * Validity can be tested with g_date_valid().
	 *
	 * Params:
	 *     nDates = number of dates to clear
	 */
	public void clear(uint nDates)
	{
		g_date_clear(gDate, nDates);
	}

	/**
	 * qsort()-style comparison function for dates.
	 * Both dates must be valid.
	 *
	 * Params:
	 *     rhs = second date to compare
	 *
	 * Returns: 0 for equal, less than zero if @lhs is less than @rhs,
	 *     greater than zero if @lhs is greater than @rhs
	 */
	public int compare(Date rhs)
	{
		return g_date_compare(gDate, (rhs is null) ? null : rhs.getDateStruct());
	}

	/**
	 * Copies a GDate to a newly-allocated GDate. If the input was invalid
	 * (as determined by g_date_valid()), the invalid state will be copied
	 * as is into the new object.
	 *
	 * Returns: a newly-allocated #GDate initialized from @date
	 *
	 * Since: 2.56
	 */
	public Date copy()
	{
		auto __p = g_date_copy(gDate);

		if(__p is null)
		{
			return null;
		}

		return new Date(cast(GDate*) __p, true);
	}

	/**
	 * Computes the number of days between two dates.
	 * If @date2 is prior to @date1, the returned value is negative.
	 * Both dates must be valid.
	 *
	 * Params:
	 *     date2 = the second date
	 *
	 * Returns: the number of days between @date1 and @date2
	 */
	public int daysBetween(Date date2)
	{
		return g_date_days_between(gDate, (date2 is null) ? null : date2.getDateStruct());
	}

	/**
	 * Frees a #GDate returned from g_date_new().
	 */
	public void free()
	{
		g_date_free(gDate);
		ownedRef = false;
	}

	/**
	 * Returns the day of the month. The date must be valid.
	 *
	 * Returns: day of the month
	 */
	public GDateDay getDay()
	{
		return g_date_get_day(gDate);
	}

	/**
	 * Returns the day of the year, where Jan 1 is the first day of the
	 * year. The date must be valid.
	 *
	 * Returns: day of the year
	 */
	public uint getDayOfYear()
	{
		return g_date_get_day_of_year(gDate);
	}

	/**
	 * Returns the week of the year, where weeks are interpreted according
	 * to ISO 8601.
	 *
	 * Returns: ISO 8601 week number of the year.
	 *
	 * Since: 2.6
	 */
	public uint getIso8601WeekOfYear()
	{
		return g_date_get_iso8601_week_of_year(gDate);
	}

	/**
	 * Returns the Julian day or "serial number" of the #GDate. The
	 * Julian day is simply the number of days since January 1, Year 1; i.e.,
	 * January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
	 * etc. The date must be valid.
	 *
	 * Returns: Julian day
	 */
	public uint getJulian()
	{
		return g_date_get_julian(gDate);
	}

	/**
	 * Returns the week of the year, where weeks are understood to start on
	 * Monday. If the date is before the first Monday of the year, return 0.
	 * The date must be valid.
	 *
	 * Returns: week of the year
	 */
	public uint getMondayWeekOfYear()
	{
		return g_date_get_monday_week_of_year(gDate);
	}

	/**
	 * Returns the month of the year. The date must be valid.
	 *
	 * Returns: month of the year as a #GDateMonth
	 */
	public GDateMonth getMonth()
	{
		return g_date_get_month(gDate);
	}

	/**
	 * Returns the week of the year during which this date falls, if
	 * weeks are understood to begin on Sunday. The date must be valid.
	 * Can return 0 if the day is before the first Sunday of the year.
	 *
	 * Returns: week number
	 */
	public uint getSundayWeekOfYear()
	{
		return g_date_get_sunday_week_of_year(gDate);
	}

	/**
	 * Returns the day of the week for a #GDate. The date must be valid.
	 *
	 * Returns: day of the week as a #GDateWeekday.
	 */
	public GDateWeekday getWeekday()
	{
		return g_date_get_weekday(gDate);
	}

	/**
	 * Returns the year of a #GDate. The date must be valid.
	 *
	 * Returns: year in which the date falls
	 */
	public GDateYear getYear()
	{
		return g_date_get_year(gDate);
	}

	/**
	 * Returns %TRUE if the date is on the first of a month.
	 * The date must be valid.
	 *
	 * Returns: %TRUE if the date is the first of the month
	 */
	public bool isFirstOfMonth()
	{
		return g_date_is_first_of_month(gDate) != 0;
	}

	/**
	 * Returns %TRUE if the date is the last day of the month.
	 * The date must be valid.
	 *
	 * Returns: %TRUE if the date is the last day of the month
	 */
	public bool isLastOfMonth()
	{
		return g_date_is_last_of_month(gDate) != 0;
	}

	/**
	 * Checks if @date1 is less than or equal to @date2,
	 * and swap the values if this is not the case.
	 *
	 * Params:
	 *     date2 = the second date
	 */
	public void order(Date date2)
	{
		g_date_order(gDate, (date2 is null) ? null : date2.getDateStruct());
	}

	/**
	 * Sets the day of the month for a #GDate. If the resulting
	 * day-month-year triplet is invalid, the date will be invalid.
	 *
	 * Params:
	 *     day = day to set
	 */
	public void setDay(GDateDay day)
	{
		g_date_set_day(gDate, day);
	}

	/**
	 * Sets the value of a #GDate from a day, month, and year.
	 * The day-month-year triplet must be valid; if you aren't
	 * sure it is, call g_date_valid_dmy() to check before you
	 * set it.
	 *
	 * Params:
	 *     day = day
	 *     month = month
	 *     y = year
	 */
	public void setDmy(GDateDay day, GDateMonth month, GDateYear y)
	{
		g_date_set_dmy(gDate, day, month, y);
	}

	/**
	 * Sets the value of a #GDate from a Julian day number.
	 *
	 * Params:
	 *     julianDate = Julian day number (days since January 1, Year 1)
	 */
	public void setJulian(uint julianDate)
	{
		g_date_set_julian(gDate, julianDate);
	}

	/**
	 * Sets the month of the year for a #GDate.  If the resulting
	 * day-month-year triplet is invalid, the date will be invalid.
	 *
	 * Params:
	 *     month = month to set
	 */
	public void setMonth(GDateMonth month)
	{
		g_date_set_month(gDate, month);
	}

	/**
	 * Parses a user-inputted string @str, and try to figure out what date it
	 * represents, taking the [current locale][setlocale] into account. If the
	 * string is successfully parsed, the date will be valid after the call.
	 * Otherwise, it will be invalid. You should check using g_date_valid()
	 * to see whether the parsing succeeded.
	 *
	 * This function is not appropriate for file formats and the like; it
	 * isn't very precise, and its exact behavior varies with the locale.
	 * It's intended to be a heuristic routine that guesses what the user
	 * means by a given string (and it does work pretty well in that
	 * capacity).
	 *
	 * Params:
	 *     str = string to parse
	 */
	public void setParse(string str)
	{
		g_date_set_parse(gDate, Str.toStringz(str));
	}

	/**
	 * Sets the value of a date from a #GTime value.
	 * The time to date conversion is done using the user's current timezone.
	 *
	 * Deprecated: Use g_date_set_time_t() instead.
	 *
	 * Params:
	 *     time = #GTime value to set.
	 */
	public void setTime(GTime time)
	{
		g_date_set_time(gDate, time);
	}

	/**
	 * Sets the value of a date to the date corresponding to a time
	 * specified as a time_t. The time to date conversion is done using
	 * the user's current timezone.
	 *
	 * To set the value of a date to the current day, you could write:
	 * |[<!-- language="C" -->
	 * time_t now = time (NULL);
	 * if (now == (time_t) -1)
	 * // handle the error
	 * g_date_set_time_t (date, now);
	 * ]|
	 *
	 * Params:
	 *     timet = time_t value to set
	 *
	 * Since: 2.10
	 */
	public void set_time_t(uint timet)
	{
		g_date_set_time_t(gDate, timet);
	}

	/**
	 * Sets the value of a date from a #GTimeVal value.  Note that the
	 * @tv_usec member is ignored, because #GDate can't make use of the
	 * additional precision.
	 *
	 * The time to date conversion is done using the user's current timezone.
	 *
	 * Deprecated: #GTimeVal is not year-2038-safe. Use g_date_set_time_t()
	 * instead.
	 *
	 * Params:
	 *     timeval = #GTimeVal value to set
	 *
	 * Since: 2.10
	 */
	public void setTimeVal(TimeVal timeval)
	{
		g_date_set_time_val(gDate, (timeval is null) ? null : timeval.getTimeValStruct());
	}

	/**
	 * Sets the year for a #GDate. If the resulting day-month-year
	 * triplet is invalid, the date will be invalid.
	 *
	 * Params:
	 *     year = year to set
	 */
	public void setYear(GDateYear year)
	{
		g_date_set_year(gDate, year);
	}

	/**
	 * Moves a date some number of days into the past.
	 * To move by weeks, just move by weeks*7 days.
	 * The date must be valid.
	 *
	 * Params:
	 *     nDays = number of days to move
	 */
	public void subtractDays(uint nDays)
	{
		g_date_subtract_days(gDate, nDays);
	}

	/**
	 * Moves a date some number of months into the past.
	 * If the current day of the month doesn't exist in
	 * the destination month, the day of the month
	 * may change. The date must be valid.
	 *
	 * Params:
	 *     nMonths = number of months to move
	 */
	public void subtractMonths(uint nMonths)
	{
		g_date_subtract_months(gDate, nMonths);
	}

	/**
	 * Moves a date some number of years into the past.
	 * If the current day doesn't exist in the destination
	 * year (i.e. it's February 29 and you move to a non-leap-year)
	 * then the day is changed to February 29. The date
	 * must be valid.
	 *
	 * Params:
	 *     nYears = number of years to move
	 */
	public void subtractYears(uint nYears)
	{
		g_date_subtract_years(gDate, nYears);
	}

	/**
	 * Fills in the date-related bits of a struct tm using the @date value.
	 * Initializes the non-date parts with something safe but meaningless.
	 *
	 * Params:
	 *     tm = struct tm to fill
	 */
	public void toStructTm(void* tm)
	{
		g_date_to_struct_tm(gDate, tm);
	}

	/**
	 * Returns %TRUE if the #GDate represents an existing day. The date must not
	 * contain garbage; it should have been initialized with g_date_clear()
	 * if it wasn't allocated by one of the g_date_new() variants.
	 *
	 * Returns: Whether the date is valid
	 */
	public bool valid()
	{
		return g_date_valid(gDate) != 0;
	}

	/**
	 * Returns the number of days in a month, taking leap
	 * years into account.
	 *
	 * Params:
	 *     month = month
	 *     year = year
	 *
	 * Returns: number of days in @month during the @year
	 */
	public static ubyte getDaysInMonth(GDateMonth month, GDateYear year)
	{
		return g_date_get_days_in_month(month, year);
	}

	/**
	 * Returns the number of weeks in the year, where weeks
	 * are taken to start on Monday. Will be 52 or 53. The
	 * date must be valid. (Years always have 52 7-day periods,
	 * plus 1 or 2 extra days depending on whether it's a leap
	 * year. This function is basically telling you how many
	 * Mondays are in the year, i.e. there are 53 Mondays if
	 * one of the extra days happens to be a Monday.)
	 *
	 * Params:
	 *     year = a year
	 *
	 * Returns: number of Mondays in the year
	 */
	public static ubyte getMondayWeeksInYear(GDateYear year)
	{
		return g_date_get_monday_weeks_in_year(year);
	}

	/**
	 * Returns the number of weeks in the year, where weeks
	 * are taken to start on Sunday. Will be 52 or 53. The
	 * date must be valid. (Years always have 52 7-day periods,
	 * plus 1 or 2 extra days depending on whether it's a leap
	 * year. This function is basically telling you how many
	 * Sundays are in the year, i.e. there are 53 Sundays if
	 * one of the extra days happens to be a Sunday.)
	 *
	 * Params:
	 *     year = year to count weeks in
	 *
	 * Returns: the number of weeks in @year
	 */
	public static ubyte getSundayWeeksInYear(GDateYear year)
	{
		return g_date_get_sunday_weeks_in_year(year);
	}

	/**
	 * Returns %TRUE if the year is a leap year.
	 *
	 * For the purposes of this function, leap year is every year
	 * divisible by 4 unless that year is divisible by 100. If it
	 * is divisible by 100 it would be a leap year only if that year
	 * is also divisible by 400.
	 *
	 * Params:
	 *     year = year to check
	 *
	 * Returns: %TRUE if the year is a leap year
	 */
	public static bool isLeapYear(GDateYear year)
	{
		return g_date_is_leap_year(year) != 0;
	}

	/**
	 * Generates a printed representation of the date, in a
	 * [locale][setlocale]-specific way.
	 * Works just like the platform's C library strftime() function,
	 * but only accepts date-related formats; time-related formats
	 * give undefined results. Date must be valid. Unlike strftime()
	 * (which uses the locale encoding), works on a UTF-8 format
	 * string and stores a UTF-8 result.
	 *
	 * This function does not provide any conversion specifiers in
	 * addition to those implemented by the platform's C library.
	 * For example, don't expect that using g_date_strftime() would
	 * make the \%F provided by the C99 strftime() work on Windows
	 * where the C library only complies to C89.
	 *
	 * Params:
	 *     s = destination buffer
	 *     slen = buffer size
	 *     format = format string
	 *     date = valid #GDate
	 *
	 * Returns: number of characters written to the buffer, or 0 the buffer was too small
	 */
	public static size_t strftime(string s, size_t slen, string format, Date date)
	{
		return g_date_strftime(Str.toStringz(s), slen, Str.toStringz(format), (date is null) ? null : date.getDateStruct());
	}

	/**
	 * Returns %TRUE if the day of the month is valid (a day is valid if it's
	 * between 1 and 31 inclusive).
	 *
	 * Params:
	 *     day = day to check
	 *
	 * Returns: %TRUE if the day is valid
	 */
	public static bool validDay(GDateDay day)
	{
		return g_date_valid_day(day) != 0;
	}

	/**
	 * Returns %TRUE if the day-month-year triplet forms a valid, existing day
	 * in the range of days #GDate understands (Year 1 or later, no more than
	 * a few thousand years in the future).
	 *
	 * Params:
	 *     day = day
	 *     month = month
	 *     year = year
	 *
	 * Returns: %TRUE if the date is a valid one
	 */
	public static bool validDmy(GDateDay day, GDateMonth month, GDateYear year)
	{
		return g_date_valid_dmy(day, month, year) != 0;
	}

	/**
	 * Returns %TRUE if the Julian day is valid. Anything greater than zero
	 * is basically a valid Julian, though there is a 32-bit limit.
	 *
	 * Params:
	 *     julianDate = Julian day to check
	 *
	 * Returns: %TRUE if the Julian day is valid
	 */
	public static bool validJulian(uint julianDate)
	{
		return g_date_valid_julian(julianDate) != 0;
	}

	/**
	 * Returns %TRUE if the month value is valid. The 12 #GDateMonth
	 * enumeration values are the only valid months.
	 *
	 * Params:
	 *     month = month
	 *
	 * Returns: %TRUE if the month is valid
	 */
	public static bool validMonth(GDateMonth month)
	{
		return g_date_valid_month(month) != 0;
	}

	/**
	 * Returns %TRUE if the weekday is valid. The seven #GDateWeekday enumeration
	 * values are the only valid weekdays.
	 *
	 * Params:
	 *     weekday = weekday
	 *
	 * Returns: %TRUE if the weekday is valid
	 */
	public static bool validWeekday(GDateWeekday weekday)
	{
		return g_date_valid_weekday(weekday) != 0;
	}

	/**
	 * Returns %TRUE if the year is valid. Any year greater than 0 is valid,
	 * though there is a 16-bit limit to what #GDate will understand.
	 *
	 * Params:
	 *     year = year
	 *
	 * Returns: %TRUE if the year is valid
	 */
	public static bool validYear(GDateYear year)
	{
		return g_date_valid_year(year) != 0;
	}
}
