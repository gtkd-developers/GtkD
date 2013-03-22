/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkRadioToolButton.html
 * outPack = gtk
 * outFile = RadioToolButton
 * strct   = GtkRadioToolButton
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = RadioToolButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_tool_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkRadioToolButton* -> RadioToolButton
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RadioToolButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListSG;



private import gtk.ToggleToolButton;

/**
 * A GtkRadioToolButton is a GtkToolItem that contains a radio button,
 * that is, a button that is part of a group of toggle buttons where only
 * one button can be active at a time.
 *
 * Use gtk_radio_tool_button_new() to create a new
 * GtkRadioToolButton. Use gtk_radio_tool_button_new_from_widget() to
 * create a new GtkRadioToolButton that is part of the same group as an
 * existing GtkRadioToolButton. Use
 * gtk_radio_tool_button_new_from_stock() or
 * gtk_radio_tool_button_new_with_stock_from_widget() create a new
 * GtkRadioToolButton containing a stock item.
 */
public class RadioToolButton : ToggleToolButton
{
	
	/** the main Gtk struct */
	protected GtkRadioToolButton* gtkRadioToolButton;
	
	
	public GtkRadioToolButton* getRadioToolButtonStruct()
	{
		return gtkRadioToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioToolButton* gtkRadioToolButton)
	{
		super(cast(GtkToggleToolButton*)gtkRadioToolButton);
		this.gtkRadioToolButton = gtkRadioToolButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRadioToolButton = cast(GtkRadioToolButton*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * Since 2.4
	 * Params:
	 * group = An
	 * existing radio button group, or NULL if you are creating a new group. [allow-none][transfer none][element-type GtkRadioButton]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListSG group)
	{
		// GtkToolItem * gtk_radio_tool_button_new (GSList *group);
		auto p = gtk_radio_tool_button_new((group is null) ? null : group.getListSGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_tool_button_new((group is null) ? null : group.getListSGStruct())");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * Since 2.4
	 * Params:
	 * group = an existing radio button
	 * group, or NULL if you are creating a new group. [allow-none][element-type GtkRadioButton]
	 * stockId = the name of a stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListSG group, string stockId)
	{
		// GtkToolItem * gtk_radio_tool_button_new_from_stock  (GSList *group,  const gchar *stock_id);
		auto p = gtk_radio_tool_button_new_from_stock((group is null) ? null : group.getListSGStruct(), Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_tool_button_new_from_stock((group is null) ? null : group.getListSGStruct(), Str.toStringz(stockId))");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as gruup
	 * Since 2.4
	 * Params:
	 * group = An existing GtkRadioToolButton, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RadioToolButton group)
	{
		// GtkToolItem * gtk_radio_tool_button_new_from_widget  (GtkRadioToolButton *group);
		auto p = gtk_radio_tool_button_new_from_widget((group is null) ? null : group.getRadioToolButtonStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_tool_button_new_from_widget((group is null) ? null : group.getRadioToolButtonStruct())");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * Since 2.4
	 * Params:
	 * group = An existing GtkRadioToolButton. [allow-none]
	 * stockId = the name of a stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RadioToolButton group, string stockId)
	{
		// GtkToolItem * gtk_radio_tool_button_new_with_stock_from_widget  (GtkRadioToolButton *group,  const gchar *stock_id);
		auto p = gtk_radio_tool_button_new_with_stock_from_widget((group is null) ? null : group.getRadioToolButtonStruct(), Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_tool_button_new_with_stock_from_widget((group is null) ? null : group.getRadioToolButtonStruct(), Str.toStringz(stockId))");
		}
		this(cast(GtkRadioToolButton*) p);
	}
	
	/**
	 * Returns the radio button group button belongs to.
	 * Since 2.4
	 * Returns: The group button belongs to. [transfer none][element-type GtkRadioButton]
	 */
	public ListSG getGroup()
	{
		// GSList * gtk_radio_tool_button_get_group (GtkRadioToolButton *button);
		auto p = gtk_radio_tool_button_get_group(gtkRadioToolButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Adds button to group, removing it from the group it belonged to before.
	 * Since 2.4
	 * Params:
	 * group = an existing radio button group. [transfer none][element-type GtkRadioButton]
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_tool_button_set_group (GtkRadioToolButton *button,  GSList *group);
		gtk_radio_tool_button_set_group(gtkRadioToolButton, (group is null) ? null : group.getListSGStruct());
	}
}
