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

module dui.Scale;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Range;

alias GtkRange GtkScale;

extern (C) GType gtk_scale_get_type();
extern (C) void gtk_scale_set_digits(GtkScale * scale, int digits);
extern (C) int gtk_scale_get_digits(GtkScale * scale);
extern (C) void gtk_scale_set_draw_value(GtkScale * scale, gboolean draw_value);
extern (C) gboolean gtk_scale_get_draw_value(GtkScale * scale);
extern (C) void gtk_scale_set_value_pos(GtkScale * scale, GtkPositionType pos);
extern (C) GtkPositionType gtk_scale_get_value_pos(GtkScale * scale);

/**
 * A interactive visual representation of a value inside a range.
 * A scale has not arrows on the ends and can display it current value
 */
public:
class Scale : Range
{

	public:
	/**
	 * The position to display the value
	 */
	enum{
		LEFT, RIGHT, TOP, BOTTOM
	}

	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A interactive visual representation of a value inside a range";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_scale_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Sets the number of digits to the right of the floting point
	 * @param digits the new number of digits to the right of the floating point to be displayed
	 */
	void setDigits(int digits)
	{
		gtk_scale_set_digits(gtkW(),digits);		
	} 
	
	/**
	 * Gets the current number of digits to the right of the floting point
	 * @return the current number of digits to the right of the floating point to be displayed
	 */
	int getDigits()
	{
		return gtk_scale_get_digits(gtkW());
	}
	void setDrawValue(bit drawValue)
	{
		gtk_scale_set_draw_value(gtkW(),drawValue);
	}
	
	/**
	 * Gets the draw value ???
	 * @return the draw valud
	 */
	bit getDrawValue()
	{
		return gtk_scale_get_draw_value(gtkW()) == 0 ? false : true;
	}
	
	/**
	 * Sets the value display position
	 * @param pos the new valud display position
	 */
	void setValuePos(GtkPositionType pos)
	{
		gtk_scale_set_value_pos(gtkW(), pos);
	}
	
	/**
	 * Gets the value display position
	 * @return the value display position
	 */
	int getValuePos()
	{
		return gtk_scale_get_value_pos(gtkW());
	}

}
