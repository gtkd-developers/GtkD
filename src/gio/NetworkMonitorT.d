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
 * inFile  = GNetworkMonitor.html
 * outPack = gio
 * outFile = NetworkMonitorT
 * strct   = GNetworkMonitor
 * realStrct=
 * ctorStrct=
 * clss    = NetworkMonitorT
 * interf  = NetworkMonitorIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_network_monitor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.NetworkMonitorIF
 * 	- gio.SocketConnectableIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GNetworkMonitor* -> NetworkMonitorIF
 * 	- GSocketConnectable* -> SocketConnectableIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.NetworkMonitorT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.ErrorG;
public import glib.GException;
public import gio.AsyncResultIF;
public import gio.Cancellable;
public import gio.NetworkMonitorIF;
public import gio.SocketConnectableIF;




/**
 * Description
 * GNetworkMonitor provides an easy-to-use cross-platform API
 * for monitoring network connectivity. On Linux, the implementation
 * is based on the kernels netlink interface.
 */
public template NetworkMonitorT(TStruct)
{
	
	/** the main Gtk struct */
	protected GNetworkMonitor* gNetworkMonitor;
	
	
	public GNetworkMonitor* getNetworkMonitorTStruct()
	{
		return cast(GNetworkMonitor*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(gboolean, NetworkMonitorIF)[] _onNetworkChangedListeners;
	void delegate(gboolean, NetworkMonitorIF)[] onNetworkChangedListeners()
	{
		return  _onNetworkChangedListeners;
	}
	/**
	 * Emitted when the network configuration changes. If available is
	 * TRUE, then some hosts may be reachable that were not reachable
	 * before, while others that were reachable before may no longer be
	 * reachable. If available is FALSE, then no remote hosts are
	 * reachable.
	 * Since 2.32
	 */
	void addOnNetworkChanged(void delegate(gboolean, NetworkMonitorIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("network-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"network-changed",
			cast(GCallback)&callBackNetworkChanged,
			cast(void*)cast(NetworkMonitorIF)this,
			null,
			connectFlags);
			connectedSignals["network-changed"] = 1;
		}
		_onNetworkChangedListeners ~= dlg;
	}
	extern(C) static void callBackNetworkChanged(GNetworkMonitor* monitorStruct, gboolean available, NetworkMonitorIF _networkMonitorIF)
	{
		foreach ( void delegate(gboolean, NetworkMonitorIF) dlg ; _networkMonitorIF.onNetworkChangedListeners )
		{
			dlg(available, _networkMonitorIF);
		}
	}
	
	
	/**
	 * Gets the default GNetworkMonitor for the system.
	 * Since 2.32
	 * Returns: a GNetworkMonitor. [transfer none]
	 */
	public static NetworkMonitorIF getDefault()
	{
		// GNetworkMonitor * g_network_monitor_get_default (void);
		auto p = g_network_monitor_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(NetworkMonitor)(cast(GNetworkMonitor*) p);
	}
	
	/**
	 * Checks if the network is available. "Available" here means that the
	 * system has a default route available for at least one of IPv4 or
	 * IPv6. It does not necessarily imply that the public Internet is
	 * reachable. See "network-available" for more details.
	 * Since 2.32
	 * Returns: whether the network is available
	 */
	public int getNetworkAvailable()
	{
		// gboolean g_network_monitor_get_network_available  (GNetworkMonitor *monitor);
		return g_network_monitor_get_network_available(getNetworkMonitorTStruct());
	}
	
	/**
	 * Attempts to determine whether or not the host pointed to by
	 * connectable can be reached, without actually trying to connect to
	 * it.
	 * This may return TRUE even when "network-available"
	 * is FALSE, if, for example, monitor can determine that
	 * connectable refers to a host on a local network.
	 * If monitor believes that an attempt to connect to connectable
	 * will succeed, it will return TRUE. Otherwise, it will return
	 * FALSE and set error to an appropriate error (such as
	 * G_IO_ERROR_HOST_UNREACHABLE).
	 * Note that although this does not attempt to connect to
	 * connectable, it may still block for a brief period of time (eg,
	 * trying to do multicast DNS on the local network), so if you do not
	 * want to block, you should use g_network_monitor_can_reach_async().
	 * Since 2.32
	 * Params:
	 * connectable = a GSocketConnectable
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: TRUE if connectable is reachable, FALSE if not.
	 * Throws: GException on failure.
	 */
	public int canReach(SocketConnectableIF connectable, Cancellable cancellable)
	{
		// gboolean g_network_monitor_can_reach (GNetworkMonitor *monitor,  GSocketConnectable *connectable,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_network_monitor_can_reach(getNetworkMonitorTStruct(), (connectable is null) ? null : connectable.getSocketConnectableTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Asynchronously attempts to determine whether or not the host
	 * pointed to by connectable can be reached, without actually
	 * trying to connect to it.
	 * For more details, see g_network_monitor_can_reach().
	 * When the operation is finished, callback will be called.
	 * You can then call g_network_monitor_can_reach_finish()
	 * to get the result of the operation.
	 * Params:
	 * connectable = a GSocketConnectable
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the
	 * request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void canReachAsync(SocketConnectableIF connectable, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_network_monitor_can_reach_async (GNetworkMonitor *monitor,  GSocketConnectable *connectable,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_network_monitor_can_reach_async(getNetworkMonitorTStruct(), (connectable is null) ? null : connectable.getSocketConnectableTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async network connectivity test.
	 * See g_network_monitor_can_reach_async().
	 * Params:
	 * result = a GAsyncResult
	 * Returns: TRUE if network is reachable, FALSE if not.
	 * Throws: GException on failure.
	 */
	public int canReachFinish(AsyncResultIF result)
	{
		// gboolean g_network_monitor_can_reach_finish (GNetworkMonitor *monitor,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_network_monitor_can_reach_finish(getNetworkMonitorTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
