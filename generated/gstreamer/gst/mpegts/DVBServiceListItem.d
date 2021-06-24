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


module gst.mpegts.DVBServiceListItem;

private import glib.MemorySlice;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/** */
public final class DVBServiceListItem
{
	/** the main Gtk struct */
	protected GstMpegtsDVBServiceListItem* gstMpegtsDVBServiceListItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDVBServiceListItem* getDVBServiceListItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDVBServiceListItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDVBServiceListItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDVBServiceListItem* gstMpegtsDVBServiceListItem, bool ownedRef = false)
	{
		this.gstMpegtsDVBServiceListItem = gstMpegtsDVBServiceListItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsDVBServiceListItem);
	}


	/**
	 * the id of a service
	 */
	public @property ushort serviceId()
	{
		return gstMpegtsDVBServiceListItem.serviceId;
	}

	/** Ditto */
	public @property void serviceId(ushort value)
	{
		gstMpegtsDVBServiceListItem.serviceId = value;
	}

	/**
	 * the type of a service
	 */
	public @property GstMpegtsDVBServiceType type()
	{
		return gstMpegtsDVBServiceListItem.type;
	}

	/** Ditto */
	public @property void type(GstMpegtsDVBServiceType value)
	{
		gstMpegtsDVBServiceListItem.type = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_service_list_item_get_type();
	}
}
