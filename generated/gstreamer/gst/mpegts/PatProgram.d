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


module gst.mpegts.PatProgram;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * A program entry from a Program Association Table (ITU H.222.0, ISO/IEC 13818-1).
 */
public final class PatProgram
{
	/** the main Gtk struct */
	protected GstMpegtsPatProgram* gstMpegtsPatProgram;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsPatProgram* getPatProgramStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsPatProgram;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsPatProgram;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsPatProgram* gstMpegtsPatProgram, bool ownedRef = false)
	{
		this.gstMpegtsPatProgram = gstMpegtsPatProgram;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsPatProgram);
	}


	/**
	 * the program number
	 */
	public @property ushort programNumber()
	{
		return gstMpegtsPatProgram.programNumber;
	}

	/** Ditto */
	public @property void programNumber(ushort value)
	{
		gstMpegtsPatProgram.programNumber = value;
	}

	/**
	 * the network of program map PID
	 */
	public @property ushort networkOrProgramMapPID()
	{
		return gstMpegtsPatProgram.networkOrProgramMapPID;
	}

	/** Ditto */
	public @property void networkOrProgramMapPID(ushort value)
	{
		gstMpegtsPatProgram.networkOrProgramMapPID = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_pat_program_get_type();
	}

	/**
	 * Allocates a new #GstMpegtsPatProgram.
	 *
	 * Returns: A newly allocated #GstMpegtsPatProgram
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_mpegts_pat_program_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsPatProgram*) __p);
	}

	/**
	 * Allocates a new #GPtrArray for #GstMpegtsPatProgram. The array can be filled
	 * and then converted to a PAT section with gst_mpegts_section_from_pat().
	 *
	 * Returns: A newly allocated #GPtrArray
	 */
	public static PtrArray patNew()
	{
		auto __p = gst_mpegts_pat_new();

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p, true);
	}
}
