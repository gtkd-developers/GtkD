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


module harfbuzz.variation_t;

private import glib.MemorySlice;
private import glib.Str;
private import harfbuzz.c.functions;
public  import harfbuzz.c.types;
private import linker.Loader;


/**
 * Data type for holding variation data. Registered OpenType
 * variation-axis tags are listed in
 * [OpenType Axis Tag Registry](https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg).
 *
 * Since: 1.4.2
 */
public final class variation_t
{
	/** the main Gtk struct */
	protected hb_variation_t* hb_variation;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public hb_variation_t* getvariation_tStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hb_variation;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)hb_variation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (hb_variation_t* hb_variation, bool ownedRef = false)
	{
		this.hb_variation = hb_variation;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_HARFBUZZ[0]) && ownedRef )
			sliceFree(hb_variation);
	}


	/**
	 * The #hb_tag_t tag of the variation-axis name
	 */
	public @property hb_tag_t tag()
	{
		return hb_variation.tag;
	}

	/** Ditto */
	public @property void tag(hb_tag_t value)
	{
		hb_variation.tag = value;
	}

	/**
	 * The value of the variation axis
	 */
	public @property float value()
	{
		return hb_variation.value;
	}

	/** Ditto */
	public @property void value(float value)
	{
		hb_variation.value = value;
	}

	/**
	 * Converts an #hb_variation_t into a %NULL-terminated string in the format
	 * understood by hb_variation_from_string(). The client in responsible for
	 * allocating big enough size for @buf, 128 bytes is more than enough.
	 *
	 * Params:
	 *     buf = output string
	 *
	 * Since: 1.4.2
	 */
	public void String(out char[] buf)
	{
		hb_variation_to_string(hb_variation, buf.ptr, cast(uint)buf.length);
	}
}
