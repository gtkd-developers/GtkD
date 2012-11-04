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
 * inFile  = GSeekable.html
 * outPack = gio
 * outFile = SeekableT
 * strct   = GSeekable
 * realStrct=
 * ctorStrct=
 * clss    = SeekableT
 * interf  = SeekableIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_seekable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Cancellable
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SeekableT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.ErrorG;
public import glib.GException;
public import gio.Cancellable;




/**
 * Description
 * GSeekable is implemented by streams (implementations of
 * GInputStream or GOutputStream) that support seeking.
 */
public template SeekableT(TStruct)
{
	
	/** the main Gtk struct */
	protected GSeekable* gSeekable;
	
	
	public GSeekable* getSeekableTStruct()
	{
		return cast(GSeekable*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Tells the current position within the stream.
	 * Returns: the offset from the beginning of the buffer.
	 */
	public long tell()
	{
		// goffset g_seekable_tell (GSeekable *seekable);
		return g_seekable_tell(getSeekableTStruct());
	}
	
	/**
	 * Tests if the stream supports the GSeekableIface.
	 * Returns: TRUE if seekable can be seeked. FALSE otherwise.
	 */
	public int canSeek()
	{
		// gboolean g_seekable_can_seek (GSeekable *seekable);
		return g_seekable_can_seek(getSeekableTStruct());
	}
	
	/**
	 * Seeks in the stream by the given offset, modified by type.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Params:
	 * offset = a goffset.
	 * type = a GSeekType.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if successful. If an error has occurred, this function will return FALSE and set error appropriately if present.
	 * Throws: GException on failure.
	 */
	public int seek(long offset, GSeekType type, Cancellable cancellable)
	{
		// gboolean g_seekable_seek (GSeekable *seekable,  goffset offset,  GSeekType type,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_seekable_seek(getSeekableTStruct(), offset, type, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tests if the stream can be truncated.
	 * Returns: TRUE if the stream can be truncated, FALSE otherwise.
	 */
	public int canTruncate()
	{
		// gboolean g_seekable_can_truncate (GSeekable *seekable);
		return g_seekable_can_truncate(getSeekableTStruct());
	}
	
	/**
	 * Truncates a stream with a given offset.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 * Virtual: truncate_fn
	 * Params:
	 * offset = a goffset.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if successful. If an error has occurred, this function will return FALSE and set error appropriately if present.
	 * Throws: GException on failure.
	 */
	public int truncate(long offset, Cancellable cancellable)
	{
		// gboolean g_seekable_truncate (GSeekable *seekable,  goffset offset,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_seekable_truncate(getSeekableTStruct(), offset, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
