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
 * inFile  = GMemoryOutputStream.html
 * outPack = gio
 * outFile = MemoryOutputStream
 * strct   = GMemoryOutputStream
 * realStrct=
 * ctorStrct=GOutputStream
 * clss    = MemoryOutputStream
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- SeekableIF
 * prefixes:
 * 	- g_memory_output_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.SeekableT
 * 	- gio.SeekableIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.MemoryOutputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.SeekableT;
private import gio.SeekableIF;



private import gio.OutputStream;

/**
 * Description
 * GMemoryOutputStream is a class for using arbitrary
 * memory chunks as output for GIO streaming output operations.
 * As of GLib 2.34, GMemoryOutputStream implements
 * GPollableOutputStream.
 */
public class MemoryOutputStream : OutputStream, SeekableIF
{
	
	/** the main Gtk struct */
	protected GMemoryOutputStream* gMemoryOutputStream;
	
	
	public GMemoryOutputStream* getMemoryOutputStreamStruct()
	{
		return gMemoryOutputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMemoryOutputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMemoryOutputStream* gMemoryOutputStream)
	{
		super(cast(GOutputStream*)gMemoryOutputStream);
		this.gMemoryOutputStream = gMemoryOutputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gMemoryOutputStream = cast(GMemoryOutputStream*)obj;
	}
	
	// add the Seekable capabilities
	mixin SeekableT!(GMemoryOutputStream);
	
	/**
	 */
	
	/**
	 * Creates a new GMemoryOutputStream.
	 * If data is non-NULL, the stream will use that for its internal storage.
	 * If realloc_fn is non-NULL, it will be used for resizing the internal
	 * storage when necessary. To construct a fixed-size output stream,
	 * pass NULL as realloc_fn.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * data = pointer to a chunk of memory to use, or NULL. [allow-none]
	 * size = the size of data
	 * reallocFunction = a function with realloc() semantics (like g_realloc())
	 * to be called when data needs to be grown, or NULL. [allow-none]
	 * destroyFunction = a function to be called on data when the stream is
	 * finalized, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void* data, gsize size, GReallocFunc reallocFunction, GDestroyNotify destroyFunction)
	{
		// GOutputStream * g_memory_output_stream_new (gpointer data,  gsize size,  GReallocFunc realloc_function,  GDestroyNotify destroy_function);
		auto p = g_memory_output_stream_new(data, size, reallocFunction, destroyFunction);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_memory_output_stream_new(data, size, reallocFunction, destroyFunction)");
		}
		this(cast(GMemoryOutputStream*) p);
	}
	
	/**
	 * Gets any loaded data from the ostream.
	 * Note that the returned pointer may become invalid on the next
	 * write or truncate operation on the stream.
	 * Returns: pointer to the stream's data. [transfer none]
	 */
	public void* getData()
	{
		// gpointer g_memory_output_stream_get_data (GMemoryOutputStream *ostream);
		return g_memory_output_stream_get_data(gMemoryOutputStream);
	}
	
	/**
	 * Gets the size of the currently allocated data area (available from
	 * g_memory_output_stream_get_data()). If the stream isn't
	 * growable (no realloc was passed to g_memory_output_stream_new()) then
	 * this is the maximum size of the stream and further writes
	 * will return G_IO_ERROR_NO_SPACE.
	 * Note that for growable streams the returned size may become invalid on
	 * the next write or truncate operation on the stream.
	 * If you want the number of bytes currently written to the stream, use
	 * g_memory_output_stream_get_data_size().
	 * Returns: the number of bytes allocated for the data buffer
	 */
	public gsize getSize()
	{
		// gsize g_memory_output_stream_get_size (GMemoryOutputStream *ostream);
		return g_memory_output_stream_get_size(gMemoryOutputStream);
	}
	
	/**
	 * Returns the number of bytes from the start up
	 * to including the last byte written in the stream
	 * that has not been truncated away.
	 * Since 2.18
	 * Returns: the number of bytes written to the stream
	 */
	public gsize getDataSize()
	{
		// gsize g_memory_output_stream_get_data_size  (GMemoryOutputStream *ostream);
		return g_memory_output_stream_get_data_size(gMemoryOutputStream);
	}
	
	/**
	 * Gets any loaded data from the ostream. Ownership of the data
	 * is transferred to the caller; when no longer needed it must be
	 * freed using the free function set in ostream's
	 * "destroy-function" property.
	 * ostream must be closed before calling this function.
	 * Since 2.26
	 * Returns: the stream's data. [transfer full]
	 */
	public void* stealData()
	{
		// gpointer g_memory_output_stream_steal_data (GMemoryOutputStream *ostream);
		return g_memory_output_stream_steal_data(gMemoryOutputStream);
	}
}
