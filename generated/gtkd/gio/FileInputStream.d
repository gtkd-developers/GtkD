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


module gio.FileInputStream;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileInfo;
private import gio.InputStream;
private import gio.SeekableIF;
private import gio.SeekableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * GFileInputStream provides input streams that take their
 * content from a file.
 * 
 * GFileInputStream implements #GSeekable, which allows the input
 * stream to jump to arbitrary positions in the file, provided the
 * filesystem of the file allows it. To find the position of a file
 * input stream, use g_seekable_tell(). To find out if a file input
 * stream supports seeking, use g_seekable_can_seek().
 * To position a file input stream, use g_seekable_seek().
 */
public class FileInputStream : InputStream, SeekableIF
{
	/** the main Gtk struct */
	protected GFileInputStream* gFileInputStream;

	/** Get the main Gtk struct */
	public GFileInputStream* getFileInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFileInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFileInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFileInputStream* gFileInputStream, bool ownedRef = false)
	{
		this.gFileInputStream = gFileInputStream;
		super(cast(GInputStream*)gFileInputStream, ownedRef);
	}

	// add the Seekable capabilities
	mixin SeekableT!(GFileInputStream);


	/** */
	public static GType getType()
	{
		return g_file_input_stream_get_type();
	}

	/**
	 * Queries a file input stream the given @attributes. This function blocks
	 * while querying the stream. For the asynchronous (non-blocking) version
	 * of this function, see g_file_input_stream_query_info_async(). While the
	 * stream is blocked, the stream will set the pending flag internally, and
	 * any other operations on the stream will fail with %G_IO_ERROR_PENDING.
	 *
	 * Params:
	 *     attributes = a file attribute query string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GFileInfo, or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfo(string attributes, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_file_input_stream_query_info(gFileInputStream, Str.toStringz(attributes), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

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
	 * Queries the stream information asynchronously.
	 * When the operation is finished @callback will be called.
	 * You can then call g_file_input_stream_query_info_finish()
	 * to get the result of the operation.
	 *
	 * For the synchronous version of this function,
	 * see g_file_input_stream_query_info().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be set
	 *
	 * Params:
	 *     attributes = a file attribute query string.
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void queryInfoAsync(string attributes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_file_input_stream_query_info_async(gFileInputStream, Str.toStringz(attributes), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous info query operation.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: #GFileInfo.
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfoFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_file_input_stream_query_info_finish(gFileInputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
