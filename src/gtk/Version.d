/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Version
 * strct   = 
 * realStrct=
 * clss    = Version
 * extend  = 
 * prefixes:
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.string
 * structWrap:
 * local aliases:
 */

module gtk.Version;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;

/**
 * Description
 * GTK+ provides version information, primarily useful in configure checks
 * for builds that have a configure script. Applications will not
 * typically use the features described here.
 */
public class Version
{
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Checks that the GTK+ library in use is compatible with the
	 * given version. Generally you would pass in the constants
	 * GTK_MAJOR_VERSION, GTK_MINOR_VERSION, GTK_MICRO_VERSION
	 * as the three arguments to this function; that produces
	 * a check that the library in use is compatible with
	 * the version of GTK+ the application or module was compiled
	 * against.
	 * Compatibility is defined by two things: first the version
	 * of the running library is newer than the version
	 * required_major.required_minor.required_micro. Second
	 * the running library must be binary compatible with the
	 * version required_major.required_minor.required_micro
	 * (same major version.)
	 * This function is primarily for GTK+ modules; the module
	 * can call this function to check that it wasn't loaded
	 * into an incompatible version of GTK+. However, such a
	 * a check isn't completely reliable, since the module may be
	 * linked against an old version of GTK+ and calling the
	 * old version of gtk_check_version(), but still get loaded
	 * into an application using a newer version of GTK+.
	 * required_major:
	 *  the required major version.
	 * required_minor:
	 *  the required major version.
	 * required_micro:
	 *  the required major version.
	 * Returns:
	 *  NULL if the GTK+ library is compatible with the
	 *  given version, or a string describing the version mismatch.
	 *  The returned string is owned by GTK+ and should not be modified
	 *  or freed.
	 */
	public static char[] checkVersion(uint requiredMajor, uint requiredMinor, uint requiredMicro)
	{
		// gchar* gtk_check_version (guint required_major,  guint required_minor,  guint required_micro);
		return std.string.toString(gtk_check_version(requiredMajor, requiredMinor, requiredMicro) );
	}
	
	
	
	
	
	
}
