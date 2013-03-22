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
 * inFile  = GSocketAddress.html
 * outPack = gio
 * outFile = SocketAddress
 * strct   = GSocketAddress
 * realStrct=
 * ctorStrct=
 * clss    = SocketAddress
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- SocketConnectableIF
 * prefixes:
 * 	- g_socket_address_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.SocketConnectableT
 * 	- gio.SocketConnectableIF
 * structWrap:
 * module aliases:
 * local aliases:
 * 	- GLIB_SYSDEF_AF_INET -> 2
 * 	- GLIB_SYSDEF_AF_INET6 -> 23
 * 	- GLIB_SYSDEF_AF_UNIX -> 1
 * overrides:
 */

module gio.SocketAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.SocketConnectableT;
private import gio.SocketConnectableIF;



private import gobject.ObjectG;

/**
 * GSocketAddress is the equivalent of struct sockaddr
 * in the BSD sockets API. This is an abstract class; use
 * GInetSocketAddress for internet sockets, or GUnixSocketAddress
 * for UNIX domain sockets.
 */
public class SocketAddress : ObjectG, SocketConnectableIF
{
	
	/** the main Gtk struct */
	protected GSocketAddress* gSocketAddress;
	
	
	public GSocketAddress* getSocketAddressStruct()
	{
		return gSocketAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketAddress* gSocketAddress)
	{
		super(cast(GObject*)gSocketAddress);
		this.gSocketAddress = gSocketAddress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketAddress = cast(GSocketAddress*)obj;
	}
	
	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(GSocketAddress);
	
	/**
	 */
	
	/**
	 * Creates a GSocketAddress subclass corresponding to the native
	 * struct sockaddr native.
	 * Since 2.22
	 * Params:
	 * native = a pointer to a struct sockaddr
	 * len = the size of the memory location pointed to by native
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void* native, gsize len)
	{
		// GSocketAddress * g_socket_address_new_from_native (gpointer native,  gsize len);
		auto p = g_socket_address_new_from_native(native, len);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_socket_address_new_from_native(native, len)");
		}
		this(cast(GSocketAddress*) p);
	}
	
	/**
	 * Gets the socket family type of address.
	 * Since 2.22
	 * Returns: the socket family type of address.
	 */
	public GSocketFamily getFamily()
	{
		// GSocketFamily g_socket_address_get_family (GSocketAddress *address);
		return g_socket_address_get_family(gSocketAddress);
	}
	
	/**
	 * Converts a GSocketAddress to a native struct
	 * sockaddr, which can be passed to low-level functions like
	 * connect() or bind().
	 * If not enough space is available, a G_IO_ERROR_NO_SPACE error is
	 * returned. If the address type is not known on the system
	 * then a G_IO_ERROR_NOT_SUPPORTED error is returned.
	 * Since 2.22
	 * Params:
	 * dest = a pointer to a memory location that will contain the native
	 * struct sockaddr.
	 * destlen = the size of dest. Must be at least as large as
	 * g_socket_address_get_native_size().
	 * Returns: TRUE if dest was filled in, FALSE on error
	 * Throws: GException on failure.
	 */
	public int toNative(void* dest, gsize destlen)
	{
		// gboolean g_socket_address_to_native (GSocketAddress *address,  gpointer dest,  gsize destlen,  GError **error);
		GError* err = null;
		
		auto p = g_socket_address_to_native(gSocketAddress, dest, destlen, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the size of address's native struct sockaddr.
	 * You can use this to allocate memory to pass to
	 * g_socket_address_to_native().
	 * Since 2.22
	 * Returns: the size of the native struct sockaddr that address represents
	 */
	public gssize getNativeSize()
	{
		// gssize g_socket_address_get_native_size (GSocketAddress *address);
		return g_socket_address_get_native_size(gSocketAddress);
	}
}
