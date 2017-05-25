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


module vte.Version;

private import glib.Str;
private import vte.c.functions;
public  import vte.c.types;
public  import vtec.vtetypes;


/** */
public struct Version
{

	/**
	 * Gets a list of features vte was compiled with.
	 *
	 * Returns: a string with features
	 *
	 * Since: 0.40
	 */
	public static string getFeatures()
	{
		return Str.toString(vte_get_features());
	}

	/**
	 * Returns the major version of the VTE library at runtime.
	 * Contrast this with %VTE_MAJOR_VERSION which represents
	 * the version of the VTE library that the code was compiled
	 * with.
	 *
	 * Returns: the major version
	 *
	 * Since: 0.40
	 */
	public static uint getMajorVersion()
	{
		return vte_get_major_version();
	}

	/**
	 * Returns the micro version of the VTE library at runtime.
	 * Contrast this with %VTE_MICRO_VERSION which represents
	 * the version of the VTE library that the code was compiled
	 * with.
	 *
	 * Returns: the micro version
	 *
	 * Since: 0.40
	 */
	public static uint getMicroVersion()
	{
		return vte_get_micro_version();
	}

	/**
	 * Returns the minor version of the VTE library at runtime.
	 * Contrast this with %VTE_MINOR_VERSION which represents
	 * the version of the VTE library that the code was compiled
	 * with.
	 *
	 * Returns: the minor version
	 *
	 * Since: 0.40
	 */
	public static uint getMinorVersion()
	{
		return vte_get_minor_version();
	}
}
