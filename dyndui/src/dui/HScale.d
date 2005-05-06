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

module dui.HScale;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Scale;
private import dui.Adjustment;
private import lib.gtk;

/**
 * A Horizontal scale 
 */
public:
class HScale : Scale
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A Horizontal scale ";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Gets this class type
	 * @return this class Type
	 */
	static GType getType()
	{
		return gtk_hscale_get_type();
	}
	
	/**
	 * Creates a new horizontal scale with an adjustement
	 * @param adjustment
	 */
	this(Adjustment adjustment)
	{
		GtkAdjustment * adj = (adjustment === null) ? null : adjustment.gtkO();
		this(gtk_hscale_new(adj));
		
	}
	
	/**
	 * creates a new horizontal scale with a range and a step values
	 * @param min the minimum value
	 * @param max the maximum value
	 * @param step the step increment
	 */
	this(gdouble min, gdouble max, gdouble step)
	{
		this(gtk_hscale_new_with_range(min, max, step));
	}
}
