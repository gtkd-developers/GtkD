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
 * inFile  = GIOStream.html
 * outPack = gio
 * outFile = IOStream
 * strct   = GIOStream
 * realStrct=
 * ctorStrct=
 * clss    = IOStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_io_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * 	- gio.OutputStream
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GIOStream* -> IOStream
 * 	- GInputStream* -> InputStream
 * 	- GOutputStream* -> OutputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.IOStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import gio.OutputStream;



private import gobject.ObjectG;

/**
 * Description
 * GIOStream represents an object that has both read and write streams.
 * Generally the two streams acts as separate input and output streams,
 * but they share some common resources and state. For instance, for
 * seekable streams they may use the same position in both streams.
 * Examples of GIOStream objects are GSocketConnection which represents
 * a two-way network connection, and GFileIOStream which represent a
 * file handle opened in read-write mode.
 * To do the actual reading and writing you need to get the substreams
 * with g_io_stream_get_input_stream() and g_io_stream_get_output_stream().
 * The GIOStream object owns the input and the output streams, not the other
 * way around, so keeping the substreams alive will not keep the GIOStream
 * object alive. If the GIOStream object is freed it will be closed, thus
 * closing the substream, so even if the substreams stay alive they will
 * always just return a G_IO_ERROR_CLOSED for all operations.
 * To close a stream use g_io_stream_close() which will close the common
 * stream object and also the individual substreams. You can also close
 * the substreams themselves. In most cases this only marks the
 * substream as closed, so further I/O on it fails. However, some streams
 * may support "half-closed" states where one direction of the stream
 * is actually shut down.
 */
public class IOStream : ObjectG
{
	
	/** the main Gtk struct */
	protected GIOStream* gIOStream;
	
	
	public GIOStream* getIOStreamStruct()
	{
		return gIOStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIOStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GIOStream* gIOStream)
	{
		super(cast(GObject*)gIOStream);
		this.gIOStream = gIOStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gIOStream = cast(GIOStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the input stream for this object. This is used
	 * for reading.
	 * Since 2.22
	 * Returns: a GInputStream, owned by the GIOStream. Do not free. [transfer none]
	 */
	public InputStream getInputStream()
	{
		// GInputStream * g_io_stream_get_input_stream (GIOStream *stream);
		auto p = g_io_stream_get_input_stream(gIOStream);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}
	
	/**
	 * Gets the output stream for this object. This is used for
	 * writing.
	 * Since 2.22
	 * Returns: a GOutputStream, owned by the GIOStream. Do not free. [transfer none]
	 */
	public OutputStream getOutputStream()
	{
		// GOutputStream * g_io_stream_get_output_stream (GIOStream *stream);
		auto p = g_io_stream_get_output_stream(gIOStream);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(OutputStream)(cast(GOutputStream*) p);
	}
	
	/**
	 * Asyncronously splice the output stream of stream1 to the input stream of
	 * stream2, and splice the output stream of stream2 to the input stream of
	 * stream1.
	 * When the operation is finished callback will be called.
	 * You can then call g_io_stream_splice_finish() to get the
	 * result of the operation.
	 * Since 2.28
	 * Params:
	 * stream2 = a GIOStream.
	 * flags = a set of GIOStreamSpliceFlags.
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data passed to callback. [closure]
	 */
	public void spliceAsync(IOStream stream2, GIOStreamSpliceFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_io_stream_splice_async (GIOStream *stream1,  GIOStream *stream2,  GIOStreamSpliceFlags flags,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_io_stream_splice_async(gIOStream, (stream2 is null) ? null : stream2.getIOStreamStruct(), flags, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an asynchronous io stream splice operation.
	 * Since 2.28
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE on success, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public static int spliceFinish(AsyncResultIF result)
	{
		// gboolean g_io_stream_splice_finish (GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_io_stream_splice_finish((result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Closes the stream, releasing resources related to it. This will also
	 * closes the individual input and output streams, if they are not already
	 * closed.
	 * Once the stream is closed, all other operations will return
	 * G_IO_ERROR_CLOSED. Closing a stream multiple times will not
	 * return an error.
	 * Closing a stream will automatically flush any outstanding buffers
	 * in the stream.
	 * Streams will be automatically closed when the last reference
	 * is dropped, but you might want to call this function to make sure
	 * resources are released as early as possible.
	 * Some streams might keep the backing store of the stream (e.g. a file
	 * descriptor) open after the stream is closed. See the documentation for
	 * the individual stream for details.
	 * On failure the first error that happened will be reported, but the
	 * close operation will finish as much as possible. A stream that failed
	 * to close will still return G_IO_ERROR_CLOSED for all operations.
	 * Still, it is important to check and report the error to the user,
	 * otherwise there might be a loss of data as all data might not be written.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Cancelling a close will still leave the stream closed, but some streams
	 * can use a faster close that doesn't block to e.g. check errors.
	 * The default implementation of this method just calls close on the
	 * individual input/output streams.
	 * Since 2.22
	 * Params:
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE on success, FALSE on failure
	 * Throws: GException on failure.
	 */
	public int close(Cancellable cancellable)
	{
		// gboolean g_io_stream_close (GIOStream *stream,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_io_stream_close(gIOStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Requests an asynchronous close of the stream, releasing resources
	 * related to it. When the operation is finished callback will be
	 * called. You can then call g_io_stream_close_finish() to get
	 * the result of the operation.
	 * For behaviour details see g_io_stream_close().
	 * The asynchronous methods have a default fallback that uses threads
	 * to implement asynchronicity, so they are optional for inheriting
	 * classes. However, if you override one you must override all.
	 * Since 2.22
	 * Params:
	 * ioPriority = the io priority of the request
	 * cancellable = optional cancellable object. [allow-none]
	 * callback = callback to call when the request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_io_stream_close_async (GIOStream *stream,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_io_stream_close_async(gIOStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Closes a stream.
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult
	 * Returns: TRUE if stream was successfully closed, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int closeFinish(AsyncResultIF result)
	{
		// gboolean g_io_stream_close_finish (GIOStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_io_stream_close_finish(gIOStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if a stream is closed.
	 * Since 2.22
	 * Returns: TRUE if the stream is closed.
	 */
	public int isClosed()
	{
		// gboolean g_io_stream_is_closed (GIOStream *stream);
		return g_io_stream_is_closed(gIOStream);
	}
	
	/**
	 * Checks if a stream has pending actions.
	 * Since 2.22
	 * Returns: TRUE if stream has pending actions.
	 */
	public int hasPending()
	{
		// gboolean g_io_stream_has_pending (GIOStream *stream);
		return g_io_stream_has_pending(gIOStream);
	}
	
	/**
	 * Sets stream to have actions pending. If the pending flag is
	 * already set or stream is closed, it will return FALSE and set
	 * error.
	 * Since 2.22
	 * Returns: TRUE if pending was previously unset and is now set.
	 * Throws: GException on failure.
	 */
	public int setPending()
	{
		// gboolean g_io_stream_set_pending (GIOStream *stream,  GError **error);
		GError* err = null;
		
		auto p = g_io_stream_set_pending(gIOStream, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Clears the pending flag on stream.
	 * Since 2.22
	 */
	public void clearPending()
	{
		// void g_io_stream_clear_pending (GIOStream *stream);
		g_io_stream_clear_pending(gIOStream);
	}
}
