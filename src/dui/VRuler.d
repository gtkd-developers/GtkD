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

module dui.VRuler;
/**
 *
 */

private import def.Types;
private import def.Constants;
private import dui.Ruler;

public:

alias GtkRuler GtkVRuler;

private:

extern (C)
{
	GType gtk_vruler_get_type();
	GtkWidget*  gtk_vruler_new();
};

/**
 * A Vertical ruler.
 */
public:
class VRuler : Ruler
{
  
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A Vertical ruler";}
		char[] author(){return "Antonio";}
	}
	
  	protected:  
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
		return gtk_vruler_get_type();
	}
   
    public:
  
    /**
	 * Creates a new vertical ruler
	 */
	this()
	{
		this(gtk_vruler_new());
	}
	
	/**
	 * Creates and vertical ruler and set it's rnage values
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
