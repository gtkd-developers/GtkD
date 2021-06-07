/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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

module TestStock;

import std.traits;

private import gtk.ScrolledWindow;

private import gtk.Widget;
// private import gtk.Table;
private import gtk.Grid;
private import gtk.Button;
private import gtk.Tooltip;
private import gtk.Viewport;

// private import gdk.Color;
private import gdk.RGBA;
private import gdk.Cursor;

private import gdk.Event;

debug import std.stdio;

/**
 * This tests the gtkD the Stock images in button
 */
class TestStock : ScrolledWindow
{

	this()
	{
		super();
		debug(1)
		{
			writeln("instantiating TestStock");
		}

		auto table = new Grid();
		int col = 0;
		int row = 0;

		// auto color = new RGBA(cast(ubyte)0,cast(ubyte)255,cast(ubyte)255);
		auto color = new RGBA(new GdkRGBA(0, 0, 0));

		// IconSize size = Button.getIconSize();
		// Button.setIconSize(IconSize.DIALOG);
		// WORKAROUND: https://issues.dlang.org/show_bug.cgi?id=14214
// 		foreach(StockID stockID; [EnumMembers!StockID])
// 		{
// 			Button button = new Button(stockID, true);
// 			button.setTooltipText(cast(string)stockID);

// 			//button.setCursor(CursorType.BASED_ARROW_DOWN);
// 			//button.setBackground(color);
// 			//Cursor cursor = new Cursor(CursorType.CLOCK);
// 			//button.setCursor(cursor);

// //			button.addOnEnterNotify(&enterNotify);
// //			button.addOnLeaveNotify(&leaveNotify);


// 			table.attach(button,col,col+1,row,row+1,AttachOptions.SHRINK,AttachOptions.SHRINK,2,2);
// 			++row;
// 			if ( row == 16 )
// 			{
// 				row = 0;
// 				++col;
// 			}
// 		}

// 		Button.setIconSize(size);
		auto vp = new Viewport(null, null);
		vp.setChild(table);
		setChild(vp);
		// addWithViewport(table);

	}

//	bit enterNotify(Widget widget, EventCrossing event)
//	{
//		writefln("TestStock.mouseEnterNotify %X",widget);
//		Cursor cursor = new Cursor(CursorType.MAN);
//		widget.setCursor(cursor);
//		return true;
//	}
//	bit leaveNotify(Widget widget, EventCrossing event)
//	{
//		writefln("TestStock.mouseLeaveNotify");
//		widget.resetCursor();
//		return true;
//	}


}
