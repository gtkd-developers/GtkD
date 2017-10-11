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


module gtk.RadioToolButton;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.RadioButton;
private import gtk.ToggleToolButton;
private import gtk.ToolItem;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkRadioToolButton is a #GtkToolItem that contains a radio button,
 * that is, a button that is part of a group of toggle buttons where only
 * one button can be active at a time.
 * 
 * Use gtk_radio_tool_button_new() to create a new GtkRadioToolButton. Use
 * gtk_radio_tool_button_new_from_widget() to create a new GtkRadioToolButton
 * that is part of the same group as an existing GtkRadioToolButton.
 * 
 * # CSS nodes
 * 
 * GtkRadioToolButton has a single CSS node with name toolbutton.
 */
public class RadioToolButton : ToggleToolButton
{
	/** the main Gtk struct */
	protected GtkRadioToolButton* gtkRadioToolButton;

	/** Get the main Gtk struct */
	public GtkRadioToolButton* getRadioToolButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRadioToolButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioToolButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRadioToolButton* gtkRadioToolButton, bool ownedRef = false)
	{
		this.gtkRadioToolButton = gtkRadioToolButton;
		super(cast(GtkToggleToolButton*)gtkRadioToolButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_radio_tool_button_get_type();
	}

	/**
	 * Creates a new #GtkRadioToolButton, adding it to @group.
	 *
	 * Params:
	 *     group = An
	 *         existing radio button group, or %NULL if you are creating a new group
	 *
	 * Returns: The new #GtkRadioToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListSG group)
	{
		auto p = gtk_radio_tool_button_new((group is null) ? null : group.getListSGStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRadioToolButton*) p);
	}

	/**
	 * Creates a new #GtkRadioToolButton, adding it to @group.
	 * The new #GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by @stock_id.
	 *
	 * Deprecated: Use gtk_radio_tool_button_new() instead.
	 *
	 * Params:
	 *     group = an existing radio button
	 *         group, or %NULL if you are creating a new group
	 *     stockId = the name of a stock item
	 *
	 * Returns: The new #GtkRadioToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListSG group, string stockId)
	{
		auto p = gtk_radio_tool_button_new_from_stock((group is null) ? null : group.getListSGStruct(), Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stock");
		}

		this(cast(GtkRadioToolButton*) p);
	}

	/**
	 * Creates a new #GtkRadioToolButton adding it to the same group as @gruup
	 *
	 * Params:
	 *     group = An existing #GtkRadioToolButton, or %NULL
	 *
	 * Returns: The new #GtkRadioToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RadioToolButton group)
	{
		auto p = gtk_radio_tool_button_new_from_widget((group is null) ? null : group.getRadioToolButtonStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_widget");
		}

		this(cast(GtkRadioToolButton*) p);
	}

	/**
	 * Creates a new #GtkRadioToolButton adding it to the same group as @group.
	 * The new #GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by @stock_id.
	 *
	 * Deprecated: gtk_radio_tool_button_new_from_widget
	 *
	 * Params:
	 *     group = An existing #GtkRadioToolButton.
	 *     stockId = the name of a stock item
	 *
	 * Returns: A new #GtkRadioToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RadioToolButton group, string stockId)
	{
		auto p = gtk_radio_tool_button_new_with_stock_from_widget((group is null) ? null : group.getRadioToolButtonStruct(), Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_stock_from_widget");
		}

		this(cast(GtkRadioToolButton*) p);
	}

	/**
	 * Returns the radio button group @button belongs to.
	 *
	 * Returns: The group @button belongs to.
	 *
	 * Since: 2.4
	 */
	public ListSG getGroup()
	{
		auto p = gtk_radio_tool_button_get_group(gtkRadioToolButton);

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Adds @button to @group, removing it from the group it belonged to before.
	 *
	 * Params:
	 *     group = an existing radio button group, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setGroup(ListSG group)
	{
		gtk_radio_tool_button_set_group(gtkRadioToolButton, (group is null) ? null : group.getListSGStruct());
	}
}
