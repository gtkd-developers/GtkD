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

module dui.HScrollbar;

private import def.Types;
private import def.Constants;
private import dui.Scrollbar;
private import dui.Adjustment;
private import lib.gtk;

/**
 * A horizontal scrollbar
 */

public:
class HScrollbar : Scrollbar
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A horizontal scrollbar";}
		char[] author(){return "Antonio";}
	}
	
	public:
	
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_hscrollbar_get_type();
	}
	
	/**
	 * Creates a new Horizontal scroll bar width an adjustement
	 * @param adjustment the adjustement 
	 */
	this(Adjustment adjustment)
	{
		GtkAdjustment * adj = (adjustment  is  null) ? null : adjustment.gtkO();
		this(gtk_hscrollbar_new(adj));
	}
    
}
