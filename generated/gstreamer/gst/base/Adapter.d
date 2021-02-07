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


module gst.base.Adapter;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gstreamer.BufferList;


/**
 * This class is for elements that receive buffers in an undesired size.
 * While for example raw video contains one image per buffer, the same is not
 * true for a lot of other formats, especially those that come directly from
 * a file. So if you have undefined buffer sizes and require a specific size,
 * this object is for you.
 * 
 * An adapter is created with gst_adapter_new(). It can be freed again with
 * g_object_unref().
 * 
 * The theory of operation is like this: All buffers received are put
 * into the adapter using gst_adapter_push() and the data is then read back
 * in chunks of the desired size using gst_adapter_map()/gst_adapter_unmap()
 * and/or gst_adapter_copy(). After the data has been processed, it is freed
 * using gst_adapter_unmap().
 * 
 * Other methods such as gst_adapter_take() and gst_adapter_take_buffer()
 * combine gst_adapter_map() and gst_adapter_unmap() in one method and are
 * potentially more convenient for some use cases.
 * 
 * For example, a sink pad's chain function that needs to pass data to a library
 * in 512-byte chunks could be implemented like this:
 * |[<!-- language="C" -->
 * static GstFlowReturn
 * sink_pad_chain (GstPad *pad, GstObject *parent, GstBuffer *buffer)
 * {
 * MyElement *this;
 * GstAdapter *adapter;
 * GstFlowReturn ret = GST_FLOW_OK;
 * 
 * this = MY_ELEMENT (parent);
 * 
 * adapter = this->adapter;
 * 
 * // put buffer into adapter
 * gst_adapter_push (adapter, buffer);
 * 
 * // while we can read out 512 bytes, process them
 * while (gst_adapter_available (adapter) >= 512 && ret == GST_FLOW_OK) {
 * const guint8 *data = gst_adapter_map (adapter, 512);
 * // use flowreturn as an error value
 * ret = my_library_foo (data);
 * gst_adapter_unmap (adapter);
 * gst_adapter_flush (adapter, 512);
 * }
 * return ret;
 * }
 * ]|
 * 
 * For another example, a simple element inside GStreamer that uses #GstAdapter
 * is the libvisual element.
 * 
 * An element using #GstAdapter in its sink pad chain function should ensure that
 * when the FLUSH_STOP event is received, that any queued data is cleared using
 * gst_adapter_clear(). Data should also be cleared or processed on EOS and
 * when changing state from %GST_STATE_PAUSED to %GST_STATE_READY.
 * 
 * Also check the GST_BUFFER_FLAG_DISCONT flag on the buffer. Some elements might
 * need to clear the adapter after a discontinuity.
 * 
 * The adapter will keep track of the timestamps of the buffers
 * that were pushed. The last seen timestamp before the current position
 * can be queried with gst_adapter_prev_pts(). This function can
 * optionally return the number of bytes between the start of the buffer that
 * carried the timestamp and the current adapter position. The distance is
 * useful when dealing with, for example, raw audio samples because it allows
 * you to calculate the timestamp of the current adapter position by using the
 * last seen timestamp and the amount of bytes since.  Additionally, the
 * gst_adapter_prev_pts_at_offset() can be used to determine the last
 * seen timestamp at a particular offset in the adapter.
 * 
 * The adapter will also keep track of the offset of the buffers
 * (#GST_BUFFER_OFFSET) that were pushed. The last seen offset before the
 * current position can be queried with gst_adapter_prev_offset(). This function
 * can optionally return the number of bytes between the start of the buffer
 * that carried the offset and the current adapter position.
 * 
 * Additionally the adapter also keeps track of the PTS, DTS and buffer offset
 * at the last discontinuity, which can be retrieved with
 * gst_adapter_pts_at_discont(), gst_adapter_dts_at_discont() and
 * gst_adapter_offset_at_discont(). The number of bytes that were consumed
 * since then can be queried with gst_adapter_distance_from_discont().
 * 
 * A last thing to note is that while #GstAdapter is pretty optimized,
 * merging buffers still might be an operation that requires a `malloc()` and
 * `memcpy()` operation, and these operations are not the fastest. Because of
 * this, some functions like gst_adapter_available_fast() are provided to help
 * speed up such cases should you want to. To avoid repeated memory allocations,
 * gst_adapter_copy() can be used to copy data into a (statically allocated)
 * user provided buffer.
 * 
 * #GstAdapter is not MT safe. All operations on an adapter must be serialized by
 * the caller. This is not normally a problem, however, as the normal use case
 * of #GstAdapter is inside one pad's chain function, in which case access is
 * serialized via the pad's STREAM_LOCK.
 * 
 * Note that gst_adapter_push() takes ownership of the buffer passed. Use
 * gst_buffer_ref() before pushing it into the adapter if you still want to
 * access the buffer later. The adapter will never modify the data in the
 * buffer pushed in it.
 */
public class Adapter : ObjectG
{
	/** the main Gtk struct */
	protected GstAdapter* gstAdapter;

	/** Get the main Gtk struct */
	public GstAdapter* getAdapterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAdapter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAdapter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAdapter* gstAdapter, bool ownedRef = false)
	{
		this.gstAdapter = gstAdapter;
		super(cast(GObject*)gstAdapter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_adapter_get_type();
	}

	/**
	 * Creates a new #GstAdapter. Free with g_object_unref().
	 *
	 * Returns: a new #GstAdapter
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_adapter_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstAdapter*) __p, true);
	}

	/**
	 * Gets the maximum amount of bytes available, that is it returns the maximum
	 * value that can be supplied to gst_adapter_map() without that function
	 * returning %NULL.
	 *
	 * Returns: number of bytes available in @adapter
	 */
	public size_t available()
	{
		return gst_adapter_available(gstAdapter);
	}

	/**
	 * Gets the maximum number of bytes that are immediately available without
	 * requiring any expensive operations (like copying the data into a
	 * temporary buffer).
	 *
	 * Returns: number of bytes that are available in @adapter without expensive
	 *     operations
	 */
	public size_t availableFast()
	{
		return gst_adapter_available_fast(gstAdapter);
	}

	/**
	 * Removes all buffers from @adapter.
	 */
	public void clear()
	{
		gst_adapter_clear(gstAdapter);
	}

	/**
	 * Copies @size bytes of data starting at @offset out of the buffers
	 * contained in #GstAdapter into an array @dest provided by the caller.
	 *
	 * The array @dest should be large enough to contain @size bytes.
	 * The user should check that the adapter has (@offset + @size) bytes
	 * available before calling this function.
	 *
	 * Params:
	 *     dest = the memory to copy into
	 *     offset = the bytes offset in the adapter to start from
	 */
	public void copy(ubyte[] dest, size_t offset)
	{
		gst_adapter_copy(gstAdapter, dest.ptr, offset, cast(size_t)dest.length);
	}

	/**
	 * Similar to gst_adapter_copy, but more suitable for language bindings. @size
	 * bytes of data starting at @offset will be copied out of the buffers contained
	 * in @adapter and into a new #GBytes structure which is returned. Depending on
	 * the value of the @size argument an empty #GBytes structure may be returned.
	 *
	 * Params:
	 *     offset = the bytes offset in the adapter to start from
	 *     size = the number of bytes to copy
	 *
	 * Returns: A new #GBytes structure containing the copied data.
	 *
	 * Since: 1.4
	 */
	public Bytes copyBytes(size_t offset, size_t size)
	{
		auto __p = gst_adapter_copy_bytes(gstAdapter, offset, size);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Get the distance in bytes since the last buffer with the
	 * %GST_BUFFER_FLAG_DISCONT flag.
	 *
	 * The distance will be reset to 0 for all buffers with
	 * %GST_BUFFER_FLAG_DISCONT on them, and then calculated for all other
	 * following buffers based on their size.
	 *
	 * Returns: The offset. Can be %GST_BUFFER_OFFSET_NONE.
	 *
	 * Since: 1.10
	 */
	public ulong distanceFromDiscont()
	{
		return gst_adapter_distance_from_discont(gstAdapter);
	}

	/**
	 * Get the DTS that was on the last buffer with the GST_BUFFER_FLAG_DISCONT
	 * flag, or GST_CLOCK_TIME_NONE.
	 *
	 * Returns: The DTS at the last discont or GST_CLOCK_TIME_NONE.
	 *
	 * Since: 1.10
	 */
	public GstClockTime dtsAtDiscont()
	{
		return gst_adapter_dts_at_discont(gstAdapter);
	}

	/**
	 * Flushes the first @flush bytes in the @adapter. The caller must ensure that
	 * at least this many bytes are available.
	 *
	 * See also: gst_adapter_map(), gst_adapter_unmap()
	 *
	 * Params:
	 *     flush = the number of bytes to flush
	 */
	public void flush(size_t flush)
	{
		gst_adapter_flush(gstAdapter, flush);
	}

	/**
	 * Returns a #GstBuffer containing the first @nbytes of the @adapter, but
	 * does not flush them from the adapter. See gst_adapter_take_buffer()
	 * for details.
	 *
	 * Caller owns a reference to the returned buffer. gst_buffer_unref() after
	 * usage.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Params:
	 *     nbytes = the number of bytes to get
	 *
	 * Returns: a #GstBuffer containing the first
	 *     @nbytes of the adapter, or %NULL if @nbytes bytes are not available.
	 *     gst_buffer_unref() when no longer needed.
	 *
	 * Since: 1.6
	 */
	public Buffer getBuffer(size_t nbytes)
	{
		auto __p = gst_adapter_get_buffer(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Returns a #GstBuffer containing the first @nbytes of the @adapter, but
	 * does not flush them from the adapter. See gst_adapter_take_buffer_fast()
	 * for details.
	 *
	 * Caller owns a reference to the returned buffer. gst_buffer_unref() after
	 * usage.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Params:
	 *     nbytes = the number of bytes to get
	 *
	 * Returns: a #GstBuffer containing the first
	 *     @nbytes of the adapter, or %NULL if @nbytes bytes are not available.
	 *     gst_buffer_unref() when no longer needed.
	 *
	 * Since: 1.6
	 */
	public Buffer getBufferFast(size_t nbytes)
	{
		auto __p = gst_adapter_get_buffer_fast(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Returns a #GstBufferList of buffers containing the first @nbytes bytes of
	 * the @adapter but does not flush them from the adapter. See
	 * gst_adapter_take_buffer_list() for details.
	 *
	 * Caller owns the returned list. Call gst_buffer_list_unref() to free
	 * the list after usage.
	 *
	 * Params:
	 *     nbytes = the number of bytes to get
	 *
	 * Returns: a #GstBufferList of buffers containing
	 *     the first @nbytes of the adapter, or %NULL if @nbytes bytes are not
	 *     available
	 *
	 * Since: 1.6
	 */
	public BufferList getBufferList(size_t nbytes)
	{
		auto __p = gst_adapter_get_buffer_list(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p, true);
	}

	/**
	 * Returns a #GList of buffers containing the first @nbytes bytes of the
	 * @adapter, but does not flush them from the adapter. See
	 * gst_adapter_take_list() for details.
	 *
	 * Caller owns returned list and contained buffers. gst_buffer_unref() each
	 * buffer in the list before freeing the list after usage.
	 *
	 * Params:
	 *     nbytes = the number of bytes to get
	 *
	 * Returns: a #GList of
	 *     buffers containing the first @nbytes of the adapter, or %NULL if @nbytes
	 *     bytes are not available
	 *
	 * Since: 1.6
	 */
	public ListG getList(size_t nbytes)
	{
		auto __p = gst_adapter_get_list(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets the first @size bytes stored in the @adapter. The returned pointer is
	 * valid until the next function is called on the adapter.
	 *
	 * Note that setting the returned pointer as the data of a #GstBuffer is
	 * incorrect for general-purpose plugins. The reason is that if a downstream
	 * element stores the buffer so that it has access to it outside of the bounds
	 * of its chain function, the buffer will have an invalid data pointer after
	 * your element flushes the bytes. In that case you should use
	 * gst_adapter_take(), which returns a freshly-allocated buffer that you can set
	 * as #GstBuffer memory or the potentially more performant
	 * gst_adapter_take_buffer().
	 *
	 * Returns %NULL if @size bytes are not available.
	 *
	 * Params:
	 *     size = the number of bytes to map/peek
	 *
	 * Returns: a pointer to the first @size bytes of data, or %NULL
	 */
	public ubyte[] map(size_t size)
	{
		auto __p = gst_adapter_map(gstAdapter, size);

		return cast(ubyte[])__p[0 .. size];
	}

	/**
	 * Scan for pattern @pattern with applied mask @mask in the adapter data,
	 * starting from offset @offset.
	 *
	 * The bytes in @pattern and @mask are interpreted left-to-right, regardless
	 * of endianness.  All four bytes of the pattern must be present in the
	 * adapter for it to match, even if the first or last bytes are masked out.
	 *
	 * It is an error to call this function without making sure that there is
	 * enough data (offset+size bytes) in the adapter.
	 *
	 * This function calls gst_adapter_masked_scan_uint32_peek() passing %NULL
	 * for value.
	 *
	 * Params:
	 *     mask = mask to apply to data before matching against @pattern
	 *     pattern = pattern to match (after mask is applied)
	 *     offset = offset into the adapter data from which to start scanning, returns
	 *         the last scanned position.
	 *     size = number of bytes to scan from offset
	 *
	 * Returns: offset of the first match, or -1 if no match was found.
	 *
	 *     Example:
	 *     |[
	 *     // Assume the adapter contains 0x00 0x01 0x02 ... 0xfe 0xff
	 *
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffffffff, 0x00010203, 0, 256);
	 *     // -> returns 0
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffffffff, 0x00010203, 1, 255);
	 *     // -> returns -1
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffffffff, 0x01020304, 1, 255);
	 *     // -> returns 1
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffff, 0x0001, 0, 256);
	 *     // -> returns -1
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffff, 0x0203, 0, 256);
	 *     // -> returns 0
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffff0000, 0x02030000, 0, 256);
	 *     // -> returns 2
	 *     gst_adapter_masked_scan_uint32 (adapter, 0xffff0000, 0x02030000, 0, 4);
	 *     // -> returns -1
	 *     ]|
	 */
	public ptrdiff_t maskedScanUint32(uint mask, uint pattern, size_t offset, size_t size)
	{
		return gst_adapter_masked_scan_uint32(gstAdapter, mask, pattern, offset, size);
	}

	/**
	 * Scan for pattern @pattern with applied mask @mask in the adapter data,
	 * starting from offset @offset.  If a match is found, the value that matched
	 * is returned through @value, otherwise @value is left untouched.
	 *
	 * The bytes in @pattern and @mask are interpreted left-to-right, regardless
	 * of endianness.  All four bytes of the pattern must be present in the
	 * adapter for it to match, even if the first or last bytes are masked out.
	 *
	 * It is an error to call this function without making sure that there is
	 * enough data (offset+size bytes) in the adapter.
	 *
	 * Params:
	 *     mask = mask to apply to data before matching against @pattern
	 *     pattern = pattern to match (after mask is applied)
	 *     offset = offset into the adapter data from which to start scanning, returns
	 *         the last scanned position.
	 *     size = number of bytes to scan from offset
	 *     value = pointer to uint32 to return matching data
	 *
	 * Returns: offset of the first match, or -1 if no match was found.
	 */
	public ptrdiff_t maskedScanUint32Peek(uint mask, uint pattern, size_t offset, size_t size, out uint value)
	{
		return gst_adapter_masked_scan_uint32_peek(gstAdapter, mask, pattern, offset, size, &value);
	}

	/**
	 * Get the offset that was on the last buffer with the GST_BUFFER_FLAG_DISCONT
	 * flag, or GST_BUFFER_OFFSET_NONE.
	 *
	 * Returns: The offset at the last discont or GST_BUFFER_OFFSET_NONE.
	 *
	 * Since: 1.10
	 */
	public ulong offsetAtDiscont()
	{
		return gst_adapter_offset_at_discont(gstAdapter);
	}

	/**
	 * Get the dts that was before the current byte in the adapter. When
	 * @distance is given, the amount of bytes between the dts and the current
	 * position is returned.
	 *
	 * The dts is reset to GST_CLOCK_TIME_NONE and the distance is set to 0 when
	 * the adapter is first created or when it is cleared. This also means that before
	 * the first byte with a dts is removed from the adapter, the dts
	 * and distance returned are GST_CLOCK_TIME_NONE and 0 respectively.
	 *
	 * Params:
	 *     distance = pointer to location for distance, or %NULL
	 *
	 * Returns: The previously seen dts.
	 */
	public GstClockTime prevDts(out ulong distance)
	{
		return gst_adapter_prev_dts(gstAdapter, &distance);
	}

	/**
	 * Get the dts that was before the byte at offset @offset in the adapter. When
	 * @distance is given, the amount of bytes between the dts and the current
	 * position is returned.
	 *
	 * The dts is reset to GST_CLOCK_TIME_NONE and the distance is set to 0 when
	 * the adapter is first created or when it is cleared. This also means that before
	 * the first byte with a dts is removed from the adapter, the dts
	 * and distance returned are GST_CLOCK_TIME_NONE and 0 respectively.
	 *
	 * Params:
	 *     offset = the offset in the adapter at which to get timestamp
	 *     distance = pointer to location for distance, or %NULL
	 *
	 * Returns: The previously seen dts at given offset.
	 *
	 * Since: 1.2
	 */
	public GstClockTime prevDtsAtOffset(size_t offset, out ulong distance)
	{
		return gst_adapter_prev_dts_at_offset(gstAdapter, offset, &distance);
	}

	/**
	 * Get the offset that was before the current byte in the adapter. When
	 * @distance is given, the amount of bytes between the offset and the current
	 * position is returned.
	 *
	 * The offset is reset to GST_BUFFER_OFFSET_NONE and the distance is set to 0
	 * when the adapter is first created or when it is cleared. This also means that
	 * before the first byte with an offset is removed from the adapter, the offset
	 * and distance returned are GST_BUFFER_OFFSET_NONE and 0 respectively.
	 *
	 * Params:
	 *     distance = pointer to a location for distance, or %NULL
	 *
	 * Returns: The previous seen offset.
	 *
	 * Since: 1.10
	 */
	public ulong prevOffset(out ulong distance)
	{
		return gst_adapter_prev_offset(gstAdapter, &distance);
	}

	/**
	 * Get the pts that was before the current byte in the adapter. When
	 * @distance is given, the amount of bytes between the pts and the current
	 * position is returned.
	 *
	 * The pts is reset to GST_CLOCK_TIME_NONE and the distance is set to 0 when
	 * the adapter is first created or when it is cleared. This also means that before
	 * the first byte with a pts is removed from the adapter, the pts
	 * and distance returned are GST_CLOCK_TIME_NONE and 0 respectively.
	 *
	 * Params:
	 *     distance = pointer to location for distance, or %NULL
	 *
	 * Returns: The previously seen pts.
	 */
	public GstClockTime prevPts(out ulong distance)
	{
		return gst_adapter_prev_pts(gstAdapter, &distance);
	}

	/**
	 * Get the pts that was before the byte at offset @offset in the adapter. When
	 * @distance is given, the amount of bytes between the pts and the current
	 * position is returned.
	 *
	 * The pts is reset to GST_CLOCK_TIME_NONE and the distance is set to 0 when
	 * the adapter is first created or when it is cleared. This also means that before
	 * the first byte with a pts is removed from the adapter, the pts
	 * and distance returned are GST_CLOCK_TIME_NONE and 0 respectively.
	 *
	 * Params:
	 *     offset = the offset in the adapter at which to get timestamp
	 *     distance = pointer to location for distance, or %NULL
	 *
	 * Returns: The previously seen pts at given offset.
	 *
	 * Since: 1.2
	 */
	public GstClockTime prevPtsAtOffset(size_t offset, out ulong distance)
	{
		return gst_adapter_prev_pts_at_offset(gstAdapter, offset, &distance);
	}

	/**
	 * Get the PTS that was on the last buffer with the GST_BUFFER_FLAG_DISCONT
	 * flag, or GST_CLOCK_TIME_NONE.
	 *
	 * Returns: The PTS at the last discont or GST_CLOCK_TIME_NONE.
	 *
	 * Since: 1.10
	 */
	public GstClockTime ptsAtDiscont()
	{
		return gst_adapter_pts_at_discont(gstAdapter);
	}

	/**
	 * Adds the data from @buf to the data stored inside @adapter and takes
	 * ownership of the buffer.
	 *
	 * Params:
	 *     buf = a #GstBuffer to add to queue in the adapter
	 */
	public void push(Buffer buf)
	{
		gst_adapter_push(gstAdapter, (buf is null) ? null : buf.getBufferStruct());
	}

	/**
	 * Returns a freshly allocated buffer containing the first @nbytes bytes of the
	 * @adapter. The returned bytes will be flushed from the adapter.
	 *
	 * Caller owns returned value. g_free after usage.
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     nbytes = the number of bytes to take
	 *
	 * Returns: oven-fresh hot data, or %NULL if @nbytes bytes are not available
	 */
	public ubyte[] take(size_t nbytes)
	{
		auto __p = gst_adapter_take(gstAdapter, nbytes);

		return cast(ubyte[])__p[0 .. nbytes];
	}

	/**
	 * Returns a #GstBuffer containing the first @nbytes bytes of the
	 * @adapter. The returned bytes will be flushed from the adapter.
	 * This function is potentially more performant than
	 * gst_adapter_take() since it can reuse the memory in pushed buffers
	 * by subbuffering or merging. This function will always return a
	 * buffer with a single memory region.
	 *
	 * Note that no assumptions should be made as to whether certain buffer
	 * flags such as the DISCONT flag are set on the returned buffer, or not.
	 * The caller needs to explicitly set or unset flags that should be set or
	 * unset.
	 *
	 * Since 1.6 this will also copy over all GstMeta of the input buffers except
	 * for meta with the %GST_META_FLAG_POOLED flag or with the "memory" tag.
	 *
	 * Caller owns a reference to the returned buffer. gst_buffer_unref() after
	 * usage.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Params:
	 *     nbytes = the number of bytes to take
	 *
	 * Returns: a #GstBuffer containing the first
	 *     @nbytes of the adapter, or %NULL if @nbytes bytes are not available.
	 *     gst_buffer_unref() when no longer needed.
	 */
	public Buffer takeBuffer(size_t nbytes)
	{
		auto __p = gst_adapter_take_buffer(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Returns a #GstBuffer containing the first @nbytes of the @adapter.
	 * The returned bytes will be flushed from the adapter.  This function
	 * is potentially more performant than gst_adapter_take_buffer() since
	 * it can reuse the memory in pushed buffers by subbuffering or
	 * merging. Unlike gst_adapter_take_buffer(), the returned buffer may
	 * be composed of multiple non-contiguous #GstMemory objects, no
	 * copies are made.
	 *
	 * Note that no assumptions should be made as to whether certain buffer
	 * flags such as the DISCONT flag are set on the returned buffer, or not.
	 * The caller needs to explicitly set or unset flags that should be set or
	 * unset.
	 *
	 * This will also copy over all GstMeta of the input buffers except
	 * for meta with the %GST_META_FLAG_POOLED flag or with the "memory" tag.
	 *
	 * This function can return buffer up to the return value of
	 * gst_adapter_available() without making copies if possible.
	 *
	 * Caller owns a reference to the returned buffer. gst_buffer_unref() after
	 * usage.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Params:
	 *     nbytes = the number of bytes to take
	 *
	 * Returns: a #GstBuffer containing the first
	 *     @nbytes of the adapter, or %NULL if @nbytes bytes are not available.
	 *     gst_buffer_unref() when no longer needed.
	 *
	 * Since: 1.2
	 */
	public Buffer takeBufferFast(size_t nbytes)
	{
		auto __p = gst_adapter_take_buffer_fast(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Returns a #GstBufferList of buffers containing the first @nbytes bytes of
	 * the @adapter. The returned bytes will be flushed from the adapter.
	 * When the caller can deal with individual buffers, this function is more
	 * performant because no memory should be copied.
	 *
	 * Caller owns the returned list. Call gst_buffer_list_unref() to free
	 * the list after usage.
	 *
	 * Params:
	 *     nbytes = the number of bytes to take
	 *
	 * Returns: a #GstBufferList of buffers containing
	 *     the first @nbytes of the adapter, or %NULL if @nbytes bytes are not
	 *     available
	 *
	 * Since: 1.6
	 */
	public BufferList takeBufferList(size_t nbytes)
	{
		auto __p = gst_adapter_take_buffer_list(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p, true);
	}

	/**
	 * Returns a #GList of buffers containing the first @nbytes bytes of the
	 * @adapter. The returned bytes will be flushed from the adapter.
	 * When the caller can deal with individual buffers, this function is more
	 * performant because no memory should be copied.
	 *
	 * Caller owns returned list and contained buffers. gst_buffer_unref() each
	 * buffer in the list before freeing the list after usage.
	 *
	 * Params:
	 *     nbytes = the number of bytes to take
	 *
	 * Returns: a #GList of
	 *     buffers containing the first @nbytes of the adapter, or %NULL if @nbytes
	 *     bytes are not available
	 */
	public ListG takeList(size_t nbytes)
	{
		auto __p = gst_adapter_take_list(gstAdapter, nbytes);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Releases the memory obtained with the last gst_adapter_map().
	 */
	public void unmap()
	{
		gst_adapter_unmap(gstAdapter);
	}
}
