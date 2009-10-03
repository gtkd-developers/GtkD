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
 * inFile  = 
 * outPack = gio
 * outFile = SocketAddressEnumerator
 * strct   = GSocketAddressEnumerator
 * realStrct=
 * ctorStrct=
 * clss    = SocketAddressEnumerator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_address_enumerator_
 * omit structs:
 * omit prefixes:
 * 	- g_socket_connectable_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.SocketAddress
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GSocketAddress* -> SocketAddress
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketAddressEnumerator;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.SocketAddress;




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
public class SocketAddressEnumerator
{
	
	/** the main Gtk struct */
	protected GSocketAddressEnumerator* gSocketAddressEnumerator;
	
	
	public GSocketAddressEnumerator* getSocketAddressEnumeratorStruct()
	{
		return gSocketAddressEnumerator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSocketAddressEnumerator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketAddressEnumerator* gSocketAddressEnumerator)
	{
		if(gSocketAddressEnumerator is null)
		{
			this = null;
			return;
		}
		this.gSocketAddressEnumerator = gSocketAddressEnumerator;
	}
	
	/**
	 */
	
	/**
	 * Retrieves the next GSocketAddress from enumerator. Note that this
	 * may block for some amount of time. (Eg, a GNetworkAddress may need
	 * to do a DNS lookup before it can return an address.) Use
	 * g_socket_address_enumerator_next_async() if you need to avoid
	 * blocking.
	 * If enumerator is expected to yield addresses, but for some reason
	 * is unable to (eg, because of a DNS error), then the first call to
	 * g_socket_address_enumerator_next() will return an appropriate error
	 * in *error. However, if the first call to
	 * g_socket_address_enumerator_next() succeeds, then any further
	 * internal errors (other than cancellable being triggered) will be
	 * ignored.
	 * Params:
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * Returns: a GSocketAddress (owned by the caller), or NULL on error (in which case *error will be set) or if there are no more addresses.
	 * Throws: GException on failure.
	 */
	public SocketAddress next(Cancellable cancellable)
	{
		// GSocketAddress * g_socket_address_enumerator_next (GSocketAddressEnumerator *enumerator,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_socket_address_enumerator_next(gSocketAddressEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new SocketAddress(cast(GSocketAddress*) p);
	}
	
	/**
	 * Asynchronously retrieves the next GSocketAddress from enumerator
	 * and then calls callback, which must call
	 * g_socket_address_enumerator_next_finish() to get the result.
	 * Params:
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * callback =  a GAsyncReadyCallback to call when the request is satisfied
	 * userData =  the data to pass to callback function
	 */
	public void nextAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_address_enumerator_next_async  (GSocketAddressEnumerator *enumerator,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_address_enumerator_next_async(gSocketAddressEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Retrieves the result of a completed call to
	 * g_socket_address_enumerator_next_async(). See
	 * g_socket_address_enumerator_next() for more information about
	 * error handling.
	 * Params:
	 * result =  a GAsyncResult
	 * Returns: a GSocketAddress (owned by the caller), or NULL on error (in which case *error will be set) or if there are no more addresses.
	 * Throws: GException on failure.
	 */
	public SocketAddress nextFinish(AsyncResultIF result)
	{
		// GSocketAddress * g_socket_address_enumerator_next_finish  (GSocketAddressEnumerator *enumerator,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_socket_address_enumerator_next_finish(gSocketAddressEnumerator, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new SocketAddress(cast(GSocketAddress*) p);
	}
}
