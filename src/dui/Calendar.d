/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Calendar;
private import def.Types;
private import def.Constants;
private import dui.Widget;

alias GtkWidget GtkCalendar;

alias CalendarDisplayOptions  GtkCalendarDisplayOptions;
private:
extern (C) GtkWidget * gtk_calendar_new();

extern (C) gboolean gtk_calendar_select_month(GtkCalendar * calendar, guint month, guint year);
extern (C) void gtk_calendar_select_day(GtkCalendar * calendar, guint day);

extern (C) gboolean gtk_calendar_mark_day(GtkCalendar * calendar, guint day);
extern (C) gboolean gtk_calendar_unmark_day(GtkCalendar * calendar, guint day);
extern (C) void gtk_calendar_clear_marks(GtkCalendar * calendar);

extern (C) void gtk_calendar_display_options(GtkCalendar * calendar, CalendarDisplayOptions flags);

extern (C) void gtk_calendar_get_date(GtkCalendar * calendar, guint * year, guint * month, guint * day);
extern (C) void gtk_calendar_freeze(GtkCalendar * calendar);
extern (C) void gtk_calendar_thaw(GtkCalendar * calendar);

/**
 * A calendar widget to show and selected dates.
 * This is not a top level widget (it's not a dialog)
 */
public:
class Calendar : Widget
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A calendar widget to show and selected dates.";}
		char[] author(){return "Antonio";}
	}
	
	public:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new calandar widget witha title
	 * @param title the calendar title
	 */
	this(char [] title)
	{
		this(gtk_calendar_new());
	}

	/**
	 * Select a month
	 * @param month
	 * @param year
	 * @return 
	 */
	bit selectMonth(guint month, guint year)
	{
		return gtk_calendar_select_month(gtkW(), month, year) == 0 ? false : true;
	}
	
	/**
	 * Select a day
	 * @param day
	 */
	void selectDay(guint day)
	{
		gtk_calendar_select_day(gtkW(), day);
	}

	/**
	 * Marks the day
	 * @param day
	 * @return 
	 */
	bit markDay(guint day)
	{
		return gtk_calendar_mark_day(gtkW(), day)==0?false:true;
	}

	/**
	 * Unmarks the day
	 * @param day
	 * @return 
	 */
	bit unmarkDay(guint day)
	{
		return gtk_calendar_unmark_day(gtkW(), day) == 0 ? false : true;
	}
	
	/**
	 * Clear all marks
	 */
	void clearMarks()
	{
		gtk_calendar_clear_marks(gtkW());
	}

	/**
	 * Set the display options
	 * @param flags
	 */
	void displayOptions(CalendarDisplayOptions flags)
	{
		gtk_calendar_display_options(gtkW(), flags);
	}

	/**
	 * Gets the date
	 * @param year
	 * @param month
	 * @param day
	 */
	void getDate(guint * year, guint * month, guint * day)
	{
		gtk_calendar_get_date(gtkW(), year, month, day);
	}
	
	/**
	 * Freezes this calendar
	 */
	void freeze()
	{
		gtk_calendar_freeze(gtkW());
	}
	
	/**
	 * Thaws this calendar
	 */
	void thaw()
	{
		gtk_calendar_thaw(gtkW());
	}


}
