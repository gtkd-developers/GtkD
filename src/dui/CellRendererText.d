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

module dui.CellRendererText;

private import def.Types;
private import dui.DUIObject;
private import dui.CellRenderer;

alias GtkCellRenderer GtkCellRendererText;

private:

extern (C) GtkCellRenderer * gtk_cell_renderer_text_new();
extern (C) void gtk_cell_renderer_text_set_fixed_height_from_font(GtkCellRendererText * renderer, gint number_of_rows);

/**
 * A text cell renderer
 */

public:
class CellRendererText : CellRenderer
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A text cell renderer";}
		char[] author(){return "Antonio";}
	}
	
	public:
	this(GtkObject * gtkObject)
	{
		super(gtkObject);
	}

	/**
	 * Creates a new Text Cel renderer
	 */
	this()
	{
		this(gtk_cell_renderer_text_new());
	}
	
	/**
	 * Sets the height of the rederer to fit the font height
	 * @param number_of_rows
	 */
	void setFixedHeightFromFont(gint number_of_rows)
	{
		gtk_cell_renderer_text_set_fixed_height_from_font(gtkO(), number_of_rows);
	}

}
