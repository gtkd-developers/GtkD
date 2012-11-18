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
 * inFile  = pango-Coverage-Maps.html
 * outPack = pango
 * outFile = PgCoverage
 * strct   = PangoCoverage
 * realStrct=
 * ctorStrct=
 * clss    = PgCoverage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_coverage_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- PangoCoverage* -> PgCoverage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgCoverage;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 * Description
 * It is often necessary in Pango to determine if a particular font can
 * represent a particular character, and also how well it can represent
 * that character. The PangoCoverage is a data structure that is used
 * to represent that information.
 */
public class PgCoverage
{
	
	/** the main Gtk struct */
	protected PangoCoverage* pangoCoverage;
	
	
	public PangoCoverage* getPgCoverageStruct()
	{
		return pangoCoverage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoCoverage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoCoverage* pangoCoverage)
	{
		this.pangoCoverage = pangoCoverage;
	}
	
	/**
	 */
	
	/**
	 * Create a new PangoCoverage
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// PangoCoverage * pango_coverage_new (void);
		auto p = pango_coverage_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_coverage_new()");
		}
		this(cast(PangoCoverage*) p);
	}
	
	/**
	 * Increase the reference count on the PangoCoverage by one
	 * Returns: coverage
	 */
	public PgCoverage doref()
	{
		// PangoCoverage * pango_coverage_ref (PangoCoverage *coverage);
		auto p = pango_coverage_ref(pangoCoverage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p);
	}
	
	/**
	 * Decrease the reference count on the PangoCoverage by one.
	 * If the result is zero, free the coverage and all associated memory.
	 */
	public void unref()
	{
		// void pango_coverage_unref (PangoCoverage *coverage);
		pango_coverage_unref(pangoCoverage);
	}
	
	/**
	 * Copy an existing PangoCoverage. (This function may now be unnecessary
	 * since we refcount the structure. File a bug if you use it.)
	 * Returns: the newly allocated PangoCoverage, with a reference count of one, which should be freed with pango_coverage_unref(). [transfer full]
	 */
	public PgCoverage copy()
	{
		// PangoCoverage * pango_coverage_copy (PangoCoverage *coverage);
		auto p = pango_coverage_copy(pangoCoverage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p);
	}
	
	/**
	 * Determine whether a particular index is covered by coverage
	 * Params:
	 * index = the index to check
	 * Returns: the coverage level of coverage for character index_.
	 */
	public PangoCoverageLevel get(int index)
	{
		// PangoCoverageLevel pango_coverage_get (PangoCoverage *coverage,  int index_);
		return pango_coverage_get(pangoCoverage, index);
	}
	
	/**
	 * Set the coverage for each index in coverage to be the max (better)
	 * value of the current coverage for the index and the coverage for
	 * the corresponding index in other.
	 * Params:
	 * other = another PangoCoverage
	 */
	public void max(PgCoverage other)
	{
		// void pango_coverage_max (PangoCoverage *coverage,  PangoCoverage *other);
		pango_coverage_max(pangoCoverage, (other is null) ? null : other.getPgCoverageStruct());
	}
	
	/**
	 * Modify a particular index within coverage
	 * Params:
	 * index = the index to modify
	 * level = the new level for index_
	 */
	public void set(int index, PangoCoverageLevel level)
	{
		// void pango_coverage_set (PangoCoverage *coverage,  int index_,  PangoCoverageLevel level);
		pango_coverage_set(pangoCoverage, index, level);
	}
	
	/**
	 * Convert a PangoCoverage structure into a flat binary format
	 * Params:
	 * bytes = location to store result (must be freed with g_free()). [out][array length=n_bytes][element-type guint8]
	 */
	public void toBytes(out char[] bytes)
	{
		// void pango_coverage_to_bytes (PangoCoverage *coverage,  guchar **bytes,  int *n_bytes);
		guchar* outbytes = null;
		int nBytes;
		
		pango_coverage_to_bytes(pangoCoverage, &outbytes, &nBytes);
		
		bytes = outbytes[0 .. nBytes];
	}
	
	/**
	 * Convert data generated from pango_converage_to_bytes() back
	 * to a PangoCoverage
	 * Params:
	 * bytes = binary data
	 * representing a PangoCoverage. [array length=n_bytes][element-type guint8]
	 * Returns: a newly allocated PangoCoverage, or NULL if the data was invalid. [transfer full]
	 */
	public static PgCoverage fromBytes(char[] bytes)
	{
		// PangoCoverage * pango_coverage_from_bytes (guchar *bytes,  int n_bytes);
		auto p = pango_coverage_from_bytes(bytes.ptr, cast(int) bytes.length);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p);
	}
}
