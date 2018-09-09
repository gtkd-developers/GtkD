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


module gst.mpegts.SDTService;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class SDTService
{
	/** the main Gtk struct */
	protected GstMpegtsSDTService* gstMpegtsSDTService;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSDTService* getSDTServiceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSDTService;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSDTService;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSDTService* gstMpegtsSDTService, bool ownedRef = false)
	{
		this.gstMpegtsSDTService = gstMpegtsSDTService;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsSDTService);
	}


	/**
	 * The program number this table belongs to
	 */
	public @property ushort serviceId()
	{
		return gstMpegtsSDTService.serviceId;
	}

	/** Ditto */
	public @property void serviceId(ushort value)
	{
		gstMpegtsSDTService.serviceId = value;
	}

	/**
	 * EIT schedule information is present in this transport stream
	 */
	public @property bool EITScheduleFlag()
	{
		return gstMpegtsSDTService.EITScheduleFlag != 0;
	}

	/** Ditto */
	public @property void EITScheduleFlag(bool value)
	{
		gstMpegtsSDTService.EITScheduleFlag = value;
	}

	/**
	 * EIT present/following information is present in this transport stream
	 */
	public @property bool EITPresentFollowingFlag()
	{
		return gstMpegtsSDTService.EITPresentFollowingFlag != 0;
	}

	/** Ditto */
	public @property void EITPresentFollowingFlag(bool value)
	{
		gstMpegtsSDTService.EITPresentFollowingFlag = value;
	}

	/**
	 * Status of this service
	 */
	public @property GstMpegtsRunningStatus runningStatus()
	{
		return gstMpegtsSDTService.runningStatus;
	}

	/** Ditto */
	public @property void runningStatus(GstMpegtsRunningStatus value)
	{
		gstMpegtsSDTService.runningStatus = value;
	}

	/**
	 * True if one or more streams is controlled by a CA system
	 */
	public @property bool freeCAMode()
	{
		return gstMpegtsSDTService.freeCAMode != 0;
	}

	/** Ditto */
	public @property void freeCAMode(bool value)
	{
		gstMpegtsSDTService.freeCAMode = value;
	}

	/**
	 * List of descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsSDTService.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsSDTService.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_sdt_service_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsSDTService.
	 *
	 * Returns: A newly allocated #GstMpegtsSDTService
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_mpegts_sdt_service_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSDTService*) p);
	}
}
