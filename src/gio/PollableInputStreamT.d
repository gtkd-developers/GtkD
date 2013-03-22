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
 * inFile  = GPollableInputStream.html
 * outPack = gio
 * outFile = PollableInputStreamT
 * strct   = GPollableInputStream
 * realStrct=
 * ctorStrct=
 * clss    = PollableInputStreamT
 * interf  = PollableInputStreamIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_pollable_input_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Source
 * 	- gio.Cancellable
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GObject* -> ObjectG
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.PollableInputStreamT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gobject.ObjectG;
public import glib.ErrorG;
public import glib.GException;
public import glib.Source;
public import gio.Cancellable;




/**
 * GPollableInputStream is implemented by GInputStreams that
 * can be polled for readiness to read. This can be used when
 * interfacing with a non-GIO API that expects
 * UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
 */
public template PollableInputStreamT(TStruct)
{
	
	/** the main Gtk struct */
	protected GPollableInputStream* gPollableInputStream;
	
	
	public GPollableInputStream* getPollableInputStreamTStruct()
	{
		return cast(GPollableInputStream*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Checks if stream is actually pollable. Some classes may implement
	 * GPollableInputStream but have only certain instances of that class
	 * be pollable. If this method returns FALSE, then the behavior of
	 * other GPollableInputStream methods is undefined.
	 * For any given stream, the value returned by this method is constant;
	 * a stream cannot switch from pollable to non-pollable or vice versa.
	 * Since 2.28
	 * Returns: TRUE if stream is pollable, FALSE if not.
	 */
	public int canPoll()
	{
		// gboolean g_pollable_input_stream_can_poll (GPollableInputStream *stream);
		return g_pollable_input_stream_can_poll(getPollableInputStreamTStruct());
	}
	
	/**
	 * Checks if stream can be read.
	 * Note that some stream types may not be able to implement this 100%
	 * reliably, and it is possible that a call to g_input_stream_read()
	 * after this returns TRUE would still block. To guarantee
	 * non-blocking behavior, you should always use
	 * g_pollable_input_stream_read_nonblocking(), which will return a
	 * G_IO_ERROR_WOULD_BLOCK error rather than blocking.
	 * Since 2.28
	 * Returns: TRUE if stream is readable, FALSE if not. If an error has occurred on stream, this will result in g_pollable_input_stream_is_readable() returning TRUE, and the next attempt to read will return the error.
	 */
	public int isReadable()
	{
		// gboolean g_pollable_input_stream_is_readable (GPollableInputStream *stream);
		return g_pollable_input_stream_is_readable(getPollableInputStreamTStruct());
	}
	
	/**
	 * Creates a GSource that triggers when stream can be read, or
	 * cancellable is triggered or an error occurs. The callback on the
	 * source is of the GPollableSourceFunc type.
	 * As with g_pollable_input_stream_is_readable(), it is possible that
	 * the stream may not actually be readable even after the source
	 * triggers, so you should use g_pollable_input_stream_read_nonblocking()
	 * rather than g_input_stream_read() from the callback.
	 * Since 2.28
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a new GSource. [transfer full]
	 */
	public Source createSource(Cancellable cancellable)
	{
		// GSource * g_pollable_input_stream_create_source  (GPollableInputStream *stream,  GCancellable *cancellable);
		auto p = g_pollable_input_stream_create_source(getPollableInputStreamTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Source)(cast(GSource*) p);
	}
	
	/**
	 * Attempts to read up to count bytes from stream into buffer, as
	 * with g_input_stream_read(). If stream is not currently readable,
	 * this will immediately return G_IO_ERROR_WOULD_BLOCK, and you can
	 * use g_pollable_input_stream_create_source() to create a GSource
	 * that will be triggered when stream is readable.
	 * Note that since this method never blocks, you cannot actually
	 * use cancellable to cancel it. However, it will return an error
	 * if cancellable has already been cancelled when you call, which
	 * may happen if you call this method after a source triggers due
	 * to having been cancelled.
	 * Virtual: read_nonblocking
	 * Params:
	 * buffer = a buffer to read data into (which should be at least count
	 * bytes long).
	 * count = the number of bytes you want to read
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: the number of bytes read, or -1 on error (including G_IO_ERROR_WOULD_BLOCK).
	 * Throws: GException on failure.
	 */
	public gssize readNonblocking(void[] buffer, gsize count, Cancellable cancellable)
	{
		// gssize g_pollable_input_stream_read_nonblocking  (GPollableInputStream *stream,  void *buffer,  gsize count,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_pollable_input_stream_read_nonblocking(getPollableInputStreamTStruct(), buffer.ptr, count, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
