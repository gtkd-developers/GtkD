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


module gst.mpegts.DVBLinkageDescriptor;

private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.DVBLinkageEvent;
private import gst.mpegts.DVBLinkageMobileHandOver;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public class DVBLinkageDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsDVBLinkageDescriptor* gstMpegtsDVBLinkageDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDVBLinkageDescriptor* getDVBLinkageDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDVBLinkageDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDVBLinkageDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDVBLinkageDescriptor* gstMpegtsDVBLinkageDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsDVBLinkageDescriptor = gstMpegtsDVBLinkageDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			gst_mpegts_dvb_linkage_descriptor_free(gstMpegtsDVBLinkageDescriptor);
	}


	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_linkage_descriptor_get_type();
	}

	/** */
	public void free()
	{
		gst_mpegts_dvb_linkage_descriptor_free(gstMpegtsDVBLinkageDescriptor);
		ownedRef = false;
	}

	/**
	 * Returns: The #GstMpegtsDVBLinkageEvent or %NULL if an error happened
	 */
	public DVBLinkageEvent getEvent()
	{
		auto __p = gst_mpegts_dvb_linkage_descriptor_get_event(gstMpegtsDVBLinkageDescriptor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DVBLinkageEvent)(cast(GstMpegtsDVBLinkageEvent*) __p);
	}

	/**
	 * Returns: an #GstMpegtsDVBLinkageExtendedEvent array or %NULL if an error happened
	 */
	public PtrArray getExtendedEvent()
	{
		auto __p = gst_mpegts_dvb_linkage_descriptor_get_extended_event(gstMpegtsDVBLinkageDescriptor);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Returns: The #GstMpegtsDVBLinkageMobileHandOver or %NULL if an error happened
	 */
	public DVBLinkageMobileHandOver getMobileHandOver()
	{
		auto __p = gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over(gstMpegtsDVBLinkageDescriptor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DVBLinkageMobileHandOver)(cast(GstMpegtsDVBLinkageMobileHandOver*) __p);
	}
}
