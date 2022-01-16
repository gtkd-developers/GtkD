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


module gio.ThreadedSocketService;

private import gio.SocketConnection;
private import gio.SocketService;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GThreadedSocketService is a simple subclass of #GSocketService
 * that handles incoming connections by creating a worker thread and
 * dispatching the connection to it by emitting the
 * #GThreadedSocketService::run signal in the new thread.
 * 
 * The signal handler may perform blocking IO and need not return
 * until the connection is closed.
 * 
 * The service is implemented using a thread pool, so there is a
 * limited amount of threads available to serve incoming requests.
 * The service automatically stops the #GSocketService from accepting
 * new connections when all threads are busy.
 * 
 * As with #GSocketService, you may connect to #GThreadedSocketService::run,
 * or subclass and override the default handler.
 *
 * Since: 2.22
 */
public class ThreadedSocketService : SocketService
{
	/** the main Gtk struct */
	protected GThreadedSocketService* gThreadedSocketService;

	/** Get the main Gtk struct */
	public GThreadedSocketService* getThreadedSocketServiceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gThreadedSocketService;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gThreadedSocketService;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GThreadedSocketService* gThreadedSocketService, bool ownedRef = false)
	{
		this.gThreadedSocketService = gThreadedSocketService;
		super(cast(GSocketService*)gThreadedSocketService, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_threaded_socket_service_get_type();
	}

	/**
	 * Creates a new #GThreadedSocketService with no listeners. Listeners
	 * must be added with one of the #GSocketListener "add" methods.
	 *
	 * Params:
	 *     maxThreads = the maximal number of threads to execute concurrently
	 *         handling incoming clients, -1 means no limit
	 *
	 * Returns: a new #GSocketService.
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int maxThreads)
	{
		auto __p = g_threaded_socket_service_new(maxThreads);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GThreadedSocketService*) __p, true);
	}

	/**
	 * The ::run signal is emitted in a worker thread in response to an
	 * incoming connection. This thread is dedicated to handling
	 * @connection and may perform blocking IO. The signal handler need
	 * not return until the connection is closed.
	 *
	 * Params:
	 *     connection = a new #GSocketConnection object.
	 *     sourceObject = the source_object passed to g_socket_listener_add_address().
	 *
	 * Returns: %TRUE to stop further signal handlers from being called
	 */
	gulong addOnRun(bool delegate(SocketConnection, ObjectG, ThreadedSocketService) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "run", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
