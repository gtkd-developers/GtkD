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


module peas.PluginInfo;

private import gio.Settings;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import peas.c.functions;
public  import peas.c.types;


/**
 * The #PeasPluginInfo structure contains only private data and should only
 * be accessed using the provided API.
 */
public class PluginInfo
{
	/** the main Gtk struct */
	protected PeasPluginInfo* peasPluginInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PeasPluginInfo* getPluginInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return peasPluginInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)peasPluginInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PeasPluginInfo* peasPluginInfo, bool ownedRef = false)
	{
		this.peasPluginInfo = peasPluginInfo;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return peas_plugin_info_get_type();
	}

	/**
	 * Gets a %NULL-terminated array of strings with the authors of the plugin.
	 *
	 * The relevant key in the plugin info file is "Authors".
	 *
	 * Returns: the plugin's author list.
	 */
	public string[] getAuthors()
	{
		return Str.toStringArray(peas_plugin_info_get_authors(peasPluginInfo));
	}

	/**
	 * Gets the copyright of the plugin.
	 *
	 * The relevant key in the plugin info file is "Copyright".
	 *
	 * Returns: the plugin's copyright information.
	 */
	public string getCopyright()
	{
		return Str.toString(peas_plugin_info_get_copyright(peasPluginInfo));
	}

	/**
	 * Gets the data dir of the plugin.
	 *
	 * The module data directory is the directory where a plugin should find its
	 * runtime data. This is not a value read from the #GKeyFile, but rather a
	 * value provided by the #PeasEngine, depending on where the plugin file was
	 * found.
	 *
	 * Returns: the plugin's data dir.
	 */
	public string getDataDir()
	{
		return Str.toString(peas_plugin_info_get_data_dir(peasPluginInfo));
	}

	/**
	 * Gets the dependencies of the plugin.
	 *
	 * The #PeasEngine will always ensure that the dependencies of a plugin are
	 * loaded when the said plugin is loaded. It means that dependencies are
	 * loaded before the plugin, and unloaded after it. Circular dependencies of
	 * plugins lead to undefined loading order.
	 *
	 * The relevant key in the plugin info file is "Depends".
	 *
	 * Returns: the plugin's dependencies.
	 */
	public string[] getDependencies()
	{
		return Str.toStringArray(peas_plugin_info_get_dependencies(peasPluginInfo));
	}

	/**
	 * Gets the description of the plugin.
	 *
	 * The description of the plugin should be a string presenting the purpose of
	 * the plugin. It will typically be presented in a plugin's about box.
	 *
	 * The relevant key in the plugin info file is "Description".
	 *
	 * Returns: the plugin's description.
	 */
	public string getDescription()
	{
		return Str.toString(peas_plugin_info_get_description(peasPluginInfo));
	}

	/**
	 * Gets external data specified for the plugin.
	 *
	 * External data is specified in the plugin info file prefixed with X-. For
	 * example, if a key/value pair X-Peas=1 is specified in the key file, you
	 * can use "Peas" for @key to retrieve the value "1".
	 *
	 * Note: that you can omit the X- prefix when retrieving the value,
	 * but not when specifying the value in the file.
	 *
	 * Params:
	 *     key = The key to lookup.
	 *
	 * Returns: the external data, or %NULL if the external data could not be found.
	 *
	 * Since: 1.6
	 */
	public string getExternalData(string key)
	{
		return Str.toString(peas_plugin_info_get_external_data(peasPluginInfo, Str.toStringz(key)));
	}

	/**
	 * Gets the help URI of the plugin.
	 *
	 * The Help URI of a plugin will typically be presented by the plugin manager
	 * as a "Help" button linking to the URI. It can either be a HTTP URL on some
	 * website or a ghelp: URI if a Gnome help page is available for the plugin.
	 *
	 * The relevant key in the plugin info file is "Help". Other platform-specific
	 * keys exist for platform-specific help files. Those are "Help-GNOME",
	 * "Help-Windows" and "Help-MacOS-X".
	 *
	 * Returns: the plugin's help URI.
	 */
	public string getHelpUri()
	{
		return Str.toString(peas_plugin_info_get_help_uri(peasPluginInfo));
	}

	/**
	 * Gets the icon name of the plugin.
	 *
	 * The icon of the plugin will be presented in the plugin manager UI. If no
	 * icon is specified, the default green puzzle icon will be used.
	 *
	 * The relevant key in the plugin info file is "Icon".
	 *
	 * Returns: the plugin's icon name.
	 */
	public string getIconName()
	{
		return Str.toString(peas_plugin_info_get_icon_name(peasPluginInfo));
	}

	/**
	 * Gets the module directory.
	 *
	 * The module directory is the directory where the plugin file was found. This
	 * is not a value from the #GKeyFile, but rather a value provided by the
	 * #PeasEngine.
	 *
	 * Returns: the module directory.
	 */
	public string getModuleDir()
	{
		return Str.toString(peas_plugin_info_get_module_dir(peasPluginInfo));
	}

	/**
	 * Gets the module name.
	 *
	 * The module name will be used to find the actual plugin. The way this value
	 * will be used depends on the loader (i.e. on the language) of the plugin.
	 * This value is also used to uniquely identify a particular plugin.
	 *
	 * The relevant key in the plugin info file is "Module".
	 *
	 * Returns: the module name.
	 */
	public string getModuleName()
	{
		return Str.toString(peas_plugin_info_get_module_name(peasPluginInfo));
	}

	/**
	 * Gets the name of the plugin.
	 *
	 * The name of a plugin should be a nice short string to be presented in UIs.
	 *
	 * The relevant key in the plugin info file is "Name".
	 *
	 * Returns: the plugin's name.
	 */
	public string getName()
	{
		return Str.toString(peas_plugin_info_get_name(peasPluginInfo));
	}

	/**
	 * Creates a new #GSettings for the given @schema_id and if
	 * gschemas.compiled is not in the module directory an attempt
	 * will be made to create it.
	 *
	 * Params:
	 *     schemaId = The schema id.
	 *
	 * Returns: a new #GSettings, or %NULL.
	 *
	 * Since: 1.4
	 */
	public Settings getSettings(string schemaId)
	{
		auto p = peas_plugin_info_get_settings(peasPluginInfo, Str.toStringz(schemaId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GSettings*) p, true);
	}

	/**
	 * Gets the version of the plugin.
	 *
	 * The relevant key in the plugin info file is "Version".
	 *
	 * Returns: the plugin's version.
	 */
	public string getVersion()
	{
		return Str.toString(peas_plugin_info_get_version(peasPluginInfo));
	}

	/**
	 * Gets the website of the plugin.
	 *
	 * The relevant key in the plugin info file is "Website".
	 *
	 * Returns: the plugin's associated website.
	 */
	public string getWebsite()
	{
		return Str.toString(peas_plugin_info_get_website(peasPluginInfo));
	}

	/**
	 * Check if the plugin depends on another plugin.
	 *
	 * Params:
	 *     moduleName = The name of the plugin to check.
	 *
	 * Returns: whether the plugin depends on the plugin @module_name.
	 */
	public bool hasDependency(string moduleName)
	{
		return peas_plugin_info_has_dependency(peasPluginInfo, Str.toStringz(moduleName)) != 0;
	}

	/**
	 * Check if the plugin is available.
	 *
	 * A plugin is marked as not available when there is no loader available to
	 * load it, or when there has been an error when trying to load it previously.
	 * If not available then @error will be set.
	 *
	 * Returns: %TRUE if the plugin is available.
	 *
	 * Throws: GException on failure.
	 */
	public bool isAvailable()
	{
		GError* err = null;

		auto p = peas_plugin_info_is_available(peasPluginInfo, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Check if the plugin is a builtin plugin.
	 *
	 * A builtin plugin is a plugin which cannot be enabled or disabled by the
	 * user through a plugin manager (like #PeasGtkPluginManager). Loading or
	 * unloading such plugins is the responsibility of the application alone.
	 * Most applications will usually load those plugins immediately after
	 * the initialization of the #PeasEngine.
	 *
	 * The relevant key in the plugin info file is "Builtin".
	 *
	 * Returns: %TRUE if the plugin is a builtin plugin, %FALSE
	 *     if not.
	 */
	public bool isBuiltin()
	{
		return peas_plugin_info_is_builtin(peasPluginInfo) != 0;
	}

	/**
	 * Check if the plugin is a hidden plugin.
	 *
	 * A hidden plugin is a plugin which cannot be seen by a
	 * user through a plugin manager (like #PeasGtkPluginManager). Loading and
	 * unloading such plugins is the responsibility of the application alone or
	 * through plugins that depend on them.
	 *
	 * The relevant key in the plugin info file is "Hidden".
	 *
	 * Returns: %TRUE if the plugin is a hidden plugin, %FALSE
	 *     if not.
	 */
	public bool isHidden()
	{
		return peas_plugin_info_is_hidden(peasPluginInfo) != 0;
	}

	/**
	 * Check if the plugin is loaded.
	 *
	 * Returns: %TRUE if the plugin is loaded.
	 */
	public bool isLoaded()
	{
		return peas_plugin_info_is_loaded(peasPluginInfo) != 0;
	}

	/** */
	public static GQuark errorQuark()
	{
		return peas_plugin_info_error_quark();
	}
}
