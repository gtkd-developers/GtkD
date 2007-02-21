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
 * inFile  = GtkCalendar.html
 * outPack = gtk
 * outFile = Calendar
 * strct   = GtkCalendar
 * realStrct=
 * ctorStrct=
 * clss    = Calendar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_calendar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Calendar;

private import gtkc.gtktypes;

private import gtkc.gtk;




/**
 * Description
 * GtkCalendar is a widget that displays a calendar, one month at a time.
 * It can be created with gtk_calendar_new().
 * The month and year currently displayed can be altered with
 * gtk_calendar_select_month(). The exact day can be selected from the displayed
 * month using gtk_calendar_select_day().
 * To place a visual marker on a particular day, use gtk_calendar_mark_day()
 * and to remove the marker, gtk_calendar_unmark_day().
 * Alternative, all marks can be cleared with gtk_calendar_clear_marks().
 * The way in which the calendar itself is displayed can be altered using
 * gtk_calendar_set_display_options().
 * The selected date can be retrieved from a GtkCalendar using
 * gtk_calendar_get_date().
 */
private import gtk.Widget;
public class Calendar : Widget
{
	
	/** the main Gtk struct */
	protected GtkCalendar* gtkCalendar;
	
	
	public GtkCalendar* getCalendarStruct()
	{
		return gtkCalendar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCalendar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCalendar* gtkCalendar)
	{
		super(cast(GtkWidget*)gtkCalendar);
		this.gtkCalendar = gtkCalendar;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Calendar)[] onDaySelectedListeners;
	void addOnDaySelected(void delegate(Calendar) dlg)
	{
		if ( !("day-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"day-selected",
			cast(GCallback)&callBackDaySelected,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["day-selected"] = 1;
		}
		onDaySelectedListeners ~= dlg;
	}
	extern(C) static void callBackDaySelected(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onDaySelectedListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onDaySelectedDoubleClickListeners;
	void addOnDaySelectedDoubleClick(void delegate(Calendar) dlg)
	{
		if ( !("day-selected-double-click" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"day-selected-double-click",
			cast(GCallback)&callBackDaySelectedDoubleClick,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["day-selected-double-click"] = 1;
		}
		onDaySelectedDoubleClickListeners ~= dlg;
	}
	extern(C) static void callBackDaySelectedDoubleClick(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onDaySelectedDoubleClickListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onMonthChangedListeners;
	void addOnMonthChanged(void delegate(Calendar) dlg)
	{
		if ( !("month-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"month-changed",
			cast(GCallback)&callBackMonthChanged,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["month-changed"] = 1;
		}
		onMonthChangedListeners ~= dlg;
	}
	extern(C) static void callBackMonthChanged(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onMonthChangedListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onNextMonthListeners;
	void addOnNextMonth(void delegate(Calendar) dlg)
	{
		if ( !("next-month" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"next-month",
			cast(GCallback)&callBackNextMonth,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["next-month"] = 1;
		}
		onNextMonthListeners ~= dlg;
	}
	extern(C) static void callBackNextMonth(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onNextMonthListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onNextYearListeners;
	void addOnNextYear(void delegate(Calendar) dlg)
	{
		if ( !("next-year" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"next-year",
			cast(GCallback)&callBackNextYear,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["next-year"] = 1;
		}
		onNextYearListeners ~= dlg;
	}
	extern(C) static void callBackNextYear(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onNextYearListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onPrevMonthListeners;
	void addOnPrevMonth(void delegate(Calendar) dlg)
	{
		if ( !("prev-month" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"prev-month",
			cast(GCallback)&callBackPrevMonth,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["prev-month"] = 1;
		}
		onPrevMonthListeners ~= dlg;
	}
	extern(C) static void callBackPrevMonth(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onPrevMonthListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	void delegate(Calendar)[] onPrevYearListeners;
	void addOnPrevYear(void delegate(Calendar) dlg)
	{
		if ( !("prev-year" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"prev-year",
			cast(GCallback)&callBackPrevYear,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["prev-year"] = 1;
		}
		onPrevYearListeners ~= dlg;
	}
	extern(C) static void callBackPrevYear(GtkCalendar* calendarStruct, Calendar calendar)
	{
		bit consumed = false;
		
		foreach ( void delegate(Calendar) dlg ; calendar.onPrevYearListeners )
		{
			dlg(calendar);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new calendar, with the current date being selected.
	 * Returns:
	 *  a newly GtkCalendar widget
	 */
	public this ()
	{
		// GtkWidget* gtk_calendar_new (void);
		this(cast(GtkCalendar*)gtk_calendar_new() );
	}
	
	/**
	 * Shifts the calendar to a different month.
	 * calendar:
	 *  a GtkCalendar
	 * month:
	 *  a month number between 0 and 11.
	 * year:
	 *  the year the month is in.
	 * Returns:
	 *  TRUE, always
	 */
	public int selectMonth(uint month, uint year)
	{
		// gboolean gtk_calendar_select_month (GtkCalendar *calendar,  guint month,  guint year);
		return gtk_calendar_select_month(gtkCalendar, month, year);
	}
	
	/**
	 * Selects a day from the current month.
	 * calendar:
	 *  a GtkCalendar.
	 * day:
	 *  the day number between 1 and 31, or 0 to unselect
	 *  the currently selected day.
	 */
	public void selectDay(uint day)
	{
		// void gtk_calendar_select_day (GtkCalendar *calendar,  guint day);
		gtk_calendar_select_day(gtkCalendar, day);
	}
	
	/**
	 * Places a visual marker on a particular day.
	 * calendar:
	 *  a GtkCalendar
	 * day:
	 *  the day number to mark between 1 and 31.
	 * Returns:
	 *  TRUE, always
	 */
	public int markDay(uint day)
	{
		// gboolean gtk_calendar_mark_day (GtkCalendar *calendar,  guint day);
		return gtk_calendar_mark_day(gtkCalendar, day);
	}
	
	/**
	 * Removes the visual marker from a particular day.
	 * calendar:
	 *  a GtkCalendar.
	 * day:
	 *  the day number to unmark between 1 and 31.
	 * Returns:
	 *  TRUE, always
	 */
	public int unmarkDay(uint day)
	{
		// gboolean gtk_calendar_unmark_day (GtkCalendar *calendar,  guint day);
		return gtk_calendar_unmark_day(gtkCalendar, day);
	}
	
	/**
	 * Remove all visual markers.
	 * calendar:
	 *  a GtkCalendar
	 */
	public void clearMarks()
	{
		// void gtk_calendar_clear_marks (GtkCalendar *calendar);
		gtk_calendar_clear_marks(gtkCalendar);
	}
	
	/**
	 * Returns the current display options of calendar.
	 * calendar:
	 *  a GtkCalendar
	 * Returns:
	 *  the display options.
	 * Since 2.4
	 */
	public GtkCalendarDisplayOptions getDisplayOptions()
	{
		// GtkCalendarDisplayOptions gtk_calendar_get_display_options  (GtkCalendar *calendar);
		return gtk_calendar_get_display_options(gtkCalendar);
	}
	
	/**
	 * Sets display options (whether to display the heading and the month
	 * headings).
	 * calendar:
	 *  a GtkCalendar
	 * flags:
	 *  the display options to set
	 * Since 2.4
	 */
	public void setDisplayOptions(GtkCalendarDisplayOptions flags)
	{
		// void gtk_calendar_set_display_options (GtkCalendar *calendar,  GtkCalendarDisplayOptions flags);
		gtk_calendar_set_display_options(gtkCalendar, flags);
	}
	
	/**
	 * Warning
	 * gtk_calendar_display_options is deprecated and should not be used in newly-written code.
	 * Sets display options (whether to display the heading and the month headings).
	 * calendar:
	 *  a GtkCalendar.
	 * flags:
	 *  the display options to set.
	 */
	public void displayOptions(GtkCalendarDisplayOptions flags)
	{
		// void gtk_calendar_display_options (GtkCalendar *calendar,  GtkCalendarDisplayOptions flags);
		gtk_calendar_display_options(gtkCalendar, flags);
	}
	
	/**
	 * Obtains the selected date from a GtkCalendar.
	 * calendar:
	 *  a GtkCalendar
	 * year:
	 *  location to store the year number, or NULL
	 * month:
	 *  location to store the month number (between 0 and 11), or NULL
	 * day:
	 *  location to store the day number (between 1 and 31), or NULL
	 */
	public void getDate(uint* year, uint* month, uint* day)
	{
		// void gtk_calendar_get_date (GtkCalendar *calendar,  guint *year,  guint *month,  guint *day);
		gtk_calendar_get_date(gtkCalendar, year, month, day);
	}
	
	/**
	 * Warning
	 * gtk_calendar_freeze has been deprecated since version 2.8 and should not be used in newly-written code.
	 * Does nothing. Previously locked the display of the calendar until
	 * it was thawed with gtk_calendar_thaw().
	 * calendar:
	 *  a GtkCalendar
	 */
	public void freeze()
	{
		// void gtk_calendar_freeze (GtkCalendar *calendar);
		gtk_calendar_freeze(gtkCalendar);
	}
	
	/**
	 * Warning
	 * gtk_calendar_thaw has been deprecated since version 2.8 and should not be used in newly-written code.
	 * Does nothing. Previously defrosted a calendar; all the changes made
	 * since the last gtk_calendar_freeze() were displayed.
	 * calendar:
	 *  a GtkCalendar
	 * Property Details
	 * The "day" property
	 *  "day" gint : Read / Write
	 * The selected day (as a number between 1 and 31, or 0 to unselect the currently selected day).
	 * Allowed values: [0,31]
	 * Default value: 0
	 */
	public void thaw()
	{
		// void gtk_calendar_thaw (GtkCalendar *calendar);
		gtk_calendar_thaw(gtkCalendar);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
