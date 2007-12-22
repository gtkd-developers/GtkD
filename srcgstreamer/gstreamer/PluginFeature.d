/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_plugin_feature_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_plugin_feature_set_name
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstPluginFeature* -> PluginFeature
 * module aliases:
 * local aliases:
 */

module gstreamer.PluginFeature;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import glib.ListG;




/**
 * Description
 * This is a base class for anything that can be added to a GstPlugin.
 */
private import gstreamer.ObjectGst;
public class PluginFeature : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPluginFeature* gstPluginFeature;
	
	
	public GstPluginFeature* getPluginFeatureStruct()
	{
		return gstPluginFeature;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPluginFeature;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPluginFeature* gstPluginFeature)
	{
		version(noAssert)
		{
			if ( gstPluginFeature is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstPluginFeature is null on constructor").newline;
				}
				else
				{
					printf("struct gstPluginFeature is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstPluginFeature !is null, "struct gstPluginFeature is null on constructor");
		}
		super(cast(GstObject*)gstPluginFeature);
		this.gstPluginFeature = gstPluginFeature;
	}
	
	/**
	 * Sets the name of a plugin feature. The name uniquely identifies a feature
	 * within all features of the same type. Renaming a plugin feature is not
	 * allowed. A copy is made of the name so you should free the supplied name
	 * after calling this function.
	 * feature:
	 *  a feature
	 * name:
	 *  the name to set
	 */
	public void setFeatureName(char[] name)
	{
		// void gst_plugin_feature_set_name (GstPluginFeature *feature,  const gchar *name);
		gst_plugin_feature_set_name(gstPluginFeature, Str.toStringz(name));
	}
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Compares type and name of plugin feature. Can be used with gst_filter_run().
	 * feature:
	 *  the GstPluginFeature
	 * data:
	 *  the type and name to check against
	 * Returns:
	 *  TRUE if equal.
	 */
	public int typeNameFilter(GstTypeNameData* data)
	{
		// gboolean gst_plugin_feature_type_name_filter  (GstPluginFeature *feature,  GstTypeNameData *data);
		return gst_plugin_feature_type_name_filter(gstPluginFeature, data);
	}
	
	/**
	 * Specifies a rank for a plugin feature, so that autoplugging uses
	 * the most appropriate feature.
	 * feature:
	 *  feature to rank
	 * rank:
	 *  rank value - higher number means more priority rank
	 */
	public void setRank(uint rank)
	{
		// void gst_plugin_feature_set_rank (GstPluginFeature *feature,  guint rank);
		gst_plugin_feature_set_rank(gstPluginFeature, rank);
	}
	
	
	/**
	 * Gets the rank of a plugin feature.
	 * feature:
	 *  a feature
	 * Returns:
	 *  The rank of the feature
	 */
	public uint getRank()
	{
		// guint gst_plugin_feature_get_rank (GstPluginFeature *feature);
		return gst_plugin_feature_get_rank(gstPluginFeature);
	}
	
	/**
	 * Gets the name of a plugin feature.
	 * feature:
	 *  a feature
	 * Returns:
	 *  the name
	 */
	public char[] getName()
	{
		// const gchar* gst_plugin_feature_get_name (GstPluginFeature *feature);
		return Str.toString(gst_plugin_feature_get_name(gstPluginFeature) );
	}
	
	/**
	 * Loads the plugin containing feature if it's not already loaded. feature is
	 * unaffected; use the return value instead.
	 * Normally this function is used like this:
	 * GstPluginFeature *loaded_feature;
	 * loaded_feature = gst_plugin_feature_load (feature);
	 * // presumably, we're no longer interested in the potentially-unloaded feature
	 * gst_object_unref (feature);
	 * feature = loaded_feature;
	 * feature:
	 *  the plugin feature to check
	 * Returns:
	 *  A reference to the loaded feature, or NULL on error.
	 */
	public PluginFeature load()
	{
		// GstPluginFeature* gst_plugin_feature_load (GstPluginFeature *feature);
		return new PluginFeature( gst_plugin_feature_load(gstPluginFeature) );
	}
	
	/**
	 * Unrefs each member of list, then frees the list.
	 * list:
	 *  list of GstPluginFeature
	 */
	public static void listFree(ListG list)
	{
		// void gst_plugin_feature_list_free (GList *list);
		gst_plugin_feature_list_free((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Checks whether the given plugin feature is at least
	 *  the required version
	 * feature:
	 *  a feature
	 * min_major:
	 *  minimum required major version
	 * min_minor:
	 *  minimum required minor version
	 * min_micro:
	 *  minimum required micro version
	 * Returns:
	 *  TRUE if the plugin feature has at least
	 *  the required version, otherwise FALSE.
	 * See Also
	 * GstPlugin
	 */
	public int checkVersion(uint minMajor, uint minMinor, uint minMicro)
	{
		// gboolean gst_plugin_feature_check_version  (GstPluginFeature *feature,  guint min_major,  guint min_minor,  guint min_micro);
		return gst_plugin_feature_check_version(gstPluginFeature, minMajor, minMinor, minMicro);
	}
}
