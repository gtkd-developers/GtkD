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
 * outFile = Type
 * strct   = 
 * realStrct=
 * clss    = Type
 * extend  = 
 * prefixes:
 * 	- g_type_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Quark
 * 	- gobject.Type
 * 	- gobject.TypePlugin
 * structWrap:
 * 	- GTypePlugin* -> TypePlugin
 * local aliases:
 */

module gobject.Type;

private import gobject.typedefs;

private import lib.gobject;

private import glib.Quark;private import gobject.Type;private import gobject.TypePlugin;
/**
 * Description
 * The GType API is the foundation of the GObject system. It provides the
 * facilities for registering and managing all fundamental data types,
 * user-defined object and interface types. Before using any GType
 * or GObject functions, g_type_init() must be called to initialize the
 * type system.
 * For type creation and registration purposes, all types fall into one of
 * two categories: static or dynamic. Static types are never loaded or
 * unloaded at run-time as dynamic types may be. Static types are created
 * with g_type_register_static() that gets type specific information passed
 * in via a GTypeInfo structure.
 * Dynamic types are created with g_type_register_dynamic() which takes a
 * GTypePlugin structure instead. The remaining type information (the
 * GTypeInfo structure) is retrieved during runtime through GTypePlugin
 * and the g_type_plugin_*() API.
 * These registration functions are usually called only once from a
 * function whose only purpose is to return the type identifier for a
 * specific class. Once the type (or class or interface) is registered,
 * it may be instantiated, inherited, or implemented depending on exactly
 * what sort of type it is.
 * There is also a third registration function for registering fundamental
 * types called g_type_register_fundamental() which requires both a GTypeInfo
 * structure and a GTypeFundamentalInfo structure but it is seldom used
 * since most fundamental types are predefined rather than user-defined.
 * A final word about type names.
 * Such an identifier needs to be at least three characters long. There is no
 * upper length limit. The first character needs to be a letter (a-z or A-Z)
 * or an underscore '_'. Subsequent characters can be letters, numbers or
 * any of '-_+'.
 */
public class Type
{
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Prior to any use of the type system, g_type_init() has to be called to initialize
	 * the type system and assorted other code portions (such as the various fundamental
	 * type implementations or the signal system).
	 */
	public static void init()
	{
		// void g_type_init (void);
		g_type_init();
	}
	
	
	/**
	 * Similar to g_type_init(), but additionally sets debug flags.
	 * debug_flags:
	 * Bitwise combination of GTypeDebugFlags values for debugging purposes.
	 */
	public static void initWithDebugFlags(GTypeDebugFlags debugFlags)
	{
		// void g_type_init_with_debug_flags (GTypeDebugFlags debug_flags);
		g_type_init_with_debug_flags(debugFlags);
	}
	
	/**
	 * Returns the unique name that is assigned to a type ID (this is the preferred method
	 * to find out whether a specific type has been registered for the passed in ID yet).
	 * type:
	 * 		Type to return name for.
	 * Returns:
	 * 	Static type name or NULL.
	 */
	public static char[] name(GType type)
	{
		// const gchar* g_type_name (GType type);
		return std.string.toString(g_type_name(type) );
	}
	
	/**
	 * Return the corresponding quark of the type IDs name.
	 * type:
	 *  Type to return quark of type name for.
	 * Returns:
	 * The type names quark or 0.
	 */
	public static GQuark qname(GType type)
	{
		// GQuark g_type_qname (GType type);
		return g_type_qname(type);
	}
	
	/**
	 * Lookup the type ID from a given type name, returns 0 if no type has been registered under this name
	 * (this is the preferred method to find out by name whether a specific type has been registered yet).
	 * name:
	 *  Type name to lookup.
	 * Returns:
	 * Corresponding type ID or 0.
	 */
	public static GType fromName(char[] name)
	{
		// GType g_type_from_name (const gchar *name);
		return g_type_from_name(std.string.toStringz(name));
	}
	
	/**
	 * Return the direct parent type of the passed in type.
	 * If the passed in type has no parent, i.e. is a fundamental type, 0 is returned.
	 * type:
	 *  The derived type.
	 * Returns:
	 * The parent type.
	 */
	public static GType parent(GType type)
	{
		// GType g_type_parent (GType type);
		return g_type_parent(type);
	}
	
	/**
	 * Returns the length of the ancestry of the passed in type. This includes the
	 * type itself, so that e.g. a fundamental type has depth 1.
	 * type:
	 *  A GType value.
	 * Returns:
	 * The depth of type.
	 */
	public static uint depth(GType type)
	{
		// guint g_type_depth (GType type);
		return g_type_depth(type);
	}
	
	/**
	 * Given a leaf_type and a root_type which is contained in its anchestry, return
	 * the type that root_type is the immediate parent of.
	 * In other words, this function determines the type that is derived directly from
	 * root_type which is also a base class of leaf_type. Given a root type and a
	 * leaf type, this function can be used to determine the types and order in which
	 * the leaf type is descended from the root type.
	 * leaf_type:
	 * 	Descendant of root_type and the type to be returned.
	 * root_type:
	 * 	Immediate parent of the returned type.
	 * Returns:
	 * 	Immediate child of root_type and anchestor of leaf_type.
	 */
	public static GType nextBase(GType leafType, GType rootType)
	{
		// GType g_type_next_base (GType leaf_type,  GType root_type);
		return g_type_next_base(leafType, rootType);
	}
	
	/**
	 * If is_a_type is a derivable type, check whether type is a descendant of is_a_type.
	 * If is_a_type is an interface, check whether type conforms to it.
	 * type:
	 *  Type to check anchestry for.
	 * is_a_type:
	 * Possible anchestor of type or interface type could conform to.
	 * Returns:
	 *  TRUE if type is_a is_a_type holds true.
	 */
	public static int isA(GType type, GType isA_Type)
	{
		// gboolean g_type_is_a (GType type,  GType is_a_type);
		return g_type_is_a(type, isA_Type);
	}
	
	/**
	 * Increments the reference count of the class structure belonging to
	 * type. This function will demand-create the class if it doesn't
	 * exist already.
	 * type:
	 * 	 Type ID of a classed type.
	 * Returns:
	 * The GTypeClass structure for the given type ID.
	 */
	public static void* classRef(GType type)
	{
		// gpointer g_type_class_ref (GType type);
		return g_type_class_ref(type);
	}
	
	/**
	 * This function is essentially the same as g_type_class_ref(), except that
	 * the classes reference count isn't incremented. Therefore, this function
	 * may return NULL if the class of the type passed in does not currently
	 * exist (hasn't been referenced before).
	 * type:
	 * 		Type ID of a classed type.
	 * Returns:
	 * 	The GTypeClass structure for the given type ID or NULL
	 * 		if the class does not currently exist.
	 */
	public static void* classPeek(GType type)
	{
		// gpointer g_type_class_peek (GType type);
		return g_type_class_peek(type);
	}
	
	/**
	 * A more efficient version of g_type_class_peek() which works only for
	 * static types.
	 * type:
	 * Type ID of a classed type.
	 * Returns:
	 * The GTypeClass structure for the given type ID or NULL
	 *  if the class does not currently exist or is dynamically loaded.
	 * Since 2.4
	 */
	public static void* classPeekStatic(GType type)
	{
		// gpointer g_type_class_peek_static (GType type);
		return g_type_class_peek_static(type);
	}
	
	/**
	 * Decrements the reference count of the class structure being passed in.
	 * Once the last reference count of a class has been released, classes
	 * may be finalized by the type system, so further dereferencing of a
	 * class pointer after g_type_class_unref() are invalid.
	 * g_class:
	 * 	The GTypeClass structure to unreference.
	 */
	public static void classUnref(void* gClass)
	{
		// void g_type_class_unref (gpointer g_class);
		g_type_class_unref(gClass);
	}
	
	/**
	 * This is a convenience function, often needed in class initializers.
	 * It essentially takes the immediate parent type of the class passed in,
	 * and returns the class structure thereof. Since derived classes hold
	 * a reference count on their parent classes as long as they are instantiated,
	 * the returned class will always exist. This function is essentially
	 * equivalent to:
	 * g_type_class_peek (g_type_parent (G_TYPE_FROM_CLASS (g_class)));
	 * g_class:
	 * The GTypeClass structure to retrieve the parent class for.
	 * Returns:
	 * The parent class of g_class.
	 */
	public static void* classPeekParent(void* gClass)
	{
		// gpointer g_type_class_peek_parent (gpointer g_class);
		return g_type_class_peek_parent(gClass);
	}
	
	/**
	 * Registers a private structure for a instantiatable type;
	 * when an object is allocated, the private structures for
	 * the type and and all of its parent types are allocated
	 * sequentially in the same memory block as the public
	 * structures. This function should be called in the
	 * type's class_init() function. The private structure can
	 * be retrieved using the G_TYPE_INSTANCE_GET_PRIVATE() macro.
	 * The following example shows attaching a private structure
	 * MyObjectPrivate to an object
	 * MyObject defined in the standard GObject
	 * fashion.
	 * typedef struct _MyObjectPrivate MyObjectPrivate;
	 * struct _MyObjectPrivate {
		 *  int some_field;
	 * };
	 * #define MY_OBJECT_GET_PRIVATE(o) \
	 *  (G_TYPE_INSTANCE_GET_PRIVATE ((o), MY_TYPE_OBJECT, MyObjectPrivate))
	 * static void
	 * my_object_class_init (MyObjectClass *klass)
	 * {
		 *  g_type_class_add_private (klass, sizeof (MyObjectPrivate));
	 * }
	 * static int
	 * my_object_get_some_field (MyObject *my_object)
	 * {
		 *  MyObjectPrivate *priv = MY_OBJECT_GET_PRIVATE (my_object);
		 *  return priv->some_field;
	 * }
	 * g_class:
	 * class structure for an instantiatable type
	 * private_size:
	 * size of private structure.
	 */
	public static void classAddPrivate(void* gClass, uint privateSize)
	{
		// void g_type_class_add_private (gpointer g_class,  gsize private_size);
		g_type_class_add_private(gClass, privateSize);
	}
	
	/**
	 * Returns the GTypeInterface structure of an interface to which the passed in
	 * class conforms.
	 * instance_class:
	 * A GTypeClass structure.
	 * iface_type:
	 *  An interface ID which this class conforms to.
	 * Returns:
	 *  The GTypeInterface structure of iface_type, or NULL if the
	 *  class is not instantiated.
	 */
	public static void* interfacePeek(void* instanceClass, GType ifaceType)
	{
		// gpointer g_type_interface_peek (gpointer instance_class,  GType iface_type);
		return g_type_interface_peek(instanceClass, ifaceType);
	}
	
	/**
	 * Returns the corresponding GTypeInterface structure of the parent type
	 * of the instance type to which g_iface belongs. This is useful when
	 * deriving the implementation of an interface from the parent type and
	 * then possibly overriding some methods.
	 * g_iface:
	 * A GTypeInterface structure.
	 * Returns:
	 * The corresponding GTypeInterface structure of the parent type
	 *  of the instance type to which g_iface belongs, or NULL if the parent type
	 *  doesn't conform to the interface.
	 */
	public static void* interfacePeekParent(void* gIface)
	{
		// gpointer g_type_interface_peek_parent (gpointer g_iface);
		return g_type_interface_peek_parent(gIface);
	}
	
	/**
	 * Increments the reference count for the interface type g_type,
	 * and returns the default interface vtable for the type.
	 * If the type is not currently in use, then the default vtable
	 * for the type will be created and initalized by calling
	 * the base interface init and default vtable init functions for
	 * the type (the @base_init
	 * and class_init members of GTypeInfo).
	 * Calling g_type_default_interface_ref() is useful when you
	 * want to make sure that signals and properties for an interface
	 * have been installed.
	 * g_type:
	 * an interface type
	 * Returns:
	 * the default vtable for the interface; call
	 *  g_type_default_interface_unref() when you are done using
	 *  the interface.
	 * Since 2.4
	 */
	public static void* defaultInterfaceRef(GType gType)
	{
		// gpointer g_type_default_interface_ref (GType g_type);
		return g_type_default_interface_ref(gType);
	}
	
	/**
	 * If the interface type g_type is currently in use, returns
	 * its default interface vtable.
	 * g_type:
	 * an interface type
	 * Returns:
	 * the default vtable for the interface; or NULL
	 *  if the type is not currently in use.
	 * Since 2.4
	 */
	public static void* defaultInterfacePeek(GType gType)
	{
		// gpointer g_type_default_interface_peek (GType g_type);
		return g_type_default_interface_peek(gType);
	}
	
	/**
	 * Decrements the reference count for the type corresponding to the
	 * interface default vtable g_iface. If the type is dynamic, then
	 * when no one is using the interface and all references have
	 * been released, the finalize function for the interface's default
	 * vtable (the class_finalize member of
	 * GTypeInfo) will be called.
	 * g_iface:
	 * the default vtable structure for a interface, as
	 *  returned by g_type_default_interface_ref()
	 * Since 2.4
	 */
	public static void defaultInterfaceUnref(void* gIface)
	{
		// void g_type_default_interface_unref (gpointer g_iface);
		g_type_default_interface_unref(gIface);
	}
	
	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing the
	 * child types of type. The return value has to be g_free()ed after use.
	 * type:
	 *  The parent type.
	 * n_children:
	 * Optional guint pointer to contain the number of child types.
	 * Returns:
	 *  Newly allocated and 0-terminated array of child types.
	 */
	public static GType* children(GType type, uint* nChildren)
	{
		// GType* g_type_children (GType type,  guint *n_children);
		return g_type_children(type, nChildren);
	}
	
	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing the
	 * interface types that type conforms to. The return value has to be
	 * g_free()ed after use.
	 * type:
	 *  The type to list interface types for.
	 * n_interfaces:
	 * Optional guint pointer to contain the number of interface types.
	 * Returns:
	 *  Newly allocated and 0-terminated array of interface types.
	 */
	public static GType* interfaces(GType type, uint* nInterfaces)
	{
		// GType* g_type_interfaces (GType type,  guint *n_interfaces);
		return g_type_interfaces(type, nInterfaces);
	}
	
	/**
	 * Returns the prerequisites of an interfaces type.
	 * interface_type:
	 * an interface type
	 * n_prerequisites:
	 * location to return the number of prerequisites, or NULL
	 * Returns:
	 * a newly-allocated zero-terminated array of GType containing
	 *  the prerequisites of interface_type
	 * Since 2.2
	 */
	public static GType* interfacePrerequisites(GType interfaceType, uint* nPrerequisites)
	{
		// GType* g_type_interface_prerequisites (GType interface_type,  guint *n_prerequisites);
		return g_type_interface_prerequisites(interfaceType, nPrerequisites);
	}
	
	/**
	 * Attaches arbitrary data to a type.
	 * type:
	 * a GType
	 * quark:
	 * a GQuark id to identify the data
	 * data:
	 * the data
	 */
	public static void setQdata(GType type, GQuark quark, void* data)
	{
		// void g_type_set_qdata (GType type,  GQuark quark,  gpointer data);
		g_type_set_qdata(type, quark, data);
	}
	
	/**
	 * Obtains data which has previously been attached to type
	 * with g_type_set_qdata().
	 * type:
	 * a GType
	 * quark:
	 * a GQuark id to identify the data
	 * Returns:
	 * the data, or NULL if no data was found
	 */
	public static void* getQdata(GType type, GQuark quark)
	{
		// gpointer g_type_get_qdata (GType type,  GQuark quark);
		return g_type_get_qdata(type, quark);
	}
	
	/**
	 * Queries the type system for information about a specific type.
	 * This function will fill in a user-provided structure to hold type-specific
	 * information. If an invalid GType is passed in, the type member of the
	 * GTypeQuery is 0. All members filled into the GTypeQuery structure should
	 * be considered constant and have to be left untouched.
	 * type:
	 * the GType value of a static, classed type.
	 * query:
	 * A user provided structure that is filled in with constant values
	 *  upon success.
	 */
	public static void query(GType type, GTypeQuery* query)
	{
		// void g_type_query (GType type,  GTypeQuery *query);
		g_type_query(type, query);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Registers type_name as the name of a new static type derived from
	 * parent_type. The type system uses the information contained in the
	 * GTypeInfo structure pointed to by info to manage the type and its
	 * instances (if not abstract). The value of flags determines the nature
	 * (e.g. abstract or not) of the type.
	 * parent_type:
	 * 	Type which this type will be derived from.
	 * type_name:
	 * 	0-terminated string used as the name of the new type.
	 * info:
	 * 		The GTypeInfo structure for this type.
	 * flags:
	 * 		Bitwise combination of GTypeFlags values.
	 * Returns:
	 * 	The new type identifier.
	 */
	public static GType registerStatic(GType parentType, char[] typeName, GTypeInfo* info, GTypeFlags flags)
	{
		// GType g_type_register_static (GType parent_type,  const gchar *type_name,  const GTypeInfo *info,  GTypeFlags flags);
		return g_type_register_static(parentType, std.string.toStringz(typeName), info, flags);
	}
	
	/**
	 * Registers type_name as the name of a new dynamic type derived from
	 * parent_type. The type system uses the information contained in the
	 * GTypePlugin structure pointed to by plugin to manage the type and its
	 * instances (if not abstract). The value of flags determines the nature
	 * (e.g. abstract or not) of the type.
	 * parent_type:
	 * 	Type which this type will be derived from.
	 * type_name:
	 * 	0-terminated string used as the name of the new type.
	 * plugin:
	 * 	The GTypePlugin structure to retrieve the GTypeInfo from.
	 * flags:
	 * 		Bitwise combination of GTypeFlags values.
	 * Returns:
	 * 	The new type identifier or G_TYPE_INVALID if registration failed.
	 */
	public static GType registerDynamic(GType parentType, char[] typeName, TypePlugin plugin, GTypeFlags flags)
	{
		// GType g_type_register_dynamic (GType parent_type,  const gchar *type_name,  GTypePlugin *plugin,  GTypeFlags flags);
		return g_type_register_dynamic(parentType, std.string.toStringz(typeName), plugin.getTypePluginStruct(), flags);
	}
	
	/**
	 * Registers type_id as the predefined identifier and type_name as the
	 * name of a fundamental type. The type system uses the information
	 * contained in the GTypeInfo structure pointed to by info and the
	 * GTypeFundamentalInfo structure pointed to by finfo to manage the
	 * type and its instances. The value of flags determines additional
	 * characteristics of the fundamental type.
	 * type_id:
	 * 	A predefined GTypeFundamentals value.
	 * type_name:
	 * 	0-terminated string used as the name of the new type.
	 * info:
	 * 		The GTypeInfo structure for this type.
	 * finfo:
	 * 		The GTypeFundamentalInfo structure for this type.
	 * flags:
	 * 		Bitwise combination of GTypeFlags values.
	 * Returns:
	 * 	The predefined type identifier.
	 */
	public static GType registerFundamental(GType typeId, char[] typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags)
	{
		// GType g_type_register_fundamental (GType type_id,  const gchar *type_name,  const GTypeInfo *info,  const GTypeFundamentalInfo *finfo,  GTypeFlags flags);
		return g_type_register_fundamental(typeId, std.string.toStringz(typeName), info, finfo, flags);
	}
	
	/**
	 * Adds the static interface_type to instantiable_type. The information
	 * contained in the GTypeInterfaceInfo structure pointed to by info
	 * is used to manage the relationship.
	 * instance_type:
	 * 	 GType value of an instantiable type.
	 * interface_type:
	 * GType value of an interface type.
	 * info:
	 * 		 The GInterfaceInfo structure for this
	 * 		 (instance_type, interface_type) combination.
	 */
	public static void addInterfaceStatic(GType instanceType, GType interfaceType, GInterfaceInfo* info)
	{
		// void g_type_add_interface_static (GType instance_type,  GType interface_type,  const GInterfaceInfo *info);
		g_type_add_interface_static(instanceType, interfaceType, info);
	}
	
	/**
	 * Adds the dynamic interface_type to instantiable_type. The information
	 * contained in the GTypePlugin structure pointed to by plugin
	 * is used to manage the relationship.
	 * instance_type:
	 * the GType value of an instantiable type.
	 * interface_type:
	 * the GType value of an interface type.
	 * plugin:
	 * the GTypePlugin structure to retrieve the GInterfaceInfo from.
	 */
	public static void addInterfaceDynamic(GType instanceType, GType interfaceType, TypePlugin plugin)
	{
		// void g_type_add_interface_dynamic (GType instance_type,  GType interface_type,  GTypePlugin *plugin);
		g_type_add_interface_dynamic(instanceType, interfaceType, plugin.getTypePluginStruct());
	}
	
	/**
	 * Adds prerequisite_type to the list of prerequisites of interface_type.
	 * This means that any type implementing interface_type must also implement
	 * prerequisite_type. Prerequisites can be thought of as an alternative to
	 * interface derivation (which GType doesn't support). An interface can have
	 * at most one instantiatable prerequisite type.
	 * interface_type:
	 * GType value of an interface type.
	 * prerequisite_type:
	 * GType value of an interface or instantiatable type.
	 */
	public static void interfaceAddPrerequisite(GType interfaceType, GType prerequisiteType)
	{
		// void g_type_interface_add_prerequisite  (GType interface_type,  GType prerequisite_type);
		g_type_interface_add_prerequisite(interfaceType, prerequisiteType);
	}
	
	/**
	 * Returns the GTypePlugin structure for type or
	 * NULL if type does not have a GTypePlugin structure.
	 * type:
	 * 		The GType to retrieve the plugin for.
	 * Returns:
	 * 	The corresponding plugin if type is a dynamic type,
	 * 		NULL otherwise.
	 */
	public static TypePlugin getPlugin(GType type)
	{
		// GTypePlugin* g_type_get_plugin (GType type);
		return new TypePlugin( g_type_get_plugin(type) );
	}
	
	/**
	 * Returns the GTypePlugin structure for the dynamic interface
	 * interface_type which has been added to instance_type, or
	 * NULL if interface_type has not been added to instance_type or does
	 * not have a GTypePlugin structure. See g_type_add_interface_dynamic().
	 * instance_type:
	 * the GType value of an instantiatable type.
	 * interface_type:
	 * the GType value of an interface type.
	 * Returns:
	 * the GTypePlugin for the dynamic interface interface_type
	 *  of instance_type.
	 */
	public static TypePlugin interfaceGetPlugin(GType instanceType, GType interfaceType)
	{
		// GTypePlugin* g_type_interface_get_plugin (GType instance_type,  GType interface_type);
		return new TypePlugin( g_type_interface_get_plugin(instanceType, interfaceType) );
	}
	
	/**
	 * Returns the next free fundamental type id which can be used to
	 * register a new fundamental type with g_type_register_fundamental().
	 * The returned type ID represents the highest currently registered
	 * fundamental type identifier.
	 * Returns:
	 * The nextmost fundamental type ID to be registered,
	 *  or 0 if the type system ran out of fundamental type IDs.
	 */
	public static GType fundamentalNext()
	{
		// GType g_type_fundamental_next (void);
		return g_type_fundamental_next();
	}
	
	/**
	 * Internal function, used to extract the fundamental type ID portion.
	 * use G_TYPE_FUNDAMENTAL() instead.
	 * type_id:
	 * valid type ID
	 * Returns:
	 * fundamental type ID
	 */
	public static GType fundamental(GType typeId)
	{
		// GType g_type_fundamental (GType type_id);
		return g_type_fundamental(typeId);
	}
	
	/**
	 * Creates and initializes an instance of type if type is valid and can
	 * be instantiated. The type system only performs basic allocation and
	 * structure setups for instances, actual instance creation should happen
	 * through functions supplied by the type's fundamental type implementation.
	 * So use of g_type_create_instance() is reserved for implementators of
	 * fundamental types only. E.g. instances of the GObject hierarchy
	 * should be created via g_object_new() and never
	 * directly through g_type_create_instance() which doesn't handle
	 * things like singleton objects or object construction.
	 * Note: Do not use this function, unless you're
	 * implementing a fundamental type. Also language bindings should not
	 * use this function but g_object_new() instead.
	 * type:
	 * 	 An instantiatable type to create an instance for.
	 * Returns:
	 * An allocated and initialized instance, subject to further
	 * 	 treatment by the fundamental type implementation.
	 */
	public static GTypeInstance* createInstance(GType type)
	{
		// GTypeInstance* g_type_create_instance (GType type);
		return g_type_create_instance(type);
	}
	
	/**
	 * Frees an instance of a type, returning it to the instance pool for the type,
	 * if there is one.
	 * Like g_type_create_instance(), this function is reserved for implementors of
	 * fundamental types.
	 * instance:
	 * an instance of a type.
	 */
	public static void freeInstance(GTypeInstance* instanc)
	{
		// void g_type_free_instance (GTypeInstance *instance);
		g_type_free_instance(instanc);
	}
	
	/**
	 * Adds a GTypeClassCacheFunc to be called before the reference count of a class
	 * goes from one to zero. This can be used to prevent premature class destruction.
	 * All installed GTypeClassCacheFunc functions will be chained until one of them
	 * returns TRUE. The functions have to check the class id passed in to figure
	 * whether they actually want to cache the class of this type, since all classes
	 * are routed through the same GTypeClassCacheFunc chain.
	 * cache_data:
	 * data to be passed to cache_func
	 * cache_func:
	 * a GTypeClassCacheFunc
	 */
	public static void addClassCacheFunc(void* cacheData, GTypeClassCacheFunc cacheFunc)
	{
		// void g_type_add_class_cache_func (gpointer cache_data,  GTypeClassCacheFunc cache_func);
		g_type_add_class_cache_func(cacheData, cacheFunc);
	}
	
	/**
	 * Removes a previously installed GTypeClassCacheFunc. The cache maintained
	 * by cache_func has to be empty when calling g_type_remove_class_cache_func()
	 * to avoid leaks.
	 * cache_data:
	 * data that was given when adding cache_func
	 * cache_func:
	 * a GTypeClassCacheFunc
	 */
	public static void removeClassCacheFunc(void* cacheData, GTypeClassCacheFunc cacheFunc)
	{
		// void g_type_remove_class_cache_func (gpointer cache_data,  GTypeClassCacheFunc cache_func);
		g_type_remove_class_cache_func(cacheData, cacheFunc);
	}
	
	/**
	 * A variant of g_type_class_unref() for use in GTypeClassCacheFunc
	 * implementations. It unreferences a class without consulting the chain
	 * of GTypeClassCacheFuncs, avoiding the recursion which would occur
	 * otherwise.
	 * g_class:
	 * The GTypeClass structure to unreference.
	 */
	public static void classUnrefUncached(void* gClass)
	{
		// void g_type_class_unref_uncached (gpointer g_class);
		g_type_class_unref_uncached(gClass);
	}
	
	/**
	 * Adds a function to be called after an interface vtable is
	 * initialized for any class. That is, after the interface_init
	 * member of GInterfaceInfo has been called.
	 * This function is useful when you want to check an invariant
	 * that depends on the interfaces of a class. For instance,
	 * the implementation of GObject uses this facility to check
	 * that an object implements all of the properties that are
	 * defined on its interfaces.
	 * check_data:
	 * data to pass to check_func
	 * check_func:
	 * function to be called after each interface
	 *  is initialized.
	 * Since 2.4
	 */
	public static void addInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		// void g_type_add_interface_check (gpointer check_data,  GTypeInterfaceCheckFunc check_func);
		g_type_add_interface_check(checkData, checkFunc);
	}
	
	/**
	 * Removes an interface check function added with
	 * g_type_add_interface_check().
	 * check_data:
	 * callback data passed to g_type_add_interface_check()
	 * check_func:
	 * callback function passed to g_type_add_interface_check()
	 * Since 2.4
	 */
	public static void removeInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		// void g_type_remove_interface_check (gpointer check_data,  GTypeInterfaceCheckFunc check_func);
		g_type_remove_interface_check(checkData, checkFunc);
	}
	
	
	/**
	 * Returns the location of the GTypeValueTable associated with type.
	 * Note, this function should only be used from source code
	 * that implements or has internal knowledge of the implementation of
	 * type.
	 * type:
	 *  A GType value.
	 * Returns:
	 * Location of the GTypeValueTable associated with type or
	 *  NULL if there is no GTypeValueTable associated with type.
	 */
	public static GTypeValueTable* valueTablePeek(GType type)
	{
		// GTypeValueTable* g_type_value_table_peek (GType type);
		return g_type_value_table_peek(type);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
