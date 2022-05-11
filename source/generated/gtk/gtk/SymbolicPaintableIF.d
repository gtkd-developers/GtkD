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


module gtk.SymbolicPaintableIF;

private import gdk.RGBA;
private import gdk.Snapshot;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSymbolicPaintable` is an interface that support symbolic colors in
 * paintables.
 * 
 * `GdkPaintable`s implementing the interface will have the
 * [vfunc@Gtk.SymbolicPaintable.snapshot_symbolic] function called and
 * have the colors for drawing symbolic icons passed. At least 4 colors are guaranteed
 * to be passed every time.
 * 
 * These 4 colors are the foreground color, and the colors to use for errors, warnings
 * and success information in that order.
 * 
 * More colors may be added in the future.
 *
 * Since: 4.6
 */
public interface SymbolicPaintableIF{
	/** Get the main Gtk struct */
	public GtkSymbolicPaintable* getSymbolicPaintableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_symbolic_paintable_get_type();
	}

	/**
	 * Snapshots the paintable with the given colors.
	 *
	 * If less than 4 colors are provided, GTK will pad the array with default
	 * colors.
	 *
	 * Params:
	 *     snapshot = a `GdkSnapshot` to snapshot to
	 *     width = width to snapshot in
	 *     height = height to snapshot in
	 *     colors = a pointer to an array of colors
	 *
	 * Since: 4.6
	 */
	public void snapshotSymbolic(Snapshot snapshot, double width, double height, RGBA[] colors);
}
