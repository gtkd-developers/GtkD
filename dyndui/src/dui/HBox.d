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

module dui.HBox;
private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Box;
private import lib.gtk;

/**
 * A Horizontal box to display it's children in a horizontal row
 */
public:
class HBox : Box
{
    
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A Horizontal box to display it's children in a horizontal row";}
		char[] author(){return "Antonio";}
	}
	
	public:
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
		return gtk_hbox_get_type();
	}
	/**
	 * Creates a new HBox
	 */
	this(gboolean homogeneous, gint spacing)
	{
		this(gtk_hbox_new (homogeneous, spacing));
	}

	char [] toString()
	{
		return "HBox";
	}

	void dump()
	{
		GtkHBox* gtkHBox = cast(GtkHBox*)gtkW();
		super.dump();
		printf("\n\t### HBox ###\n");
		printf("\tbox %X\n",gtkHBox.box);
	}

}
