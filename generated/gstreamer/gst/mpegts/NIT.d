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


module gst.mpegts.NIT;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Network Information Table (ISO/IEC 13818-1 / EN 300 468)
 */
public final class NIT
{
	/** the main Gtk struct */
	protected GstMpegtsNIT* gstMpegtsNIT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsNIT* getNITStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsNIT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsNIT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsNIT* gstMpegtsNIT, bool ownedRef = false)
	{
		this.gstMpegtsNIT = gstMpegtsNIT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsNIT);
	}


	/**
	 * Whether this NIT corresponds to the actual stream
	 */
	public @property bool actualNetwork()
	{
		return gstMpegtsNIT.actualNetwork != 0;
	}

	/** Ditto */
	public @property void actualNetwork(bool value)
	{
		gstMpegtsNIT.actualNetwork = value;
	}

	/**
	 * ID of the network that this NIT describes
	 */
	public @property ushort networkId()
	{
		return gstMpegtsNIT.networkId;
	}

	/** Ditto */
	public @property void networkId(ushort value)
	{
		gstMpegtsNIT.networkId = value;
	}

	/**
	 * the global descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsNIT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsNIT.descriptors = value.getPtrArrayStruct();
	}

	/**
	 * the streams
	 */
	public @property PtrArray streams()
	{
		return new PtrArray(gstMpegtsNIT.streams, false);
	}

	/** Ditto */
	public @property void streams(PtrArray value)
	{
		gstMpegtsNIT.streams = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_nit_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsNIT.
	 *
	 * Returns: A newly allocated #GstMpegtsNIT
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_mpegts_nit_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsNIT*) p);
	}
}
