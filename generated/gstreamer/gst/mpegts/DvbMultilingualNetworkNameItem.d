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


module gst.mpegts.DvbMultilingualNetworkNameItem;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * a multilingual network name entry
 */
public final class DvbMultilingualNetworkNameItem
{
	/** the main Gtk struct */
	protected GstMpegtsDvbMultilingualNetworkNameItem* gstMpegtsDvbMultilingualNetworkNameItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDvbMultilingualNetworkNameItem* getDvbMultilingualNetworkNameItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDvbMultilingualNetworkNameItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDvbMultilingualNetworkNameItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDvbMultilingualNetworkNameItem* gstMpegtsDvbMultilingualNetworkNameItem, bool ownedRef = false)
	{
		this.gstMpegtsDvbMultilingualNetworkNameItem = gstMpegtsDvbMultilingualNetworkNameItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsDvbMultilingualNetworkNameItem);
	}


	/**
	 * the ISO 639 language code
	 */
	public @property string languageCode()
	{
		return Str.toString(gstMpegtsDvbMultilingualNetworkNameItem.languageCode);
	}

	/** Ditto */
	public @property void languageCode(string value)
	{
		gstMpegtsDvbMultilingualNetworkNameItem.languageCode = Str.toStringz(value);
	}

	/**
	 * the network name
	 */
	public @property string networkName()
	{
		return Str.toString(gstMpegtsDvbMultilingualNetworkNameItem.networkName);
	}

	/** Ditto */
	public @property void networkName(string value)
	{
		gstMpegtsDvbMultilingualNetworkNameItem.networkName = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_multilingual_network_name_item_get_type();
	}
}
