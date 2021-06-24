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


module gio.Vfs;

private import gio.FileIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Entry point for using GIO functionality.
 */
public class Vfs : ObjectG
{
	/** the main Gtk struct */
	protected GVfs* gVfs;

	/** Get the main Gtk struct */
	public GVfs* getVfsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gVfs;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVfs;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GVfs* gVfs, bool ownedRef = false)
	{
		this.gVfs = gVfs;
		super(cast(GObject*)gVfs, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_vfs_get_type();
	}

	/**
	 * Gets the default #GVfs for the system.
	 *
	 * Returns: a #GVfs, which will be the local
	 *     file system #GVfs if no other implementation is available.
	 */
	public static Vfs getDefault()
	{
		auto __p = g_vfs_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vfs)(cast(GVfs*) __p);
	}

	/**
	 * Gets the local #GVfs for the system.
	 *
	 * Returns: a #GVfs.
	 */
	public static Vfs getLocal()
	{
		auto __p = g_vfs_get_local();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Vfs)(cast(GVfs*) __p);
	}

	/**
	 * Gets a #GFile for @path.
	 *
	 * Params:
	 *     path = a string containing a VFS path.
	 *
	 * Returns: a #GFile.
	 *     Free the returned object with g_object_unref().
	 */
	public FileIF getFileForPath(string path)
	{
		auto __p = g_vfs_get_file_for_path(gVfs, Str.toStringz(path));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/**
	 * Gets a #GFile for @uri.
	 *
	 * This operation never fails, but the returned object
	 * might not support any I/O operation if the URI
	 * is malformed or if the URI scheme is not supported.
	 *
	 * Params:
	 *     uri = a string containing a URI
	 *
	 * Returns: a #GFile.
	 *     Free the returned object with g_object_unref().
	 */
	public FileIF getFileForUri(string uri)
	{
		auto __p = g_vfs_get_file_for_uri(gVfs, Str.toStringz(uri));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/**
	 * Gets a list of URI schemes supported by @vfs.
	 *
	 * Returns: a %NULL-terminated array of strings.
	 *     The returned array belongs to GIO and must
	 *     not be freed or modified.
	 */
	public string[] getSupportedUriSchemes()
	{
		return Str.toStringArray(g_vfs_get_supported_uri_schemes(gVfs));
	}

	/**
	 * Checks if the VFS is active.
	 *
	 * Returns: %TRUE if construction of the @vfs was successful
	 *     and it is now active.
	 */
	public bool isActive()
	{
		return g_vfs_is_active(gVfs) != 0;
	}

	/**
	 * This operation never fails, but the returned object might
	 * not support any I/O operations if the @parse_name cannot
	 * be parsed by the #GVfs module.
	 *
	 * Params:
	 *     parseName = a string to be parsed by the VFS module.
	 *
	 * Returns: a #GFile for the given @parse_name.
	 *     Free the returned object with g_object_unref().
	 */
	public FileIF parseName(string parseName)
	{
		auto __p = g_vfs_parse_name(gVfs, Str.toStringz(parseName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/**
	 * Registers @uri_func and @parse_name_func as the #GFile URI and parse name
	 * lookup functions for URIs with a scheme matching @scheme.
	 * Note that @scheme is registered only within the running application, as
	 * opposed to desktop-wide as it happens with GVfs backends.
	 *
	 * When a #GFile is requested with an URI containing @scheme (e.g. through
	 * g_file_new_for_uri()), @uri_func will be called to allow a custom
	 * constructor. The implementation of @uri_func should not be blocking, and
	 * must not call g_vfs_register_uri_scheme() or g_vfs_unregister_uri_scheme().
	 *
	 * When g_file_parse_name() is called with a parse name obtained from such file,
	 * @parse_name_func will be called to allow the #GFile to be created again. In
	 * that case, it's responsibility of @parse_name_func to make sure the parse
	 * name matches what the custom #GFile implementation returned when
	 * g_file_get_parse_name() was previously called. The implementation of
	 * @parse_name_func should not be blocking, and must not call
	 * g_vfs_register_uri_scheme() or g_vfs_unregister_uri_scheme().
	 *
	 * It's an error to call this function twice with the same scheme. To unregister
	 * a custom URI scheme, use g_vfs_unregister_uri_scheme().
	 *
	 * Params:
	 *     scheme = an URI scheme, e.g. "http"
	 *     uriFunc = a #GVfsFileLookupFunc
	 *     uriData = custom data passed to be passed to @uri_func, or %NULL
	 *     uriDestroy = function to be called when unregistering the
	 *         URI scheme, or when @vfs is disposed, to free the resources used
	 *         by the URI lookup function
	 *     parseNameFunc = a #GVfsFileLookupFunc
	 *     parseNameData = custom data passed to be passed to
	 *         @parse_name_func, or %NULL
	 *     parseNameDestroy = function to be called when unregistering the
	 *         URI scheme, or when @vfs is disposed, to free the resources used
	 *         by the parse name lookup function
	 *
	 * Returns: %TRUE if @scheme was successfully registered, or %FALSE if a handler
	 *     for @scheme already exists.
	 *
	 * Since: 2.50
	 */
	public bool registerUriScheme(string scheme, GVfsFileLookupFunc uriFunc, void* uriData, GDestroyNotify uriDestroy, GVfsFileLookupFunc parseNameFunc, void* parseNameData, GDestroyNotify parseNameDestroy)
	{
		return g_vfs_register_uri_scheme(gVfs, Str.toStringz(scheme), uriFunc, uriData, uriDestroy, parseNameFunc, parseNameData, parseNameDestroy) != 0;
	}

	/**
	 * Unregisters the URI handler for @scheme previously registered with
	 * g_vfs_register_uri_scheme().
	 *
	 * Params:
	 *     scheme = an URI scheme, e.g. "http"
	 *
	 * Returns: %TRUE if @scheme was successfully unregistered, or %FALSE if a
	 *     handler for @scheme does not exist.
	 *
	 * Since: 2.50
	 */
	public bool unregisterUriScheme(string scheme)
	{
		return g_vfs_unregister_uri_scheme(gVfs, Str.toStringz(scheme)) != 0;
	}
}
