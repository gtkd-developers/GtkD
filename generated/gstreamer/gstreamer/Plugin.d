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


module gstreamer.Plugin;

private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.ObjectGst;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * GStreamer is extensible, so #GstElement instances can be loaded at runtime.
 * A plugin system can provide one or more of the basic GStreamer
 * #GstPluginFeature subclasses.
 * 
 * A plugin should export a symbol `gst_plugin_desc` that is a
 * struct of type #GstPluginDesc.
 * the plugin loader will check the version of the core library the plugin was
 * linked against and will create a new #GstPlugin. It will then call the
 * #GstPluginInitFunc function that was provided in the
 * `gst_plugin_desc`.
 * 
 * Once you have a handle to a #GstPlugin (e.g. from the #GstRegistry), you
 * can add any object that subclasses #GstPluginFeature.
 * 
 * Usually plugins are always automatically loaded so you don't need to call
 * gst_plugin_load() explicitly to bring it into memory. There are options to
 * statically link plugins to an app or even use GStreamer without a plugin
 * repository in which case gst_plugin_load() can be needed to bring the plugin
 * into memory.
 */
public class Plugin : ObjectGst
{
	/** the main Gtk struct */
	protected GstPlugin* gstPlugin;

	/** Get the main Gtk struct */
	public GstPlugin* getPluginStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPlugin;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPlugin;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPlugin* gstPlugin, bool ownedRef = false)
	{
		this.gstPlugin = gstPlugin;
		super(cast(GstObject*)gstPlugin, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_plugin_get_type();
	}

	/**
	 * Unrefs each member of @list, then frees the list.
	 *
	 * Params:
	 *     list = list of #GstPlugin
	 */
	public static void listFree(ListG list)
	{
		gst_plugin_list_free((list is null) ? null : list.getListGStruct());
	}

	/**
	 * Load the named plugin. Refs the plugin.
	 *
	 * Params:
	 *     name = name of plugin to load
	 *
	 * Returns: a reference to a loaded plugin, or
	 *     %NULL on error.
	 */
	public static Plugin loadByName(string name)
	{
		auto __p = gst_plugin_load_by_name(Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Loads the given plugin and refs it.  Caller needs to unref after use.
	 *
	 * Params:
	 *     filename = the plugin filename to load
	 *
	 * Returns: a reference to the existing loaded GstPlugin, a
	 *     reference to the newly-loaded GstPlugin, or %NULL if an error occurred.
	 *
	 * Throws: GException on failure.
	 */
	public static Plugin loadFile(string filename)
	{
		GError* err = null;

		auto __p = gst_plugin_load_file(Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Registers a static plugin, ie. a plugin which is private to an application
	 * or library and contained within the application or library (as opposed to
	 * being shipped as a separate module file).
	 *
	 * You must make sure that GStreamer has been initialised (with gst_init() or
	 * via gst_init_get_option_group()) before calling this function.
	 *
	 * Params:
	 *     majorVersion = the major version number of the GStreamer core that the
	 *         plugin was compiled for, you can just use GST_VERSION_MAJOR here
	 *     minorVersion = the minor version number of the GStreamer core that the
	 *         plugin was compiled for, you can just use GST_VERSION_MINOR here
	 *     name = a unique name of the plugin (ideally prefixed with an application- or
	 *         library-specific namespace prefix in order to avoid name conflicts in
	 *         case a similar plugin with the same name ever gets added to GStreamer)
	 *     description = description of the plugin
	 *     initFunc = pointer to the init function of this plugin.
	 *     version_ = version string of the plugin
	 *     license = effective license of plugin. Must be one of the approved licenses
	 *         (see #GstPluginDesc above) or the plugin will not be registered.
	 *     source = source module plugin belongs to
	 *     package_ = shipped package plugin belongs to
	 *     origin = URL to provider of plugin
	 *
	 * Returns: %TRUE if the plugin was registered correctly, otherwise %FALSE.
	 */
	public static bool registerStatic(int majorVersion, int minorVersion, string name, string description, GstPluginInitFunc initFunc, string version_, string license, string source, string package_, string origin)
	{
		return gst_plugin_register_static(majorVersion, minorVersion, Str.toStringz(name), Str.toStringz(description), initFunc, Str.toStringz(version_), Str.toStringz(license), Str.toStringz(source), Str.toStringz(package_), Str.toStringz(origin)) != 0;
	}

	/**
	 * Registers a static plugin, ie. a plugin which is private to an application
	 * or library and contained within the application or library (as opposed to
	 * being shipped as a separate module file) with a #GstPluginInitFullFunc
	 * which allows user data to be passed to the callback function (useful
	 * for bindings).
	 *
	 * You must make sure that GStreamer has been initialised (with gst_init() or
	 * via gst_init_get_option_group()) before calling this function.
	 *
	 * Params:
	 *     majorVersion = the major version number of the GStreamer core that the
	 *         plugin was compiled for, you can just use GST_VERSION_MAJOR here
	 *     minorVersion = the minor version number of the GStreamer core that the
	 *         plugin was compiled for, you can just use GST_VERSION_MINOR here
	 *     name = a unique name of the plugin (ideally prefixed with an application- or
	 *         library-specific namespace prefix in order to avoid name conflicts in
	 *         case a similar plugin with the same name ever gets added to GStreamer)
	 *     description = description of the plugin
	 *     initFullFunc = pointer to the init function with user data
	 *         of this plugin.
	 *     version_ = version string of the plugin
	 *     license = effective license of plugin. Must be one of the approved licenses
	 *         (see #GstPluginDesc above) or the plugin will not be registered.
	 *     source = source module plugin belongs to
	 *     package_ = shipped package plugin belongs to
	 *     origin = URL to provider of plugin
	 *     userData = gpointer to user data
	 *
	 * Returns: %TRUE if the plugin was registered correctly, otherwise %FALSE.
	 */
	public static bool registerStaticFull(int majorVersion, int minorVersion, string name, string description, GstPluginInitFullFunc initFullFunc, string version_, string license, string source, string package_, string origin, void* userData)
	{
		return gst_plugin_register_static_full(majorVersion, minorVersion, Str.toStringz(name), Str.toStringz(description), initFullFunc, Str.toStringz(version_), Str.toStringz(license), Str.toStringz(source), Str.toStringz(package_), Str.toStringz(origin), userData) != 0;
	}

	/**
	 * Make GStreamer aware of external dependencies which affect the feature
	 * set of this plugin (ie. the elements or typefinders associated with it).
	 *
	 * GStreamer will re-inspect plugins with external dependencies whenever any
	 * of the external dependencies change. This is useful for plugins which wrap
	 * other plugin systems, e.g. a plugin which wraps a plugin-based visualisation
	 * library and makes visualisations available as GStreamer elements, or a
	 * codec loader which exposes elements and/or caps dependent on what external
	 * codec libraries are currently installed.
	 *
	 * Params:
	 *     envVars = %NULL-terminated array of environment variables affecting the
	 *         feature set of the plugin (e.g. an environment variable containing
	 *         paths where to look for additional modules/plugins of a library),
	 *         or %NULL. Environment variable names may be followed by a path component
	 *         which will be added to the content of the environment variable, e.g.
	 *         "HOME/.mystuff/plugins".
	 *     paths = %NULL-terminated array of directories/paths where dependent files
	 *         may be, or %NULL.
	 *     names = %NULL-terminated array of file names (or file name suffixes,
	 *         depending on @flags) to be used in combination with the paths from
	 *         @paths and/or the paths extracted from the environment variables in
	 *         @env_vars, or %NULL.
	 *     flags = optional flags, or #GST_PLUGIN_DEPENDENCY_FLAG_NONE
	 */
	public void addDependency(string[] envVars, string[] paths, string[] names, GstPluginDependencyFlags flags)
	{
		gst_plugin_add_dependency(gstPlugin, Str.toStringzArray(envVars), Str.toStringzArray(paths), Str.toStringzArray(names), flags);
	}

	/**
	 * Make GStreamer aware of external dependencies which affect the feature
	 * set of this plugin (ie. the elements or typefinders associated with it).
	 *
	 * GStreamer will re-inspect plugins with external dependencies whenever any
	 * of the external dependencies change. This is useful for plugins which wrap
	 * other plugin systems, e.g. a plugin which wraps a plugin-based visualisation
	 * library and makes visualisations available as GStreamer elements, or a
	 * codec loader which exposes elements and/or caps dependent on what external
	 * codec libraries are currently installed.
	 *
	 * Convenience wrapper function for gst_plugin_add_dependency() which
	 * takes simple strings as arguments instead of string arrays, with multiple
	 * arguments separated by predefined delimiters (see above).
	 *
	 * Params:
	 *     envVars = one or more environment variables (separated by ':', ';' or ','),
	 *         or %NULL. Environment variable names may be followed by a path component
	 *         which will be added to the content of the environment variable, e.g.
	 *         "HOME/.mystuff/plugins:MYSTUFF_PLUGINS_PATH"
	 *     paths = one ore more directory paths (separated by ':' or ';' or ','),
	 *         or %NULL. Example: "/usr/lib/mystuff/plugins"
	 *     names = one or more file names or file name suffixes (separated by commas),
	 *         or %NULL
	 *     flags = optional flags, or #GST_PLUGIN_DEPENDENCY_FLAG_NONE
	 */
	public void addDependencySimple(string envVars, string paths, string names, GstPluginDependencyFlags flags)
	{
		gst_plugin_add_dependency_simple(gstPlugin, Str.toStringz(envVars), Str.toStringz(paths), Str.toStringz(names), flags);
	}

	/**
	 * Gets the plugin specific data cache. If it is %NULL there is no cached data
	 * stored. This is the case when the registry is getting rebuilt.
	 *
	 * Returns: The cached data as a
	 *     #GstStructure or %NULL.
	 */
	public Structure getCacheData()
	{
		auto __p = gst_plugin_get_cache_data(gstPlugin);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p);
	}

	/**
	 * Get the long descriptive name of the plugin
	 *
	 * Returns: the long name of the plugin
	 */
	public string getDescription()
	{
		return Str.toString(gst_plugin_get_description(gstPlugin));
	}

	/**
	 * get the filename of the plugin
	 *
	 * Returns: the filename of the plugin
	 */
	public string getFilename()
	{
		return Str.toString(gst_plugin_get_filename(gstPlugin));
	}

	/**
	 * get the license of the plugin
	 *
	 * Returns: the license of the plugin
	 */
	public string getLicense()
	{
		return Str.toString(gst_plugin_get_license(gstPlugin));
	}

	/**
	 * Get the short name of the plugin
	 *
	 * Returns: the name of the plugin
	 */
	public override string getName()
	{
		return Str.toString(gst_plugin_get_name(gstPlugin));
	}

	/**
	 * get the URL where the plugin comes from
	 *
	 * Returns: the origin of the plugin
	 */
	public string getOrigin()
	{
		return Str.toString(gst_plugin_get_origin(gstPlugin));
	}

	/**
	 * get the package the plugin belongs to.
	 *
	 * Returns: the package of the plugin
	 */
	public string getPackage()
	{
		return Str.toString(gst_plugin_get_package(gstPlugin));
	}

	/**
	 * Get the release date (and possibly time) in form of a string, if available.
	 *
	 * For normal GStreamer plugin releases this will usually just be a date in
	 * the form of "YYYY-MM-DD", while pre-releases and builds from git may contain
	 * a time component after the date as well, in which case the string will be
	 * formatted like "YYYY-MM-DDTHH:MMZ" (e.g. "2012-04-30T09:30Z").
	 *
	 * There may be plugins that do not have a valid release date set on them.
	 *
	 * Returns: the date string of the plugin, or %NULL if not
	 *     available.
	 */
	public string getReleaseDateString()
	{
		return Str.toString(gst_plugin_get_release_date_string(gstPlugin));
	}

	/**
	 * get the source module the plugin belongs to.
	 *
	 * Returns: the source of the plugin
	 */
	public string getSource()
	{
		return Str.toString(gst_plugin_get_source(gstPlugin));
	}

	/**
	 * get the version of the plugin
	 *
	 * Returns: the version of the plugin
	 */
	public string getVersion()
	{
		return Str.toString(gst_plugin_get_version(gstPlugin));
	}

	/**
	 * queries if the plugin is loaded into memory
	 *
	 * Returns: %TRUE is loaded, %FALSE otherwise
	 */
	public bool isLoaded()
	{
		return gst_plugin_is_loaded(gstPlugin) != 0;
	}

	/**
	 * Loads @plugin. Note that the *return value* is the loaded plugin; @plugin is
	 * untouched. The normal use pattern of this function goes like this:
	 *
	 * |[
	 * GstPlugin *loaded_plugin;
	 * loaded_plugin = gst_plugin_load (plugin);
	 * // presumably, we're no longer interested in the potentially-unloaded plugin
	 * gst_object_unref (plugin);
	 * plugin = loaded_plugin;
	 * ]|
	 *
	 * Returns: a reference to a loaded plugin, or
	 *     %NULL on error.
	 */
	public Plugin load()
	{
		auto __p = gst_plugin_load(gstPlugin);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Plugin)(cast(GstPlugin*) __p, true);
	}

	/**
	 * Adds plugin specific data to cache. Passes the ownership of the structure to
	 * the @plugin.
	 *
	 * The cache is flushed every time the registry is rebuilt.
	 *
	 * Params:
	 *     cacheData = a structure containing the data to cache
	 */
	public void setCacheData(Structure cacheData)
	{
		gst_plugin_set_cache_data(gstPlugin, (cacheData is null) ? null : cacheData.getStructureStruct(true));
	}

	/**
	 * Get the error quark.
	 *
	 * Returns: The error quark used in GError messages
	 */
	public static GQuark pluginErrorQuark()
	{
		return gst_plugin_error_quark();
	}
}
