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


module gst.mpegts.BATStream;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class BATStream
{
	/** the main Gtk struct */
	protected GstMpegtsBATStream* gstMpegtsBATStream;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsBATStream* getBATStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsBATStream;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsBATStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsBATStream* gstMpegtsBATStream, bool ownedRef = false)
	{
		this.gstMpegtsBATStream = gstMpegtsBATStream;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsBATStream);
	}


	/** */
	public @property ushort transportStreamId()
	{
		return gstMpegtsBATStream.transportStreamId;
	}

	/** Ditto */
	public @property void transportStreamId(ushort value)
	{
		gstMpegtsBATStream.transportStreamId = value;
	}

	/** */
	public @property ushort originalNetworkId()
	{
		return gstMpegtsBATStream.originalNetworkId;
	}

	/** Ditto */
	public @property void originalNetworkId(ushort value)
	{
		gstMpegtsBATStream.originalNetworkId = value;
	}

	/** */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsBATStream.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsBATStream.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_bat_stream_get_type();
	}
}
