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


module gtk.TearoffMenuItem;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.MenuItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkTearoffMenuItem is a special #GtkMenuItem which is used to
 * tear off and reattach its menu.
 * 
 * When its menu is shown normally, the #GtkTearoffMenuItem is drawn as a
 * dotted line indicating that the menu can be torn off.  Activating it
 * causes its menu to be torn off and displayed in its own window
 * as a tearoff menu.
 * 
 * When its menu is shown as a tearoff menu, the #GtkTearoffMenuItem is drawn
 * as a dotted line which has a left pointing arrow graphic indicating that
 * the tearoff menu can be reattached.  Activating it will erase the tearoff
 * menu window.
 * 
 * > #GtkTearoffMenuItem is deprecated and should not be used in newly
 * > written code. Menus are not meant to be torn around.
 */
public class TearoffMenuItem : MenuItem
{
	/** the main Gtk struct */
	protected GtkTearoffMenuItem* gtkTearoffMenuItem;

	/** Get the main Gtk struct */
	public GtkTearoffMenuItem* getTearoffMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTearoffMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTearoffMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTearoffMenuItem* gtkTearoffMenuItem, bool ownedRef = false)
	{
		this.gtkTearoffMenuItem = gtkTearoffMenuItem;
		super(cast(GtkMenuItem*)gtkTearoffMenuItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_tearoff_menu_item_get_type();
	}

	/**
	 * Creates a new #GtkTearoffMenuItem.
	 *
	 * Deprecated: #GtkTearoffMenuItem is deprecated and should not be
	 * used in newly written code.
	 *
	 * Returns: a new #GtkTearoffMenuItem.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_tearoff_menu_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTearoffMenuItem*) p);
	}
}
