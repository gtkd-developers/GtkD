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


module gst.mpegts.AtscRRT;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/**
 * Region Rating Table (A65)
 *
 * Since: 1.18
 */
public final class AtscRRT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscRRT* gstMpegtsAtscRRT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscRRT* getAtscRRTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscRRT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscRRT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscRRT* gstMpegtsAtscRRT, bool ownedRef = false)
	{
		this.gstMpegtsAtscRRT = gstMpegtsAtscRRT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsAtscRRT);
	}


	/**
	 * The protocol version
	 */
	public @property ubyte protocolVersion()
	{
		return gstMpegtsAtscRRT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ubyte value)
	{
		gstMpegtsAtscRRT.protocolVersion = value;
	}

	/**
	 * the names
	 */
	public @property PtrArray names()
	{
		return new PtrArray(gstMpegtsAtscRRT.names, false);
	}

	/** Ditto */
	public @property void names(PtrArray value)
	{
		gstMpegtsAtscRRT.names = value.getPtrArrayStruct();
	}

	/**
	 * the number of dimensions defined for this rating table
	 */
	public @property ubyte dimensionsDefined()
	{
		return gstMpegtsAtscRRT.dimensionsDefined;
	}

	/** Ditto */
	public @property void dimensionsDefined(ubyte value)
	{
		gstMpegtsAtscRRT.dimensionsDefined = value;
	}

	/**
	 * A set of dimensions
	 */
	public @property PtrArray dimensions()
	{
		return new PtrArray(gstMpegtsAtscRRT.dimensions, false);
	}

	/** Ditto */
	public @property void dimensions(PtrArray value)
	{
		gstMpegtsAtscRRT.dimensions = value.getPtrArrayStruct();
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscRRT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscRRT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_rrt_get_type();
	}

	/** */
	public this()
	{
		auto __p = gst_mpegts_atsc_rrt_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsAtscRRT*) __p);
	}
}
