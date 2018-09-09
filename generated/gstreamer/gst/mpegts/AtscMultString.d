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


module gst.mpegts.AtscMultString;

private import glib.MemorySlice;
private import glib.PtrArray;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class AtscMultString
{
	/** the main Gtk struct */
	protected GstMpegtsAtscMultString* gstMpegtsAtscMultString;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscMultString* getAtscMultStringStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscMultString;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscMultString;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscMultString* gstMpegtsAtscMultString, bool ownedRef = false)
	{
		this.gstMpegtsAtscMultString = gstMpegtsAtscMultString;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscMultString);
	}


	/** */
	public @property char[4] iso639Langcode()
	{
		return gstMpegtsAtscMultString.iso639Langcode;
	}

	/** Ditto */
	public @property void iso639Langcode(char[4] value)
	{
		gstMpegtsAtscMultString.iso639Langcode = value;
	}

	/** */
	public @property PtrArray segments()
	{
		return new PtrArray(gstMpegtsAtscMultString.segments, false);
	}

	/** Ditto */
	public @property void segments(PtrArray value)
	{
		gstMpegtsAtscMultString.segments = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_mult_string_get_type();
	}
}
