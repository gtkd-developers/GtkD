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


module gstreamer.Meta;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.MetaInfo;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * The #GstMeta structure should be included as the first member of a #GstBuffer
 * metadata structure. The structure defines the API of the metadata and should
 * be accessible to all elements using the metadata.
 * 
 * A metadata API is registered with gst_meta_api_type_register() which takes a
 * name for the metadata API and some tags associated with the metadata.
 * With gst_meta_api_type_has_tag() one can check if a certain metadata API
 * contains a given tag.
 * 
 * Multiple implementations of a metadata API can be registered.
 * To implement a metadata API, gst_meta_register() should be used. This
 * function takes all parameters needed to create, free and transform metadata
 * along with the size of the metadata. The function returns a #GstMetaInfo
 * structure that contains the information for the implementation of the API.
 * 
 * A specific implementation can be retrieved by name with gst_meta_get_info().
 * 
 * See #GstBuffer for how the metadata can be added, retrieved and removed from
 * buffers.
 */
public final class Meta
{
	/** the main Gtk struct */
	protected GstMeta* gstMeta;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMeta* getMetaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMeta;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMeta;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMeta* gstMeta, bool ownedRef = false)
	{
		this.gstMeta = gstMeta;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			sliceFree(gstMeta);
	}


	/**
	 * extra flags for the metadata
	 */
	public @property GstMetaFlags flags()
	{
		return gstMeta.flags;
	}

	/** Ditto */
	public @property void flags(GstMetaFlags value)
	{
		gstMeta.flags = value;
	}

	/**
	 * pointer to the #GstMetaInfo
	 */
	public @property MetaInfo info()
	{
		return ObjectG.getDObject!(MetaInfo)(gstMeta.info, false);
	}

	/** Ditto */
	public @property void info(MetaInfo value)
	{
		gstMeta.info = value.getMetaInfoStruct();
	}

	/**
	 * Meta sequence number compare function. Can be used as #GCompareFunc
	 * or a #GCompareDataFunc.
	 *
	 * Params:
	 *     meta2 = a #GstMeta
	 *
	 * Returns: a negative number if @meta1 comes before @meta2, 0 if both metas
	 *     have an equal sequence number, or a positive integer if @meta1 comes
	 *     after @meta2.
	 *
	 * Since: 1.16
	 */
	public int compareSeqnum(Meta meta2)
	{
		return gst_meta_compare_seqnum(gstMeta, (meta2 is null) ? null : meta2.getMetaStruct());
	}

	/**
	 * Gets seqnum for this meta.
	 *
	 * Since: 1.16
	 */
	public ulong getSeqnum()
	{
		return gst_meta_get_seqnum(gstMeta);
	}

	/**
	 *
	 * Params:
	 *     api = an API
	 * Returns: an array of tags as strings.
	 *
	 * Since: 1.2
	 */
	public static string[] apiTypeGetTags(GType api)
	{
		return Str.toStringArray(gst_meta_api_type_get_tags(api));
	}

	/**
	 * Check if @api was registered with @tag.
	 *
	 * Params:
	 *     api = an API
	 *     tag = the tag to check
	 *
	 * Returns: %TRUE if @api was registered with @tag.
	 */
	public static bool apiTypeHasTag(GType api, GQuark tag)
	{
		return gst_meta_api_type_has_tag(api, tag) != 0;
	}

	/**
	 * Register and return a GType for the @api and associate it with
	 * @tags.
	 *
	 * Params:
	 *     api = an API to register
	 *     tags = tags for @api
	 *
	 * Returns: a unique GType for @api.
	 */
	public static GType apiTypeRegister(string api, string[] tags)
	{
		return gst_meta_api_type_register(Str.toStringz(api), Str.toStringzArray(tags));
	}

	/**
	 * Lookup a previously registered meta info structure by its implementation name
	 * @impl.
	 *
	 * Params:
	 *     impl = the name
	 *
	 * Returns: a #GstMetaInfo with @impl, or
	 *     %NULL when no such metainfo exists.
	 */
	public static MetaInfo getInfo(string impl)
	{
		auto __p = gst_meta_get_info(Str.toStringz(impl));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MetaInfo)(cast(GstMetaInfo*) __p);
	}

	/**
	 * Register a new #GstMeta implementation.
	 *
	 * The same @info can be retrieved later with gst_meta_get_info() by using
	 * @impl as the key.
	 *
	 * Params:
	 *     api = the type of the #GstMeta API
	 *     impl = the name of the #GstMeta implementation
	 *     size = the size of the #GstMeta structure
	 *     initFunc = a #GstMetaInitFunction
	 *     freeFunc = a #GstMetaFreeFunction
	 *     transformFunc = a #GstMetaTransformFunction
	 *
	 * Returns: a #GstMetaInfo that can be used to
	 *     access metadata.
	 */
	public static MetaInfo register(GType api, string impl, size_t size, GstMetaInitFunction initFunc, GstMetaFreeFunction freeFunc, GstMetaTransformFunction transformFunc)
	{
		auto __p = gst_meta_register(api, Str.toStringz(impl), size, initFunc, freeFunc, transformFunc);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MetaInfo)(cast(GstMetaInfo*) __p);
	}

	/**
	 * Register a new custom #GstMeta implementation, backed by an opaque
	 * structure holding a #GstStructure.
	 *
	 * The registered info can be retrieved later with gst_meta_get_info() by using
	 * @name as the key.
	 *
	 * The backing #GstStructure can be retrieved with
	 * gst_custom_meta_get_structure(), its mutability is conditioned by the
	 * writability of the buffer the meta is attached to.
	 *
	 * When @transform_func is %NULL, the meta and its backing #GstStructure
	 * will always be copied when the transform operation is copy, other operations
	 * are discarded, copy regions are ignored.
	 *
	 * Params:
	 *     name = the name of the #GstMeta implementation
	 *     tags = tags for @api
	 *     transformFunc = a #GstMetaTransformFunction
	 *     userData = user data passed to @transform_func
	 *     destroyData = #GDestroyNotify for user_data
	 *
	 * Returns: a #GstMetaInfo that can be used to
	 *     access metadata.
	 *
	 * Since: 1.20
	 */
	public static MetaInfo registerCustom(string name, string[] tags, GstCustomMetaTransformFunction transformFunc, void* userData, GDestroyNotify destroyData)
	{
		auto __p = gst_meta_register_custom(Str.toStringz(name), Str.toStringzArray(tags), transformFunc, userData, destroyData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MetaInfo)(cast(GstMetaInfo*) __p);
	}
}
