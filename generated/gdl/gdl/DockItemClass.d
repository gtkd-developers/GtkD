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


module gdl.DockItemClass;

private import gdl.c.functions;
public  import gdl.c.types;


/** */
public class DockItemClass
{
	/** the main Gtk struct */
	protected GdlDockItemClass* gdlDockItemClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdlDockItemClass* getDockItemClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockItemClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdlDockItemClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockItemClass* gdlDockItemClass, bool ownedRef = false)
	{
		this.gdlDockItemClass = gdlDockItemClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Define in the corresponding kind of dock item has a grip. Even if an item
	 * has a grip it can be hidden.
	 *
	 * Params:
	 *     hasGrip = %TRUE is the dock item has a grip
	 *
	 * Since: 3.6
	 */
	public void setHasGrip(bool hasGrip)
	{
		gdl_dock_item_class_set_has_grip(gdlDockItemClass, hasGrip);
	}
}
