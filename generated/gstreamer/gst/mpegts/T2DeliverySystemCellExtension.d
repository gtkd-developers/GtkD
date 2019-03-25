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


module gst.mpegts.T2DeliverySystemCellExtension;

private import glib.MemorySlice;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class T2DeliverySystemCellExtension
{
	/** the main Gtk struct */
	protected GstMpegtsT2DeliverySystemCellExtension* gstMpegtsT2DeliverySystemCellExtension;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsT2DeliverySystemCellExtension* getT2DeliverySystemCellExtensionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsT2DeliverySystemCellExtension;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsT2DeliverySystemCellExtension;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsT2DeliverySystemCellExtension* gstMpegtsT2DeliverySystemCellExtension, bool ownedRef = false)
	{
		this.gstMpegtsT2DeliverySystemCellExtension = gstMpegtsT2DeliverySystemCellExtension;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsT2DeliverySystemCellExtension);
	}


	/**
	 * id of the sub cell
	 */
	public @property ubyte cellIdExtension()
	{
		return gstMpegtsT2DeliverySystemCellExtension.cellIdExtension;
	}

	/** Ditto */
	public @property void cellIdExtension(ubyte value)
	{
		gstMpegtsT2DeliverySystemCellExtension.cellIdExtension = value;
	}

	/**
	 * centre frequency of the sub cell in Hz
	 */
	public @property uint transposerFrequency()
	{
		return gstMpegtsT2DeliverySystemCellExtension.transposerFrequency;
	}

	/** Ditto */
	public @property void transposerFrequency(uint value)
	{
		gstMpegtsT2DeliverySystemCellExtension.transposerFrequency = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_t2_delivery_system_cell_extension_get_type();
	}
}
