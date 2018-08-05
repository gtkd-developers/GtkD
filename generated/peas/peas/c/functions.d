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


module peas.c.functions;

import std.stdio;
import peas.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_PEAS = ["libpeas-1.0-0.dll", "gtk-1.0-0.dll"];
else version (OSX)
	static immutable LIBRARY_PEAS = ["libpeas-1.0.0.dylib", "gtk-1.0.0.dylib"];
else
	static immutable LIBRARY_PEAS = ["libpeas-1.0.so.0", "libpeas-gtk-1.0.so.0"];

shared static this()
{
	// peas.Activatable

	Linker.link(peas_activatable_get_type, "peas_activatable_get_type", LIBRARY_PEAS);
	Linker.link(peas_activatable_activate, "peas_activatable_activate", LIBRARY_PEAS);
	Linker.link(peas_activatable_deactivate, "peas_activatable_deactivate", LIBRARY_PEAS);
	Linker.link(peas_activatable_update_state, "peas_activatable_update_state", LIBRARY_PEAS);

	// peas.Engine

	Linker.link(peas_engine_get_type, "peas_engine_get_type", LIBRARY_PEAS);
	Linker.link(peas_engine_new, "peas_engine_new", LIBRARY_PEAS);
	Linker.link(peas_engine_new_with_nonglobal_loaders, "peas_engine_new_with_nonglobal_loaders", LIBRARY_PEAS);
	Linker.link(peas_engine_get_default, "peas_engine_get_default", LIBRARY_PEAS);
	Linker.link(peas_engine_add_search_path, "peas_engine_add_search_path", LIBRARY_PEAS);
	Linker.link(peas_engine_create_extension, "peas_engine_create_extension", LIBRARY_PEAS);
	Linker.link(peas_engine_create_extension_valist, "peas_engine_create_extension_valist", LIBRARY_PEAS);
	Linker.link(peas_engine_create_extensionv, "peas_engine_create_extensionv", LIBRARY_PEAS);
	Linker.link(peas_engine_enable_loader, "peas_engine_enable_loader", LIBRARY_PEAS);
	Linker.link(peas_engine_garbage_collect, "peas_engine_garbage_collect", LIBRARY_PEAS);
	Linker.link(peas_engine_get_loaded_plugins, "peas_engine_get_loaded_plugins", LIBRARY_PEAS);
	Linker.link(peas_engine_get_plugin_info, "peas_engine_get_plugin_info", LIBRARY_PEAS);
	Linker.link(peas_engine_get_plugin_list, "peas_engine_get_plugin_list", LIBRARY_PEAS);
	Linker.link(peas_engine_load_plugin, "peas_engine_load_plugin", LIBRARY_PEAS);
	Linker.link(peas_engine_prepend_search_path, "peas_engine_prepend_search_path", LIBRARY_PEAS);
	Linker.link(peas_engine_provides_extension, "peas_engine_provides_extension", LIBRARY_PEAS);
	Linker.link(peas_engine_rescan_plugins, "peas_engine_rescan_plugins", LIBRARY_PEAS);
	Linker.link(peas_engine_set_loaded_plugins, "peas_engine_set_loaded_plugins", LIBRARY_PEAS);
	Linker.link(peas_engine_unload_plugin, "peas_engine_unload_plugin", LIBRARY_PEAS);

	// peas.ExtensionBase

	Linker.link(peas_extension_base_get_type, "peas_extension_base_get_type", LIBRARY_PEAS);
	Linker.link(peas_extension_base_get_data_dir, "peas_extension_base_get_data_dir", LIBRARY_PEAS);
	Linker.link(peas_extension_base_get_plugin_info, "peas_extension_base_get_plugin_info", LIBRARY_PEAS);

	// peas.ExtensionSet

	Linker.link(peas_extension_set_get_type, "peas_extension_set_get_type", LIBRARY_PEAS);
	Linker.link(peas_extension_set_new, "peas_extension_set_new", LIBRARY_PEAS);
	Linker.link(peas_extension_set_new_valist, "peas_extension_set_new_valist", LIBRARY_PEAS);
	Linker.link(peas_extension_set_newv, "peas_extension_set_newv", LIBRARY_PEAS);
	Linker.link(peas_extension_set_foreach, "peas_extension_set_foreach", LIBRARY_PEAS);
	Linker.link(peas_extension_set_get_extension, "peas_extension_set_get_extension", LIBRARY_PEAS);

	// peas.ObjectModule

	Linker.link(peas_object_module_get_type, "peas_object_module_get_type", LIBRARY_PEAS);
	Linker.link(peas_object_module_new, "peas_object_module_new", LIBRARY_PEAS);
	Linker.link(peas_object_module_new_embedded, "peas_object_module_new_embedded", LIBRARY_PEAS);
	Linker.link(peas_object_module_new_full, "peas_object_module_new_full", LIBRARY_PEAS);
	Linker.link(peas_object_module_create_object, "peas_object_module_create_object", LIBRARY_PEAS);
	Linker.link(peas_object_module_get_library, "peas_object_module_get_library", LIBRARY_PEAS);
	Linker.link(peas_object_module_get_module_name, "peas_object_module_get_module_name", LIBRARY_PEAS);
	Linker.link(peas_object_module_get_path, "peas_object_module_get_path", LIBRARY_PEAS);
	Linker.link(peas_object_module_get_symbol, "peas_object_module_get_symbol", LIBRARY_PEAS);
	Linker.link(peas_object_module_provides_object, "peas_object_module_provides_object", LIBRARY_PEAS);
	Linker.link(peas_object_module_register_extension_factory, "peas_object_module_register_extension_factory", LIBRARY_PEAS);
	Linker.link(peas_object_module_register_extension_type, "peas_object_module_register_extension_type", LIBRARY_PEAS);

	// peas.PluginInfo

	Linker.link(peas_plugin_info_get_type, "peas_plugin_info_get_type", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_authors, "peas_plugin_info_get_authors", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_copyright, "peas_plugin_info_get_copyright", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_data_dir, "peas_plugin_info_get_data_dir", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_dependencies, "peas_plugin_info_get_dependencies", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_description, "peas_plugin_info_get_description", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_external_data, "peas_plugin_info_get_external_data", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_help_uri, "peas_plugin_info_get_help_uri", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_icon_name, "peas_plugin_info_get_icon_name", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_module_dir, "peas_plugin_info_get_module_dir", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_module_name, "peas_plugin_info_get_module_name", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_name, "peas_plugin_info_get_name", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_settings, "peas_plugin_info_get_settings", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_version, "peas_plugin_info_get_version", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_get_website, "peas_plugin_info_get_website", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_has_dependency, "peas_plugin_info_has_dependency", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_is_available, "peas_plugin_info_is_available", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_is_builtin, "peas_plugin_info_is_builtin", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_is_hidden, "peas_plugin_info_is_hidden", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_is_loaded, "peas_plugin_info_is_loaded", LIBRARY_PEAS);
	Linker.link(peas_plugin_info_error_quark, "peas_plugin_info_error_quark", LIBRARY_PEAS);

	// peas.Configurable

	Linker.link(peas_gtk_configurable_get_type, "peas_gtk_configurable_get_type", LIBRARY_PEAS);
	Linker.link(peas_gtk_configurable_create_configure_widget, "peas_gtk_configurable_create_configure_widget", LIBRARY_PEAS);

	// peas.PluginManager

	Linker.link(peas_gtk_plugin_manager_get_type, "peas_gtk_plugin_manager_get_type", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_new, "peas_gtk_plugin_manager_new", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_get_view, "peas_gtk_plugin_manager_get_view", LIBRARY_PEAS);

	// peas.PluginManagerView

	Linker.link(peas_gtk_plugin_manager_view_get_type, "peas_gtk_plugin_manager_view_get_type", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_view_new, "peas_gtk_plugin_manager_view_new", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_view_get_selected_plugin, "peas_gtk_plugin_manager_view_get_selected_plugin", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_view_get_show_builtin, "peas_gtk_plugin_manager_view_get_show_builtin", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_view_set_selected_plugin, "peas_gtk_plugin_manager_view_set_selected_plugin", LIBRARY_PEAS);
	Linker.link(peas_gtk_plugin_manager_view_set_show_builtin, "peas_gtk_plugin_manager_view_set_show_builtin", LIBRARY_PEAS);
}

__gshared extern(C)
{

	// peas.Activatable

	GType function() c_peas_activatable_get_type;
	void function(PeasActivatable* activatable) c_peas_activatable_activate;
	void function(PeasActivatable* activatable) c_peas_activatable_deactivate;
	void function(PeasActivatable* activatable) c_peas_activatable_update_state;

	// peas.Engine

	GType function() c_peas_engine_get_type;
	PeasEngine* function() c_peas_engine_new;
	PeasEngine* function() c_peas_engine_new_with_nonglobal_loaders;
	PeasEngine* function() c_peas_engine_get_default;
	void function(PeasEngine* engine, const(char)* moduleDir, const(char)* dataDir) c_peas_engine_add_search_path;
	PeasExtension* function(PeasEngine* engine, PeasPluginInfo* info, GType extensionType, const(char)* firstProperty, ... ) c_peas_engine_create_extension;
	PeasExtension* function(PeasEngine* engine, PeasPluginInfo* info, GType extensionType, const(char)* firstProperty, void* varArgs) c_peas_engine_create_extension_valist;
	PeasExtension* function(PeasEngine* engine, PeasPluginInfo* info, GType extensionType, uint nParameters, GParameter* parameters) c_peas_engine_create_extensionv;
	void function(PeasEngine* engine, const(char)* loaderName) c_peas_engine_enable_loader;
	void function(PeasEngine* engine) c_peas_engine_garbage_collect;
	char** function(PeasEngine* engine) c_peas_engine_get_loaded_plugins;
	PeasPluginInfo* function(PeasEngine* engine, const(char)* pluginName) c_peas_engine_get_plugin_info;
	GList* function(PeasEngine* engine) c_peas_engine_get_plugin_list;
	int function(PeasEngine* engine, PeasPluginInfo* info) c_peas_engine_load_plugin;
	void function(PeasEngine* engine, const(char)* moduleDir, const(char)* dataDir) c_peas_engine_prepend_search_path;
	int function(PeasEngine* engine, PeasPluginInfo* info, GType extensionType) c_peas_engine_provides_extension;
	void function(PeasEngine* engine) c_peas_engine_rescan_plugins;
	void function(PeasEngine* engine, char** pluginNames) c_peas_engine_set_loaded_plugins;
	int function(PeasEngine* engine, PeasPluginInfo* info) c_peas_engine_unload_plugin;

	// peas.ExtensionBase

	GType function() c_peas_extension_base_get_type;
	char* function(PeasExtensionBase* extbase) c_peas_extension_base_get_data_dir;
	PeasPluginInfo* function(PeasExtensionBase* extbase) c_peas_extension_base_get_plugin_info;

	// peas.ExtensionSet

	GType function() c_peas_extension_set_get_type;
	PeasExtensionSet* function(PeasEngine* engine, GType extenType, const(char)* firstProperty, ... ) c_peas_extension_set_new;
	PeasExtensionSet* function(PeasEngine* engine, GType extenType, const(char)* firstProperty, void* varArgs) c_peas_extension_set_new_valist;
	PeasExtensionSet* function(PeasEngine* engine, GType extenType, uint nParameters, GParameter* parameters) c_peas_extension_set_newv;
	void function(PeasExtensionSet* set, PeasExtensionSetForeachFunc func, void* data) c_peas_extension_set_foreach;
	PeasExtension* function(PeasExtensionSet* set, PeasPluginInfo* info) c_peas_extension_set_get_extension;

	// peas.ObjectModule

	GType function() c_peas_object_module_get_type;
	PeasObjectModule* function(const(char)* moduleName, const(char)* path, int resident) c_peas_object_module_new;
	PeasObjectModule* function(const(char)* moduleName, const(char)* symbol) c_peas_object_module_new_embedded;
	PeasObjectModule* function(const(char)* moduleName, const(char)* path, int resident, int localLinkage) c_peas_object_module_new_full;
	GObject* function(PeasObjectModule* module_, GType extenType, uint nParameters, GParameter* parameters) c_peas_object_module_create_object;
	GModule* function(PeasObjectModule* module_) c_peas_object_module_get_library;
	const(char)* function(PeasObjectModule* module_) c_peas_object_module_get_module_name;
	const(char)* function(PeasObjectModule* module_) c_peas_object_module_get_path;
	const(char)* function(PeasObjectModule* module_) c_peas_object_module_get_symbol;
	int function(PeasObjectModule* module_, GType extenType) c_peas_object_module_provides_object;
	void function(PeasObjectModule* module_, GType extenType, PeasFactoryFunc factoryFunc, void* userData, GDestroyNotify destroyFunc) c_peas_object_module_register_extension_factory;
	void function(PeasObjectModule* module_, GType extenType, GType implType) c_peas_object_module_register_extension_type;

	// peas.PluginInfo

	GType function() c_peas_plugin_info_get_type;
	char** function(PeasPluginInfo* info) c_peas_plugin_info_get_authors;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_copyright;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_data_dir;
	char** function(PeasPluginInfo* info) c_peas_plugin_info_get_dependencies;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_description;
	const(char)* function(PeasPluginInfo* info, const(char)* key) c_peas_plugin_info_get_external_data;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_help_uri;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_icon_name;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_module_dir;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_module_name;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_name;
	GSettings* function(PeasPluginInfo* info, const(char)* schemaId) c_peas_plugin_info_get_settings;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_version;
	const(char)* function(PeasPluginInfo* info) c_peas_plugin_info_get_website;
	int function(PeasPluginInfo* info, const(char)* moduleName) c_peas_plugin_info_has_dependency;
	int function(PeasPluginInfo* info, GError** err) c_peas_plugin_info_is_available;
	int function(PeasPluginInfo* info) c_peas_plugin_info_is_builtin;
	int function(PeasPluginInfo* info) c_peas_plugin_info_is_hidden;
	int function(PeasPluginInfo* info) c_peas_plugin_info_is_loaded;
	GQuark function() c_peas_plugin_info_error_quark;

	// peas.Configurable

	GType function() c_peas_gtk_configurable_get_type;
	GtkWidget* function(PeasGtkConfigurable* configurable) c_peas_gtk_configurable_create_configure_widget;

	// peas.PluginManager

	GType function() c_peas_gtk_plugin_manager_get_type;
	GtkWidget* function(PeasEngine* engine) c_peas_gtk_plugin_manager_new;
	GtkWidget* function(PeasGtkPluginManager* pm) c_peas_gtk_plugin_manager_get_view;

	// peas.PluginManagerView

	GType function() c_peas_gtk_plugin_manager_view_get_type;
	GtkWidget* function(PeasEngine* engine) c_peas_gtk_plugin_manager_view_new;
	PeasPluginInfo* function(PeasGtkPluginManagerView* view) c_peas_gtk_plugin_manager_view_get_selected_plugin;
	int function(PeasGtkPluginManagerView* view) c_peas_gtk_plugin_manager_view_get_show_builtin;
	void function(PeasGtkPluginManagerView* view, PeasPluginInfo* info) c_peas_gtk_plugin_manager_view_set_selected_plugin;
	void function(PeasGtkPluginManagerView* view, int showBuiltin) c_peas_gtk_plugin_manager_view_set_show_builtin;
}


// peas.Activatable

alias c_peas_activatable_get_type peas_activatable_get_type;
alias c_peas_activatable_activate peas_activatable_activate;
alias c_peas_activatable_deactivate peas_activatable_deactivate;
alias c_peas_activatable_update_state peas_activatable_update_state;

// peas.Engine

alias c_peas_engine_get_type peas_engine_get_type;
alias c_peas_engine_new peas_engine_new;
alias c_peas_engine_new_with_nonglobal_loaders peas_engine_new_with_nonglobal_loaders;
alias c_peas_engine_get_default peas_engine_get_default;
alias c_peas_engine_add_search_path peas_engine_add_search_path;
alias c_peas_engine_create_extension peas_engine_create_extension;
alias c_peas_engine_create_extension_valist peas_engine_create_extension_valist;
alias c_peas_engine_create_extensionv peas_engine_create_extensionv;
alias c_peas_engine_enable_loader peas_engine_enable_loader;
alias c_peas_engine_garbage_collect peas_engine_garbage_collect;
alias c_peas_engine_get_loaded_plugins peas_engine_get_loaded_plugins;
alias c_peas_engine_get_plugin_info peas_engine_get_plugin_info;
alias c_peas_engine_get_plugin_list peas_engine_get_plugin_list;
alias c_peas_engine_load_plugin peas_engine_load_plugin;
alias c_peas_engine_prepend_search_path peas_engine_prepend_search_path;
alias c_peas_engine_provides_extension peas_engine_provides_extension;
alias c_peas_engine_rescan_plugins peas_engine_rescan_plugins;
alias c_peas_engine_set_loaded_plugins peas_engine_set_loaded_plugins;
alias c_peas_engine_unload_plugin peas_engine_unload_plugin;

// peas.ExtensionBase

alias c_peas_extension_base_get_type peas_extension_base_get_type;
alias c_peas_extension_base_get_data_dir peas_extension_base_get_data_dir;
alias c_peas_extension_base_get_plugin_info peas_extension_base_get_plugin_info;

// peas.ExtensionSet

alias c_peas_extension_set_get_type peas_extension_set_get_type;
alias c_peas_extension_set_new peas_extension_set_new;
alias c_peas_extension_set_new_valist peas_extension_set_new_valist;
alias c_peas_extension_set_newv peas_extension_set_newv;
alias c_peas_extension_set_foreach peas_extension_set_foreach;
alias c_peas_extension_set_get_extension peas_extension_set_get_extension;

// peas.ObjectModule

alias c_peas_object_module_get_type peas_object_module_get_type;
alias c_peas_object_module_new peas_object_module_new;
alias c_peas_object_module_new_embedded peas_object_module_new_embedded;
alias c_peas_object_module_new_full peas_object_module_new_full;
alias c_peas_object_module_create_object peas_object_module_create_object;
alias c_peas_object_module_get_library peas_object_module_get_library;
alias c_peas_object_module_get_module_name peas_object_module_get_module_name;
alias c_peas_object_module_get_path peas_object_module_get_path;
alias c_peas_object_module_get_symbol peas_object_module_get_symbol;
alias c_peas_object_module_provides_object peas_object_module_provides_object;
alias c_peas_object_module_register_extension_factory peas_object_module_register_extension_factory;
alias c_peas_object_module_register_extension_type peas_object_module_register_extension_type;

// peas.PluginInfo

alias c_peas_plugin_info_get_type peas_plugin_info_get_type;
alias c_peas_plugin_info_get_authors peas_plugin_info_get_authors;
alias c_peas_plugin_info_get_copyright peas_plugin_info_get_copyright;
alias c_peas_plugin_info_get_data_dir peas_plugin_info_get_data_dir;
alias c_peas_plugin_info_get_dependencies peas_plugin_info_get_dependencies;
alias c_peas_plugin_info_get_description peas_plugin_info_get_description;
alias c_peas_plugin_info_get_external_data peas_plugin_info_get_external_data;
alias c_peas_plugin_info_get_help_uri peas_plugin_info_get_help_uri;
alias c_peas_plugin_info_get_icon_name peas_plugin_info_get_icon_name;
alias c_peas_plugin_info_get_module_dir peas_plugin_info_get_module_dir;
alias c_peas_plugin_info_get_module_name peas_plugin_info_get_module_name;
alias c_peas_plugin_info_get_name peas_plugin_info_get_name;
alias c_peas_plugin_info_get_settings peas_plugin_info_get_settings;
alias c_peas_plugin_info_get_version peas_plugin_info_get_version;
alias c_peas_plugin_info_get_website peas_plugin_info_get_website;
alias c_peas_plugin_info_has_dependency peas_plugin_info_has_dependency;
alias c_peas_plugin_info_is_available peas_plugin_info_is_available;
alias c_peas_plugin_info_is_builtin peas_plugin_info_is_builtin;
alias c_peas_plugin_info_is_hidden peas_plugin_info_is_hidden;
alias c_peas_plugin_info_is_loaded peas_plugin_info_is_loaded;
alias c_peas_plugin_info_error_quark peas_plugin_info_error_quark;

// peas.Configurable

alias c_peas_gtk_configurable_get_type peas_gtk_configurable_get_type;
alias c_peas_gtk_configurable_create_configure_widget peas_gtk_configurable_create_configure_widget;

// peas.PluginManager

alias c_peas_gtk_plugin_manager_get_type peas_gtk_plugin_manager_get_type;
alias c_peas_gtk_plugin_manager_new peas_gtk_plugin_manager_new;
alias c_peas_gtk_plugin_manager_get_view peas_gtk_plugin_manager_get_view;

// peas.PluginManagerView

alias c_peas_gtk_plugin_manager_view_get_type peas_gtk_plugin_manager_view_get_type;
alias c_peas_gtk_plugin_manager_view_new peas_gtk_plugin_manager_view_new;
alias c_peas_gtk_plugin_manager_view_get_selected_plugin peas_gtk_plugin_manager_view_get_selected_plugin;
alias c_peas_gtk_plugin_manager_view_get_show_builtin peas_gtk_plugin_manager_view_get_show_builtin;
alias c_peas_gtk_plugin_manager_view_set_selected_plugin peas_gtk_plugin_manager_view_set_selected_plugin;
alias c_peas_gtk_plugin_manager_view_set_show_builtin peas_gtk_plugin_manager_view_set_show_builtin;
