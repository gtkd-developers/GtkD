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


private import gio.SocketAddressEnumerator;




/**
 * Description
 * Objects that describe one or more potential socket endpoints
 * implement GSocketConnectable. Callers can then use
 * g_socket_connectable_enumerate() to get a GSocketAddressEnumerator
 * to try out each socket address in turn until one succeeds, as shown
 * in the sample code below.
 * MyConnectionType *
 * connect_to_host (const char *hostname,
 *  guint16 port,
 *  GCancellable *cancellable,
 *  GError **error)
 * {
	 *  MyConnection *conn = NULL;
	 *  GSocketConnectable *addr;
	 *  GSocketAddressEnumerator *enumerator;
	 *  GSocketAddress *sockaddr;
	 *  GError *conn_error = NULL;
	 *  addr = g_network_address_new ("www.gnome.org", 80);
	 *  enumerator = g_socket_connectable_enumerate (addr);
	 *  g_object_unref (addr);
	 *  /+* Try each sockaddr until we succeed. Record the first
	 *  * connection error, but not any further ones (since they'll probably
	 *  * be basically the same as the first).
	 *  +/
	 *  while (!conn  (sockaddr = g_socket_address_enumerator_next (enumerator, cancellable, error))
	 *  {
		 *  conn = connect_to_sockaddr (sockaddr, conn_error ? NULL : conn_error);
		 *  g_object_unref (sockaddr);
	 *  }
	 *  g_object_unref (enumerator);
	 *  if (conn)
	 *  {
		 *  if (conn_error)
		 *  {
			 *  /+* We couldn't connect to the first address, but we succeeded
			 *  * in connecting to a later address.
			 *  +/
			 *  g_error_free (conn_error);
		 *  }
		 *  return conn;
	 *  }
	 *  else if (error)
	 *  {
		 *  /+* Either the initial lookup failed, or else the caller
		 *  * cancelled us.
		 *  +/
		 *  if (conn_error)
		 *  g_error_free (conn_error);
		 *  return NULL;
	 *  }
	 *  else
	 *  {
		 *  g_error_propagate (error, conn_error);
		 *  return NULL;
	 *  }
 * }
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
	 * Returns: a new GSocketAddressEnumerator.
	 */
	public SocketAddressEnumerator enumerate();
}
