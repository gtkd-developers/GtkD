/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gobject
 * outFile = TypePlugin
 * strct   = GTypePlugin
 * clss    = TypePlugin
 * prefixes:
 * 	- g_type_plugin_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.Type
 * structWrap:
 * local aliases:
 */

module gobject.TypePlugin;

private import gobject.typedefs;

private import lib.gobject;

private import gobject.Type;
/**
 * Description
 * The GObject type system supports dynamic loading of types. The GTypePlugin
 * interface is used to handle the lifecycle of dynamically loaded types.
 * It goes as follows:
 *  The type is initially introduced (usually upon loading the module
 *  the first time, or by your main application that knows what modules
 *  introduces what types), like this:
 * new_type_id = g_type_register_dynamic (parent_type_id,
 *  "TypeName",
 *  new_type_plugin,
 *  type_flags);
 *  where new_type_plugin is an implementation of the
 *  GTypePlugin interface.
 *  The type's implementation is referenced, e.g. through
 *  g_type_class_ref() or through g_type_create_instance() (this is
 *  being called by g_object_new()) or through one of the above done on
 *  a type derived from new_type_id.
 *  This causes the type system to load the type's implementation by calling
 *  g_type_plugin_use() and g_type_plugin_complete_type_info() on
 *  new_type_plugin.
 *  At some point the type's implementation isn't required anymore, e.g. after
 *  g_type_class_unref() or g_type_free_instance() (called when the reference
 *  count of an instance drops to zero).
 *  This causes the type system to throw away the information retrieved from
 *  g_type_plugin_complete_type_info() and then it calls
 *  g_type_plugin_unuse() on new_type_plugin.
 *  Things may repeat from the second step.
 * So basically, you need to implement a GTypePlugin type that carries a
 * use_count, once use_count goes from zero to one, you need to load the
 * implementation to successfully handle the upcoming
 * g_type_plugin_complete_type_info() call. Later, maybe after succeeding
 * use/unuse calls, once use_count drops to zero, you can unload the
 * implementation again. The type system makes sure to call g_type_plugin_use()
 * and g_type_plugin_complete_type_info() again when the type is needed again.
 * GTypeModule is an implementation of GTypePlugin that already implements
 * most of this except for the actual module loading and unloading. It even
 * handles multiple registered types per module.
 */
public class TypePlugin
{
	
	/** the main Gtk struct */
	protected GTypePlugin* gTypePlugin;
	
	
	public GTypePlugin* getTypePluginStruct()
	{
		return gTypePlugin;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTypePlugin;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTypePlugin* gTypePlugin)
	{
		this.gTypePlugin = gTypePlugin;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	/**
	 * Calls the use_plugin function from the GTypePluginClass of plugin.
	 * There should be no need to use this function outside of the GObject
	 * type system itself.
	 * plugin:
	 * a GTypePlugin
	 */
	public void use()
	{
		// void g_type_plugin_use (GTypePlugin *plugin);
		g_type_plugin_use(gTypePlugin);
	}
	
	/**
	 * Calls the unuse_plugin function from the GTypePluginClass of plugin.
	 * There should be no need to use this function outside of the GObject
	 * type system itself.
	 * plugin:
	 * a GTypePlugin
	 */
	public void unuse()
	{
		// void g_type_plugin_unuse (GTypePlugin *plugin);
		g_type_plugin_unuse(gTypePlugin);
	}
	
	/**
	 * Calls the complete_type_info function from the GTypePluginClass of plugin.
	 * There should be no need to use this function outside of the GObject
	 * type system itself.
	 * plugin:
	 * a GTypePlugin
	 * g_type:
	 * the GType whose info is completed
	 * info:
	 * the GTypeInfo struct to fill in
	 * value_table:
	 * the GTypeValueTable to fill in
	 */
	public void completeTypeInfo(GType gType, GTypeInfo* info, GTypeValueTable* valueTable)
	{
		// void g_type_plugin_complete_type_info  (GTypePlugin *plugin,  GType g_type,  GTypeInfo *info,  GTypeValueTable *value_table);
		g_type_plugin_complete_type_info(gTypePlugin, gType, info, valueTable);
	}
	
	/**
	 * Calls the complete_interface_info function from the GTypePluginClass
	 * of plugin. There should be no need to use this function outside of the
	 * GObject type system itself.
	 * plugin:
	 * the GTypePlugin
	 * instance_type:
	 * the GType of an instantiable type to which the interface
	 *  is added
	 * interface_type:
	 * the GType of the interface whose info is completed
	 * info:
	 * the GInterfaceInfo to fill in
	 * See Also
	 * GTypeModule and g_type_register_dynamic().
	 */
	public void completeInterfaceInfo(GType instanceType, GType interfaceType, GInterfaceInfo* info)
	{
		// void g_type_plugin_complete_interface_info  (GTypePlugin *plugin,  GType instance_type,  GType interface_type,  GInterfaceInfo *info);
		g_type_plugin_complete_interface_info(gTypePlugin, instanceType, interfaceType, info);
	}
}
