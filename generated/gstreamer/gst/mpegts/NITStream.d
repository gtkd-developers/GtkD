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


module gst.mpegts.NITStream;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class NITStream
{
	/** the main Gtk struct */
	protected GstMpegtsNITStream* gstMpegtsNITStream;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsNITStream* getNITStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsNITStream;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsNITStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsNITStream* gstMpegtsNITStream, bool ownedRef = false)
	{
		this.gstMpegtsNITStream = gstMpegtsNITStream;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsNITStream);
	}


	/** */
	public @property ushort transportStreamId()
	{
		return gstMpegtsNITStream.transportStreamId;
	}

	/** Ditto */
	public @property void transportStreamId(ushort value)
	{
		gstMpegtsNITStream.transportStreamId = value;
	}

	/** */
	public @property ushort originalNetworkId()
	{
		return gstMpegtsNITStream.originalNetworkId;
	}

	/** Ditto */
	public @property void originalNetworkId(ushort value)
	{
		gstMpegtsNITStream.originalNetworkId = value;
	}

	/** */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsNITStream.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsNITStream.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_nit_stream_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsNITStream
	 *
	 * Returns: A newly allocated #GstMpegtsNITStream
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_mpegts_nit_stream_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsNITStream*) __p);
	}
}
