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


module gst.mpegts.T2DeliverySystemDescriptor;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * describe DVB-T2 transmissions according to EN 302 755
 */
public final class T2DeliverySystemDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsT2DeliverySystemDescriptor* gstMpegtsT2DeliverySystemDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsT2DeliverySystemDescriptor* getT2DeliverySystemDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsT2DeliverySystemDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsT2DeliverySystemDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsT2DeliverySystemDescriptor* gstMpegtsT2DeliverySystemDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsT2DeliverySystemDescriptor = gstMpegtsT2DeliverySystemDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			gst_mpegts_t2_delivery_system_descriptor_free(gstMpegtsT2DeliverySystemDescriptor);
	}


	/** */
	public @property ubyte plpId()
	{
		return gstMpegtsT2DeliverySystemDescriptor.plpId;
	}

	/** Ditto */
	public @property void plpId(ubyte value)
	{
		gstMpegtsT2DeliverySystemDescriptor.plpId = value;
	}

	/** */
	public @property ushort t2SystemId()
	{
		return gstMpegtsT2DeliverySystemDescriptor.t2SystemId;
	}

	/** Ditto */
	public @property void t2SystemId(ushort value)
	{
		gstMpegtsT2DeliverySystemDescriptor.t2SystemId = value;
	}

	/** */
	public @property ubyte sisoMiso()
	{
		return gstMpegtsT2DeliverySystemDescriptor.sisoMiso;
	}

	/** Ditto */
	public @property void sisoMiso(ubyte value)
	{
		gstMpegtsT2DeliverySystemDescriptor.sisoMiso = value;
	}

	/** */
	public @property uint bandwidth()
	{
		return gstMpegtsT2DeliverySystemDescriptor.bandwidth;
	}

	/** Ditto */
	public @property void bandwidth(uint value)
	{
		gstMpegtsT2DeliverySystemDescriptor.bandwidth = value;
	}

	/** */
	public @property GstMpegtsTerrestrialGuardInterval guardInterval()
	{
		return gstMpegtsT2DeliverySystemDescriptor.guardInterval;
	}

	/** Ditto */
	public @property void guardInterval(GstMpegtsTerrestrialGuardInterval value)
	{
		gstMpegtsT2DeliverySystemDescriptor.guardInterval = value;
	}

	/** */
	public @property GstMpegtsTerrestrialTransmissionMode transmissionMode()
	{
		return gstMpegtsT2DeliverySystemDescriptor.transmissionMode;
	}

	/** Ditto */
	public @property void transmissionMode(GstMpegtsTerrestrialTransmissionMode value)
	{
		gstMpegtsT2DeliverySystemDescriptor.transmissionMode = value;
	}

	/** */
	public @property bool otherFrequency()
	{
		return gstMpegtsT2DeliverySystemDescriptor.otherFrequency != 0;
	}

	/** Ditto */
	public @property void otherFrequency(bool value)
	{
		gstMpegtsT2DeliverySystemDescriptor.otherFrequency = value;
	}

	/** */
	public @property bool tfs()
	{
		return gstMpegtsT2DeliverySystemDescriptor.tfs != 0;
	}

	/** Ditto */
	public @property void tfs(bool value)
	{
		gstMpegtsT2DeliverySystemDescriptor.tfs = value;
	}

	/** */
	public @property PtrArray cells()
	{
		return new PtrArray(gstMpegtsT2DeliverySystemDescriptor.cells, false);
	}

	/** Ditto */
	public @property void cells(PtrArray value)
	{
		gstMpegtsT2DeliverySystemDescriptor.cells = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_t2_delivery_system_descriptor_get_type();
	}

	/** */
	public void free()
	{
		gst_mpegts_t2_delivery_system_descriptor_free(gstMpegtsT2DeliverySystemDescriptor);
		ownedRef = false;
	}
}
