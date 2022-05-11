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


module harfbuzz.ot_math_glyph_part_t;

private import glib.MemorySlice;
private import harfbuzz.c.functions;
public  import harfbuzz.c.types;
private import linker.Loader;


/**
 * Data type to hold information for a "part" component of a math-variant glyph.
 * Large variants for stretchable math glyphs (such as parentheses) can be constructed
 * on the fly from parts.
 *
 * Since: 1.3.3
 */
public final class ot_math_glyph_part_t
{
	/** the main Gtk struct */
	protected hb_ot_math_glyph_part_t* hb_ot_math_glyph_part;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public hb_ot_math_glyph_part_t* getot_math_glyph_part_tStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hb_ot_math_glyph_part;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)hb_ot_math_glyph_part;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (hb_ot_math_glyph_part_t* hb_ot_math_glyph_part, bool ownedRef = false)
	{
		this.hb_ot_math_glyph_part = hb_ot_math_glyph_part;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_HARFBUZZ[0]) && ownedRef )
			sliceFree(hb_ot_math_glyph_part);
	}


	/**
	 * The glyph index of the variant part
	 */
	public @property hb_codepoint_t glyph()
	{
		return hb_ot_math_glyph_part.glyph;
	}

	/** Ditto */
	public @property void glyph(hb_codepoint_t value)
	{
		hb_ot_math_glyph_part.glyph = value;
	}

	/**
	 * The length of the connector on the starting side of the variant part
	 */
	public @property hb_position_t startConnectorLength()
	{
		return hb_ot_math_glyph_part.startConnectorLength;
	}

	/** Ditto */
	public @property void startConnectorLength(hb_position_t value)
	{
		hb_ot_math_glyph_part.startConnectorLength = value;
	}

	/**
	 * The length of the connector on the ending side of the variant part
	 */
	public @property hb_position_t endConnectorLength()
	{
		return hb_ot_math_glyph_part.endConnectorLength;
	}

	/** Ditto */
	public @property void endConnectorLength(hb_position_t value)
	{
		hb_ot_math_glyph_part.endConnectorLength = value;
	}

	/**
	 * The total advance of the part
	 */
	public @property hb_position_t fullAdvance()
	{
		return hb_ot_math_glyph_part.fullAdvance;
	}

	/** Ditto */
	public @property void fullAdvance(hb_position_t value)
	{
		hb_ot_math_glyph_part.fullAdvance = value;
	}

	/**
	 * #hb_ot_math_glyph_part_flags_t flags for the part
	 */
	public @property hb_ot_math_glyph_part_flags_t flags()
	{
		return hb_ot_math_glyph_part.flags;
	}

	/** Ditto */
	public @property void flags(hb_ot_math_glyph_part_flags_t value)
	{
		hb_ot_math_glyph_part.flags = value;
	}

	/** */
	public static GType getType()
	{
		return hb_gobject_ot_math_glyph_part_get_type();
	}
}
