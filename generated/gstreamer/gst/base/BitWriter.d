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


module gst.base.BitWriter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gtkd.Loader;


/**
 * #GstBitWriter provides a bit writer that can write any number of
 * bits into a memory buffer. It provides functions for writing any
 * number of bits into 8, 16, 32 and 64 bit variables.
 *
 * Since: 1.16
 */
public class BitWriter
{
	/** the main Gtk struct */
	protected GstBitWriter* gstBitWriter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstBitWriter* getBitWriterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBitWriter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBitWriter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBitWriter* gstBitWriter, bool ownedRef = false)
	{
		this.gstBitWriter = gstBitWriter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_bit_writer_free(gstBitWriter);
	}


	/**
	 * Write trailing bit to align last byte of @data. @trailing_bit can
	 * only be 1 or 0.
	 *
	 * Params:
	 *     trailingBit = trailing bits of last byte, 0 or 1
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool alignBytes(ubyte trailingBit)
	{
		return gst_bit_writer_align_bytes(gstBitWriter, trailingBit) != 0;
	}

	/**
	 * Frees @bitwriter and the allocated data inside.
	 */
	public void free()
	{
		gst_bit_writer_free(gstBitWriter);
		ownedRef = false;
	}

	/**
	 * Frees @bitwriter without destroying the internal data, which is
	 * returned as #GstBuffer.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Returns: a new allocated #GstBuffer wrapping the
	 *     data inside. gst_buffer_unref() after usage.
	 */
	public Buffer freeAndGetBuffer()
	{
		auto __p = gst_bit_writer_free_and_get_buffer(gstBitWriter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Frees @bitwriter without destroying the internal data, which is
	 * returned.
	 *
	 * Free-function: g_free
	 *
	 * Returns: the current data. g_free() after
	 *     usage.
	 */
	public ubyte[] freeAndGetData()
	{
		auto __p = gst_bit_writer_free_and_get_data(gstBitWriter);

		return __p[0 .. getArrayLength(__p)];
	}

	/**
	 * Get written data pointer
	 *
	 * Returns: data pointer
	 */
	public ubyte[] getData()
	{
		auto __p = gst_bit_writer_get_data(gstBitWriter);

		return __p[0 .. getArrayLength(__p)];
	}

	/** */
	public uint getRemaining()
	{
		return gst_bit_writer_get_remaining(gstBitWriter);
	}

	/**
	 * Get size of written @data
	 *
	 * Returns: size of bits written in @data
	 */
	public uint getSize()
	{
		return gst_bit_writer_get_size(gstBitWriter);
	}

	/**
	 * Initializes @bitwriter to an empty instance.
	 */
	public void init()
	{
		gst_bit_writer_init(gstBitWriter);
	}

	/**
	 * Initializes @bitwriter with the given memory area @data. IF
	 * @initialized is %TRUE it is possible to read @size bits from the
	 * #GstBitWriter from the beginning.
	 *
	 * Params:
	 *     data = Memory area for writing
	 *     initialized = If %TRUE the complete data can be read from the beginning
	 */
	public void initWithData(ubyte[] data, bool initialized)
	{
		gst_bit_writer_init_with_data(gstBitWriter, data.ptr, cast(uint)data.length, initialized);
	}

	/**
	 * Initializes a #GstBitWriter instance and allocates the given data
	 * @size.
	 *
	 * Params:
	 *     size = the size on bytes to allocate for data
	 *     fixed = If %TRUE the data can't be reallocated
	 */
	public void initWithSize(uint size, bool fixed)
	{
		gst_bit_writer_init_with_size(gstBitWriter, size, fixed);
	}

	/**
	 * Write @nbits bits of @value to #GstBitWriter.
	 *
	 * Params:
	 *     value = value of #guint16 to write
	 *     nbits = number of bits to write
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool putBitsUint16(ushort value, uint nbits)
	{
		return gst_bit_writer_put_bits_uint16(gstBitWriter, value, nbits) != 0;
	}

	/**
	 * Write @nbits bits of @value to #GstBitWriter.
	 *
	 * Params:
	 *     value = value of #guint32 to write
	 *     nbits = number of bits to write
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool putBitsUint32(uint value, uint nbits)
	{
		return gst_bit_writer_put_bits_uint32(gstBitWriter, value, nbits) != 0;
	}

	/**
	 * Write @nbits bits of @value to #GstBitWriter.
	 *
	 * Params:
	 *     value = value of #guint64 to write
	 *     nbits = number of bits to write
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool putBitsUint64(ulong value, uint nbits)
	{
		return gst_bit_writer_put_bits_uint64(gstBitWriter, value, nbits) != 0;
	}

	/**
	 * Write @nbits bits of @value to #GstBitWriter.
	 *
	 * Params:
	 *     value = value of #guint8 to write
	 *     nbits = number of bits to write
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool putBitsUint8(ubyte value, uint nbits)
	{
		return gst_bit_writer_put_bits_uint8(gstBitWriter, value, nbits) != 0;
	}

	/**
	 * Write @nbytes bytes of @data to #GstBitWriter.
	 *
	 * Params:
	 *     data = pointer of data to write
	 *     nbytes = number of bytes to write
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool putBytes(ubyte[] data, uint nbytes)
	{
		return gst_bit_writer_put_bytes(gstBitWriter, data.ptr, nbytes) != 0;
	}

	/**
	 * Resets @bitwriter and frees the data if it's owned by @bitwriter.
	 */
	public void reset()
	{
		gst_bit_writer_reset(gstBitWriter);
	}

	/**
	 * Resets @bitwriter and returns the current data as #GstBuffer.
	 *
	 * Free-function: gst_buffer_unref
	 *
	 * Returns: a new allocated #GstBuffer wrapping the
	 *     current data. gst_buffer_unref() after usage.
	 */
	public Buffer resetAndGetBuffer()
	{
		auto __p = gst_bit_writer_reset_and_get_buffer(gstBitWriter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p, true);
	}

	/**
	 * Resets @bitwriter and returns the current data.
	 *
	 * Free-function: g_free
	 *
	 * Returns: the current data. g_free() after
	 *     usage.
	 */
	public ubyte[] resetAndGetData()
	{
		auto __p = gst_bit_writer_reset_and_get_data(gstBitWriter);

		return __p[0 .. getArrayLength(__p)];
	}

	/** */
	public bool setPos(uint pos)
	{
		return gst_bit_writer_set_pos(gstBitWriter, pos) != 0;
	}

	/**
	 * Creates a new, empty #GstBitWriter instance.
	 *
	 * Free-function: gst_bit_writer_free
	 *
	 * Returns: a new, empty #GstByteWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_bit_writer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstBitWriter*) __p);
	}

	/**
	 * Creates a new #GstBitWriter instance with the given memory area. If
	 * @initialized is %TRUE it is possible to read @size bits from the
	 * #GstBitWriter from the beginning.
	 *
	 * Free-function: gst_bit_writer_free
	 *
	 * Params:
	 *     data = Memory area for writing
	 *     initialized = if %TRUE the complete data can be read from the beginning
	 *
	 * Returns: a new #GstBitWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, bool initialized)
	{
		auto __p = gst_bit_writer_new_with_data(data.ptr, cast(uint)data.length, initialized);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_data");
		}

		this(cast(GstBitWriter*) __p);
	}

	/**
	 * Creates a #GstBitWriter instance with the given initial data size.
	 *
	 * Free-function: gst_bit_writer_free
	 *
	 * Params:
	 *     size = Initial size of data in bytes
	 *     fixed = If %TRUE the data can't be reallocated
	 *
	 * Returns: a new #GstBitWriter instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint size, bool fixed)
	{
		auto __p = gst_bit_writer_new_with_size(size, fixed);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_size");
		}

		this(cast(GstBitWriter*) __p);
	}
}
