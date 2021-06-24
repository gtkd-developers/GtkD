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


module gst.mpegts.DvbMultilingualServiceNameItem;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/**
 * a multilingual service name entry
 */
public final class DvbMultilingualServiceNameItem
{
	/** the main Gtk struct */
	protected GstMpegtsDvbMultilingualServiceNameItem* gstMpegtsDvbMultilingualServiceNameItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDvbMultilingualServiceNameItem* getDvbMultilingualServiceNameItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDvbMultilingualServiceNameItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDvbMultilingualServiceNameItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDvbMultilingualServiceNameItem* gstMpegtsDvbMultilingualServiceNameItem, bool ownedRef = false)
	{
		this.gstMpegtsDvbMultilingualServiceNameItem = gstMpegtsDvbMultilingualServiceNameItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsDvbMultilingualServiceNameItem);
	}


	/**
	 * the ISO 639 language code
	 */
	public @property string languageCode()
	{
		return Str.toString(gstMpegtsDvbMultilingualServiceNameItem.languageCode);
	}

	/** Ditto */
	public @property void languageCode(string value)
	{
		gstMpegtsDvbMultilingualServiceNameItem.languageCode = Str.toStringz(value);
	}

	/**
	 * the provider name
	 */
	public @property string providerName()
	{
		return Str.toString(gstMpegtsDvbMultilingualServiceNameItem.providerName);
	}

	/** Ditto */
	public @property void providerName(string value)
	{
		gstMpegtsDvbMultilingualServiceNameItem.providerName = Str.toStringz(value);
	}

	/**
	 * the service name
	 */
	public @property string serviceName()
	{
		return Str.toString(gstMpegtsDvbMultilingualServiceNameItem.serviceName);
	}

	/** Ditto */
	public @property void serviceName(string value)
	{
		gstMpegtsDvbMultilingualServiceNameItem.serviceName = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_multilingual_service_name_item_get_type();
	}
}
