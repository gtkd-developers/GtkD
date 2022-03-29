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


module gstreamer.AllocationParams;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * Parameters to control the allocation of memory
 */
public class AllocationParams
{
	/** the main Gtk struct */
	protected GstAllocationParams* gstAllocationParams;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstAllocationParams* getAllocationParamsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAllocationParams;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstAllocationParams;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAllocationParams* gstAllocationParams, bool ownedRef = false)
	{
		this.gstAllocationParams = gstAllocationParams;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_allocation_params_free(gstAllocationParams);
	}


	/** */
	public static GType getType()
	{
		return gst_allocation_params_get_type();
	}

	/**
	 * Create a new #GstAllocationParams on the heap.  This function is for
	 * use in GStreamer language bindings.  In your own code, you can just
	 * declare a #GstAllocationParams on the stack or in a struct, and
	 * call gst_allocation_params_init() to initialize it.
	 *
	 * You do not need to call gst_allocation_params_init() on the instance
	 * returned by this function.
	 *
	 * Returns: a new #GstAllocationParams
	 *
	 * Since: 1.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_allocation_params_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstAllocationParams*) __p);
	}

	/**
	 * Create a copy of @params.
	 *
	 * Returns: a new #GstAllocationParams.
	 */
	public AllocationParams copy()
	{
		auto __p = gst_allocation_params_copy(gstAllocationParams);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AllocationParams)(cast(GstAllocationParams*) __p, true);
	}

	/**
	 * Free @params
	 */
	public void free()
	{
		gst_allocation_params_free(gstAllocationParams);
		ownedRef = false;
	}

	/**
	 * Initialize @params to its default values
	 */
	public void init()
	{
		gst_allocation_params_init(gstAllocationParams);
	}
}
