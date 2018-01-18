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


module gtk.TreeViewAccessible;

private import atk.SelectionIF;
private import atk.SelectionT;
private import atk.TableIF;
private import atk.TableT;
private import gtk.CellAccessibleParentIF;
private import gtk.CellAccessibleParentT;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class TreeViewAccessible : ContainerAccessible, SelectionIF, TableIF, CellAccessibleParentIF
{
	/** the main Gtk struct */
	protected GtkTreeViewAccessible* gtkTreeViewAccessible;

	/** Get the main Gtk struct */
	public GtkTreeViewAccessible* getTreeViewAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeViewAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeViewAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeViewAccessible* gtkTreeViewAccessible, bool ownedRef = false)
	{
		this.gtkTreeViewAccessible = gtkTreeViewAccessible;
		super(cast(GtkContainerAccessible*)gtkTreeViewAccessible, ownedRef);
	}

	// add the Selection capabilities
	mixin SelectionT!(GtkTreeViewAccessible);

	// add the Table capabilities
	mixin TableT!(GtkTreeViewAccessible);

	// add the CellAccessibleParent capabilities
	mixin CellAccessibleParentT!(GtkTreeViewAccessible);


	/** */
	public static GType getType()
	{
		return gtk_tree_view_accessible_get_type();
	}
}
