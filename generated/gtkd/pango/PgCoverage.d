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
private import gobject.ObjectG;
public  import gtkc.pangotypes;
private import gtkd.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The #PangoCoverage structure represents a map from Unicode characters
 * to #PangoCoverageLevel. It is an opaque structure with no public fields.
 */
public class PgCoverage
{
	/** the main Gtk struct */
	protected PangoCoverage* pangoCoverage;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoCoverage* getPgCoverageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoCoverage;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoCoverage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoCoverage* pangoCoverage, bool ownedRef = false)
	{
		this.pangoCoverage = pangoCoverage;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO) && ownedRef )
			pango_coverage_unref(pangoCoverage);
	}


	/**
	 * Copy an existing #PangoCoverage. (This function may now be unnecessary
	 * since we refcount the structure. File a bug if you use it.)
	 *
	 * Returns: the newly allocated #PangoCoverage,
	 *     with a reference count of one, which should be freed
	 *     with pango_coverage_unref().
	 */
	public PgCoverage copy()
	{
		auto p = pango_coverage_copy(pangoCoverage);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p, true);
	}

	/**
	 * Determine whether a particular index is covered by @coverage
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
	 * Params:
	 *     other = another #PangoCoverage
	 */
	public void max(PgCoverage other)
	{
		pango_coverage_max(pangoCoverage, (other is null) ? null : other.getPgCoverageStruct());
	}

	alias doref = ref_;
	/**
	 * Increase the reference count on the #PangoCoverage by one
	 *
	 * Returns: @coverage
	 */
	public PgCoverage ref_()
	{
		auto p = pango_coverage_ref(pangoCoverage);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p);
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
	 * Convert a #PangoCoverage structure into a flat binary format
	 *
	 * Params:
	 *     bytes = location to store result (must be freed with g_free())
	 */
	public void toBytes(out ubyte[] bytes)
	{
		ubyte* outbytes = null;
		int nBytes;

		pango_coverage_to_bytes(pangoCoverage, cast(char**)&outbytes, &nBytes);

		bytes = outbytes[0 .. nBytes];
	}

	/**
	 * Decrease the reference count on the #PangoCoverage by one.
	 * If the result is zero, free the coverage and all associated memory.
	 */
	public void unref()
	{
		pango_coverage_unref(pangoCoverage);
	}

	/**
	 * Convert data generated from pango_coverage_to_bytes() back
	 * to a #PangoCoverage
	 *
	 * Params:
	 *     bytes = binary data
	 *         representing a #PangoCoverage
	 *
	 * Returns: a newly allocated
	 *     #PangoCoverage, or %NULL if the data was invalid.
	 */
	public static PgCoverage fromBytes(char[] bytes)
	{
		auto p = pango_coverage_from_bytes(bytes.ptr, cast(int)bytes.length);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p, true);
	}

	/**
	 * Create a new #PangoCoverage
	 *
	 * Returns: the newly allocated #PangoCoverage,
	 *     initialized to %PANGO_COVERAGE_NONE
	 *     with a reference count of one, which
	 *     should be freed with pango_coverage_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = pango_coverage_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoCoverage*) p);
	}
}
