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
 * inFile  = gstreamer-GstBufferList.html
 * outPack = gstreamer
 * outFile = BufferList
 * strct   = GstBufferList
 * realStrct=
 * ctorStrct=
 * clss    = BufferList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_buffer_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gstreamer.Buffer
 * structWrap:
 * 	- GstBuffer* -> Buffer
 * 	- GstBufferList* -> BufferList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.BufferList;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gstreamer.Buffer;




/**
 * Buffer lists are an object containing a list of buffers.
 *
 * Buffer lists are created with gst_buffer_list_new() and filled with data
 * using a gst_buffer_list_insert().
 *
 * Buffer lists can be pushed on a srcpad with gst_pad_push_list(). This is
 * interesting when multiple buffers need to be pushed in one go because it
 * can reduce the amount of overhead for pushing each buffer individually.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class BufferList
{
	
	/** the main Gtk struct */
	protected GstBufferList* gstBufferList;
	
	
	public GstBufferList* getBufferListStruct()
	{
		return gstBufferList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBufferList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstBufferList* gstBufferList)
	{
		this.gstBufferList = gstBufferList;
	}
	
	/**
	 */
	
	/**
	 * Creates a new, empty GstBufferList. The caller is responsible for unreffing
	 * the returned GstBufferList.
	 * Free-function: gst_buffer_list_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstBufferList * gst_buffer_list_new (void);
		auto p = gst_buffer_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_list_new()");
		}
		this(cast(GstBufferList*) p);
	}
	
	/**
	 * Creates a new, empty GstBufferList. The caller is responsible for unreffing
	 * the returned GstBufferList. The list will have size space preallocated so
	 * that memory reallocations can be avoided.
	 * Free-function: gst_buffer_list_unref
	 * Params:
	 * size = an initial reserved size
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint size)
	{
		// GstBufferList * gst_buffer_list_new_sized (guint size);
		auto p = gst_buffer_list_new_sized(size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_buffer_list_new_sized(size)");
		}
		this(cast(GstBufferList*) p);
	}
	
	/**
	 * Returns the number of buffers in list.
	 * Returns: the number of buffers in the buffer list
	 */
	public uint length()
	{
		// guint gst_buffer_list_length (GstBufferList *list);
		return gst_buffer_list_length(gstBufferList);
	}
	
	/**
	 * Insert buffer at idx in list. Other buffers are moved to make room for
	 * this new buffer.
	 * A -1 value for idx will append the buffer at the end.
	 * Params:
	 * idx = the index
	 * buffer = a GstBuffer. [transfer full]
	 */
	public void insert(int idx, Buffer buffer)
	{
		// void gst_buffer_list_insert (GstBufferList *list,  gint idx,  GstBuffer *buffer);
		gst_buffer_list_insert(gstBufferList, idx, (buffer is null) ? null : buffer.getBufferStruct());
	}
	
	/**
	 * Remove length buffers starting from idx in list. The following buffers are
	 * moved to close the gap.
	 * Params:
	 * idx = the index
	 * length = the amount to remove
	 */
	public void remove(uint idx, uint length)
	{
		// void gst_buffer_list_remove (GstBufferList *list,  guint idx,  guint length);
		gst_buffer_list_remove(gstBufferList, idx, length);
	}
	
	/**
	 * Increases the refcount of the given buffer list by one.
	 * Note that the refcount affects the writeability of list and its data, see
	 * gst_buffer_list_make_writable(). It is important to note that keeping
	 * additional references to GstBufferList instances can potentially increase
	 * the number of memcpy operations in a pipeline.
	 * Returns: list. [transfer full]
	 */
	public BufferList doref()
	{
		// GstBufferList * gst_buffer_list_ref (GstBufferList *list);
		auto p = gst_buffer_list_ref(gstBufferList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) p);
	}
	
	/**
	 * Decreases the refcount of the buffer list. If the refcount reaches 0, the
	 * buffer list will be freed.
	 */
	public void unref()
	{
		// void gst_buffer_list_unref (GstBufferList *list);
		gst_buffer_list_unref(gstBufferList);
	}
	
	/**
	 * Create a shallow copy of the given buffer list. This will make a newly
	 * allocated copy of the source list with copies of buffer pointers. The
	 * refcount of buffers pointed to will be increased by one.
	 * Returns: a new copy of list. [transfer full]
	 */
	public BufferList copy()
	{
		// GstBufferList * gst_buffer_list_copy (const GstBufferList *list);
		auto p = gst_buffer_list_copy(gstBufferList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) p);
	}
	
	/**
	 * Call func with data for each buffer in list.
	 * func can modify the passed buffer pointer or its contents. The return value
	 * of func define if this function returns or if the remaining buffers in
	 * the list should be skipped.
	 * Params:
	 * func = a GstBufferListFunc to call. [scope call]
	 * userData = user data passed to func. [closure]
	 * Returns: TRUE when func returned TRUE for each buffer in list or when list is empty.
	 */
	public int foreac(GstBufferListFunc func, void* userData)
	{
		// gboolean gst_buffer_list_foreach (GstBufferList *list,  GstBufferListFunc func,  gpointer user_data);
		return gst_buffer_list_foreach(gstBufferList, func, userData);
	}
	
	/**
	 * Get the buffer at idx.
	 * Params:
	 * idx = the index
	 * Returns: the buffer at idx in group or NULL when there is no buffer. The buffer remains valid as long as list is valid. [transfer none]
	 */
	public Buffer get(uint idx)
	{
		// GstBuffer * gst_buffer_list_get (GstBufferList *list,  guint idx);
		auto p = gst_buffer_list_get(gstBufferList, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
}
