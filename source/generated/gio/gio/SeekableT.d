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


module gio.SeekableT;

public  import gio.Cancellable;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;


/**
 * #GSeekable is implemented by streams (implementations of
 * #GInputStream or #GOutputStream) that support seeking.
 * 
 * Seekable streams largely fall into two categories: resizable and
 * fixed-size.
 * 
 * #GSeekable on fixed-sized streams is approximately the same as POSIX
 * lseek() on a block device (for example: attempting to seek past the
 * end of the device is an error).  Fixed streams typically cannot be
 * truncated.
 * 
 * #GSeekable on resizable streams is approximately the same as POSIX
 * lseek() on a normal file.  Seeking past the end and writing data will
 * usually cause the stream to resize by introducing zero bytes.
 */
public template SeekableT(TStruct)
{
	/** Get the main Gtk struct */
	public GSeekable* getSeekableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GSeekable*)getStruct();
	}


	/**
	 * Tests if the stream supports the #GSeekableIface.
	 *
	 * Returns: %TRUE if @seekable can be seeked. %FALSE otherwise.
	 */
	public bool canSeek()
	{
		return g_seekable_can_seek(getSeekableStruct()) != 0;
	}

	/**
	 * Tests if the length of the stream can be adjusted with
	 * g_seekable_truncate().
	 *
	 * Returns: %TRUE if the stream can be truncated, %FALSE otherwise.
	 */
	public bool canTruncate()
	{
		return g_seekable_can_truncate(getSeekableStruct()) != 0;
	}

	/**
	 * Seeks in the stream by the given @offset, modified by @type.
	 *
	 * Attempting to seek past the end of the stream will have different
	 * results depending on if the stream is fixed-sized or resizable.  If
	 * the stream is resizable then seeking past the end and then writing
	 * will result in zeros filling the empty space.  Seeking past the end
	 * of a resizable stream and reading will result in EOF.  Seeking past
	 * the end of a fixed-sized stream will fail.
	 *
	 * Any operation that would result in a negative offset will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     offset = a #goffset.
	 *     type = a #GSeekType.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if successful. If an error
	 *     has occurred, this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	public bool seek(long offset, GSeekType type, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_seekable_seek(getSeekableStruct(), offset, type, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tells the current position within the stream.
	 *
	 * Returns: the (positive or zero) offset from the beginning of the
	 *     buffer, zero if the target is not seekable.
	 */
	public long tell()
	{
		return g_seekable_tell(getSeekableStruct());
	}

	/**
	 * Sets the length of the stream to @offset. If the stream was previously
	 * larger than @offset, the extra data is discarded. If the stream was
	 * previously shorter than @offset, it is extended with NUL ('\0') bytes.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 *
	 * Params:
	 *     offset = new length for @seekable, in bytes.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if successful. If an error
	 *     has occurred, this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	public bool truncate(long offset, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_seekable_truncate(getSeekableStruct(), offset, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
