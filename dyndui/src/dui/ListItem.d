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

module dui.ListItem;


private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Item;
private import dui.Widget;
private import lib.gtk;

/**
 * This is an item that can be part of a list.
 */
public:
class ListItem : Item
{
	debug(status)
	{
		int complete(){return ST_UNKNOWN;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "base object for the DUI heirarchy";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_list_item_get_type();
	}
	
	/**
	 * Creates a new List item from a GtkWidget
	 * @param gtkWidget the gtk widget
	 */
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	/**
	 * Creates a new ListItem
	 */
	this()
	{
		this(gtk_list_item_new());
	}
	
	/**
	 * Creates a new list item with a label
	 * @param label the label text
	 */
	this(char [] label)
	{
		this(gtk_list_item_new_with_label (cChar(label)));
	}

	/**
	 * Selects this item
	 */
	void select()
	{
		gtk_list_item_select(cast(GtkListItem*)gtkW());
	}
	
	/**
	 * Deselect this item
	 */
	void deselect()
	{
		gtk_list_item_deselect(cast(GtkListItem*)gtkW());
	}

	/**
	 * Sets the selection state of this item
	 * @param selectStat the bew selected state
	 */
	void select(bit selectStat)
	{
		if (selectStat)
		{
			select();
		}
		else
		{
			deselect();
		}	
	}
}
