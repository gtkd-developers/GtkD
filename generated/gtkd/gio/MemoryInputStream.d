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


module gio.MemoryInputStream;

private import gio.InputStream;
private import gio.PollableInputStreamIF;
private import gio.PollableInputStreamT;
private import gio.SeekableIF;
private import gio.SeekableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GMemoryInputStream is a class for using arbitrary
 * memory chunks as input for GIO streaming input operations.
 * 
 * As of GLib 2.34, #GMemoryInputStream implements
 * #GPollableInputStream.
 */
public class MemoryInputStream : InputStream, PollableInputStreamIF, SeekableIF
{
	/** the main Gtk struct */
	protected GMemoryInputStream* gMemoryInputStream;

	/** Get the main Gtk struct */
	public GMemoryInputStream* getMemoryInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMemoryInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMemoryInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMemoryInputStream* gMemoryInputStream, bool ownedRef = false)
	{
		this.gMemoryInputStream = gMemoryInputStream;
		super(cast(GInputStream*)gMemoryInputStream, ownedRef);
	}

	// add the PollableInputStream capabilities
	mixin PollableInputStreamT!(GMemoryInputStream);

	// add the Seekable capabilities
	mixin SeekableT!(GMemoryInputStream);


	/** */
	public static GType getType()
	{
		return g_memory_input_stream_get_type();
	}

	/**
	 * Creates a new empty #GMemoryInputStream.
	 *
	 * Returns: a new #GInputStream
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_memory_input_stream_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMemoryInputStream*) __p, true);
	}

	/**
	 * Creates a new #GMemoryInputStream with data from the given @bytes.
	 *
	 * Params:
	 *     bytes = a #GBytes
	 *
	 * Returns: new #GInputStream read from @bytes
	 *
	 * Since: 2.34
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes bytes)
	{
		auto __p = g_memory_input_stream_new_from_bytes((bytes is null) ? null : bytes.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GMemoryInputStream*) __p, true);
	}

	/**
	 * Creates a new #GMemoryInputStream with data in memory of a given size.
	 *
	 * Params:
	 *     data = input data
	 *     destroy = function that is called to free @data, or %NULL
	 *
	 * Returns: new #GInputStream read from @data of @len bytes.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, GDestroyNotify destroy)
	{
		auto __p = g_memory_input_stream_new_from_data(data.ptr, cast(ptrdiff_t)data.length, destroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_data");
		}

		this(cast(GMemoryInputStream*) __p, true);
	}

	/**
	 * Appends @bytes to data that can be read from the input stream.
	 *
	 * Params:
	 *     bytes = input data
	 *
	 * Since: 2.34
	 */
	public void addBytes(Bytes bytes)
	{
		g_memory_input_stream_add_bytes(gMemoryInputStream, (bytes is null) ? null : bytes.getBytesStruct());
	}

	/**
	 * Appends @data to data that can be read from the input stream
	 *
	 * Params:
	 *     data = input data
	 *     destroy = function that is called to free @data, or %NULL
	 */
	public void addData(ubyte[] data, GDestroyNotify destroy)
	{
		g_memory_input_stream_add_data(gMemoryInputStream, data.ptr, cast(ptrdiff_t)data.length, destroy);
	}
}
