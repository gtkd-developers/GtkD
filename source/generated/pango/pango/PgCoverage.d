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


module pango.PgCoverage;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoCoverage` structure is a map from Unicode characters
 * to [enum@Pango.CoverageLevel] values.
 * 
 * It is often necessary in Pango to determine if a particular
 * font can represent a particular character, and also how well
 * it can represent that character. The `PangoCoverage` is a data
 * structure that is used to represent that information. It is an
 * opaque structure with no public fields.
 */
public class PgCoverage : ObjectG
{
	/** the main Gtk struct */
	protected PangoCoverage* pangoCoverage;

	/** Get the main Gtk struct */
	public PangoCoverage* getPgCoverageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoCoverage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoCoverage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoCoverage* pangoCoverage, bool ownedRef = false)
	{
		this.pangoCoverage = pangoCoverage;
		super(cast(GObject*)pangoCoverage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_coverage_get_type();
	}

	/**
	 * Create a new `PangoCoverage`
	 *
	 * Returns: the newly allocated `PangoCoverage`, initialized
	 *     to %PANGO_COVERAGE_NONE with a reference count of one, which
	 *     should be freed with [method@Pango.Coverage.unref].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_coverage_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoCoverage*) __p, true);
	}

	/**
	 * Convert data generated from [method@Pango.Coverage.to_bytes]
	 * back to a `PangoCoverage`.
	 *
	 * Deprecated: This returns %NULL
	 *
	 * Params:
	 *     bytes = binary data
	 *         representing a `PangoCoverage`
	 *
	 * Returns: a newly allocated `PangoCoverage`
	 */
	public static PgCoverage fromBytes(char[] bytes)
	{
		auto __p = pango_coverage_from_bytes(bytes.ptr, cast(int)bytes.length);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) __p, true);
	}

	/**
	 * Copy an existing `PangoCoverage`.
	 *
	 * Returns: the newly allocated `PangoCoverage`,
	 *     with a reference count of one, which should be freed with
	 *     [method@Pango.Coverage.unref].
	 */
	public PgCoverage copy()
	{
		auto __p = pango_coverage_copy(pangoCoverage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) __p, true);
	}

	/**
	 * Determine whether a particular index is covered by @coverage.
	 *
	 * Params:
	 *     index = the index to check
	 *
	 * Returns: the coverage level of @coverage for character @index_.
	 */
	public PangoCoverageLevel get(int index)
	{
		return pango_coverage_get(pangoCoverage, index);
	}

	/**
	 * Set the coverage for each index in @coverage to be the max (better)
	 * value of the current coverage for the index and the coverage for
	 * the corresponding index in @other.
	 *
	 * Deprecated: This function does nothing
	 *
	 * Params:
	 *     other = another `PangoCoverage`
	 */
	public void max(PgCoverage other)
	{
		pango_coverage_max(pangoCoverage, (other is null) ? null : other.getPgCoverageStruct());
	}

	alias doref = ref_;
	/**
	 * Increase the reference count on the `PangoCoverage` by one.
	 *
	 * Deprecated: Use g_object_ref instead
	 *
	 * Returns: @coverage
	 */
	public override PgCoverage ref_()
	{
		auto __p = pango_coverage_ref(pangoCoverage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) __p, true);
	}

	/**
	 * Modify a particular index within @coverage
	 *
	 * Params:
	 *     index = the index to modify
	 *     level = the new level for @index_
	 */
	public void set(int index, PangoCoverageLevel level)
	{
		pango_coverage_set(pangoCoverage, index, level);
	}

	/**
	 * Convert a `PangoCoverage` structure into a flat binary format.
	 *
	 * Deprecated: This returns %NULL
	 *
	 * Params:
	 *     bytes = location to store result (must be freed with g_free())
	 */
	public void toBytes(out ubyte[] bytes)
	{
		ubyte* outbytes;
		int nBytes;

		pango_coverage_to_bytes(pangoCoverage, cast(char**)&outbytes, &nBytes);

		bytes = outbytes[0 .. nBytes];
	}

	/**
	 * Decrease the reference count on the `PangoCoverage` by one.
	 *
	 * If the result is zero, free the coverage and all associated memory.
	 *
	 * Deprecated: Use g_object_unref instead
	 */
	public override void unref()
	{
		pango_coverage_unref(pangoCoverage);
	}
}
