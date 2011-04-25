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


private import glib.Str;



private import gio.SocketAddress;

/**
 * Description
 * Support for UNIX-domain (aka local) sockets.
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
		if(gUnixSocketAddress is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gUnixSocketAddress);
		if( ptr !is null )
		{
			this = cast(UnixSocketAddress)ptr;
			return;
		}
		super(cast(GSocketAddress*)gUnixSocketAddress);
		this.gUnixSocketAddress = gUnixSocketAddress;
	}
	
	protected void setStruct(GObject* obj)
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
	 * Creates a new abstract GUnixSocketAddress for path.
	 * Unix domain sockets are generally visible in the filesystem. However, some
	 * systems support abstract socket name which are not visible in the
	 * filesystem and not affected by the filesystem permissions, visibility, etc.
	 * Note that not all systems (really only Linux) support abstract
	 * socket names, so if you use them on other systems function calls may
	 * return G_IO_ERROR_NOT_SUPPORTED errors. You can use
	 * g_unix_socket_address_abstract_names_supported() to see if abstract
	 * names are supported.
	 * If path_len is -1 then path is assumed to be a zero terminated
	 * string (although in general abstract names need not be zero terminated
	 * and can have embedded nuls). All bytes after path_len up to the max size
	 * of an abstract unix domain name is filled with zero bytes.
	 * Since 2.22
	 * Params:
	 * path = the abstract name
	 * pathLen = the length of path, or -1
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string path, int pathLen)
	{
		// GSocketAddress * g_unix_socket_address_new_abstract (const gchar *path,  int path_len);
		auto p = g_unix_socket_address_new_abstract(Str.toStringz(path), pathLen);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_socket_address_new_abstract(Str.toStringz(path), pathLen)");
		}
		this(cast(GUnixSocketAddress*) p);
	}
	
	/**
	 * Gets address's path.
	 * Since 2.22
	 * Returns: TRUE if the address is abstract, FALSE otherwise
	 */
	public int getIsAbstract()
	{
		// gboolean g_unix_socket_address_get_is_abstract  (GUnixSocketAddress *address);
		return g_unix_socket_address_get_is_abstract(gUnixSocketAddress);
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
	 * Checks if abstract unix domain socket names are supported.
	 * Since 2.22
	 * Returns: TRUE if supported, FALSE otherwise
	 */
	public static int abstractNamesSupported()
	{
		// gboolean g_unix_socket_address_abstract_names_supported  (void);
		return g_unix_socket_address_abstract_names_supported();
	}
}
