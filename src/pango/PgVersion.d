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
 * inFile  = pango-Version-Checking.html
 * outPack = pango
 * outFile = PgVersion
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgVersion
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_version_
 * 	- pango_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- pango_version_string
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgMatrix
 * structWrap:
 * 	- PangoMatrix* -> PgMatrix
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgVersion;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgMatrix;




/**
 * Description
 * The capital-letter macros defined here can be used to check the version of
 * Pango at compile-time, and to encode Pango versions into
 * integers.
 * The functions can be used to check the version of the linked Pango library
 * at run-time.
 */
public class PgVersion
{
	
	/**
	 * This is similar to the macro PANGO_VERSION_STRING except that
	 * it returns the version of Pango available at run-time, as opposed to
	 * the version available at compile-time.
	 * Since 1.16
	 * Returns: A string containing the version of Pango library available at run time. The returned string is owned by Pango and should not be modified or freed.
	 */
	public static string strin()
	{
		// const char* pango_version_string (void);
		return Str.toString(pango_version_string());
	}
	
	/**
	 */
	
	/**
	 * This is similar to the macro PANGO_VERSION except that
	 * it returns the encoded version of Pango available at run-time,
	 * as opposed to the version available at compile-time.
	 * A version number can be encoded into an integer using
	 * PANGO_VERSION_ENCODE().
	 * Since 1.16
	 * Returns: The encoded version of Pango library available at run time.
	 */
	public static int versio()
	{
		// int pango_version (void);
		return pango_version();
	}
	
	/**
	 * Checks that the Pango library in use is compatible with the
	 * given version. Generally you would pass in the constants
	 * PANGO_VERSION_MAJOR, PANGO_VERSION_MINOR, PANGO_VERSION_MICRO
	 * as the three arguments to this function; that produces
	 * a check that the library in use at run-time is compatible with
	 * the version of Pango the application or module was compiled against.
	 * Compatibility is defined by two things: first the version
	 * of the running library is newer than the version
	 * required_major.required_minor.required_micro. Second
	 * the running library must be binary compatible with the
	 * version required_major.required_minor.required_micro
	 * (same major version.)
	 * For compile-time version checking use PANGO_VERSION_CHECK().
	 * Since 1.16
	 * Params:
	 * requiredMajor = the required major version.
	 * requiredMinor = the required minor version.
	 * requiredMicro = the required major version.
	 * Returns: NULL if the Pango library is compatible with the given version, or a string describing the version mismatch. The returned string is owned by Pango and should not be modified or freed.
	 */
	public static string check(int requiredMajor, int requiredMinor, int requiredMicro)
	{
		// const char * pango_version_check (int required_major,  int required_minor,  int required_micro);
		return Str.toString(pango_version_check(requiredMajor, requiredMinor, requiredMicro));
	}
}
