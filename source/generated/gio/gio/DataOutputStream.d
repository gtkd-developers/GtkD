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


module gio.DataOutputStream;

private import gio.Cancellable;
private import gio.FilterOutputStream;
private import gio.OutputStream;
private import gio.SeekableIF;
private import gio.SeekableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * Data output stream implements #GOutputStream and includes functions for
 * writing data directly to an output stream.
 */
public class DataOutputStream : FilterOutputStream, SeekableIF
{
	/** the main Gtk struct */
	protected GDataOutputStream* gDataOutputStream;

	/** Get the main Gtk struct */
	public GDataOutputStream* getDataOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDataOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDataOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDataOutputStream* gDataOutputStream, bool ownedRef = false)
	{
		this.gDataOutputStream = gDataOutputStream;
		super(cast(GFilterOutputStream*)gDataOutputStream, ownedRef);
	}

	// add the Seekable capabilities
	mixin SeekableT!(GDataOutputStream);


	/** */
	public static GType getType()
	{
		return g_data_output_stream_get_type();
	}

	/**
	 * Creates a new data output stream for @base_stream.
	 *
	 * Params:
	 *     baseStream = a #GOutputStream.
	 *
	 * Returns: #GDataOutputStream.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(OutputStream baseStream)
	{
		auto __p = g_data_output_stream_new((baseStream is null) ? null : baseStream.getOutputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDataOutputStream*) __p, true);
	}

	/**
	 * Gets the byte order for the stream.
	 *
	 * Returns: the #GDataStreamByteOrder for the @stream.
	 */
	public GDataStreamByteOrder getByteOrder()
	{
		return g_data_output_stream_get_byte_order(gDataOutputStream);
	}

	/**
	 * Puts a byte into the output stream.
	 *
	 * Params:
	 *     data = a #guchar.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putByte(char data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_byte(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts a signed 16-bit integer into the output stream.
	 *
	 * Params:
	 *     data = a #gint16.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putInt16(short data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_int16(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts a signed 32-bit integer into the output stream.
	 *
	 * Params:
	 *     data = a #gint32.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putInt32(int data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_int32(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts a signed 64-bit integer into the stream.
	 *
	 * Params:
	 *     data = a #gint64.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putInt64(long data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_int64(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts a string into the output stream.
	 *
	 * Params:
	 *     str = a string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @string was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putString(string str, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_string(gDataOutputStream, Str.toStringz(str), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts an unsigned 16-bit integer into the output stream.
	 *
	 * Params:
	 *     data = a #guint16.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putUint16(ushort data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_uint16(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts an unsigned 32-bit integer into the stream.
	 *
	 * Params:
	 *     data = a #guint32.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putUint32(uint data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_uint32(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Puts an unsigned 64-bit integer into the stream.
	 *
	 * Params:
	 *     data = a #guint64.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if @data was successfully added to the @stream.
	 *
	 * Throws: GException on failure.
	 */
	public bool putUint64(ulong data, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_data_output_stream_put_uint64(gDataOutputStream, data, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the byte order of the data output stream to @order.
	 *
	 * Params:
	 *     order = a %GDataStreamByteOrder.
	 */
	public void setByteOrder(GDataStreamByteOrder order)
	{
		g_data_output_stream_set_byte_order(gDataOutputStream, order);
	}
}
