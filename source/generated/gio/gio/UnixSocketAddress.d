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


module gio.UnixSocketAddress;

private import gio.SocketAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Support for UNIX-domain (also known as local) sockets.
 * 
 * UNIX domain sockets are generally visible in the filesystem.
 * However, some systems support abstract socket names which are not
 * visible in the filesystem and not affected by the filesystem
 * permissions, visibility, etc. Currently this is only supported
 * under Linux. If you attempt to use abstract sockets on other
 * systems, function calls may return %G_IO_ERROR_NOT_SUPPORTED
 * errors. You can use g_unix_socket_address_abstract_names_supported()
 * to see if abstract names are supported.
 * 
 * Since GLib 2.72, #GUnixSocketAddress is available on all platforms. It
 * requires underlying system support (such as Windows 10 with `AF_UNIX`) at
 * run time.
 * 
 * Before GLib 2.72, `<gio/gunixsocketaddress.h>` belonged to the UNIX-specific
 * GIO interfaces, thus you had to use the `gio-unix-2.0.pc` pkg-config file
 * when using it. This is no longer necessary since GLib 2.72.
 */
public class UnixSocketAddress : SocketAddress
{
	/** the main Gtk struct */
	protected GUnixSocketAddress* gUnixSocketAddress;

	/** Get the main Gtk struct */
	public GUnixSocketAddress* getUnixSocketAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixSocketAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixSocketAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixSocketAddress* gUnixSocketAddress, bool ownedRef = false)
	{
		this.gUnixSocketAddress = gUnixSocketAddress;
		super(cast(GSocketAddress*)gUnixSocketAddress, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_unix_socket_address_get_type();
	}

	/**
	 * Creates a new #GUnixSocketAddress for @path.
	 *
	 * To create abstract socket addresses, on systems that support that,
	 * use g_unix_socket_address_new_abstract().
	 *
	 * Params:
	 *     path = the socket path
	 *
	 * Returns: a new #GUnixSocketAddress
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path)
	{
		auto __p = g_unix_socket_address_new(Str.toStringz(path));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GUnixSocketAddress*) __p, true);
	}

	/**
	 * Creates a new #GUnixSocketAddress of type @type with name @path.
	 *
	 * If @type is %G_UNIX_SOCKET_ADDRESS_PATH, this is equivalent to
	 * calling g_unix_socket_address_new().
	 *
	 * If @type is %G_UNIX_SOCKET_ADDRESS_ANONYMOUS, @path and @path_len will be
	 * ignored.
	 *
	 * If @path_type is %G_UNIX_SOCKET_ADDRESS_ABSTRACT, then @path_len
	 * bytes of @path will be copied to the socket's path, and only those
	 * bytes will be considered part of the name. (If @path_len is -1,
	 * then @path is assumed to be NUL-terminated.) For example, if @path
	 * was "test", then calling g_socket_address_get_native_size() on the
	 * returned socket would return 7 (2 bytes of overhead, 1 byte for the
	 * abstract-socket indicator byte, and 4 bytes for the name "test").
	 *
	 * If @path_type is %G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED, then
	 * @path_len bytes of @path will be copied to the socket's path, the
	 * rest of the path will be padded with 0 bytes, and the entire
	 * zero-padded buffer will be considered the name. (As above, if
	 * @path_len is -1, then @path is assumed to be NUL-terminated.) In
	 * this case, g_socket_address_get_native_size() will always return
	 * the full size of a `struct sockaddr_un`, although
	 * g_unix_socket_address_get_path_len() will still return just the
	 * length of @path.
	 *
	 * %G_UNIX_SOCKET_ADDRESS_ABSTRACT is preferred over
	 * %G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED for new programs. Of course,
	 * when connecting to a server created by another process, you must
	 * use the appropriate type corresponding to how that process created
	 * its listening socket.
	 *
	 * Params:
	 *     path = the name
	 *     type = a #GUnixSocketAddressType
	 *
	 * Returns: a new #GUnixSocketAddress
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path, GUnixSocketAddressType type)
	{
		auto __p = g_unix_socket_address_new_with_type(Str.toStringz(path), cast(int)path.length, type);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_type");
		}

		this(cast(GUnixSocketAddress*) __p, true);
	}

	/**
	 * Checks if abstract UNIX domain socket names are supported.
	 *
	 * Returns: %TRUE if supported, %FALSE otherwise
	 *
	 * Since: 2.22
	 */
	public static bool abstractNamesSupported()
	{
		return g_unix_socket_address_abstract_names_supported() != 0;
	}

	/**
	 * Gets @address's type.
	 *
	 * Returns: a #GUnixSocketAddressType
	 *
	 * Since: 2.26
	 */
	public GUnixSocketAddressType getAddressType()
	{
		return g_unix_socket_address_get_address_type(gUnixSocketAddress);
	}

	/**
	 * Tests if @address is abstract.
	 *
	 * Deprecated: Use g_unix_socket_address_get_address_type()
	 *
	 * Returns: %TRUE if the address is abstract, %FALSE otherwise
	 *
	 * Since: 2.22
	 */
	public bool getIsAbstract()
	{
		return g_unix_socket_address_get_is_abstract(gUnixSocketAddress) != 0;
	}

	/**
	 * Gets @address's path, or for abstract sockets the "name".
	 *
	 * Guaranteed to be zero-terminated, but an abstract socket
	 * may contain embedded zeros, and thus you should use
	 * g_unix_socket_address_get_path_len() to get the true length
	 * of this string.
	 *
	 * Returns: the path for @address
	 *
	 * Since: 2.22
	 */
	public string getPath()
	{
		return Str.toString(g_unix_socket_address_get_path(gUnixSocketAddress));
	}

	/**
	 * Gets the length of @address's path.
	 *
	 * For details, see g_unix_socket_address_get_path().
	 *
	 * Returns: the length of the path
	 *
	 * Since: 2.22
	 */
	public size_t getPathLen()
	{
		return g_unix_socket_address_get_path_len(gUnixSocketAddress);
	}
}
