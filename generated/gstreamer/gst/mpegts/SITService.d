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


module gst.mpegts.SITService;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * SIT Service entry
 *
 * Since: 1.20
 */
public final class SITService
{
	/** the main Gtk struct */
	protected GstMpegtsSITService* gstMpegtsSITService;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSITService* getSITServiceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSITService;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSITService;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSITService* gstMpegtsSITService, bool ownedRef = false)
	{
		this.gstMpegtsSITService = gstMpegtsSITService;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsSITService);
	}


	/**
	 * The Program number this table belongs to
	 */
	public @property ushort serviceId()
	{
		return gstMpegtsSITService.serviceId;
	}

	/** Ditto */
	public @property void serviceId(ushort value)
	{
		gstMpegtsSITService.serviceId = value;
	}

	/**
	 * Status of this service
	 */
	public @property GstMpegtsRunningStatus runningStatus()
	{
		return gstMpegtsSITService.runningStatus;
	}

	/** Ditto */
	public @property void runningStatus(GstMpegtsRunningStatus value)
	{
		gstMpegtsSITService.runningStatus = value;
	}

	/**
	 * List of descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsSITService.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsSITService.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_sit_service_get_type();
	}
}
