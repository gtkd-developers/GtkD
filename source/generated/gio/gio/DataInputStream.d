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


module gio.DataInputStream;

private import gio.AsyncResultIF;
private import gio.BufferedInputStream;
private import gio.Cancellable;
private import gio.InputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Data input stream implements #GInputStream and includes functions for
 * reading structured data directly from a binary input stream.
 */
public class DataInputStream : BufferedInputStream
{
	/** the main Gtk struct */
	protected GDataInputStream* gDataInputStream;

	/** Get the main Gtk struct */
	public GDataInputStream* getDataInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDataInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDataInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDataInputStream* gDataInputStream, bool ownedRef = false)
	{
		this.gDataInputStream = gDataInputStream;
		super(cast(GBufferedInputStream*)gDataInputStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_data_input_stream_get_type();
	}

	/**
	 * Creates a new data input stream for the @base_stream.
	 *
	 * Params:
	 *     baseStream = a #GInputStream.
	 *
	 * Returns: a new #GDataInputStream.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InputStream baseStream)
	{
		auto __p = g_data_input_stream_new((baseStream is null) ? null : baseStream.getInputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDataInputStream*) __p, true);
	}

	/**
	 * Gets the byte order for the data input stream.
	 *
	 * Returns: the @stream's current #GDataStreamByteOrder.
	 */
	public GDataStreamByteOrder getByteOrder()
	{
		return g_data_input_stream_get_byte_order(gDataInputStream);
	}

	/**
	 * Gets the current newline type for the @stream.
	 *
	 * Returns: #GDataStreamNewlineType for the given @stream.
	 */
	public GDataStreamNewlineType getNewlineType()
	{
		return g_data_input_stream_get_newline_type(gDataInputStream);
	}

	/**
	 * Reads a 16-bit/2-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order() and g_data_input_stream_set_byte_order().
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a signed 16-bit/2-byte value read from @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public short readInt16(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_int16(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads a signed 32-bit/4-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order() and g_data_input_stream_set_byte_order().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a signed 32-bit/4-byte value read from the @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public int readInt32(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_int32(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads a 64-bit/8-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order() and g_data_input_stream_set_byte_order().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a signed 64-bit/8-byte value read from @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public long readInt64(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_int64(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads a line from the data input stream.  Note that no encoding
	 * checks or conversion is performed; the input is not guaranteed to
	 * be UTF-8, and may in fact have embedded NUL characters.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     length = a #gsize to get the length of the data read in.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a NUL terminated byte array with the line that was read in
	 *     (without the newlines).  Set @length to a #gsize to get the length
	 *     of the read line.  On an error, it will return %NULL and @error
	 *     will be set. If there's no content to read, it will still return
	 *     %NULL, but @error won't be set.
	 *
	 * Throws: GException on failure.
	 */
	public string readLine(out size_t length, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_line(gDataInputStream, &length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * The asynchronous version of g_data_input_stream_read_line().  It is
	 * an error to have two outstanding calls to this function.
	 *
	 * When the operation is finished, @callback will be called. You
	 * can then call g_data_input_stream_read_line_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied.
	 *     userData = the data to pass to callback function.
	 *
	 * Since: 2.20
	 */
	public void readLineAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_data_input_stream_read_line_async(gDataInputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous call started by
	 * g_data_input_stream_read_line_async().  Note the warning about
	 * string encoding in g_data_input_stream_read_line() applies here as
	 * well.
	 *
	 * Params:
	 *     result = the #GAsyncResult that was provided to the callback.
	 *     length = a #gsize to get the length of the data read in.
	 *
	 * Returns: a NUL-terminated byte array with the line that was read in
	 *     (without the newlines).  Set @length to a #gsize to get the length
	 *     of the read line.  On an error, it will return %NULL and @error
	 *     will be set. If there's no content to read, it will still return
	 *     %NULL, but @error won't be set.
	 *
	 * Since: 2.20
	 *
	 * Throws: GException on failure.
	 */
	public string readLineFinish(AsyncResultIF result, out size_t length)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_line_finish(gDataInputStream, (result is null) ? null : result.getAsyncResultStruct(), &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Finish an asynchronous call started by
	 * g_data_input_stream_read_line_async().
	 *
	 * Params:
	 *     result = the #GAsyncResult that was provided to the callback.
	 *     length = a #gsize to get the length of the data read in.
	 *
	 * Returns: a string with the line that
	 *     was read in (without the newlines).  Set @length to a #gsize to
	 *     get the length of the read line.  On an error, it will return
	 *     %NULL and @error will be set. For UTF-8 conversion errors, the set
	 *     error domain is %G_CONVERT_ERROR.  If there's no content to read,
	 *     it will still return %NULL, but @error won't be set.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public string readLineFinishUtf8(AsyncResultIF result, out size_t length)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_line_finish_utf8(gDataInputStream, (result is null) ? null : result.getAsyncResultStruct(), &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Reads a UTF-8 encoded line from the data input stream.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     length = a #gsize to get the length of the data read in.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a NUL terminated UTF-8 string
	 *     with the line that was read in (without the newlines).  Set
	 *     @length to a #gsize to get the length of the read line.  On an
	 *     error, it will return %NULL and @error will be set.  For UTF-8
	 *     conversion errors, the set error domain is %G_CONVERT_ERROR.  If
	 *     there's no content to read, it will still return %NULL, but @error
	 *     won't be set.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public string readLineUtf8(out size_t length, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_line_utf8(gDataInputStream, &length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Reads an unsigned 16-bit/2-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order() and g_data_input_stream_set_byte_order().
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: an unsigned 16-bit/2-byte value read from the @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public ushort readUint16(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_uint16(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads an unsigned 32-bit/4-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order() and g_data_input_stream_set_byte_order().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: an unsigned 32-bit/4-byte value read from the @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public uint readUint32(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_uint32(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads an unsigned 64-bit/8-byte value from @stream.
	 *
	 * In order to get the correct byte order for this read operation,
	 * see g_data_input_stream_get_byte_order().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: an unsigned 64-bit/8-byte read from @stream or `0` if
	 *     an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public ulong readUint64(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_input_stream_read_uint64(gDataInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads a string from the data input stream, up to the first
	 * occurrence of any of the stop characters.
	 *
	 * Note that, in contrast to g_data_input_stream_read_until_async(),
	 * this function consumes the stop character that it finds.
	 *
	 * Don't use this function in new code.  Its functionality is
	 * inconsistent with g_data_input_stream_read_until_async().  Both
	 * functions will be marked as deprecated in a future release.  Use
	 * g_data_input_stream_read_upto() instead, but note that that function
	 * does not consume the stop character.
	 *
	 * Deprecated: Use g_data_input_stream_read_upto() instead, which has more
	 * consistent behaviour regarding the stop character.
	 *
	 * Params:
	 *     stopChars = characters to terminate the read.
	 *     length = a #gsize to get the length of the data read in.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a string with the data that was read
	 *     before encountering any of the stop characters. Set @length to
	 *     a #gsize to get the length of the string. This function will
	 *     return %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public string readUntil(string stopChars, out size_t length, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_until(gDataInputStream, Str.toStringz(stopChars), &length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * The asynchronous version of g_data_input_stream_read_until().
	 * It is an error to have two outstanding calls to this function.
	 *
	 * Note that, in contrast to g_data_input_stream_read_until(),
	 * this function does not consume the stop character that it finds.  You
	 * must read it for yourself.
	 *
	 * When the operation is finished, @callback will be called. You
	 * can then call g_data_input_stream_read_until_finish() to get
	 * the result of the operation.
	 *
	 * Don't use this function in new code.  Its functionality is
	 * inconsistent with g_data_input_stream_read_until().  Both functions
	 * will be marked as deprecated in a future release.  Use
	 * g_data_input_stream_read_upto_async() instead.
	 *
	 * Deprecated: Use g_data_input_stream_read_upto_async() instead, which
	 * has more consistent behaviour regarding the stop character.
	 *
	 * Params:
	 *     stopChars = characters to terminate the read.
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied.
	 *     userData = the data to pass to callback function.
	 *
	 * Since: 2.20
	 */
	public void readUntilAsync(string stopChars, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_data_input_stream_read_until_async(gDataInputStream, Str.toStringz(stopChars), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous call started by
	 * g_data_input_stream_read_until_async().
	 *
	 * Deprecated: Use g_data_input_stream_read_upto_finish() instead, which
	 * has more consistent behaviour regarding the stop character.
	 *
	 * Params:
	 *     result = the #GAsyncResult that was provided to the callback.
	 *     length = a #gsize to get the length of the data read in.
	 *
	 * Returns: a string with the data that was read
	 *     before encountering any of the stop characters. Set @length to
	 *     a #gsize to get the length of the string. This function will
	 *     return %NULL on an error.
	 *
	 * Since: 2.20
	 *
	 * Throws: GException on failure.
	 */
	public string readUntilFinish(AsyncResultIF result, out size_t length)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_until_finish(gDataInputStream, (result is null) ? null : result.getAsyncResultStruct(), &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Reads a string from the data input stream, up to the first
	 * occurrence of any of the stop characters.
	 *
	 * In contrast to g_data_input_stream_read_until(), this function
	 * does not consume the stop character. You have to use
	 * g_data_input_stream_read_byte() to get it before calling
	 * g_data_input_stream_read_upto() again.
	 *
	 * Note that @stop_chars may contain '\0' if @stop_chars_len is
	 * specified.
	 *
	 * The returned string will always be nul-terminated on success.
	 *
	 * Params:
	 *     stopChars = characters to terminate the read
	 *     stopCharsLen = length of @stop_chars. May be -1 if @stop_chars is
	 *         nul-terminated
	 *     length = a #gsize to get the length of the data read in
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Returns: a string with the data that was read
	 *     before encountering any of the stop characters. Set @length to
	 *     a #gsize to get the length of the string. This function will
	 *     return %NULL on an error
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public string readUpto(string stopChars, ptrdiff_t stopCharsLen, out size_t length, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_upto(gDataInputStream, Str.toStringz(stopChars), stopCharsLen, &length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * The asynchronous version of g_data_input_stream_read_upto().
	 * It is an error to have two outstanding calls to this function.
	 *
	 * In contrast to g_data_input_stream_read_until(), this function
	 * does not consume the stop character. You have to use
	 * g_data_input_stream_read_byte() to get it before calling
	 * g_data_input_stream_read_upto() again.
	 *
	 * Note that @stop_chars may contain '\0' if @stop_chars_len is
	 * specified.
	 *
	 * When the operation is finished, @callback will be called. You
	 * can then call g_data_input_stream_read_upto_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     stopChars = characters to terminate the read
	 *     stopCharsLen = length of @stop_chars. May be -1 if @stop_chars is
	 *         nul-terminated
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.26
	 */
	public void readUptoAsync(string stopChars, ptrdiff_t stopCharsLen, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_data_input_stream_read_upto_async(gDataInputStream, Str.toStringz(stopChars), stopCharsLen, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous call started by
	 * g_data_input_stream_read_upto_async().
	 *
	 * Note that this function does not consume the stop character. You
	 * have to use g_data_input_stream_read_byte() to get it before calling
	 * g_data_input_stream_read_upto_async() again.
	 *
	 * The returned string will always be nul-terminated on success.
	 *
	 * Params:
	 *     result = the #GAsyncResult that was provided to the callback
	 *     length = a #gsize to get the length of the data read in
	 *
	 * Returns: a string with the data that was read
	 *     before encountering any of the stop characters. Set @length to
	 *     a #gsize to get the length of the string. This function will
	 *     return %NULL on an error.
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public string readUptoFinish(AsyncResultIF result, out size_t length)
	{
		GError* err = null;

		auto retStr = g_data_input_stream_read_upto_finish(gDataInputStream, (result is null) ? null : result.getAsyncResultStruct(), &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function sets the byte order for the given @stream. All subsequent
	 * reads from the @stream will be read in the given @order.
	 *
	 * Params:
	 *     order = a #GDataStreamByteOrder to set.
	 */
	public void setByteOrder(GDataStreamByteOrder order)
	{
		g_data_input_stream_set_byte_order(gDataInputStream, order);
	}

	/**
	 * Sets the newline type for the @stream.
	 *
	 * Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
	 * chunk ends in "CR" we must read an additional byte to know if this is "CR" or
	 * "CR LF", and this might block if there is no more data available.
	 *
	 * Params:
	 *     type = the type of new line return as #GDataStreamNewlineType.
	 */
	public void setNewlineType(GDataStreamNewlineType type)
	{
		g_data_input_stream_set_newline_type(gDataInputStream, type);
	}
}
