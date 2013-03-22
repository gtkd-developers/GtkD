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
 * inFile  = GPollableOutputStream.html
 * outPack = gio
 * outFile = PollableOutputStreamIF
 * strct   = GPollableOutputStream
 * realStrct=
 * ctorStrct=
 * clss    = PollableOutputStreamT
 * interf  = PollableOutputStreamIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_pollable_input_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Source
 * 	- gio.Cancellable
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.PollableOutputStreamIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import gio.Cancellable;




/**
 * GPollableOutputStream is implemented by GOutputStreams that
 * can be polled for readiness to write. This can be used when
 * interfacing with a non-GIO API that expects
 * UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
 */
public interface PollableOutputStreamIF
{
	
	
	public GPollableOutputStream* getPollableOutputStreamTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Checks if stream is actually pollable. Some classes may implement
	 * GPollableOutputStream but have only certain instances of that
	 * class be pollable. If this method returns FALSE, then the behavior
	 * of other GPollableOutputStream methods is undefined.
	 * For any given stream, the value returned by this method is constant;
	 * a stream cannot switch from pollable to non-pollable or vice versa.
	 * Since 2.28
	 * Returns: TRUE if stream is pollable, FALSE if not.
	 */
	public int gPollableOutputStreamCanPoll();
	
	/**
	 * Checks if stream can be written.
	 * Note that some stream types may not be able to implement this 100%
	 * reliably, and it is possible that a call to g_output_stream_write()
	 * after this returns TRUE would still block. To guarantee
	 * non-blocking behavior, you should always use
	 * g_pollable_output_stream_write_nonblocking(), which will return a
	 * G_IO_ERROR_WOULD_BLOCK error rather than blocking.
	 * Since 2.28
	 * Returns: TRUE if stream is writable, FALSE if not. If an error has occurred on stream, this will result in g_pollable_output_stream_is_writable() returning TRUE, and the next attempt to write will return the error.
	 */
	public int gPollableOutputStreamIsWritable();
	
	/**
	 * Creates a GSource that triggers when stream can be written, or
	 * cancellable is triggered or an error occurs. The callback on the
	 * source is of the GPollableSourceFunc type.
	 * As with g_pollable_output_stream_is_writable(), it is possible that
	 * the stream may not actually be writable even after the source
	 * triggers, so you should use g_pollable_output_stream_write_nonblocking()
	 * rather than g_output_stream_write() from the callback.
	 * Since 2.28
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a new GSource. [transfer full]
	 */
	public Source gPollableOutputStreamCreateSource(Cancellable cancellable);
	
	/**
	 * Attempts to write up to count bytes from buffer to stream, as
	 * with g_output_stream_write(). If stream is not currently writable,
	 * this will immediately return G_IO_ERROR_WOULD_BLOCK, and you can
	 * use g_pollable_output_stream_create_source() to create a GSource
	 * that will be triggered when stream is writable.
	 * Note that since this method never blocks, you cannot actually
	 * use cancellable to cancel it. However, it will return an error
	 * if cancellable has already been cancelled when you call, which
	 * may happen if you call this method after a source triggers due
	 * to having been cancelled.
	 * Virtual: write_nonblocking
	 * Params:
	 * buffer = a buffer to write
	 * data from. [array length=count][element-type guint8]
	 * count = the number of bytes you want to write
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: the number of bytes written, or -1 on error (including G_IO_ERROR_WOULD_BLOCK).
	 * Throws: GException on failure.
	 */
	public gssize gPollableOutputStreamWriteNonblocking(void[] buffer, gsize count, Cancellable cancellable);
}
