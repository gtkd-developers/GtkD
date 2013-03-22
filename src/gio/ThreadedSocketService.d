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
 * inFile  = GThreadedSocketService.html
 * outPack = gio
 * outFile = ThreadedSocketService
 * strct   = GThreadedSocketService
 * realStrct=
 * ctorStrct=GSocketService
 * clss    = ThreadedSocketService
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_threaded_socket_service_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ThreadedSocketService;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gio.SocketService;

/**
 * A GThreadedSocketService is a simple subclass of GSocketService
 * that handles incoming connections by creating a worker thread and
 * dispatching the connection to it by emitting the
 * "run" signal in the new thread.
 *
 * The signal handler may perform blocking IO and need not return
 * until the connection is closed.
 *
 * The service is implemented using a thread pool, so there is a
 * limited amount of threads available to serve incoming requests.
 * The service automatically stops the GSocketService from accepting
 * new connections when all threads are busy.
 *
 * As with GSocketService, you may connect to "run",
 * or subclass and override the default handler.
 */
public class ThreadedSocketService : SocketService
{
	
	/** the main Gtk struct */
	protected GThreadedSocketService* gThreadedSocketService;
	
	
	public GThreadedSocketService* getThreadedSocketServiceStruct()
	{
		return gThreadedSocketService;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gThreadedSocketService;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GThreadedSocketService* gThreadedSocketService)
	{
		super(cast(GSocketService*)gThreadedSocketService);
		this.gThreadedSocketService = gThreadedSocketService;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gThreadedSocketService = cast(GThreadedSocketService*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(GSocketConnection*, GObject*, ThreadedSocketService)[] onRunListeners;
	/**
	 * The ::run signal is emitted in a worker thread in response to an
	 * incoming connection. This thread is dedicated to handling
	 * connection and may perform blocking IO. The signal handler need
	 * not return until the connection is closed.
	 * TRUE to stop further signal handlers from being called
	 * See Also
	 * GSocketService.
	 */
	void addOnRun(bool delegate(GSocketConnection*, GObject*, ThreadedSocketService) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("run" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"run",
			cast(GCallback)&callBackRun,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["run"] = 1;
		}
		onRunListeners ~= dlg;
	}
	extern(C) static gboolean callBackRun(GThreadedSocketService* serviceStruct, GSocketConnection* connection, GObject* sourceObject, ThreadedSocketService _threadedSocketService)
	{
		foreach ( bool delegate(GSocketConnection*, GObject*, ThreadedSocketService) dlg ; _threadedSocketService.onRunListeners )
		{
			if ( dlg(connection, sourceObject, _threadedSocketService) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GThreadedSocketService with no listeners. Listeners
	 * must be added with one of the GSocketListener "add" methods.
	 * Since 2.22
	 * Params:
	 * maxThreads = the maximal number of threads to execute concurrently
	 * handling incoming clients, -1 means no limit
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int maxThreads)
	{
		// GSocketService * g_threaded_socket_service_new (int max_threads);
		auto p = g_threaded_socket_service_new(maxThreads);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_threaded_socket_service_new(maxThreads)");
		}
		this(cast(GThreadedSocketService*) p);
	}
}
