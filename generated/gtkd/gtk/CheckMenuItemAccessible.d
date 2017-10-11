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


module gtk.CheckMenuItemAccessible;

private import gtk.MenuItemAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class CheckMenuItemAccessible : MenuItemAccessible
{
	/** the main Gtk struct */
	protected GtkCheckMenuItemAccessible* gtkCheckMenuItemAccessible;

	/** Get the main Gtk struct */
	public GtkCheckMenuItemAccessible* getCheckMenuItemAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCheckMenuItemAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCheckMenuItemAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCheckMenuItemAccessible* gtkCheckMenuItemAccessible, bool ownedRef = false)
	{
		this.gtkCheckMenuItemAccessible = gtkCheckMenuItemAccessible;
		super(cast(GtkMenuItemAccessible*)gtkCheckMenuItemAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_check_menu_item_accessible_get_type();
	}
}
