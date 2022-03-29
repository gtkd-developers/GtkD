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


module gstreamer.MetaInfo;

private import glib.MemorySlice;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * The #GstMetaInfo provides information about a specific metadata
 * structure.
 */
public final class MetaInfo
{
	/** the main Gtk struct */
	protected GstMetaInfo* gstMetaInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMetaInfo* getMetaInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMetaInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMetaInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMetaInfo* gstMetaInfo, bool ownedRef = false)
	{
		this.gstMetaInfo = gstMetaInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			sliceFree(gstMetaInfo);
	}


	/**
	 * tag identifying the metadata structure and api
	 */
	public @property GType api()
	{
		return gstMetaInfo.api;
	}

	/** Ditto */
	public @property void api(GType value)
	{
		gstMetaInfo.api = value;
	}

	/**
	 * type identifying the implementor of the api
	 */
	public @property GType type()
	{
		return gstMetaInfo.type;
	}

	/** Ditto */
	public @property void type(GType value)
	{
		gstMetaInfo.type = value;
	}

	/**
	 * size of the metadata
	 */
	public @property size_t size()
	{
		return gstMetaInfo.size;
	}

	/** Ditto */
	public @property void size(size_t value)
	{
		gstMetaInfo.size = value;
	}

	/**
	 * function for initializing the metadata
	 */
	public @property GstMetaInitFunction initFunc()
	{
		return gstMetaInfo.initFunc;
	}

	/** Ditto */
	public @property void initFunc(GstMetaInitFunction value)
	{
		gstMetaInfo.initFunc = value;
	}

	/**
	 * function for freeing the metadata
	 */
	public @property GstMetaFreeFunction freeFunc()
	{
		return gstMetaInfo.freeFunc;
	}

	/** Ditto */
	public @property void freeFunc(GstMetaFreeFunction value)
	{
		gstMetaInfo.freeFunc = value;
	}

	/**
	 * function for transforming the metadata
	 */
	public @property GstMetaTransformFunction transformFunc()
	{
		return gstMetaInfo.transformFunc;
	}

	/** Ditto */
	public @property void transformFunc(GstMetaTransformFunction value)
	{
		gstMetaInfo.transformFunc = value;
	}

	/**
	 * Returns: whether @info was registered as a #GstCustomMeta with
	 *     gst_meta_register_custom()
	 *
	 * Since: 1.20
	 */
	public bool isCustom()
	{
		return gst_meta_info_is_custom(gstMetaInfo) != 0;
	}
}
