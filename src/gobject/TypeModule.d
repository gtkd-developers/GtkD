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
 * inFile  = GTypeModule.html
 * outPack = gobject
 * outFile = TypeModule
 * strct   = GTypeModule
 * realStrct=
 * ctorStrct=
 * clss    = TypeModule
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_type_module_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Enums
 * 	- gobject.Flags
 * structWrap:
 * 	- GEnumValue* -> Enums
 * 	- GFlagsValue* -> Flags
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.TypeModule;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Enums;
private import gobject.Flags;



private import gobject.ObjectG;

/**
 * GTypeModule provides a simple implementation of the GTypePlugin
 * interface. The model of GTypeModule is a dynamically loaded module
 * which implements some number of types and interface
 * implementations. When the module is loaded, it registers its types
 * and interfaces using g_type_module_register_type() and
 * g_type_module_add_interface(). As long as any instances of these
 * types and interface implementations are in use, the module is kept
 * loaded. When the types and interfaces are gone, the module may be
 * unloaded. If the types and interfaces become used again, the module
 * will be reloaded. Note that the last unref cannot happen in module
 * code, since that would lead to the caller's code being unloaded before
 * g_object_unref() returns to it.
 *
 * Keeping track of whether the module should be loaded or not is done by
 * using a use count - it starts at zero, and whenever it is greater than
 * zero, the module is loaded. The use count is maintained internally by
 * the type system, but also can be explicitly controlled by
 * g_type_module_use() and g_type_module_unuse(). Typically, when loading
 * a module for the first type, g_type_module_use() will be used to load
 * it so that it can initialize its types. At some later point, when the
 * module no longer needs to be loaded except for the type
 * implementations it contains, g_type_module_unuse() is called.
 *
 * GTypeModule does not actually provide any implementation of module
 * loading and unloading. To create a particular module type you must
 * derive from GTypeModule and implement the load and unload functions
 * in GTypeModuleClass.
 */
public class TypeModule : ObjectG
{
	
	/** the main Gtk struct */
	protected GTypeModule* gTypeModule;
	
	
	public GTypeModule* getTypeModuleStruct()
	{
		return gTypeModule;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTypeModule;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTypeModule* gTypeModule)
	{
		super(cast(GObject*)gTypeModule);
		this.gTypeModule = gTypeModule;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTypeModule = cast(GTypeModule*)obj;
	}
	
	/**
	 */
	
	/**
	 * Increases the use count of a GTypeModule by one. If the
	 * use count was zero before, the plugin will be loaded.
	 * If loading the plugin fails, the use count is reset to
	 * its prior value.
	 * Returns: FALSE if the plugin needed to be loaded and loading the plugin failed.
	 */
	public int use()
	{
		// gboolean g_type_module_use (GTypeModule *module);
		return g_type_module_use(gTypeModule);
	}
	
	/**
	 * Decreases the use count of a GTypeModule by one. If the
	 * result is zero, the module will be unloaded. (However, the
	 * GTypeModule will not be freed, and types associated with the
	 * GTypeModule are not unregistered. Once a GTypeModule is
	 * initialized, it must exist forever.)
	 */
	public void unuse()
	{
		// void g_type_module_unuse (GTypeModule *module);
		g_type_module_unuse(gTypeModule);
	}
	
	/**
	 * Sets the name for a GTypeModule
	 * Params:
	 * name = a human-readable name to use in error messages.
	 */
	public void setName(string name)
	{
		// void g_type_module_set_name (GTypeModule *module,  const gchar *name);
		g_type_module_set_name(gTypeModule, Str.toStringz(name));
	}
	
	/**
	 * Looks up or registers a type that is implemented with a particular
	 * type plugin. If a type with name type_name was previously registered,
	 * the GType identifier for the type is returned, otherwise the type
	 * is newly registered, and the resulting GType identifier returned.
	 * When reregistering a type (typically because a module is unloaded
	 * then reloaded, and reinitialized), module and parent_type must
	 * be the same as they were previously.
	 * As long as any instances of the type exist, the type plugin will
	 * not be unloaded.
	 * Params:
	 * parentType = the type for the parent class
	 * typeName = name for the type
	 * typeInfo = type information structure
	 * flags = flags field providing details about the type
	 * Returns: the new or existing type ID
	 */
	public GType registerType(GType parentType, string typeName, GTypeInfo* typeInfo, GTypeFlags flags)
	{
		// GType g_type_module_register_type (GTypeModule *module,  GType parent_type,  const gchar *type_name,  const GTypeInfo *type_info,  GTypeFlags flags);
		return g_type_module_register_type(gTypeModule, parentType, Str.toStringz(typeName), typeInfo, flags);
	}
	
	/**
	 * Registers an additional interface for a type, whose interface lives
	 * in the given type plugin. If the interface was already registered
	 * for the type in this plugin, nothing will be done.
	 * As long as any instances of the type exist, the type plugin will
	 * not be unloaded.
	 * Params:
	 * instanceType = type to which to add the interface.
	 * interfaceType = interface type to add
	 * interfaceInfo = type information structure
	 */
	public void addInterface(GType instanceType, GType interfaceType, GInterfaceInfo* interfaceInfo)
	{
		// void g_type_module_add_interface (GTypeModule *module,  GType instance_type,  GType interface_type,  const GInterfaceInfo *interface_info);
		g_type_module_add_interface(gTypeModule, instanceType, interfaceType, interfaceInfo);
	}
	
	/**
	 * Looks up or registers an enumeration that is implemented with a particular
	 * type plugin. If a type with name type_name was previously registered,
	 * the GType identifier for the type is returned, otherwise the type
	 * is newly registered, and the resulting GType identifier returned.
	 * As long as any instances of the type exist, the type plugin will
	 * not be unloaded.
	 * Since 2.6
	 * Params:
	 * name = name for the type
	 * Returns: the new or existing type ID
	 */
	public GType registerEnum(string name, Enums _StaticValues)
	{
		// GType g_type_module_register_enum (GTypeModule *module,  const gchar *name,  const GEnumValue *const_static_values);
		return g_type_module_register_enum(gTypeModule, Str.toStringz(name), (_StaticValues is null) ? null : _StaticValues.getEnumsStruct());
	}
	
	/**
	 * Looks up or registers a flags type that is implemented with a particular
	 * type plugin. If a type with name type_name was previously registered,
	 * the GType identifier for the type is returned, otherwise the type
	 * is newly registered, and the resulting GType identifier returned.
	 * As long as any instances of the type exist, the type plugin will
	 * not be unloaded.
	 * Since 2.6
	 * Params:
	 * name = name for the type
	 * Returns: the new or existing type ID
	 */
	public GType registerFlags(string name, Flags _StaticValues)
	{
		// GType g_type_module_register_flags (GTypeModule *module,  const gchar *name,  const GFlagsValue *const_static_values);
		return g_type_module_register_flags(gTypeModule, Str.toStringz(name), (_StaticValues is null) ? null : _StaticValues.getFlagsStruct());
	}
}
