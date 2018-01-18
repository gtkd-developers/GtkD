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


module gtk.ToplevelAccessible;

private import atk.ObjectAtk;
private import glib.ListG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ToplevelAccessible : ObjectAtk
{
	/** the main Gtk struct */
	protected GtkToplevelAccessible* gtkToplevelAccessible;

	/** Get the main Gtk struct */
	public GtkToplevelAccessible* getToplevelAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToplevelAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToplevelAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToplevelAccessible* gtkToplevelAccessible, bool ownedRef = false)
	{
		this.gtkToplevelAccessible = gtkToplevelAccessible;
		super(cast(AtkObject*)gtkToplevelAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_toplevel_accessible_get_type();
	}

	/**
	 * Returns: List of
	 *     children.
	 */
	public ListG getChildren()
	{
		auto p = gtk_toplevel_accessible_get_children(gtkToplevelAccessible);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}
}
