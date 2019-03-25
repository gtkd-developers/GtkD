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


module gst.mpegts.TerrestrialDeliverySystemDescriptor;

private import glib.MemorySlice;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Terrestrial Delivery System Descriptor (EN 300 468 v.1.13.1)
 */
public final class TerrestrialDeliverySystemDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsTerrestrialDeliverySystemDescriptor* gstMpegtsTerrestrialDeliverySystemDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsTerrestrialDeliverySystemDescriptor* getTerrestrialDeliverySystemDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsTerrestrialDeliverySystemDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsTerrestrialDeliverySystemDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsTerrestrialDeliverySystemDescriptor* gstMpegtsTerrestrialDeliverySystemDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsTerrestrialDeliverySystemDescriptor = gstMpegtsTerrestrialDeliverySystemDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsTerrestrialDeliverySystemDescriptor);
	}


	/**
	 * the frequency in Hz (Hertz)
	 */
	public @property uint frequency()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.frequency;
	}

	/** Ditto */
	public @property void frequency(uint value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.frequency = value;
	}

	/**
	 * the bandwidth in Hz (Hertz)
	 */
	public @property uint bandwidth()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.bandwidth;
	}

	/** Ditto */
	public @property void bandwidth(uint value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.bandwidth = value;
	}

	/**
	 * %TRUE High Priority %FALSE Low Priority
	 */
	public @property bool priority()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.priority != 0;
	}

	/** Ditto */
	public @property void priority(bool value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.priority = value;
	}

	/**
	 * %TRUE no time slicing %FALSE time slicing
	 */
	public @property bool timeSlicing()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.timeSlicing != 0;
	}

	/** Ditto */
	public @property void timeSlicing(bool value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.timeSlicing = value;
	}

	/**
	 * %TRUE no mpe-fec is used %FALSE mpe-fec is use
	 */
	public @property bool mpeFec()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.mpeFec != 0;
	}

	/** Ditto */
	public @property void mpeFec(bool value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.mpeFec = value;
	}

	/**
	 * the constallation
	 */
	public @property GstMpegtsModulationType constellation()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.constellation;
	}

	/** Ditto */
	public @property void constellation(GstMpegtsModulationType value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.constellation = value;
	}

	/**
	 * the hierarchy
	 */
	public @property GstMpegtsTerrestrialHierarchy hierarchy()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.hierarchy;
	}

	/** Ditto */
	public @property void hierarchy(GstMpegtsTerrestrialHierarchy value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.hierarchy = value;
	}

	/** */
	public @property GstMpegtsDVBCodeRate codeRateHp()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.codeRateHp;
	}

	/** Ditto */
	public @property void codeRateHp(GstMpegtsDVBCodeRate value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.codeRateHp = value;
	}

	/** */
	public @property GstMpegtsDVBCodeRate codeRateLp()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.codeRateLp;
	}

	/** Ditto */
	public @property void codeRateLp(GstMpegtsDVBCodeRate value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.codeRateLp = value;
	}

	/** */
	public @property GstMpegtsTerrestrialGuardInterval guardInterval()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.guardInterval;
	}

	/** Ditto */
	public @property void guardInterval(GstMpegtsTerrestrialGuardInterval value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.guardInterval = value;
	}

	/** */
	public @property GstMpegtsTerrestrialTransmissionMode transmissionMode()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.transmissionMode;
	}

	/** Ditto */
	public @property void transmissionMode(GstMpegtsTerrestrialTransmissionMode value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.transmissionMode = value;
	}

	/**
	 * %TRUE more frequency are use, else not
	 */
	public @property bool otherFrequency()
	{
		return gstMpegtsTerrestrialDeliverySystemDescriptor.otherFrequency != 0;
	}

	/** Ditto */
	public @property void otherFrequency(bool value)
	{
		gstMpegtsTerrestrialDeliverySystemDescriptor.otherFrequency = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_terrestrial_delivery_system_descriptor_get_type();
	}
}
