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


module gtk.ContainerCellAccessible;

private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gtk.CellAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ContainerCellAccessible : CellAccessible
{
	/** the main Gtk struct */
	protected GtkContainerCellAccessible* gtkContainerCellAccessible;

	/** Get the main Gtk struct */
	public GtkContainerCellAccessible* getContainerCellAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkContainerCellAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkContainerCellAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkContainerCellAccessible* gtkContainerCellAccessible, bool ownedRef = false)
	{
		this.gtkContainerCellAccessible = gtkContainerCellAccessible;
		super(cast(GtkCellAccessible*)gtkContainerCellAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_container_cell_accessible_get_type();
	}

	/** */
	public this()
	{
		auto p = gtk_container_cell_accessible_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkContainerCellAccessible*) p, true);
	}

	/** */
	public void addChild(CellAccessible child)
	{
		gtk_container_cell_accessible_add_child(gtkContainerCellAccessible, (child is null) ? null : child.getCellAccessibleStruct());
	}

	/**
	 * Get a list of children.
	 */
	public ListG getChildren()
	{
		auto p = gtk_container_cell_accessible_get_children(gtkContainerCellAccessible);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/** */
	public void removeChild(CellAccessible child)
	{
		gtk_container_cell_accessible_remove_child(gtkContainerCellAccessible, (child is null) ? null : child.getCellAccessibleStruct());
	}
}
