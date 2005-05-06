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

module dui.HRuler;

private import def.Types;
private import dui.Ruler;
private import def.Constants;
private import lib.gtk;

/**
 * A Horizontal ruler.
 */
public:
class HRuler : Ruler
{
  
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A horizontal ruller";}
		char[] author(){return "Antonio";}
	}
	
  	protected:  
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
  
    public:
  
    /**
	 * Gets this class types
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_hruler_get_type();
	}
	
    /**
	 * Creates a new horizontal ruler
	 */
	this()
	{
		this(gtk_hruler_new());
	}
	
	/**
	 * Creates and horizontal ruler and set it's rnage values
	 * @param lower
	 * @param upper
	 * @param position
	 * @param maxSize
	 */
	this(gdouble lower, gdouble upper, gdouble position, gdouble maxSize)
	{
		this();
		setRange(lower, upper, position, maxSize);
	}
}
