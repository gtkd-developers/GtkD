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


module peas.Engine;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import peas.PluginInfo;
private import peas.c.functions;
public  import peas.c.types;
private import std.algorithm;


/**
 * The #PeasEngine structure contains only private data and should only be
 * accessed using the provided API.
 */
public class Engine : ObjectG
{
	/** the main Gtk struct */
	protected PeasEngine* peasEngine;

	/** Get the main Gtk struct */
	public PeasEngine* getEngineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasEngine;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)peasEngine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasEngine* peasEngine, bool ownedRef = false)
	{
		this.peasEngine = peasEngine;
		super(cast(GObject*)peasEngine, ownedRef);
	}

	/**
	 * Return a new instance of Engine.
	 * If no default Engine has been instantiated yet,
	 * the first call of this function will set the default
	 * engine as the new instance of Engine.
	 *
	 * Params:
	 *     global = Weather to return a global plugin loader
	 *
	 * Return: a new instance of Engine.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool global = true)
	{
		PeasEngine* p;

		if (global)
			p = peas_engine_new();
		else
			p = peas_engine_new_with_nonglobal_loaders();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return peas_engine_get_type();
	}

	/**
	 * Return the existing instance of #PeasEngine or a subclass of it.
	 * If no #PeasEngine subclass has been instantiated yet, the first call
	 * of this function will return a new instance of #PeasEngine.
	 *
	 * Note: this function should never be used when multiple threads are
	 * using libpeas API as it is not thread-safe.
	 *
	 * Returns: the existing instance of #PeasEngine.
	 */
	public static Engine getDefault()
	{
		auto p = peas_engine_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Engine)(cast(PeasEngine*) p);
	}

	/**
	 * This function appends a search path to the list of paths where to
	 * look for plugins.
	 *
	 * A so-called "search path" actually consists of both a
	 * module directory (where the shared libraries or language modules
	 * lie) and a data directory (where the plugin data is).
	 *
	 * The plugin will be able to use a correct data dir depending on
	 * where it is installed, hence allowing to keep the plugin agnostic
	 * when it comes to installation location: the same plugin can be
	 * installed either in the system path or in the user's home directory,
	 * without taking other special care than using
	 * peas_plugin_info_get_data_dir() when looking for its data files.
	 *
	 * If @data_dir is %NULL, then it is set to the same value as
	 * @module_dir.
	 *
	 * Params:
	 *     moduleDir = the plugin module directory.
	 *     dataDir = the plugin data directory.
	 */
	public void addSearchPath(string moduleDir, string dataDir)
	{
		peas_engine_add_search_path(peasEngine, Str.toStringz(moduleDir), Str.toStringz(dataDir));
	}

	/**
	 * If the plugin identified by @info implements the @extension_type,
	 * then this function will return a new instance of this implementation,
	 * wrapped in a new #PeasExtension instance. Otherwise, it will return %NULL.
	 *
	 * Since libpeas 1.22, @extension_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * See peas_engine_create_extension() for more information.
	 *
	 * Params:
	 *     info = A loaded #PeasPluginInfo.
	 *     extensionType = The implemented extension #GType.
	 *     firstProperty = the name of the first property.
	 *     varArgs = the value of the first property, followed optionally by more
	 *         name/value pairs, followed by %NULL.
	 *
	 * Returns: a new instance of #PeasExtension wrapping
	 *     the @extension_type instance, or %NULL.
	 */
	public PeasExtension* createExtensionValist(PluginInfo info, GType extensionType, string firstProperty, void* varArgs)
	{
		return peas_engine_create_extension_valist(peasEngine, (info is null) ? null : info.getPluginInfoStruct(), extensionType, Str.toStringz(firstProperty), varArgs);
	}

	/**
	 * If the plugin identified by @info implements the @extension_type,
	 * then this function will return a new instance of this implementation,
	 * wrapped in a new #PeasExtension instance. Otherwise, it will return %NULL.
	 *
	 * Since libpeas 1.22, @extension_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * See peas_engine_create_extension() for more information.
	 *
	 * Params:
	 *     info = A loaded #PeasPluginInfo.
	 *     extensionType = The implemented extension #GType.
	 *     parameters = an array of #GParameter.
	 *
	 * Returns: a new instance of #PeasExtension wrapping
	 *     the @extension_type instance, or %NULL.
	 */
	public PeasExtension* createExtensionv(PluginInfo info, GType extensionType, GParameter[] parameters)
	{
		return peas_engine_create_extensionv(peasEngine, (info is null) ? null : info.getPluginInfoStruct(), extensionType, cast(uint)parameters.length, parameters.ptr);
	}

	/**
	 * Enable a loader, enables a loader for plugins.
	 * The C plugin loader is always enabled. The other plugin
	 * loaders are: lua5.1, python and python3.
	 *
	 * For instance, the following code will enable Python 2 plugins
	 * to be loaded:
	 * |[
	 * peas_engine_enable_loader (engine, "python");
	 * ]|
	 *
	 * Note: plugin loaders used to be shared across #PeasEngines so enabling
	 * a loader on one #PeasEngine would enable it on all #PeasEngines.
	 * This behavior has been kept to avoid breaking applications,
	 * however a warning has been added to help applications transition.
	 *
	 * Params:
	 *     loaderName = The name of the loader to enable.
	 */
	public void enableLoader(string loaderName)
	{
		peas_engine_enable_loader(peasEngine, Str.toStringz(loaderName));
	}

	/**
	 * This function triggers garbage collection on all the loaders currently
	 * owned by the #PeasEngine.  This can be used to force the loaders to destroy
	 * managed objects that still hold references to objects that are about to
	 * disappear.
	 */
	public void garbageCollect()
	{
		peas_engine_garbage_collect(peasEngine);
	}

	/**
	 * Returns the list of the names of all the loaded plugins, or an array
	 * containing a single %NULL element if there is no plugin currently loaded.
	 *
	 * Please note that the returned array is a newly allocated one: you will need
	 * to free it using g_strfreev().
	 *
	 * Returns: A newly-allocated
	 *     %NULL-terminated array of strings.
	 */
	public string[] getLoadedPlugins()
	{
		auto retStr = peas_engine_get_loaded_plugins(peasEngine);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the #PeasPluginInfo corresponding with @plugin_name,
	 * or %NULL if @plugin_name was not found.
	 *
	 * Params:
	 *     pluginName = A plugin name.
	 *
	 * Returns: the #PeasPluginInfo corresponding with
	 *     a given plugin module name.
	 */
	public PluginInfo getPluginInfo(string pluginName)
	{
		auto p = peas_engine_get_plugin_info(peasEngine, Str.toStringz(pluginName));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PluginInfo)(cast(PeasPluginInfo*) p);
	}

	/**
	 * Returns the list of #PeasPluginInfo known to the engine.
	 *
	 * Returns: a #GList of
	 *     #PeasPluginInfo. Note that the list belongs to the engine and should
	 *     not be freed.
	 */
	public ListG getPluginList()
	{
		auto p = peas_engine_get_plugin_list(peasEngine);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Loads the plugin corresponding to @info if it's not currently loaded.
	 * Emits the "load-plugin" signal; loading the plugin
	 * actually occurs in the default signal handler.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 *
	 * Returns: whether the plugin has been successfully loaded.
	 */
	public bool loadPlugin(PluginInfo info)
	{
		return peas_engine_load_plugin(peasEngine, (info is null) ? null : info.getPluginInfoStruct()) != 0;
	}

	/**
	 * This function prepends a search path to the list of paths where to
	 * look for plugins.
	 *
	 * See Also: peas_engine_add_search_path()
	 *
	 * Params:
	 *     moduleDir = the plugin module directory.
	 *     dataDir = the plugin data directory.
	 *
	 * Since: 1.6
	 */
	public void prependSearchPath(string moduleDir, string dataDir)
	{
		peas_engine_prepend_search_path(peasEngine, Str.toStringz(moduleDir), Str.toStringz(dataDir));
	}

	/**
	 * Returns if @info provides an extension for @extension_type.
	 * If the @info is not loaded than %FALSE will always be returned.
	 *
	 * Since libpeas 1.22, @extension_type can be an Abstract #GType
	 * and not just an Interface #GType.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 *     extensionType = The extension #GType.
	 *
	 * Returns: if @info provides an extension for @extension_type.
	 */
	public bool providesExtension(PluginInfo info, GType extensionType)
	{
		return peas_engine_provides_extension(peasEngine, (info is null) ? null : info.getPluginInfoStruct(), extensionType) != 0;
	}

	/**
	 * Rescan all the registered directories to find new or updated plugins.
	 *
	 * Calling this function will make the newly installed plugin infos
	 * be loaded by the engine, so the new plugins can be used without
	 * restarting the application.
	 */
	public void rescanPlugins()
	{
		peas_engine_rescan_plugins(peasEngine);
	}

	/**
	 * Sets the list of loaded plugins for @engine. When this function is called,
	 * the #PeasEngine will load all the plugins whose names are in @plugin_names,
	 * and ensures all other active plugins are unloaded.
	 *
	 * If @plugin_names is %NULL, all plugins will be unloaded.
	 *
	 * Params:
	 *     pluginNames = A %NULL-terminated
	 *         array of plugin names, or %NULL.
	 */
	public void setLoadedPlugins(string[] pluginNames)
	{
		peas_engine_set_loaded_plugins(peasEngine, Str.toStringzArray(pluginNames));
	}

	/**
	 * Unloads the plugin corresponding to @info.
	 * Emits the "unload-plugin" signal; unloading the plugin
	 * actually occurs in the default signal handler.
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 *
	 * Returns: whether the plugin has been successfully unloaded.
	 */
	public bool unloadPlugin(PluginInfo info)
	{
		return peas_engine_unload_plugin(peasEngine, (info is null) ? null : info.getPluginInfoStruct()) != 0;
	}

	/**
	 * The load-plugin signal is emitted when a plugin is being loaded.
	 *
	 * The plugin is being loaded in the default handler. Hence, if you want to
	 * perform some action before the plugin is loaded, you should use
	 * g_signal_connect(), but if you want to perform some action *after* the
	 * plugin is loaded (the most common case), you should use
	 * g_signal_connect_after().
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 */
	gulong addOnLoadPlugin(void delegate(PluginInfo, Engine) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "load-plugin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The unload-plugin signal is emitted when a plugin is being unloaded.
	 *
	 * The plugin is being unloaded in the default handler. Hence, if you want
	 * to perform some action before the plugin is unloaded (the most common
	 * case), you should use g_signal_connect(), but if you want to perform some
	 * action after the plugin is unloaded (the most common case), you should
	 * use g_signal_connect_after().
	 *
	 * Params:
	 *     info = A #PeasPluginInfo.
	 */
	gulong addOnUnloadPlugin(void delegate(PluginInfo, Engine) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unload-plugin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
