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


module gstreamer.Buffer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.Memory;
private import gstreamer.ProtectionMeta;
private import gstreamer.Structure;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * Buffers are the basic unit of data transfer in GStreamer. They contain the
 * timing and offset along with other arbitrary metadata that is associated
 * with the #GstMemory blocks that the buffer contains.
 * 
 * Buffers are usually created with gst_buffer_new(). After a buffer has been
 * created one will typically allocate memory for it and add it to the buffer.
 * The following example creates a buffer that can hold a given video frame
 * with a given width, height and bits per plane.
 * |[<!-- language="C" -->
 * GstBuffer *buffer;
 * GstMemory *memory;
 * gint size, width, height, bpp;
 * ...
 * size = width * height * bpp;
 * buffer = gst_buffer_new ();
 * memory = gst_allocator_alloc (NULL, size, NULL);
 * gst_buffer_insert_memory (buffer, -1, memory);
 * ...
 * ]|
 * 
 * Alternatively, use gst_buffer_new_allocate() to create a buffer with
 * preallocated data of a given size.
 * 
 * Buffers can contain a list of #GstMemory objects. You can retrieve how many
 * memory objects with gst_buffer_n_memory() and you can get a pointer
 * to memory with gst_buffer_peek_memory()
 * 
 * A buffer will usually have timestamps, and a duration, but neither of these
 * are guaranteed (they may be set to #GST_CLOCK_TIME_NONE). Whenever a
 * meaningful value can be given for these, they should be set. The timestamps
 * and duration are measured in nanoseconds (they are #GstClockTime values).
 * 
 * The buffer DTS refers to the timestamp when the buffer should be decoded and
 * is usually monotonically increasing. The buffer PTS refers to the timestamp when
 * the buffer content should be presented to the user and is not always
 * monotonically increasing.
 * 
 * A buffer can also have one or both of a start and an end offset. These are
 * media-type specific. For video buffers, the start offset will generally be
 * the frame number. For audio buffers, it will be the number of samples
 * produced so far. For compressed data, it could be the byte offset in a
 * source or destination file. Likewise, the end offset will be the offset of
 * the end of the buffer. These can only be meaningfully interpreted if you
 * know the media type of the buffer (the preceding CAPS event). Either or both
 * can be set to #GST_BUFFER_OFFSET_NONE.
 * 
 * gst_buffer_ref() is used to increase the refcount of a buffer. This must be
 * done when you want to keep a handle to the buffer after pushing it to the
 * next element. The buffer refcount determines the writability of the buffer, a
 * buffer is only writable when the refcount is exactly 1, i.e. when the caller
 * has the only reference to the buffer.
 * 
 * To efficiently create a smaller buffer out of an existing one, you can
 * use gst_buffer_copy_region(). This method tries to share the memory objects
 * between the two buffers.
 * 
 * If a plug-in wants to modify the buffer data or metadata in-place, it should
 * first obtain a buffer that is safe to modify by using
 * gst_buffer_make_writable().  This function is optimized so that a copy will
 * only be made when it is necessary.
 * 
 * Several flags of the buffer can be set and unset with the
 * GST_BUFFER_FLAG_SET() and GST_BUFFER_FLAG_UNSET() macros. Use
 * GST_BUFFER_FLAG_IS_SET() to test if a certain #GstBufferFlags flag is set.
 * 
 * Buffers can be efficiently merged into a larger buffer with
 * gst_buffer_append(). Copying of memory will only be done when absolutely
 * needed.
 * 
 * Arbitrary extra metadata can be set on a buffer with gst_buffer_add_meta().
 * Metadata can be retrieved with gst_buffer_get_meta(). See also #GstMeta
 * 
 * An element should either unref the buffer or push it out on a src pad
 * using gst_pad_push() (see #GstPad).
 * 
 * Buffers are usually freed by unreffing them with gst_buffer_unref(). When
 * the refcount drops to 0, any memory and metadata pointed to by the buffer is
 * unreffed as well. Buffers allocated from a #GstBufferPool will be returned to
 * the pool when the refcount drops to 0.
 * 
 * The #GstParentBufferMeta is a meta which can be attached to a #GstBuffer
 * to hold a reference to another buffer that is only released when the child
 * #GstBuffer is released.
 * 
 * Typically, #GstParentBufferMeta is used when the child buffer is directly
 * using the #GstMemory of the parent buffer, and wants to prevent the parent
 * buffer from being returned to a buffer pool until the #GstMemory is available
 * for re-use. (Since 1.6)
 */
public class Buffer
{
	/** the main Gtk struct */
	protected GstBuffer* gstBuffer;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstBuffer* getBufferStruct()
	{
		return gstBuffer;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBuffer* gstBuffer, bool ownedRef = false)
	{
		this.gstBuffer = gstBuffer;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_buffer_get_type();
	}

	/**
	 * Creates a newly allocated buffer without any data.
	 *
	 * MT safe.
	 *
	 * Return: the new #GstBuffer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_buffer_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstBuffer*) p);
	}

	/**
	 * Tries to create a newly allocated buffer with data of the given size and
	 * extra parameters from @allocator. If the requested amount of memory can't be
	 * allocated, %NULL will be returned. The allocated buffer memory is not cleared.
	 *
	 * When @allocator is %NULL, the default memory allocator will be used.
	 *
	 * Note that when @size == 0, the buffer will not have memory associated with it.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     allocator = the #GstAllocator to use, or %NULL to use the
	 *         default allocator
	 *     size = the size in bytes of the new buffer's data.
	 *     params = optional parameters
	 *
	 * Return: a new #GstBuffer, or %NULL if
	 *     the memory couldn't be allocated.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Allocator allocator, size_t size, AllocationParams params)
	{
		auto p = gst_buffer_new_allocate((allocator is null) ? null : allocator.getAllocatorStruct(), size, (params is null) ? null : params.getAllocationParamsStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_allocate");
		}
		
		this(cast(GstBuffer*) p);
	}

	/**
	 * Creates a new buffer that wraps the given @data. The memory will be freed
	 * with g_free and will be marked writable.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     data = data to wrap
	 *     size = allocated size of @data
	 *
	 * Return: a new #GstBuffer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		auto p = gst_buffer_new_wrapped(data.ptr, cast(size_t)data.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_wrapped");
		}
		
		this(cast(GstBuffer*) p);
	}

	/**
	 * Allocate a new buffer that wraps the given memory. @data must point to
	 * @maxsize of memory, the wrapped buffer will have the region from @offset and
	 * @size visible.
	 *
	 * When the buffer is destroyed, @notify will be called with @user_data.
	 *
	 * The prefix/padding must be filled with 0 if @flags contains
	 * #GST_MEMORY_FLAG_ZERO_PREFIXED and #GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 *
	 * Params:
	 *     flags = #GstMemoryFlags
	 *     data = data to wrap
	 *     maxsize = allocated size of @data
	 *     offset = offset in @data
	 *     size = size of valid data
	 *     userData = user_data
	 *     notify = called with @user_data when the memory is freed
	 *
	 * Return: a new #GstBuffer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstMemoryFlags flags, ubyte[] data, size_t maxsize, size_t offset, void* userData, GDestroyNotify notify)
	{
		auto p = gst_buffer_new_wrapped_full(flags, data.ptr, maxsize, offset, cast(size_t)data.length, userData, notify);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_wrapped_full");
		}
		
		this(cast(GstBuffer*) p);
	}

	/**
	 * Add metadata for @info to @buffer using the parameters in @params.
	 *
	 * Params:
	 *     info = a #GstMetaInfo
	 *     params = params for @info
	 *
	 * Return: the metadata for the api in @info on @buffer.
	 */
	public GstMeta* addMeta(GstMetaInfo* info, void* params)
	{
		return gst_buffer_add_meta(gstBuffer, info, params);
	}

	/**
	 * Add a #GstParentBufferMeta to @buffer that holds a reference on
	 * @ref until the buffer is freed.
	 *
	 * Params:
	 *     doref = a #GstBuffer to ref
	 *
	 * Return: The #GstParentBufferMeta that was added to the buffer
	 *
	 * Since: 1.6
	 */
	public GstParentBufferMeta* addParentBufferMeta(Buffer doref)
	{
		return gst_buffer_add_parent_buffer_meta(gstBuffer, (doref is null) ? null : doref.getBufferStruct());
	}

	/**
	 * Attaches protection metadata to a #GstBuffer.
	 *
	 * Params:
	 *     info = a #GstStructure holding cryptographic
	 *         information relating to the sample contained in @buffer. This
	 *         function takes ownership of @info.
	 *
	 * Return: a pointer to the added #GstProtectionMeta if successful; %NULL if
	 *     unsuccessful.
	 *
	 * Since: 1.6
	 */
	public ProtectionMeta addProtectionMeta(Structure info)
	{
		auto p = gst_buffer_add_protection_meta(gstBuffer, (info is null) ? null : info.getStructureStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ProtectionMeta)(cast(GstProtectionMeta*) p);
	}

	/**
	 * Append all the memory from @buf2 to @buf1. The result buffer will contain a
	 * concatenation of the memory of @buf1 and @buf2.
	 *
	 * Params:
	 *     buf2 = the second source #GstBuffer to append.
	 *
	 * Return: the new #GstBuffer that contains the memory
	 *     of the two source buffers.
	 */
	public Buffer append(Buffer buf2)
	{
		auto p = gst_buffer_append(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Append the memory block @mem to @buffer. This function takes
	 * ownership of @mem and thus doesn't increase its refcount.
	 *
	 * This function is identical to gst_buffer_insert_memory() with an index of -1.
	 * See gst_buffer_insert_memory() for more details.
	 *
	 * Params:
	 *     mem = a #GstMemory.
	 */
	public void appendMemory(Memory mem)
	{
		gst_buffer_append_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Append @size bytes at @offset from @buf2 to @buf1. The result buffer will
	 * contain a concatenation of the memory of @buf1 and the requested region of
	 * @buf2.
	 *
	 * Params:
	 *     buf2 = the second source #GstBuffer to append.
	 *     offset = the offset in @buf2
	 *     size = the size or -1 of @buf2
	 *
	 * Return: the new #GstBuffer that contains the memory
	 *     of the two source buffers.
	 */
	public Buffer appendRegion(Buffer buf2, ptrdiff_t offset, ptrdiff_t size)
	{
		auto p = gst_buffer_append_region(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct(), offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Create a copy of the given buffer. This will make a newly allocated
	 * copy of the data the source buffer contains.
	 *
	 * Return: a new copy of @buf.
	 *
	 * Since: 1.6
	 */
	public Buffer copyDeep()
	{
		auto p = gst_buffer_copy_deep(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Copies the information from @src into @dest.
	 *
	 * If @dest already contains memory and @flags contains GST_BUFFER_COPY_MEMORY,
	 * the memory from @src will be appended to @dest.
	 *
	 * @flags indicate which fields will be copied.
	 *
	 * Params:
	 *     src = a source #GstBuffer
	 *     flags = flags indicating what metadata fields should be copied.
	 *     offset = offset to copy from
	 *     size = total size to copy. If -1, all data is copied.
	 *
	 * Return: %TRUE if the copying succeeded, %FALSE otherwise.
	 */
	public bool copyInto(Buffer src, GstBufferCopyFlags flags, size_t offset, size_t size)
	{
		return gst_buffer_copy_into(gstBuffer, (src is null) ? null : src.getBufferStruct(), flags, offset, size) != 0;
	}

	/**
	 * Creates a sub-buffer from @parent at @offset and @size.
	 * This sub-buffer uses the actual memory space of the parent buffer.
	 * This function will copy the offset and timestamp fields when the
	 * offset is 0. If not, they will be set to #GST_CLOCK_TIME_NONE and
	 * #GST_BUFFER_OFFSET_NONE.
	 * If @offset equals 0 and @size equals the total size of @buffer, the
	 * duration and offset end fields are also copied. If not they will be set
	 * to #GST_CLOCK_TIME_NONE and #GST_BUFFER_OFFSET_NONE.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     flags = the #GstBufferCopyFlags
	 *     offset = the offset into parent #GstBuffer at which the new sub-buffer
	 *         begins.
	 *     size = the size of the new #GstBuffer sub-buffer, in bytes. If -1, all
	 *         data is copied.
	 *
	 * Return: the new #GstBuffer or %NULL if the arguments were
	 *     invalid.
	 */
	public Buffer copyRegion(GstBufferCopyFlags flags, size_t offset, size_t size)
	{
		auto p = gst_buffer_copy_region(gstBuffer, flags, offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Copy @size bytes starting from @offset in @buffer to @dest.
	 *
	 * Params:
	 *     offset = the offset to extract
	 *     dest = the destination address
	 *     size = the size to extract
	 *
	 * Return: The amount of bytes extracted. This value can be lower than @size
	 *     when @buffer did not contain enough data.
	 */
	public size_t extract(size_t offset, void* dest, size_t size)
	{
		return gst_buffer_extract(gstBuffer, offset, dest, size);
	}

	/**
	 * Extracts a copy of at most @size bytes the data at @offset into
	 * newly-allocated memory. @dest must be freed using g_free() when done.
	 *
	 * Params:
	 *     offset = the offset to extract
	 *     size = the size to extract
	 *     dest = A pointer where
	 *         the destination array will be written.
	 *     destSize = A location where the size of @dest can be written
	 *
	 * Since: 1.0.10
	 */
	public void extractDup(size_t offset, size_t size, out ubyte[] dest)
	{
		ubyte* outdest = null;
		size_t destSize;
		
		gst_buffer_extract_dup(gstBuffer, offset, size, cast(void**)&outdest, &destSize);
		
		dest = outdest[0 .. destSize];
	}

	/**
	 * Copy @size bytes from @src to @buffer at @offset.
	 *
	 * Params:
	 *     offset = the offset to fill
	 *     src = the source address
	 *     size = the size to fill
	 *
	 * Return: The amount of bytes copied. This value can be lower than @size
	 *     when @buffer did not contain enough data.
	 */
	public size_t fill(size_t offset, ubyte[] src)
	{
		return gst_buffer_fill(gstBuffer, offset, src.ptr, cast(size_t)src.length);
	}

	/**
	 * Find the memory blocks that span @size bytes starting from @offset
	 * in @buffer.
	 *
	 * When this function returns %TRUE, @idx will contain the index of the first
	 * memory block where the byte for @offset can be found and @length contains the
	 * number of memory blocks containing the @size remaining bytes. @skip contains
	 * the number of bytes to skip in the memory block at @idx to get to the byte
	 * for @offset.
	 *
	 * @size can be -1 to get all the memory blocks after @idx.
	 *
	 * Params:
	 *     offset = an offset
	 *     size = a size
	 *     idx = pointer to index
	 *     length = pointer to length
	 *     skip = pointer to skip
	 *
	 * Return: %TRUE when @size bytes starting from @offset could be found in
	 *     @buffer and @idx, @length and @skip will be filled.
	 */
	public bool findMemory(size_t offset, size_t size, out uint idx, out uint length, out size_t skip)
	{
		return gst_buffer_find_memory(gstBuffer, offset, size, &idx, &length, &skip) != 0;
	}

	/**
	 * Call @func with @user_data for each meta in @buffer.
	 *
	 * @func can modify the passed meta pointer or its contents. The return value
	 * of @func define if this function returns or if the remaining metadata items
	 * in the buffer should be skipped.
	 *
	 * Params:
	 *     func = a #GstBufferForeachMetaFunc to call
	 *     userData = user data passed to @func
	 *
	 * Return: %FALSE when @func returned %FALSE for one of the metadata.
	 */
	public bool foreachMeta(GstBufferForeachMetaFunc func, void* userData)
	{
		return gst_buffer_foreach_meta(gstBuffer, func, userData) != 0;
	}

	/**
	 * Get all the memory block in @buffer. The memory blocks will be merged
	 * into one large #GstMemory.
	 *
	 * Return: a #GstMemory that contains the merged memory.
	 *     Use gst_memory_unref () after usage.
	 */
	public Memory getAllMemory()
	{
		auto p = gst_buffer_get_all_memory(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Get the memory block at index @idx in @buffer.
	 *
	 * Params:
	 *     idx = an index
	 *
	 * Return: a #GstMemory that contains the data of the
	 *     memory block at @idx. Use gst_memory_unref () after usage.
	 */
	public Memory getMemory(uint idx)
	{
		auto p = gst_buffer_get_memory(gstBuffer, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Get @length memory blocks in @buffer starting at @idx. The memory blocks will
	 * be merged into one large #GstMemory.
	 *
	 * If @length is -1, all memory starting from @idx is merged.
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length
	 *
	 * Return: a #GstMemory that contains the merged data of @length
	 *     blocks starting at @idx. Use gst_memory_unref () after usage.
	 */
	public Memory getMemoryRange(uint idx, int length)
	{
		auto p = gst_buffer_get_memory_range(gstBuffer, idx, length);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p, true);
	}

	/**
	 * Get the metadata for @api on buffer. When there is no such metadata, %NULL is
	 * returned. If multiple metadata with the given @api are attached to this
	 * buffer only the first one is returned.  To handle multiple metadata with a
	 * given API use gst_buffer_iterate_meta() or gst_buffer_foreach_meta() instead
	 * and check the meta->info.api member for the API type.
	 *
	 * Params:
	 *     api = the #GType of an API
	 *
	 * Return: the metadata for @api on
	 *     @buffer.
	 */
	public GstMeta* getMeta(GType api)
	{
		return gst_buffer_get_meta(gstBuffer, api);
	}

	/**
	 * Get the total size of the memory blocks in @buffer.
	 *
	 * Return: total size of the memory blocks in @buffer.
	 */
	public size_t getSize()
	{
		return gst_buffer_get_size(gstBuffer);
	}

	/**
	 * Get the total size of the memory blocks in @b.
	 *
	 * When not %NULL, @offset will contain the offset of the data in the
	 * first memory block in @buffer and @maxsize will contain the sum of
	 * the size and @offset and the amount of extra padding on the last
	 * memory block.  @offset and @maxsize can be used to resize the
	 * buffer memory blocks with gst_buffer_resize().
	 *
	 * Params:
	 *     offset = a pointer to the offset
	 *     maxsize = a pointer to the maxsize
	 *
	 * Return: total size of the memory blocks in @buffer.
	 */
	public size_t getSizes(out size_t offset, out size_t maxsize)
	{
		return gst_buffer_get_sizes(gstBuffer, &offset, &maxsize);
	}

	/**
	 * Get the total size of @length memory blocks stating from @idx in @buffer.
	 *
	 * When not %NULL, @offset will contain the offset of the data in the
	 * memory block in @buffer at @idx and @maxsize will contain the sum of the size
	 * and @offset and the amount of extra padding on the memory block at @idx +
	 * @length -1.
	 * @offset and @maxsize can be used to resize the buffer memory blocks with
	 * gst_buffer_resize_range().
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length
	 *     offset = a pointer to the offset
	 *     maxsize = a pointer to the maxsize
	 *
	 * Return: total size of @length memory blocks starting at @idx in @buffer.
	 */
	public size_t getSizesRange(uint idx, int length, out size_t offset, out size_t maxsize)
	{
		return gst_buffer_get_sizes_range(gstBuffer, idx, length, &offset, &maxsize);
	}

	/**
	 * Insert the memory block @mem to @buffer at @idx. This function takes ownership
	 * of @mem and thus doesn't increase its refcount.
	 *
	 * Only gst_buffer_get_max_memory() can be added to a buffer. If more memory is
	 * added, existing memory blocks will automatically be merged to make room for
	 * the new memory.
	 *
	 * Params:
	 *     idx = the index to add the memory at, or -1 to append it to the end
	 *     mem = a #GstMemory.
	 */
	public void insertMemory(int idx, Memory mem)
	{
		gst_buffer_insert_memory(gstBuffer, idx, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Check if all memory blocks in @buffer are writable.
	 *
	 * Note that this function does not check if @buffer is writable, use
	 * gst_buffer_is_writable() to check that if needed.
	 *
	 * Return: %TRUE if all memory blocks in @buffer are writable
	 *
	 * Since: 1.4
	 */
	public bool isAllMemoryWritable()
	{
		return gst_buffer_is_all_memory_writable(gstBuffer) != 0;
	}

	/**
	 * Check if @length memory blocks in @buffer starting from @idx are writable.
	 *
	 * @length can be -1 to check all the memory blocks after @idx.
	 *
	 * Note that this function does not check if @buffer is writable, use
	 * gst_buffer_is_writable() to check that if needed.
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length should not be 0
	 *
	 * Return: %TRUE if the memory range is writable
	 *
	 * Since: 1.4
	 */
	public bool isMemoryRangeWritable(uint idx, int length)
	{
		return gst_buffer_is_memory_range_writable(gstBuffer, idx, length) != 0;
	}

	/**
	 * Retrieve the next #GstMeta after @current. If @state points
	 * to %NULL, the first metadata is returned.
	 *
	 * @state will be updated with an opaque state pointer
	 *
	 * Params:
	 *     state = an opaque state pointer
	 *
	 * Return: The next #GstMeta or %NULL
	 *     when there are no more items.
	 */
	public GstMeta* iterateMeta(void** state)
	{
		return gst_buffer_iterate_meta(gstBuffer, state);
	}

	/**
	 * This function fills @info with the #GstMapInfo of all merged memory
	 * blocks in @buffer.
	 *
	 * @flags describe the desired access of the memory. When @flags is
	 * #GST_MAP_WRITE, @buffer should be writable (as returned from
	 * gst_buffer_is_writable()).
	 *
	 * When @buffer is writable but the memory isn't, a writable copy will
	 * automatically be created and returned. The readonly copy of the
	 * buffer memory will then also be replaced with this writable copy.
	 *
	 * The memory in @info should be unmapped with gst_buffer_unmap() after
	 * usage.
	 *
	 * Params:
	 *     info = info about the mapping
	 *     flags = flags for the mapping
	 *
	 * Return: %TRUE if the map succeeded and @info contains valid data.
	 */
	public bool map(out GstMapInfo info, GstMapFlags flags)
	{
		return gst_buffer_map(gstBuffer, &info, flags) != 0;
	}

	/**
	 * This function fills @info with the #GstMapInfo of @length merged memory blocks
	 * starting at @idx in @buffer. When @length is -1, all memory blocks starting
	 * from @idx are merged and mapped.
	 *
	 * @flags describe the desired access of the memory. When @flags is
	 * #GST_MAP_WRITE, @buffer should be writable (as returned from
	 * gst_buffer_is_writable()).
	 *
	 * When @buffer is writable but the memory isn't, a writable copy will
	 * automatically be created and returned. The readonly copy of the buffer memory
	 * will then also be replaced with this writable copy.
	 *
	 * The memory in @info should be unmapped with gst_buffer_unmap() after usage.
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length
	 *     info = info about the mapping
	 *     flags = flags for the mapping
	 *
	 * Return: %TRUE if the map succeeded and @info contains valid
	 *     data.
	 */
	public bool mapRange(uint idx, int length, out GstMapInfo info, GstMapFlags flags)
	{
		return gst_buffer_map_range(gstBuffer, idx, length, &info, flags) != 0;
	}

	/**
	 * Compare @size bytes starting from @offset in @buffer with the memory in @mem.
	 *
	 * Params:
	 *     offset = the offset in @buffer
	 *     mem = the memory to compare
	 *     size = the size to compare
	 *
	 * Return: 0 if the memory is equal.
	 */
	public int memcmp(size_t offset, ubyte[] mem)
	{
		return gst_buffer_memcmp(gstBuffer, offset, mem.ptr, cast(size_t)mem.length);
	}

	/**
	 * Fill @buf with @size bytes with @val starting from @offset.
	 *
	 * Params:
	 *     offset = the offset in @buffer
	 *     val = the value to set
	 *     size = the size to set
	 *
	 * Return: The amount of bytes filled. This value can be lower than @size
	 *     when @buffer did not contain enough data.
	 */
	public size_t memset(size_t offset, ubyte val, size_t size)
	{
		return gst_buffer_memset(gstBuffer, offset, val, size);
	}

	/**
	 * Get the amount of memory blocks that this buffer has. This amount is never
	 * larger than what gst_buffer_get_max_memory() returns.
	 *
	 * Return: the amount of memory block in this buffer.
	 */
	public uint nMemory()
	{
		return gst_buffer_n_memory(gstBuffer);
	}

	/**
	 * Get the memory block at @idx in @buffer. The memory block stays valid until
	 * the memory block in @buffer is removed, replaced or merged, typically with
	 * any call that modifies the memory in @buffer.
	 *
	 * Params:
	 *     idx = an index
	 *
	 * Return: the #GstMemory at @idx.
	 */
	public Memory peekMemory(uint idx)
	{
		auto p = gst_buffer_peek_memory(gstBuffer, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}

	/**
	 * Prepend the memory block @mem to @buffer. This function takes
	 * ownership of @mem and thus doesn't increase its refcount.
	 *
	 * This function is identical to gst_buffer_insert_memory() with an index of 0.
	 * See gst_buffer_insert_memory() for more details.
	 *
	 * Params:
	 *     mem = a #GstMemory.
	 */
	public void prependMemory(Memory mem)
	{
		gst_buffer_prepend_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Remove all the memory blocks in @buffer.
	 */
	public void removeAllMemory()
	{
		gst_buffer_remove_all_memory(gstBuffer);
	}

	/**
	 * Remove the memory block in @b at index @i.
	 *
	 * Params:
	 *     idx = an index
	 */
	public void removeMemory(uint idx)
	{
		gst_buffer_remove_memory(gstBuffer, idx);
	}

	/**
	 * Remove @length memory blocks in @buffer starting from @idx.
	 *
	 * @length can be -1, in which case all memory starting from @idx is removed.
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length
	 */
	public void removeMemoryRange(uint idx, int length)
	{
		gst_buffer_remove_memory_range(gstBuffer, idx, length);
	}

	/**
	 * Remove the metadata for @meta on @buffer.
	 *
	 * Params:
	 *     meta = a #GstMeta
	 *
	 * Return: %TRUE if the metadata existed and was removed, %FALSE if no such
	 *     metadata was on @buffer.
	 */
	public bool removeMeta(GstMeta* meta)
	{
		return gst_buffer_remove_meta(gstBuffer, meta) != 0;
	}

	/**
	 * Replaces all memory in @buffer with @mem.
	 *
	 * Params:
	 *     mem = a #GstMemory
	 */
	public void replaceAllMemory(Memory mem)
	{
		gst_buffer_replace_all_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Replaces the memory block at index @idx in @buffer with @mem.
	 *
	 * Params:
	 *     idx = an index
	 *     mem = a #GstMemory
	 */
	public void replaceMemory(uint idx, Memory mem)
	{
		gst_buffer_replace_memory(gstBuffer, idx, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Replaces @length memory blocks in @buffer starting at @idx with @mem.
	 *
	 * If @length is -1, all memory starting from @idx will be removed and
	 * replaced with @mem.
	 *
	 * @buffer should be writable.
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length should not be 0
	 *     mem = a #GstMemory
	 */
	public void replaceMemoryRange(uint idx, int length, Memory mem)
	{
		gst_buffer_replace_memory_range(gstBuffer, idx, length, (mem is null) ? null : mem.getMemoryStruct());
	}

	/**
	 * Set the offset and total size of the memory blocks in @buffer.
	 *
	 * Params:
	 *     offset = the offset adjustment
	 *     size = the new size or -1 to just adjust the offset
	 */
	public void resize(ptrdiff_t offset, ptrdiff_t size)
	{
		gst_buffer_resize(gstBuffer, offset, size);
	}

	/**
	 * Set the total size of the @length memory blocks starting at @idx in
	 * @buffer
	 *
	 * Params:
	 *     idx = an index
	 *     length = a length
	 *     offset = the offset adjustment
	 *     size = the new size or -1 to just adjust the offset
	 *
	 * Return: %TRUE if resizing succeeded, %FALSE otherwise.
	 */
	public bool resizeRange(uint idx, int length, ptrdiff_t offset, ptrdiff_t size)
	{
		return gst_buffer_resize_range(gstBuffer, idx, length, offset, size) != 0;
	}

	/**
	 * Set the total size of the memory blocks in @buffer.
	 *
	 * Params:
	 *     size = the new size
	 */
	public void setSize(ptrdiff_t size)
	{
		gst_buffer_set_size(gstBuffer, size);
	}

	/**
	 * Release the memory previously mapped with gst_buffer_map().
	 *
	 * Params:
	 *     info = a #GstMapInfo
	 */
	public void unmap(GstMapInfo* info)
	{
		gst_buffer_unmap(gstBuffer, info);
	}

	/**
	 * Get the maximum amount of memory blocks that a buffer can hold. This is a
	 * compile time constant that can be queried with the function.
	 *
	 * When more memory blocks are added, existing memory blocks will be merged
	 * together to make room for the new block.
	 *
	 * Return: the maximum amount of memory blocks that a buffer can hold.
	 *
	 * Since: 1.2
	 */
	public static uint getMaxMemory()
	{
		return gst_buffer_get_max_memory();
	}
}
