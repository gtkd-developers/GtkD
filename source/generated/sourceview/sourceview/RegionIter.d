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


module sourceview.RegionIter;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.TextIter;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * An opaque datatype.
 * 
 * Ignore all its fields and initialize the iter with [method@Region.get_start_region_iter].
 */
public class RegionIter
{
	/** the main Gtk struct */
	protected GtkSourceRegionIter* gtkSourceRegionIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkSourceRegionIter* getRegionIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceRegionIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceRegionIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceRegionIter* gtkSourceRegionIter, bool ownedRef = false)
	{
		this.gtkSourceRegionIter = gtkSourceRegionIter;
		this.ownedRef = ownedRef;
	}


	/**
	 * Gets the subregion at this iterator.
	 *
	 * Params:
	 *     start = iterator to initialize with the subregion start, or %NULL.
	 *     end = iterator to initialize with the subregion end, or %NULL.
	 *
	 * Returns: %TRUE if @start and @end have been set successfully (if non-%NULL),
	 *     or %FALSE if @iter is the end iterator or if the region is empty.
	 */
	public bool getSubregion(out TextIter start, out TextIter end)
	{
		GtkTextIter* outstart = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		auto __p = gtk_source_region_iter_get_subregion(gtkSourceRegionIter, outstart, outend) != 0;

		start = ObjectG.getDObject!(TextIter)(outstart, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);

		return __p;
	}

	/**
	 * Returns: whether @iter is the end iterator.
	 */
	public bool isEnd()
	{
		return gtk_source_region_iter_is_end(gtkSourceRegionIter) != 0;
	}

	/**
	 * Moves @iter to the next subregion.
	 *
	 * Returns: %TRUE if @iter moved and is dereferenceable, or %FALSE if @iter has
	 *     been set to the end iterator.
	 */
	public bool next()
	{
		return gtk_source_region_iter_next(gtkSourceRegionIter) != 0;
	}
}
