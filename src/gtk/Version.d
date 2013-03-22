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
 * inFile  = gtk3-Feature-Test-Macros.html
 * outPack = gtk
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
 * 	- gtk_
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

module gtk.Version;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * GTK+ provides version information, primarily useful in configure checks
 * for builds that have a configure script. Applications will not typically
 * use the features described here.
 */
public class Version
{
	
	/**
	 */
	
	/**
	 * Returns the major version number of the GTK+ library.
	 * (e.g. in GTK+ version 3.1.5 this is 3.)
	 * This function is in the library, so it represents the GTK+ library
	 * your code is running against. Contrast with the GTK_MAJOR_VERSION
	 * macro, which represents the major version of the GTK+ headers you
	 * have included when compiling your code.
	 * Returns: the major version number of the GTK+ library Since 3.0
	 */
	public static uint getMajorVersion()
	{
		// guint gtk_get_major_version (void);
		return gtk_get_major_version();
	}
	
	/**
	 * Returns the minor version number of the GTK+ library.
	 * (e.g. in GTK+ version 3.1.5 this is 1.)
	 * This function is in the library, so it represents the GTK+ library
	 * your code is are running against. Contrast with the
	 * GTK_MINOR_VERSION macro, which represents the minor version of the
	 * GTK+ headers you have included when compiling your code.
	 * Returns: the minor version number of the GTK+ library Since 3.0
	 */
	public static uint getMinorVersion()
	{
		// guint gtk_get_minor_version (void);
		return gtk_get_minor_version();
	}
	
	/**
	 * Returns the micro version number of the GTK+ library.
	 * (e.g. in GTK+ version 3.1.5 this is 5.)
	 * This function is in the library, so it represents the GTK+ library
	 * your code is are running against. Contrast with the
	 * GTK_MICRO_VERSION macro, which represents the micro version of the
	 * GTK+ headers you have included when compiling your code.
	 * Returns: the micro version number of the GTK+ library Since 3.0
	 */
	public static uint getMicroVersion()
	{
		// guint gtk_get_micro_version (void);
		return gtk_get_micro_version();
	}
	
	/**
	 * Returns the binary age as passed to libtool
	 * when building the GTK+ library the process is running against.
	 * If libtool means nothing to you, don't
	 * worry about it.
	 * Returns: the binary age of the GTK+ library Since 3.0
	 */
	public static uint getBinaryAge()
	{
		// guint gtk_get_binary_age (void);
		return gtk_get_binary_age();
	}
	
	/**
	 * Returns the interface age as passed to libtool
	 * when building the GTK+ library the process is running against.
	 * If libtool means nothing to you, don't
	 * worry about it.
	 * Returns: the interface age of the GTK+ library Since 3.0
	 */
	public static uint getInterfaceAge()
	{
		// guint gtk_get_interface_age (void);
		return gtk_get_interface_age();
	}
	
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
	 * check isn't completely reliable, since the module may be
	 * linked against an old version of GTK+ and calling the
	 * old version of gtk_check_version(), but still get loaded
	 * into an application using a newer version of GTK+.
	 * Params:
	 * requiredMajor = the required major version
	 * requiredMinor = the required minor version
	 * requiredMicro = the required micro version
	 * Returns: NULL if the GTK+ library is compatible with the given version, or a string describing the version mismatch. The returned string is owned by GTK+ and should not be modified or freed.
	 */
	public static string checkVersion(uint requiredMajor, uint requiredMinor, uint requiredMicro)
	{
		// const gchar * gtk_check_version (guint required_major,  guint required_minor,  guint required_micro);
		return Str.toString(gtk_check_version(requiredMajor, requiredMinor, requiredMicro));
	}
}
