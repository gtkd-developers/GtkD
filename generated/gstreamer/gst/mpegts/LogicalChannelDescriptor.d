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


module gst.mpegts.LogicalChannelDescriptor;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gst.mpegts.LogicalChannel;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class LogicalChannelDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsLogicalChannelDescriptor* gstMpegtsLogicalChannelDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsLogicalChannelDescriptor* getLogicalChannelDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsLogicalChannelDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsLogicalChannelDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsLogicalChannelDescriptor* gstMpegtsLogicalChannelDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsLogicalChannelDescriptor = gstMpegtsLogicalChannelDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsLogicalChannelDescriptor);
	}


	/** */
	public @property uint nbChannels()
	{
		return gstMpegtsLogicalChannelDescriptor.nbChannels;
	}

	/** Ditto */
	public @property void nbChannels(uint value)
	{
		gstMpegtsLogicalChannelDescriptor.nbChannels = value;
	}

	/** */
	public @property LogicalChannel[64] channels()
	{
		LogicalChannel[64] arr;
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(LogicalChannel)(gstMpegtsLogicalChannelDescriptor.channels[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void channels(LogicalChannel[64] value)
	{
		GstMpegtsLogicalChannel*[64] arr;
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getLogicalChannelStruct();
		}
		arr[value.length] = null;

		gstMpegtsLogicalChannelDescriptor.channels = arr.ptr;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_logical_channel_descriptor_get_type();
	}
}
