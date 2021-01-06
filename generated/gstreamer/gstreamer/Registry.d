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


module gstreamer.Registry;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.ObjectGst;
private import gstreamer.Plugin;
private import gstreamer.PluginFeature;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
private import std.algorithm;


/**
 * One registry holds the metadata of a set of plugins.
 * 
 * <emphasis role="bold">Design:</emphasis>
 * 
 * The #GstRegistry object is a list of plugins and some functions for dealing
 * with them. Each #GstPlugin is matched 1-1 with a file on disk, and may or may
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
 * * location from --gst-plugin-path commandline option.
 * * the GST_PLUGIN_PATH environment variable.
 * * the GST_PLUGIN_SYSTEM_PATH environment variable.
 * * default locations (if GST_PLUGIN_SYSTEM_PATH is not set).
 * Those default locations are:
 * `$XDG_DATA_HOME/gstreamer-$GST_API_VERSION/plugins/`
 * and `$prefix/libs/gstreamer-$GST_API_VERSION/`.
 * [$XDG_DATA_HOME](http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html) defaults to
 * `$HOME/.local/share`.
 * 
 * The registry cache file is loaded from
 * `$XDG_CACHE_HOME/gstreamer-$GST_API_VERSION/registry-$ARCH.bin`
 * (where $XDG_CACHE_HOME defaults to `$HOME/.cache`) or the file listed in the `GST_REGISTRY`
 * env var. One reason to change the registry location is for testing.
 * 
 * For each plugin that is found in the plugin search path, there could be 3
 * possibilities for cached information:
 * 
 * * the cache may not contain information about a given file.
 * * the cache may have stale information.
 * * the cache may have current information.
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
 * ## Implementation notes:
 * 
 * The "cache" and "registry" are different concepts and can represent
 * different sets of plugins. For various reasons, at init time, the cache is
 * stored in the default registry, and plugins not relevant to the current
 * process are marked with the %GST_PLUGIN_FLAG_CACHED bit. These plugins are
 * removed at the end of initialization.
 */
public class Registry : ObjectGst
{
	/** the main Gtk struct */
	protected GstRegistry* gstRegistry;

	/** Get the main Gtk struct */
	public GstRegistry* getRegistryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstRegistry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstRegistry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstRegistry* gstRegistry, bool ownedRef = false)
	{
		this.gstRegistry = gstRegistry;
		super(cast(GstObject*)gstRegistry, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_registry_get_type();
	}

	/**
	 * By default GStreamer will perform scanning and rebuilding of the
	 * registry file using a helper child process.
	 *
	 * Applications might want to disable this behaviour with the
	 * gst_registry_fork_set_enabled() function, in which case new plugins
	 * are scanned (and loaded) into the application process.
	 *
	 * Returns: %TRUE if GStreamer will use the child helper process when
	 *     rebuilding the registry.
	 */
	public static bool forkIsEnabled()
	{
		return gst_registry_fork_is_enabled() != 0;
	}

	/**
	 * Applications might want to disable/enable spawning of a child helper process
	 * when rebuilding the registry. See gst_registry_fork_is_enabled() for more
	 * information.
	 *
	 * Params:
	 *     enabled = whether rebuilding the registry can use a temporary child helper process.
	 */
	public static void forkSetEnabled(bool enabled)
	{
		gst_registry_fork_set_enabled(enabled);
	}

	/**
	 * Retrieves the singleton plugin registry. The caller does not own a
	 * reference on the registry, as it is alive as long as GStreamer is
	 * initialized.
	 *
	 * Returns: the #GstRegistry.
	 */
	public static Registry get()
	{
		auto __p = gst_registry_get();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Registry)(cast(GstRegistry*) __p);
	}

	/**
	 * Add the feature to the registry. The feature-added signal will be emitted.
	 *
	 * @feature's reference count will be incremented, and any floating
	 * reference will be removed (see gst_object_ref_sink())
	 *
	 * Params:
	 *     feature = the feature to add
	 *
	 * Returns: %TRUE on success.
	 *
	 *     MT safe.
	 */
	public bool addFeature(PluginFeature feature)
	{
		return gst_registry_add_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct()) != 0;
	}

	/**
	 * Add the plugin to the registry. The plugin-added signal will be emitted.
	 *
	 * @plugin's reference count will be incremented, and any floating
	 * reference will be removed (see gst_object_ref_sink())
	 *
	 * Params:
	 *     plugin = the plugin to add
	 *
	 * Returns: %TRUE on success.
	 *
	 *     MT safe.
	 */
	public bool addPlugin(Plugin plugin)
	{
		return gst_registry_add_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct()) != 0;
	}

	/**
	 * Checks whether a plugin feature by the given name exists in
	 * @registry and whether its version is at least the
	 * version required.
	 *
	 * Params:
	 *     featureName = the name of the feature (e.g. "oggdemux")
	 *     minMajor = the minimum major version number
	 *     minMinor = the minimum minor version number
	 *     minMicro = the minimum micro version number
	 *
	 * Returns: %TRUE if the feature could be found and the version is
	 *     the same as the required version or newer, and %FALSE otherwise.
	 */
	public bool checkFeatureVersion(string featureName, uint minMajor, uint minMinor, uint minMicro)
	{
		return gst_registry_check_feature_version(gstRegistry, Str.toStringz(featureName), minMajor, minMinor, minMicro) != 0;
	}

	/**
	 * Runs a filter against all features of the plugins in the registry
	 * and returns a GList with the results.
	 * If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 *
	 * Params:
	 *     filter = the filter to use
	 *     first = only return first match
	 *     userData = user data passed to the filter function
	 *
	 * Returns: a #GList of
	 *     #GstPluginFeature. Use gst_plugin_feature_list_free() after usage.
	 *
	 *     MT safe.
	 */
	public ListG featureFilter(GstPluginFeatureFilter filter, bool first, void* userData)
	{
		auto __p = gst_registry_feature_filter(gstRegistry, filter, first, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Find the pluginfeature with the given name and type in the registry.
	 *
	 * Params:
	 *     name = the pluginfeature name to find
	 *     type = the pluginfeature type to find
	 *
	 * Returns: the pluginfeature with the
	 *     given name and type or %NULL if the plugin was not
	 *     found. gst_object_unref() after usage.
	 *
	 *     MT safe.
	 */
	public PluginFeature findFeature(string name, GType type)
	{
		auto __p = gst_registry_find_feature(gstRegistry, Str.toStringz(name), type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) __p, true);
	}

	/**
	 * Find the plugin with the given name in the registry.
	 * The plugin will be reffed; caller is responsible for unreffing.
	 *
	 * Params:
	 *     name = the plugin name to find
	 *
	 * Returns: the plugin with the given name
	 *     or %NULL if the plugin was not found. gst_object_unref() after
	 *     usage.
	 *
	 *     MT safe.
	 */
	public Plugin findPlugin(string name)
	{
		auto __p = gst_registry_find_plugin(gstRegistry, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Retrieves a #GList of #GstPluginFeature of @type.
	 *
	 * Params:
	 *     type = a #GType.
	 *
	 * Returns: a #GList of
	 *     #GstPluginFeature of @type. Use gst_plugin_feature_list_free() after use
	 *
	 *     MT safe.
	 */
	public ListG getFeatureList(GType type)
	{
		auto __p = gst_registry_get_feature_list(gstRegistry, type);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Retrieves a #GList of features of the plugin with name @name.
	 *
	 * Params:
	 *     name = a plugin name.
	 *
	 * Returns: a #GList of
	 *     #GstPluginFeature. Use gst_plugin_feature_list_free() after usage.
	 */
	public ListG getFeatureListByPlugin(string name)
	{
		auto __p = gst_registry_get_feature_list_by_plugin(gstRegistry, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Returns the registry's feature list cookie. This changes
	 * every time a feature is added or removed from the registry.
	 *
	 * Returns: the feature list cookie.
	 */
	public uint getFeatureListCookie()
	{
		return gst_registry_get_feature_list_cookie(gstRegistry);
	}

	/**
	 * Get a copy of all plugins registered in the given registry. The refcount
	 * of each element in the list in incremented.
	 *
	 * Returns: a #GList of #GstPlugin.
	 *     Use gst_plugin_list_free() after usage.
	 *
	 *     MT safe.
	 */
	public ListG getPluginList()
	{
		auto __p = gst_registry_get_plugin_list(gstRegistry);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Look up a plugin in the given registry with the given filename.
	 * If found, plugin is reffed.
	 *
	 * Params:
	 *     filename = the name of the file to look up
	 *
	 * Returns: the #GstPlugin if found, or
	 *     %NULL if not.  gst_object_unref() after usage.
	 */
	public Plugin lookup(string filename)
	{
		auto __p = gst_registry_lookup(gstRegistry, Str.toStringz(filename));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Find a #GstPluginFeature with @name in @registry.
	 *
	 * Params:
	 *     name = a #GstPluginFeature name
	 *
	 * Returns: a #GstPluginFeature with its refcount incremented,
	 *     use gst_object_unref() after usage.
	 *
	 *     MT safe.
	 */
	public PluginFeature lookupFeature(string name)
	{
		auto __p = gst_registry_lookup_feature(gstRegistry, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PluginFeature)(cast(GstPluginFeature*) __p, true);
	}

	/**
	 * Runs a filter against all plugins in the registry and returns a #GList with
	 * the results. If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 * Every plugin is reffed; use gst_plugin_list_free() after use, which
	 * will unref again.
	 *
	 * Params:
	 *     filter = the filter to use
	 *     first = only return first match
	 *     userData = user data passed to the filter function
	 *
	 * Returns: a #GList of #GstPlugin.
	 *     Use gst_plugin_list_free() after usage.
	 *
	 *     MT safe.
	 */
	public ListG pluginFilter(GstPluginFilter filter, bool first, void* userData)
	{
		auto __p = gst_registry_plugin_filter(gstRegistry, filter, first, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Remove the feature from the registry.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     feature = the feature to remove
	 */
	public void removeFeature(PluginFeature feature)
	{
		gst_registry_remove_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct());
	}

	/**
	 * Remove the plugin from the registry.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     plugin = the plugin to remove
	 */
	public void removePlugin(Plugin plugin)
	{
		gst_registry_remove_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct());
	}

	/**
	 * Scan the given path for plugins to add to the registry. The syntax of the
	 * path is specific to the registry.
	 *
	 * Params:
	 *     path = the path to scan
	 *
	 * Returns: %TRUE if registry changed
	 */
	public bool scanPath(string path)
	{
		return gst_registry_scan_path(gstRegistry, Str.toStringz(path)) != 0;
	}

	/**
	 * Signals that a feature has been added to the registry (possibly
	 * replacing a previously-added one by the same name)
	 *
	 * Params:
	 *     feature = the feature that has been added
	 */
	gulong addOnFeatureAdded(void delegate(PluginFeature, Registry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "feature-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that a plugin has been added to the registry (possibly
	 * replacing a previously-added one by the same name)
	 *
	 * Params:
	 *     plugin = the plugin that has been added
	 */
	gulong addOnPluginAdded(void delegate(Plugin, Registry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "plugin-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
