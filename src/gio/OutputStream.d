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
 * inFile  = GOutputStream.html
 * outPack = gio
 * outFile = OutputStream
 * strct   = GOutputStream
 * realStrct=
 * ctorStrct=
 * clss    = OutputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- g_output_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Bytes
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GBytes* -> Bytes
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.OutputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.Bytes;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;



private import gobject.ObjectG;

/**
 * Description
 * GOutputStream has functions to write to a stream (g_output_stream_write()),
 * to close a stream (g_output_stream_close()) and to flush pending writes
 * (g_output_stream_flush()).
 * To copy the content of an input stream to an output stream without
 * manually handling the reads and writes, use g_output_stream_splice().
 * All of these functions have async variants too.
 */
public class OutputStream : ObjectG
{
	
	/** the main Gtk struct */
	protected GOutputStream* gOutputStream;
	
	
	public GOutputStream* getOutputStreamStruct()
	{
		return gOutputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gOutputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GOutputStream* gOutputStream)
	{
		super(cast(GObject*)gOutputStream);
		this.gOutputStream = gOutputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gOutputStream = cast(GOutputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Tries to write count bytes from buffer into the stream. Will block
	 * during the operation.
	 * If count is 0, returns 0 and does nothing. A value of count
	 * larger than G_MAXSSIZE will cause a G_IO_ERROR_INVALID_ARGUMENT error.
	 * On success, the number of bytes written to the stream is returned.
	 * It is not an error if this is not the same as the requested size, as it
	 * can happen e.g. on a partial I/O error, or if there is not enough
	 * storage in the stream. All writes block until at least one byte
	 * is written or an error occurs; 0 is never returned (unless
	 * count is 0).
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 * On error -1 is returned and error is set accordingly.
	 * Virtual: write_fn
	 * Params:
	 * buffer = the buffer containing the data to write. [array length=count][element-type guint8]
	 * count = the number of bytes to write
	 * cancellable = optional cancellable object. [allow-none]
	 * Returns: Number of bytes written, or -1 on error
	 * Throws: GException on failure.
	 */
	public gssize write(void* buffer, gsize count, Cancellable cancellable)
	{
		// gssize g_output_stream_write (GOutputStream *stream,  const void *buffer,  gsize count,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_write(gOutputStream, buffer, count, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to write count bytes from buffer into the stream. Will block
	 * during the operation.
	 * This function is similar to g_output_stream_write(), except it tries to
	 * write as many bytes as requested, only stopping on an error.
	 * On a successful write of count bytes, TRUE is returned, and bytes_written
	 * is set to count.
	 * If there is an error during the operation FALSE is returned and error
	 * is set to indicate the error status, bytes_written is updated to contain
	 * the number of bytes written into the stream before the error occurred.
	 * Params:
	 * buffer = the buffer containing the data to write. [array length=count][element-type guint8]
	 * count = the number of bytes to write
	 * bytesWritten = location to store the number of bytes that was
	 * written to the stream. [out]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE on success, FALSE if there was an error
	 * Throws: GException on failure.
	 */
	public int writeAll(void* buffer, gsize count, gsize* bytesWritten, Cancellable cancellable)
	{
		// gboolean g_output_stream_write_all (GOutputStream *stream,  const void *buffer,  gsize count,  gsize *bytes_written,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_write_all(gOutputStream, buffer, count, bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Splices an input stream into an output stream.
	 * Params:
	 * source = a GInputStream.
	 * flags = a set of GOutputStreamSpliceFlags.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a gssize containing the size of the data spliced, or -1 if an error occurred. Note that if the number of bytes spliced is greater than G_MAXSSIZE, then that will be returned, and there is no way to determine the actual number of bytes spliced.
	 * Throws: GException on failure.
	 */
	public gssize splice(InputStream source, GOutputStreamSpliceFlags flags, Cancellable cancellable)
	{
		// gssize g_output_stream_splice (GOutputStream *stream,  GInputStream *source,  GOutputStreamSpliceFlags flags,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_splice(gOutputStream, (source is null) ? null : source.getInputStreamStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Forces a write of all user-space buffered data for the given
	 * stream. Will block during the operation. Closing the stream will
	 * implicitly cause a flush.
	 * This function is optional for inherited classes.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Params:
	 * cancellable = optional cancellable object. [allow-none]
	 * Returns: TRUE on success, FALSE on error
	 * Throws: GException on failure.
	 */
	public int flush(Cancellable cancellable)
	{
		// gboolean g_output_stream_flush (GOutputStream *stream,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_flush(gOutputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Closes the stream, releasing resources related to it.
	 * Once the stream is closed, all other operations will return G_IO_ERROR_CLOSED.
	 * Closing a stream multiple times will not return an error.
	 * Closing a stream will automatically flush any outstanding buffers in the
	 * stream.
	 * Streams will be automatically closed when the last reference
	 * is dropped, but you might want to call this function to make sure
	 * resources are released as early as possible.
	 * Some streams might keep the backing store of the stream (e.g. a file descriptor)
	 * open after the stream is closed. See the documentation for the individual
	 * stream for details.
	 * On failure the first error that happened will be reported, but the close
	 * operation will finish as much as possible. A stream that failed to
	 * close will still return G_IO_ERROR_CLOSED for all operations. Still, it
	 * is important to check and report the error to the user, otherwise
	 * there might be a loss of data as all data might not be written.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Cancelling a close will still leave the stream closed, but there some streams
	 * can use a faster close that doesn't block to e.g. check errors. On
	 * cancellation (as with any error) there is no guarantee that all written
	 * data will reach the target.
	 * Params:
	 * cancellable = optional cancellable object. [allow-none]
	 * Returns: TRUE on success, FALSE on failure
	 * Throws: GException on failure.
	 */
	public int close(Cancellable cancellable)
	{
		// gboolean g_output_stream_close (GOutputStream *stream,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_close(gOutputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Request an asynchronous write of count bytes from buffer into
	 * the stream. When the operation is finished callback will be called.
	 * You can then call g_output_stream_write_finish() to get the result of the
	 * operation.
	 * During an async request no other sync and async calls are allowed,
	 * and will result in G_IO_ERROR_PENDING errors.
	 * A value of count larger than G_MAXSSIZE will cause a
	 * G_IO_ERROR_INVALID_ARGUMENT error.
	 * On success, the number of bytes written will be passed to the
	 * callback. It is not an error if this is not the same as the
	 * requested size, as it can happen e.g. on a partial I/O error,
	 * but generally we try to write as many bytes as requested.
	 * You are guaranteed that this method will never fail with
	 * G_IO_ERROR_WOULD_BLOCK - if stream can't accept more data, the
	 * method will just wait until this changes.
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is G_PRIORITY_DEFAULT.
	 * The asyncronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_write().
	 * Params:
	 * buffer = the buffer containing the data to write. [array length=count][element-type guint8]
	 * count = the number of bytes to write
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = callback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void writeAsync(void* buffer, gsize count, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_output_stream_write_async (GOutputStream *stream,  const void *buffer,  gsize count,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_output_stream_write_async(gOutputStream, buffer, count, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes a stream write operation.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a gssize containing the number of bytes written to the stream.
	 * Throws: GException on failure.
	 */
	public gssize writeFinish(AsyncResultIF result)
	{
		// gssize g_output_stream_write_finish (GOutputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_write_finish(gOutputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Splices a stream asynchronously.
	 * When the operation is finished callback will be called.
	 * You can then call g_output_stream_splice_finish() to get the
	 * result of the operation.
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_splice().
	 * Params:
	 * source = a GInputStream.
	 * flags = a set of GOutputStreamSpliceFlags.
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data passed to callback. [closure]
	 */
	public void spliceAsync(InputStream source, GOutputStreamSpliceFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_output_stream_splice_async (GOutputStream *stream,  GInputStream *source,  GOutputStreamSpliceFlags flags,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_output_stream_splice_async(gOutputStream, (source is null) ? null : source.getInputStreamStruct(), flags, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an asynchronous stream splice operation.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a gssize of the number of bytes spliced. Note that if the number of bytes spliced is greater than G_MAXSSIZE, then that will be returned, and there is no way to determine the actual number of bytes spliced.
	 * Throws: GException on failure.
	 */
	public gssize spliceFinish(AsyncResultIF result)
	{
		// gssize g_output_stream_splice_finish (GOutputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_splice_finish(gOutputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Forces an asynchronous write of all user-space buffered data for
	 * the given stream.
	 * For behaviour details see g_output_stream_flush().
	 * When the operation is finished callback will be
	 * called. You can then call g_output_stream_flush_finish() to get the
	 * result of the operation.
	 * Params:
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void flushAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_output_stream_flush_async (GOutputStream *stream,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_output_stream_flush_async(gOutputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes flushing an output stream.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if flush operation succeeded, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int flushFinish(AsyncResultIF result)
	{
		// gboolean g_output_stream_flush_finish (GOutputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_flush_finish(gOutputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Requests an asynchronous close of the stream, releasing resources
	 * related to it. When the operation is finished callback will be
	 * called. You can then call g_output_stream_close_finish() to get
	 * the result of the operation.
	 * For behaviour details see g_output_stream_close().
	 * The asyncronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 * Params:
	 * ioPriority = the io priority of the request.
	 * cancellable = optional cancellable object. [allow-none]
	 * callback = callback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_output_stream_close_async (GOutputStream *stream,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_output_stream_close_async(gOutputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Closes an output stream.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE if stream was successfully closed, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int closeFinish(AsyncResultIF result)
	{
		// gboolean g_output_stream_close_finish (GOutputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_close_finish(gOutputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if an output stream is being closed. This can be
	 * used inside e.g. a flush implementation to see if the
	 * flush (or other i/o operation) is called from within
	 * the closing operation.
	 * Since 2.24
	 * Returns: TRUE if stream is being closed. FALSE otherwise.
	 */
	public int isClosing()
	{
		// gboolean g_output_stream_is_closing (GOutputStream *stream);
		return g_output_stream_is_closing(gOutputStream);
	}
	
	/**
	 * Checks if an output stream has already been closed.
	 * Returns: TRUE if stream is closed. FALSE otherwise.
	 */
	public int isClosed()
	{
		// gboolean g_output_stream_is_closed (GOutputStream *stream);
		return g_output_stream_is_closed(gOutputStream);
	}
	
	/**
	 * Checks if an ouput stream has pending actions.
	 * Returns: TRUE if stream has pending actions.
	 */
	public int hasPending()
	{
		// gboolean g_output_stream_has_pending (GOutputStream *stream);
		return g_output_stream_has_pending(gOutputStream);
	}
	
	/**
	 * Sets stream to have actions pending. If the pending flag is
	 * already set or stream is closed, it will return FALSE and set
	 * error.
	 * Returns: TRUE if pending was previously unset and is now set.
	 * Throws: GException on failure.
	 */
	public int setPending()
	{
		// gboolean g_output_stream_set_pending (GOutputStream *stream,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_set_pending(gOutputStream, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Clears the pending flag on stream.
	 */
	public void clearPending()
	{
		// void g_output_stream_clear_pending (GOutputStream *stream);
		g_output_stream_clear_pending(gOutputStream);
	}
	
	/**
	 * Tries to write the data from bytes into the stream. Will block
	 * during the operation.
	 * If bytes is 0-length, returns 0 and does nothing. A GBytes larger
	 * than G_MAXSSIZE will cause a G_IO_ERROR_INVALID_ARGUMENT error.
	 * On success, the number of bytes written to the stream is returned.
	 * It is not an error if this is not the same as the requested size, as it
	 * can happen e.g. on a partial I/O error, or if there is not enough
	 * storage in the stream. All writes block until at least one byte
	 * is written or an error occurs; 0 is never returned (unless
	 * the size of bytes is 0).
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 * On error -1 is returned and error is set accordingly.
	 * Params:
	 * bytes = the GBytes to write
	 * cancellable = optional cancellable object. [allow-none]
	 * Returns: Number of bytes written, or -1 on error
	 * Throws: GException on failure.
	 */
	public gssize writeBytes(Bytes bytes, Cancellable cancellable)
	{
		// gssize g_output_stream_write_bytes (GOutputStream *stream,  GBytes *bytes,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_write_bytes(gOutputStream, (bytes is null) ? null : bytes.getBytesStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Request an asynchronous write of the data in bytes to the stream.
	 * When the operation is finished callback will be called. You can
	 * then call g_output_stream_write_bytes_finish() to get the result of
	 * the operation.
	 * During an async request no other sync and async calls are allowed,
	 * and will result in G_IO_ERROR_PENDING errors.
	 * A GBytes larger than G_MAXSSIZE will cause a
	 * G_IO_ERROR_INVALID_ARGUMENT error.
	 * On success, the number of bytes written will be passed to the
	 * callback. It is not an error if this is not the same as the
	 * requested size, as it can happen e.g. on a partial I/O error,
	 * but generally we try to write as many bytes as requested.
	 * You are guaranteed that this method will never fail with
	 * G_IO_ERROR_WOULD_BLOCK - if stream can't accept more data, the
	 * method will just wait until this changes.
	 * Any outstanding I/O request with higher priority (lower numerical
	 * value) will be executed before an outstanding request with lower
	 * priority. Default priority is G_PRIORITY_DEFAULT.
	 * For the synchronous, blocking version of this function, see
	 * g_output_stream_write_bytes().
	 * Params:
	 * bytes = The bytes to write
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = callback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void writeBytesAsync(Bytes bytes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_output_stream_write_bytes_async (GOutputStream *stream,  GBytes *bytes,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_output_stream_write_bytes_async(gOutputStream, (bytes is null) ? null : bytes.getBytesStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes a stream write-from-GBytes operation.
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a gssize containing the number of bytes written to the stream.
	 * Throws: GException on failure.
	 */
	public gssize writeBytesFinish(AsyncResultIF result)
	{
		// gssize g_output_stream_write_bytes_finish (GOutputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_output_stream_write_bytes_finish(gOutputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
