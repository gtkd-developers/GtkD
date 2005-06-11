/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dango.TabArray;

private import def.Types;
private import def.Constants;
private import dui.OGTK;
private import lib.pango;

/**
 * Structures for storing Tab Stops
 */
public:
class TabArray : OGTK
{
	
	public:
	
	PangoTabArray* pangoTabArray;
	
	/**
	 * Gets the GTK structure
	 * @return a pointer the the pangoTabArray structure
	 */
	void* gtk()
	{
		return pangoTabArray;
	}

	/**
	 * Gets out GTK struct
	 * @return a PangoTabArray
	 */
	PangoTabArray* pngT()
	{
		return pangoTabArray;
	}
	
	/**
	 * Creates a new pango tab array from a gtk struct
	 * @param pangoTabArray struct
	 */
	this(PangoTabArray* pangoTabArray)
	{
		this.pangoTabArray = pangoTabArray;
	}
	
	/**
	 * Creates a new pango tab array
	 * @param initial_size
	 * @param pangoTabArray positions_in_pixels
	 */
	this(gint initial_size, bit positions_in_pixels)
	{
		this(pango_tab_array_new(initial_size, positions_in_pixels));
	}
	
	//PangoTabArray * pango_tab_array_new_with_positions(gint size, gboolean positions_in_pixels, PangoTabAlign first_alignment, gint first_position, ...);
	
	/**
	 * Gets the type for this class
	 */
	GType getType()
	{
		return pango_tab_array_get_type();
	}
	
	/**
	 * copy constructor
	 * @param src the PangoTabArray to copy
	 */
	this(TabArray src)
	{
		this(pango_tab_array_copy(src.pngT()));
	}

	/**
	 * unsures the gtk structure is released
	 */
	~this()
	{
		free();
	}
	
	/**
	 * Frees the gtk structure called by the dtor
	 */
	void free()
	{
		if ( pngT() !is  null )
		{
			pango_tab_array_free(pngT());
		}
		pangoTabArray = null;
	}

	/**
	 * getSize
	 * @return 
	 */
	gint getSize()
	{
		return pango_tab_array_get_size(pngT());
	}

	/**
	 * resize
	 * @param new_size
	 */
	void resize(gint new_size)
	{
		pango_tab_array_resize(pngT(), new_size);
	}

	/**
	 * setTab
	 * @param tab_index
	 * @param alignment
	 * @param location
	 */
	void setTab(gint tab_index, PangoTabAlign alignment, gint location)
	{
		pango_tab_array_set_tab(pngT(), tab_index, alignment, location);
	}

	/**
	 * getTab
	 * @param tab_index
	 * @param alignment
	 * @param location
	 */
	void getTab(gint tab_index, PangoTabAlign * alignment, gint * location)
	{
		pango_tab_array_get_tab(pngT(), tab_index, alignment, location);
	}

	/**
	 * getTabs
	 * @param alignments
	 * @param locations
	 */
	void getTabs(PangoTabAlign * *alignments, gint * *locations)
	{
		pango_tab_array_get_tabs(pngT(), alignments, locations);
	}

	/**
	 * getPositionsInPixels
	 * @return true if the posisionts are expressed in pixels
	 */
	bit getPositionsInPixels()
	{
		return pango_tab_array_get_positions_in_pixels(pngT()) == 0 ? false : true;
	}
	
}
