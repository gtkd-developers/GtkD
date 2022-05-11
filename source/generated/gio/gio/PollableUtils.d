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


module gio.PollableUtils;

private import gio.Cancellable;
private import gio.InputStream;
private import gio.OutputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import gobject.ObjectG;


/** */

/**
 * Utility method for #GPollableInputStream and #GPollableOutputStream
 * implementations. Creates a new #GSource that expects a callback of
 * type #GPollableSourceFunc. The new source does not actually do
 * anything on its own; use g_source_add_child_source() to add other
 * sources to it to cause it to trigger.
 *
 * Params:
 *     pollableStream = the stream associated with the new source
 *
 * Returns: the new #GSource.
 *
 * Since: 2.28
 */
public Source pollableSourceNew(ObjectG pollableStream)
{
	auto __p = g_pollable_source_new((pollableStream is null) ? null : pollableStream.getObjectGStruct());

	if(__p is null)
	{
		return null;
	}

	return new Source(cast(GSource*) __p, true);
}

/**
 * Utility method for #GPollableInputStream and #GPollableOutputStream
 * implementations. Creates a new #GSource, as with
 * g_pollable_source_new(), but also attaching @child_source (with a
 * dummy callback), and @cancellable, if they are non-%NULL.
 *
 * Params:
 *     pollableStream = the stream associated with the
 *         new source
 *     childSource = optional child source to attach
 *     cancellable = optional #GCancellable to attach
 *
 * Returns: the new #GSource.
 *
 * Since: 2.34
 */
public Source pollableSourceNewFull(ObjectG pollableStream, Source childSource, Cancellable cancellable)
{
	auto __p = g_pollable_source_new_full((pollableStream is null) ? null : pollableStream.getObjectGStruct(), (childSource is null) ? null : childSource.getSourceStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());

	if(__p is null)
	{
		return null;
	}

	return new Source(cast(GSource*) __p, true);
}

/**
 * Tries to read from @stream, as with g_input_stream_read() (if
 * @blocking is %TRUE) or g_pollable_input_stream_read_nonblocking()
 * (if @blocking is %FALSE). This can be used to more easily share
 * code between blocking and non-blocking implementations of a method.
 *
 * If @blocking is %FALSE, then @stream must be a
 * #GPollableInputStream for which g_pollable_input_stream_can_poll()
 * returns %TRUE, or else the behavior is undefined. If @blocking is
 * %TRUE, then @stream does not need to be a #GPollableInputStream.
 *
 * Params:
 *     stream = a #GInputStream
 *     buffer = a buffer to
 *         read data into
 *     blocking = whether to do blocking I/O
 *     cancellable = optional #GCancellable object, %NULL to ignore.
 *
 * Returns: the number of bytes read, or -1 on error.
 *
 * Since: 2.34
 *
 * Throws: GException on failure.
 */
public ptrdiff_t pollableStreamRead(InputStream stream, ubyte[] buffer, bool blocking, Cancellable cancellable)
{
	GError* err = null;

	auto __p = g_pollable_stream_read((stream is null) ? null : stream.getInputStreamStruct(), buffer.ptr, cast(size_t)buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return __p;
}

/**
 * Tries to write to @stream, as with g_output_stream_write() (if
 * @blocking is %TRUE) or g_pollable_output_stream_write_nonblocking()
 * (if @blocking is %FALSE). This can be used to more easily share
 * code between blocking and non-blocking implementations of a method.
 *
 * If @blocking is %FALSE, then @stream must be a
 * #GPollableOutputStream for which
 * g_pollable_output_stream_can_poll() returns %TRUE or else the
 * behavior is undefined. If @blocking is %TRUE, then @stream does not
 * need to be a #GPollableOutputStream.
 *
 * Params:
 *     stream = a #GOutputStream.
 *     buffer = the buffer
 *         containing the data to write.
 *     blocking = whether to do blocking I/O
 *     cancellable = optional #GCancellable object, %NULL to ignore.
 *
 * Returns: the number of bytes written, or -1 on error.
 *
 * Since: 2.34
 *
 * Throws: GException on failure.
 */
public ptrdiff_t pollableStreamWrite(OutputStream stream, ubyte[] buffer, bool blocking, Cancellable cancellable)
{
	GError* err = null;

	auto __p = g_pollable_stream_write((stream is null) ? null : stream.getOutputStreamStruct(), buffer.ptr, cast(size_t)buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return __p;
}

/**
 * Tries to write @count bytes to @stream, as with
 * g_output_stream_write_all(), but using g_pollable_stream_write()
 * rather than g_output_stream_write().
 *
 * On a successful write of @count bytes, %TRUE is returned, and
 * @bytes_written is set to @count.
 *
 * If there is an error during the operation (including
 * %G_IO_ERROR_WOULD_BLOCK in the non-blocking case), %FALSE is
 * returned and @error is set to indicate the error status,
 * @bytes_written is updated to contain the number of bytes written
 * into the stream before the error occurred.
 *
 * As with g_pollable_stream_write(), if @blocking is %FALSE, then
 * @stream must be a #GPollableOutputStream for which
 * g_pollable_output_stream_can_poll() returns %TRUE or else the
 * behavior is undefined. If @blocking is %TRUE, then @stream does not
 * need to be a #GPollableOutputStream.
 *
 * Params:
 *     stream = a #GOutputStream.
 *     buffer = the buffer
 *         containing the data to write.
 *     blocking = whether to do blocking I/O
 *     bytesWritten = location to store the number of bytes that was
 *         written to the stream
 *     cancellable = optional #GCancellable object, %NULL to ignore.
 *
 * Returns: %TRUE on success, %FALSE if there was an error
 *
 * Since: 2.34
 *
 * Throws: GException on failure.
 */
public bool pollableStreamWriteAll(OutputStream stream, ubyte[] buffer, bool blocking, out size_t bytesWritten, Cancellable cancellable)
{
	GError* err = null;

	auto __p = g_pollable_stream_write_all((stream is null) ? null : stream.getOutputStreamStruct(), buffer.ptr, cast(size_t)buffer.length, blocking, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return __p;
}
