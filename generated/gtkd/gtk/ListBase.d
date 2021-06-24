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


module gtk.ListBase;

private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkListBase` is the abstract base class for GTK's list widgets.
 */
public class ListBase : Widget, OrientableIF, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkListBase* gtkListBase;

	/** Get the main Gtk struct */
	public GtkListBase* getListBaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListBase;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListBase* gtkListBase, bool ownedRef = false)
	{
		this.gtkListBase = gtkListBase;
		super(cast(GtkWidget*)gtkListBase, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkListBase);

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkListBase);


	/** */
	public static GType getType()
	{
		return gtk_list_base_get_type();
	}
}
