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
 * inFile  = gstreamer-GstMemory.html
 * outPack = gstreamer
 * outFile = Memory
 * strct   = GstMemory
 * realStrct=
 * ctorStrct=
 * clss    = Memory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_memory_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gstreamer.Allocator
 * 	- gstreamer.Memory
 * structWrap:
 * 	- GstAllocator* -> Allocator
 * 	- GstMemory* -> Memory
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Memory;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gstreamer.Allocator;
private import gstreamer.Memory;




/**
 * GstMemory is a lightweight refcounted object that wraps a region of memory.
 * They are typically used to manage the data of a GstBuffer.
 *
 * A GstMemory object has an allocated region of memory of maxsize. The maximum
 * size does not change during the lifetime of the memory object. The memory
 * also has an offset and size property that specifies the valid range of memory
 * in the allocated region.
 *
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
 * Refcounting of the memory block is performed with gst_memory_ref() and
 * gst_memory_unref().
 *
 * The size of the memory can be retrieved and changed with
 * gst_memory_get_sizes() and gst_memory_resize() respectively.
 *
 * Getting access to the data of the memory is performed with gst_memory_map().
 * The call will return a pointer to offset bytes into the region of memory.
 * After the memory access is completed, gst_memory_unmap() should be called.
 *
 * Memory can be copied with gst_memory_copy(), which will return a writable
 * copy. gst_memory_share() will create a new memory block that shares the
 * memory with an existing memory block at a custom offset and with a custom
 * size.
 *
 * Memory can be efficiently merged when gst_memory_is_span() returns TRUE.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class Memory
{
	
	/** the main Gtk struct */
	protected GstMemory* gstMemory;
	
	
	public GstMemory* getMemoryStruct()
	{
		return gstMemory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMemory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstMemory* gstMemory)
	{
		this.gstMemory = gstMemory;
	}
	
	/**
	 */
	
	/**
	 * Initializes a newly allocated mem with the given parameters. This function
	 * will call gst_mini_object_init() with the default memory parameters.
	 * Params:
	 * flags = GstMemoryFlags
	 * allocator = the GstAllocator
	 * parent = the parent of mem
	 * maxsize = the total size of the memory
	 * offset = The offset in the memory
	 * size = the size of valid data in the memory
	 */
	public void init(GstMemoryFlags flags, Allocator allocator, Memory parent, gsize maxsize, gsize alig, gsize offset, gsize size)
	{
		// void gst_memory_init (GstMemory *mem,  GstMemoryFlags flags,  GstAllocator *allocator,  GstMemory *parent,  gsize maxsize,  gsize align,  gsize offset,  gsize size);
		gst_memory_init(gstMemory, flags, (allocator is null) ? null : allocator.getAllocatorStruct(), (parent is null) ? null : parent.getMemoryStruct(), maxsize, alig, offset, size);
	}
	
	/**
	 * Increase the refcount of this memory.
	 * Returns: memory (for convenience when doing assignments). [transfer full]
	 */
	public Memory doref()
	{
		// GstMemory * gst_memory_ref (GstMemory *memory);
		auto p = gst_memory_ref(gstMemory);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Decrease the refcount of an memory, freeing it if the refcount reaches 0.
	 */
	public void unref()
	{
		// void gst_memory_unref (GstMemory *memory);
		gst_memory_unref(gstMemory);
	}
	
	/**
	 * Get the current size, offset and maxsize of mem.
	 * Params:
	 * offset = pointer to offset
	 * maxsize = pointer to maxsize
	 * Returns: the current sizes of mem
	 */
	public gsize getSizes(ref gsize offset, ref gsize maxsize)
	{
		// gsize gst_memory_get_sizes (GstMemory *mem,  gsize *offset,  gsize *maxsize);
		return gst_memory_get_sizes(gstMemory, &offset, &maxsize);
	}
	
	/**
	 * Resize the memory region. mem should be writable and offset + size should be
	 * less than the maxsize of mem.
	 * GST_MEMORY_FLAG_ZERO_PREFIXED and GST_MEMORY_FLAG_ZERO_PADDED will be
	 * cleared when offset or padding is increased respectively.
	 * Params:
	 * offset = a new offset
	 * size = a new size
	 */
	public void resize(gssize offset, gsize size)
	{
		// void gst_memory_resize (GstMemory *mem,  gssize offset,  gsize size);
		gst_memory_resize(gstMemory, offset, size);
	}
	
	/**
	 * Create a GstMemory object that is mapped with flags. If mem is mappable
	 * with flags, this function returns the mapped mem directly. Otherwise a
	 * mapped copy of mem is returned.
	 * This function takes ownership of old mem and returns a reference to a new
	 * GstMemory.
	 * Params:
	 * info = pointer for info. [out]
	 * flags = mapping flags
	 * Returns: a GstMemory object mapped with flags or NULL when a mapping is not possible. [transfer full]
	 */
	public Memory makeMapped(out GstMapInfo info, GstMapFlags flags)
	{
		// GstMemory * gst_memory_make_mapped (GstMemory *mem,  GstMapInfo *info,  GstMapFlags flags);
		auto p = gst_memory_make_mapped(gstMemory, &info, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Fill info with the pointer and sizes of the memory in mem that can be
	 * accessed according to flags.
	 * Params:
	 * info = pointer for info. [out]
	 * flags = mapping flags
	 * Returns: TRUE if the map operation was successful.
	 */
	public int map(out GstMapInfo info, GstMapFlags flags)
	{
		// gboolean gst_memory_map (GstMemory *mem,  GstMapInfo *info,  GstMapFlags flags);
		return gst_memory_map(gstMemory, &info, flags);
	}
	
	/**
	 * Release the memory obtained with gst_memory_map()
	 * Params:
	 * info = a GstMapInfo
	 */
	public void unmap(ref GstMapInfo info)
	{
		// void gst_memory_unmap (GstMemory *mem,  GstMapInfo *info);
		gst_memory_unmap(gstMemory, &info);
	}
	
	/**
	 * Return a copy of size bytes from mem starting from offset. This copy is
	 * guaranteed to be writable. size can be set to -1 to return a copy all bytes
	 * from offset.
	 * Params:
	 * offset = an offset to copy
	 * size = size to copy or -1 to copy all bytes from offset
	 * Returns: a new GstMemory.
	 */
	public Memory copy(gssize offset, gssize size)
	{
		// GstMemory * gst_memory_copy (GstMemory *mem,  gssize offset,  gssize size);
		auto p = gst_memory_copy(gstMemory, offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Return a shared copy of size bytes from mem starting from offset. No
	 * memory copy is performed and the memory region is simply shared. The result
	 * is guaranteed to be not-writable. size can be set to -1 to return a share
	 * all bytes from offset.
	 * Params:
	 * offset = an offset to share
	 * size = size to share or -1 to share bytes from offset
	 * Returns: a new GstMemory.
	 */
	public Memory share(gssize offset, gssize size)
	{
		// GstMemory * gst_memory_share (GstMemory *mem,  gssize offset,  gssize size);
		auto p = gst_memory_share(gstMemory, offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Check if mem1 and mem2 share the memory with a common parent memory object
	 * and that the memory is contiguous.
	 * If this is the case, the memory of mem1 and mem2 can be merged
	 * efficiently by performing gst_memory_share() on the parent object from
	 * the returned offset.
	 * Params:
	 * mem2 = a GstMemory
	 * offset = a pointer to a result offset
	 * Returns: TRUE if the memory is contiguous and of a common parent.
	 */
	public int isSpan(Memory mem2, out gsize offset)
	{
		// gboolean gst_memory_is_span (GstMemory *mem1,  GstMemory *mem2,  gsize *offset);
		return gst_memory_is_span(gstMemory, (mem2 is null) ? null : mem2.getMemoryStruct(), &offset);
	}
}
