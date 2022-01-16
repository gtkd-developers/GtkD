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


module gio.IOStream;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import gio.OutputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * GIOStream represents an object that has both read and write streams.
 * Generally the two streams act as separate input and output streams,
 * but they share some common resources and state. For instance, for
 * seekable streams, both streams may use the same position.
 * 
 * Examples of #GIOStream objects are #GSocketConnection, which represents
 * a two-way network connection; and #GFileIOStream, which represents a
 * file handle opened in read-write mode.
 * 
 * To do the actual reading and writing you need to get the substreams
 * with g_io_stream_get_input_stream() and g_io_stream_get_output_stream().
 * 
 * The #GIOStream object owns the input and the output streams, not the other
 * way around, so keeping the substreams alive will not keep the #GIOStream
 * object alive. If the #GIOStream object is freed it will be closed, thus
 * closing the substreams, so even if the substreams stay alive they will
 * always return %G_IO_ERROR_CLOSED for all operations.
 * 
 * To close a stream use g_io_stream_close() which will close the common
 * stream object and also the individual substreams. You can also close
 * the substreams themselves. In most cases this only marks the
 * substream as closed, so further I/O on it fails but common state in the
 * #GIOStream may still be open. However, some streams may support
 * "half-closed" states where one direction of the stream is actually shut down.
 * 
 * Operations on #GIOStreams cannot be started while another operation on the
 * #GIOStream or its substreams is in progress. Specifically, an application can
 * read from the #GInputStream and write to the #GOutputStream simultaneously
 * (either in separate threads, or as asynchronous operations in the same
 * thread), but an application cannot start any #GIOStream operation while there
 * is a #GIOStream, #GInputStream or #GOutputStream operation in progress, and
 * an application can’t start any #GInputStream or #GOutputStream operation
 * while there is a #GIOStream operation in progress.
 * 
 * This is a product of individual stream operations being associated with a
 * given #GMainContext (the thread-default context at the time the operation was
 * started), rather than entire streams being associated with a single
 * #GMainContext.
 * 
 * GIO may run operations on #GIOStreams from other (worker) threads, and this
 * may be exposed to application code in the behaviour of wrapper streams, such
 * as #GBufferedInputStream or #GTlsConnection. With such wrapper APIs,
 * application code may only run operations on the base (wrapped) stream when
 * the wrapper stream is idle. Note that the semantics of such operations may
 * not be well-defined due to the state the wrapper stream leaves the base
 * stream in (though they are guaranteed not to crash).
 *
 * Since: 2.22
 */
public class IOStream : ObjectG
{
	/** the main Gtk struct */
	protected GIOStream* gIOStream;

	/** Get the main Gtk struct */
	public GIOStream* getIOStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIOStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIOStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOStream* gIOStream, bool ownedRef = false)
	{
		this.gIOStream = gIOStream;
		super(cast(GObject*)gIOStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_io_stream_get_type();
	}

	/**
	 * Finishes an asynchronous io stream splice operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 */
	public static bool spliceFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_io_stream_splice_finish((result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Clears the pending flag on @stream.
	 *
	 * Since: 2.22
	 */
	public void clearPending()
	{
		g_io_stream_clear_pending(gIOStream);
	}

	/**
	 * Closes the stream, releasing resources related to it. This will also
	 * close the individual input and output streams, if they are not already
	 * closed.
	 *
	 * Once the stream is closed, all other operations will return
	 * %G_IO_ERROR_CLOSED. Closing a stream multiple times will not
	 * return an error.
	 *
	 * Closing a stream will automatically flush any outstanding buffers
	 * in the stream.
	 *
	 * Streams will be automatically closed when the last reference
	 * is dropped, but you might want to call this function to make sure
	 * resources are released as early as possible.
	 *
	 * Some streams might keep the backing store of the stream (e.g. a file
	 * descriptor) open after the stream is closed. See the documentation for
	 * the individual stream for details.
	 *
	 * On failure the first error that happened will be reported, but the
	 * close operation will finish as much as possible. A stream that failed
	 * to close will still return %G_IO_ERROR_CLOSED for all operations.
	 * Still, it is important to check and report the error to the user,
	 * otherwise there might be a loss of data as all data might not be written.
	 *
	 * If @cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 * Cancelling a close will still leave the stream closed, but some streams
	 * can use a faster close that doesn't block to e.g. check errors.
	 *
	 * The default implementation of this method just calls close on the
	 * individual input/output streams.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Returns: %TRUE on success, %FALSE on failure
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool close(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_io_stream_close(gIOStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Requests an asynchronous close of the stream, releasing resources
	 * related to it. When the operation is finished @callback will be
	 * called. You can then call g_io_stream_close_finish() to get
	 * the result of the operation.
	 *
	 * For behaviour details see g_io_stream_close().
	 *
	 * The asynchronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 *
	 * Params:
	 *     ioPriority = the io priority of the request
	 *     cancellable = optional cancellable object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_io_stream_close_async(gIOStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Closes a stream.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if stream was successfully closed, %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool closeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_io_stream_close_finish(gIOStream, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the input stream for this object. This is used
	 * for reading.
	 *
	 * Returns: a #GInputStream, owned by the #GIOStream.
	 *     Do not free.
	 *
	 * Since: 2.22
	 */
	public InputStream getInputStream()
	{
		auto __p = g_io_stream_get_input_stream(gIOStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Gets the output stream for this object. This is used for
	 * writing.
	 *
	 * Returns: a #GOutputStream, owned by the #GIOStream.
	 *     Do not free.
	 *
	 * Since: 2.22
	 */
	public OutputStream getOutputStream()
	{
		auto __p = g_io_stream_get_output_stream(gIOStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GOutputStream*) __p);
	}

	/**
	 * Checks if a stream has pending actions.
	 *
	 * Returns: %TRUE if @stream has pending actions.
	 *
	 * Since: 2.22
	 */
	public bool hasPending()
	{
		return g_io_stream_has_pending(gIOStream) != 0;
	}

	/**
	 * Checks if a stream is closed.
	 *
	 * Returns: %TRUE if the stream is closed.
	 *
	 * Since: 2.22
	 */
	public bool isClosed()
	{
		return g_io_stream_is_closed(gIOStream) != 0;
	}

	/**
	 * Sets @stream to have actions pending. If the pending flag is
	 * already set or @stream is closed, it will return %FALSE and set
	 * @error.
	 *
	 * Returns: %TRUE if pending was previously unset and is now set.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool setPending()
	{
		GError* err = null;

		auto __p = g_io_stream_set_pending(gIOStream, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously splice the output stream of @stream1 to the input stream of
	 * @stream2, and splice the output stream of @stream2 to the input stream of
	 * @stream1.
	 *
	 * When the operation is finished @callback will be called.
	 * You can then call g_io_stream_splice_finish() to get the
	 * result of the operation.
	 *
	 * Params:
	 *     stream2 = a #GIOStream.
	 *     flags = a set of #GIOStreamSpliceFlags.
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 *
	 * Since: 2.28
	 */
	public void spliceAsync(IOStream stream2, GIOStreamSpliceFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_io_stream_splice_async(gIOStream, (stream2 is null) ? null : stream2.getIOStreamStruct(), flags, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
}
