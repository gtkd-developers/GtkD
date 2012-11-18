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
 * 	- gst_
 * omit structs:
 * 	- GstBuffer
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Caps
 * structWrap:
 * 	- GstBuffer* -> Buffer
 * 	- GstCaps* -> Caps
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
private import gstreamer.Caps;




/**
 * Description
 * Buffers are the basic unit of data transfer in GStreamer. The GstBuffer
 * type provides all the state necessary to define a region of memory as part
 * of a stream. Sub-buffers are also supported, allowing a smaller region of a
 * buffer to become its own buffer, with mechanisms in place to ensure that
 * neither memory space goes away prematurely.
 * Buffers are usually created with gst_buffer_new(). After a buffer has been
 * created one will typically allocate memory for it and set the size of the
 * buffer data. The following example creates a buffer that can hold a given
 * video frame with a given width, height and bits per plane.
 * $(DDOC_COMMENT example)
 * Alternatively, use gst_buffer_new_and_alloc()
 * to create a buffer with preallocated data of a given size.
 * The data pointed to by the buffer can be retrieved with the GST_BUFFER_DATA()
 * macro. The size of the data can be found with GST_BUFFER_SIZE(). For buffers
 * of size 0, the data pointer is undefined (usually NULL) and should never be used.
 * If an element knows what pad you will push the buffer out on, it should use
 * gst_pad_alloc_buffer() instead to create a buffer. This allows downstream
 * elements to provide special buffers to write in, like hardware buffers.
 * A buffer has a pointer to a GstCaps describing the media type of the data
 * in the buffer. Attach caps to the buffer with gst_buffer_set_caps(); this
 * is typically done before pushing out a buffer using gst_pad_push() so that
 * the downstream element knows the type of the buffer.
 * A buffer will usually have a timestamp, and a duration, but neither of these
 * are guaranteed (they may be set to GST_CLOCK_TIME_NONE). Whenever a
 * meaningful value can be given for these, they should be set. The timestamp
 * and duration are measured in nanoseconds (they are GstClockTime values).
 * A buffer can also have one or both of a start and an end offset. These are
 * media-type specific. For video buffers, the start offset will generally be
 * the frame number. For audio buffers, it will be the number of samples
 * produced so far. For compressed data, it could be the byte offset in a
 * source or destination file. Likewise, the end offset will be the offset of
 * the end of the buffer. These can only be meaningfully interpreted if you
 * know the media type of the buffer (the GstCaps set on it). Either or both
 * can be set to GST_BUFFER_OFFSET_NONE.
 * gst_buffer_ref() is used to increase the refcount of a buffer. This must be
 * done when you want to keep a handle to the buffer after pushing it to the
 * next element.
 * To efficiently create a smaller buffer out of an existing one, you can
 * use gst_buffer_create_sub().
 * If a plug-in wants to modify the buffer data in-place, it should first obtain
 * a buffer that is safe to modify by using gst_buffer_make_writable(). This
 * function is optimized so that a copy will only be made when it is necessary.
 * A plugin that only wishes to modify the metadata of a buffer, such as the
 * offset, timestamp or caps, should use gst_buffer_make_metadata_writable(),
 * which will create a subbuffer of the original buffer to ensure the caller
 * has sole ownership, and not copy the buffer data.
 * Several flags of the buffer can be set and unset with the
 * GST_BUFFER_FLAG_SET() and GST_BUFFER_FLAG_UNSET() macros. Use
 * GST_BUFFER_FLAG_IS_SET() to test if a certain GstBufferFlag is set.
 * Buffers can be efficiently merged into a larger buffer with
 * gst_buffer_merge() and gst_buffer_span() if the gst_buffer_is_span_fast()
 * function returns TRUE.
 * An element should either unref the buffer or push it out on a src pad
 * using gst_pad_push() (see GstPad).
 * Buffers are usually freed by unreffing them with gst_buffer_unref(). When
 * the refcount drops to 0, any data pointed to by GST_BUFFER_MALLOCDATA() will
 * also be freed.
 * Last reviewed on August 11th, 2006 (0.10.10)
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
		// GstBuffer* gst_buffer_new (void);
		auto p = gst_buffer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new()");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Creates a newly allocated buffer with data of the given size.
	 * The buffer memory is not cleared. If the requested amount of
	 * memory can't be allocated, the program will abort. Use
	 * gst_buffer_try_new_and_alloc() if you want to handle this case
	 * gracefully or have gotten the size to allocate from an untrusted
	 * source such as a media stream.
	 * Note that when size == 0, the buffer data pointer will be NULL.
	 * MT safe.
	 * Params:
	 * size = the size of the new buffer's data.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint size)
	{
		// GstBuffer* gst_buffer_new_and_alloc (guint size);
		auto p = gst_buffer_new_and_alloc(size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_new_and_alloc(size)");
		}
		this(cast(GstBuffer*) p);
	}
	
	/**
	 * Tries to create a newly allocated buffer with data of the given size. If
	 * the requested amount of memory can't be allocated, NULL will be returned.
	 * The buffer memory is not cleared.
	 * Note that when size == 0, the buffer data pointer will be NULL.
	 * MT safe.
	 * Params:
	 * size = the size of the new buffer's data.
	 * Returns: a new GstBuffer, or NULL if the memory couldn't be allocated. Since 0.10.13
	 */
	public static Buffer tryNewAndAlloc(uint size)
	{
		// GstBuffer* gst_buffer_try_new_and_alloc (guint size);
		auto p = gst_buffer_try_new_and_alloc(size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Increases the refcount of the given buffer by one.
	 * Note that the refcount affects the writeability
	 * of buf and its metadata, see gst_buffer_is_writable() and
	 * gst_buffer_is_metadata_writable(). It is
	 * important to note that keeping additional references to
	 * GstBuffer instances can potentially increase the number
	 * of memcpy operations in a pipeline.
	 * Returns: buf
	 */
	public Buffer doref()
	{
		// GstBuffer* gst_buffer_ref (GstBuffer *buf);
		auto p = gst_buffer_ref(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Copies the metadata from src into dest. The data, size and mallocdata
	 * fields are not copied.
	 * flags indicate which fields will be copied. Use GST_BUFFER_COPY_ALL to copy
	 * all the metadata fields.
	 * This function is typically called from a custom buffer copy function after
	 * creating dest and setting the data, size, mallocdata.
	 * Params:
	 * src = a source GstBuffer
	 * flags = flags indicating what metadata fields should be copied.
	 * Since 0.10.13
	 */
	public void copyMetadata(Buffer src, GstBufferCopyFlags flags)
	{
		// void gst_buffer_copy_metadata (GstBuffer *dest,  const GstBuffer *src,  GstBufferCopyFlags flags);
		gst_buffer_copy_metadata(gstBuffer, (src is null) ? null : src.getBufferStruct(), flags);
	}
	
	/**
	 * Similar to gst_buffer_is_writable, but this only ensures that the
	 * refcount of the buffer is 1, indicating that the caller is the sole
	 * owner and can change the buffer metadata, such as caps and timestamps.
	 * Returns: TRUE if the metadata is writable.
	 */
	public int isMetadataWritable()
	{
		// gboolean gst_buffer_is_metadata_writable (GstBuffer *buf);
		return gst_buffer_is_metadata_writable(gstBuffer);
	}
	
	/**
	 * Similar to gst_buffer_make_writable, but does not ensure that the buffer
	 * data array is writable. Instead, this just ensures that the returned buffer
	 * is solely owned by the caller, by creating a subbuffer of the original
	 * buffer if necessary.
	 * After calling this function, buf should not be referenced anymore. The
	 * result of this function has guaranteed writable metadata.
	 * Returns: A new GstBuffer with writable metadata.
	 */
	public Buffer makeMetadataWritable()
	{
		// GstBuffer* gst_buffer_make_metadata_writable (GstBuffer *buf);
		auto p = gst_buffer_make_metadata_writable(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Gets the media type of the buffer. This can be NULL if there
	 * is no media type attached to this buffer.
	 * Returns: a reference to the GstCaps. unref after usage.
	 * Returns: NULL if there were no caps on this buffer.
	 */
	public Caps getCaps()
	{
		// GstCaps* gst_buffer_get_caps (GstBuffer *buffer);
		auto p = gst_buffer_get_caps(gstBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Sets the media type on the buffer. The refcount of the caps will
	 * be increased and any previous caps on the buffer will be
	 * unreffed.
	 * Params:
	 * caps = a GstCaps.
	 */
	public void setCaps(Caps caps)
	{
		// void gst_buffer_set_caps (GstBuffer *buffer,  GstCaps *caps);
		gst_buffer_set_caps(gstBuffer, (caps is null) ? null : caps.getCapsStruct());
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
	 * Returns: the new GstBuffer.
	 * Params:
	 * offset = the offset into parent GstBuffer at which the new sub-buffer
	 *  begins.
	 * size = the size of the new GstBuffer sub-buffer, in bytes.
	 * Returns: NULL if the arguments were invalid.
	 */
	public Buffer createSub(uint offset, uint size)
	{
		// GstBuffer* gst_buffer_create_sub (GstBuffer *parent,  guint offset,  guint size);
		auto p = gst_buffer_create_sub(gstBuffer, offset, size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Determines whether a gst_buffer_span() can be done without copying
	 * the contents, that is, whether the data areas are contiguous sub-buffers of
	 * the same buffer.
	 * MT safe.
	 * Params:
	 * buf2 = the second GstBuffer.
	 * Returns: TRUE if the buffers are contiguous, FALSE if a copy would be required.
	 */
	public int isSpanFast(Buffer buf2)
	{
		// gboolean gst_buffer_is_span_fast (GstBuffer *buf1,  GstBuffer *buf2);
		return gst_buffer_is_span_fast(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct());
	}
	
	/**
	 * Creates a new buffer that consists of part of buf1 and buf2.
	 * Logically, buf1 and buf2 are concatenated into a single larger
	 * buffer, and a new buffer is created at the given offset inside
	 * this space, with a given length.
	 * If the two source buffers are children of the same larger buffer,
	 * and are contiguous, the new buffer will be a child of the shared
	 * parent, and thus no copying is necessary. you can use
	 * gst_buffer_is_span_fast() to determine if a memcpy will be needed.
	 * MT safe.
	 * Returns: the new GstBuffer that spans the two source buffers.
	 * Params:
	 * offset = the offset in the first buffer from where the new
	 * buffer should start.
	 * buf2 = the second source GstBuffer to merge.
	 * len = the total length of the new buffer.
	 * Returns: NULL if the arguments are invalid.
	 */
	public Buffer span(uint offset, Buffer buf2, uint len)
	{
		// GstBuffer* gst_buffer_span (GstBuffer *buf1,  guint32 offset,  GstBuffer *buf2,  guint32 len);
		auto p = gst_buffer_span(gstBuffer, offset, (buf2 is null) ? null : buf2.getBufferStruct(), len);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Warning
	 * gst_buffer_stamp is deprecated and should not be used in newly-written code. use gst_buffer_copy_metadata() instead, it provides more
	 * control.
	 * Copies additional information (the timestamp, duration, and offset start
	 * and end) from one buffer to the other.
	 * This function does not copy any buffer flags or caps and is equivalent to
	 * gst_buffer_copy_metadata(dest, src, GST_BUFFER_COPY_TIMESTAMPS).
	 * Params:
	 * src = buffer to stamp from
	 */
	public void stamp(Buffer src)
	{
		// void gst_buffer_stamp (GstBuffer *dest,  const GstBuffer *src);
		gst_buffer_stamp(gstBuffer, (src is null) ? null : src.getBufferStruct());
	}
	
	/**
	 * Create a new buffer that is the concatenation of the two source
	 * buffers, and unrefs the original source buffers.
	 * If the buffers point to contiguous areas of memory, the buffer
	 * is created without copying the data.
	 * Params:
	 * buf2 = the second source GstBuffer.
	 * Returns: the new GstBuffer which is the concatenation of the source buffers.
	 */
	public Buffer join(Buffer buf2)
	{
		// GstBuffer* gst_buffer_join (GstBuffer *buf1,  GstBuffer *buf2);
		auto p = gst_buffer_join(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 * Create a new buffer that is the concatenation of the two source
	 * buffers. The original source buffers will not be modified or
	 * unref'd. Make sure you unref the source buffers if they are not used
	 * anymore afterwards.
	 * If the buffers point to contiguous areas of memory, the buffer
	 * is created without copying the data.
	 * Params:
	 * buf2 = the second source GstBuffer to merge.
	 * Returns: the new GstBuffer which is the concatenation of the source buffers.
	 */
	public Buffer merge(Buffer buf2)
	{
		// GstBuffer* gst_buffer_merge (GstBuffer *buf1,  GstBuffer *buf2);
		auto p = gst_buffer_merge(gstBuffer, (buf2 is null) ? null : buf2.getBufferStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
}
