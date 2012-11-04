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
 * outFile = NetworkMonitorIF
 * strct   = GNetworkMonitor
 * realStrct=
 * ctorStrct=
 * clss    = NetworkMonitorT
 * interf  = NetworkMonitorIF
 * class Code: No
 * interface Code: No
 * template for:
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

module gio.NetworkMonitorIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.NetworkMonitorIF;
private import gio.SocketConnectableIF;




/**
 * Description
 * GNetworkMonitor provides an easy-to-use cross-platform API
 * for monitoring network connectivity. On Linux, the implementation
 * is based on the kernels netlink interface.
 */
public interface NetworkMonitorIF
{
	
	
	public GNetworkMonitor* getNetworkMonitorTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(gboolean, NetworkMonitorIF)[] onNetworkChangedListeners();
	/**
	 * Emitted when the network configuration changes. If available is
	 * TRUE, then some hosts may be reachable that were not reachable
	 * before, while others that were reachable before may no longer be
	 * reachable. If available is FALSE, then no remote hosts are
	 * reachable.
	 * Since 2.32
	 */
	void addOnNetworkChanged(void delegate(gboolean, NetworkMonitorIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Gets the default GNetworkMonitor for the system.
	 * Since 2.32
	 * Returns: a GNetworkMonitor. [transfer none]
	 */
	public static NetworkMonitorIF getDefault();
	
	/**
	 * Checks if the network is available. "Available" here means that the
	 * system has a default route available for at least one of IPv4 or
	 * IPv6. It does not necessarily imply that the public Internet is
	 * reachable. See "network-available" for more details.
	 * Since 2.32
	 * Returns: whether the network is available
	 */
	public int getNetworkAvailable();
	
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
	public int canReach(SocketConnectableIF connectable, Cancellable cancellable);
	
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
	public void canReachAsync(SocketConnectableIF connectable, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
	
	/**
	 * Finishes an async network connectivity test.
	 * See g_network_monitor_can_reach_async().
	 * Params:
	 * result = a GAsyncResult
	 * Returns: TRUE if network is reachable, FALSE if not.
	 * Throws: GException on failure.
	 */
	public int canReachFinish(AsyncResultIF result);
}
