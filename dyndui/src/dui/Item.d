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

module dui.Item;

private import def.Types;
private import def.Constants;
private import dui.Bin;
private import lib.gtk;
private import dool.String;

/**
 * A item to display on a menu (or not ???)
 */
public:
class Item : Bin
{
    
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Item";}
		char[] author(){return "Antonio";}
	}
	
    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
    
    /**
     * Declares the item default action type name when clicked.
     * (this is different from a button action type name)
     */
    public String getDefaultAction()
    {
    	return new String("activate");
    }

	/**
	 * Gets this class type
	 * @return the class type
	 */
	static GType getType()
	{
		return gtk_item_get_type();
	}
	
	/**
	 * Select this item
	 */
	void  select()
	{
		gtk_item_select(cast(GtkItem*)gtkW());
	}
	
	/**
	 * Deselect this item
	 */
	void deselect()
	{
		gtk_item_deselect(cast(GtkItem*)gtkW());
	}
	
	/**
	 * Toggle this item
	 */
	void toggle()
	{
		gtk_item_toggle(cast(GtkItem*)gtkW());
	}

}
