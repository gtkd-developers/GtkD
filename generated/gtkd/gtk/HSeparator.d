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


module gtk.HSeparator;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Separator;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkHSeparator widget is a horizontal separator, used to group the
 * widgets within a window. It displays a horizontal line with a shadow to
 * make it appear sunken into the interface.
 * 
 * > The #GtkHSeparator widget is not used as a separator within menus.
 * > To create a separator in a menu create an empty #GtkSeparatorMenuItem
 * > widget using gtk_separator_menu_item_new() and add it to the menu with
 * > gtk_menu_shell_append().
 * 
 * GtkHSeparator has been deprecated, use #GtkSeparator instead.
 */
public class HSeparator : Separator
{
	/** the main Gtk struct */
	protected GtkHSeparator* gtkHSeparator;

	/** Get the main Gtk struct */
	public GtkHSeparator* getHSeparatorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHSeparator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHSeparator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHSeparator* gtkHSeparator, bool ownedRef = false)
	{
		this.gtkHSeparator = gtkHSeparator;
		super(cast(GtkSeparator*)gtkHSeparator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_hseparator_get_type();
	}

	/**
	 * Creates a new #GtkHSeparator.
	 *
	 * Deprecated: Use gtk_separator_new() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Returns: a new #GtkHSeparator.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_hseparator_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHSeparator*) p);
	}
}
