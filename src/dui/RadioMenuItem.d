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

module dui.RadioMenuItem;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.CheckMenuItem;
private import dui.SListG;
public:

alias GtkCheckMenuItem GtkRadioMenuItem;

private:

extern(C)
{
	GType gtk_radio_menu_item_get_type();
	GtkWidget * gtk_radio_menu_item_new(GSList * group);
	GtkWidget * gtk_radio_menu_item_new_with_label(GSList * group, gchar * label);
	GtkWidget * gtk_radio_menu_item_new_with_mnemonic(GSList * group, gchar * label);
	//#define gtk_radio_menu_item_group
	void gtk_radio_menu_item_set_group(GtkRadioMenuItem * radio_menu_item, GSList * group);
	GSList * gtk_radio_menu_item_get_group(GtkRadioMenuItem * radio_menu_item);
}

/**
 * A menu item with two states (plus a third one) that can be mutualy exclusive with other items of the same type.
 * not implemented yet.
 */
public:
class RadioMenuItem :
		CheckMenuItem
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A menu item with two states (plus a third one)";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_radio_menu_item_get_type();
	}
	
	/**
	 * Creates a new RadioMenuItem and links it to an existing set of mutualy exclusive buttons
	 * @param group the set of mutualy exclusive buttons
	 */
	this(SListG group)
	{
		this(group, null);
	}

	/**
	 * Creates a new Radion menu item bellonging to a button group
	 * @param group the button group
	 * @param label the new button label text
	 */
	this(SListG group, char[] label)
	{
		GSList * slist = null;
		if (group)
		{
			slist = group.obj();
			//printf("slist = %X\n\0",slist);
		}
		if (label)
		{
			super(gtk_radio_menu_item_new_with_mnemonic(slist, cChar((label))));
		}
		else
		{
			super(gtk_radio_menu_item_new(slist));
		}
	}

	/**
	 * Creates a new radion menu item and joins it to the group of the passed button
	 * @param item
	 */
	this(RadioMenuItem item)
	{
		this(item, null);
	}

	/**
	 * Creates a new radio menu item and joins it to the group of the passed button
	 * @param item the button on the group we will join
	 * @param label the button label text
	 */
	this(RadioMenuItem item, char[] label)
	{
		this(item, label, null);
	}

	/**
	 * Creates a new Radio button with a label and a callback funtion
	 * @param item a button from the group that the new button will join
	 * @param label the new button lavel text
	 * @param func the call back function
	 */
	this(RadioMenuItem item, char[] label, void function(void * , void *) func)
	{
		//printf("button.getGroup() %X\n\0",button.getGroup());
		this(item.getGroup(), label);
	}

	/**
	 * Gets this buttons group of mutualy exclusive buttons
	 * @return the group of buttons
	 */
	SListG getGroup()
	{

		//printf("getGroup %X\n\0",gtkW());
		//printf("getGroupd %X\n\0",gtk_radio_button_get_group(gtkW()));
		return new SListG(gtk_radio_menu_item_get_group(cast(GtkRadioMenuItem *)gtkW()));
	}
}
