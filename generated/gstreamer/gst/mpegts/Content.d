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


module gst.mpegts.Content;

private import glib.MemorySlice;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class Content
{
	/** the main Gtk struct */
	protected GstMpegtsContent* gstMpegtsContent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsContent* getContentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsContent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsContent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsContent* gstMpegtsContent, bool ownedRef = false)
	{
		this.gstMpegtsContent = gstMpegtsContent;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsContent);
	}


	/** */
	public @property GstMpegtsContentNibbleHi contentNibble1()
	{
		return gstMpegtsContent.contentNibble1;
	}

	/** Ditto */
	public @property void contentNibble1(GstMpegtsContentNibbleHi value)
	{
		gstMpegtsContent.contentNibble1 = value;
	}

	/** */
	public @property ubyte contentNibble2()
	{
		return gstMpegtsContent.contentNibble2;
	}

	/** Ditto */
	public @property void contentNibble2(ubyte value)
	{
		gstMpegtsContent.contentNibble2 = value;
	}

	/** */
	public @property ubyte userByte()
	{
		return gstMpegtsContent.userByte;
	}

	/** Ditto */
	public @property void userByte(ubyte value)
	{
		gstMpegtsContent.userByte = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_content_get_type();
	}
}
