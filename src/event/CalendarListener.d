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

module event.CalendarListener;

private import dui.Calendar;
private import event.Event;

/**
 * Declares the methods for a window listener
 */
public:
interface CalendarListener
{
	void monthChangedCallback (Calendar calendar);
	void daySelectedCallback (Calendar calendar);
	void daySelectedDCCallback (Calendar calendar);
	void prevMonthCallback (Calendar calendar);
	void nextMonthCallback (Calendar calendar);
	void prevYearCallback (Calendar calendar);
	void nextYearCallback (Calendar calendar);
};

/**
 * Calendar Adapter
 */
public:
class CalendarAdapter : CalendarListener
{
	void monthChangedCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.monthChangedCallback\n"); }
	void daySelectedCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.daySelectedCallback\n"); }
	void daySelectedDCCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.daySelectedDCCallback\n"); }
	void prevMonthCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.prevMonthCallback\n"); }
	void nextMonthCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.nextMonthCallback\n"); }
	void prevYearCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.prevYearCallback\n"); }
	void nextYearCallback (Calendar calendar){ debug(events)printf("CalendarAdapter.nextYearCallback\n"); }
}
