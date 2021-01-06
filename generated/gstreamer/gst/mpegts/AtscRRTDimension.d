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


module gst.mpegts.AtscRRTDimension;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class AtscRRTDimension
{
	/** the main Gtk struct */
	protected GstMpegtsAtscRRTDimension* gstMpegtsAtscRRTDimension;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscRRTDimension* getAtscRRTDimensionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscRRTDimension;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscRRTDimension;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscRRTDimension* gstMpegtsAtscRRTDimension, bool ownedRef = false)
	{
		this.gstMpegtsAtscRRTDimension = gstMpegtsAtscRRTDimension;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscRRTDimension);
	}


	/** */
	public @property PtrArray names()
	{
		return new PtrArray(gstMpegtsAtscRRTDimension.names, false);
	}

	/** Ditto */
	public @property void names(PtrArray value)
	{
		gstMpegtsAtscRRTDimension.names = value.getPtrArrayStruct();
	}

	/** */
	public @property bool graduatedScale()
	{
		return gstMpegtsAtscRRTDimension.graduatedScale != 0;
	}

	/** Ditto */
	public @property void graduatedScale(bool value)
	{
		gstMpegtsAtscRRTDimension.graduatedScale = value;
	}

	/** */
	public @property ubyte valuesDefined()
	{
		return gstMpegtsAtscRRTDimension.valuesDefined;
	}

	/** Ditto */
	public @property void valuesDefined(ubyte value)
	{
		gstMpegtsAtscRRTDimension.valuesDefined = value;
	}

	/** */
	public @property PtrArray values()
	{
		return new PtrArray(gstMpegtsAtscRRTDimension.values, false);
	}

	/** Ditto */
	public @property void values(PtrArray value)
	{
		gstMpegtsAtscRRTDimension.values = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_rrt_dimension_get_type();
	}

	/** */
	public this()
	{
		auto __p = gst_mpegts_atsc_rrt_dimension_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsAtscRRTDimension*) __p);
	}
}
