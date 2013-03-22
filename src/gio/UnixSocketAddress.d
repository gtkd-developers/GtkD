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
 * inFile  = GUnixSocketAddress.html
 * outPack = gio
 * outFile = UnixSocketAddress
 * strct   = GUnixSocketAddress
 * realStrct=
 * ctorStrct=GSocketAddress
 * clss    = UnixSocketAddress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_socket_address_
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

module gio.UnixSocketAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gio.SocketAddress;

/**
 * Support for UNIX-domain (also known as local) sockets.
 *
 * UNIX domain sockets are generally visible in the filesystem.
 * However, some systems support abstract socket names which are not
 * visible in the filesystem and not affected by the filesystem
 * permissions, visibility, etc. Currently this is only supported
 * under Linux. If you attempt to use abstract sockets on other
 * systems, function calls may return G_IO_ERROR_NOT_SUPPORTED
 * errors. You can use g_unix_socket_address_abstract_names_supported()
 * to see if abstract names are supported.
 *
 * Note that <gio/gunixsocketaddress.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public class UnixSocketAddress : SocketAddress
{
	
	/** the main Gtk struct */
	protected GUnixSocketAddress* gUnixSocketAddress;
	
	
	public GUnixSocketAddress* getUnixSocketAddressStruct()
	{
		return gUnixSocketAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixSocketAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixSocketAddress* gUnixSocketAddress)
	{
		super(cast(GSocketAddress*)gUnixSocketAddress);
		this.gUnixSocketAddress = gUnixSocketAddress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gUnixSocketAddress = cast(GUnixSocketAddress*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GUnixSocketAddress for path.
	 * To create abstract socket addresses, on systems that support that,
	 * use g_unix_socket_address_new_abstract().
	 * Since 2.22
	 * Params:
	 * path = the socket path
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string path)
	{
		// GSocketAddress * g_unix_socket_address_new (const gchar *path);
		auto p = g_unix_socket_address_new(Str.toStringz(path));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_socket_address_new(Str.toStringz(path))");
		}
		this(cast(GUnixSocketAddress*) p);
	}
	
	/**
	 * Warning
	 * g_unix_socket_address_new_abstract is deprecated and should not be used in newly-written code. Use g_unix_socket_address_new_with_type().
	 * Creates a new G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED
	 * GUnixSocketAddress for path.
	 * Params:
	 * path = the abstract name. [array length=path_len][element-type gchar]
	 * pathLen = the length of path, or -1
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string path, int pathLen)
	{
		// GSocketAddress * g_unix_socket_address_new_abstract (const gchar *path,  gint path_len);
		auto p = g_unix_socket_address_new_abstract(Str.toStringz(path), pathLen);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_socket_address_new_abstract(Str.toStringz(path), pathLen)");
		}
		this(cast(GUnixSocketAddress*) p);
	}
	
	/**
	 * Creates a new GUnixSocketAddress of type type with name path.
	 * If type is G_UNIX_SOCKET_ADDRESS_PATH, this is equivalent to
	 * calling g_unix_socket_address_new().
	 * If path_type is G_UNIX_SOCKET_ADDRESS_ABSTRACT, then path_len
	 * bytes of path will be copied to the socket's path, and only those
	 * bytes will be considered part of the name. (If path_len is -1,
	 * then path is assumed to be NUL-terminated.) For example, if path
	 * was "test", then calling g_socket_address_get_native_size() on the
	 * returned socket would return 7 (2 bytes of overhead, 1 byte for the
	 * abstract-socket indicator byte, and 4 bytes for the name "test").
	 * If path_type is G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED, then
	 * path_len bytes of path will be copied to the socket's path, the
	 * rest of the path will be padded with 0 bytes, and the entire
	 * zero-padded buffer will be considered the name. (As above, if
	 * path_len is -1, then path is assumed to be NUL-terminated.) In
	 * this case, g_socket_address_get_native_size() will always return
	 * the full size of a struct sockaddr_un, although
	 * g_unix_socket_address_get_path_len() will still return just the
	 * length of path.
	 * G_UNIX_SOCKET_ADDRESS_ABSTRACT is preferred over
	 * G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED for new programs. Of course,
	 * when connecting to a server created by another process, you must
	 * use the appropriate type corresponding to how that process created
	 * its listening socket.
	 * Since 2.26
	 * Params:
	 * path = the name. [array length=path_len][element-type gchar]
	 * type = a GUnixSocketAddressType
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string path, GUnixSocketAddressType type)
	{
		// GSocketAddress * g_unix_socket_address_new_with_type (const gchar *path,  gint path_len,  GUnixSocketAddressType type);
		auto p = g_unix_socket_address_new_with_type(cast(char*)path.ptr, cast(int) path.length, type);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_socket_address_new_with_type(cast(char*)path.ptr, cast(int) path.length, type)");
		}
		this(cast(GUnixSocketAddress*) p);
	}
	
	/**
	 * Warning
	 * g_unix_socket_address_get_is_abstract is deprecated and should not be used in newly-written code. Use g_unix_socket_address_get_address_type()
	 * Tests if address is abstract.
	 * Since 2.22
	 * Returns: TRUE if the address is abstract, FALSE otherwise
	 */
	public int getIsAbstract()
	{
		// gboolean g_unix_socket_address_get_is_abstract  (GUnixSocketAddress *address);
		return g_unix_socket_address_get_is_abstract(gUnixSocketAddress);
	}
	
	/**
	 * Gets address's type.
	 * Since 2.26
	 * Returns: a GUnixSocketAddressType
	 */
	public GUnixSocketAddressType getAddressType()
	{
		// GUnixSocketAddressType g_unix_socket_address_get_address_type  (GUnixSocketAddress *address);
		return g_unix_socket_address_get_address_type(gUnixSocketAddress);
	}
	
	/**
	 * Gets address's path, or for abstract sockets the "name".
	 * Guaranteed to be zero-terminated, but an abstract socket
	 * may contain embedded zeros, and thus you should use
	 * g_unix_socket_address_get_path_len() to get the true length
	 * of this string.
	 * Since 2.22
	 * Returns: the path for address
	 */
	public string getPath()
	{
		// const char * g_unix_socket_address_get_path (GUnixSocketAddress *address);
		return Str.toString(g_unix_socket_address_get_path(gUnixSocketAddress));
	}
	
	/**
	 * Gets the length of address's path.
	 * For details, see g_unix_socket_address_get_path().
	 * Since 2.22
	 * Returns: the length of the path
	 */
	public gsize getPathLen()
	{
		// gsize g_unix_socket_address_get_path_len (GUnixSocketAddress *address);
		return g_unix_socket_address_get_path_len(gUnixSocketAddress);
	}
	
	/**
	 * Checks if abstract UNIX domain socket names are supported.
	 * Since 2.22
	 * Returns: TRUE if supported, FALSE otherwise
	 */
	public static int abstractNamesSupported()
	{
		// gboolean g_unix_socket_address_abstract_names_supported  (void);
		return g_unix_socket_address_abstract_names_supported();
	}
}
