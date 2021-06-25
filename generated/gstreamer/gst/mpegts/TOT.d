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


module gst.mpegts.TOT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gstreamer.DateTime;
private import gtkd.Loader;


/**
 * Time Offset Table (EN 300 468)
 */
public final class TOT
{
	/** the main Gtk struct */
	protected GstMpegtsTOT* gstMpegtsTOT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsTOT* getTOTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsTOT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsTOT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsTOT* gstMpegtsTOT, bool ownedRef = false)
	{
		this.gstMpegtsTOT = gstMpegtsTOT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsTOT);
	}


	/** */
	public @property DateTime utcTime()
	{
		return ObjectG.getDObject!(DateTime)(gstMpegtsTOT.utcTime, false);
	}

	/** Ditto */
	public @property void utcTime(DateTime value)
	{
		gstMpegtsTOT.utcTime = value.getDateTimeStruct();
	}

	/**
	 * List of descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsTOT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsTOT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_tot_get_type();
	}
}
