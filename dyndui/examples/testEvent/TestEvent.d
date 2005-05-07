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

module testEvent.TestEvent;

import dui.All;

class TestEvent : MainWindow
{
	DrawingArea widget;
	this()
	{
		super("Test Event");
		widget = new DrawingArea();
		widget.setProperty("can-focus", true);
		widget.setSizeRequest(300,300);
		add(widget);
		addEvents();
	}
	
	void addEvents()
	{
		widget.addOnMouseButtonPress(&onMousePress);
		widget.addOnKeyPress(&onKeyPress);
	}
	
	bit onMousePress(Widget widget, EventButton event)
	{
		printf("TestEvent.onMousePress \n" );
		return false;
	}
	
	bit onKeyPress(Widget widget, EventKey event)
	{
		printf("TestEvent.onKeyPress\n");
		return false;
	}
}


void main(char[][] args)
{
	DUI dui;

	dui = DUI.dui(args);

	Window window = new TestEvent();
	window.show();
	
	dui.go();

}