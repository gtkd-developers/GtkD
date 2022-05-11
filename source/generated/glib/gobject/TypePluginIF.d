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


module gobject.TypePluginIF;

private import gobject.c.functions;
public  import gobject.c.types;


/**
 * An interface that handles the lifecycle of dynamically loaded types.
 * 
 * The GObject type system supports dynamic loading of types.
 * It goes as follows:
 * 
 * 1. The type is initially introduced (usually upon loading the module
 * the first time, or by your main application that knows what modules
 * introduces what types), like this:
 * |[<!-- language="C" -->
 * new_type_id = g_type_register_dynamic (parent_type_id,
 * "TypeName",
 * new_type_plugin,
 * type_flags);
 * ]|
 * where @new_type_plugin is an implementation of the
 * #GTypePlugin interface.
 * 
 * 2. The type's implementation is referenced, e.g. through
 * g_type_class_ref() or through g_type_create_instance() (this is
 * being called by g_object_new()) or through one of the above done on
 * a type derived from @new_type_id.
 * 
 * 3. This causes the type system to load the type's implementation by
 * calling g_type_plugin_use() and g_type_plugin_complete_type_info()
 * on @new_type_plugin.
 * 
 * 4. At some point the type's implementation isn't required anymore,
 * e.g. after g_type_class_unref() or g_type_free_instance() (called
 * when the reference count of an instance drops to zero).
 * 
 * 5. This causes the type system to throw away the information retrieved
 * from g_type_plugin_complete_type_info() and then it calls
 * g_type_plugin_unuse() on @new_type_plugin.
 * 
 * 6. Things may repeat from the second step.
 * 
 * So basically, you need to implement a #GTypePlugin type that
 * carries a use_count, once use_count goes from zero to one, you need
 * to load the implementation to successfully handle the upcoming
 * g_type_plugin_complete_type_info() call. Later, maybe after
 * succeeding use/unuse calls, once use_count drops to zero, you can
 * unload the implementation again. The type system makes sure to call
 * g_type_plugin_use() and g_type_plugin_complete_type_info() again
 * when the type is needed again.
 * 
 * #GTypeModule is an implementation of #GTypePlugin that already
 * implements most of this except for the actual module loading and
 * unloading. It even handles multiple registered types per module.
 */
public interface TypePluginIF{
	/** Get the main Gtk struct */
	public GTypePlugin* getTypePluginStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_type_plugin_get_type();
	}

	/**
	 * Calls the @complete_interface_info function from the
	 * #GTypePluginClass of @plugin. There should be no need to use this
	 * function outside of the GObject type system itself.
	 *
	 * Params:
	 *     instanceType = the #GType of an instantiatable type to which the interface
	 *         is added
	 *     interfaceType = the #GType of the interface whose info is completed
	 *     info = the #GInterfaceInfo to fill in
	 */
	public void completeInterfaceInfo(GType instanceType, GType interfaceType, GInterfaceInfo* info);

	/**
	 * Calls the @complete_type_info function from the #GTypePluginClass of @plugin.
	 * There should be no need to use this function outside of the GObject
	 * type system itself.
	 *
	 * Params:
	 *     gType = the #GType whose info is completed
	 *     info = the #GTypeInfo struct to fill in
	 *     valueTable = the #GTypeValueTable to fill in
	 */
	public void completeTypeInfo(GType gType, GTypeInfo* info, GTypeValueTable* valueTable);

	/**
	 * Calls the @unuse_plugin function from the #GTypePluginClass of
	 * @plugin.  There should be no need to use this function outside of
	 * the GObject type system itself.
	 */
	public void unuse();

	/**
	 * Calls the @use_plugin function from the #GTypePluginClass of
	 * @plugin.  There should be no need to use this function outside of
	 * the GObject type system itself.
	 */
	public void use();
}
