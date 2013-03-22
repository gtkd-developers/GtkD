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
 * inFile  = GBufferedOutputStream.html
 * outPack = gio
 * outFile = BufferedOutputStream
 * strct   = GBufferedOutputStream
 * realStrct=
 * ctorStrct=GOutputStream
 * clss    = BufferedOutputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_buffered_output_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.OutputStream
 * structWrap:
 * 	- GOutputStream* -> OutputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.BufferedOutputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.OutputStream;



private import gio.FilterOutputStream;

/**
 * Buffered output stream implements GFilterOutputStream and provides
 * for buffered writes.
 *
 * By default, GBufferedOutputStream's buffer size is set at 4 kilobytes.
 *
 * To create a buffered output stream, use g_buffered_output_stream_new(),
 * or g_buffered_output_stream_new_sized() to specify the buffer's size
 * at construction.
 *
 * To get the size of a buffer within a buffered input stream, use
 * g_buffered_output_stream_get_buffer_size(). To change the size of a
 * buffered output stream's buffer, use
 * g_buffered_output_stream_set_buffer_size(). Note that the buffer's
 * size cannot be reduced below the size of the data within the buffer.
 */
public class BufferedOutputStream : FilterOutputStream
{
	
	/** the main Gtk struct */
	protected GBufferedOutputStream* gBufferedOutputStream;
	
	
	public GBufferedOutputStream* getBufferedOutputStreamStruct()
	{
		return gBufferedOutputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBufferedOutputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBufferedOutputStream* gBufferedOutputStream)
	{
		super(cast(GFilterOutputStream*)gBufferedOutputStream);
		this.gBufferedOutputStream = gBufferedOutputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gBufferedOutputStream = cast(GBufferedOutputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new buffered output stream for a base stream.
	 * Params:
	 * baseStream = a GOutputStream.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (OutputStream baseStream)
	{
		// GOutputStream * g_buffered_output_stream_new (GOutputStream *base_stream);
		auto p = g_buffered_output_stream_new((baseStream is null) ? null : baseStream.getOutputStreamStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_buffered_output_stream_new((baseStream is null) ? null : baseStream.getOutputStreamStruct())");
		}
		this(cast(GBufferedOutputStream*) p);
	}
	
	/**
	 * Creates a new buffered output stream with a given buffer size.
	 * Params:
	 * baseStream = a GOutputStream.
	 * size = a gsize.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (OutputStream baseStream, gsize size)
	{
		// GOutputStream * g_buffered_output_stream_new_sized (GOutputStream *base_stream,  gsize size);
		auto p = g_buffered_output_stream_new_sized((baseStream is null) ? null : baseStream.getOutputStreamStruct(), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_buffered_output_stream_new_sized((baseStream is null) ? null : baseStream.getOutputStreamStruct(), size)");
		}
		this(cast(GBufferedOutputStream*) p);
	}
	
	/**
	 * Gets the size of the buffer in the stream.
	 * Returns: the current size of the buffer.
	 */
	public gsize getBufferSize()
	{
		// gsize g_buffered_output_stream_get_buffer_size  (GBufferedOutputStream *stream);
		return g_buffered_output_stream_get_buffer_size(gBufferedOutputStream);
	}
	
	/**
	 * Sets the size of the internal buffer to size.
	 * Params:
	 * size = a gsize.
	 */
	public void setBufferSize(gsize size)
	{
		// void g_buffered_output_stream_set_buffer_size  (GBufferedOutputStream *stream,  gsize size);
		g_buffered_output_stream_set_buffer_size(gBufferedOutputStream, size);
	}
	
	/**
	 * Checks if the buffer automatically grows as data is added.
	 * Returns: TRUE if the stream's buffer automatically grows, FALSE otherwise.
	 */
	public int getAutoGrow()
	{
		// gboolean g_buffered_output_stream_get_auto_grow  (GBufferedOutputStream *stream);
		return g_buffered_output_stream_get_auto_grow(gBufferedOutputStream);
	}
	
	/**
	 * Sets whether or not the stream's buffer should automatically grow.
	 * If auto_grow is true, then each write will just make the buffer
	 * larger, and you must manually flush the buffer to actually write out
	 * the data to the underlying stream.
	 * Params:
	 * autoGrow = a gboolean.
	 */
	public void setAutoGrow(int autoGrow)
	{
		// void g_buffered_output_stream_set_auto_grow  (GBufferedOutputStream *stream,  gboolean auto_grow);
		g_buffered_output_stream_set_auto_grow(gBufferedOutputStream, autoGrow);
	}
}
