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
 * inFile  = GstPluginFeature.html
 * outPack = gstreamer
 * outFile = PluginFeature
 * strct   = GstPluginFeature
 * realStrct=
 * ctorStrct=
 * clss    = PluginFeature
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_plugin_feature_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.Plugin
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstPlugin* -> Plugin
 * 	- GstPluginFeature* -> PluginFeature
 * module aliases:
 * local aliases:
 * 	- setName -> setFeatureName
 * overrides:
 * 	- getName
 */

module gstreamer.PluginFeature;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gstreamer.Plugin;



private import gstreamer.ObjectGst;

/**
 * This is a base class for anything that can be added to a GstPlugin.
 */
public class PluginFeature : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPluginFeature* gstPluginFeature;
	
	
	public GstPluginFeature* getPluginFeatureStruct()
	{
		return gstPluginFeature;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPluginFeature;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPluginFeature* gstPluginFeature)
	{
		super(cast(GstObject*)gstPluginFeature);
		this.gstPluginFeature = gstPluginFeature;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstPluginFeature = cast(GstPluginFeature*)obj;
	}
	
	/**
	 */
	
	/**
	 * Specifies a rank for a plugin feature, so that autoplugging uses
	 * the most appropriate feature.
	 * Params:
	 * rank = rank value - higher number means more priority rank
	 */
	public void setRank(uint rank)
	{
		// void gst_plugin_feature_set_rank (GstPluginFeature *feature,  guint rank);
		gst_plugin_feature_set_rank(gstPluginFeature, rank);
	}
	
	/**
	 * Gets the rank of a plugin feature.
	 * Returns: The rank of the feature
	 */
	public uint getRank()
	{
		// guint gst_plugin_feature_get_rank (GstPluginFeature *feature);
		return gst_plugin_feature_get_rank(gstPluginFeature);
	}
	
	/**
	 * Get the plugin that provides this feature.
	 * Returns: the plugin that provides this feature, or NULL. Unref with gst_object_unref() when no longer needed. [transfer full]
	 */
	public Plugin getPlugin()
	{
		// GstPlugin * gst_plugin_feature_get_plugin (GstPluginFeature *feature);
		auto p = gst_plugin_feature_get_plugin(gstPluginFeature);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) p);
	}
	
	/**
	 * Loads the plugin containing feature if it's not already loaded. feature is
	 * unaffected; use the return value instead.
	 * Returns: a reference to the loaded feature, or NULL on error. [transfer full]
	 */
	public PluginFeature load()
	{
		// GstPluginFeature * gst_plugin_feature_load (GstPluginFeature *feature);
		auto p = gst_plugin_feature_load(gstPluginFeature);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) p);
	}
	
	/**
	 * Copies the list of features. Caller should call gst_plugin_feature_list_free
	 * when done with the list.
	 * Params:
	 * list = list
	 * of GstPluginFeature. [transfer none][element-type Gst.PluginFeature]
	 * Returns: a copy of list, with each feature's reference count incremented. [transfer full][element-type Gst.PluginFeature]
	 */
	public static ListG listCopy(ListG list)
	{
		// GList * gst_plugin_feature_list_copy (GList *list);
		auto p = gst_plugin_feature_list_copy((list is null) ? null : list.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Unrefs each member of list, then frees the list.
	 * Params:
	 * list = list
	 * of GstPluginFeature. [transfer full][element-type Gst.PluginFeature]
	 */
	public static void listFree(ListG list)
	{
		// void gst_plugin_feature_list_free (GList *list);
		gst_plugin_feature_list_free((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Checks whether the given plugin feature is at least
	 *  the required version
	 * Params:
	 * minMajor = minimum required major version
	 * minMinor = minimum required minor version
	 * minMicro = minimum required micro version
	 * Returns: TRUE if the plugin feature has at least the required version, otherwise FALSE.
	 */
	public int checkVersion(uint minMajor, uint minMinor, uint minMicro)
	{
		// gboolean gst_plugin_feature_check_version (GstPluginFeature *feature,  guint min_major,  guint min_minor,  guint min_micro);
		return gst_plugin_feature_check_version(gstPluginFeature, minMajor, minMinor, minMicro);
	}
	
	/**
	 * Compares the two given GstPluginFeature instances. This function can be
	 * used as a GCompareFunc when sorting by rank and then by name.
	 * Params:
	 * p1 = a GstPluginFeature
	 * p2 = a GstPluginFeature
	 * Returns: negative value if the rank of p1 > the rank of p2 or the ranks are equal but the name of p1 comes before the name of p2; zero if the rank and names are equal; positive value if the rank of p1 < the rank of p2 or the ranks are equal but the name of p2 comes after the name of p1
	 */
	public static int rankCompareFunc(void* p1, void* p2)
	{
		// gint gst_plugin_feature_rank_compare_func  (gconstpointer p1,  gconstpointer p2);
		return gst_plugin_feature_rank_compare_func(p1, p2);
	}
}
