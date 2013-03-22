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
 * inFile  = cairo-Version-Information.html
 * outPack = cairo
 * outFile = Version
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Version
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Version;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Cairo has a three-part version number scheme. In this scheme, we use
 * even vs. odd numbers to distinguish fixed points in the software
 * vs. in-progress development, (such as from git instead of a tar file,
 * or as a "snapshot" tar file as opposed to a "release" tar file).
 *
 * $(DDOC_COMMENT example)
 *
 * Here are a few examples of versions that one might see.
 *
 * $(DDOC_COMMENT example)
 *
 * Compatibility
 *
 * The API/ABI compatibility guarantees for various versions are as
 * follows. First, let's assume some cairo-using application code that is
 * successfully using the API/ABI "from" one version of cairo. Then let's
 * ask the question whether this same code can be moved "to" the API/ABI
 * of another version of cairo.
 *
 * Moving from a release to any later version (release, snapshot,
 * development) is always guaranteed to provide compatibility.
 *
 * Moving from a snapshot to any later version is not guaranteed to
 * provide compatibility, since snapshots may introduce new API that ends
 * up being removed before the next release.
 *
 * Moving from an in-development version (odd micro component) to any
 * later version is not guaranteed to provide compatibility. In fact,
 * there's not even a guarantee that the code will even continue to work
 * with the same in-development version number. This is because these
 * numbers don't correspond to any fixed state of the software, but
 * rather the many states between snapshots and releases.
 *
 * <hr>
 *
 * Examining the version
 *
 * Cairo provides the ability to examine the version at either
 * compile-time or run-time and in both a human-readable form as well as
 * an encoded form suitable for direct comparison. Cairo also provides the
 * macro CAIRO_VERSION_ENCODE() to perform the encoding.
 *
 * $(DDOC_COMMENT example)
 *
 * For example, checking that the cairo version is greater than or equal
 * to 1.0.0 could be achieved at compile-time or run-time as follows:
 *
 * $(DDOC_COMMENT example)
 */
public class Version
{
	
	/**
	 */
	
	/**
	 * Returns the version of the cairo library encoded in a single
	 * integer as per CAIRO_VERSION_ENCODE. The encoding ensures that
	 * later versions compare greater than earlier versions.
	 * A run-time comparison to check that cairo's version is greater than
	 * Returns: the encoded version.
	 */
	public static int cairoVersion()
	{
		// int cairo_version (void);
		return cairo_version();
	}
	
	/**
	 * Returns the version of the cairo library as a human-readable string
	 * of the form "X.Y.Z".
	 * See also cairo_version() as well as the compile-time equivalents
	 * CAIRO_VERSION_STRING and CAIRO_VERSION.
	 * Returns: a string containing the version.
	 */
	public static string cairoVersionString()
	{
		// const char * cairo_version_string (void);
		return Str.toString(cairo_version_string());
	}
}
