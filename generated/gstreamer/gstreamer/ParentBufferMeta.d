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


module gstreamer.ParentBufferMeta;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * The #GstParentBufferMeta is a #GstMeta which can be attached to a #GstBuffer
 * to hold a reference to another buffer that is only released when the child
 * #GstBuffer is released.
 * 
 * Typically, #GstParentBufferMeta is used when the child buffer is directly
 * using the #GstMemory of the parent buffer, and wants to prevent the parent
 * buffer from being returned to a buffer pool until the #GstMemory is available
 * for re-use.
 *
 * Since: 1.6
 */
public final class ParentBufferMeta
{
	/** the main Gtk struct */
	protected GstParentBufferMeta* gstParentBufferMeta;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstParentBufferMeta* getParentBufferMetaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstParentBufferMeta;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstParentBufferMeta;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstParentBufferMeta* gstParentBufferMeta, bool ownedRef = false)
	{
		this.gstParentBufferMeta = gstParentBufferMeta;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			sliceFree(gstParentBufferMeta);
	}


	/**
	 * the parent #GstMeta structure
	 */
	public @property GstMeta parent()
	{
		return gstParentBufferMeta.parent;
	}

	/** Ditto */
	public @property void parent(GstMeta value)
	{
		gstParentBufferMeta.parent = value;
	}

	/**
	 * the #GstBuffer on which a reference is being held.
	 */
	public @property Buffer buffer()
	{
		return ObjectG.getDObject!(Buffer)(gstParentBufferMeta.buffer, false);
	}

	/** Ditto */
	public @property void buffer(Buffer value)
	{
		gstParentBufferMeta.buffer = value.getBufferStruct();
	}

	/**
	 * Get the global #GstMetaInfo describing  the #GstParentBufferMeta meta.
	 *
	 * Returns: The #GstMetaInfo
	 *
	 * Since: 1.6
	 */
	public static GstMetaInfo* getInfo()
	{
		return gst_parent_buffer_meta_get_info();
	}

	/** */
	public static GType getType()
	{
		return gst_parent_buffer_meta_api_get_type();
	}
}
