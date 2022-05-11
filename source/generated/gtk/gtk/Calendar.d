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


module gtk.Calendar;

private import glib.ConstructionException;
private import glib.DateTime;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkCalendar` is a widget that displays a Gregorian calendar, one month
 * at a time.
 * 
 * ![An example GtkCalendar](calendar.png)
 * 
 * A `GtkCalendar` can be created with [ctor@Gtk.Calendar.new].
 * 
 * The date that is currently displayed can be altered with
 * [method@Gtk.Calendar.select_day].
 * 
 * To place a visual marker on a particular day, use
 * [method@Gtk.Calendar.mark_day] and to remove the marker,
 * [method@Gtk.Calendar.unmark_day]. Alternative, all
 * marks can be cleared with [method@Gtk.Calendar.clear_marks].
 * 
 * The selected date can be retrieved from a `GtkCalendar` using
 * [method@Gtk.Calendar.get_date].
 * 
 * Users should be aware that, although the Gregorian calendar is the
 * legal calendar in most countries, it was adopted progressively
 * between 1582 and 1929. Display before these dates is likely to be
 * historically incorrect.
 * 
 * # CSS nodes
 * 
 * ```
 * calendar.view
 * ├── header
 * │   ├── button
 * │   ├── stack.month
 * │   ├── button
 * │   ├── button
 * │   ├── label.year
 * │   ╰── button
 * ╰── grid
 * ╰── label[.day-name][.week-number][.day-number][.other-month][.today]
 * ```
 * 
 * `GtkCalendar` has a main node with name calendar. It contains a subnode
 * called header containing the widgets for switching between years and months.
 * 
 * The grid subnode contains all day labels, including week numbers on the left
 * (marked with the .week-number css class) and day names on top (marked with the
 * .day-name css class).
 * 
 * Day labels that belong to the previous or next month get the .other-month
 * style class. The label of the current day get the .today style class.
 * 
 * Marked day labels get the :selected state assigned.
 */
public class Calendar : Widget
{
	/** the main Gtk struct */
	protected GtkCalendar* gtkCalendar;

	/** Get the main Gtk struct */
	public GtkCalendar* getCalendarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCalendar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCalendar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCalendar* gtkCalendar, bool ownedRef = false)
	{
		this.gtkCalendar = gtkCalendar;
		super(cast(GtkWidget*)gtkCalendar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_calendar_get_type();
	}

	/**
	 * Creates a new calendar, with the current date being selected.
	 *
	 * Returns: a newly `GtkCalendar` widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_calendar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCalendar*) __p);
	}

	/**
	 * Remove all visual markers.
	 */
	public void clearMarks()
	{
		gtk_calendar_clear_marks(gtkCalendar);
	}

	/**
	 * Returns a `GDateTime` representing the shown
	 * year, month and the selected day.
	 *
	 * The returned date is in the local time zone.
	 *
	 * Returns: the `GDate` representing the shown date
	 */
	public DateTime getDate()
	{
		auto __p = gtk_calendar_get_date(gtkCalendar);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Returns if the @day of the @calendar is already marked.
	 *
	 * Params:
	 *     day = the day number between 1 and 31.
	 *
	 * Returns: whether the day is marked.
	 */
	public bool getDayIsMarked(uint day)
	{
		return gtk_calendar_get_day_is_marked(gtkCalendar, day) != 0;
	}

	/**
	 * Returns whether @self is currently showing the names
	 * of the week days.
	 *
	 * This is the value of the [property@Gtk.Calendar:show-day-names]
	 * property.
	 *
	 * Returns: Whether the calendar shows day names.
	 */
	public bool getShowDayNames()
	{
		return gtk_calendar_get_show_day_names(gtkCalendar) != 0;
	}

	/**
	 * Returns whether @self is currently showing the heading.
	 *
	 * This is the value of the [property@Gtk.Calendar:show-heading]
	 * property.
	 *
	 * Returns: Whether the calendar is showing a heading.
	 */
	public bool getShowHeading()
	{
		return gtk_calendar_get_show_heading(gtkCalendar) != 0;
	}

	/**
	 * Returns whether @self is showing week numbers right
	 * now.
	 *
	 * This is the value of the [property@Gtk.Calendar:show-week-numbers]
	 * property.
	 *
	 * Returns: Whether the calendar is showing week numbers.
	 */
	public bool getShowWeekNumbers()
	{
		return gtk_calendar_get_show_week_numbers(gtkCalendar) != 0;
	}

	/**
	 * Places a visual marker on a particular day.
	 *
	 * Params:
	 *     day = the day number to mark between 1 and 31.
	 */
	public void markDay(uint day)
	{
		gtk_calendar_mark_day(gtkCalendar, day);
	}

	/**
	 * Switches to @date's year and month and select its day.
	 *
	 * Params:
	 *     date = a `GDateTime` representing the day to select
	 */
	public void selectDay(DateTime date)
	{
		gtk_calendar_select_day(gtkCalendar, (date is null) ? null : date.getDateTimeStruct());
	}

	/**
	 * Sets whether the calendar shows day names.
	 *
	 * Params:
	 *     value = Whether to show day names above the day numbers
	 */
	public void setShowDayNames(bool value)
	{
		gtk_calendar_set_show_day_names(gtkCalendar, value);
	}

	/**
	 * Sets whether the calendar should show a heading.
	 *
	 * The heading contains the current year and month as well as
	 * buttons for changing both.
	 *
	 * Params:
	 *     value = Whether to show the heading in the calendar
	 */
	public void setShowHeading(bool value)
	{
		gtk_calendar_set_show_heading(gtkCalendar, value);
	}

	/**
	 * Sets whether week numbers are shown in the calendar.
	 *
	 * Params:
	 *     value = whether to show week numbers on the left of the days
	 */
	public void setShowWeekNumbers(bool value)
	{
		gtk_calendar_set_show_week_numbers(gtkCalendar, value);
	}

	/**
	 * Removes the visual marker from a particular day.
	 *
	 * Params:
	 *     day = the day number to unmark between 1 and 31.
	 */
	public void unmarkDay(uint day)
	{
		gtk_calendar_unmark_day(gtkCalendar, day);
	}

	/**
	 * Emitted when the user selects a day.
	 */
	gulong addOnDaySelected(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "day-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user switched to the next month.
	 */
	gulong addOnNextMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "next-month", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when user switched to the next year.
	 */
	gulong addOnNextYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "next-year", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user switched to the previous month.
	 */
	gulong addOnPrevMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prev-month", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when user switched to the previous year.
	 */
	gulong addOnPrevYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prev-year", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
