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

module test.TestStock;

private import dui.ScrolledWindow;
	
private import dui.Widget;
private import dui.Table;
private import dui.DUIObject;
private import dui.Button;
private import def.Constants;

private import ddi.Color;
private import ddi.Cursor;

private import event.Event;

/**
 * This tests the DUI the Stock images in button
 */
class TestStock : ScrolledWindow
{	
	this()
	{
		debug(1)
		{
			printf("instantiating TestStock\n");
		}

		Table table = new Table(2,2,false);
		int col = 0;
		int row = 0;
		
		Color color = new Color(cast(ubyte)0,cast(ubyte)255,cast(ubyte)255);
		
		for(Stock stockID=Stock.min ; stockID<=Stock.max ; stockID++)
		{
			Button button = new Button(stockID, true);
			//button.setCursor(CursorType.BASED_ARROW_DOWN);
			//button.setBackground(color);
			//Cursor cursor = new Cursor(CursorType.CLOCK);
			//button.setCursor(cursor);
			button.addOnEnterNotify(&enterNotify);
			button.addOnLeaveNotify(&leaveNotify);
			table.attach(button,col,col+1,row,row+1,AttachOptions.SHRINK,AttachOptions.SHRINK,2,2);
			++row;
			if ( row == 16 )
			{
				row = 0;
				++col;
			}
		}
		
		addWithViewport(table);

	}

	bit enterNotify(Widget widget, EventCrossing event)
	{
		printf("TestStock.mouseEnterNotify %X\n",widget);
		Cursor cursor = new Cursor(CursorType.MAN);
		widget.setCursor(cursor);
		return true;
	}
	bit leaveNotify(Widget widget, EventCrossing event)
	{
		printf("TestStock.mouseLeaveNotify\n");
		widget.resetCursor();
		return true;
	}


}
