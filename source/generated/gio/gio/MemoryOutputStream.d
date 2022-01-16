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


module gio.MemoryOutputStream;

private import gio.OutputStream;
private import gio.PollableOutputStreamIF;
private import gio.PollableOutputStreamT;
private import gio.SeekableIF;
private import gio.SeekableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GMemoryOutputStream is a class for using arbitrary
 * memory chunks as output for GIO streaming output operations.
 * 
 * As of GLib 2.34, #GMemoryOutputStream trivially implements
 * #GPollableOutputStream: it always polls as ready.
 */
public class MemoryOutputStream : OutputStream, PollableOutputStreamIF, SeekableIF
{
	/** the main Gtk struct */
	protected GMemoryOutputStream* gMemoryOutputStream;

	/** Get the main Gtk struct */
	public GMemoryOutputStream* getMemoryOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMemoryOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMemoryOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMemoryOutputStream* gMemoryOutputStream, bool ownedRef = false)
	{
		this.gMemoryOutputStream = gMemoryOutputStream;
		super(cast(GOutputStream*)gMemoryOutputStream, ownedRef);
	}

	// add the PollableOutputStream capabilities
	mixin PollableOutputStreamT!(GMemoryOutputStream);

	// add the Seekable capabilities
	mixin SeekableT!(GMemoryOutputStream);


	/** */
	public static GType getType()
	{
		return g_memory_output_stream_get_type();
	}

	/**
	 * Creates a new #GMemoryOutputStream.
	 *
	 * In most cases this is not the function you want.  See
	 * g_memory_output_stream_new_resizable() instead.
	 *
	 * If @data is non-%NULL, the stream will use that for its internal storage.
	 *
	 * If @realloc_fn is non-%NULL, it will be used for resizing the internal
	 * storage when necessary and the stream will be considered resizable.
	 * In that case, the stream will start out being (conceptually) empty.
	 * @size is used only as a hint for how big @data is.  Specifically,
	 * seeking to the end of a newly-created stream will seek to zero, not
	 * @size.  Seeking past the end of the stream and then writing will
	 * introduce a zero-filled gap.
	 *
	 * If @realloc_fn is %NULL then the stream is fixed-sized.  Seeking to
	 * the end will seek to @size exactly.  Writing past the end will give
	 * an 'out of space' error.  Attempting to seek past the end will fail.
	 * Unlike the resizable case, seeking to an offset within the stream and
	 * writing will preserve the bytes passed in as @data before that point
	 * and will return them as part of g_memory_output_stream_steal_data().
	 * If you intend to seek you should probably therefore ensure that @data
	 * is properly initialised.
	 *
	 * It is probably only meaningful to provide @data and @size in the case
	 * that you want a fixed-sized stream.  Put another way: if @realloc_fn
	 * is non-%NULL then it makes most sense to give @data as %NULL and
	 * @size as 0 (allowing #GMemoryOutputStream to do the initial
	 * allocation for itself).
	 *
	 * |[<!-- language="C" -->
	 * // a stream that can grow
	 * stream = g_memory_output_stream_new (NULL, 0, realloc, free);
	 *
	 * // another stream that can grow
	 * stream2 = g_memory_output_stream_new (NULL, 0, g_realloc, g_free);
	 *
	 * // a fixed-size stream
	 * data = malloc (200);
	 * stream3 = g_memory_output_stream_new (data, 200, NULL, free);
	 * ]|
	 *
	 * Params:
	 *     data = pointer to a chunk of memory to use, or %NULL
	 *     size = the size of @data
	 *     reallocFunction = a function with realloc() semantics (like g_realloc())
	 *         to be called when @data needs to be grown, or %NULL
	 *     destroyFunction = a function to be called on @data when the stream is
	 *         finalized, or %NULL
	 *
	 * Returns: A newly created #GMemoryOutputStream object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(void* data, size_t size, GReallocFunc reallocFunction, GDestroyNotify destroyFunction)
	{
		auto __p = g_memory_output_stream_new(data, size, reallocFunction, destroyFunction);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMemoryOutputStream*) __p, true);
	}

	/**
	 * Creates a new #GMemoryOutputStream, using g_realloc() and g_free()
	 * for memory allocation.
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_memory_output_stream_new_resizable();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_resizable");
		}

		this(cast(GMemoryOutputStream*) __p, true);
	}

	/**
	 * Gets any loaded data from the @ostream.
	 *
	 * Note that the returned pointer may become invalid on the next
	 * write or truncate operation on the stream.
	 *
	 * Returns: pointer to the stream's data, or %NULL if the data
	 *     has been stolen
	 */
	public void* getData()
	{
		return g_memory_output_stream_get_data(gMemoryOutputStream);
	}

	/**
	 * Returns the number of bytes from the start up to including the last
	 * byte written in the stream that has not been truncated away.
	 *
	 * Returns: the number of bytes written to the stream
	 *
	 * Since: 2.18
	 */
	public size_t getDataSize()
	{
		return g_memory_output_stream_get_data_size(gMemoryOutputStream);
	}

	/**
	 * Gets the size of the currently allocated data area (available from
	 * g_memory_output_stream_get_data()).
	 *
	 * You probably don't want to use this function on resizable streams.
	 * See g_memory_output_stream_get_data_size() instead.  For resizable
	 * streams the size returned by this function is an implementation
	 * detail and may be change at any time in response to operations on the
	 * stream.
	 *
	 * If the stream is fixed-sized (ie: no realloc was passed to
	 * g_memory_output_stream_new()) then this is the maximum size of the
	 * stream and further writes will return %G_IO_ERROR_NO_SPACE.
	 *
	 * In any case, if you want the number of bytes currently written to the
	 * stream, use g_memory_output_stream_get_data_size().
	 *
	 * Returns: the number of bytes allocated for the data buffer
	 */
	public size_t getSize()
	{
		return g_memory_output_stream_get_size(gMemoryOutputStream);
	}

	/**
	 * Returns data from the @ostream as a #GBytes. @ostream must be
	 * closed before calling this function.
	 *
	 * Returns: the stream's data
	 *
	 * Since: 2.34
	 */
	public Bytes stealAsBytes()
	{
		auto __p = g_memory_output_stream_steal_as_bytes(gMemoryOutputStream);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Gets any loaded data from the @ostream. Ownership of the data
	 * is transferred to the caller; when no longer needed it must be
	 * freed using the free function set in @ostream's
	 * #GMemoryOutputStream:destroy-function property.
	 *
	 * @ostream must be closed before calling this function.
	 *
	 * Returns: the stream's data, or %NULL if it has previously
	 *     been stolen
	 *
	 * Since: 2.26
	 */
	public void* stealData()
	{
		return g_memory_output_stream_steal_data(gMemoryOutputStream);
	}
}
