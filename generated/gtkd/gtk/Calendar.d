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
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkCalendar is a widget that displays a Gregorian calendar, one month
 * at a time. It can be created with gtk_calendar_new().
 * 
 * The month and year currently displayed can be altered with
 * gtk_calendar_select_month(). The exact day can be selected from the
 * displayed month using gtk_calendar_select_day().
 * 
 * To place a visual marker on a particular day, use gtk_calendar_mark_day()
 * and to remove the marker, gtk_calendar_unmark_day(). Alternative, all
 * marks can be cleared with gtk_calendar_clear_marks().
 * 
 * The way in which the calendar itself is displayed can be altered using
 * gtk_calendar_set_display_options().
 * 
 * The selected date can be retrieved from a #GtkCalendar using
 * gtk_calendar_get_date().
 * 
 * Users should be aware that, although the Gregorian calendar is the
 * legal calendar in most countries, it was adopted progressively
 * between 1582 and 1929. Display before these dates is likely to be
 * historically incorrect.
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

	protected override void setStruct(GObject* obj)
	{
		gtkCalendar = cast(GtkCalendar*)obj;
		super.setStruct(obj);
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
	 * Returns: a newly #GtkCalendar widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_calendar_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkCalendar*) p);
	}

	/**
	 * Remove all visual markers.
	 */
	public void clearMarks()
	{
		gtk_calendar_clear_marks(gtkCalendar);
	}

	/**
	 * Obtains the selected date from a #GtkCalendar.
	 *
	 * Params:
	 *     year = location to store the year as a decimal
	 *         number (e.g. 2011), or %NULL
	 *     month = location to store the month number
	 *         (between 0 and 11), or %NULL
	 *     day = location to store the day number (between
	 *         1 and 31), or %NULL
	 */
	public void getDate(out uint year, out uint month, out uint day)
	{
		gtk_calendar_get_date(gtkCalendar, &year, &month, &day);
	}

	/**
	 * Returns if the @day of the @calendar is already marked.
	 *
	 * Params:
	 *     day = the day number between 1 and 31.
	 *
	 * Returns: whether the day is marked.
	 *
	 * Since: 3.0
	 */
	public bool getDayIsMarked(uint day)
	{
		return gtk_calendar_get_day_is_marked(gtkCalendar, day) != 0;
	}

	/**
	 * Queries the height of detail cells, in rows.
	 * See #GtkCalendar:detail-width-chars.
	 *
	 * Returns: The height of detail cells, in rows.
	 *
	 * Since: 2.14
	 */
	public int getDetailHeightRows()
	{
		return gtk_calendar_get_detail_height_rows(gtkCalendar);
	}

	/**
	 * Queries the width of detail cells, in characters.
	 * See #GtkCalendar:detail-width-chars.
	 *
	 * Returns: The width of detail cells, in characters.
	 *
	 * Since: 2.14
	 */
	public int getDetailWidthChars()
	{
		return gtk_calendar_get_detail_width_chars(gtkCalendar);
	}

	/**
	 * Returns the current display options of @calendar.
	 *
	 * Returns: the display options.
	 *
	 * Since: 2.4
	 */
	public GtkCalendarDisplayOptions getDisplayOptions()
	{
		return gtk_calendar_get_display_options(gtkCalendar);
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
	 * Selects a day from the current month.
	 *
	 * Params:
	 *     day = the day number between 1 and 31, or 0 to unselect
	 *         the currently selected day.
	 */
	public void selectDay(uint day)
	{
		gtk_calendar_select_day(gtkCalendar, day);
	}

	/**
	 * Shifts the calendar to a different month.
	 *
	 * Params:
	 *     month = a month number between 0 and 11.
	 *     year = the year the month is in.
	 */
	public void selectMonth(uint month, uint year)
	{
		gtk_calendar_select_month(gtkCalendar, month, year);
	}

	/**
	 * Installs a function which provides Pango markup with detail information
	 * for each day. Examples for such details are holidays or appointments. That
	 * information is shown below each day when #GtkCalendar:show-details is set.
	 * A tooltip containing with full detail information is provided, if the entire
	 * text should not fit into the details area, or if #GtkCalendar:show-details
	 * is not set.
	 *
	 * The size of the details area can be restricted by setting the
	 * #GtkCalendar:detail-width-chars and #GtkCalendar:detail-height-rows
	 * properties.
	 *
	 * Params:
	 *     func = a function providing details for each day.
	 *     data = data to pass to @func invokations.
	 *     destroy = a function for releasing @data.
	 *
	 * Since: 2.14
	 */
	public void setDetailFunc(GtkCalendarDetailFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_calendar_set_detail_func(gtkCalendar, func, data, destroy);
	}

	/**
	 * Updates the height of detail cells.
	 * See #GtkCalendar:detail-height-rows.
	 *
	 * Params:
	 *     rows = detail height in rows.
	 *
	 * Since: 2.14
	 */
	public void setDetailHeightRows(int rows)
	{
		gtk_calendar_set_detail_height_rows(gtkCalendar, rows);
	}

	/**
	 * Updates the width of detail cells.
	 * See #GtkCalendar:detail-width-chars.
	 *
	 * Params:
	 *     chars = detail width in characters.
	 *
	 * Since: 2.14
	 */
	public void setDetailWidthChars(int chars)
	{
		gtk_calendar_set_detail_width_chars(gtkCalendar, chars);
	}

	/**
	 * Sets display options (whether to display the heading and the month
	 * headings).
	 *
	 * Params:
	 *     flags = the display options to set
	 *
	 * Since: 2.4
	 */
	public void setDisplayOptions(GtkCalendarDisplayOptions flags)
	{
		gtk_calendar_set_display_options(gtkCalendar, flags);
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

	protected class OnDaySelectedDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onDaySelectedListeners ~= this;
		}
		
		void remove(OnDaySelectedDelegateWrapper source)
		{
			foreach(index, wrapper; onDaySelectedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onDaySelectedListeners[index] = null;
					onDaySelectedListeners = std.algorithm.remove(onDaySelectedListeners, index);
					break;
				}
			}
		}
	}
	OnDaySelectedDelegateWrapper[] onDaySelectedListeners;

	/**
	 * Emitted when the user selects a day.
	 */
	gulong addOnDaySelected(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDaySelectedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"day-selected",
			cast(GCallback)&callBackDaySelected,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDaySelectedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDaySelected(GtkCalendar* calendarStruct, OnDaySelectedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDaySelectedDestroy(OnDaySelectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnDaySelectedDoubleClickDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onDaySelectedDoubleClickListeners ~= this;
		}
		
		void remove(OnDaySelectedDoubleClickDelegateWrapper source)
		{
			foreach(index, wrapper; onDaySelectedDoubleClickListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onDaySelectedDoubleClickListeners[index] = null;
					onDaySelectedDoubleClickListeners = std.algorithm.remove(onDaySelectedDoubleClickListeners, index);
					break;
				}
			}
		}
	}
	OnDaySelectedDoubleClickDelegateWrapper[] onDaySelectedDoubleClickListeners;

	/**
	 * Emitted when the user double-clicks a day.
	 */
	gulong addOnDaySelectedDoubleClick(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDaySelectedDoubleClickDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"day-selected-double-click",
			cast(GCallback)&callBackDaySelectedDoubleClick,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDaySelectedDoubleClickDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDaySelectedDoubleClick(GtkCalendar* calendarStruct, OnDaySelectedDoubleClickDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDaySelectedDoubleClickDestroy(OnDaySelectedDoubleClickDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMonthChangedDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onMonthChangedListeners ~= this;
		}
		
		void remove(OnMonthChangedDelegateWrapper source)
		{
			foreach(index, wrapper; onMonthChangedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onMonthChangedListeners[index] = null;
					onMonthChangedListeners = std.algorithm.remove(onMonthChangedListeners, index);
					break;
				}
			}
		}
	}
	OnMonthChangedDelegateWrapper[] onMonthChangedListeners;

	/**
	 * Emitted when the user clicks a button to change the selected month on a
	 * calendar.
	 */
	gulong addOnMonthChanged(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMonthChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"month-changed",
			cast(GCallback)&callBackMonthChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMonthChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMonthChanged(GtkCalendar* calendarStruct, OnMonthChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackMonthChangedDestroy(OnMonthChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnNextMonthDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onNextMonthListeners ~= this;
		}
		
		void remove(OnNextMonthDelegateWrapper source)
		{
			foreach(index, wrapper; onNextMonthListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onNextMonthListeners[index] = null;
					onNextMonthListeners = std.algorithm.remove(onNextMonthListeners, index);
					break;
				}
			}
		}
	}
	OnNextMonthDelegateWrapper[] onNextMonthListeners;

	/**
	 * Emitted when the user switched to the next month.
	 */
	gulong addOnNextMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnNextMonthDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"next-month",
			cast(GCallback)&callBackNextMonth,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackNextMonthDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackNextMonth(GtkCalendar* calendarStruct, OnNextMonthDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackNextMonthDestroy(OnNextMonthDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnNextYearDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onNextYearListeners ~= this;
		}
		
		void remove(OnNextYearDelegateWrapper source)
		{
			foreach(index, wrapper; onNextYearListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onNextYearListeners[index] = null;
					onNextYearListeners = std.algorithm.remove(onNextYearListeners, index);
					break;
				}
			}
		}
	}
	OnNextYearDelegateWrapper[] onNextYearListeners;

	/**
	 * Emitted when user switched to the next year.
	 */
	gulong addOnNextYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnNextYearDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"next-year",
			cast(GCallback)&callBackNextYear,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackNextYearDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackNextYear(GtkCalendar* calendarStruct, OnNextYearDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackNextYearDestroy(OnNextYearDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPrevMonthDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onPrevMonthListeners ~= this;
		}
		
		void remove(OnPrevMonthDelegateWrapper source)
		{
			foreach(index, wrapper; onPrevMonthListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onPrevMonthListeners[index] = null;
					onPrevMonthListeners = std.algorithm.remove(onPrevMonthListeners, index);
					break;
				}
			}
		}
	}
	OnPrevMonthDelegateWrapper[] onPrevMonthListeners;

	/**
	 * Emitted when the user switched to the previous month.
	 */
	gulong addOnPrevMonth(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPrevMonthDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"prev-month",
			cast(GCallback)&callBackPrevMonth,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPrevMonthDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPrevMonth(GtkCalendar* calendarStruct, OnPrevMonthDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPrevMonthDestroy(OnPrevMonthDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPrevYearDelegateWrapper
	{
		void delegate(Calendar) dlg;
		gulong handlerId;
		
		this(void delegate(Calendar) dlg)
		{
			this.dlg = dlg;
			onPrevYearListeners ~= this;
		}
		
		void remove(OnPrevYearDelegateWrapper source)
		{
			foreach(index, wrapper; onPrevYearListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onPrevYearListeners[index] = null;
					onPrevYearListeners = std.algorithm.remove(onPrevYearListeners, index);
					break;
				}
			}
		}
	}
	OnPrevYearDelegateWrapper[] onPrevYearListeners;

	/**
	 * Emitted when user switched to the previous year.
	 */
	gulong addOnPrevYear(void delegate(Calendar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPrevYearDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"prev-year",
			cast(GCallback)&callBackPrevYear,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPrevYearDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPrevYear(GtkCalendar* calendarStruct, OnPrevYearDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPrevYearDestroy(OnPrevYearDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
