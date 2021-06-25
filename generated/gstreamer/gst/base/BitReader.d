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


module gst.base.BitReader;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gtkd.Loader;


/**
 * #GstBitReader provides a bit reader that can read any number of bits
 * from a memory buffer. It provides functions for reading any number of bits
 * into 8, 16, 32 and 64 bit variables.
 */
public class BitReader
{
	/** the main Gtk struct */
	protected GstBitReader* gstBitReader;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstBitReader* getBitReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBitReader;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBitReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBitReader* gstBitReader, bool ownedRef = false)
	{
		this.gstBitReader = gstBitReader;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_bit_reader_free(gstBitReader);
	}


	/**
	 * Frees a #GstBitReader instance, which was previously allocated by
	 * gst_bit_reader_new().
	 */
	public void free()
	{
		gst_bit_reader_free(gstBitReader);
		ownedRef = false;
	}

	/**
	 * Read @nbits bits into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getBitsUint16(out ushort val, uint nbits)
	{
		return gst_bit_reader_get_bits_uint16(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getBitsUint32(out uint val, uint nbits)
	{
		return gst_bit_reader_get_bits_uint32(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getBitsUint64(out ulong val, uint nbits)
	{
		return gst_bit_reader_get_bits_uint64(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint8 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getBitsUint8(out ubyte val, uint nbits)
	{
		return gst_bit_reader_get_bits_uint8(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Returns the current position of a #GstBitReader instance in bits.
	 *
	 * Returns: The current position of @reader in bits.
	 */
	public uint getPos()
	{
		return gst_bit_reader_get_pos(gstBitReader);
	}

	/**
	 * Returns the remaining number of bits of a #GstBitReader instance.
	 *
	 * Returns: The remaining number of bits of @reader instance.
	 */
	public uint getRemaining()
	{
		return gst_bit_reader_get_remaining(gstBitReader);
	}

	/**
	 * Returns the total number of bits of a #GstBitReader instance.
	 *
	 * Returns: The total number of bits of @reader instance.
	 */
	public uint getSize()
	{
		return gst_bit_reader_get_size(gstBitReader);
	}

	/**
	 * Initializes a #GstBitReader instance to read from @data. This function
	 * can be called on already initialized instances.
	 *
	 * Params:
	 *     data = data from which the bit reader should read
	 */
	public void init(ubyte[] data)
	{
		gst_bit_reader_init(gstBitReader, data.ptr, cast(uint)data.length);
	}

	/**
	 * Read @nbits bits into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekBitsUint16(out ushort val, uint nbits)
	{
		return gst_bit_reader_peek_bits_uint16(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekBitsUint32(out uint val, uint nbits)
	{
		return gst_bit_reader_peek_bits_uint32(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekBitsUint64(out ulong val, uint nbits)
	{
		return gst_bit_reader_peek_bits_uint64(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Read @nbits bits into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint8 to store the result
	 *     nbits = number of bits to read
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekBitsUint8(out ubyte val, uint nbits)
	{
		return gst_bit_reader_peek_bits_uint8(gstBitReader, &val, nbits) != 0;
	}

	/**
	 * Sets the new position of a #GstBitReader instance to @pos in bits.
	 *
	 * Params:
	 *     pos = The new position in bits
	 *
	 * Returns: %TRUE if the position could be set successfully, %FALSE
	 *     otherwise.
	 */
	public bool setPos(uint pos)
	{
		return gst_bit_reader_set_pos(gstBitReader, pos) != 0;
	}

	/**
	 * Skips @nbits bits of the #GstBitReader instance.
	 *
	 * Params:
	 *     nbits = the number of bits to skip
	 *
	 * Returns: %TRUE if @nbits bits could be skipped, %FALSE otherwise.
	 */
	public bool skip(uint nbits)
	{
		return gst_bit_reader_skip(gstBitReader, nbits) != 0;
	}

	/**
	 * Skips until the next byte.
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool skipToByte()
	{
		return gst_bit_reader_skip_to_byte(gstBitReader) != 0;
	}

	/**
	 * Create a new #GstBitReader instance, which will read from @data.
	 *
	 * Free-function: gst_bit_reader_free
	 *
	 * Params:
	 *     data = Data from which the #GstBitReader
	 *         should read
	 *
	 * Returns: a new #GstBitReader instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		auto __p = gst_bit_reader_new(data.ptr, cast(uint)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstBitReader*) __p);
	}
}
