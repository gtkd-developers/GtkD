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


module pango.PgTabArray;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoTabArray` contains an array of tab stops.
 * 
 * `PangoTabArray` can be used to set tab stops in a `PangoLayout`.
 * Each tab stop has an alignment, a position, and optionally
 * a character to use as decimal point.
 */
public class PgTabArray
{
	/** the main Gtk struct */
	protected PangoTabArray* pangoTabArray;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoTabArray* getPgTabArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoTabArray;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoTabArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoTabArray* pangoTabArray, bool ownedRef = false)
	{
		this.pangoTabArray = pangoTabArray;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_tab_array_free(pangoTabArray);
	}


	/** */
	public static GType getType()
	{
		return pango_tab_array_get_type();
	}

	/**
	 * Creates an array of @initial_size tab stops.
	 *
	 * Tab stops are specified in pixel units if @positions_in_pixels is %TRUE,
	 * otherwise in Pango units. All stops are initially at position 0.
	 *
	 * Params:
	 *     initialSize = Initial number of tab stops to allocate, can be 0
	 *     positionsInPixels = whether positions are in pixel units
	 *
	 * Returns: the newly allocated `PangoTabArray`, which should
	 *     be freed with [method@Pango.TabArray.free].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int initialSize, bool positionsInPixels)
	{
		auto __p = pango_tab_array_new(initialSize, positionsInPixels);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoTabArray*) __p);
	}

	/**
	 * Copies a `PangoTabArray`.
	 *
	 * Returns: the newly allocated `PangoTabArray`, which should
	 *     be freed with [method@Pango.TabArray.free].
	 */
	public PgTabArray copy()
	{
		auto __p = pango_tab_array_copy(pangoTabArray);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p, true);
	}

	/**
	 * Frees a tab array and associated resources.
	 */
	public void free()
	{
		pango_tab_array_free(pangoTabArray);
		ownedRef = false;
	}

	/**
	 * Gets the Unicode character to use as decimal point.
	 *
	 * This is only relevant for tabs with %PANGO_TAB_DECIMAL alignment,
	 * which align content at the first occurrence of the decimal point
	 * character.
	 *
	 * The default value of 0 means that Pango will use the
	 * decimal point according to the current locale.
	 *
	 * Params:
	 *     tabIndex = the index of a tab stop
	 *
	 * Since: 1.50
	 */
	public dchar getDecimalPoint(int tabIndex)
	{
		return pango_tab_array_get_decimal_point(pangoTabArray, tabIndex);
	}

	/**
	 * Returns %TRUE if the tab positions are in pixels,
	 * %FALSE if they are in Pango units.
	 *
	 * Returns: whether positions are in pixels.
	 */
	public bool getPositionsInPixels()
	{
		return pango_tab_array_get_positions_in_pixels(pangoTabArray) != 0;
	}

	/**
	 * Gets the number of tab stops in @tab_array.
	 *
	 * Returns: the number of tab stops in the array.
	 */
	public int getSize()
	{
		return pango_tab_array_get_size(pangoTabArray);
	}

	/**
	 * Gets the alignment and position of a tab stop.
	 *
	 * Params:
	 *     tabIndex = tab stop index
	 *     alignment = location to store alignment
	 *     location = location to store tab position
	 */
	public void getTab(int tabIndex, out PangoTabAlign alignment, out int location)
	{
		pango_tab_array_get_tab(pangoTabArray, tabIndex, &alignment, &location);
	}

	/**
	 * If non-%NULL, @alignments and @locations are filled with allocated
	 * arrays.
	 *
	 * The arrays are of length [method@Pango.TabArray.get_size].
	 * You must free the returned array.
	 *
	 * Params:
	 *     alignments = location to store an array of tab
	 *         stop alignments
	 *     locations = location to store an array
	 *         of tab positions
	 */
	public void getTabs(out PangoTabAlign* alignments, out int[] locations)
	{
		int* outlocations;

		pango_tab_array_get_tabs(pangoTabArray, &alignments, &outlocations);

		locations = outlocations[0 .. getArrayLength(outlocations)];
	}

	/**
	 * Resizes a tab array.
	 *
	 * You must subsequently initialize any tabs
	 * that were added as a result of growing the array.
	 *
	 * Params:
	 *     newSize = new size of the array
	 */
	public void resize(int newSize)
	{
		pango_tab_array_resize(pangoTabArray, newSize);
	}

	/**
	 * Sets the Unicode character to use as decimal point.
	 *
	 * This is only relevant for tabs with %PANGO_TAB_DECIMAL alignment,
	 * which align content at the first occurrence of the decimal point
	 * character.
	 *
	 * By default, Pango uses the decimal point according
	 * to the current locale.
	 *
	 * Params:
	 *     tabIndex = the index of a tab stop
	 *     decimalPoint = the decimal point to use
	 *
	 * Since: 1.50
	 */
	public void setDecimalPoint(int tabIndex, dchar decimalPoint)
	{
		pango_tab_array_set_decimal_point(pangoTabArray, tabIndex, decimalPoint);
	}

	/**
	 * Sets whether positions in this array are specified in
	 * pixels.
	 *
	 * Params:
	 *     positionsInPixels = whether positions are in pixels
	 *
	 * Since: 1.50
	 */
	public void setPositionsInPixels(bool positionsInPixels)
	{
		pango_tab_array_set_positions_in_pixels(pangoTabArray, positionsInPixels);
	}

	/**
	 * Sets the alignment and location of a tab stop.
	 *
	 * Params:
	 *     tabIndex = the index of a tab stop
	 *     alignment = tab alignment
	 *     location = tab location in Pango units
	 */
	public void setTab(int tabIndex, PangoTabAlign alignment, int location)
	{
		pango_tab_array_set_tab(pangoTabArray, tabIndex, alignment, location);
	}

	/**
	 * Utility function to ensure that the tab stops are in increasing order.
	 *
	 * Since: 1.50
	 */
	public void sort()
	{
		pango_tab_array_sort(pangoTabArray);
	}

	/**
	 * Serializes a `PangoTabArray` to a string.
	 *
	 * No guarantees are made about the format of the string,
	 * it may change between Pango versions.
	 *
	 * The intended use of this function is testing and
	 * debugging. The format is not meant as a permanent
	 * storage format.
	 *
	 * Returns: a newly allocated string
	 *
	 * Since: 1.50
	 */
	public override string toString()
	{
		auto retStr = pango_tab_array_to_string(pangoTabArray);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Deserializes a `PangoTabArray` from a string.
	 *
	 * This is the counterpart to [method@Pango.TabArray.to_string].
	 * See that functions for details about the format.
	 *
	 * Params:
	 *     text = a string
	 *
	 * Returns: a new `PangoTabArray`
	 *
	 * Since: 1.50
	 */
	public static PgTabArray fromString(string text)
	{
		auto __p = pango_tab_array_from_string(Str.toStringz(text));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) __p, true);
	}
}
