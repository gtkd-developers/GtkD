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
 * inFile  = gstreamer-GstBuffer.html
 * outPack = gstreamer
 * outFile = Buffer
 * strct   = GstBuffer
 * realStrct=
 * ctorStrct=
 * clss    = Buffer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_buffer_
 * omit structs:
 * 	- GstBuffer
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Allocator
 * 	- gstreamer.Memory
 * 	- gstreamer.Meta
 * structWrap:
 * 	- GstAllocator* -> Allocator
 * 	- GstBuffer* -> Buffer
 * 	- GstMemory* -> Memory
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Buffer;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Allocator;
private import gstreamer.Memory;
private import gstreamer.Meta;




/**
 * Buffers are the basic unit of data transfer in GStreamer. They contain the
 * timing and offset along with other arbitrary metadata that is associated
 * with the GstMemory blocks that the buffer contains.
 *
 * Buffers are usually created with gst_buffer_new(). After a buffer has been
 * created one will typically allocate memory for it and add it to the buffer.
 * The following example creates a buffer that can hold a given video frame
 * with a given width, height and bits per plane.
 *
 * $(DDOC_COMMENT example)
 *
 * Alternatively, use gst_buffer_new_allocate()
 * to create a buffer with preallocated data of a given size.
 *
 * Buffers can contain a list of GstMemory objects. You can retrieve how many
 * memory objects with gst_buffer_n_memory() and you can get a pointer
 * to memory with gst_buffer_peek_memory()
 *
 * A buffer will usually have timestamps, and a duration, but neither of these
 * are guaranteed (they may be set to GST_CLOCK_TIME_NONE). Whenever a
 * meaningful value can be given for these, they should be set. The timestamps
 * and duration are measured in nanoseconds (they are GstClockTime values).
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
 * know the media type of the buffer (the preceeding CAPS event). Either or both
 * can be set to GST_BUFFER_OFFSET_NONE.
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
 * gst_buffer_make_writable(). This function is optimized so that a copy will
 * only be made when it is necessary.
 *
 * Several flags of the buffer can be set and unset with the
 * GST_BUFFER_FLAG_SET() and GST_BUFFER_FLAG_UNSET() macros. Use
 * GST_BUFFER_FLAG_IS_SET() to test if a certain GstBufferFlag is set.
 *
 * Buffers can be efficiently merged into a larger buffer with
 * gst_buffer_append(). Copying of memory will only be done when absolutely
 * needed.
 *
 * Arbitrary extra metadata can be set on a buffer with gst_buffer_add_meta().
 * Metadata can be retrieved with gst_buffer_get_meta(). See also GstMeta
 *
 * An element should either unref the buffer or push it out on a src pad
 * using gst_pad_push() (see GstPad).
 *
 * Buffers are usually freed by unreffing them with gst_buffer_unref(). When
 * the refcount drops to 0, any memory and metadata pointed to by the buffer is
 * unreffed as well. Buffers allocated from a GstBufferPool will be returned to
 * the pool when the refcount drops to 0.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class Buffer
{
	
	/** the main Gtk struct */
	protected GstBuffer* gstBuffer;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstBuffer* gstBuffer)
	{
		this.gstBuffer = gstBuffer;
	}
	
	/**
	 */
	
	/**
	 * Creates a newly allocated buffer without any data.
	 * MT safe.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstBuffer * gst_buffer_new (void);
		auto p = gst_buffer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new()");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Tries to create a newly allocated buffer with data of the given size and
	 * extra parameters from allocator. If the requested amount of memory can't be
	 * allocated, NULL will be returned. The allocated buffer memory is not cleared.
	 * When allocator is NULL, the default memory allocator will be used.
	 * Note that when size == 0, the buffer will not have memory associated with it.
	 * MT safe.
	 * Params:
	 * allocator = the GstAllocator to use, or NULL to use the
	 * default allocator. [transfer none][allow-none]
	 * size = the size in bytes of the new buffer's data.
	 * params = optional parameters. [transfer none][allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Allocator allocator, gsize size, GstAllocationParams* params)
	{
		// GstBuffer * gst_buffer_new_allocate (GstAllocator *allocator,  gsize size,  GstAllocationParams *params);
		auto p = gst_buffer_new_allocate((allocator is null) ? null : allocator.getAllocatorStruct(), size, params);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new_allocate((allocator is null) ? null : allocator.getAllocatorStruct(), size, params)");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Creates a new buffer that wraps the given data. The memory will be freed
	 * with g_free and will be marked writable.
	 * MT safe.
	 * Params:
	 * data = data to wrap. [array length=size][element-type guint8]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void[] data)
	{
		// GstBuffer * gst_buffer_new_wrapped (gpointer data,  gsize size);
		auto p = gst_buffer_new_wrapped(data.ptr, cast(int) data.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new_wrapped(data.ptr, cast(int) data.length)");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Allocate a new buffer that wraps the given memory. data must point to
	 * maxsize of memory, the wrapped buffer will have the region from offset and
	 * size visible.
	 * When the buffer is destroyed, notify will be called with user_data.
	 * The prefix/padding must be filled with 0 if flags contains
	 * GST_MEMORY_FLAG_ZERO_PREFIXED and GST_MEMORY_FLAG_ZERO_PADDED respectively.
	 * Params:
	 * flags = GstMemoryFlags
	 * data = data to wrap. [array length=size][element-type guint8]
	 * maxsize = allocated size of data
	 * offset = offset in data
	 * size = size of valid data
	 * userData = user_data
	 * notify = called with user_data when the memory is freed
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstMemoryFlags flags, void* data, gsize maxsize, gsize offset, gsize size, void* userData, GDestroyNotify notify)
	{
		// GstBuffer * gst_buffer_new_wrapped_full (GstMemoryFlags flags,  gpointer data,  gsize maxsize,  gsize offset,  gsize size,  gpointer user_data,  GDestroyNotify notify);
		auto p = gst_buffer_new_wrapped_full(flags, data, maxsize, offset, size, userData, notify);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new_wrapped_full(flags, data, maxsize, offset, size, userData, notify)");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Increases the refcount of the given buffer by one.
	 * Note that the refcount affects the writeability
	 * of buf and its metadata, see gst_buffer_is_writable().
	 * It is important to note that keeping additional references to
	 * GstBuffer instances can potentially increase the number
	 * of memcpy operations in a pipeline.
	 * Returns: buf. [transfer full]
	 */
	public Buffer doref()
	{
		// GstBuffer * gst_buffer_ref (GstBuffer *buf);
		auto p = gst_buffer_ref(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Decreases the refcount of the buffer. If the refcount reaches 0, the buffer
	 * with the associated metadata and memory will be freed.
	 */
	public void unref()
	{
		// void gst_buffer_unref (GstBuffer *buf);
		gst_buffer_unref(gstBuffer);
	}
	
	/**
	 * Get the total size of the memory blocks in b.
	 * When not NULL, offset will contain the offset of the data in the
	 * first memory block in buffer and maxsize will contain the sum of
	 * the size and offset and the amount of extra padding on the last
	 * memory block. offset and maxsize can be used to resize the
	 * buffer memory blocks with gst_buffer_resize().
	 * Params:
	 * offset = a pointer to the offset. [out]
	 * maxsize = a pointer to the maxsize. [out]
	 * Returns: total size of the memory blocks in buffer.
	 */
	public gsize getSizes(out gsize offset, out gsize maxsize)
	{
		// gsize gst_buffer_get_sizes (GstBuffer *buffer,  gsize *offset,  gsize *maxsize);
		return gst_buffer_get_sizes(gstBuffer, &offset, &maxsize);
	}
	
	/**
	 * Get the total size of the memory blocks in buffer.
	 * Returns: total size of the memory blocks in buffer.
	 */
	public gsize getSize()
	{
		// gsize gst_buffer_get_size (GstBuffer *buffer);
		return gst_buffer_get_size(gstBuffer);
	}
	
	/**
	 * Get the total size of length memory blocks stating from idx in buffer.
	 * When not NULL, offset will contain the offset of the data in the
	 * memory block in buffer at idx and maxsize will contain the sum of the size
	 * and offset and the amount of extra padding on the memory block at idx +
	 * length -1.
	 * offset and maxsize can be used to resize the buffer memory blocks with
	 * gst_buffer_resize_range().
	 * Params:
	 * idx = an index
	 * length = a length
	 * offset = a pointer to the offset. [out]
	 * maxsize = a pointer to the maxsize. [out]
	 * Returns: total size of length memory blocks starting at idx in buffer.
	 */
	public gsize getSizesRange(uint idx, int length, out gsize offset, out gsize maxsize)
	{
		// gsize gst_buffer_get_sizes_range (GstBuffer *buffer,  guint idx,  gint length,  gsize *offset,  gsize *maxsize);
		return gst_buffer_get_sizes_range(gstBuffer, idx, length, &offset, &maxsize);
	}
	
	/**
	 * Set the total size of the length memory blocks starting at idx in
	 * buffer
	 * Params:
	 * idx = an index
	 * length = a length
	 * offset = the offset adjustement
	 * size = the new size or -1 to just adjust the offset
	 */
	public void resizeRange(uint idx, int length, gssize offset, gssize size)
	{
		// void gst_buffer_resize_range (GstBuffer *buffer,  guint idx,  gint length,  gssize offset,  gssize size);
		gst_buffer_resize_range(gstBuffer, idx, length, offset, size);
	}
	
	/**
	 * Set the offset and total size of the memory blocks in buffer.
	 * Params:
	 * offset = the offset adjustement
	 * size = the new size or -1 to just adjust the offset
	 */
	public void resize(gssize offset, gssize size)
	{
		// void gst_buffer_resize (GstBuffer *buffer,  gssize offset,  gssize size);
		gst_buffer_resize(gstBuffer, offset, size);
	}
	
	/**
	 * Set the total size of the memory blocks in buffer.
	 * Params:
	 * size = the new size
	 */
	public void setSize(gssize size)
	{
		// void gst_buffer_set_size (GstBuffer *buffer,  gssize size);
		gst_buffer_set_size(gstBuffer, size);
	}
	
	/**
	 * Get the memory block at idx in buffer. The memory block stays valid until
	 * the memory block in buffer is removed, replaced or merged, typically with
	 * any call that modifies the memory in buffer.
	 * Since this call does not influence the refcount of the memory,
	 * gst_memory_is_writable() can be used to check if buffer is the sole owner
	 * of the returned memory.
	 * Params:
	 * idx = an index
	 * Returns: the GstMemory at idx. [transfer none]
	 */
	public Memory peekMemory(uint idx)
	{
		// GstMemory * gst_buffer_peek_memory (GstBuffer *buffer,  guint idx);
		auto p = gst_buffer_peek_memory(gstBuffer, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Get the amount of memory blocks that this buffer has.
	 * Returns: the amount of memory block in this buffer. [transfer full]
	 */
	public uint nMemory()
	{
		// guint gst_buffer_n_memory (GstBuffer *buffer);
		return gst_buffer_n_memory(gstBuffer);
	}
	
	/**
	 * Insert the memory block mem to buffer at idx. This function takes ownership
	 * of mem and thus doesn't increase its refcount.
	 * Params:
	 * idx = the index to add the memory at, or -1 to append it to the end
	 * mem = a GstMemory. [transfer full]
	 */
	public void insertMemory(int idx, Memory mem)
	{
		// void gst_buffer_insert_memory (GstBuffer *buffer,  gint idx,  GstMemory *mem);
		gst_buffer_insert_memory(gstBuffer, idx, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Replaces length memory blocks in buffer starting at idx with mem.
	 * If length is -1, all memory starting from idx will be removed and
	 * replaced with mem.
	 * buffer should be writable.
	 * Params:
	 * idx = an index
	 * length = a length should not be 0
	 * mem = a GstMemory. [transfer full]
	 */
	public void replaceMemoryRange(uint idx, int length, Memory mem)
	{
		// void gst_buffer_replace_memory_range (GstBuffer *buffer,  guint idx,  gint length,  GstMemory *mem);
		gst_buffer_replace_memory_range(gstBuffer, idx, length, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Get length memory blocks in buffer starting at idx. The memory blocks will
	 * be merged into one large GstMemory.
	 * If length is -1, all memory starting from idx is merged.
	 * Params:
	 * idx = an index
	 * length = a length
	 * Returns: a GstMemory that contains the merged data of length blocks starting at idx. Use gst_memory_unref() after usage. [transfer full]
	 */
	public Memory getMemoryRange(uint idx, int length)
	{
		// GstMemory * gst_buffer_get_memory_range (GstBuffer *buffer,  guint idx,  gint length);
		auto p = gst_buffer_get_memory_range(gstBuffer, idx, length);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Remove length memory blocks in buffer starting from idx.
	 * length can be -1, in which case all memory starting from idx is removed.
	 * Params:
	 * idx = an index
	 * length = a length
	 */
	public void removeMemoryRange(uint idx, int length)
	{
		// void gst_buffer_remove_memory_range (GstBuffer *buffer,  guint idx,  gint length);
		gst_buffer_remove_memory_range(gstBuffer, idx, length);
	}
	
	/**
	 * Find the memory blocks that span size bytes starting from offset
	 * in buffer.
	 * When this function returns TRUE, idx will contain the index of the first
	 * memory bock where the byte for offset can be found and length contains the
	 * number of memory blocks containing the size remaining bytes. skip contains
	 * the number of bytes to skip in the memory bock at idx to get to the byte
	 * for offset.
	 * size can be -1 to get all the memory blocks after idx.
	 * Params:
	 * offset = an offset
	 * size = a size
	 * idx = pointer to index. [out]
	 * length = pointer to length. [out]
	 * skip = pointer to skip. [out]
	 * Returns: TRUE when size bytes starting from offset could be found in buffer and idx, length and skip will be filled.
	 */
	public int findMemory(gsize offset, gsize size, out uint idx, out uint length, out gsize skip)
	{
		// gboolean gst_buffer_find_memory (GstBuffer *buffer,  gsize offset,  gsize size,  guint *idx,  guint *length,  gsize *skip);
		return gst_buffer_find_memory(gstBuffer, offset, size, &idx, &length, &skip);
	}
	
	/**
	 * Prepend the memory block mem to buffer. This function takes
	 * ownership of mem and thus doesn't increase its refcount.
	 * Params:
	 * mem = a GstMemory. [transfer full]
	 */
	public void prependMemory(Memory mem)
	{
		// void gst_buffer_prepend_memory (GstBuffer *buffer,  GstMemory *mem);
		gst_buffer_prepend_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Append the memory block mem to buffer. This function takes
	 * ownership of mem and thus doesn't increase its refcount.
	 * Params:
	 * mem = a GstMemory. [transfer full]
	 */
	public void appendMemory(Memory mem)
	{
		// void gst_buffer_append_memory (GstBuffer *buffer,  GstMemory *mem);
		gst_buffer_append_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Replaces the memory block at index idx in buffer with mem.
	 * Params:
	 * idx = an index
	 * mem = a GstMemory. [transfer full]
	 */
	public void replaceMemory(uint idx, Memory mem)
	{
		// void gst_buffer_replace_memory (GstBuffer *buffer,  guint idx,  GstMemory *mem);
		gst_buffer_replace_memory(gstBuffer, idx, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Replaces all memory in buffer with mem.
	 * Params:
	 * mem = a GstMemory. [transfer full]
	 */
	public void replaceAllMemory(Memory mem)
	{
		// void gst_buffer_replace_all_memory (GstBuffer *buffer,  GstMemory *mem);
		gst_buffer_replace_all_memory(gstBuffer, (mem is null) ? null : mem.getMemoryStruct());
	}
	
	/**
	 * Get the memory block at index idx in buffer.
	 * Params:
	 * idx = an index
	 * Returns: a GstMemory that contains the data of the memory block at idx. Use gst_memory_unref() after usage. [transfer full]
	 */
	public Memory getMemory(uint idx)
	{
		// GstMemory * gst_buffer_get_memory (GstBuffer *buffer,  guint idx);
		auto p = gst_buffer_get_memory(gstBuffer, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Get all the memory block in buffer. The memory blocks will be merged
	 * into one large GstMemory.
	 * Returns: a GstMemory that contains the merged memory. Use gst_memory_unref() after usage. [transfer full]
	 */
	public Memory getAllMemory()
	{
		// GstMemory * gst_buffer_get_all_memory (GstBuffer *buffer);
		auto p = gst_buffer_get_all_memory(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Memory)(cast(GstMemory*) p);
	}
	
	/**
	 * Remove the memory block in b at index i.
	 * Params:
	 * idx = an index
	 */
	public void removeMemory(uint idx)
	{
		// void gst_buffer_remove_memory (GstBuffer *buffer,  guint idx);
		gst_buffer_remove_memory(gstBuffer, idx);
	}
	
	/**
	 * Remove all the memory blocks in buffer.
	 */
	public void removeAllMemory()
	{
		// void gst_buffer_remove_all_memory (GstBuffer *buffer);
		gst_buffer_remove_all_memory(gstBuffer);
	}
	
	/**
	 * This function fills info with the GstMapInfo of all merged memory
	 * blocks in buffer.
	 * flags describe the desired access of the memory. When flags is
	 * GST_MAP_WRITE, buffer should be writable (as returned from
	 * gst_buffer_is_writable()).
	 * When buffer is writable but the memory isn't, a writable copy will
	 * automatically be created and returned. The readonly copy of the
	 * buffer memory will then also be replaced with this writable copy.
	 * The memory in info should be unmapped with gst_buffer_unmap() after
	 * usage.
	 * Params:
	 * info = info about the mapping. [out]
	 * flags = flags for the mapping
	 * Returns: TRUE if the map succeeded and info contains valid data.
	 */
	public int map(out GstMapInfo info, GstMapFlags flags)
	{
		// gboolean gst_buffer_map (GstBuffer *buffer,  GstMapInfo *info,  GstMapFlags flags);
		return gst_buffer_map(gstBuffer, &info, flags);
	}
	
	/**
	 * This function fills info with the GstMapInfo of length merged memory blocks
	 * starting at idx in buffer. When length is -1, all memory blocks starting
	 * from idx are merged and mapped.
	 * flags describe the desired access of the memory. When flags is
	 * GST_MAP_WRITE, buffer should be writable (as returned from
	 * gst_buffer_is_writable()).
	 * When buffer is writable but the memory isn't, a writable copy will
	 * automatically be created and returned. The readonly copy of the buffer memory
	 * will then also be replaced with this writable copy.
	 * The memory in info should be unmapped with gst_buffer_unmap() after usage.
	 * Params:
	 * idx = an index
	 * length = a length
	 * info = info about the mapping. [out]
	 * flags = flags for the mapping
	 * Returns: TRUE if the map succeeded and info contains valid data.
	 */
	public int mapRange(uint idx, int length, out GstMapInfo info, GstMapFlags flags)
	{
		// gboolean gst_buffer_map_range (GstBuffer *buffer,  guint idx,  gint length,  GstMapInfo *info,  GstMapFlags flags);
		return gst_buffer_map_range(gstBuffer, idx, length, &info, flags);
	}
	
	/**
	 * Release the memory previously mapped with gst_buffer_map().
	 * Params:
	 * info = a GstMapInfo
	 */
	public void unmap(ref GstMapInfo info)
	{
		// void gst_buffer_unmap (GstBuffer *buffer,  GstMapInfo *info);
		gst_buffer_unmap(gstBuffer, &info);
	}
	
	/**
	 * Compare size bytes starting from offset in buffer with the memory in mem.
	 * Params:
	 * offset = the offset in buffer
	 * mem = the memory to compare
	 * size = the size to compare
	 * Returns: 0 if the memory is equal.
	 */
	public int memcmp(gsize offset, void[] mem)
	{
		// gint gst_buffer_memcmp (GstBuffer *buffer,  gsize offset,  gconstpointer mem,  gsize size);
		return gst_buffer_memcmp(gstBuffer, offset, mem.ptr, cast(int) mem.length);
	}
	
	/**
	 * Copy size bytes starting from offset in buffer to dest.
	 * Params:
	 * offset = the offset to extract
	 * dest = the destination address
	 * size = the size to extract
	 * Returns: The amount of bytes extracted. This value can be lower than size when buffer did not contain enough data.
	 */
	public gsize extract(gsize offset, void[] dest)
	{
		// gsize gst_buffer_extract (GstBuffer *buffer,  gsize offset,  gpointer dest,  gsize size);
		return gst_buffer_extract(gstBuffer, offset, dest.ptr, cast(int) dest.length);
	}
	
	/**
	 * Copy size bytes from src to buffer at offset.
	 * Params:
	 * offset = the offset to fill
	 * src = the source address
	 * size = the size to fill
	 * Returns: The amount of bytes copied. This value can be lower than size when buffer did not contain enough data.
	 */
	public gsize fill(gsize offset, void[] src)
	{
		// gsize gst_buffer_fill (GstBuffer *buffer,  gsize offset,  gconstpointer src,  gsize size);
		return gst_buffer_fill(gstBuffer, offset, src.ptr, cast(int) src.length);
	}
	
	/**
	 * Fill buf with size bytes with val starting from offset.
	 * Params:
	 * offset = the offset in buffer
	 * val = the value to set
	 * size = the size to set
	 * Returns: The amount of bytes filled. This value can be lower than size when buffer did not contain enough data.
	 */
	public gsize memset(gsize offset, ubyte val, gsize size)
	{
		// gsize gst_buffer_memset (GstBuffer *buffer,  gsize offset,  guint8 val,  gsize size);
		return gst_buffer_memset(gstBuffer, offset, val, size);
	}
	
	/**
	 * Create a copy of the given buffer. This will also make a newly allocated
	 * copy of the data the source buffer contains.
	 * Returns: a new copy of buf. [transfer full]
	 */
	public Buffer copy()
	{
		// GstBuffer * gst_buffer_copy (const GstBuffer *buf);
		auto p = gst_buffer_copy(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Copies the information from src into dest.
	 * If dest already contains memory and flags contains GST_BUFFER_COPY_MEMORY,
	 * the memory from src will be appended to dest.
	 * flags indicate which fields will be copied.
	 * Params:
	 * src = a source GstBuffer
	 * flags = flags indicating what metadata fields should be copied.
	 * offset = offset to copy from
	 * size = total size to copy. If -1, all data is copied.
	 */
	public void copyInto(Buffer src, GstBufferCopyFlags flags, gsize offset, gsize size)
	{
		// void gst_buffer_copy_into (GstBuffer *dest,  GstBuffer *src,  GstBufferCopyFlags flags,  gsize offset,  gsize size);
		gst_buffer_copy_into(gstBuffer, (src is null) ? null : src.getBufferStruct(), flags, offset, size);
	}
	
	/**
	 * Creates a sub-buffer from parent at offset and size.
	 * This sub-buffer uses the actual memory space of the parent buffer.
	 * This function will copy the offset and timestamp fields when the
	 * offset is 0. If not, they will be set to GST_CLOCK_TIME_NONE and
	 * GST_BUFFER_OFFSET_NONE.
	 * If offset equals 0 and size equals the total size of buffer, the
	 * duration and offset end fields are also copied. If not they will be set
	 * to GST_CLOCK_TIME_NONE and GST_BUFFER_OFFSET_NONE.
	 * MT safe.
	 * Params:
	 * flags = the GstBufferCopyFlags
	 * offset = the offset into parent GstBuffer at which the new sub-buffer
	 * begins.
	 * size = the size of the new GstBuffer sub-buffer, in bytes.
	 * Returns: the new GstBuffer or NULL if the arguments were invalid. [transfer full]
	 */
	public Buffer copyRegion(GstBufferCopyFlags flags, gsize offset, gsize size)
	{
		// GstBuffer * gst_buffer_copy_region (GstBuffer *parent,  GstBufferCopyFlags flags,  gsize offset,  gsize size);
		auto p = gst_buffer_copy_region(gstBuffer, flags, offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Modifies a pointer to a GstBuffer to point to a different GstBuffer. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * buffer is unreffed, the new is reffed).
	 * Either nbuf or the GstBuffer pointed to by obuf may be NULL.
	 * Params:
	 * obuf = pointer to a pointer to a GstBuffer to be
	 * replaced. [inout][transfer full]
	 * nbuf = pointer to a GstBuffer that will
	 * replace the buffer pointed to by obuf. [transfer none][allow-none]
	 * Returns: TRUE when obuf was different from nbuf.
	 */
	public static int replace(ref Buffer obuf, Buffer nbuf)
	{
		// gboolean gst_buffer_replace (GstBuffer **obuf,  GstBuffer *nbuf);
		GstBuffer* outobuf = (obuf is null) ? null : obuf.getBufferStruct();
		
		auto p = gst_buffer_replace(&outobuf, (nbuf is null) ? null : nbuf.getBufferStruct());
		
		obuf = ObjectG.getDObject!(Buffer)(outobuf);
		return p;
	}
	
	/**
	 * Append all the memory from buf2 to buf1. The result buffer will contain a
	 * concatenation of the memory of buf1 and buf2.
	 * Params:
	 * buf2 = the second source GstBuffer to append. [transfer full]
	 * Returns: the new GstBuffer that contains the memory of the two source buffers. [transfer full]
	 */
	public Buffer append(Buffer buf2)
	{
		// GstBuffer * gst_buffer_append (GstBuffer *buf1,  GstBuffer *buf2);
		auto p = gst_buffer_append(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Append size bytes at offset from buf2 to buf1. The result buffer will
	 * contain a concatenation of the memory of buf1 and the requested region of
	 * buf2.
	 * Params:
	 * buf2 = the second source GstBuffer to append. [transfer full]
	 * offset = the offset in buf2
	 * size = the size or -1 of buf2
	 * Returns: the new GstBuffer that contains the memory of the two source buffers. [transfer full]
	 */
	public Buffer appendRegion(Buffer buf2, gssize offset, gssize size)
	{
		// GstBuffer * gst_buffer_append_region (GstBuffer *buf1,  GstBuffer *buf2,  gssize offset,  gssize size);
		auto p = gst_buffer_append_region(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct(), offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Get the metadata for api on buffer. When there is no such
	 * metadata, NULL is returned.
	 * Params:
	 * api = the GType of an API
	 * Returns: the metadata for api on buffer. [transfer none]
	 */
	public GstMeta* getMeta(GType api)
	{
		// GstMeta * gst_buffer_get_meta (GstBuffer *buffer,  GType api);
		return gst_buffer_get_meta(gstBuffer, api);
	}
	
	/**
	 * Add metadata for info to buffer using the parameters in params.
	 * Params:
	 * info = a GstMetaInfo
	 * params = params for info
	 * Returns: the metadata for the api in info on buffer. [transfer none]
	 */
	public GstMeta* addMeta(GstMetaInfo* info, void* params)
	{
		// GstMeta * gst_buffer_add_meta (GstBuffer *buffer,  const GstMetaInfo *info,  gpointer params);
		return gst_buffer_add_meta(gstBuffer, info, params);
	}
	
	/**
	 * Remove the metadata for meta on buffer.
	 * Params:
	 * meta = a GstMeta
	 * Returns: TRUE if the metadata existed and was removed, FALSE if no such metadata was on buffer.
	 */
	public int removeMeta(GstMeta* meta)
	{
		// gboolean gst_buffer_remove_meta (GstBuffer *buffer,  GstMeta *meta);
		return gst_buffer_remove_meta(gstBuffer, meta);
	}
	
	/**
	 * Retrieve the next GstMeta after current. If state points
	 * to NULL, the first metadata is returned.
	 * state will be updated with an opage state pointer
	 * Params:
	 * state = an opaque state pointer
	 * Returns: The next GstMeta or NULL when there are no more items. [transfer none]
	 */
	public GstMeta* iterateMeta(void** state)
	{
		// GstMeta * gst_buffer_iterate_meta (GstBuffer *buffer,  gpointer *state);
		return gst_buffer_iterate_meta(gstBuffer, state);
	}
	
	/**
	 * Call func with user_data for each meta in buffer.
	 * func can modify the passed meta pointer or its contents. The return value
	 * of func define if this function returns or if the remaining metadata items
	 * in the buffer should be skipped.
	 * Params:
	 * func = a GstBufferForeachMetaFunc to call. [scope call]
	 * userData = user data passed to func. [closure]
	 * Returns: FALSE when func returned FALSE for one of the metadata.
	 */
	public int foreachMeta(GstBufferForeachMetaFunc func, void* userData)
	{
		// gboolean gst_buffer_foreach_meta (GstBuffer *buffer,  GstBufferForeachMetaFunc func,  gpointer user_data);
		return gst_buffer_foreach_meta(gstBuffer, func, userData);
	}
}
