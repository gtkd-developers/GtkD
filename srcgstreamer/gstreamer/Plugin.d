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
 * inFile  = GstPlugin.html
 * outPack = gstreamer
 * outFile = Plugin
 * strct   = GstPlugin
 * realStrct=
 * ctorStrct=
 * clss    = Plugin
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_plugin_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- glib.Module
 * 	- glib.ErrorG
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GModule* -> Module
 * 	- GstPlugin* -> Plugin
 * module aliases:
 * local aliases:
 */

module gstreamer.Plugin;

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
private import glib.Module;
private import glib.ErrorG;
private import glib.ListG;




/**
 * Description
 * GStreamer is extensible, so GstElement instances can be loaded at runtime.
 * A plugin system can provide one or more of the basic
 * GStreamer GstPluginFeature subclasses.
 * A plugin should export a symbol plugin_desc that is a
 * struct of type GstPluginDesc.
 * the plugin loader will check the version of the core library the plugin was
 * linked against and will create a new GstPlugin. It will then call the
 * GstPluginInitFunc function that was provided in the plugin_desc.
 * Once you have a handle to a GstPlugin (e.g. from the GstRegistryPool), you
 * can add any object that subclasses GstPluginFeature.
 * Use gst_plugin_find_feature() and gst_plugin_get_feature_list() to find
 * features in a plugin.
 * Usually plugins are always automaticlly loaded so you don't need to call
 * gst_plugin_load() explicitly to bring it into memory. There are options to
 * statically link plugins to an app or even use GStreamer without a plugin
 * repository in which case gst_plugin_load() can be needed to bring the plugin
 * into memory.
 */
private import gstreamer.ObjectGst;
public class Plugin : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPlugin* gstPlugin;
	
	
	public GstPlugin* getPluginStruct()
	{
		return gstPlugin;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPlugin;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPlugin* gstPlugin)
	{
		version(noAssert)
		{
			if ( gstPlugin is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstPlugin is null on constructor").newline;
				}
				else
				{
					printf("struct gstPlugin is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstPlugin !is null, "struct gstPlugin is null on constructor");
		}
		super(cast(GstObject*)gstPlugin);
		this.gstPlugin = gstPlugin;
	}
	
	/**
	 */
	
	/**
	 * Get the error quark.
	 * Returns:
	 *  The error quark used in GError messages
	 */
	public static GQuark errorQuark()
	{
		// GQuark gst_plugin_error_quark (void);
		return gst_plugin_error_quark();
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * Get the short name of the plugin
	 * plugin:
	 *  plugin to get the name of
	 * Returns:
	 *  the name of the plugin
	 */
	public char[] getName()
	{
		// const gchar* gst_plugin_get_name (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_name(gstPlugin) );
	}
	
	/**
	 * Get the long descriptive name of the plugin
	 * plugin:
	 *  plugin to get long name of
	 * Returns:
	 *  the long name of the plugin
	 */
	public char[] getDescription()
	{
		// const gchar* gst_plugin_get_description (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_description(gstPlugin) );
	}
	
	/**
	 * get the filename of the plugin
	 * plugin:
	 *  plugin to get the filename of
	 * Returns:
	 *  the filename of the plugin
	 */
	public char[] getFilename()
	{
		// const gchar* gst_plugin_get_filename (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_filename(gstPlugin) );
	}
	
	/**
	 * get the license of the plugin
	 * plugin:
	 *  plugin to get the license of
	 * Returns:
	 *  the license of the plugin
	 */
	public char[] getLicense()
	{
		// const gchar* gst_plugin_get_license (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_license(gstPlugin) );
	}
	
	/**
	 * get the package the plugin belongs to.
	 * plugin:
	 *  plugin to get the package of
	 * Returns:
	 *  the package of the plugin
	 */
	public char[] getPackage()
	{
		// const gchar* gst_plugin_get_package (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_package(gstPlugin) );
	}
	
	/**
	 * get the URL where the plugin comes from
	 * plugin:
	 *  plugin to get the origin of
	 * Returns:
	 *  the origin of the plugin
	 */
	public char[] getOrigin()
	{
		// const gchar* gst_plugin_get_origin (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_origin(gstPlugin) );
	}
	
	/**
	 * get the source module the plugin belongs to.
	 * plugin:
	 *  plugin to get the source of
	 * Returns:
	 *  the source of the plugin
	 */
	public char[] getSource()
	{
		// const gchar* gst_plugin_get_source (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_source(gstPlugin) );
	}
	
	/**
	 * get the version of the plugin
	 * plugin:
	 *  plugin to get the version of
	 * Returns:
	 *  the version of the plugin
	 */
	public char[] getVersion()
	{
		// const gchar* gst_plugin_get_version (GstPlugin *plugin);
		return Str.toString(gst_plugin_get_version(gstPlugin) );
	}
	
	/**
	 * Gets the GModule of the plugin. If the plugin isn't loaded yet, NULL is
	 * returned.
	 * plugin:
	 *  plugin to query
	 * Returns:
	 *  module belonging to the plugin or NULL if the plugin isn't
	 *  loaded yet.
	 */
	public Module getModule()
	{
		// GModule* gst_plugin_get_module (GstPlugin *plugin);
		return new Module( gst_plugin_get_module(gstPlugin) );
	}
	
	/**
	 * queries if the plugin is loaded into memory
	 * plugin:
	 *  plugin to query
	 * Returns:
	 *  TRUE is loaded, FALSE otherwise
	 */
	public int isLoaded()
	{
		// gboolean gst_plugin_is_loaded (GstPlugin *plugin);
		return gst_plugin_is_loaded(gstPlugin);
	}
	
	/**
	 * A standard filter that returns TRUE when the plugin is of the
	 * given name.
	 * plugin:
	 *  the plugin to check
	 * name:
	 *  the name of the plugin
	 * Returns:
	 *  TRUE if the plugin is of the given name.
	 */
	public int nameFilter(char[] name)
	{
		// gboolean gst_plugin_name_filter (GstPlugin *plugin,  const gchar *name);
		return gst_plugin_name_filter(gstPlugin, Str.toStringz(name));
	}
	
	/**
	 * Loads the given plugin and refs it. Caller needs to unref after use.
	 * filename:
	 *  the plugin filename to load
	 * error:
	 *  pointer to a NULL-valued GError
	 * Returns:
	 *  a reference to the existing loaded GstPlugin, a reference to the
	 * newly-loaded GstPlugin, or NULL if an error occurred.
	 */
	public static Plugin loadFile(char[] filename, GError** error)
	{
		// GstPlugin* gst_plugin_load_file (const gchar *filename,  GError **error);
		return new Plugin( gst_plugin_load_file(Str.toStringz(filename), error) );
	}
	
	/**
	 * Loads plugin. Note that the *return value* is the loaded plugin; plugin is
	 * untouched. The normal use pattern of this function goes like this:
	 * GstPlugin *loaded_plugin;
	 * loaded_plugin = gst_plugin_load (plugin);
	 * // presumably, we're no longer interested in the potentially-unloaded plugin
	 * gst_object_unref (plugin);
	 * plugin = loaded_plugin;
	 * plugin:
	 *  plugin to load
	 * Returns:
	 *  A reference to a loaded plugin, or NULL on error.
	 */
	public Plugin load()
	{
		// GstPlugin* gst_plugin_load (GstPlugin *plugin);
		return new Plugin( gst_plugin_load(gstPlugin) );
	}
	
	/**
	 * Load the named plugin. Refs the plugin.
	 * name:
	 *  name of plugin to load
	 * Returns:
	 *  A reference to a loaded plugin, or NULL on error.
	 */
	public static Plugin loadByName(char[] name)
	{
		// GstPlugin* gst_plugin_load_by_name (const gchar *name);
		return new Plugin( gst_plugin_load_by_name(Str.toStringz(name)) );
	}
	
	/**
	 * Unrefs each member of list, then frees the list.
	 * list:
	 *  list of GstPlugin
	 * See Also
	 * GstPluginFeature, GstElementFactory
	 */
	public static void listFree(ListG list)
	{
		// void gst_plugin_list_free (GList *list);
		gst_plugin_list_free((list is null) ? null : list.getListGStruct());
	}
}
