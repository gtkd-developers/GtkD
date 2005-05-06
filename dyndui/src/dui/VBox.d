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

module dui.VBox;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Box;
private import lib.gtk;

/**
 * A container to display widgets vertically
 */
public:
class VBox : Box
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container to display widgets vertically";}
		char[] author(){return "Antonio";}
	}
	
    package:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_vbox_get_type();
	}
   
	/**
	 * Creates a new vertical box
	 * @param homogeneous if true all widget will have the same height space (how it's filled depends on the widget)
	 * @param spacing number of pixels between each children
	 */
	this(bit homogeneous, int spacing)
	{
		this(gtk_vbox_new (homogeneous, spacing));
	}
}
