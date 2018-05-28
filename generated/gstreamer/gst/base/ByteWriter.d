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


module gst.base.ByteWriter;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gtkd.Loader;


/**
 * #GstByteWriter provides a byte writer and reader that can write/read different
 * integer and floating point types to/from a memory buffer. It provides functions
 * for writing/reading signed/unsigned, little/big endian integers of 8, 16, 24,
 * 32 and 64 bits and functions for reading little/big endian floating points numbers of
 * 32 and 64 bits. It also provides functions to write/read NUL-terminated strings
 * in various character encodings.
 */
public class ByteWriter
{
	/** the main Gtk struct */
	protected GstByteWriter* gstByteWriter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstByteWriter* getByteWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstByteWriter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstByteWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstByteWriter* gstByteWriter, bool ownedRef = false)
	{
		this.gstByteWriter = gstByteWriter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_byte_writer_free(gstByteWriter);
	}

	/**
	 * Frees @writer and all memory allocated by it except
	 * the current data, which is returned.
	 *
	 * Free-function: g_free
	 *
	 * Returns: the current data. g_free() after usage.
	 */
	public ubyte[] freeAndGetData()
	{
		ubyte* p = gst_byte_writer_free_and_get_data(gstByteWriter);
		ownedRef = false;
		return p[0 .. gstByteWriter.parent.size];
	}

	/**
	 * Resets @writer and returns the current data.
	 *
	 * Free-function: g_free
	 *
	 * Returns: the current data. g_free() after
	 *     usage.
	 */
	public ubyte[] resetAndGetData()
	{
		auto p = gst_byte_writer_reset_and_get_data(gstByteWriter);

		return p[0 .. gstByteWriter.parent.size];
	}

	/**
	 */

	/**
	 * Checks if enough free space from the current write cursor is
	 * available and reallocates if necessary.
	 *
	 * Params:
	 *     size = Number of bytes that should be available
	 *
	 * Returns: %TRUE if at least @size bytes are still available
	 */
	public bool ensureFreeSpace(uint size)
	{
		return gst_byte_writer_ensure_free_space(gstByteWriter, size) != 0;
	}

	/**
	 * Writes @size bytes containing @value to @writer.
	 *
	 * Params:
	 *     value = Value to be written
	 *     size = Number of bytes to be written
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool fill(ubyte value, uint size)
	{
		return gst_byte_writer_fill(gstByteWriter, value, size) != 0;
	}

	/**
	 * Frees @writer and all memory allocated by it.
	 */
	public void free()
	{
		gst_byte_writer_free(gstByteWriter);
		ownedRef = false;
	}

	/**
	 * Frees @writer and all memory allocated by it except
	 * the current data, which is returned as #GstBuffer.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Returns: the current data as buffer. gst_buffer_unref()
	 *     after usage.
	 */
	public Buffer freeAndGetBuffer()
	{
		auto p = gst_byte_writer_free_and_get_buffer(gstByteWriter);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Returns the remaining size of data that can still be written. If
	 * -1 is returned the remaining size is only limited by system resources.
	 *
	 * Returns: the remaining size of data that can still be written
	 */
	public uint getRemaining()
	{
		return gst_byte_writer_get_remaining(gstByteWriter);
	}

	/**
	 * Initializes @writer to an empty instance
	 */
	public void init()
	{
		gst_byte_writer_init(gstByteWriter);
	}

	/**
	 * Initializes @writer with the given
	 * memory area. If @initialized is %TRUE it is possible to
	 * read @size bytes from the #GstByteWriter from the beginning.
	 *
	 * Params:
	 *     data = Memory area for writing
	 *     initialized = If %TRUE the complete data can be read from the beginning
	 */
	public void initWithData(ubyte[] data, bool initialized)
	{
		gst_byte_writer_init_with_data(gstByteWriter, data.ptr, cast(uint)data.length, initialized);
	}

	/**
	 * Initializes @writer with the given initial data size.
	 *
	 * Params:
	 *     size = Initial size of data
	 *     fixed = If %TRUE the data can't be reallocated
	 */
	public void initWithSize(uint size, bool fixed)
	{
		gst_byte_writer_init_with_size(gstByteWriter, size, fixed);
	}

	/**
	 * Writes @size bytes of @data to @writer.
	 *
	 * Params:
	 *     buffer = source #GstBuffer
	 *     offset = offset to copy from
	 *     size = total size to copy. If -1, all data is copied
	 *
	 * Returns: %TRUE if the data could be written
	 */
	public bool putBuffer(Buffer buffer, size_t offset, ptrdiff_t size)
	{
		return gst_byte_writer_put_buffer(gstByteWriter, (buffer is null) ? null : buffer.getBufferStruct(), offset, size) != 0;
	}

	/**
	 * Writes @size bytes of @data to @writer.
	 *
	 * Params:
	 *     data = Data to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putData(ubyte[] data)
	{
		return gst_byte_writer_put_data(gstByteWriter, data.ptr, cast(uint)data.length) != 0;
	}

	/**
	 * Writes a big endian 32 bit float to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putFloat32Be(float val)
	{
		return gst_byte_writer_put_float32_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a little endian 32 bit float to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putFloat32Le(float val)
	{
		return gst_byte_writer_put_float32_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a big endian 64 bit float to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putFloat64Be(double val)
	{
		return gst_byte_writer_put_float64_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a little endian 64 bit float to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putFloat64Le(double val)
	{
		return gst_byte_writer_put_float64_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed big endian 16 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt16Be(short val)
	{
		return gst_byte_writer_put_int16_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed little endian 16 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt16Le(short val)
	{
		return gst_byte_writer_put_int16_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed big endian 24 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt24Be(int val)
	{
		return gst_byte_writer_put_int24_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed little endian 24 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt24Le(int val)
	{
		return gst_byte_writer_put_int24_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed big endian 32 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt32Be(int val)
	{
		return gst_byte_writer_put_int32_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed little endian 32 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt32Le(int val)
	{
		return gst_byte_writer_put_int32_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed big endian 64 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt64Be(long val)
	{
		return gst_byte_writer_put_int64_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed little endian 64 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt64Le(long val)
	{
		return gst_byte_writer_put_int64_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a signed 8 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putInt8(byte val)
	{
		return gst_byte_writer_put_int8(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a NUL-terminated UTF16 string to @writer (including the terminator).
	 *
	 * Params:
	 *     data = UTF16 string to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putStringUtf16(ushort[] data)
	{
		return gst_byte_writer_put_string_utf16(gstByteWriter, data.ptr) != 0;
	}

	/**
	 * Writes a NUL-terminated UTF32 string to @writer (including the terminator).
	 *
	 * Params:
	 *     data = UTF32 string to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putStringUtf32(uint[] data)
	{
		return gst_byte_writer_put_string_utf32(gstByteWriter, data.ptr) != 0;
	}

	/**
	 * Writes a NUL-terminated UTF8 string to @writer (including the terminator).
	 *
	 * Params:
	 *     data = UTF8 string to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putStringUtf8(string data)
	{
		return gst_byte_writer_put_string_utf8(gstByteWriter, Str.toStringz(data)) != 0;
	}

	/**
	 * Writes a unsigned big endian 16 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint16Be(ushort val)
	{
		return gst_byte_writer_put_uint16_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned little endian 16 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint16Le(ushort val)
	{
		return gst_byte_writer_put_uint16_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned big endian 24 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint24Be(uint val)
	{
		return gst_byte_writer_put_uint24_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned little endian 24 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint24Le(uint val)
	{
		return gst_byte_writer_put_uint24_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned big endian 32 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint32Be(uint val)
	{
		return gst_byte_writer_put_uint32_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned little endian 32 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint32Le(uint val)
	{
		return gst_byte_writer_put_uint32_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned big endian 64 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint64Be(ulong val)
	{
		return gst_byte_writer_put_uint64_be(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned little endian 64 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint64Le(ulong val)
	{
		return gst_byte_writer_put_uint64_le(gstByteWriter, val) != 0;
	}

	/**
	 * Writes a unsigned 8 bit integer to @writer.
	 *
	 * Params:
	 *     val = Value to write
	 *
	 * Returns: %TRUE if the value could be written
	 */
	public bool putUint8(ubyte val)
	{
		return gst_byte_writer_put_uint8(gstByteWriter, val) != 0;
	}

	/**
	 * Resets @writer and frees the data if it's
	 * owned by @writer.
	 */
	public void reset()
	{
		gst_byte_writer_reset(gstByteWriter);
	}

	/**
	 * Resets @writer and returns the current data as buffer.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Returns: the current data as buffer. gst_buffer_unref()
	 *     after usage.
	 */
	public Buffer resetAndGetBuffer()
	{
		auto p = gst_byte_writer_reset_and_get_buffer(gstByteWriter);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Creates a new, empty #GstByteWriter instance
	 *
	 * Free-function: gst_byte_writer_free
	 *
	 * Returns: a new, empty #GstByteWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_byte_writer_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstByteWriter*) p);
	}

	/**
	 * Creates a new #GstByteWriter instance with the given
	 * memory area. If @initialized is %TRUE it is possible to
	 * read @size bytes from the #GstByteWriter from the beginning.
	 *
	 * Free-function: gst_byte_writer_free
	 *
	 * Params:
	 *     data = Memory area for writing
	 *     initialized = If %TRUE the complete data can be read from the beginning
	 *
	 * Returns: a new #GstByteWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, bool initialized)
	{
		auto p = gst_byte_writer_new_with_data(data.ptr, cast(uint)data.length, initialized);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_data");
		}

		this(cast(GstByteWriter*) p);
	}

	/**
	 * Creates a new #GstByteWriter instance with the given
	 * initial data size.
	 *
	 * Free-function: gst_byte_writer_free
	 *
	 * Params:
	 *     size = Initial size of data
	 *     fixed = If %TRUE the data can't be reallocated
	 *
	 * Returns: a new #GstByteWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint size, bool fixed)
	{
		auto p = gst_byte_writer_new_with_size(size, fixed);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_size");
		}

		this(cast(GstByteWriter*) p);
	}
}
