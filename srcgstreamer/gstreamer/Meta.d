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
 * inFile  = gstreamer-GstMeta.html
 * outPack = gstreamer
 * outFile = Meta
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Meta
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_meta_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Meta;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * The GstMeta structure should be included as the first member of a GstBuffer
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
 * along with the size of the metadata. The function returns a GstMetaInfo
 * structure that contains the information for the implementation of the API.
 *
 * A specific implementation can be retrieved by name with gst_meta_get_info().
 *
 * See GstBuffer for how the metadata can be added, retrieved and removed from
 * buffers.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class Meta
{
	
	/**
	 */
	
	/**
	 * Register and return a GType for the api and associate it with
	 * tags.
	 * Params:
	 * api = an API to register
	 * tags = tags for api
	 * Returns: a unique GType for api.
	 */
	public static GType apiTypeRegister(string api, string[] tags)
	{
		// GType gst_meta_api_type_register (const gchar *api,  const gchar **tags);
		return gst_meta_api_type_register(Str.toStringz(api), Str.toStringzArray(tags));
	}
	
	/**
	 * Check if api was registered with tag.
	 * Params:
	 * api = an API
	 * tag = the tag to check
	 * Returns: TRUE if api was registered with tag.
	 */
	public static int apiTypeHasTag(GType api, GQuark tag)
	{
		// gboolean gst_meta_api_type_has_tag (GType api,  GQuark tag);
		return gst_meta_api_type_has_tag(api, tag);
	}
	
	/**
	 * Register a new GstMeta implementation.
	 * The same info can be retrieved later with gst_meta_get_info() by using
	 * impl as the key.
	 * Params:
	 * api = the type of the GstMeta API
	 * impl = the name of the GstMeta implementation
	 * size = the size of the GstMeta structure
	 * initFunc = (scope async) a GstMetaInitFunction
	 * freeFunc = (scope async) a GstMetaFreeFunction
	 * transformFunc = (scope async) a GstMetaTransformFunction
	 * Returns: a GstMetaInfo that can be used to access metadata. [transfer none]
	 */
	public static GstMetaInfo* register(GType api, string impl, gsize size, GstMetaInitFunction initFunc, GstMetaFreeFunction freeFunc, GstMetaTransformFunction transformFunc)
	{
		// const GstMetaInfo * gst_meta_register (GType api,  const gchar *impl,  gsize size,  GstMetaInitFunction init_func,  GstMetaFreeFunction free_func,  GstMetaTransformFunction transform_func);
		return gst_meta_register(api, Str.toStringz(impl), size, initFunc, freeFunc, transformFunc);
	}
	
	/**
	 * Lookup a previously registered meta info structure by its implementation name
	 * impl.
	 * Params:
	 * impl = the name
	 * Returns: a GstMetaInfo with impl, or NULL when no such metainfo exists. [transfer none]
	 */
	public static GstMetaInfo* getInfo(string impl)
	{
		// const GstMetaInfo * gst_meta_get_info (const gchar *impl);
		return gst_meta_get_info(Str.toStringz(impl));
	}
}
