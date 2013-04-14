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
 * inFile  = GstRegistry.html
 * outPack = gstreamer
 * outFile = Registry
 * strct   = GstRegistry
 * realStrct=
 * ctorStrct=
 * clss    = Registry
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_registry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.Plugin
 * 	- gstreamer.PluginFeature
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstPlugin* -> Plugin
 * 	- GstPluginFeature* -> PluginFeature
 * 	- GstRegistry* -> Registry
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Registry;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gstreamer.Plugin;
private import gstreamer.PluginFeature;



private import gstreamer.ObjectGst;

/**
 * One registry holds the metadata of a set of plugins.
 *
 * Design:
 *
 * The GstRegistry object is a list of plugins and some functions for dealing
 * with them. Each GstPlugin is matched 1-1 with a file on disk, and may or may
 * not be loaded at a given time.
 *
 * The primary source, at all times, of plugin information is each plugin file
 * itself. Thus, if an application wants information about a particular plugin,
 * or wants to search for a feature that satisfies given criteria, the primary
 * means of doing so is to load every plugin and look at the resulting
 * information that is gathered in the default registry. Clearly, this is a time
 * consuming process, so we cache information in the registry file. The format
 * and location of the cache file is internal to gstreamer.
 *
 * On startup, plugins are searched for in the plugin search path. The following
 * locations are checked in this order:
 *
 * location from --gst-plugin-path commandline option.
 *
 * the GST_PLUGIN_PATH environment variable.
 *
 * the GST_PLUGIN_SYSTEM_PATH environment variable.
 *
 * default locations (if GST_PLUGIN_SYSTEM_PATH is not set). Those
 *  default locations are:
 *  ~/.gstreamer-$GST_API_VERSION/plugins/
 *  and $prefix/libs/gstreamer-$GST_API_VERSION/.
 *
 * The registry cache file is loaded from
 * ~/.gstreamer-$GST_API_VERSION/registry-$ARCH.bin or the
 * file listed in the GST_REGISTRY env var. One reason to change the registry
 * location is for testing.
 *
 * For each plugin that is found in the plugin search path, there could be 3
 * possibilities for cached information:
 *
 * the cache may not contain information about a given file.
 *
 * the cache may have stale information.
 *
 * the cache may have current information.
 *
 * In the first two cases, the plugin is loaded and the cache updated. In
 * addition to these cases, the cache may have entries for plugins that are not
 * relevant to the current process. These are marked as not available to the
 * current process. If the cache is updated for whatever reason, it is marked
 * dirty.
 *
 * A dirty cache is written out at the end of initialization. Each entry is
 * checked to make sure the information is minimally valid. If not, the entry is
 * simply dropped.
 *
 * Implementation notes:
 *
 * The "cache" and "registry" are different concepts and can represent
 * different sets of plugins. For various reasons, at init time, the cache is
 * stored in the default registry, and plugins not relevant to the current
 * process are marked with the GST_PLUGIN_FLAG_CACHED bit. These plugins are
 * removed at the end of initialization.
 *
 * Last reviewed on 2012-03-29 (0.11.3)
 */
public class Registry : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstRegistry* gstRegistry;
	
	
	public GstRegistry* getRegistryStruct()
	{
		return gstRegistry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstRegistry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstRegistry* gstRegistry)
	{
		super(cast(GstObject*)gstRegistry);
		this.gstRegistry = gstRegistry;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstRegistry = cast(GstRegistry*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(PluginFeature, Registry)[] onFeatureAddedListeners;
	/**
	 * Signals that a feature has been added to the registry (possibly
	 * replacing a previously-added one by the same name)
	 */
	void addOnFeatureAdded(void delegate(PluginFeature, Registry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("feature-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"feature-added",
			cast(GCallback)&callBackFeatureAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["feature-added"] = 1;
		}
		onFeatureAddedListeners ~= dlg;
	}
	extern(C) static void callBackFeatureAdded(GstRegistry* registryStruct, GstPluginFeature* feature, Registry _registry)
	{
		foreach ( void delegate(PluginFeature, Registry) dlg ; _registry.onFeatureAddedListeners )
		{
			dlg(ObjectG.getDObject!(PluginFeature)(feature), _registry);
		}
	}
	
	void delegate(Plugin, Registry)[] onPluginAddedListeners;
	/**
	 * Signals that a plugin has been added to the registry (possibly
	 * replacing a previously-added one by the same name)
	 * See Also
	 * GstPlugin, GstPluginFeature
	 */
	void addOnPluginAdded(void delegate(Plugin, Registry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("plugin-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"plugin-added",
			cast(GCallback)&callBackPluginAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["plugin-added"] = 1;
		}
		onPluginAddedListeners ~= dlg;
	}
	extern(C) static void callBackPluginAdded(GstRegistry* registryStruct, GstPlugin* plugin, Registry _registry)
	{
		foreach ( void delegate(Plugin, Registry) dlg ; _registry.onPluginAddedListeners )
		{
			dlg(ObjectG.getDObject!(Plugin)(plugin), _registry);
		}
	}
	
	
	/**
	 * Retrieves the singleton plugin registry. The caller does not own a
	 * reference on the registry, as it is alive as long as GStreamer is
	 * initialized.
	 * Returns: the GstRegistry. [transfer none]
	 */
	public static Registry get()
	{
		// GstRegistry * gst_registry_get (void);
		auto p = gst_registry_get();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Registry)(cast(GstRegistry*) p);
	}
	
	/**
	 * Retrieves a GList of GstPluginFeature of type.
	 * Params:
	 * type = a GType.
	 * Returns: a GList of GstPluginFeature of type. Use gst_plugin_feature_list_free() after use MT safe. [transfer full][element-type Gst.PluginFeature]
	 */
	public ListG getFeatureList(GType type)
	{
		// GList * gst_registry_get_feature_list (GstRegistry *registry,  GType type);
		auto p = gst_registry_get_feature_list(gstRegistry, type);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Returns the registrys feature list cookie. This changes
	 * every time a feature is added or removed from the registry.
	 * Returns: the feature list cookie.
	 */
	public uint getFeatureListCookie()
	{
		// guint32 gst_registry_get_feature_list_cookie  (GstRegistry *registry);
		return gst_registry_get_feature_list_cookie(gstRegistry);
	}
	
	/**
	 * Retrieves a GList of features of the plugin with name name.
	 * Params:
	 * name = a plugin name.
	 * Returns: a GList of GstPluginFeature. Use gst_plugin_feature_list_free() after usage. [transfer full][element-type Gst.PluginFeature]
	 */
	public ListG getFeatureListByPlugin(string name)
	{
		// GList * gst_registry_get_feature_list_by_plugin  (GstRegistry *registry,  const gchar *name);
		auto p = gst_registry_get_feature_list_by_plugin(gstRegistry, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Get a copy of all plugins registered in the given registry. The refcount
	 * of each element in the list in incremented.
	 * Returns: a GList of GstPlugin. Use gst_plugin_list_free() after usage. MT safe. [transfer full][element-type Gst.Plugin]
	 */
	public ListG getPluginList()
	{
		// GList * gst_registry_get_plugin_list (GstRegistry *registry);
		auto p = gst_registry_get_plugin_list(gstRegistry);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Add the plugin to the registry. The plugin-added signal will be emitted.
	 * This function will sink plugin.
	 * Params:
	 * plugin = the plugin to add. [transfer full]
	 * Returns: TRUE on success. MT safe.
	 */
	public int addPlugin(Plugin plugin)
	{
		// gboolean gst_registry_add_plugin (GstRegistry *registry,  GstPlugin *plugin);
		return gst_registry_add_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct());
	}
	
	/**
	 * Remove the plugin from the registry.
	 * MT safe.
	 * Params:
	 * plugin = the plugin to remove. [transfer none]
	 */
	public void removePlugin(Plugin plugin)
	{
		// void gst_registry_remove_plugin (GstRegistry *registry,  GstPlugin *plugin);
		gst_registry_remove_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct());
	}
	
	/**
	 * Runs a filter against all plugins in the registry and returns a GList with
	 * the results. If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 * Every plugin is reffed; use gst_plugin_list_free() after use, which
	 * will unref again.
	 * Params:
	 * filter = the filter to use. [scope call]
	 * first = only return first match
	 * userData = user data passed to the filter function. [closure]
	 * Returns: a GList of GstPlugin. Use gst_plugin_list_free() after usage. MT safe. [transfer full][element-type Gst.Plugin]
	 */
	public ListG pluginFilter(GstPluginFilter filter, int first, void* userData)
	{
		// GList * gst_registry_plugin_filter (GstRegistry *registry,  GstPluginFilter filter,  gboolean first,  gpointer user_data);
		auto p = gst_registry_plugin_filter(gstRegistry, filter, first, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Runs a filter against all features of the plugins in the registry
	 * and returns a GList with the results.
	 * If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 * Params:
	 * filter = the filter to use. [scope call]
	 * first = only return first match
	 * userData = user data passed to the filter function. [closure]
	 * Returns: a GList of GstPluginFeature. Use gst_plugin_feature_list_free() after usage. MT safe. [transfer full][element-type Gst.PluginFeature]
	 */
	public ListG featureFilter(GstPluginFeatureFilter filter, int first, void* userData)
	{
		// GList * gst_registry_feature_filter (GstRegistry *registry,  GstPluginFeatureFilter filter,  gboolean first,  gpointer user_data);
		auto p = gst_registry_feature_filter(gstRegistry, filter, first, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Find the plugin with the given name in the registry.
	 * The plugin will be reffed; caller is responsible for unreffing.
	 * Params:
	 * name = the plugin name to find
	 * Returns: the plugin with the given name or NULL if the plugin was not found. gst_object_unref() after usage. MT safe. [transfer full]
	 */
	public Plugin findPlugin(string name)
	{
		// GstPlugin * gst_registry_find_plugin (GstRegistry *registry,  const gchar *name);
		auto p = gst_registry_find_plugin(gstRegistry, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) p);
	}
	
	/**
	 * Find the pluginfeature with the given name and type in the registry.
	 * Params:
	 * name = the pluginfeature name to find
	 * type = the pluginfeature type to find
	 * Returns: the pluginfeature with the given name and type or NULL if the plugin was not found. gst_object_unref() after usage. MT safe. [transfer full]
	 */
	public PluginFeature findFeature(string name, GType type)
	{
		// GstPluginFeature * gst_registry_find_feature (GstRegistry *registry,  const gchar *name,  GType type);
		auto p = gst_registry_find_feature(gstRegistry, Str.toStringz(name), type);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) p);
	}
	
	/**
	 * Find a GstPluginFeature with name in registry.
	 * Params:
	 * name = a GstPluginFeature name
	 * Returns: a GstPluginFeature with its refcount incremented, use gst_object_unref() after usage. MT safe. [transfer full]
	 */
	public PluginFeature lookupFeature(string name)
	{
		// GstPluginFeature * gst_registry_lookup_feature (GstRegistry *registry,  const char *name);
		auto p = gst_registry_lookup_feature(gstRegistry, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) p);
	}
	
	/**
	 * Scan the given path for plugins to add to the registry. The syntax of the
	 * path is specific to the registry.
	 * Params:
	 * path = the path to scan
	 * Returns: TRUE if registry changed
	 */
	public int scanPath(string path)
	{
		// gboolean gst_registry_scan_path (GstRegistry *registry,  const gchar *path);
		return gst_registry_scan_path(gstRegistry, Str.toStringz(path));
	}
	
	/**
	 * Look up a plugin in the given registry with the given filename.
	 * If found, plugin is reffed.
	 * Params:
	 * filename = the name of the file to look up
	 * Returns: the GstPlugin if found, or NULL if not. gst_object_unref() after usage. [transfer full]
	 */
	public Plugin lookup(string filename)
	{
		// GstPlugin * gst_registry_lookup (GstRegistry *registry,  const char *filename);
		auto p = gst_registry_lookup(gstRegistry, Str.toStringz(filename));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) p);
	}
	
	/**
	 * Remove the feature from the registry.
	 * MT safe.
	 * Params:
	 * feature = the feature to remove. [transfer none]
	 */
	public void removeFeature(PluginFeature feature)
	{
		// void gst_registry_remove_feature (GstRegistry *registry,  GstPluginFeature *feature);
		gst_registry_remove_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct());
	}
	
	/**
	 * Add the feature to the registry. The feature-added signal will be emitted.
	 * This function sinks feature.
	 * Params:
	 * feature = the feature to add. [transfer full]
	 * Returns: TRUE on success. MT safe.
	 */
	public int addFeature(PluginFeature feature)
	{
		// gboolean gst_registry_add_feature (GstRegistry *registry,  GstPluginFeature *feature);
		return gst_registry_add_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct());
	}
	
	/**
	 * Checks whether a plugin feature by the given name exists in
	 * registry and whether its version is at least the
	 * version required.
	 * Params:
	 * featureName = the name of the feature (e.g. "oggdemux")
	 * minMajor = the minimum major version number
	 * minMinor = the minimum minor version number
	 * minMicro = the minimum micro version number
	 * feature = the feature that has been added
	 * Returns: TRUE if the feature could be found and the version is the same as the required version or newer, and FALSE otherwise. Signal Details The "feature-added" signal void user_function (GstRegistry *registry, GstPluginFeature *feature, gpointer user_data) : Run Last Signals that a feature has been added to the registry (possibly replacing a previously-added one by the same name)
	 */
	public int checkFeatureVersion(string featureName, uint minMajor, uint minMinor, uint minMicro)
	{
		// gboolean gst_registry_check_feature_version (GstRegistry *registry,  const gchar *feature_name,  guint min_major,  guint min_minor,  guint min_micro);
		return gst_registry_check_feature_version(gstRegistry, Str.toStringz(featureName), minMajor, minMinor, minMicro);
	}
}
