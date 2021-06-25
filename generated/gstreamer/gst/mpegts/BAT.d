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


module gst.mpegts.BAT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * DVB Bouquet Association Table (EN 300 468)
 */
public final class BAT
{
	/** the main Gtk struct */
	protected GstMpegtsBAT* gstMpegtsBAT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsBAT* getBATStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsBAT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsBAT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsBAT* gstMpegtsBAT, bool ownedRef = false)
	{
		this.gstMpegtsBAT = gstMpegtsBAT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsBAT);
	}


	/** */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsBAT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsBAT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public @property PtrArray streams()
	{
		return new PtrArray(gstMpegtsBAT.streams, false);
	}

	/** Ditto */
	public @property void streams(PtrArray value)
	{
		gstMpegtsBAT.streams = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_bat_get_type();
	}
}
