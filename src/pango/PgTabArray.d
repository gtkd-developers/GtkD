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

/*
 * Conversion parameters:
 * inFile  = pango-Tab-Stops.html
 * outPack = pango
 * outFile = PgTabArray
 * strct   = PangoTabArray
 * realStrct=
 * ctorStrct=
 * clss    = PgTabArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_tab_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- PangoTabArray* -> PgTabArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgTabArray;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gobject.Boxed;

/**
 * Functions in this section are used to deal with PangoTabArray objects
 * that can be used to set tab stop positions in a PangoLayout.
 */
public class PgTabArray : Boxed
{
	
	/** the main Gtk struct */
	protected PangoTabArray* pangoTabArray;
	
	
	public PangoTabArray* getPgTabArrayStruct()
	{
		return pangoTabArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoTabArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoTabArray* pangoTabArray)
	{
		this.pangoTabArray = pangoTabArray;
	}
	
	/**
	 */
	
	/**
	 * Creates an array of initial_size tab stops. Tab stops are specified in
	 * pixel units if positions_in_pixels is TRUE, otherwise in Pango
	 * units. All stops are initially at position 0.
	 * Params:
	 * initialSize = Initial number of tab stops to allocate, can be 0
	 * positionsInPixels = whether positions are in pixel units
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int initialSize, int positionsInPixels)
	{
		// PangoTabArray * pango_tab_array_new (gint initial_size,  gboolean positions_in_pixels);
		auto p = pango_tab_array_new(initialSize, positionsInPixels);
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_tab_array_new(initialSize, positionsInPixels)");
		}
		this(cast(PangoTabArray*) p);
	}
	
	/**
	 * Copies a PangoTabArray
	 * Returns: the newly allocated PangoTabArray, which should be freed with pango_tab_array_free().
	 */
	public PgTabArray copy()
	{
		// PangoTabArray * pango_tab_array_copy (PangoTabArray *src);
		auto p = pango_tab_array_copy(pangoTabArray);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgTabArray)(cast(PangoTabArray*) p);
	}
	
	/**
	 * Frees a tab array and associated resources.
	 */
	public void free()
	{
		// void pango_tab_array_free (PangoTabArray *tab_array);
		pango_tab_array_free(pangoTabArray);
	}
	
	/**
	 * Gets the number of tab stops in tab_array.
	 * Returns: the number of tab stops in the array.
	 */
	public int getSize()
	{
		// gint pango_tab_array_get_size (PangoTabArray *tab_array);
		return pango_tab_array_get_size(pangoTabArray);
	}
	
	/**
	 * Resizes a tab array. You must subsequently initialize any tabs that
	 * were added as a result of growing the array.
	 * Params:
	 * newSize = new size of the array
	 */
	public void resize(int newSize)
	{
		// void pango_tab_array_resize (PangoTabArray *tab_array,  gint new_size);
		pango_tab_array_resize(pangoTabArray, newSize);
	}
	
	/**
	 * Sets the alignment and location of a tab stop.
	 * alignment must always be PANGO_TAB_LEFT in the current
	 * implementation.
	 * Params:
	 * tabIndex = the index of a tab stop
	 * alignment = tab alignment
	 * location = tab location in Pango units
	 */
	public void setTab(int tabIndex, PangoTabAlign alignment, int location)
	{
		// void pango_tab_array_set_tab (PangoTabArray *tab_array,  gint tab_index,  PangoTabAlign alignment,  gint location);
		pango_tab_array_set_tab(pangoTabArray, tabIndex, alignment, location);
	}
	
	/**
	 * Gets the alignment and position of a tab stop.
	 * Params:
	 * tabIndex = tab stop index
	 * alignment = location to store alignment, or NULL. [out][allow-none]
	 * location = location to store tab position, or NULL. [out][allow-none]
	 */
	public void getTab(int tabIndex, out PangoTabAlign alignment, out int location)
	{
		// void pango_tab_array_get_tab (PangoTabArray *tab_array,  gint tab_index,  PangoTabAlign *alignment,  gint *location);
		pango_tab_array_get_tab(pangoTabArray, tabIndex, &alignment, &location);
	}
	
	/**
	 * If non-NULL, alignments and locations are filled with allocated
	 * arrays of length pango_tab_array_get_size(). You must free the
	 * returned array.
	 * Params:
	 * alignments = location to store an array of tab
	 * stop alignments, or NULL. [out][allow-none]
	 * locations = location to store an array
	 * of tab positions, or NULL. [out][allow-none][array]
	 */
	public void getTabs(out PangoTabAlign[] alignments, out int[] locations)
	{
		// void pango_tab_array_get_tabs (PangoTabArray *tab_array,  PangoTabAlign **alignments,  gint **locations);
		PangoTabAlign* outalignments = null;
		gint* outlocations = null;
		
		pango_tab_array_get_tabs(pangoTabArray, &outalignments, &outlocations);
		
		alignments = outalignments[0 .. getSize()];
		locations = outlocations[0 .. getSize()];
	}
	
	/**
	 * Returns TRUE if the tab positions are in pixels, FALSE if they are
	 * in Pango units.
	 * Returns: whether positions are in pixels.
	 */
	public int getPositionsInPixels()
	{
		// gboolean pango_tab_array_get_positions_in_pixels  (PangoTabArray *tab_array);
		return pango_tab_array_get_positions_in_pixels(pangoTabArray);
	}
}
