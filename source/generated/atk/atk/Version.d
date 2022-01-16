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


module atk.Version;

private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;


/** */
public struct Version
{

	/**
	 * Returns the binary age as passed to libtool when building the ATK
	 * library the process is running against.
	 *
	 * Returns: the binary age of the ATK library
	 *
	 * Since: 2.8
	 */
	public static uint getBinaryAge()
	{
		return atk_get_binary_age();
	}

	/**
	 * Returns the interface age as passed to libtool when building the
	 * ATK library the process is running against.
	 *
	 * Returns: the interface age of the ATK library
	 *
	 * Since: 2.8
	 */
	public static uint getInterfaceAge()
	{
		return atk_get_interface_age();
	}

	/**
	 * Returns the major version number of the ATK library.  (e.g. in ATK
	 * version 2.7.4 this is 2.)
	 *
	 * This function is in the library, so it represents the ATK library
	 * your code is running against. In contrast, the #ATK_MAJOR_VERSION
	 * macro represents the major version of the ATK headers you have
	 * included when compiling your code.
	 *
	 * Returns: the major version number of the ATK library
	 *
	 * Since: 2.8
	 */
	public static uint getMajorVersion()
	{
		return atk_get_major_version();
	}

	/**
	 * Returns the micro version number of the ATK library.  (e.g. in ATK
	 * version 2.7.4 this is 4.)
	 *
	 * This function is in the library, so it represents the ATK library
	 * your code is are running against. In contrast, the
	 * #ATK_MICRO_VERSION macro represents the micro version of the ATK
	 * headers you have included when compiling your code.
	 *
	 * Returns: the micro version number of the ATK library
	 *
	 * Since: 2.8
	 */
	public static uint getMicroVersion()
	{
		return atk_get_micro_version();
	}

	/**
	 * Returns the minor version number of the ATK library.  (e.g. in ATK
	 * version 2.7.4 this is 7.)
	 *
	 * This function is in the library, so it represents the ATK library
	 * your code is are running against. In contrast, the
	 * #ATK_MINOR_VERSION macro represents the minor version of the ATK
	 * headers you have included when compiling your code.
	 *
	 * Returns: the minor version number of the ATK library
	 *
	 * Since: 2.8
	 */
	public static uint getMinorVersion()
	{
		return atk_get_minor_version();
	}

	/**
	 * Gets version string for the GUI toolkit implementing ATK for this application.
	 *
	 * Returns: version string for the GUI toolkit implementing ATK for this application
	 */
	public static string getToolkitVersion()
	{
		return Str.toString(atk_get_toolkit_version());
	}

	/**
	 * Gets the current version for ATK.
	 *
	 * Returns: version string for ATK
	 *
	 * Since: 1.20
	 */
	public static string getVersion()
	{
		return Str.toString(atk_get_version());
	}
}
