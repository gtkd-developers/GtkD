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

module dui.ButtonBox;

private import def.Types;
private import dui.Widget;
private import dui.Box;

alias GtkBox GtkButtonBox;

private:

extern (C) GtkButtonBoxStyle gtk_button_box_get_layout(GtkButtonBox * widget);
extern (C) void gtk_button_box_set_layout(GtkButtonBox * widget, int layout_style);
extern (C) void gtk_button_box_set_child_secondary(GtkButtonBox * widget, GtkWidget * child, gboolean is_secondary);

/**
 * A box of buttons in a row
 */
public:
class ButtonBox : Box
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "A box of buttons in a row";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * The layout Style
	 */
	enum { DEFAULT, SPREAD, EDGE, START, END };

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Gets the layout Style
	 * @return the layout Style
	 */
	GtkButtonBoxStyle getLayout()
	{
		return gtk_button_box_get_layout(cast(GtkButtonBox*)gtkW());	
	}
	
	/**
	 * Sets the layout Style
	 * @param layoutStyle the new layoutStyle
	 */
	void setLayout( int layoutStyle)
	{
		gtk_button_box_set_layout(cast(GtkButtonBox*)gtkW(),layoutStyle);
	}
	
	/**
	 * Sets the secondary flag for a child ???
	 * @param child the child widget
	 * @param isSecondary
	 */
	void setChildSecondary(Widget child, bit isSecondary)
	{	
		gtk_button_box_set_child_secondary(cast(GtkButtonBox*)gtkW(), child.gtkW(), isSecondary);	
	}
	
//	protected static void fillActionBox(ButtonBox box, ButtonClicledListener listener, 
//				Stock[] buttons, char[][] actions)
//	{
//		Button button;
//		foreach(Stock stock; buttons)
//		{
//			button = new Button(stock);
//			disp.addButtonClickedListener(this,button,"action.ok");
//
//		}
//		button = new Button(Stock.OK);
//		disp.addButtonClickedListener(this,button,"action.ok");
//		buttonBox.packStartDefaults(button);
//		button = new Button(Stock.CANCEL);
//		disp.addButtonClickedListener(this,button,"action.cancel");
//		buttonBox.packStartDefaults(button);
//		
//	}

}
