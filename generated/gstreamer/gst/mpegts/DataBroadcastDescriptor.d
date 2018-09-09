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


module gst.mpegts.DataBroadcastDescriptor;

private import glib.MemorySlice;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class DataBroadcastDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsDataBroadcastDescriptor* gstMpegtsDataBroadcastDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDataBroadcastDescriptor* getDataBroadcastDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDataBroadcastDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDataBroadcastDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDataBroadcastDescriptor* gstMpegtsDataBroadcastDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsDataBroadcastDescriptor = gstMpegtsDataBroadcastDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			gst_mpegts_dvb_data_broadcast_descriptor_free(gstMpegtsDataBroadcastDescriptor);
	}


	/**
	 * the data broadcast id
	 */
	public @property ushort dataBroadcastId()
	{
		return gstMpegtsDataBroadcastDescriptor.dataBroadcastId;
	}

	/** Ditto */
	public @property void dataBroadcastId(ushort value)
	{
		gstMpegtsDataBroadcastDescriptor.dataBroadcastId = value;
	}

	/**
	 * the component tag
	 */
	public @property ubyte componentTag()
	{
		return gstMpegtsDataBroadcastDescriptor.componentTag;
	}

	/** Ditto */
	public @property void componentTag(ubyte value)
	{
		gstMpegtsDataBroadcastDescriptor.componentTag = value;
	}


	/**
	 * the selector byte field
	 */
	public @property ubyte[] selectorBytes()
	{
		return gstMpegtsDataBroadcastDescriptor.selectorBytes[0..gstMpegtsDataBroadcastDescriptor.length];
	}

	/** Ditto */
	public @property void selectorBytes(ubyte[] value)
	{
		gstMpegtsDataBroadcastDescriptor.selectorBytes = value.ptr;
		gstMpegtsDataBroadcastDescriptor.length = cast(ubyte)value.length;
	}

	/**
	 * language of @text
	 */
	public @property string languageCode()
	{
		return Str.toString(gstMpegtsDataBroadcastDescriptor.languageCode);
	}

	/** Ditto */
	public @property void languageCode(string value)
	{
		gstMpegtsDataBroadcastDescriptor.languageCode = Str.toStringz(value);
	}

	/**
	 * description of data broadcast
	 */
	public @property string text()
	{
		return Str.toString(gstMpegtsDataBroadcastDescriptor.text);
	}

	/** Ditto */
	public @property void text(string value)
	{
		gstMpegtsDataBroadcastDescriptor.text = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_data_broadcast_descriptor_get_type();
	}

	/** */
	public void free()
	{
		gst_mpegts_dvb_data_broadcast_descriptor_free(gstMpegtsDataBroadcastDescriptor);
		ownedRef = false;
	}
}
