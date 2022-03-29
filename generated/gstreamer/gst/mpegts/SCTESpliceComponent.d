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


module gst.mpegts.SCTESpliceComponent;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Per-PID splice information.
 *
 * Since: 1.20
 */
public final class SCTESpliceComponent
{
	/** the main Gtk struct */
	protected GstMpegtsSCTESpliceComponent* gstMpegtsSCTESpliceComponent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSCTESpliceComponent* getSCTESpliceComponentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSCTESpliceComponent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSCTESpliceComponent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSCTESpliceComponent* gstMpegtsSCTESpliceComponent, bool ownedRef = false)
	{
		this.gstMpegtsSCTESpliceComponent = gstMpegtsSCTESpliceComponent;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsSCTESpliceComponent);
	}


	/**
	 * the elementary PID stream containing the Splice Point
	 */
	public @property ubyte tag()
	{
		return gstMpegtsSCTESpliceComponent.tag;
	}

	/** Ditto */
	public @property void tag(ubyte value)
	{
		gstMpegtsSCTESpliceComponent.tag = value;
	}

	/**
	 * Whether @splice_time was specified
	 */
	public @property bool spliceTimeSpecified()
	{
		return gstMpegtsSCTESpliceComponent.spliceTimeSpecified != 0;
	}

	/** Ditto */
	public @property void spliceTimeSpecified(bool value)
	{
		gstMpegtsSCTESpliceComponent.spliceTimeSpecified = value;
	}

	/**
	 * the presentation time of the signaled splice event
	 */
	public @property ulong spliceTime()
	{
		return gstMpegtsSCTESpliceComponent.spliceTime;
	}

	/** Ditto */
	public @property void spliceTime(ulong value)
	{
		gstMpegtsSCTESpliceComponent.spliceTime = value;
	}

	/**
	 * The UTC time of the signaled splice event
	 */
	public @property uint utcSpliceTime()
	{
		return gstMpegtsSCTESpliceComponent.utcSpliceTime;
	}

	/** Ditto */
	public @property void utcSpliceTime(uint value)
	{
		gstMpegtsSCTESpliceComponent.utcSpliceTime = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_scte_splice_component_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsSCTESpliceComponent.
	 *
	 * Params:
	 *     tag = the elementary PID stream identifier
	 *
	 * Returns: A newly allocated #GstMpegtsSCTESpliceComponent
	 *
	 * Since: 1.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte tag)
	{
		auto __p = gst_mpegts_scte_splice_component_new(tag);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSCTESpliceComponent*) __p);
	}
}
