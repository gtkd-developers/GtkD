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


module shumate.DataSource;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
private import shumate.c.functions;
public  import shumate.c.types;
private import std.algorithm;


/**
 * The base class used to retrieve tiles as [struct@GLib.Bytes].
 */
public class DataSource : ObjectG
{
	/** the main Gtk struct */
	protected ShumateDataSource* shumateDataSource;

	/** Get the main Gtk struct */
	public ShumateDataSource* getDataSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateDataSource;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateDataSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateDataSource* shumateDataSource, bool ownedRef = false)
	{
		this.shumateDataSource = shumateDataSource;
		super(cast(GObject*)shumateDataSource, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return shumate_data_source_get_type();
	}

	/**
	 * Gets the data for the tile at the given coordinates.
	 *
	 * Some data sources may return data multiple times. For example,
	 * [class@TileDownloader] may return data from a cache, then return updated
	 * data from the network. [signal@ShumateDataSource::received-data] is emitted
	 * each time data is received, then @callback is called after the last update.
	 *
	 * Params:
	 *     x = the X coordinate to fetch
	 *     y = the Y coordinate to fetch
	 *     zoomLevel = the Z coordinate to fetch
	 *     cancellable = a #GCancellable
	 *     callback = a #GAsyncReadyCallback to execute upon completion
	 *     userData = closure data for @callback
	 */
	public void getTileDataAsync(int x, int y, int zoomLevel, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		shumate_data_source_get_tile_data_async(shumateDataSource, x, y, zoomLevel, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the final result of a request started with
	 * shumate_data_source_get_tile_data_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult provided to callback
	 *
	 * Returns: The requested data, or %NULL if an
	 *     error occurred
	 *
	 * Throws: GException on failure.
	 */
	public Bytes getTileDataFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = shumate_data_source_get_tile_data_finish(shumateDataSource, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Emitted when data is received for any tile. This includes any intermediate
	 * steps, such as data from the file cache, as well as the final result.
	 *
	 * Params:
	 *     x = the X coordinate of the tile
	 *     y = the Y coordinate of the tile
	 *     zoomLevel = the zoom level of the tile
	 *     bytes = the received data
	 */
	gulong addOnReceivedData(void delegate(int, int, int, Bytes, DataSource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "received-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
