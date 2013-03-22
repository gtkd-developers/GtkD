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
 * inFile  = GSocketConnectable.html
 * outPack = gio
 * outFile = SocketConnectableIF
 * strct   = GSocketConnectable
 * realStrct=
 * ctorStrct=
 * clss    = SocketConnectableT
 * interf  = SocketConnectableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_connectable_
 * omit structs:
 * omit prefixes:
 * 	- g_socket_address_enumerator_
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.SocketAddressEnumerator
 * structWrap:
 * 	- GSocketAddressEnumerator* -> SocketAddressEnumerator
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketConnectableIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.SocketAddressEnumerator;




/**
 * Objects that describe one or more potential socket endpoints
 * implement GSocketConnectable. Callers can then use
 * g_socket_connectable_enumerate() to get a GSocketAddressEnumerator
 * to try out each socket address in turn until one succeeds, as shown
 * in the sample code below.
 *
 * $(DDOC_COMMENT example)
 */
public interface SocketConnectableIF
{
	
	
	public GSocketConnectable* getSocketConnectableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Creates a GSocketAddressEnumerator for connectable.
	 * Since 2.22
	 * Returns: a new GSocketAddressEnumerator. [transfer full]
	 */
	public SocketAddressEnumerator enumerate();
	
	/**
	 * Creates a GSocketAddressEnumerator for connectable that will
	 * return GProxyAddresses for addresses that you must connect
	 * to via a proxy.
	 * If connectable does not implement
	 * g_socket_connectable_proxy_enumerate(), this will fall back to
	 * calling g_socket_connectable_enumerate().
	 * Since 2.26
	 * Returns: a new GSocketAddressEnumerator. [transfer full]
	 */
	public SocketAddressEnumerator proxyEnumerate();
}
