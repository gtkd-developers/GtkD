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


module gio.FileOutputStream;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileInfo;
private import gio.OutputStream;
private import gio.SeekableIF;
private import gio.SeekableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * GFileOutputStream provides output streams that write their
 * content to a file.
 * 
 * GFileOutputStream implements #GSeekable, which allows the output
 * stream to jump to arbitrary positions in the file and to truncate
 * the file, provided the filesystem of the file supports these
 * operations.
 * 
 * To find the position of a file output stream, use g_seekable_tell().
 * To find out if a file output stream supports seeking, use
 * g_seekable_can_seek().To position a file output stream, use
 * g_seekable_seek(). To find out if a file output stream supports
 * truncating, use g_seekable_can_truncate(). To truncate a file output
 * stream, use g_seekable_truncate().
 */
public class FileOutputStream : OutputStream, SeekableIF
{
	/** the main Gtk struct */
	protected GFileOutputStream* gFileOutputStream;

	/** Get the main Gtk struct */
	public GFileOutputStream* getFileOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFileOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFileOutputStream* gFileOutputStream, bool ownedRef = false)
	{
		this.gFileOutputStream = gFileOutputStream;
		super(cast(GOutputStream*)gFileOutputStream, ownedRef);
	}

	// add the Seekable capabilities
	mixin SeekableT!(GFileOutputStream);


	/** */
	public static GType getType()
	{
		return g_file_output_stream_get_type();
	}

	/**
	 * Gets the entity tag for the file when it has been written.
	 * This must be called after the stream has been written
	 * and closed, as the etag can change while writing.
	 *
	 * Returns: the entity tag for the stream.
	 */
	public string getEtag()
	{
		auto retStr = g_file_output_stream_get_etag(gFileOutputStream);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Queries a file output stream for the given @attributes.
	 * This function blocks while querying the stream. For the asynchronous
	 * version of this function, see g_file_output_stream_query_info_async().
	 * While the stream is blocked, the stream will set the pending flag
	 * internally, and any other operations on the stream will fail with
	 * %G_IO_ERROR_PENDING.
	 *
	 * Can fail if the stream was already closed (with @error being set to
	 * %G_IO_ERROR_CLOSED), the stream has pending operations (with @error being
	 * set to %G_IO_ERROR_PENDING), or if querying info is not supported for
	 * the stream's interface (with @error being set to %G_IO_ERROR_NOT_SUPPORTED). In
	 * all cases of failure, %NULL will be returned.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be set, and %NULL will
	 * be returned.
	 *
	 * Params:
	 *     attributes = a file attribute query string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GFileInfo for the @stream, or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfo(string attributes, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_file_output_stream_query_info(gFileOutputStream, Str.toStringz(attributes), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) __p, true);
	}

	/**
	 * Asynchronously queries the @stream for a #GFileInfo. When completed,
	 * @callback will be called with a #GAsyncResult which can be used to
	 * finish the operation with g_file_output_stream_query_info_finish().
	 *
	 * For the synchronous version of this function, see
	 * g_file_output_stream_query_info().
	 *
	 * Params:
	 *     attributes = a file attribute query string.
	 *     ioPriority = the [I/O priority][gio-GIOScheduler] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void queryInfoAsync(string attributes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_file_output_stream_query_info_async(gFileOutputStream, Str.toStringz(attributes), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finalizes the asynchronous query started
	 * by g_file_output_stream_query_info_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: A #GFileInfo for the finished query.
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfoFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_file_output_stream_query_info_finish(gFileOutputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileInfo)(cast(GFileInfo*) __p, true);
	}
}
