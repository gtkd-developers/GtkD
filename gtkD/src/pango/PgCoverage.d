/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = pango-Coverage-Maps.html
 * outPack = pango
 * outFile = PgCoverage
 * strct   = 
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
 * imports:
 * structWrap:
 * local aliases:
 */

module pango.PgCoverage;

private import gtkc.pangotypes;

private import gtkc.pango;


/**
 * Description
 * It is often necessary in Pango to determine if a particular font can
 * represent a particular character, and also how well it can represent
 * that character. The PangoCoverage is a data structure that is used
 * to represent that information.
 */
public class PgCoverage
{
	
	/**
	 */
	
	
	
	
	/**
	 * Create a new PangoCoverage
	 * Returns:
	 *  the newly allocated PangoCoverage,
	 *  initialized to PANGO_COVERAGE_NONE
	 *  with a reference count of one, which
	 *  should be freed with pango_coverage_unref().
	 */
	public static PangoCoverage* newPgCoverage()
	{
		// PangoCoverage* pango_coverage_new (void);
		return pango_coverage_new();
	}
	
	/**
	 * Increase the reference count on the PangoCoverage by one
	 * coverage:
	 *  a PangoCoverage
	 * Returns:
	 *  coverage
	 */
	public static PangoCoverage* ref(PangoCoverage* coverage)
	{
		// PangoCoverage* pango_coverage_ref (PangoCoverage *coverage);
		return pango_coverage_ref(coverage);
	}
	
	/**
	 * Increase the reference count on the PangoCoverage by one.
	 * if the result is zero, free the coverage and all associated memory.
	 * coverage:
	 *  a PangoCoverage
	 */
	public static void unref(PangoCoverage* coverage)
	{
		// void pango_coverage_unref (PangoCoverage *coverage);
		pango_coverage_unref(coverage);
	}
	
	/**
	 * Copy an existing PangoCoverage. (This function may now be unecessary
	 * since we refcount the structure. Mail otaylorredhat.com if you
	 * use it.)
	 * coverage:
	 *  a PangoCoverage
	 * Returns:
	 *  the newly allocated PangoCoverage,
	 *  with a reference count of one, which
	 *  should be freed with pango_coverage_unref().
	 */
	public static PangoCoverage* copy(PangoCoverage* coverage)
	{
		// PangoCoverage* pango_coverage_copy (PangoCoverage *coverage);
		return pango_coverage_copy(coverage);
	}
	
	/**
	 * Determine whether a particular index is covered by coverage
	 * coverage:
	 *  a PangoCoverage
	 * index_:
	 *  the index to check
	 * Returns:
	 *  the coverage level of coverage for character index_.
	 */
	public static PangoCoverageLevel get(PangoCoverage* coverage, int index)
	{
		// PangoCoverageLevel pango_coverage_get (PangoCoverage *coverage,  int index_);
		return pango_coverage_get(coverage, index);
	}
	
	/**
	 * Set the coverage for each index in coverage to be the max (better)
	 * value of the current coverage for the index and the coverage for
	 * the corresponding index in other.
	 * coverage:
	 *  a PangoCoverage
	 * other:
	 *  another PangoCoverage
	 */
	public static void max(PangoCoverage* coverage, PangoCoverage* other)
	{
		// void pango_coverage_max (PangoCoverage *coverage,  PangoCoverage *other);
		pango_coverage_max(coverage, other);
	}
	
	/**
	 * Modify a particular index within coverage
	 * coverage:
	 *  a PangoCoverage
	 * index_:
	 *  the index to modify
	 * level:
	 *  the new level for index_
	 */
	public static void set(PangoCoverage* coverage, int index, PangoCoverageLevel level)
	{
		// void pango_coverage_set (PangoCoverage *coverage,  int index_,  PangoCoverageLevel level);
		pango_coverage_set(coverage, index, level);
	}
	
	/**
	 * Convert a PangoCoverage structure into a flat binary format
	 * coverage:
	 *  a PangoCoverage
	 * bytes:
	 *  location to store result (must be freed with g_free())
	 * n_bytes:
	 *  location to store size of result
	 */
	public static void toBytes(PangoCoverage* coverage, char** bytes, int* nBytes)
	{
		// void pango_coverage_to_bytes (PangoCoverage *coverage,  guchar **bytes,  int *n_bytes);
		pango_coverage_to_bytes(coverage, bytes, nBytes);
	}
	
	/**
	 * Convert data generated from pango_converage_to_bytes() back
	 * to a PangoCoverage
	 * bytes:
	 *  binary data representing a PangoCoverage
	 * n_bytes:
	 *  the size of bytes in bytes
	 * Returns:
	 *  a newly allocated PangoCoverage, or NULL if
	 *  the data was invalid.
	 */
	public static PangoCoverage* fromBytes(char* bytes, int nBytes)
	{
		// PangoCoverage* pango_coverage_from_bytes (guchar *bytes,  int n_bytes);
		return pango_coverage_from_bytes(bytes, nBytes);
	}
}
