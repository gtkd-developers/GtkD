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


module gtk.CellAccessible;

private import atk.ActionIF;
private import atk.ActionT;
private import atk.ComponentIF;
private import atk.ComponentT;
private import gtk.Accessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class CellAccessible : Accessible, ActionIF, ComponentIF
{
	/** the main Gtk struct */
	protected GtkCellAccessible* gtkCellAccessible;

	/** Get the main Gtk struct */
	public GtkCellAccessible* getCellAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellAccessible* gtkCellAccessible, bool ownedRef = false)
	{
		this.gtkCellAccessible = gtkCellAccessible;
		super(cast(GtkAccessible*)gtkCellAccessible, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(GtkCellAccessible);

	// add the Component capabilities
	mixin ComponentT!(GtkCellAccessible);


	/** */
	public static GType getType()
	{
		return gtk_cell_accessible_get_type();
	}
}
