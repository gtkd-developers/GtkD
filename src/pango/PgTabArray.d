/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = pango
 * outFile = PgTabArray
 * strct   = PangoTabArray
 * realStrct=
 * clss    = PgTabArray
 * extend  = 
 * prefixes:
 * 	- pango_tab_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * structWrap:
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * local aliases:
 */

module pango.PgTabArray;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;private import pango.PgItem;private import pango.PgLayout;private import pango.PgFontDescription;private import pango.PgFontMetrics;private import pango.PgFontFamily;private import pango.PgFontFace;private import pango.PgFontMap;private import pango.PgFontsetSimple;private import pango.PgAttribute;private import pango.PgAttributeList;private import pango.PgLanguage;private import pango.PgLayout;private import pango.PgLayoutIter;private import pango.PgScriptIter;
/**
 * Description
 */
public class PgTabArray
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
	 * initial_size:
	 *  Initial number of tab stops to allocate, can be 0
	 * positions_in_pixels:
	 *  whether positions are in pixel units
	 * Returns:
	 *  the new PangoTabArray
	 */
	public this (int initialSize, int positionsInPixels)
	{
		// PangoTabArray* pango_tab_array_new (gint initial_size,  gboolean positions_in_pixels);
		this(cast(PangoTabArray*)pango_tab_array_new(initialSize, positionsInPixels) );
	}
	
	/**
	 * This is a convenience function that creates a PangoTabArray
	 * and allows you to specify the alignment and position of each
	 * tab stop. You must provide an alignment
	 * and position for size tab stops.
	 * size:
	 *  number of tab stops in the array
	 * positions_in_pixels:
	 *  whether positions are in pixel units
	 * first_alignment:
	 *  alignment of first tab stop
	 * first_position:
	 *  position of first tab stop
	 * ...:
	 *  additional alignment/position pairs
	 * Returns:
	 *  the new PangoTabArray
	 */
	public this (int size, int positionsInPixels, PangoTabAlign firstAlignment, int firstPosition, ... )
	{
		// PangoTabArray* pango_tab_array_new_with_positions  (gint size,  gboolean positions_in_pixels,  PangoTabAlign first_alignment,  gint first_position,  ...);
		this(cast(PangoTabArray*)pango_tab_array_new_with_positions(size, positionsInPixels, firstAlignment, firstPosition) );
	}
	
	/**
	 * Copies a PangoTabArray
	 * src:
	 *  PangoTabArray to copy
	 * Returns:
	 *  the new PangoTabArray.
	 */
	public PangoTabArray* copy()
	{
		// PangoTabArray* pango_tab_array_copy (PangoTabArray *src);
		return pango_tab_array_copy(pangoTabArray);
	}
	
	/**
	 * Frees a tab array and associated resources.
	 * tab_array:
	 *  a PangoTabArray
	 */
	public void free()
	{
		// void pango_tab_array_free (PangoTabArray *tab_array);
		pango_tab_array_free(pangoTabArray);
	}
	
	/**
	 * Gets the number of tab stops in tab_array.
	 * tab_array:
	 *  a PangoTabArray
	 * Returns:
	 *  the number of tab stops in the array.
	 */
	public int getSize()
	{
		// gint pango_tab_array_get_size (PangoTabArray *tab_array);
		return pango_tab_array_get_size(pangoTabArray);
	}
	
	/**
	 * Resizes a tab array. You must subsequently initialize any tabs that
	 * were added as a result of growing the array.
	 * tab_array:
	 *  a PangoTabArray
	 * new_size:
	 *  new size of the array
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
	 * tab_array:
	 *  a PangoTabArray
	 * tab_index:
	 *  the index of a tab stop
	 * alignment:
	 *  tab alignment
	 * location:
	 *  tab location in Pango units
	 */
	public void setTab(int tabIndex, PangoTabAlign alignment, int location)
	{
		// void pango_tab_array_set_tab (PangoTabArray *tab_array,  gint tab_index,  PangoTabAlign alignment,  gint location);
		pango_tab_array_set_tab(pangoTabArray, tabIndex, alignment, location);
	}
	
	/**
	 * Gets the alignment and position of a tab stop.
	 * tab_array:
	 *  a PangoTabArray
	 * tab_index:
	 *  tab stop index
	 * alignment:
	 *  location to store alignment, or NULL
	 * location:
	 *  location to store tab position, or NULL
	 */
	public void getTab(int tabIndex, PangoTabAlign* alignment, int* location)
	{
		// void pango_tab_array_get_tab (PangoTabArray *tab_array,  gint tab_index,  PangoTabAlign *alignment,  gint *location);
		pango_tab_array_get_tab(pangoTabArray, tabIndex, alignment, location);
	}
	
	/**
	 * If non-NULL, alignments and locations are filled with allocated
	 * arrays of length pango_tab_array_get_size(). You must free the
	 * returned array.
	 * tab_array:
	 *  a PangoTabArray
	 * alignments:
	 *  location to store an array of tab stop alignments, or NULL
	 * locations:
	 *  location to store an array of tab positions, or NULL
	 */
	public void getTabs(PangoTabAlign** alignments, int** locations)
	{
		// void pango_tab_array_get_tabs (PangoTabArray *tab_array,  PangoTabAlign **alignments,  gint **locations);
		pango_tab_array_get_tabs(pangoTabArray, alignments, locations);
	}
	
	/**
	 * Returns TRUE if the tab positions are in pixels, FALSE if they are
	 * in Pango units.
	 * tab_array:
	 *  a PangoTabArray
	 * Returns:
	 *  whether positions are in pixels.
	 */
	public int getPositionsInPixels()
	{
		// gboolean pango_tab_array_get_positions_in_pixels  (PangoTabArray *tab_array);
		return pango_tab_array_get_positions_in_pixels(pangoTabArray);
	}
}
