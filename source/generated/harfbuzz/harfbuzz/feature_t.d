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


module harfbuzz.feature_t;

private import glib.MemorySlice;
private import glib.Str;
private import harfbuzz.c.functions;
public  import harfbuzz.c.types;
private import linker.Loader;


/**
 * The #hb_feature_t is the structure that holds information about requested
 * feature application. The feature will be applied with the given value to all
 * glyphs which are in clusters between @start (inclusive) and @end (exclusive).
 * Setting start to #HB_FEATURE_GLOBAL_START and end to #HB_FEATURE_GLOBAL_END
 * specifies that the feature always applies to the entire buffer.
 */
public final class feature_t
{
	/** the main Gtk struct */
	protected hb_feature_t* hb_feature;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public hb_feature_t* getfeature_tStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hb_feature;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)hb_feature;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (hb_feature_t* hb_feature, bool ownedRef = false)
	{
		this.hb_feature = hb_feature;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_HARFBUZZ[0]) && ownedRef )
			sliceFree(hb_feature);
	}


	/**
	 * The #hb_tag_t tag of the feature
	 */
	public @property hb_tag_t tag()
	{
		return hb_feature.tag;
	}

	/** Ditto */
	public @property void tag(hb_tag_t value)
	{
		hb_feature.tag = value;
	}

	/**
	 * The value of the feature. 0 disables the feature, non-zero (usually
	 * 1) enables the feature.  For features implemented as lookup type 3 (like
	 * 'salt') the @value is a one based index into the alternates.
	 */
	public @property uint value()
	{
		return hb_feature.value;
	}

	/** Ditto */
	public @property void value(uint value)
	{
		hb_feature.value = value;
	}

	/**
	 * the cluster to start applying this feature setting (inclusive).
	 */
	public @property uint start()
	{
		return hb_feature.start;
	}

	/** Ditto */
	public @property void start(uint value)
	{
		hb_feature.start = value;
	}

	/**
	 * the cluster to end applying this feature setting (exclusive).
	 */
	public @property uint end()
	{
		return hb_feature.end;
	}

	/** Ditto */
	public @property void end(uint value)
	{
		hb_feature.end = value;
	}

	/** */
	public static GType getType()
	{
		return hb_gobject_feature_get_type();
	}

	/**
	 * Converts a #hb_feature_t into a %NULL-terminated string in the format
	 * understood by hb_feature_from_string(). The client in responsible for
	 * allocating big enough size for @buf, 128 bytes is more than enough.
	 *
	 * Params:
	 *     buf = output string
	 *
	 * Since: 0.9.5
	 */
	public void String(out char[] buf)
	{
		hb_feature_to_string(hb_feature, buf.ptr, cast(uint)buf.length);
	}
}
