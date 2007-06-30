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
 * inFile  = glib-Version-Information.html
 * outPack = glib
 * outFile = GLib
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
 * 	- glib_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.GLib;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * GLib provides version information, primarily useful in configure checks
 * for builds that have a configure script. Applications will not
 * typically use the features described here.
 */
public class Version
{
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Checks that the GLib library in use is compatible with the
	 * given version. Generally you would pass in the constants
	 * GLIB_MAJOR_VERSION, GLIB_MINOR_VERSION, GLIB_MICRO_VERSION
	 * as the three arguments to this function; that produces
	 * a check that the library in use is compatible with
	 * the version of GLib the application or module was compiled
	 * against.
	 * Compatibility is defined by two things: first the version
	 * of the running library is newer than the version
	 * required_major.required_minor.required_micro. Second
	 * the running library must be binary compatible with the
	 * version required_major.required_minor.required_micro
	 * (same major version.)
	 * required_major:
	 *  the required major version.
	 * required_minor:
	 *  the required minor version.
	 * required_micro:
	 *  the required micro version.
	 * Returns:
	 *  NULL if the GLib library is compatible with the
	 *  given version, or a string describing the version mismatch.
	 *  The returned string is owned by GLib and must not be modified
	 *  or freed.
	 * Since 2.6
	 */
	public static char[] checkVersion(uint requiredMajor, uint requiredMinor, uint requiredMicro)
	{
		// const gchar* glib_check_version (guint required_major,  guint required_minor,  guint required_micro);
		return Str.toString(glib_check_version(requiredMajor, requiredMinor, requiredMicro) );
	}
	
	
	
	
}
