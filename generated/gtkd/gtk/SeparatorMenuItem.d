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


module gtk.SeparatorMenuItem;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.MenuItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkSeparatorMenuItem is a separator used to group
 * items within a menu. It displays a horizontal line with a shadow to
 * make it appear sunken into the interface.
 * 
 * # CSS nodes
 * 
 * GtkSeparatorMenuItem has a single CSS node with name separator.
 */
public class SeparatorMenuItem : MenuItem
{
	/** the main Gtk struct */
	protected GtkSeparatorMenuItem* gtkSeparatorMenuItem;

	/** Get the main Gtk struct */
	public GtkSeparatorMenuItem* getSeparatorMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSeparatorMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSeparatorMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSeparatorMenuItem* gtkSeparatorMenuItem, bool ownedRef = false)
	{
		this.gtkSeparatorMenuItem = gtkSeparatorMenuItem;
		super(cast(GtkMenuItem*)gtkSeparatorMenuItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_separator_menu_item_get_type();
	}

	/**
	 * Creates a new #GtkSeparatorMenuItem.
	 *
	 * Returns: a new #GtkSeparatorMenuItem.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_separator_menu_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSeparatorMenuItem*) p);
	}
}
