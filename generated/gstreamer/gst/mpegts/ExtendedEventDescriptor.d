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


module gst.mpegts.ExtendedEventDescriptor;

private import glib.MemorySlice;
private import glib.PtrArray;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Extended Event Descriptor (EN 300 468 v.1.13.1)
 */
public final class ExtendedEventDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsExtendedEventDescriptor* gstMpegtsExtendedEventDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsExtendedEventDescriptor* getExtendedEventDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsExtendedEventDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsExtendedEventDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsExtendedEventDescriptor* gstMpegtsExtendedEventDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsExtendedEventDescriptor = gstMpegtsExtendedEventDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			gst_mpegts_extended_event_descriptor_free(gstMpegtsExtendedEventDescriptor);
	}


	/** */
	public @property ubyte descriptorNumber()
	{
		return gstMpegtsExtendedEventDescriptor.descriptorNumber;
	}

	/** Ditto */
	public @property void descriptorNumber(ubyte value)
	{
		gstMpegtsExtendedEventDescriptor.descriptorNumber = value;
	}

	/** */
	public @property ubyte lastDescriptorNumber()
	{
		return gstMpegtsExtendedEventDescriptor.lastDescriptorNumber;
	}

	/** Ditto */
	public @property void lastDescriptorNumber(ubyte value)
	{
		gstMpegtsExtendedEventDescriptor.lastDescriptorNumber = value;
	}

	/**
	 * NULL terminated language code.
	 */
	public @property string languageCode()
	{
		return Str.toString(gstMpegtsExtendedEventDescriptor.languageCode);
	}

	/** Ditto */
	public @property void languageCode(string value)
	{
		gstMpegtsExtendedEventDescriptor.languageCode = Str.toStringz(value);
	}

	/**
	 * the #GstMpegtsExtendedEventItem
	 */
	public @property PtrArray items()
	{
		return new PtrArray(gstMpegtsExtendedEventDescriptor.items, false);
	}

	/** Ditto */
	public @property void items(PtrArray value)
	{
		gstMpegtsExtendedEventDescriptor.items = value.getPtrArrayStruct();
	}

	/** */
	public @property string text()
	{
		return Str.toString(gstMpegtsExtendedEventDescriptor.text);
	}

	/** Ditto */
	public @property void text(string value)
	{
		gstMpegtsExtendedEventDescriptor.text = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_extended_event_descriptor_get_type();
	}

	/** */
	public void free()
	{
		gst_mpegts_extended_event_descriptor_free(gstMpegtsExtendedEventDescriptor);
		ownedRef = false;
	}
}
