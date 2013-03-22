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
 * inFile  = GBufferedInputStream.html
 * outPack = gio
 * outFile = BufferedInputStream
 * strct   = GBufferedInputStream
 * realStrct=
 * ctorStrct=GInputStream
 * clss    = BufferedInputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_buffered_input_stream_
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
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.BufferedInputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;



private import gio.FilterInputStream;

/**
 * Buffered input stream implements GFilterInputStream and provides
 * for buffered reads.
 *
 * By default, GBufferedInputStream's buffer size is set at 4 kilobytes.
 *
 * To create a buffered input stream, use g_buffered_input_stream_new(),
 * or g_buffered_input_stream_new_sized() to specify the buffer's size at
 * construction.
 *
 * To get the size of a buffer within a buffered input stream, use
 * g_buffered_input_stream_get_buffer_size(). To change the size of a
 * buffered input stream's buffer, use
 * g_buffered_input_stream_set_buffer_size(). Note that the buffer's size
 * cannot be reduced below the size of the data within the buffer.
 */
public class BufferedInputStream : FilterInputStream
{
	
	/** the main Gtk struct */
	protected GBufferedInputStream* gBufferedInputStream;
	
	
	public GBufferedInputStream* getBufferedInputStreamStruct()
	{
		return gBufferedInputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBufferedInputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBufferedInputStream* gBufferedInputStream)
	{
		super(cast(GFilterInputStream*)gBufferedInputStream);
		this.gBufferedInputStream = gBufferedInputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gBufferedInputStream = cast(GBufferedInputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GInputStream from the given base_stream, with
	 * a buffer set to the default size (4 kilobytes).
	 * Params:
	 * baseStream = a GInputStream
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InputStream baseStream)
	{
		// GInputStream * g_buffered_input_stream_new (GInputStream *base_stream);
		auto p = g_buffered_input_stream_new((baseStream is null) ? null : baseStream.getInputStreamStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_buffered_input_stream_new((baseStream is null) ? null : baseStream.getInputStreamStruct())");
		}
		this(cast(GBufferedInputStream*) p);
	}
	
	/**
	 * Creates a new GBufferedInputStream from the given base_stream,
	 * with a buffer set to size.
	 * Params:
	 * baseStream = a GInputStream
	 * size = a gsize
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InputStream baseStream, gsize size)
	{
		// GInputStream * g_buffered_input_stream_new_sized (GInputStream *base_stream,  gsize size);
		auto p = g_buffered_input_stream_new_sized((baseStream is null) ? null : baseStream.getInputStreamStruct(), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_buffered_input_stream_new_sized((baseStream is null) ? null : baseStream.getInputStreamStruct(), size)");
		}
		this(cast(GBufferedInputStream*) p);
	}
	
	/**
	 * Gets the size of the input buffer.
	 * Returns: the current buffer size.
	 */
	public gsize getBufferSize()
	{
		// gsize g_buffered_input_stream_get_buffer_size  (GBufferedInputStream *stream);
		return g_buffered_input_stream_get_buffer_size(gBufferedInputStream);
	}
	
	/**
	 * Sets the size of the internal buffer of stream to size, or to the
	 * size of the contents of the buffer. The buffer can never be resized
	 * smaller than its current contents.
	 * Params:
	 * size = a gsize
	 */
	public void setBufferSize(gsize size)
	{
		// void g_buffered_input_stream_set_buffer_size  (GBufferedInputStream *stream,  gsize size);
		g_buffered_input_stream_set_buffer_size(gBufferedInputStream, size);
	}
	
	/**
	 * Gets the size of the available data within the stream.
	 * Returns: size of the available stream.
	 */
	public gsize getAvailable()
	{
		// gsize g_buffered_input_stream_get_available  (GBufferedInputStream *stream);
		return g_buffered_input_stream_get_available(gBufferedInputStream);
	}
	
	/**
	 * Returns the buffer with the currently available bytes. The returned
	 * buffer must not be modified and will become invalid when reading from
	 * the stream or filling the buffer.
	 * Params:
	 * count = a gsize to get the number of bytes available in the buffer. [out]
	 * Returns: read-only buffer. [array length=count][element-type guint8][transfer none]
	 */
	public void* peekBuffer(out gsize count)
	{
		// const void * g_buffered_input_stream_peek_buffer (GBufferedInputStream *stream,  gsize *count);
		return g_buffered_input_stream_peek_buffer(gBufferedInputStream, &count);
	}
	
	/**
	 * Peeks in the buffer, copying data of size count into buffer,
	 * offset offset bytes.
	 * Params:
	 * buffer = a pointer to
	 * an allocated chunk of memory. [array length=count][element-type guint8]
	 * offset = a gsize
	 * count = a gsize
	 * Returns: a gsize of the number of bytes peeked, or -1 on error.
	 */
	public gsize peek(void* buffer, gsize offset, gsize count)
	{
		// gsize g_buffered_input_stream_peek (GBufferedInputStream *stream,  void *buffer,  gsize offset,  gsize count);
		return g_buffered_input_stream_peek(gBufferedInputStream, buffer, offset, count);
	}
	
	/**
	 * Tries to read count bytes from the stream into the buffer.
	 * Will block during this read.
	 * If count is zero, returns zero and does nothing. A value of count
	 * larger than G_MAXSSIZE will cause a G_IO_ERROR_INVALID_ARGUMENT error.
	 * On success, the number of bytes read into the buffer is returned.
	 * It is not an error if this is not the same as the requested size, as it
	 * can happen e.g. near the end of a file. Zero is returned on end of file
	 * (or if count is zero), but never otherwise.
	 * If count is -1 then the attempted read size is equal to the number of
	 * bytes that are required to fill the buffer.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 * On error -1 is returned and error is set accordingly.
	 * For the asynchronous, non-blocking, version of this function, see
	 * g_buffered_input_stream_fill_async().
	 * Params:
	 * count = the number of bytes that will be read from the stream
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: the number of bytes read into stream's buffer, up to count, or -1 on error.
	 * Throws: GException on failure.
	 */
	public gssize fill(gssize count, Cancellable cancellable)
	{
		// gssize g_buffered_input_stream_fill (GBufferedInputStream *stream,  gssize count,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_buffered_input_stream_fill(gBufferedInputStream, count, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Reads data into stream's buffer asynchronously, up to count size.
	 * io_priority can be used to prioritize reads. For the synchronous
	 * version of this function, see g_buffered_input_stream_fill().
	 * If count is -1 then the attempted read size is equal to the number
	 * of bytes that are required to fill the buffer.
	 * Params:
	 * count = the number of bytes that will be read from the stream
	 * ioPriority = the I/O priority
	 * of the request
	 * cancellable = optional GCancellable object. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = a gpointer. [closure]
	 */
	public void fillAsync(gssize count, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_buffered_input_stream_fill_async (GBufferedInputStream *stream,  gssize count,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_buffered_input_stream_fill_async(gBufferedInputStream, count, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an asynchronous read.
	 * Params:
	 * result = a GAsyncResult
	 * Returns: a gssize of the read stream, or -1 on an error.
	 * Throws: GException on failure.
	 */
	public gssize fillFinish(AsyncResultIF result)
	{
		// gssize g_buffered_input_stream_fill_finish (GBufferedInputStream *stream,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_buffered_input_stream_fill_finish(gBufferedInputStream, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to read a single byte from the stream or the buffer. Will block
	 * during this read.
	 * On success, the byte read from the stream is returned. On end of stream
	 * -1 is returned but it's not an exceptional error and error is not set.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
	 * operation was partially finished when the operation was cancelled the
	 * partial result will be returned, without an error.
	 * On error -1 is returned and error is set accordingly.
	 * Params:
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: the byte read from the stream, or -1 on end of stream or error.
	 * Throws: GException on failure.
	 */
	public int readByte(Cancellable cancellable)
	{
		// int g_buffered_input_stream_read_byte (GBufferedInputStream *stream,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_buffered_input_stream_read_byte(gBufferedInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
