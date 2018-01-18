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


module gstreamer.Allocator;

private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.AllocationParams;
private import gstreamer.Memory;
private import gstreamer.ObjectGst;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
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
 */
public class Allocator : ObjectGst
{
	/** the main Gtk struct */
	protected GstAllocator* gstAllocator;

	/** Get the main Gtk struct */
	public GstAllocator* getAllocatorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAllocator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAllocator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAllocator* gstAllocator, bool ownedRef = false)
	{
		this.gstAllocator = gstAllocator;
		super(cast(GstObject*)gstAllocator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_allocator_get_type();
	}

	/**
	 * Find a previously registered allocator with @name. When @name is %NULL, the
	 * default allocator will be returned.
	 *
	 * Params:
	 *     name = the name of the allocator
	 *
	 * Returns: a #GstAllocator or %NULL when
	 *     the allocator with @name was not registered. Use gst_object_unref()
	 *     to release the allocator after usage.
	 */
	public static Allocator find(string name)
	{
		auto p = gst_allocator_find(Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Allocator)(cast(GstAllocator*) p, true);
	}

	/**
	 * Registers the memory @allocator with @name. This function takes ownership of
	 * @allocator.
	 *
	 * Params:
	 *     name = the name of the allocator
	 *     allocator = #GstAllocator
	 */
	public static void register(string name, Allocator allocator)
	{
		gst_allocator_register(Str.toStringz(name), (allocator is null) ? null : allocator.getAllocatorStruct());
	}

	/**
	 * Use @allocator to allocate a new memory block with memory that is at least
	 * @size big.
	 *
	 * The optional @params can specify the prefix and padding for the memory. If
	 * %NULL is passed, no flags, no extra prefix/padding and a default alignment is
	 * used.
	 *
	 * The prefix/padding will be filled with 0 if flags contains
	 * #GST_MEMORY_FLAG_ZERO_PREFIXED and #GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 *
	 * When @allocator is %NULL, the default allocator will be used.
	 *
	 * The alignment in @params is given as a bitmask so that @align + 1 equals
	 * the amount of bytes to align to. For example, to align to 8 bytes,
	 * use an alignment of 7.
	 *
	 * Params:
	 *     size = size of the visible memory area
	 *     params = optional parameters
	 *
	 * Returns: a new #GstMemory.
	 */
	public Memory alloc(size_t size, AllocationParams params)
	{
		auto p = gst_allocator_alloc(gstAllocator, size, (params is null) ? null : params.getAllocationParamsStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Free @memory that was previously allocated with gst_allocator_alloc().
	 *
	 * Params:
	 *     memory = the memory to free
	 */
	public void free(Memory memory)
	{
		gst_allocator_free(gstAllocator, (memory is null) ? null : memory.getMemoryStruct());
	}

	/**
	 * Set the default allocator. This function takes ownership of @allocator.
	 */
	public void setDefault()
	{
		gst_allocator_set_default(gstAllocator);
	}
}
