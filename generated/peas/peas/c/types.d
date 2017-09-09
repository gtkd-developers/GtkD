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


module peas.c.types;

public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;


/**
 * A proxy class to access the actual plugin.
 */
public alias GObject PeasExtension;

/**
 * These identify the various errors that can occur while
 * loading a plugin.
 */
public enum PeasPluginInfoError
{
	/**
	 * The plugin failed to load.
	 */
	LOADING_FAILED = 0,
	/**
	 * The plugin's loader was not found.
	 */
	LOADER_NOT_FOUND = 1,
	/**
	 * A dependency of the plugin was not found.
	 */
	DEP_NOT_FOUND = 2,
	/**
	 * A dependency of the plugin failed to load.
	 */
	DEP_LOADING_FAILED = 3,
}
alias PeasPluginInfoError PluginInfoError;
struct GIArgument;

struct PeasActivatable;

/**
 * Provides an interface for activatable plugins.
 */
struct PeasActivatableInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(PeasActivatable* activatable) activate;
	/** */
	extern(C) void function(PeasActivatable* activatable) deactivate;
	/** */
	extern(C) void function(PeasActivatable* activatable) updateState;
}

struct PeasEngine
{
	GObject parent;
	PeasEnginePrivate* priv;
}

/**
 * Class structure for #PeasEngine.
 */
struct PeasEngineClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(PeasEngine* engine, PeasPluginInfo* info) loadPlugin;
	/** */
	extern(C) void function(PeasEngine* engine, PeasPluginInfo* info) unloadPlugin;
	void*[8] padding;
}

struct PeasEnginePrivate;

struct PeasExtensionBase
{
	GObject parent;
	PeasExtensionBasePrivate* priv;
}

/**
 * The class structure of #PeasExtensionBase.
 */
struct PeasExtensionBaseClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	void*[8] padding;
}

struct PeasExtensionBasePrivate;

struct PeasExtensionSet
{
	GObject parent;
	PeasExtensionSetPrivate* priv;
}

/**
 * The class structure for #PeasExtensionSet.
 */
struct PeasExtensionSetClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) int function(PeasExtensionSet* set, const(char)* methodName, GIArgument* args) call;
	/** */
	extern(C) void function(PeasExtensionSet* set, PeasPluginInfo* info, PeasExtension* exten) extensionAdded;
	/** */
	extern(C) void function(PeasExtensionSet* set, PeasPluginInfo* info, PeasExtension* exten) extensionRemoved;
	void*[8] padding;
}

struct PeasExtensionSetPrivate;

struct PeasObjectModule
{
	GTypeModule parent;
	PeasObjectModulePrivate* priv;
}

/**
 * The class structure for #PeasObjectModule.
 */
struct PeasObjectModuleClass
{
	/**
	 * The parent class.
	 */
	GTypeModuleClass parentClass;
	void*[8] padding;
}

struct PeasObjectModulePrivate;

struct PeasPluginInfo;

struct PeasGtkConfigurable;

/**
 * Provides an interface for configurable plugins.
 */
struct PeasGtkConfigurableInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     configurable = A #PeasGtkConfigurable
	 * Returns: A #GtkWidget used for configuration.
	 */
	extern(C) GtkWidget* function(PeasGtkConfigurable* configurable) createConfigureWidget;
}

struct PeasGtkPluginManager
{
	GtkBox box;
	PeasGtkPluginManagerPrivate* priv;
}

/**
 * The class structure for #PeasGtkPluginManager.
 */
struct PeasGtkPluginManagerClass
{
	/**
	 * The parent class.
	 */
	GtkBoxClass parentClass;
	void*[8] padding;
}

struct PeasGtkPluginManagerPrivate;

struct PeasGtkPluginManagerView
{
	GtkTreeView parent;
	PeasGtkPluginManagerViewPrivate* priv;
}

/**
 * The class structure for #PeasGtkPluginManagerView.
 */
struct PeasGtkPluginManagerViewClass
{
	/**
	 * The parent class.
	 */
	GtkTreeViewClass parentClass;
	/** */
	extern(C) void function(PeasGtkPluginManagerView* view, GtkMenu* menu) populatePopup;
	void*[8] padding;
}

struct PeasGtkPluginManagerViewPrivate;

/**
 * This function is passed to peas_extension_set_foreach() and
 * will be called for each extension in @set.
 *
 * Params:
 *     set = A #PeasExtensionSet.
 *     info = A #PeasPluginInfo.
 *     exten = A #PeasExtension.
 *     data = Optional data passed to the function.
 *
 * Since: 1.2
 */
public alias extern(C) void function(PeasExtensionSet* set, PeasPluginInfo* info, PeasExtension* exten, void* data) PeasExtensionSetForeachFunc;

/**
 * A #PeasFactoryFunc is a factory function which will instanciate a new
 * extension of a given type. g_object_newv() is such a function.
 *
 * It is used with peas_object_module_register_extension_factory().
 *
 * Params:
 *     nParameters = The number of paramteters.
 *     parameters = The parameters.
 *     userData = Optional data to be passed to the function, or %NULL.
 *
 * Returns: The created object.
 */
public alias extern(C) GObject* function(uint nParameters, GParameter* parameters, void* userData) PeasFactoryFunc;
