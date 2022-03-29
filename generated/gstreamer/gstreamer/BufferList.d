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


module gstreamer.BufferList;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * Buffer lists are an object containing a list of buffers.
 * 
 * Buffer lists are created with gst_buffer_list_new() and filled with data
 * using gst_buffer_list_insert().
 * 
 * Buffer lists can be pushed on a srcpad with gst_pad_push_list(). This is
 * interesting when multiple buffers need to be pushed in one go because it
 * can reduce the amount of overhead for pushing each buffer individually.
 */
public class BufferList
{
	/** the main Gtk struct */
	protected GstBufferList* gstBufferList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstBufferList* getBufferListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBufferList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBufferList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBufferList* gstBufferList, bool ownedRef = false)
	{
		this.gstBufferList = gstBufferList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_buffer_list_unref(gstBufferList);
	}


	/** */
	public static GType getType()
	{
		return gst_buffer_list_get_type();
	}

	/**
	 * Creates a new, empty #GstBufferList.
	 *
	 * Returns: the new #GstBufferList.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_buffer_list_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstBufferList*) __p);
	}

	/**
	 * Creates a new, empty #GstBufferList. The list will have @size space
	 * preallocated so that memory reallocations can be avoided.
	 *
	 * Params:
	 *     size = an initial reserved size
	 *
	 * Returns: the new #GstBufferList.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint size)
	{
		auto __p = gst_buffer_list_new_sized(size);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_sized");
		}

		this(cast(GstBufferList*) __p);
	}

	/**
	 * Calculates the size of the data contained in @list by adding the
	 * size of all buffers.
	 *
	 * Returns: the size of the data contained in @list in bytes.
	 *
	 * Since: 1.14
	 */
	public size_t calculateSize()
	{
		return gst_buffer_list_calculate_size(gstBufferList);
	}

	/**
	 * Creates a shallow copy of the given buffer list. This will make a newly
	 * allocated copy of the source list with copies of buffer pointers. The
	 * refcount of buffers pointed to will be increased by one.
	 *
	 * Returns: a new copy of @list.
	 */
	public BufferList copy()
	{
		auto __p = gst_buffer_list_copy(gstBufferList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p, true);
	}

	/**
	 * Creates a copy of the given buffer list. This will make a newly allocated
	 * copy of the buffers that the source buffer list contains.
	 *
	 * Returns: a new copy of @list.
	 *
	 * Since: 1.6
	 */
	public BufferList copyDeep()
	{
		auto __p = gst_buffer_list_copy_deep(gstBufferList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p, true);
	}

	alias foreac = foreach_;
	/**
	 * Calls @func with @data for each buffer in @list.
	 *
	 * @func can modify the passed buffer pointer or its contents. The return value
	 * of @func defines if this function returns or if the remaining buffers in
	 * the list should be skipped.
	 *
	 * Params:
	 *     func = a #GstBufferListFunc to call
	 *     userData = user data passed to @func
	 *
	 * Returns: %TRUE when @func returned %TRUE for each buffer in @list or when
	 *     @list is empty.
	 */
	public bool foreach_(GstBufferListFunc func, void* userData)
	{
		return gst_buffer_list_foreach(gstBufferList, func, userData) != 0;
	}

	/**
	 * Gets the buffer at @idx.
	 *
	 * You must make sure that @idx does not exceed the number of
	 * buffers available.
	 *
	 * Params:
	 *     idx = the index
	 *
	 * Returns: the buffer at @idx in @group
	 *     or %NULL when there is no buffer. The buffer remains valid as
	 *     long as @list is valid and buffer is not removed from the list.
	 */
	public Buffer get(uint idx)
	{
		auto __p = gst_buffer_list_get(gstBufferList, idx);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p);
	}

	/**
	 * Gets the buffer at @idx, ensuring it is a writable buffer.
	 *
	 * You must make sure that @idx does not exceed the number of
	 * buffers available.
	 *
	 * Params:
	 *     idx = the index
	 *
	 * Returns: the buffer at @idx in @group.
	 *     The returned  buffer remains valid as long as @list is valid and
	 *     the buffer is not removed from the list.
	 *
	 * Since: 1.14
	 */
	public Buffer getWritable(uint idx)
	{
		auto __p = gst_buffer_list_get_writable(gstBufferList, idx);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p);
	}

	/**
	 * Inserts @buffer at @idx in @list. Other buffers are moved to make room for
	 * this new buffer.
	 *
	 * A -1 value for @idx will append the buffer at the end.
	 *
	 * Params:
	 *     idx = the index
	 *     buffer = a #GstBuffer
	 */
	public void insert(int idx, Buffer buffer)
	{
		gst_buffer_list_insert(gstBufferList, idx, (buffer is null) ? null : buffer.getBufferStruct(true));
	}

	/**
	 * Returns the number of buffers in @list.
	 *
	 * Returns: the number of buffers in the buffer list
	 */
	public uint length()
	{
		return gst_buffer_list_length(gstBufferList);
	}

	alias doref = ref_;
	/**
	 * Increases the refcount of the given buffer list by one.
	 *
	 * Note that the refcount affects the writability of @list and its data, see
	 * gst_buffer_list_make_writable(). It is important to note that keeping
	 * additional references to GstBufferList instances can potentially increase
	 * the number of memcpy operations in a pipeline.
	 *
	 * Returns: @list
	 */
	public BufferList ref_()
	{
		auto __p = gst_buffer_list_ref(gstBufferList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p, true);
	}

	/**
	 * Removes @length buffers starting from @idx in @list. The following buffers
	 * are moved to close the gap.
	 *
	 * Params:
	 *     idx = the index
	 *     length = the amount to remove
	 */
	public void remove(uint idx, uint length)
	{
		gst_buffer_list_remove(gstBufferList, idx, length);
	}

	/**
	 * Decreases the refcount of the buffer list. If the refcount reaches 0, the
	 * buffer list will be freed.
	 */
	public void unref()
	{
		gst_buffer_list_unref(gstBufferList);
	}

	/**
	 * Modifies a pointer to a #GstBufferList to point to a different
	 * #GstBufferList. The modification is done atomically (so this is useful for
	 * ensuring thread safety in some cases), and the reference counts are updated
	 * appropriately (the old buffer list is unreffed, the new is reffed).
	 *
	 * Either @new_list or the #GstBufferList pointed to by @old_list may be %NULL.
	 *
	 * Params:
	 *     oldList = pointer to a pointer to a
	 *         #GstBufferList to be replaced.
	 *     newList = pointer to a #GstBufferList that
	 *         will replace the buffer list pointed to by @old_list.
	 *
	 * Returns: %TRUE if @new_list was different from @old_list
	 *
	 * Since: 1.16
	 */
	public static bool replace(ref BufferList oldList, BufferList newList)
	{
		GstBufferList* outoldList = oldList.getBufferListStruct();

		auto __p = gst_buffer_list_replace(&outoldList, (newList is null) ? null : newList.getBufferListStruct()) != 0;

		oldList = ObjectG.getDObject!(BufferList)(outoldList);

		return __p;
	}

	/**
	 * Modifies a pointer to a #GstBufferList to point to a different
	 * #GstBufferList. This function is similar to gst_buffer_list_replace() except
	 * that it takes ownership of @new_list.
	 *
	 * Params:
	 *     oldList = pointer to a pointer to a #GstBufferList
	 *         to be replaced.
	 *     newList = pointer to a #GstBufferList
	 *         that will replace the bufferlist pointed to by @old_list.
	 *
	 * Returns: %TRUE if @new_list was different from @old_list
	 *
	 * Since: 1.16
	 */
	public static bool take(ref BufferList oldList, BufferList newList)
	{
		GstBufferList* outoldList = oldList.getBufferListStruct();

		auto __p = gst_buffer_list_take(&outoldList, (newList is null) ? null : newList.getBufferListStruct(true)) != 0;

		oldList = ObjectG.getDObject!(BufferList)(outoldList);

		return __p;
	}
}
