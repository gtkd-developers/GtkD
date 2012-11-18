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
 * inFile  = gobject-Type-Information.html
 * outPack = gobject
 * outFile = Type
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Type
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_type_
 * omit structs:
 * 	- GTypeClass
 * 	- GTypeInstance
 * 	- GTypeInterface
 * omit prefixes:
 * omit code:
 * 	- GType
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.TypePlugin
 * structWrap:
 * 	- GTypePlugin* -> TypePlugin
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.Type;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.TypePlugin;




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
 * Type instance and class structs are limited to a total of 64 KiB,
 * including all parent types. Similarly, type instances' private data
 * (as created by g_type_class_add_private()) are limited to a total of
 * 64 KiB. If a type instance needs a large static buffer, allocate it
 * separately (typically by using GArray or GPtrArray) and put a pointer
 * to the buffer in the structure.
 * A final word about type names.
 * Such an identifier needs to be at least three characters long. There is no
 * upper length limit. The first character needs to be a letter (a-z or A-Z)
 * or an underscore '_'. Subsequent characters can be letters, numbers or
 * any of '-_+'.
 */
public class Type
{
	
	public static T* getInstanceClass(T)(ObjectG obj)
	{
		return cast(T*) (cast(GTypeInstance*)obj.getObjectGStruct()).gClass;
	}
	
	/**
	 * Get the unique name that is assigned to the Objects type.
	 * Returns: Static type name or NULL.
	 */
	public static string name(ObjectG obj)
	{
		GType type = (cast(GTypeInstance*)obj.getObjectGStruct()).gClass.gType;
		
		return name(type);
	}
	
	/**
	 */
	
	/**
	 * Prior to any use of the type system, g_type_init() has to be called
	 * to initialize the type system and assorted other code portions
	 * (such as the various fundamental type implementations or the signal
	 * system).
	 * This function is idempotent: If you call it multiple times, all but
	 * the first calls will be silently ignored.
	 * There is no way to undo the effect of g_type_init().
	 * Since version 2.24 this also initializes the thread system
	 */
	public static void init()
	{
		// void g_type_init (void);
		g_type_init();
	}
	
	/**
	 * Similar to g_type_init(), but additionally sets debug flags.
	 * This function is idempotent.
	 * Params:
	 * debugFlags = Bitwise combination of GTypeDebugFlags values for
	 * debugging purposes.
	 */
	public static void initWithDebugFlags(GTypeDebugFlags debugFlags)
	{
		// void g_type_init_with_debug_flags (GTypeDebugFlags debug_flags);
		g_type_init_with_debug_flags(debugFlags);
	}
	
	/**
	 * Get the unique name that is assigned to a type ID. Note that this
	 * function (like all other GType API) cannot cope with invalid type
	 * IDs. G_TYPE_INVALID may be passed to this function, as may be any
	 * other validly registered type ID, but randomized type IDs should
	 * not be passed in and will most likely lead to a crash.
	 * Params:
	 * type = Type to return name for.
	 * Returns: Static type name or NULL.
	 */
	public static string name(GType type)
	{
		// const gchar * g_type_name (GType type);
		return Str.toString(g_type_name(type));
	}
	
	/**
	 * Get the corresponding quark of the type IDs name.
	 * Params:
	 * type = Type to return quark of type name for.
	 * Returns: The type names quark or 0.
	 */
	public static GQuark qname(GType type)
	{
		// GQuark g_type_qname (GType type);
		return g_type_qname(type);
	}
	
	/**
	 * Lookup the type ID from a given type name, returning 0 if no type
	 * has been registered under this name (this is the preferred method
	 * to find out by name whether a specific type has been registered
	 * yet).
	 * Params:
	 * name = Type name to lookup.
	 * Returns: Corresponding type ID or 0.
	 */
	public static GType fromName(string name)
	{
		// GType g_type_from_name (const gchar *name);
		return g_type_from_name(Str.toStringz(name));
	}
	
	/**
	 * Return the direct parent type of the passed in type. If the passed
	 * in type has no parent, i.e. is a fundamental type, 0 is returned.
	 * Params:
	 * type = The derived type.
	 * Returns: The parent type.
	 */
	public static GType parent(GType type)
	{
		// GType g_type_parent (GType type);
		return g_type_parent(type);
	}
	
	/**
	 * Returns the length of the ancestry of the passed in type. This
	 * includes the type itself, so that e.g. a fundamental type has depth 1.
	 * Params:
	 * type = A GType value.
	 * Returns: The depth of type.
	 */
	public static uint depth(GType type)
	{
		// guint g_type_depth (GType type);
		return g_type_depth(type);
	}
	
	/**
	 * Given a leaf_type and a root_type which is contained in its
	 * anchestry, return the type that root_type is the immediate parent
	 * of. In other words, this function determines the type that is
	 * derived directly from root_type which is also a base class of
	 * leaf_type. Given a root type and a leaf type, this function can
	 * be used to determine the types and order in which the leaf type is
	 * descended from the root type.
	 * Params:
	 * leafType = Descendant of root_type and the type to be returned.
	 * rootType = Immediate parent of the returned type.
	 * Returns: Immediate child of root_type and anchestor of leaf_type.
	 */
	public static GType nextBase(GType leafType, GType rootType)
	{
		// GType g_type_next_base (GType leaf_type,  GType root_type);
		return g_type_next_base(leafType, rootType);
	}
	
	/**
	 * If is_a_type is a derivable type, check whether type is a
	 * descendant of is_a_type. If is_a_type is an interface, check
	 * whether type conforms to it.
	 * Params:
	 * type = Type to check anchestry for.
	 * isAType = Possible anchestor of type or interface type could conform to.
	 * Returns: TRUE if type is_a is_a_type holds true.
	 */
	public static int isA(GType type, GType isAType)
	{
		// gboolean g_type_is_a (GType type,  GType is_a_type);
		return g_type_is_a(type, isAType);
	}
	
	/**
	 * Increments the reference count of the class structure belonging to
	 * type. This function will demand-create the class if it doesn't
	 * exist already.
	 * Params:
	 * type = Type ID of a classed type.
	 * Returns: The GTypeClass structure for the given type ID. [type GObject.TypeClass][transfer none]
	 */
	public static void* classRef(GType type)
	{
		// gpointer g_type_class_ref (GType type);
		return g_type_class_ref(type);
	}
	
	/**
	 * This function is essentially the same as g_type_class_ref(), except that
	 * the classes reference count isn't incremented. As a consequence, this function
	 * may return NULL if the class of the type passed in does not currently
	 * exist (hasn't been referenced before).
	 * Params:
	 * type = Type ID of a classed type.
	 * Returns: The GTypeClass structure for the given type ID or NULL if the class does not currently exist. [type GObject.TypeClass][transfer none]
	 */
	public static void* classPeek(GType type)
	{
		// gpointer g_type_class_peek (GType type);
		return g_type_class_peek(type);
	}
	
	/**
	 * A more efficient version of g_type_class_peek() which works only for
	 * static types.
	 * Since 2.4
	 * Params:
	 * type = Type ID of a classed type.
	 * Returns: The GTypeClass structure for the given type ID or NULL if the class does not currently exist or is dynamically loaded. [type GObject.TypeClass][transfer none]
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
	 * Params:
	 * gClass = The GTypeClass structure to
	 * unreference. [type GObject.TypeClass]
	 */
	public static void classUnref(void* gClass)
	{
		// void g_type_class_unref (gpointer g_class);
		g_type_class_unref(gClass);
	}
	
	/**
	 * This is a convenience function often needed in class initializers.
	 * It returns the class structure of the immediate parent type of the
	 * class passed in. Since derived classes hold a reference count on
	 * their parent classes as long as they are instantiated, the returned
	 * class will always exist. This function is essentially equivalent
	 * Params:
	 * gClass = The GTypeClass structure to
	 * retrieve the parent class for. [type GObject.TypeClass]
	 * Returns: The parent class of g_class. [type GObject.TypeClass][transfer none]
	 */
	public static void* classPeekParent(void* gClass)
	{
		// gpointer g_type_class_peek_parent (gpointer g_class);
		return g_type_class_peek_parent(gClass);
	}
	
	/**
	 * Registers a private structure for an instantiatable type.
	 * When an object is allocated, the private structures for
	 * the type and all of its parent types are allocated
	 * sequentially in the same memory block as the public
	 * structures.
	 * Note that the accumulated size of the private structures of
	 * a type and all its parent types cannot excced 64 KiB.
	 * This function should be called in the type's class_init() function.
	 * The private structure can be retrieved using the
	 * G_TYPE_INSTANCE_GET_PRIVATE() macro.
	 * The following example shows attaching a private structure
	 * MyObjectPrivate to an object
	 * MyObject defined in the standard GObject
	 * fashion.
	 * type's class_init() function.
	 * Note the use of a structure member "priv" to avoid the overhead
	 * of repeatedly calling MY_OBJECT_GET_PRIVATE().
	 * $(DDOC_COMMENT example)
	 * Since 2.4
	 * Params:
	 * gClass = class structure for an instantiatable type
	 * privateSize = size of private structure.
	 */
	public static void classAddPrivate(void* gClass, gsize privateSize)
	{
		// void g_type_class_add_private (gpointer g_class,  gsize private_size);
		g_type_class_add_private(gClass, privateSize);
	}
	
	/**
	 * Registers a private class structure for a classed type;
	 * when the class is allocated, the private structures for
	 * the class and all of its parent types are allocated
	 * sequentially in the same memory block as the public
	 * structures. This function should be called in the
	 * type's get_type() function after the type is registered.
	 * The private structure can be retrieved using the
	 * G_TYPE_CLASS_GET_PRIVATE() macro.
	 * Since 2.24
	 * Params:
	 * classType = GType of an classed type.
	 * privateSize = size of private structure.
	 */
	public static void addClassPrivate(GType classType, gsize privateSize)
	{
		// void g_type_add_class_private (GType class_type,  gsize private_size);
		g_type_add_class_private(classType, privateSize);
	}
	
	/**
	 * Returns the GTypeInterface structure of an interface to which the
	 * passed in class conforms.
	 * Params:
	 * instanceClass = A GTypeClass structure. [type GObject.TypeClass]
	 * ifaceType = An interface ID which this class conforms to.
	 * Returns: The GTypeInterface structure of iface_type if implemented by instance_class, NULL otherwise. [type GObject.TypeInterface][transfer none]
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
	 * Params:
	 * gIface = A GTypeInterface structure. [type GObject.TypeInterface]
	 * Returns: The corresponding GTypeInterface structure of the parent type of the instance type to which g_iface belongs, or NULL if the parent type doesn't conform to the interface. [transfer none][type GObject.TypeInterface]
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
	 * Since 2.4
	 * Params:
	 * gType = an interface type
	 * Returns: the default vtable for the interface; call g_type_default_interface_unref() when you are done using the interface. [type GObject.TypeInterface][transfer none]
	 */
	public static void* defaultInterfaceRef(GType gType)
	{
		// gpointer g_type_default_interface_ref (GType g_type);
		return g_type_default_interface_ref(gType);
	}
	
	/**
	 * If the interface type g_type is currently in use, returns its
	 * default interface vtable.
	 * Since 2.4
	 * Params:
	 * gType = an interface type
	 * Returns: the default vtable for the interface, or NULL if the type is not currently in use. [type GObject.TypeInterface][transfer none]
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
	 * Since 2.4
	 * Params:
	 * gIface = the default vtable
	 * structure for a interface, as returned by
	 * g_type_default_interface_ref(). [type GObject.TypeInterface]
	 */
	public static void defaultInterfaceUnref(void* gIface)
	{
		// void g_type_default_interface_unref (gpointer g_iface);
		g_type_default_interface_unref(gIface);
	}
	
	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing the
	 * child types of type. The return value has to be g_free()ed after use.
	 * Params:
	 * type = The parent type.
	 * Returns: Newly allocated and 0-terminated array of child types. [array length=n_children][transfer full]
	 */
	public static GType[] children(GType type)
	{
		// GType * g_type_children (GType type,  guint *n_children);
		uint nChildren;
		auto p = g_type_children(type, &nChildren);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nChildren];
	}
	
	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing the
	 * interface types that type conforms to. The return value has to be
	 * g_free()ed after use.
	 * Params:
	 * type = The type to list interface types for.
	 * Returns: Newly allocated and 0-terminated array of interface types. [array length=n_interfaces][transfer full]
	 */
	public static GType[] interfaces(GType type)
	{
		// GType * g_type_interfaces (GType type,  guint *n_interfaces);
		uint nInterfaces;
		auto p = g_type_interfaces(type, &nInterfaces);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nInterfaces];
	}
	
	/**
	 * Returns the prerequisites of an interfaces type.
	 * Since 2.2
	 * Params:
	 * interfaceType = an interface type
	 * Returns: a newly-allocated zero-terminated array of GType containing the prerequisites of interface_type. [array length=n_prerequisites][transfer full]
	 */
	public static GType[] interfacePrerequisites(GType interfaceType)
	{
		// GType * g_type_interface_prerequisites (GType interface_type,  guint *n_prerequisites);
		uint nPrerequisites;
		auto p = g_type_interface_prerequisites(interfaceType, &nPrerequisites);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nPrerequisites];
	}
	
	/**
	 * Attaches arbitrary data to a type.
	 * Params:
	 * type = a GType
	 * quark = a GQuark id to identify the data
	 * data = the data
	 */
	public static void setQdata(GType type, GQuark quark, void* data)
	{
		// void g_type_set_qdata (GType type,  GQuark quark,  gpointer data);
		g_type_set_qdata(type, quark, data);
	}
	
	/**
	 * Obtains data which has previously been attached to type
	 * with g_type_set_qdata().
	 * Note that this does not take subtyping into account; data
	 * attached to one type with g_type_set_qdata() cannot
	 * be retrieved from a subtype using g_type_get_qdata().
	 * Params:
	 * type = a GType
	 * quark = a GQuark id to identify the data
	 * Returns: the data, or NULL if no data was found. [transfer none]
	 */
	public static void* getQdata(GType type, GQuark quark)
	{
		// gpointer g_type_get_qdata (GType type,  GQuark quark);
		return g_type_get_qdata(type, quark);
	}
	
	/**
	 * Queries the type system for information about a specific type.
	 * This function will fill in a user-provided structure to hold
	 * type-specific information. If an invalid GType is passed in, the
	 * type member of the GTypeQuery is 0. All members filled into the
	 * GTypeQuery structure should be considered constant and have to be
	 * left untouched.
	 * Params:
	 * type = the GType value of a static, classed type.
	 * query = A user provided structure that is
	 * filled in with constant values upon success. [out caller-allocates]
	 */
	public static void query(GType type, out GTypeQuery query)
	{
		// void g_type_query (GType type,  GTypeQuery *query);
		g_type_query(type, &query);
	}
	
	/**
	 * Registers type_name as the name of a new static type derived from
	 * parent_type. The type system uses the information contained in the
	 * GTypeInfo structure pointed to by info to manage the type and its
	 * instances (if not abstract). The value of flags determines the nature
	 * (e.g. abstract or not) of the type.
	 * Params:
	 * parentType = Type from which this type will be derived.
	 * typeName = 0-terminated string used as the name of the new type.
	 * info = The GTypeInfo structure for this type.
	 * flags = Bitwise combination of GTypeFlags values.
	 * Returns: The new type identifier.
	 */
	public static GType registerStatic(GType parentType, string typeName, GTypeInfo* info, GTypeFlags flags)
	{
		// GType g_type_register_static (GType parent_type,  const gchar *type_name,  const GTypeInfo *info,  GTypeFlags flags);
		return g_type_register_static(parentType, Str.toStringz(typeName), info, flags);
	}
	
	/**
	 * Registers type_name as the name of a new static type derived from
	 * parent_type. The value of flags determines the nature (e.g.
	 * abstract or not) of the type. It works by filling a GTypeInfo
	 * struct and calling g_type_register_static().
	 * Since 2.12
	 * Params:
	 * parentType = Type from which this type will be derived.
	 * typeName = 0-terminated string used as the name of the new type.
	 * classSize = Size of the class structure (see GTypeInfo)
	 * classInit = Location of the class initialization function (see GTypeInfo)
	 * instanceSize = Size of the instance structure (see GTypeInfo)
	 * instanceInit = Location of the instance initialization function (see GTypeInfo)
	 * flags = Bitwise combination of GTypeFlags values.
	 * Returns: The new type identifier.
	 */
	public static GType registerStaticSimple(GType parentType, string typeName, uint classSize, GClassInitFunc classInit, uint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags)
	{
		// GType g_type_register_static_simple (GType parent_type,  const gchar *type_name,  guint class_size,  GClassInitFunc class_init,  guint instance_size,  GInstanceInitFunc instance_init,  GTypeFlags flags);
		return g_type_register_static_simple(parentType, Str.toStringz(typeName), classSize, classInit, instanceSize, instanceInit, flags);
	}
	
	/**
	 * Registers type_name as the name of a new dynamic type derived from
	 * parent_type. The type system uses the information contained in the
	 * GTypePlugin structure pointed to by plugin to manage the type and its
	 * instances (if not abstract). The value of flags determines the nature
	 * (e.g. abstract or not) of the type.
	 * Params:
	 * parentType = Type from which this type will be derived.
	 * typeName = 0-terminated string used as the name of the new type.
	 * plugin = The GTypePlugin structure to retrieve the GTypeInfo from.
	 * flags = Bitwise combination of GTypeFlags values.
	 * Returns: The new type identifier or G_TYPE_INVALID if registration failed.
	 */
	public static GType registerDynamic(GType parentType, string typeName, TypePlugin plugin, GTypeFlags flags)
	{
		// GType g_type_register_dynamic (GType parent_type,  const gchar *type_name,  GTypePlugin *plugin,  GTypeFlags flags);
		return g_type_register_dynamic(parentType, Str.toStringz(typeName), (plugin is null) ? null : plugin.getTypePluginStruct(), flags);
	}
	
	/**
	 * Registers type_id as the predefined identifier and type_name as the
	 * name of a fundamental type. If type_id is already registered, or a type
	 * named type_name is already registered, the behaviour is undefined. The type
	 * system uses the information contained in the GTypeInfo structure pointed to
	 * by info and the GTypeFundamentalInfo structure pointed to by finfo to
	 * manage the type and its instances. The value of flags determines additional
	 * characteristics of the fundamental type.
	 * Params:
	 * typeId = A predefined type identifier.
	 * typeName = 0-terminated string used as the name of the new type.
	 * info = The GTypeInfo structure for this type.
	 * finfo = The GTypeFundamentalInfo structure for this type.
	 * flags = Bitwise combination of GTypeFlags values.
	 * Returns: The predefined type identifier.
	 */
	public static GType registerFundamental(GType typeId, string typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags)
	{
		// GType g_type_register_fundamental (GType type_id,  const gchar *type_name,  const GTypeInfo *info,  const GTypeFundamentalInfo *finfo,  GTypeFlags flags);
		return g_type_register_fundamental(typeId, Str.toStringz(typeName), info, finfo, flags);
	}
	
	/**
	 * Adds the static interface_type to instantiable_type. The
	 * information contained in the GInterfaceInfo structure pointed to by
	 * info is used to manage the relationship.
	 * Params:
	 * instanceType = GType value of an instantiable type.
	 * interfaceType = GType value of an interface type.
	 * info = The GInterfaceInfo structure for this
	 * (instance_type, interface_type) combination.
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
	 * Params:
	 * instanceType = the GType value of an instantiable type.
	 * interfaceType = the GType value of an interface type.
	 * plugin = the GTypePlugin structure to retrieve the GInterfaceInfo from.
	 */
	public static void addInterfaceDynamic(GType instanceType, GType interfaceType, TypePlugin plugin)
	{
		// void g_type_add_interface_dynamic (GType instance_type,  GType interface_type,  GTypePlugin *plugin);
		g_type_add_interface_dynamic(instanceType, interfaceType, (plugin is null) ? null : plugin.getTypePluginStruct());
	}
	
	/**
	 * Adds prerequisite_type to the list of prerequisites of interface_type.
	 * This means that any type implementing interface_type must also implement
	 * prerequisite_type. Prerequisites can be thought of as an alternative to
	 * interface derivation (which GType doesn't support). An interface can have
	 * at most one instantiatable prerequisite type.
	 * Params:
	 * interfaceType = GType value of an interface type.
	 * prerequisiteType = GType value of an interface or instantiatable type.
	 */
	public static void interfaceAddPrerequisite(GType interfaceType, GType prerequisiteType)
	{
		// void g_type_interface_add_prerequisite (GType interface_type,  GType prerequisite_type);
		g_type_interface_add_prerequisite(interfaceType, prerequisiteType);
	}
	
	/**
	 * Returns the GTypePlugin structure for type or
	 * NULL if type does not have a GTypePlugin structure.
	 * Params:
	 * type = The GType to retrieve the plugin for.
	 * Returns: The corresponding plugin if type is a dynamic type, NULL otherwise. [transfer none]
	 */
	public static TypePlugin getPlugin(GType type)
	{
		// GTypePlugin * g_type_get_plugin (GType type);
		auto p = g_type_get_plugin(type);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TypePlugin)(cast(GTypePlugin*) p);
	}
	
	/**
	 * Returns the GTypePlugin structure for the dynamic interface
	 * interface_type which has been added to instance_type, or NULL if
	 * interface_type has not been added to instance_type or does not
	 * have a GTypePlugin structure. See g_type_add_interface_dynamic().
	 * Params:
	 * instanceType = the GType value of an instantiatable type.
	 * interfaceType = the GType value of an interface type.
	 * Returns: the GTypePlugin for the dynamic interface interface_type of instance_type. [transfer none]
	 */
	public static TypePlugin interfaceGetPlugin(GType instanceType, GType interfaceType)
	{
		// GTypePlugin * g_type_interface_get_plugin (GType instance_type,  GType interface_type);
		auto p = g_type_interface_get_plugin(instanceType, interfaceType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TypePlugin)(cast(GTypePlugin*) p);
	}
	
	/**
	 * Returns the next free fundamental type id which can be used to
	 * register a new fundamental type with g_type_register_fundamental().
	 * The returned type ID represents the highest currently registered
	 * fundamental type identifier.
	 * Returns: The nextmost fundamental type ID to be registered, or 0 if the type system ran out of fundamental type IDs.
	 */
	public static GType fundamentalNext()
	{
		// GType g_type_fundamental_next (void);
		return g_type_fundamental_next();
	}
	
	/**
	 * Internal function, used to extract the fundamental type ID portion.
	 * use G_TYPE_FUNDAMENTAL() instead.
	 * Params:
	 * typeId = valid type ID
	 * Returns: fundamental type ID
	 */
	public static GType fundamental(GType typeId)
	{
		// GType g_type_fundamental (GType type_id);
		return g_type_fundamental(typeId);
	}
	
	/**
	 * Creates and initializes an instance of type if type is valid and
	 * can be instantiated. The type system only performs basic allocation
	 * and structure setups for instances: actual instance creation should
	 * happen through functions supplied by the type's fundamental type
	 * implementation. So use of g_type_create_instance() is reserved for
	 * implementators of fundamental types only. E.g. instances of the
	 * GObject hierarchy should be created via g_object_new() and
	 * never directly through
	 * g_type_create_instance() which doesn't handle things like singleton
	 * objects or object construction. Note: Do not
	 * use this function, unless you're implementing a fundamental
	 * type. Also language bindings should not use
	 * this function but g_object_new() instead.
	 * Params:
	 * type = An instantiatable type to create an instance for.
	 * Returns: An allocated and initialized instance, subject to further treatment by the fundamental type implementation.
	 */
	public static GTypeInstance* createInstance(GType type)
	{
		// GTypeInstance * g_type_create_instance (GType type);
		return g_type_create_instance(type);
	}
	
	/**
	 * Frees an instance of a type, returning it to the instance pool for
	 * the type, if there is one.
	 * Like g_type_create_instance(), this function is reserved for
	 * implementors of fundamental types.
	 */
	public static void freeInstance(GTypeInstance* instanc)
	{
		// void g_type_free_instance (GTypeInstance *instance);
		g_type_free_instance(instanc);
	}
	
	/**
	 * Adds a GTypeClassCacheFunc to be called before the reference count of a
	 * class goes from one to zero. This can be used to prevent premature class
	 * destruction. All installed GTypeClassCacheFunc functions will be chained
	 * until one of them returns TRUE. The functions have to check the class id
	 * passed in to figure whether they actually want to cache the class of this
	 * type, since all classes are routed through the same GTypeClassCacheFunc
	 * chain.
	 * Params:
	 * cacheData = data to be passed to cache_func
	 * cacheFunc = a GTypeClassCacheFunc
	 */
	public static void addClassCacheFunc(void* cacheData, GTypeClassCacheFunc cacheFunc)
	{
		// void g_type_add_class_cache_func (gpointer cache_data,  GTypeClassCacheFunc cache_func);
		g_type_add_class_cache_func(cacheData, cacheFunc);
	}
	
	/**
	 * Removes a previously installed GTypeClassCacheFunc. The cache
	 * maintained by cache_func has to be empty when calling
	 * g_type_remove_class_cache_func() to avoid leaks.
	 * Params:
	 * cacheData = data that was given when adding cache_func
	 * cacheFunc = a GTypeClassCacheFunc
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
	 * Params:
	 * gClass = The GTypeClass structure to
	 * unreference. [type GObject.TypeClass]
	 */
	public static void classUnrefUncached(void* gClass)
	{
		// void g_type_class_unref_uncached (gpointer g_class);
		g_type_class_unref_uncached(gClass);
	}
	
	/**
	 * Adds a function to be called after an interface vtable is
	 * initialized for any class (i.e. after the interface_init member of
	 * GInterfaceInfo has been called).
	 * This function is useful when you want to check an invariant that
	 * depends on the interfaces of a class. For instance, the
	 * implementation of GObject uses this facility to check that an
	 * object implements all of the properties that are defined on its
	 * interfaces.
	 * Since 2.4
	 * Params:
	 * checkData = data to pass to check_func
	 * checkFunc = function to be called after each interface
	 * is initialized.
	 */
	public static void addInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		// void g_type_add_interface_check (gpointer check_data,  GTypeInterfaceCheckFunc check_func);
		g_type_add_interface_check(checkData, checkFunc);
	}
	
	/**
	 * Removes an interface check function added with
	 * g_type_add_interface_check().
	 * Since 2.4
	 * Params:
	 * checkData = callback data passed to g_type_add_interface_check()
	 * checkFunc = callback function passed to g_type_add_interface_check()
	 */
	public static void removeInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		// void g_type_remove_interface_check (gpointer check_data,  GTypeInterfaceCheckFunc check_func);
		g_type_remove_interface_check(checkData, checkFunc);
	}
	
	/**
	 * Returns the location of the GTypeValueTable associated with type.
	 * Note that this function should only be used from source code
	 * that implements or has internal knowledge of the implementation of
	 * type.
	 * Params:
	 * type = A GType value.
	 * Returns: Location of the GTypeValueTable associated with type or NULL if there is no GTypeValueTable associated with type.
	 */
	public static GTypeValueTable* valueTablePeek(GType type)
	{
		// GTypeValueTable * g_type_value_table_peek (GType type);
		return g_type_value_table_peek(type);
	}
	
	/**
	 * Ensures that the indicated type has been registered with the
	 * type system, and its _class_init() method has been run.
	 * In theory, simply calling the type's _get_type() method (or using
	 * the corresponding macro) is supposed take care of this. However,
	 * _get_type() methods are often marked G_GNUC_CONST for performance
	 * reasons, even though this is technically incorrect (since
	 * G_GNUC_CONST requires that the function not have side effects,
	 * which _get_type() methods do on the first call). As a result, if
	 * you write a bare call to a _get_type() macro, it may get optimized
	 * out by the compiler. Using g_type_ensure() guarantees that the
	 * type's _get_type() method is called.
	 * Since 2.34
	 * Params:
	 * type = a GType.
	 */
	public static void ensure(GType type)
	{
		// void g_type_ensure (GType type);
		g_type_ensure(type);
	}
}
