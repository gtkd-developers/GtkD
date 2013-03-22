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
 * inFile  = GDataOutputStream.html
 * outPack = gio
 * outFile = DataOutputStream
 * strct   = GDataOutputStream
 * realStrct=
 * ctorStrct=
 * clss    = DataOutputStream
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_data_output_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Cancellable
 * 	- gio.OutputStream
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GOutputStream* -> OutputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DataOutputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.Cancellable;
private import gio.OutputStream;



private import gio.FilterOutputStream;

/**
 * Data output stream implements GOutputStream and includes functions for
 * writing data directly to an output stream.
 */
public class DataOutputStream : FilterOutputStream
{
	
	/** the main Gtk struct */
	protected GDataOutputStream* gDataOutputStream;
	
	
	public GDataOutputStream* getDataOutputStreamStruct()
	{
		return gDataOutputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDataOutputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDataOutputStream* gDataOutputStream)
	{
		super(cast(GFilterOutputStream*)gDataOutputStream);
		this.gDataOutputStream = gDataOutputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDataOutputStream = cast(GDataOutputStream*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new data output stream for base_stream.
	 * Params:
	 * baseStream = a GOutputStream.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (OutputStream baseStream)
	{
		// GDataOutputStream * g_data_output_stream_new (GOutputStream *base_stream);
		auto p = g_data_output_stream_new((baseStream is null) ? null : baseStream.getOutputStreamStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_data_output_stream_new((baseStream is null) ? null : baseStream.getOutputStreamStruct())");
		}
		this(cast(GDataOutputStream*) p);
	}
	
	/**
	 * Sets the byte order of the data output stream to order.
	 * Params:
	 * order = a GDataStreamByteOrder.
	 */
	public void setByteOrder(GDataStreamByteOrder order)
	{
		// void g_data_output_stream_set_byte_order (GDataOutputStream *stream,  GDataStreamByteOrder order);
		g_data_output_stream_set_byte_order(gDataOutputStream, order);
	}
	
	/**
	 * Gets the byte order for the stream.
	 * Returns: the GDataStreamByteOrder for the stream.
	 */
	public GDataStreamByteOrder getByteOrder()
	{
		// GDataStreamByteOrder g_data_output_stream_get_byte_order  (GDataOutputStream *stream);
		return g_data_output_stream_get_byte_order(gDataOutputStream);
	}
	
	/**
	 * Puts a byte into the output stream.
	 * Params:
	 * data = a guchar.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putByte(char data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_byte (GDataOutputStream *stream,  guchar data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_byte(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts a signed 16-bit integer into the output stream.
	 * Params:
	 * data = a gint16.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putInt16(short data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_int16 (GDataOutputStream *stream,  gint16 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_int16(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts an unsigned 16-bit integer into the output stream.
	 * Params:
	 * data = a guint16.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putUint16(ushort data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_uint16 (GDataOutputStream *stream,  guint16 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_uint16(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts a signed 32-bit integer into the output stream.
	 * Params:
	 * data = a gint32.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putInt32(int data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_int32 (GDataOutputStream *stream,  gint32 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_int32(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts an unsigned 32-bit integer into the stream.
	 * Params:
	 * data = a guint32.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putUint32(uint data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_uint32 (GDataOutputStream *stream,  guint32 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_uint32(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts a signed 64-bit integer into the stream.
	 * Params:
	 * data = a gint64.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putInt64(long data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_int64 (GDataOutputStream *stream,  gint64 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_int64(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts an unsigned 64-bit integer into the stream.
	 * Params:
	 * data = a guint64.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if data was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putUint64(ulong data, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_uint64 (GDataOutputStream *stream,  guint64 data,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_uint64(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Puts a string into the output stream.
	 * Params:
	 * str = a string.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: TRUE if string was successfully added to the stream.
	 * Throws: GException on failure.
	 */
	public int putString(string str, Cancellable cancellable)
	{
		// gboolean g_data_output_stream_put_string (GDataOutputStream *stream,  const char *str,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_data_output_stream_put_string(gDataOutputStream, Str.toStringz(str), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
