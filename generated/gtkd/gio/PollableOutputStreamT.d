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


module gio.PollableOutputStreamT;

public  import gio.Cancellable;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Source;


/**
 * #GPollableOutputStream is implemented by #GOutputStreams that
 * can be polled for readiness to write. This can be used when
 * interfacing with a non-GIO API that expects
 * UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
 *
 * Since: 2.28
 */
public template PollableOutputStreamT(TStruct)
{
	/** Get the main Gtk struct */
	public GPollableOutputStream* getPollableOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GPollableOutputStream*)getStruct();
	}


	/**
	 * Checks if @stream is actually pollable. Some classes may implement
	 * #GPollableOutputStream but have only certain instances of that
	 * class be pollable. If this method returns %FALSE, then the behavior
	 * of other #GPollableOutputStream methods is undefined.
	 *
	 * For any given stream, the value returned by this method is constant;
	 * a stream cannot switch from pollable to non-pollable or vice versa.
	 *
	 * Returns: %TRUE if @stream is pollable, %FALSE if not.
	 *
	 * Since: 2.28
	 */
	public bool canPoll()
	{
		return g_pollable_output_stream_can_poll(getPollableOutputStreamStruct()) != 0;
	}

	/**
	 * Creates a #GSource that triggers when @stream can be written, or
	 * @cancellable is triggered or an error occurs. The callback on the
	 * source is of the #GPollableSourceFunc type.
	 *
	 * As with g_pollable_output_stream_is_writable(), it is possible that
	 * the stream may not actually be writable even after the source
	 * triggers, so you should use g_pollable_output_stream_write_nonblocking()
	 * rather than g_output_stream_write() from the callback.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #GSource
	 *
	 * Since: 2.28
	 */
	public Source createSource(Cancellable cancellable)
	{
		auto __p = g_pollable_output_stream_create_source(getPollableOutputStreamStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}

	/**
	 * Checks if @stream can be written.
	 *
	 * Note that some stream types may not be able to implement this 100%
	 * reliably, and it is possible that a call to g_output_stream_write()
	 * after this returns %TRUE would still block. To guarantee
	 * non-blocking behavior, you should always use
	 * g_pollable_output_stream_write_nonblocking(), which will return a
	 * %G_IO_ERROR_WOULD_BLOCK error rather than blocking.
	 *
	 * Returns: %TRUE if @stream is writable, %FALSE if not. If an error
	 *     has occurred on @stream, this will result in
	 *     g_pollable_output_stream_is_writable() returning %TRUE, and the
	 *     next attempt to write will return the error.
	 *
	 * Since: 2.28
	 */
	public bool isWritable()
	{
		return g_pollable_output_stream_is_writable(getPollableOutputStreamStruct()) != 0;
	}

	/**
	 * Attempts to write up to @count bytes from @buffer to @stream, as
	 * with g_output_stream_write(). If @stream is not currently writable,
	 * this will immediately return %G_IO_ERROR_WOULD_BLOCK, and you can
	 * use g_pollable_output_stream_create_source() to create a #GSource
	 * that will be triggered when @stream is writable.
	 *
	 * Note that since this method never blocks, you cannot actually
	 * use @cancellable to cancel it. However, it will return an error
	 * if @cancellable has already been cancelled when you call, which
	 * may happen if you call this method after a source triggers due
	 * to having been cancelled.
	 *
	 * Also note that if %G_IO_ERROR_WOULD_BLOCK is returned some underlying
	 * transports like D/TLS require that you re-send the same @buffer and
	 * @count in the next write call.
	 *
	 * Params:
	 *     buffer = a buffer to write
	 *         data from
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: the number of bytes written, or -1 on error (including
	 *     %G_IO_ERROR_WOULD_BLOCK).
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t writeNonblocking(ubyte[] buffer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_pollable_output_stream_write_nonblocking(getPollableOutputStreamStruct(), buffer.ptr, cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Attempts to write the bytes contained in the @n_vectors @vectors to @stream,
	 * as with g_output_stream_writev(). If @stream is not currently writable,
	 * this will immediately return %@G_POLLABLE_RETURN_WOULD_BLOCK, and you can
	 * use g_pollable_output_stream_create_source() to create a #GSource
	 * that will be triggered when @stream is writable. @error will *not* be
	 * set in that case.
	 *
	 * Note that since this method never blocks, you cannot actually
	 * use @cancellable to cancel it. However, it will return an error
	 * if @cancellable has already been cancelled when you call, which
	 * may happen if you call this method after a source triggers due
	 * to having been cancelled.
	 *
	 * Also note that if %G_POLLABLE_RETURN_WOULD_BLOCK is returned some underlying
	 * transports like D/TLS require that you re-send the same @vectors and
	 * @n_vectors in the next write call.
	 *
	 * Params:
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     bytesWritten = location to store the number of bytes that were
	 *         written to the stream
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %@G_POLLABLE_RETURN_OK on success, %G_POLLABLE_RETURN_WOULD_BLOCK
	 *     if the stream is not currently writable (and @error is *not* set), or
	 *     %G_POLLABLE_RETURN_FAILED if there was an error in which case @error will
	 *     be set.
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public GPollableReturn writevNonblocking(GOutputVector[] vectors, out size_t bytesWritten, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_pollable_output_stream_writev_nonblocking(getPollableOutputStreamStruct(), vectors.ptr, cast(size_t)vectors.length, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
