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


module gio.DesktopAppInfoLookupIF;

private import gio.AppInfoIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.giotypes;


/**
 * #GDesktopAppInfoLookup is an opaque data structure and can only be accessed
 * using the following functions.
 * 
 * Deprecated: The #GDesktopAppInfoLookup interface is deprecated and
 * unused by GIO.
 */
public interface DesktopAppInfoLookupIF{
	/** Get the main Gtk struct */
	public GDesktopAppInfoLookup* getDesktopAppInfoLookupStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_desktop_app_info_lookup_get_type();
	}

	/**
	 * Gets the default application for launching applications
	 * using this URI scheme for a particular #GDesktopAppInfoLookup
	 * implementation.
	 *
	 * The #GDesktopAppInfoLookup interface and this function is used
	 * to implement g_app_info_get_default_for_uri_scheme() backends
	 * in a GIO module. There is no reason for applications to use it
	 * directly. Applications should use g_app_info_get_default_for_uri_scheme().
	 *
	 * Deprecated: The #GDesktopAppInfoLookup interface is deprecated and
	 * unused by GIO.
	 *
	 * Params:
	 *     uriScheme = a string containing a URI scheme.
	 *
	 * Returns: #GAppInfo for given @uri_scheme or
	 *     %NULL on error.
	 */
	public AppInfoIF getDefaultForUriScheme(string uriScheme);
}
