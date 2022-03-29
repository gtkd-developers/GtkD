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


module gst.base.ByteReader;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gtkd.Loader;


/**
 * #GstByteReader provides a byte reader that can read different integer and
 * floating point types from a memory buffer. It provides functions for reading
 * signed/unsigned, little/big endian integers of 8, 16, 24, 32 and 64 bits
 * and functions for reading little/big endian floating points numbers of
 * 32 and 64 bits. It also provides functions to read NUL-terminated strings
 * in various character encodings.
 */
public class ByteReader
{
	/** the main Gtk struct */
	protected GstByteReader* gstByteReader;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstByteReader* getByteReaderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstByteReader;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstByteReader;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstByteReader* gstByteReader, bool ownedRef = false)
	{
		this.gstByteReader = gstByteReader;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_byte_reader_free(gstByteReader);
	}


	/**
	 * Free-function: g_free
	 *
	 * Returns a newly-allocated copy of the current data
	 * position if at least @size bytes are left and
	 * updates the current position. Free with g_free() when no longer needed.
	 *
	 * Params:
	 *     val = address of a
	 *         #guint8 pointer variable in which to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool dupData(out ubyte[] val)
	{
		ubyte* outval;

		auto __p = gst_byte_reader_dup_data(gstByteReader, cast(uint)val.length, &outval) != 0;

		val = outval[0 .. cast(uint)val.length];

		return __p;
	}

	/**
	 * Free-function: g_free
	 *
	 * Returns a newly-allocated copy of the current data position if there is
	 * a NUL-terminated UTF-16 string in the data (this could be an empty string
	 * as well), and advances the current position.
	 *
	 * No input checking for valid UTF-16 is done. This function is endianness
	 * agnostic - you should not assume the UTF-16 characters are in host
	 * endianness.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Note: there is no peek or get variant of this function to ensure correct
	 * byte alignment of the UTF-16 string.
	 *
	 * Params:
	 *     str = address of a
	 *         #guint16 pointer variable in which to store the result
	 *
	 * Returns: %TRUE if a string could be read, %FALSE otherwise. The
	 *     string put into @str must be freed with g_free() when no longer needed.
	 */
	public bool dupStringUtf16(out ushort[] str)
	{
		ushort* outstr;

		auto __p = gst_byte_reader_dup_string_utf16(gstByteReader, &outstr) != 0;

		str = outstr[0 .. getArrayLength(outstr)];

		return __p;
	}

	/**
	 * Free-function: g_free
	 *
	 * Returns a newly-allocated copy of the current data position if there is
	 * a NUL-terminated UTF-32 string in the data (this could be an empty string
	 * as well), and advances the current position.
	 *
	 * No input checking for valid UTF-32 is done. This function is endianness
	 * agnostic - you should not assume the UTF-32 characters are in host
	 * endianness.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Note: there is no peek or get variant of this function to ensure correct
	 * byte alignment of the UTF-32 string.
	 *
	 * Params:
	 *     str = address of a
	 *         #guint32 pointer variable in which to store the result
	 *
	 * Returns: %TRUE if a string could be read, %FALSE otherwise. The
	 *     string put into @str must be freed with g_free() when no longer needed.
	 */
	public bool dupStringUtf32(out uint[] str)
	{
		uint* outstr;

		auto __p = gst_byte_reader_dup_string_utf32(gstByteReader, &outstr) != 0;

		str = outstr[0 .. getArrayLength(outstr)];

		return __p;
	}

	/**
	 * Free-function: g_free
	 *
	 * FIXME:Reads (copies) a NUL-terminated string in the #GstByteReader instance,
	 * advancing the current position to the byte after the string. This will work
	 * for any NUL-terminated string with a character width of 8 bits, so ASCII,
	 * UTF-8, ISO-8859-N etc. No input checking for valid UTF-8 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Params:
	 *     str = address of a
	 *         #gchar pointer variable in which to store the result
	 *
	 * Returns: %TRUE if a string could be read into @str, %FALSE otherwise. The
	 *     string put into @str must be freed with g_free() when no longer needed.
	 */
	public bool dupStringUtf8(out string str)
	{
		char* outstr = null;

		auto __p = gst_byte_reader_dup_string_utf8(gstByteReader, &outstr) != 0;

		str = Str.toString(outstr);

		return __p;
	}

	/**
	 * Frees a #GstByteReader instance, which was previously allocated by
	 * gst_byte_reader_new().
	 */
	public void free()
	{
		gst_byte_reader_free(gstByteReader);
		ownedRef = false;
	}

	/**
	 * Returns a constant pointer to the current data
	 * position if at least @size bytes are left and
	 * updates the current position.
	 *
	 * Params:
	 *     val = address of a
	 *         #guint8 pointer variable in which to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getData(out ubyte[] val)
	{
		ubyte* outval;

		auto __p = gst_byte_reader_get_data(gstByteReader, cast(uint)val.length, &outval) != 0;

		val = outval[0 .. cast(uint)val.length];

		return __p;
	}

	/**
	 * Read a 32 bit big endian floating point value into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gfloat to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getFloat32Be(out float val)
	{
		return gst_byte_reader_get_float32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 32 bit little endian floating point value into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gfloat to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getFloat32Le(out float val)
	{
		return gst_byte_reader_get_float32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 64 bit big endian floating point value into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gdouble to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getFloat64Be(out double val)
	{
		return gst_byte_reader_get_float64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 64 bit little endian floating point value into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gdouble to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getFloat64Le(out double val)
	{
		return gst_byte_reader_get_float64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 16 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt16Be(out short val)
	{
		return gst_byte_reader_get_int16_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 16 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt16Le(out short val)
	{
		return gst_byte_reader_get_int16_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 24 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt24Be(out int val)
	{
		return gst_byte_reader_get_int24_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 24 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt24Le(out int val)
	{
		return gst_byte_reader_get_int24_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 32 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt32Be(out int val)
	{
		return gst_byte_reader_get_int32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 32 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt32Le(out int val)
	{
		return gst_byte_reader_get_int32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 64 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt64Be(out long val)
	{
		return gst_byte_reader_get_int64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 64 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt64Le(out long val)
	{
		return gst_byte_reader_get_int64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 8 bit integer into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint8 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getInt8(out byte val)
	{
		return gst_byte_reader_get_int8(gstByteReader, &val) != 0;
	}

	/**
	 * Returns the current position of a #GstByteReader instance in bytes.
	 *
	 * Returns: The current position of @reader in bytes.
	 */
	public uint getPos()
	{
		return gst_byte_reader_get_pos(gstByteReader);
	}

	/**
	 * Returns the remaining number of bytes of a #GstByteReader instance.
	 *
	 * Returns: The remaining number of bytes of @reader instance.
	 */
	public uint getRemaining()
	{
		return gst_byte_reader_get_remaining(gstByteReader);
	}

	/**
	 * Returns the total number of bytes of a #GstByteReader instance.
	 *
	 * Returns: The total number of bytes of @reader instance.
	 */
	public uint getSize()
	{
		return gst_byte_reader_get_size(gstByteReader);
	}

	/**
	 * Returns a constant pointer to the current data position if there is
	 * a NUL-terminated string in the data (this could be just a NUL terminator),
	 * advancing the current position to the byte after the string. This will work
	 * for any NUL-terminated string with a character width of 8 bits, so ASCII,
	 * UTF-8, ISO-8859-N etc.
	 *
	 * No input checking for valid UTF-8 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Params:
	 *     str = address of a
	 *         #gchar pointer variable in which to store the result
	 *
	 * Returns: %TRUE if a string could be found, %FALSE otherwise.
	 */
	public bool getStringUtf8(out string str)
	{
		char* outstr = null;

		auto __p = gst_byte_reader_get_string_utf8(gstByteReader, &outstr) != 0;

		str = Str.toString(outstr);

		return __p;
	}

	/**
	 * Initializes a #GstByteReader sub-reader instance to contain @size bytes of
	 * data from the current position of @reader. This is useful to read chunked
	 * formats and make sure that one doesn't read beyond the size of the sub-chunk.
	 *
	 * Unlike gst_byte_reader_peek_sub_reader(), this function also modifies the
	 * position of @reader and moves it forward by @size bytes.
	 *
	 * Params:
	 *     subReader = a #GstByteReader instance to initialize as sub-reader
	 *     size = size of @sub_reader in bytes
	 *
	 * Returns: FALSE on error or if @reader does not contain @size more bytes from
	 *     the current position, and otherwise TRUE
	 *
	 * Since: 1.6
	 */
	public bool getSubReader(ByteReader subReader, uint size)
	{
		return gst_byte_reader_get_sub_reader(gstByteReader, (subReader is null) ? null : subReader.getByteReaderStruct(), size) != 0;
	}

	/**
	 * Read an unsigned 16 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint16Be(out ushort val)
	{
		return gst_byte_reader_get_uint16_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 16 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint16Le(out ushort val)
	{
		return gst_byte_reader_get_uint16_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 24 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint24Be(out uint val)
	{
		return gst_byte_reader_get_uint24_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 24 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint24Le(out uint val)
	{
		return gst_byte_reader_get_uint24_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 32 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint32Be(out uint val)
	{
		return gst_byte_reader_get_uint32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 32 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint32Le(out uint val)
	{
		return gst_byte_reader_get_uint32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 64 bit big endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint64Be(out ulong val)
	{
		return gst_byte_reader_get_uint64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 64 bit little endian integer into @val
	 * and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint64Le(out ulong val)
	{
		return gst_byte_reader_get_uint64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 8 bit integer into @val and update the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint8 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool getUint8(out ubyte val)
	{
		return gst_byte_reader_get_uint8(gstByteReader, &val) != 0;
	}

	/**
	 * Initializes a #GstByteReader instance to read from @data. This function
	 * can be called on already initialized instances.
	 *
	 * Params:
	 *     data = data from which
	 *         the #GstByteReader should read
	 */
	public void init(ubyte[] data)
	{
		gst_byte_reader_init(gstByteReader, data.ptr, cast(uint)data.length);
	}

	/**
	 * Scan for pattern @pattern with applied mask @mask in the byte reader data,
	 * starting from offset @offset relative to the current position.
	 *
	 * The bytes in @pattern and @mask are interpreted left-to-right, regardless
	 * of endianness.  All four bytes of the pattern must be present in the
	 * byte reader data for it to match, even if the first or last bytes are masked
	 * out.
	 *
	 * It is an error to call this function without making sure that there is
	 * enough data (offset+size bytes) in the byte reader.
	 *
	 * Params:
	 *     mask = mask to apply to data before matching against @pattern
	 *     pattern = pattern to match (after mask is applied)
	 *     offset = offset from which to start scanning, relative to the current
	 *         position
	 *     size = number of bytes to scan from offset
	 *
	 * Returns: offset of the first match, or -1 if no match was found.
	 *
	 *     Example:
	 *     |[
	 *     // Assume the reader contains 0x00 0x01 0x02 ... 0xfe 0xff
	 *
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffffffff, 0x00010203, 0, 256);
	 *     // -> returns 0
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffffffff, 0x00010203, 1, 255);
	 *     // -> returns -1
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffffffff, 0x01020304, 1, 255);
	 *     // -> returns 1
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffff, 0x0001, 0, 256);
	 *     // -> returns -1
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffff, 0x0203, 0, 256);
	 *     // -> returns 0
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffff0000, 0x02030000, 0, 256);
	 *     // -> returns 2
	 *     gst_byte_reader_masked_scan_uint32 (reader, 0xffff0000, 0x02030000, 0, 4);
	 *     // -> returns -1
	 *     ]|
	 */
	public uint maskedScanUint32(uint mask, uint pattern, uint offset, uint size)
	{
		return gst_byte_reader_masked_scan_uint32(gstByteReader, mask, pattern, offset, size);
	}

	/**
	 * Scan for pattern @pattern with applied mask @mask in the byte reader data,
	 * starting from offset @offset relative to the current position.
	 *
	 * The bytes in @pattern and @mask are interpreted left-to-right, regardless
	 * of endianness.  All four bytes of the pattern must be present in the
	 * byte reader data for it to match, even if the first or last bytes are masked
	 * out.
	 *
	 * It is an error to call this function without making sure that there is
	 * enough data (offset+size bytes) in the byte reader.
	 *
	 * Params:
	 *     mask = mask to apply to data before matching against @pattern
	 *     pattern = pattern to match (after mask is applied)
	 *     offset = offset from which to start scanning, relative to the current
	 *         position
	 *     size = number of bytes to scan from offset
	 *     value = pointer to uint32 to return matching data
	 *
	 * Returns: offset of the first match, or -1 if no match was found.
	 *
	 * Since: 1.6
	 */
	public uint maskedScanUint32Peek(uint mask, uint pattern, uint offset, uint size, out uint value)
	{
		return gst_byte_reader_masked_scan_uint32_peek(gstByteReader, mask, pattern, offset, size, &value);
	}

	/**
	 * Returns a constant pointer to the current data
	 * position if at least @size bytes are left and
	 * keeps the current position.
	 *
	 * Params:
	 *     val = address of a
	 *         #guint8 pointer variable in which to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekData(out ubyte[] val)
	{
		ubyte* outval;

		auto __p = gst_byte_reader_peek_data(gstByteReader, cast(uint)val.length, &outval) != 0;

		val = outval[0 .. cast(uint)val.length];

		return __p;
	}

	/**
	 * Read a 32 bit big endian floating point value into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gfloat to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekFloat32Be(out float val)
	{
		return gst_byte_reader_peek_float32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 32 bit little endian floating point value into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gfloat to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekFloat32Le(out float val)
	{
		return gst_byte_reader_peek_float32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 64 bit big endian floating point value into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gdouble to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekFloat64Be(out double val)
	{
		return gst_byte_reader_peek_float64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a 64 bit little endian floating point value into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gdouble to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekFloat64Le(out double val)
	{
		return gst_byte_reader_peek_float64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 16 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt16Be(out short val)
	{
		return gst_byte_reader_peek_int16_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 16 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt16Le(out short val)
	{
		return gst_byte_reader_peek_int16_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 24 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt24Be(out int val)
	{
		return gst_byte_reader_peek_int24_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 24 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt24Le(out int val)
	{
		return gst_byte_reader_peek_int24_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 32 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt32Be(out int val)
	{
		return gst_byte_reader_peek_int32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 32 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt32Le(out int val)
	{
		return gst_byte_reader_peek_int32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 64 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt64Be(out long val)
	{
		return gst_byte_reader_peek_int64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 64 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt64Le(out long val)
	{
		return gst_byte_reader_peek_int64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read a signed 8 bit integer into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #gint8 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekInt8(out byte val)
	{
		return gst_byte_reader_peek_int8(gstByteReader, &val) != 0;
	}

	/**
	 * Returns a constant pointer to the current data position if there is
	 * a NUL-terminated string in the data (this could be just a NUL terminator).
	 * The current position will be maintained. This will work for any
	 * NUL-terminated string with a character width of 8 bits, so ASCII,
	 * UTF-8, ISO-8859-N etc.
	 *
	 * No input checking for valid UTF-8 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Params:
	 *     str = address of a
	 *         #gchar pointer variable in which to store the result
	 *
	 * Returns: %TRUE if a string could be skipped, %FALSE otherwise.
	 */
	public bool peekStringUtf8(out string str)
	{
		char* outstr = null;

		auto __p = gst_byte_reader_peek_string_utf8(gstByteReader, &outstr) != 0;

		str = Str.toString(outstr);

		return __p;
	}

	/**
	 * Initializes a #GstByteReader sub-reader instance to contain @size bytes of
	 * data from the current position of @reader. This is useful to read chunked
	 * formats and make sure that one doesn't read beyond the size of the sub-chunk.
	 *
	 * Unlike gst_byte_reader_get_sub_reader(), this function does not modify the
	 * current position of @reader.
	 *
	 * Params:
	 *     subReader = a #GstByteReader instance to initialize as sub-reader
	 *     size = size of @sub_reader in bytes
	 *
	 * Returns: FALSE on error or if @reader does not contain @size more bytes from
	 *     the current position, and otherwise TRUE
	 *
	 * Since: 1.6
	 */
	public bool peekSubReader(ByteReader subReader, uint size)
	{
		return gst_byte_reader_peek_sub_reader(gstByteReader, (subReader is null) ? null : subReader.getByteReaderStruct(), size) != 0;
	}

	/**
	 * Read an unsigned 16 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint16Be(out ushort val)
	{
		return gst_byte_reader_peek_uint16_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 16 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint16 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint16Le(out ushort val)
	{
		return gst_byte_reader_peek_uint16_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 24 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint24Be(out uint val)
	{
		return gst_byte_reader_peek_uint24_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 24 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint24Le(out uint val)
	{
		return gst_byte_reader_peek_uint24_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 32 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint32Be(out uint val)
	{
		return gst_byte_reader_peek_uint32_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 32 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint32 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint32Le(out uint val)
	{
		return gst_byte_reader_peek_uint32_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 64 bit big endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint64Be(out ulong val)
	{
		return gst_byte_reader_peek_uint64_be(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 64 bit little endian integer into @val
	 * but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint64 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint64Le(out ulong val)
	{
		return gst_byte_reader_peek_uint64_le(gstByteReader, &val) != 0;
	}

	/**
	 * Read an unsigned 8 bit integer into @val but keep the current position.
	 *
	 * Params:
	 *     val = Pointer to a #guint8 to store the result
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool peekUint8(out ubyte val)
	{
		return gst_byte_reader_peek_uint8(gstByteReader, &val) != 0;
	}

	/**
	 * Sets the new position of a #GstByteReader instance to @pos in bytes.
	 *
	 * Params:
	 *     pos = The new position in bytes
	 *
	 * Returns: %TRUE if the position could be set successfully, %FALSE
	 *     otherwise.
	 */
	public bool setPos(uint pos)
	{
		return gst_byte_reader_set_pos(gstByteReader, pos) != 0;
	}

	/**
	 * Skips @nbytes bytes of the #GstByteReader instance.
	 *
	 * Params:
	 *     nbytes = the number of bytes to skip
	 *
	 * Returns: %TRUE if @nbytes bytes could be skipped, %FALSE otherwise.
	 */
	public bool skip(uint nbytes)
	{
		return gst_byte_reader_skip(gstByteReader, nbytes) != 0;
	}

	/**
	 * Skips a NUL-terminated UTF-16 string in the #GstByteReader instance,
	 * advancing the current position to the byte after the string.
	 *
	 * No input checking for valid UTF-16 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Returns: %TRUE if a string could be skipped, %FALSE otherwise.
	 */
	public bool skipStringUtf16()
	{
		return gst_byte_reader_skip_string_utf16(gstByteReader) != 0;
	}

	/**
	 * Skips a NUL-terminated UTF-32 string in the #GstByteReader instance,
	 * advancing the current position to the byte after the string.
	 *
	 * No input checking for valid UTF-32 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Returns: %TRUE if a string could be skipped, %FALSE otherwise.
	 */
	public bool skipStringUtf32()
	{
		return gst_byte_reader_skip_string_utf32(gstByteReader) != 0;
	}

	/**
	 * Skips a NUL-terminated string in the #GstByteReader instance, advancing
	 * the current position to the byte after the string. This will work for
	 * any NUL-terminated string with a character width of 8 bits, so ASCII,
	 * UTF-8, ISO-8859-N etc. No input checking for valid UTF-8 is done.
	 *
	 * This function will fail if no NUL-terminator was found in in the data.
	 *
	 * Returns: %TRUE if a string could be skipped, %FALSE otherwise.
	 */
	public bool skipStringUtf8()
	{
		return gst_byte_reader_skip_string_utf8(gstByteReader) != 0;
	}

	/**
	 * Create a new #GstByteReader instance, which will read from @data.
	 *
	 * Free-function: gst_byte_reader_free
	 *
	 * Params:
	 *     data = data from which the
	 *         #GstByteReader should read
	 *
	 * Returns: a new #GstByteReader instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data)
	{
		auto __p = gst_byte_reader_new(data.ptr, cast(uint)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstByteReader*) __p);
	}
}
