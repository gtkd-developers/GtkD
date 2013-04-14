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

/*
 * Conversion parameters:
 * inFile  = GstAllocator.html
 * outPack = gstreamer
 * outFile = Allocator
 * strct   = GstAllocator
 * realStrct=
 * ctorStrct=
 * clss    = Allocator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_allocator_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Memory
 * structWrap:
 * 	- GstAllocator* -> Allocator
 * 	- GstMemory* -> Memory
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Allocator;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Memory;



private import gstreamer.ObjectGst;

/**
 * Memory is usually created by allocators with a gst_allocator_alloc()
 * method call. When NULL is used as the allocator, the default allocator will
 * be used.
 *
 * New allocators can be registered with gst_allocator_register().
 * Allocators are identified by name and can be retrieved with
 * gst_allocator_find(). gst_allocator_set_default() can be used to change the
 * default allocator.
 *
 * New memory can be created with gst_memory_new_wrapped() that wraps the memory
 * allocated elsewhere.
 *
 * Last reviewed on 2012-07-09 (0.11.3)
 */
public class Allocator : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstAllocator* gstAllocator;
	
	
	public GstAllocator* getAllocatorStruct()
	{
		return gstAllocator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAllocator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstAllocator* gstAllocator)
	{
		super(cast(GstObject*)gstAllocator);
		this.gstAllocator = gstAllocator;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstAllocator = cast(GstAllocator*)obj;
	}
	
	/**
	 */
	
	/**
	 * Find a previously registered allocator with name. When name is NULL, the
	 * default allocator will be returned.
	 * Params:
	 * name = the name of the allocator
	 * Returns: a GstAllocator or NULL when the allocator with name was not registered. Use gst_object_unref() to release the allocator after usage. [transfer full]
	 */
	public static Allocator find(string name)
	{
		// GstAllocator * gst_allocator_find (const gchar *name);
		auto p = gst_allocator_find(Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Allocator)(cast(GstAllocator*) p);
	}
	
	/**
	 * Registers the memory allocator with name. This function takes ownership of
	 * allocator.
	 * Params:
	 * name = the name of the allocator
	 * allocator = GstAllocator. [transfer full]
	 */
	public static void register(string name, Allocator allocator)
	{
		// void gst_allocator_register (const gchar *name,  GstAllocator *allocator);
		gst_allocator_register(Str.toStringz(name), (allocator is null) ? null : allocator.getAllocatorStruct());
	}
	
	/**
	 * Set the default allocator. This function takes ownership of allocator.
	 */
	public void setDefault()
	{
		// void gst_allocator_set_default (GstAllocator *allocator);
		gst_allocator_set_default(gstAllocator);
	}
	
	/**
	 * Initialize params to its default values
	 * Params:
	 * params = a GstAllocationParams
	 */
	public static void gstAllocationParamsInit(GstAllocationParams* params)
	{
		// void gst_allocation_params_init (GstAllocationParams *params);
		gst_allocation_params_init(params);
	}
	
	/**
	 * Create a copy of params.
	 * Free-function: gst_allocation_params_free
	 * Params:
	 * params = a GstAllocationParams. [transfer none]
	 * Returns: a new #GstAllocationParams, free with gst_allocation_params_free(). [transfer full]
	 */
	public static GstAllocationParams* gstAllocationParamsCopy(GstAllocationParams* params)
	{
		// GstAllocationParams * gst_allocation_params_copy (const GstAllocationParams *params);
		return gst_allocation_params_copy(params);
	}
	
	/**
	 * Free params
	 * Params:
	 * params = a GstAllocationParams. [in][transfer full]
	 */
	public static void gstAllocationParamsFree(GstAllocationParams* params)
	{
		// void gst_allocation_params_free (GstAllocationParams *params);
		gst_allocation_params_free(params);
	}
	
	/**
	 * Use allocator to allocate a new memory block with memory that is at least
	 * size big.
	 * The optional params can specify the prefix and padding for the memory. If
	 * NULL is passed, no flags, no extra prefix/padding and a default alignment is
	 * used.
	 * The prefix/padding will be filled with 0 if flags contains
	 * GST_MEMORY_FLAG_ZERO_PREFIXED and GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 * When allocator is NULL, the default allocator will be used.
	 * The alignment in params is given as a bitmask so that align + 1 equals
	 * the amount of bytes to align to. For example, to align to 8 bytes,
	 * use an alignment of 7.
	 * Params:
	 * size = size of the visible memory area
	 * params = optional parameters. [transfer none][allow-none]
	 * Returns: a new GstMemory. [transfer full]
	 */
	public Memory alloc(gsize size, GstAllocationParams* params)
	{
		// GstMemory * gst_allocator_alloc (GstAllocator *allocator,  gsize size,  GstAllocationParams *params);
		auto p = gst_allocator_alloc(gstAllocator, size, params);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Free memory that was previously allocated with gst_allocator_alloc().
	 * Params:
	 * memory = the memory to free. [transfer full]
	 */
	public void free(Memory memory)
	{
		// void gst_allocator_free (GstAllocator *allocator,  GstMemory *memory);
		gst_allocator_free(gstAllocator, (memory is null) ? null : memory.getMemoryStruct());
	}
	
	/**
	 * Allocate a new memory block that wraps the given data.
	 * The prefix/padding must be filled with 0 if flags contains
	 * GST_MEMORY_FLAG_ZERO_PREFIXED and GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 * Params:
	 * flags = GstMemoryFlags
	 * data = data to wrap
	 * maxsize = allocated size of data
	 * offset = offset in data
	 * size = size of valid data
	 * userData = user_data
	 * notify = called with user_data when the memory is freed
	 * Returns: a new GstMemory.
	 */
	public static Memory gstMemoryNewWrapped(GstMemoryFlags flags, void* data, gsize maxsize, gsize offset, gsize size, void* userData, GDestroyNotify notify)
	{
		// GstMemory * gst_memory_new_wrapped (GstMemoryFlags flags,  gpointer data,  gsize maxsize,  gsize offset,  gsize size,  gpointer user_data,  GDestroyNotify notify);
		auto p = gst_memory_new_wrapped(flags, data, maxsize, offset, size, userData, notify);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
}
