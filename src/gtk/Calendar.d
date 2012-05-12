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
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Calendar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.Widget;

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
public class Calendar : Widget
{
	
	/** the main Gtk struct */
	protected GtkCalendar* gtkCalendar;
	
	
	public GtkCalendar* getCalendarStruct()
	{
		return gtkCalendar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCalendar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCalendar* gtkCalendar)
	{
		if(gtkCalendar is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCalendar);
		if( ptr !is null )
		{
			this = cast(Calendar)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkCalendar);
		this.gtkCalendar = gtkCalendar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCalendar = cast(GtkCalendar*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Calendar)[] onDaySelectedListeners;
	/**
	 * Emitted when the user selects a day.
	 */
	void addOnDaySelected(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("day-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"day-selected",
			cast(GCallback)&callBackDaySelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["day-selected"] = 1;
		}
		onDaySelectedListeners ~= dlg;
	}
	extern(C) static void callBackDaySelected(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onDaySelectedListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onDaySelectedDoubleClickListeners;
	/**
	 */
	void addOnDaySelectedDoubleClick(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("day-selected-double-click" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"day-selected-double-click",
			cast(GCallback)&callBackDaySelectedDoubleClick,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["day-selected-double-click"] = 1;
		}
		onDaySelectedDoubleClickListeners ~= dlg;
	}
	extern(C) static void callBackDaySelectedDoubleClick(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onDaySelectedDoubleClickListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onMonthChangedListeners;
	/**
	 * Emitted when the user clicks a button to change the selected month on a
	 * calendar.
	 * Emitted when the user clicks a button to change the selected month on a
	 * calendar.
	 */
	void addOnMonthChanged(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("month-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"month-changed",
			cast(GCallback)&callBackMonthChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["month-changed"] = 1;
		}
		onMonthChangedListeners ~= dlg;
	}
	extern(C) static void callBackMonthChanged(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onMonthChangedListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onNextMonthListeners;
	/**
	 */
	void addOnNextMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("next-month" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"next-month",
			cast(GCallback)&callBackNextMonth,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["next-month"] = 1;
		}
		onNextMonthListeners ~= dlg;
	}
	extern(C) static void callBackNextMonth(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onNextMonthListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onNextYearListeners;
	/**
	 */
	void addOnNextYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("next-year" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"next-year",
			cast(GCallback)&callBackNextYear,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["next-year"] = 1;
		}
		onNextYearListeners ~= dlg;
	}
	extern(C) static void callBackNextYear(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onNextYearListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onPrevMonthListeners;
	/**
	 */
	void addOnPrevMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("prev-month" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"prev-month",
			cast(GCallback)&callBackPrevMonth,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["prev-month"] = 1;
		}
		onPrevMonthListeners ~= dlg;
	}
	extern(C) static void callBackPrevMonth(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onPrevMonthListeners )
		{
			dlg(calendar);
		}
	}
	
	void delegate(Calendar)[] onPrevYearListeners;
	/**
	 */
	void addOnPrevYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("prev-year" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"prev-year",
			cast(GCallback)&callBackPrevYear,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["prev-year"] = 1;
		}
		onPrevYearListeners ~= dlg;
	}
	extern(C) static void callBackPrevYear(GtkCalendar* calendarStruct, Calendar calendar)
	{
		foreach ( void delegate(Calendar) dlg ; calendar.onPrevYearListeners )
		{
			dlg(calendar);
		}
	}
	
	
	/**
	 * Creates a new calendar, with the current date being selected.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_calendar_new (void);
		auto p = gtk_calendar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_calendar_new()");
		}
		this(cast(GtkCalendar*) p);
	}
	
	/**
	 * Shifts the calendar to a different month.
	 * Note that this function always returns TRUE, and you should
	 * ignore the return value. In GTK+ 3, this function will not
	 * return a value.
	 * Params:
	 * month = a month number between 0 and 11.
	 * year = the year the month is in.
	 * Returns: TRUE, always
	 */
	public int selectMonth(uint month, uint year)
	{
		// gboolean gtk_calendar_select_month (GtkCalendar *calendar,  guint month,  guint year);
		return gtk_calendar_select_month(gtkCalendar, month, year);
	}
	
	/**
	 * Selects a day from the current month.
	 * Params:
	 * day = the day number between 1 and 31, or 0 to unselect
	 * the currently selected day.
	 */
	public void selectDay(uint day)
	{
		// void gtk_calendar_select_day (GtkCalendar *calendar,  guint day);
		gtk_calendar_select_day(gtkCalendar, day);
	}
	
	/**
	 * Places a visual marker on a particular day.
	 * Note that this function always returns TRUE, and you should
	 * ignore the return value. In GTK+ 3, this function will not
	 * return a value.
	 * Params:
	 * day = the day number to mark between 1 and 31.
	 * Returns: TRUE, always
	 */
	public int markDay(uint day)
	{
		// gboolean gtk_calendar_mark_day (GtkCalendar *calendar,  guint day);
		return gtk_calendar_mark_day(gtkCalendar, day);
	}
	
	/**
	 * Removes the visual marker from a particular day.
	 * Note that this function always returns TRUE, and you should
	 * ignore the return value. In GTK+ 3, this function will not
	 * return a value.
	 * Params:
	 * day = the day number to unmark between 1 and 31.
	 * Returns: TRUE, always
	 */
	public int unmarkDay(uint day)
	{
		// gboolean gtk_calendar_unmark_day (GtkCalendar *calendar,  guint day);
		return gtk_calendar_unmark_day(gtkCalendar, day);
	}
	
	/**
	 * Remove all visual markers.
	 */
	public void clearMarks()
	{
		// void gtk_calendar_clear_marks (GtkCalendar *calendar);
		gtk_calendar_clear_marks(gtkCalendar);
	}
	
	/**
	 * Returns the current display options of calendar.
	 * Since 2.4
	 * Returns: the display options.
	 */
	public GtkCalendarDisplayOptions getDisplayOptions()
	{
		// GtkCalendarDisplayOptions gtk_calendar_get_display_options  (GtkCalendar *calendar);
		return gtk_calendar_get_display_options(gtkCalendar);
	}
	
	/**
	 * Sets display options (whether to display the heading and the month
	 * headings).
	 * Since 2.4
	 * Params:
	 * flags = the display options to set
	 */
	public void setDisplayOptions(GtkCalendarDisplayOptions flags)
	{
		// void gtk_calendar_set_display_options (GtkCalendar *calendar,  GtkCalendarDisplayOptions flags);
		gtk_calendar_set_display_options(gtkCalendar, flags);
	}
	
	/**
	 * Obtains the selected date from a GtkCalendar.
	 * Params:
	 * year = location to store the year as a decimal
	 * number (e.g. 2011), or NULL. [out][allow-none]
	 * month = location to store the month number
	 * (between 0 and 11), or NULL. [out][allow-none]
	 * day = location to store the day number (between
	 * 1 and 31), or NULL. [out][allow-none]
	 */
	public void getDate(out uint year, out uint month, out uint day)
	{
		// void gtk_calendar_get_date (GtkCalendar *calendar,  guint *year,  guint *month,  guint *day);
		gtk_calendar_get_date(gtkCalendar, &year, &month, &day);
	}
	
	/**
	 * Installs a function which provides Pango markup with detail information
	 * for each day. Examples for such details are holidays or appointments. That
	 * information is shown below each day when "show-details" is set.
	 * A tooltip containing with full detail information is provided, if the entire
	 * text should not fit into the details area, or if "show-details"
	 * is not set.
	 * The size of the details area can be restricted by setting the
	 * "detail-width-chars" and "detail-height-rows"
	 * properties.
	 * Since 2.14
	 * Params:
	 * func = a function providing details for each day.
	 * data = data to pass to func invokations.
	 * destroy = a function for releasing data.
	 */
	public void setDetailFunc(GtkCalendarDetailFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_calendar_set_detail_func (GtkCalendar *calendar,  GtkCalendarDetailFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_calendar_set_detail_func(gtkCalendar, func, data, destroy);
	}
	
	/**
	 * Queries the width of detail cells, in characters.
	 * See "detail-width-chars".
	 * Since 2.14
	 * Returns: The width of detail cells, in characters.
	 */
	public int getDetailWidthChars()
	{
		// gint gtk_calendar_get_detail_width_chars (GtkCalendar *calendar);
		return gtk_calendar_get_detail_width_chars(gtkCalendar);
	}
	
	/**
	 * Updates the width of detail cells.
	 * See "detail-width-chars".
	 * Since 2.14
	 * Params:
	 * chars = detail width in characters.
	 */
	public void setDetailWidthChars(int chars)
	{
		// void gtk_calendar_set_detail_width_chars (GtkCalendar *calendar,  gint chars);
		gtk_calendar_set_detail_width_chars(gtkCalendar, chars);
	}
	
	/**
	 * Queries the height of detail cells, in rows.
	 * See "detail-width-chars".
	 * Since 2.14
	 * Returns: The height of detail cells, in rows.
	 */
	public int getDetailHeightRows()
	{
		// gint gtk_calendar_get_detail_height_rows (GtkCalendar *calendar);
		return gtk_calendar_get_detail_height_rows(gtkCalendar);
	}
	
	/**
	 * Updates the height of detail cells.
	 * See "detail-height-rows".
	 * Since 2.14
	 * Params:
	 * rows = detail height in rows.
	 */
	public void setDetailHeightRows(int rows)
	{
		// void gtk_calendar_set_detail_height_rows (GtkCalendar *calendar,  gint rows);
		gtk_calendar_set_detail_height_rows(gtkCalendar, rows);
	}
	
	/**
	 * Warning
	 * gtk_calendar_display_options has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_calendar_set_display_options() instead
	 * Sets display options (whether to display the heading and the month headings).
	 * Params:
	 * flags = the display options to set.
	 */
	public void displayOptions(GtkCalendarDisplayOptions flags)
	{
		// void gtk_calendar_display_options (GtkCalendar *calendar,  GtkCalendarDisplayOptions flags);
		gtk_calendar_display_options(gtkCalendar, flags);
	}
	
	/**
	 * Warning
	 * gtk_calendar_freeze has been deprecated since version 2.8 and should not be used in newly-written code.
	 * Does nothing. Previously locked the display of the calendar until
	 * it was thawed with gtk_calendar_thaw().
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
	 */
	public void thaw()
	{
		// void gtk_calendar_thaw (GtkCalendar *calendar);
		gtk_calendar_thaw(gtkCalendar);
	}
}
