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


module gio.OutputStream;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GOutputStream has functions to write to a stream (g_output_stream_write()),
 * to close a stream (g_output_stream_close()) and to flush pending writes
 * (g_output_stream_flush()).
 * 
 * To copy the content of an input stream to an output stream without
 * manually handling the reads and writes, use g_output_stream_splice().
 * 
 * See the documentation for #GIOStream for details of thread safety of
 * streaming APIs.
 * 
 * All of these functions have async variants too.
 */
public class OutputStream : ObjectG
{
	/** the main Gtk struct */
	protected GOutputStream* gOutputStream;

	/** Get the main Gtk struct */
	public GOutputStream* getOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GOutputStream* gOutputStream, bool ownedRef = false)
	{
		this.gOutputStream = gOutputStream;
		super(cast(GObject*)gOutputStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_output_stream_get_type();
	}

	/**
	 * Clears the pending flag on @stream.
	 */
	public void clearPending()
	{
		g_output_stream_clear_pending(gOutputStream);
	}

	/**
	 * Closes the stream, releasing resources related to it.
	 *
	 * Once the stream is closed, all other operations will return %G_IO_ERROR_CLOSED.
	 * Closing a stream multiple times will not return an error.
	 *
	 * Closing a stream will automatically flush any outstanding buffers in the
	 * stream.
	 *
	 * Streams will be automatically closed when the last reference
	 * is dropped, but you might want to call this function to make sure
	 * resources are released as early as possible.
	 *
	 * Some streams might keep the backing store of the stream (e.g. a file descriptor)
	 * open after the stream is closed. See the documentation for the individual
	 * stream for details.
	 *
	 * On failure the first error that happened will be reported, but the close
	 * operation will finish as much as possible. A stream that failed to
	 * close will still return %G_IO_ERROR_CLOSED for all operations. Still, it
	 * is important to check and report the error to the user, otherwise
	 * there might be a loss of data as all data might not be written.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 * Cancelling a close will still leave the stream closed, but there some streams
	 * can use a faster close that doesn't block to e.g. check errors. On
	 * cancellation (as with any error) there is no guarantee that all written
	 * data will reach the target.
	 *
	 * Params:
	 *     cancellable = optional cancellable object
	 *
	 * Returns: %TRUE on success, %FALSE on failure
	 *
	 * Throws: GException on failure.
	 */
	public bool close(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_close(gOutputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Requests an asynchronous close of the stream, releasing resources
	 * related to it. When the operation is finished @callback will be
	 * called. You can then call g_output_stream_close_finish() to get
	 * the result of the operation.
	 *
	 * For behaviour details see g_output_stream_close().
	 *
	 * The asynchronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 *
	 * Params:
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional cancellable object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_close_async(gOutputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Closes an output stream.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if stream was successfully closed, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool closeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_output_stream_close_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Forces a write of all user-space buffered data for the given
	 * @stream. Will block during the operation. Closing the stream will
	 * implicitly cause a flush.
	 *
	 * This function is optional for inherited classes.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional cancellable object
	 *
	 * Returns: %TRUE on success, %FALSE on error
	 *
	 * Throws: GException on failure.
	 */
	public bool flush(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_flush(gOutputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Forces an asynchronous write of all user-space buffered data for
	 * the given @stream.
	 * For behaviour details see g_output_stream_flush().
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_output_stream_flush_finish() to get the
	 * result of the operation.
	 *
	 * Params:
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void flushAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_flush_async(gOutputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes flushing an output stream.
	 *
	 * Params:
	 *     result = a GAsyncResult.
	 *
	 * Returns: %TRUE if flush operation succeeded, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool flushFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_output_stream_flush_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks if an output stream has pending actions.
	 *
	 * Returns: %TRUE if @stream has pending actions.
	 */
	public bool hasPending()
	{
		return g_output_stream_has_pending(gOutputStream) != 0;
	}

	/**
	 * Checks if an output stream has already been closed.
	 *
	 * Returns: %TRUE if @stream is closed. %FALSE otherwise.
	 */
	public bool isClosed()
	{
		return g_output_stream_is_closed(gOutputStream) != 0;
	}

	/**
	 * Checks if an output stream is being closed. This can be
	 * used inside e.g. a flush implementation to see if the
	 * flush (or other i/o operation) is called from within
	 * the closing operation.
	 *
	 * Returns: %TRUE if @stream is being closed. %FALSE otherwise.
	 *
	 * Since: 2.24
	 */
	public bool isClosing()
	{
		return g_output_stream_is_closing(gOutputStream) != 0;
	}

	/**
	 * Sets @stream to have actions pending. If the pending flag is
	 * already set or @stream is closed, it will return %FALSE and set
	 * @error.
	 *
	 * Returns: %TRUE if pending was previously unset and is now set.
	 *
	 * Throws: GException on failure.
	 */
	public bool setPending()
	{
		GError* err = null;

		auto __p = g_output_stream_set_pending(gOutputStream, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Splices an input stream into an output stream.
	 *
	 * Params:
	 *     source = a #GInputStream.
	 *     flags = a set of #GOutputStreamSpliceFlags.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #gssize containing the size of the data spliced, or
	 *     -1 if an error occurred. Note that if the number of bytes
	 *     spliced is greater than %G_MAXSSIZE, then that will be
	 *     returned, and there is no way to determine the actual number
	 *     of bytes spliced.
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t splice(InputStream source, GOutputStreamSpliceFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_splice(gOutputStream, (source is null) ? null : source.getInputStreamStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Splices a stream asynchronously.
	 * When the operation is finished @callback will be called.
	 * You can then call g_output_stream_splice_finish() to get the
	 * result of the operation.
	 *
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_splice().
	 *
	 * Params:
	 *     source = a #GInputStream.
	 *     flags = a set of #GOutputStreamSpliceFlags.
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 */
	public void spliceAsync(InputStream source, GOutputStreamSpliceFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_splice_async(gOutputStream, (source is null) ? null : source.getInputStreamStruct(), flags, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous stream splice operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #gssize of the number of bytes spliced. Note that if the
	 *     number of bytes spliced is greater than %G_MAXSSIZE, then that
	 *     will be returned, and there is no way to determine the actual
	 *     number of bytes spliced.
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t spliceFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_output_stream_splice_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This is a utility function around g_output_stream_write_all(). It
	 * uses g_strdup_vprintf() to turn @format and @args into a string that
	 * is then written to @stream.
	 *
	 * See the documentation of g_output_stream_write_all() about the
	 * behavior of the actual write operation.
	 *
	 * Note that partial writes cannot be properly checked with this
	 * function due to the variable length of the written string, if you
	 * need precise control over partial write failures, you need to
	 * create you own printf()-like wrapper around g_output_stream_write()
	 * or g_output_stream_write_all().
	 *
	 * Params:
	 *     bytesWritten = location to store the number of bytes that was
	 *         written to the stream
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     error = location to store the error occurring, or %NULL to ignore
	 *     format = the format string. See the printf() documentation
	 *     args = the parameters to insert into the format string
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.40
	 */
	public bool vprintf(out size_t bytesWritten, Cancellable cancellable, out ErrorG error, string format, void* args)
	{
		GError* outerror = null;

		auto __p = g_output_stream_vprintf(gOutputStream, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &outerror, Str.toStringz(format), args) != 0;

		error = new ErrorG(outerror);

		return __p;
	}

	/**
	 * Tries to write @count bytes from @buffer into the stream. Will block
	 * during the operation.
	 *
	 * If count is 0, returns 0 and does nothing. A value of @count
	 * larger than %G_MAXSSIZE will cause a %G_IO_ERROR_INVALID_ARGUMENT error.
	 *
	 * On success, the number of bytes written to the stream is returned.
	 * It is not an error if this is not the same as the requested size, as it
	 * can happen e.g. on a partial I/O error, or if there is not enough
	 * storage in the stream. All writes block until at least one byte
	 * is written or an error occurs; 0 is never returned (unless
	 * @count is 0).
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 *
	 * On error -1 is returned and @error is set accordingly.
	 *
	 * Params:
	 *     buffer = the buffer containing the data to write.
	 *     cancellable = optional cancellable object
	 *
	 * Returns: Number of bytes written, or -1 on error
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t write(ubyte[] buffer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_write(gOutputStream, buffer.ptr, cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to write @count bytes from @buffer into the stream. Will block
	 * during the operation.
	 *
	 * This function is similar to g_output_stream_write(), except it tries to
	 * write as many bytes as requested, only stopping on an error.
	 *
	 * On a successful write of @count bytes, %TRUE is returned, and @bytes_written
	 * is set to @count.
	 *
	 * If there is an error during the operation %FALSE is returned and @error
	 * is set to indicate the error status.
	 *
	 * As a special exception to the normal conventions for functions that
	 * use #GError, if this function returns %FALSE (and sets @error) then
	 * @bytes_written will be set to the number of bytes that were
	 * successfully written before the error was encountered.  This
	 * functionality is only available from C.  If you need it from another
	 * language then you must write your own loop around
	 * g_output_stream_write().
	 *
	 * Params:
	 *     buffer = the buffer containing the data to write.
	 *     bytesWritten = location to store the number of bytes that was
	 *         written to the stream
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Throws: GException on failure.
	 */
	public bool writeAll(ubyte[] buffer, out size_t bytesWritten, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_write_all(gOutputStream, buffer.ptr, cast(size_t)buffer.length, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Request an asynchronous write of @count bytes from @buffer into
	 * the stream. When the operation is finished @callback will be called.
	 * You can then call g_output_stream_write_all_finish() to get the result of the
	 * operation.
	 *
	 * This is the asynchronous version of g_output_stream_write_all().
	 *
	 * Call g_output_stream_write_all_finish() to collect the result.
	 *
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is %G_PRIORITY_DEFAULT.
	 *
	 * Note that no copy of @buffer will be made, so it must stay valid
	 * until @callback is called.
	 *
	 * Params:
	 *     buffer = the buffer containing the data to write
	 *     ioPriority = the io priority of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.44
	 */
	public void writeAllAsync(ubyte[] buffer, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_write_all_async(gOutputStream, buffer.ptr, cast(size_t)buffer.length, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous stream write operation started with
	 * g_output_stream_write_all_async().
	 *
	 * As a special exception to the normal conventions for functions that
	 * use #GError, if this function returns %FALSE (and sets @error) then
	 * @bytes_written will be set to the number of bytes that were
	 * successfully written before the error was encountered.  This
	 * functionality is only available from C.  If you need it from another
	 * language then you must write your own loop around
	 * g_output_stream_write_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *     bytesWritten = location to store the number of bytes that was written to the stream
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.44
	 *
	 * Throws: GException on failure.
	 */
	public bool writeAllFinish(AsyncResultIF result, out size_t bytesWritten)
	{
		GError* err = null;

		auto __p = g_output_stream_write_all_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &bytesWritten, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Request an asynchronous write of @count bytes from @buffer into
	 * the stream. When the operation is finished @callback will be called.
	 * You can then call g_output_stream_write_finish() to get the result of the
	 * operation.
	 *
	 * During an async request no other sync and async calls are allowed,
	 * and will result in %G_IO_ERROR_PENDING errors.
	 *
	 * A value of @count larger than %G_MAXSSIZE will cause a
	 * %G_IO_ERROR_INVALID_ARGUMENT error.
	 *
	 * On success, the number of bytes written will be passed to the
	 * @callback. It is not an error if this is not the same as the
	 * requested size, as it can happen e.g. on a partial I/O error,
	 * but generally we try to write as many bytes as requested.
	 *
	 * You are guaranteed that this method will never fail with
	 * %G_IO_ERROR_WOULD_BLOCK - if @stream can't accept more data, the
	 * method will just wait until this changes.
	 *
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is %G_PRIORITY_DEFAULT.
	 *
	 * The asynchronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 *
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_write().
	 *
	 * Note that no copy of @buffer will be made, so it must stay valid
	 * until @callback is called. See g_output_stream_write_bytes_async()
	 * for a #GBytes version that will automatically hold a reference to
	 * the contents (without copying) for the duration of the call.
	 *
	 * Params:
	 *     buffer = the buffer containing the data to write.
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void writeAsync(ubyte[] buffer, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_write_async(gOutputStream, buffer.ptr, cast(size_t)buffer.length, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * A wrapper function for g_output_stream_write() which takes a
	 * #GBytes as input.  This can be more convenient for use by language
	 * bindings or in other cases where the refcounted nature of #GBytes
	 * is helpful over a bare pointer interface.
	 *
	 * However, note that this function may still perform partial writes,
	 * just like g_output_stream_write().  If that occurs, to continue
	 * writing, you will need to create a new #GBytes containing just the
	 * remaining bytes, using g_bytes_new_from_bytes(). Passing the same
	 * #GBytes instance multiple times potentially can result in duplicated
	 * data in the output stream.
	 *
	 * Params:
	 *     bytes = the #GBytes to write
	 *     cancellable = optional cancellable object
	 *
	 * Returns: Number of bytes written, or -1 on error
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t writeBytes(Bytes bytes, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_write_bytes(gOutputStream, (bytes is null) ? null : bytes.getBytesStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This function is similar to g_output_stream_write_async(), but
	 * takes a #GBytes as input.  Due to the refcounted nature of #GBytes,
	 * this allows the stream to avoid taking a copy of the data.
	 *
	 * However, note that this function may still perform partial writes,
	 * just like g_output_stream_write_async(). If that occurs, to continue
	 * writing, you will need to create a new #GBytes containing just the
	 * remaining bytes, using g_bytes_new_from_bytes(). Passing the same
	 * #GBytes instance multiple times potentially can result in duplicated
	 * data in the output stream.
	 *
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_write_bytes().
	 *
	 * Params:
	 *     bytes = The bytes to write
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void writeBytesAsync(Bytes bytes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_write_bytes_async(gOutputStream, (bytes is null) ? null : bytes.getBytesStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes a stream write-from-#GBytes operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #gssize containing the number of bytes written to the stream.
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t writeBytesFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_output_stream_write_bytes_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Finishes a stream write operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #gssize containing the number of bytes written to the stream.
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t writeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_output_stream_write_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to write the bytes contained in the @n_vectors @vectors into the
	 * stream. Will block during the operation.
	 *
	 * If @n_vectors is 0 or the sum of all bytes in @vectors is 0, returns 0 and
	 * does nothing.
	 *
	 * On success, the number of bytes written to the stream is returned.
	 * It is not an error if this is not the same as the requested size, as it
	 * can happen e.g. on a partial I/O error, or if there is not enough
	 * storage in the stream. All writes block until at least one byte
	 * is written or an error occurs; 0 is never returned (unless
	 * @n_vectors is 0 or the sum of all bytes in @vectors is 0).
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 *
	 * Some implementations of g_output_stream_writev() may have limitations on the
	 * aggregate buffer size, and will return %G_IO_ERROR_INVALID_ARGUMENT if these
	 * are exceeded. For example, when writing to a local file on UNIX platforms,
	 * the aggregate buffer size must not exceed %G_MAXSSIZE bytes.
	 *
	 * Params:
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     bytesWritten = location to store the number of bytes that were
	 *         written to the stream
	 *     cancellable = optional cancellable object
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public bool writev(GOutputVector[] vectors, out size_t bytesWritten, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_writev(gOutputStream, vectors.ptr, cast(size_t)vectors.length, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to write the bytes contained in the @n_vectors @vectors into the
	 * stream. Will block during the operation.
	 *
	 * This function is similar to g_output_stream_writev(), except it tries to
	 * write as many bytes as requested, only stopping on an error.
	 *
	 * On a successful write of all @n_vectors vectors, %TRUE is returned, and
	 * @bytes_written is set to the sum of all the sizes of @vectors.
	 *
	 * If there is an error during the operation %FALSE is returned and @error
	 * is set to indicate the error status.
	 *
	 * As a special exception to the normal conventions for functions that
	 * use #GError, if this function returns %FALSE (and sets @error) then
	 * @bytes_written will be set to the number of bytes that were
	 * successfully written before the error was encountered.  This
	 * functionality is only available from C. If you need it from another
	 * language then you must write your own loop around
	 * g_output_stream_write().
	 *
	 * The content of the individual elements of @vectors might be changed by this
	 * function.
	 *
	 * Params:
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     bytesWritten = location to store the number of bytes that were
	 *         written to the stream
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public bool writevAll(GOutputVector[] vectors, out size_t bytesWritten, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_output_stream_writev_all(gOutputStream, vectors.ptr, cast(size_t)vectors.length, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Request an asynchronous write of the bytes contained in the @n_vectors @vectors into
	 * the stream. When the operation is finished @callback will be called.
	 * You can then call g_output_stream_writev_all_finish() to get the result of the
	 * operation.
	 *
	 * This is the asynchronous version of g_output_stream_writev_all().
	 *
	 * Call g_output_stream_writev_all_finish() to collect the result.
	 *
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is %G_PRIORITY_DEFAULT.
	 *
	 * Note that no copy of @vectors will be made, so it must stay valid
	 * until @callback is called. The content of the individual elements
	 * of @vectors might be changed by this function.
	 *
	 * Params:
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     ioPriority = the I/O priority of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.60
	 */
	public void writevAllAsync(GOutputVector[] vectors, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_writev_all_async(gOutputStream, vectors.ptr, cast(size_t)vectors.length, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous stream write operation started with
	 * g_output_stream_writev_all_async().
	 *
	 * As a special exception to the normal conventions for functions that
	 * use #GError, if this function returns %FALSE (and sets @error) then
	 * @bytes_written will be set to the number of bytes that were
	 * successfully written before the error was encountered.  This
	 * functionality is only available from C.  If you need it from another
	 * language then you must write your own loop around
	 * g_output_stream_writev_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *     bytesWritten = location to store the number of bytes that were written to the stream
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public bool writevAllFinish(AsyncResultIF result, out size_t bytesWritten)
	{
		GError* err = null;

		auto __p = g_output_stream_writev_all_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &bytesWritten, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Request an asynchronous write of the bytes contained in @n_vectors @vectors into
	 * the stream. When the operation is finished @callback will be called.
	 * You can then call g_output_stream_writev_finish() to get the result of the
	 * operation.
	 *
	 * During an async request no other sync and async calls are allowed,
	 * and will result in %G_IO_ERROR_PENDING errors.
	 *
	 * On success, the number of bytes written will be passed to the
	 * @callback. It is not an error if this is not the same as the
	 * requested size, as it can happen e.g. on a partial I/O error,
	 * but generally we try to write as many bytes as requested.
	 *
	 * You are guaranteed that this method will never fail with
	 * %G_IO_ERROR_WOULD_BLOCK — if @stream can't accept more data, the
	 * method will just wait until this changes.
	 *
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is %G_PRIORITY_DEFAULT.
	 *
	 * The asynchronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 *
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_writev().
	 *
	 * Note that no copy of @vectors will be made, so it must stay valid
	 * until @callback is called.
	 *
	 * Params:
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     ioPriority = the I/O priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.60
	 */
	public void writevAsync(GOutputVector[] vectors, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_output_stream_writev_async(gOutputStream, vectors.ptr, cast(size_t)vectors.length, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes a stream writev operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *     bytesWritten = location to store the number of bytes that were written to the stream
	 *
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public bool writevFinish(AsyncResultIF result, out size_t bytesWritten)
	{
		GError* err = null;

		auto __p = g_output_stream_writev_finish(gOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &bytesWritten, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
