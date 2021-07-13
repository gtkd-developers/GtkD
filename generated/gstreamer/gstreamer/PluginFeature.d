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


module gstreamer.PluginFeature;

private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.ObjectGst;
private import gstreamer.Plugin;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * This is a base class for anything that can be added to a #GstPlugin.
 */
public class PluginFeature : ObjectGst
{
	/** the main Gtk struct */
	protected GstPluginFeature* gstPluginFeature;

	/** Get the main Gtk struct */
	public GstPluginFeature* getPluginFeatureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPluginFeature;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPluginFeature;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPluginFeature* gstPluginFeature, bool ownedRef = false)
	{
		this.gstPluginFeature = gstPluginFeature;
		super(cast(GstObject*)gstPluginFeature, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_plugin_feature_get_type();
	}

	/**
	 * Copies the list of features. Caller should call @gst_plugin_feature_list_free
	 * when done with the list.
	 *
	 * Params:
	 *     list = list
	 *         of #GstPluginFeature
	 *
	 * Returns: a copy of @list,
	 *     with each feature's reference count incremented.
	 */
	public static ListG listCopy(ListG list)
	{
		auto __p = gst_plugin_feature_list_copy((list is null) ? null : list.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Debug the plugin feature names in @list.
	 *
	 * Params:
	 *     list = a #GList of
	 *         plugin features
	 */
	public static void listDebug(ListG list)
	{
		gst_plugin_feature_list_debug((list is null) ? null : list.getListGStruct());
	}

	/**
	 * Unrefs each member of @list, then frees the list.
	 *
	 * Params:
	 *     list = list
	 *         of #GstPluginFeature
	 */
	public static void listFree(ListG list)
	{
		gst_plugin_feature_list_free((list is null) ? null : list.getListGStruct());
	}

	/**
	 * Compares the two given #GstPluginFeature instances. This function can be
	 * used as a #GCompareFunc when sorting by rank and then by name.
	 *
	 * Params:
	 *     p1 = a #GstPluginFeature
	 *     p2 = a #GstPluginFeature
	 *
	 * Returns: negative value if the rank of p1 > the rank of p2 or the ranks are
	 *     equal but the name of p1 comes before the name of p2; zero if the rank
	 *     and names are equal; positive value if the rank of p1 < the rank of p2 or the
	 *     ranks are equal but the name of p2 comes before the name of p1
	 */
	public static int rankCompareFunc(void* p1, void* p2)
	{
		return gst_plugin_feature_rank_compare_func(p1, p2);
	}

	/**
	 * Checks whether the given plugin feature is at least
	 * the required version
	 *
	 * Params:
	 *     minMajor = minimum required major version
	 *     minMinor = minimum required minor version
	 *     minMicro = minimum required micro version
	 *
	 * Returns: %TRUE if the plugin feature has at least
	 *     the required version, otherwise %FALSE.
	 */
	public bool checkVersion(uint minMajor, uint minMinor, uint minMicro)
	{
		return gst_plugin_feature_check_version(gstPluginFeature, minMajor, minMinor, minMicro) != 0;
	}

	/**
	 * Get the plugin that provides this feature.
	 *
	 * Returns: the plugin that provides this
	 *     feature, or %NULL.  Unref with gst_object_unref() when no
	 *     longer needed.
	 */
	public Plugin getPlugin()
	{
		auto __p = gst_plugin_feature_get_plugin(gstPluginFeature);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Get the name of the plugin that provides this feature.
	 *
	 * Returns: the name of the plugin that provides this
	 *     feature, or %NULL if the feature is not associated with a
	 *     plugin.
	 *
	 * Since: 1.2
	 */
	public string getPluginName()
	{
		return Str.toString(gst_plugin_feature_get_plugin_name(gstPluginFeature));
	}

	/**
	 * Gets the rank of a plugin feature.
	 *
	 * Returns: The rank of the feature
	 */
	public uint getRank()
	{
		return gst_plugin_feature_get_rank(gstPluginFeature);
	}

	/**
	 * Loads the plugin containing @feature if it's not already loaded. @feature is
	 * unaffected; use the return value instead.
	 *
	 * Normally this function is used like this:
	 * |[<!-- language="C" -->
	 * GstPluginFeature *loaded_feature;
	 *
	 * loaded_feature = gst_plugin_feature_load (feature);
	 * // presumably, we're no longer interested in the potentially-unloaded feature
	 * gst_object_unref (feature);
	 * feature = loaded_feature;
	 * ]|
	 *
	 * Returns: a reference to the loaded
	 *     feature, or %NULL on error
	 */
	public PluginFeature load()
	{
		auto __p = gst_plugin_feature_load(gstPluginFeature);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) __p, true);
	}

	/**
	 * Specifies a rank for a plugin feature, so that autoplugging uses
	 * the most appropriate feature.
	 *
	 * Params:
	 *     rank = rank value - higher number means more priority rank
	 */
	public void setRank(uint rank)
	{
		gst_plugin_feature_set_rank(gstPluginFeature, rank);
	}
}
