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


module gtk.CellEditable;

private import gobject.ObjectG;
private import gtk.CellEditableIF;
private import gtk.CellEditableT;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/** */
public class CellEditable : ObjectG, CellEditableIF
{
	/** the main Gtk struct */
	protected GtkCellEditable* gtkCellEditable;

	/** Get the main Gtk struct */
	public GtkCellEditable* getCellEditableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellEditable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellEditable;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkCellEditable = cast(GtkCellEditable*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellEditable* gtkCellEditable, bool ownedRef = false)
	{
		this.gtkCellEditable = gtkCellEditable;
		super(cast(GObject*)gtkCellEditable, ownedRef);
	}

	// add the CellEditable capabilities
	mixin CellEditableT!(GtkCellEditable);

}
