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


module gst.mpegts.AtscRRTDimensionValue;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/** */
public final class AtscRRTDimensionValue
{
	/** the main Gtk struct */
	protected GstMpegtsAtscRRTDimensionValue* gstMpegtsAtscRRTDimensionValue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscRRTDimensionValue* getAtscRRTDimensionValueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscRRTDimensionValue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscRRTDimensionValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscRRTDimensionValue* gstMpegtsAtscRRTDimensionValue, bool ownedRef = false)
	{
		this.gstMpegtsAtscRRTDimensionValue = gstMpegtsAtscRRTDimensionValue;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsAtscRRTDimensionValue);
	}


	/**
	 * the abbreviated ratings
	 */
	public @property PtrArray abbrevRatings()
	{
		return new PtrArray(gstMpegtsAtscRRTDimensionValue.abbrevRatings, false);
	}

	/** Ditto */
	public @property void abbrevRatings(PtrArray value)
	{
		gstMpegtsAtscRRTDimensionValue.abbrevRatings = value.getPtrArrayStruct();
	}

	/**
	 * the ratings
	 */
	public @property PtrArray ratings()
	{
		return new PtrArray(gstMpegtsAtscRRTDimensionValue.ratings, false);
	}

	/** Ditto */
	public @property void ratings(PtrArray value)
	{
		gstMpegtsAtscRRTDimensionValue.ratings = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_rrt_dimension_value_get_type();
	}

	/** */
	public this()
	{
		auto __p = gst_mpegts_atsc_rrt_dimension_value_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsAtscRRTDimensionValue*) __p);
	}
}
