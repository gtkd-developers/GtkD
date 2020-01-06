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


module gtk.StackPage;

private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/** */
public class StackPage : ObjectG
{
	/** the main Gtk struct */
	protected GtkStackPage* gtkStackPage;

	/** Get the main Gtk struct */
	public GtkStackPage* getStackPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStackPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStackPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStackPage* gtkStackPage, bool ownedRef = false)
	{
		this.gtkStackPage = gtkStackPage;
		super(cast(GObject*)gtkStackPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_stack_page_get_type();
	}

	/**
	 * Returns the stack child to which @page belongs.
	 *
	 * Returns: the child to which @page belongs
	 */
	public Widget getChild()
	{
		auto __p = gtk_stack_page_get_child(gtkStackPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}
}
