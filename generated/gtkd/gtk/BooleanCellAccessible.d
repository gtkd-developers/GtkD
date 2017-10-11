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


module gtk.BooleanCellAccessible;

private import gtk.RendererCellAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class BooleanCellAccessible : RendererCellAccessible
{
	/** the main Gtk struct */
	protected GtkBooleanCellAccessible* gtkBooleanCellAccessible;

	/** Get the main Gtk struct */
	public GtkBooleanCellAccessible* getBooleanCellAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBooleanCellAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBooleanCellAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBooleanCellAccessible* gtkBooleanCellAccessible, bool ownedRef = false)
	{
		this.gtkBooleanCellAccessible = gtkBooleanCellAccessible;
		super(cast(GtkRendererCellAccessible*)gtkBooleanCellAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_boolean_cell_accessible_get_type();
	}
}
