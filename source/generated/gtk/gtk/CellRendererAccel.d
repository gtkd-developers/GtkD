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


module gtk.CellRendererAccel;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.CellRendererText;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * Renders a keyboard accelerator in a cell
 * 
 * `GtkCellRendererAccel` displays a keyboard accelerator (i.e. a key
 * combination like `Control + a`). If the cell renderer is editable,
 * the accelerator can be changed by simply typing the new combination.
 */
public class CellRendererAccel : CellRendererText
{
	/** the main Gtk struct */
	protected GtkCellRendererAccel* gtkCellRendererAccel;

	/** Get the main Gtk struct */
	public GtkCellRendererAccel* getCellRendererAccelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRendererAccel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererAccel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererAccel* gtkCellRendererAccel, bool ownedRef = false)
	{
		this.gtkCellRendererAccel = gtkCellRendererAccel;
		super(cast(GtkCellRendererText*)gtkCellRendererAccel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_accel_get_type();
	}

	/**
	 * Creates a new `GtkCellRendererAccel`.
	 *
	 * Returns: the new cell renderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_renderer_accel_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellRendererAccel*) __p);
	}

	/**
	 * Gets emitted when the user has removed the accelerator.
	 *
	 * Params:
	 *     pathString = the path identifying the row of the edited cell
	 */
	gulong addOnAccelCleared(void delegate(string, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accel-cleared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user has selected a new accelerator.
	 *
	 * Params:
	 *     pathString = the path identifying the row of the edited cell
	 *     accelKey = the new accelerator keyval
	 *     accelMods = the new acclerator modifier mask
	 *     hardwareKeycode = the keycode of the new accelerator
	 */
	gulong addOnAccelEdited(void delegate(string, uint, GdkModifierType, uint, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accel-edited", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
