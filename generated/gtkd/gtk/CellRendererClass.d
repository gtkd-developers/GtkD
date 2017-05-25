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


module gtk.CellRendererClass;

private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class CellRendererClass
{
	/** the main Gtk struct */
	protected GtkCellRendererClass* gtkCellRendererClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkCellRendererClass* getCellRendererClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellRendererClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererClass* gtkCellRendererClass, bool ownedRef = false)
	{
		this.gtkCellRendererClass = gtkCellRendererClass;
		this.ownedRef = ownedRef;
	}


	/**
	 * Sets the type to be used for creating accessibles for cells rendered by
	 * cell renderers of @renderer_class. Note that multiple accessibles will
	 * be created.
	 *
	 * This function should only be called from class init functions of cell
	 * renderers.
	 *
	 * Params:
	 *     type = The object type that implements the accessible for @widget_class.
	 *         The type must be a subtype of #GtkRendererCellAccessible
	 */
	public void setAccessibleType(GType type)
	{
		gtk_cell_renderer_class_set_accessible_type(gtkCellRendererClass, type);
	}
}
