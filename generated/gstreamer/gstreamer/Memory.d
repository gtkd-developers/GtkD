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


module gstreamer.Memory;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Allocator;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * GstMemory is a lightweight refcounted object that wraps a region of memory.
 * They are typically used to manage the data of a #GstBuffer.
 * 
 * A GstMemory object has an allocated region of memory of maxsize. The maximum
 * size does not change during the lifetime of the memory object. The memory
 * also has an offset and size property that specifies the valid range of memory
 * in the allocated region.
 * 
 * Memory is usually created by allocators with a gst_allocator_alloc()
 * method call. When %NULL is used as the allocator, the default allocator will
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
 * Memory can be efficiently merged when gst_memory_is_span() returns %TRUE.
 */
public class Memory
{
	/** the main Gtk struct */
	protected GstMemory* gstMemory;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMemory* getMemoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMemory;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMemory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMemory* gstMemory, bool ownedRef = false)
	{
		this.gstMemory = gstMemory;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_memory_get_type();
	}

	/**
	 * Allocate a new memory block that wraps the given @data.
	 *
	 * The prefix/padding must be filled with 0 if @flags contains
	 * #GST_MEMORY_FLAG_ZERO_PREFIXED and #GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 *
	 * Params:
	 *     flags = #GstMemoryFlags
	 *     data = data to
	 *         wrap
	 *     maxsize = allocated size of @data
	 *     offset = offset in @data
	 *     userData = user_data
	 *     notify = called with @user_data when the memory is freed
	 *
	 * Returns: a new #GstMemory.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstMemoryFlags flags, ubyte[] data, size_t maxsize, size_t offset, void* userData, GDestroyNotify notify)
	{
		auto p = gst_memory_new_wrapped(flags, data.ptr, maxsize, offset, cast(size_t)data.length, userData, notify);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_wrapped");
		}

		this(cast(GstMemory*) p);
	}

	/**
	 * Return a copy of @size bytes from @mem starting from @offset. This copy is
	 * guaranteed to be writable. @size can be set to -1 to return a copy
	 * from @offset to the end of the memory region.
	 *
	 * Params:
	 *     offset = offset to copy from
	 *     size = size to copy, or -1 to copy to the end of the memory region
	 *
	 * Returns: a new #GstMemory.
	 */
	public Memory copy(ptrdiff_t offset, ptrdiff_t size)
	{
		auto p = gst_memory_copy(gstMemory, offset, size);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Get the current @size, @offset and @maxsize of @mem.
	 *
	 * Params:
	 *     offset = pointer to offset
	 *     maxsize = pointer to maxsize
	 *
	 * Returns: the current sizes of @mem
	 */
	public size_t getSizes(out size_t offset, out size_t maxsize)
	{
		return gst_memory_get_sizes(gstMemory, &offset, &maxsize);
	}

	/**
	 * Initializes a newly allocated @mem with the given parameters. This function
	 * will call gst_mini_object_init() with the default memory parameters.
	 *
	 * Params:
	 *     flags = #GstMemoryFlags
	 *     allocator = the #GstAllocator
	 *     parent = the parent of @mem
	 *     maxsize = the total size of the memory
	 *     align_ = the alignment of the memory
	 *     offset = The offset in the memory
	 *     size = the size of valid data in the memory
	 */
	public void init(GstMemoryFlags flags, Allocator allocator, Memory parent, size_t maxsize, size_t align_, size_t offset, size_t size)
	{
		gst_memory_init(gstMemory, flags, (allocator is null) ? null : allocator.getAllocatorStruct(), (parent is null) ? null : parent.getMemoryStruct(), maxsize, align_, offset, size);
	}

	/**
	 * Check if @mem1 and mem2 share the memory with a common parent memory object
	 * and that the memory is contiguous.
	 *
	 * If this is the case, the memory of @mem1 and @mem2 can be merged
	 * efficiently by performing gst_memory_share() on the parent object from
	 * the returned @offset.
	 *
	 * Params:
	 *     mem2 = a #GstMemory
	 *     offset = a pointer to a result offset
	 *
	 * Returns: %TRUE if the memory is contiguous and of a common parent.
	 */
	public bool isSpan(Memory mem2, out size_t offset)
	{
		return gst_memory_is_span(gstMemory, (mem2 is null) ? null : mem2.getMemoryStruct(), &offset) != 0;
	}

	/**
	 * Check if @mem if allocated with an allocator for @mem_type.
	 *
	 * Params:
	 *     memType = a memory type
	 *
	 * Returns: %TRUE if @mem was allocated from an allocator for @mem_type.
	 *
	 * Since: 1.2
	 */
	public bool isType(string memType)
	{
		return gst_memory_is_type(gstMemory, Str.toStringz(memType)) != 0;
	}

	/**
	 * Create a #GstMemory object that is mapped with @flags. If @mem is mappable
	 * with @flags, this function returns the mapped @mem directly. Otherwise a
	 * mapped copy of @mem is returned.
	 *
	 * This function takes ownership of old @mem and returns a reference to a new
	 * #GstMemory.
	 *
	 * Params:
	 *     info = pointer for info
	 *     flags = mapping flags
	 *
	 * Returns: a #GstMemory object mapped
	 *     with @flags or %NULL when a mapping is not possible.
	 */
	public Memory makeMapped(out GstMapInfo info, GstMapFlags flags)
	{
		auto p = gst_memory_make_mapped(gstMemory, &info, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Fill @info with the pointer and sizes of the memory in @mem that can be
	 * accessed according to @flags.
	 *
	 * This function can return %FALSE for various reasons:
	 * - the memory backed by @mem is not accessible with the given @flags.
	 * - the memory was already mapped with a different mapping.
	 *
	 * @info and its contents remain valid for as long as @mem is valid and
	 * until gst_memory_unmap() is called.
	 *
	 * For each gst_memory_map() call, a corresponding gst_memory_unmap() call
	 * should be done.
	 *
	 * Params:
	 *     info = pointer for info
	 *     flags = mapping flags
	 *
	 * Returns: %TRUE if the map operation was successful.
	 */
	public bool map(out GstMapInfo info, GstMapFlags flags)
	{
		return gst_memory_map(gstMemory, &info, flags) != 0;
	}

	/**
	 * Resize the memory region. @mem should be writable and offset + size should be
	 * less than the maxsize of @mem.
	 *
	 * #GST_MEMORY_FLAG_ZERO_PREFIXED and #GST_MEMORY_FLAG_ZERO_PADDED will be
	 * cleared when offset or padding is increased respectively.
	 *
	 * Params:
	 *     offset = a new offset
	 *     size = a new size
	 */
	public void resize(ptrdiff_t offset, size_t size)
	{
		gst_memory_resize(gstMemory, offset, size);
	}

	/**
	 * Return a shared copy of @size bytes from @mem starting from @offset. No
	 * memory copy is performed and the memory region is simply shared. The result
	 * is guaranteed to be non-writable. @size can be set to -1 to return a shared
	 * copy from @offset to the end of the memory region.
	 *
	 * Params:
	 *     offset = offset to share from
	 *     size = size to share, or -1 to share to the end of the memory region
	 *
	 * Returns: a new #GstMemory.
	 */
	public Memory share(ptrdiff_t offset, ptrdiff_t size)
	{
		auto p = gst_memory_share(gstMemory, offset, size);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Release the memory obtained with gst_memory_map()
	 *
	 * Params:
	 *     info = a #GstMapInfo
	 */
	public void unmap(GstMapInfo* info)
	{
		gst_memory_unmap(gstMemory, info);
	}
}
