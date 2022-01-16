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


module gio.NetworkMonitorT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import gio.NetworkMonitorIF;
public  import gio.SocketConnectableIF;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import std.algorithm;


/**
 * #GNetworkMonitor provides an easy-to-use cross-platform API
 * for monitoring network connectivity. On Linux, the available
 * implementations are based on the kernel's netlink interface and
 * on NetworkManager.
 * 
 * There is also an implementation for use inside Flatpak sandboxes.
 *
 * Since: 2.32
 */
public template NetworkMonitorT(TStruct)
{
	/** Get the main Gtk struct */
	public GNetworkMonitor* getNetworkMonitorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GNetworkMonitor*)getStruct();
	}


	/**
	 * Attempts to determine whether or not the host pointed to by
	 * @connectable can be reached, without actually trying to connect to
	 * it.
	 *
	 * This may return %TRUE even when #GNetworkMonitor:network-available
	 * is %FALSE, if, for example, @monitor can determine that
	 * @connectable refers to a host on a local network.
	 *
	 * If @monitor believes that an attempt to connect to @connectable
	 * will succeed, it will return %TRUE. Otherwise, it will return
	 * %FALSE and set @error to an appropriate error (such as
	 * %G_IO_ERROR_HOST_UNREACHABLE).
	 *
	 * Note that although this does not attempt to connect to
	 * @connectable, it may still block for a brief period of time (eg,
	 * trying to do multicast DNS on the local network), so if you do not
	 * want to block, you should use g_network_monitor_can_reach_async().
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if @connectable is reachable, %FALSE if not.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool canReach(SocketConnectableIF connectable, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_network_monitor_can_reach(getNetworkMonitorStruct(), (connectable is null) ? null : connectable.getSocketConnectableStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously attempts to determine whether or not the host
	 * pointed to by @connectable can be reached, without actually
	 * trying to connect to it.
	 *
	 * For more details, see g_network_monitor_can_reach().
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_network_monitor_can_reach_finish()
	 * to get the result of the operation.
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void canReachAsync(SocketConnectableIF connectable, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_network_monitor_can_reach_async(getNetworkMonitorStruct(), (connectable is null) ? null : connectable.getSocketConnectableStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async network connectivity test.
	 * See g_network_monitor_can_reach_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if network is reachable, %FALSE if not.
	 *
	 * Throws: GException on failure.
	 */
	public bool canReachFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_network_monitor_can_reach_finish(getNetworkMonitorStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets a more detailed networking state than
	 * g_network_monitor_get_network_available().
	 *
	 * If #GNetworkMonitor:network-available is %FALSE, then the
	 * connectivity state will be %G_NETWORK_CONNECTIVITY_LOCAL.
	 *
	 * If #GNetworkMonitor:network-available is %TRUE, then the
	 * connectivity state will be %G_NETWORK_CONNECTIVITY_FULL (if there
	 * is full Internet connectivity), %G_NETWORK_CONNECTIVITY_LIMITED (if
	 * the host has a default route, but appears to be unable to actually
	 * reach the full Internet), or %G_NETWORK_CONNECTIVITY_PORTAL (if the
	 * host is trapped behind a "captive portal" that requires some sort
	 * of login or acknowledgement before allowing full Internet access).
	 *
	 * Note that in the case of %G_NETWORK_CONNECTIVITY_LIMITED and
	 * %G_NETWORK_CONNECTIVITY_PORTAL, it is possible that some sites are
	 * reachable but others are not. In this case, applications can
	 * attempt to connect to remote servers, but should gracefully fall
	 * back to their "offline" behavior if the connection attempt fails.
	 *
	 * Returns: the network connectivity state
	 *
	 * Since: 2.44
	 */
	public GNetworkConnectivity getConnectivity()
	{
		return g_network_monitor_get_connectivity(getNetworkMonitorStruct());
	}

	/**
	 * Checks if the network is available. "Available" here means that the
	 * system has a default route available for at least one of IPv4 or
	 * IPv6. It does not necessarily imply that the public Internet is
	 * reachable. See #GNetworkMonitor:network-available for more details.
	 *
	 * Returns: whether the network is available
	 *
	 * Since: 2.32
	 */
	public bool getNetworkAvailable()
	{
		return g_network_monitor_get_network_available(getNetworkMonitorStruct()) != 0;
	}

	/**
	 * Checks if the network is metered.
	 * See #GNetworkMonitor:network-metered for more details.
	 *
	 * Returns: whether the connection is metered
	 *
	 * Since: 2.46
	 */
	public bool getNetworkMetered()
	{
		return g_network_monitor_get_network_metered(getNetworkMonitorStruct()) != 0;
	}

	/**
	 * Emitted when the network configuration changes.
	 *
	 * Params:
	 *     networkAvailable = the current value of #GNetworkMonitor:network-available
	 *
	 * Since: 2.32
	 */
	gulong addOnNetworkChanged(void delegate(bool, NetworkMonitorIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "network-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
