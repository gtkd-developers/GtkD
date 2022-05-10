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


module gobject.Type;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.TypeClass;
private import gobject.TypeInstance;
private import gobject.TypeInterface;
private import gobject.TypePluginIF;
private import gobject.Value;
private import gobject.c.functions;
public  import gobject.c.types;


/** */
public struct Type
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
	 * Adds a #GTypeClassCacheFunc to be called before the reference count of a
	 * class goes from one to zero. This can be used to prevent premature class
	 * destruction. All installed #GTypeClassCacheFunc functions will be chained
	 * until one of them returns %TRUE. The functions have to check the class id
	 * passed in to figure whether they actually want to cache the class of this
	 * type, since all classes are routed through the same #GTypeClassCacheFunc
	 * chain.
	 *
	 * Params:
	 *     cacheData = data to be passed to @cache_func
	 *     cacheFunc = a #GTypeClassCacheFunc
	 */
	public static void addClassCacheFunc(void* cacheData, GTypeClassCacheFunc cacheFunc)
	{
		g_type_add_class_cache_func(cacheData, cacheFunc);
	}

	/**
	 * Registers a private class structure for a classed type;
	 * when the class is allocated, the private structures for
	 * the class and all of its parent types are allocated
	 * sequentially in the same memory block as the public
	 * structures, and are zero-filled.
	 *
	 * This function should be called in the
	 * type's get_type() function after the type is registered.
	 * The private structure can be retrieved using the
	 * G_TYPE_CLASS_GET_PRIVATE() macro.
	 *
	 * Params:
	 *     classType = GType of a classed type
	 *     privateSize = size of private structure
	 *
	 * Since: 2.24
	 */
	public static void addClassPrivate(GType classType, size_t privateSize)
	{
		g_type_add_class_private(classType, privateSize);
	}

	/** */
	public static int addInstancePrivate(GType classType, size_t privateSize)
	{
		return g_type_add_instance_private(classType, privateSize);
	}

	/**
	 * Adds a function to be called after an interface vtable is
	 * initialized for any class (i.e. after the @interface_init
	 * member of #GInterfaceInfo has been called).
	 *
	 * This function is useful when you want to check an invariant
	 * that depends on the interfaces of a class. For instance, the
	 * implementation of #GObject uses this facility to check that an
	 * object implements all of the properties that are defined on its
	 * interfaces.
	 *
	 * Params:
	 *     checkData = data to pass to @check_func
	 *     checkFunc = function to be called after each interface
	 *         is initialized
	 *
	 * Since: 2.4
	 */
	public static void addInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		g_type_add_interface_check(checkData, checkFunc);
	}

	/**
	 * Adds @interface_type to the dynamic @instance_type. The information
	 * contained in the #GTypePlugin structure pointed to by @plugin
	 * is used to manage the relationship.
	 *
	 * Params:
	 *     instanceType = #GType value of an instantiatable type
	 *     interfaceType = #GType value of an interface type
	 *     plugin = #GTypePlugin structure to retrieve the #GInterfaceInfo from
	 */
	public static void addInterfaceDynamic(GType instanceType, GType interfaceType, TypePluginIF plugin)
	{
		g_type_add_interface_dynamic(instanceType, interfaceType, (plugin is null) ? null : plugin.getTypePluginStruct());
	}

	/**
	 * Adds @interface_type to the static @instance_type.
	 * The information contained in the #GInterfaceInfo structure
	 * pointed to by @info is used to manage the relationship.
	 *
	 * Params:
	 *     instanceType = #GType value of an instantiatable type
	 *     interfaceType = #GType value of an interface type
	 *     info = #GInterfaceInfo structure for this
	 *         (@instance_type, @interface_type) combination
	 */
	public static void addInterfaceStatic(GType instanceType, GType interfaceType, GInterfaceInfo* info)
	{
		g_type_add_interface_static(instanceType, interfaceType, info);
	}

	/** */
	public static TypeClass checkClassCast(TypeClass gClass, GType isAType)
	{
		auto __p = g_type_check_class_cast((gClass is null) ? null : gClass.getTypeClassStruct(), isAType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeClass)(cast(GTypeClass*) __p);
	}

	/** */
	public static bool checkClassIsA(TypeClass gClass, GType isAType)
	{
		return g_type_check_class_is_a((gClass is null) ? null : gClass.getTypeClassStruct(), isAType) != 0;
	}

	/**
	 * Private helper function to aid implementation of the
	 * G_TYPE_CHECK_INSTANCE() macro.
	 *
	 * Params:
	 *     instance_ = a valid #GTypeInstance structure
	 *
	 * Returns: %TRUE if @instance is valid, %FALSE otherwise
	 */
	public static bool checkInstance(TypeInstance instance_)
	{
		return g_type_check_instance((instance_ is null) ? null : instance_.getTypeInstanceStruct()) != 0;
	}

	/** */
	public static TypeInstance checkInstanceCast(TypeInstance instance_, GType ifaceType)
	{
		auto __p = g_type_check_instance_cast((instance_ is null) ? null : instance_.getTypeInstanceStruct(), ifaceType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInstance)(cast(GTypeInstance*) __p);
	}

	/** */
	public static bool checkInstanceIsA(TypeInstance instance_, GType ifaceType)
	{
		return g_type_check_instance_is_a((instance_ is null) ? null : instance_.getTypeInstanceStruct(), ifaceType) != 0;
	}

	/** */
	public static bool checkInstanceIsFundamentallyA(TypeInstance instance_, GType fundamentalType)
	{
		return g_type_check_instance_is_fundamentally_a((instance_ is null) ? null : instance_.getTypeInstanceStruct(), fundamentalType) != 0;
	}

	/** */
	public static bool checkIsValueType(GType type)
	{
		return g_type_check_is_value_type(type) != 0;
	}

	/** */
	public static bool checkValue(Value value)
	{
		return g_type_check_value((value is null) ? null : value.getValueStruct()) != 0;
	}

	/** */
	public static bool checkValueHolds(Value value, GType type)
	{
		return g_type_check_value_holds((value is null) ? null : value.getValueStruct(), type) != 0;
	}

	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing
	 * the child types of @type.
	 *
	 * Params:
	 *     type = the parent type
	 *
	 * Returns: Newly allocated
	 *     and 0-terminated array of child types, free with g_free()
	 */
	public static GType[] children(GType type)
	{
		uint nChildren;

		auto __p = g_type_children(type, &nChildren);

		return __p[0 .. nChildren];
	}

	/**
	 * Creates and initializes an instance of @type if @type is valid and
	 * can be instantiated. The type system only performs basic allocation
	 * and structure setups for instances: actual instance creation should
	 * happen through functions supplied by the type's fundamental type
	 * implementation.  So use of g_type_create_instance() is reserved for
	 * implementers of fundamental types only. E.g. instances of the
	 * #GObject hierarchy should be created via g_object_new() and never
	 * directly through g_type_create_instance() which doesn't handle things
	 * like singleton objects or object construction.
	 *
	 * The extended members of the returned instance are guaranteed to be filled
	 * with zeros.
	 *
	 * Note: Do not use this function, unless you're implementing a
	 * fundamental type. Also language bindings should not use this
	 * function, but g_object_new() instead.
	 *
	 * Params:
	 *     type = an instantiatable type to create an instance for
	 *
	 * Returns: an allocated and initialized instance, subject to further
	 *     treatment by the fundamental type implementation
	 */
	public static TypeInstance createInstance(GType type)
	{
		auto __p = g_type_create_instance(type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInstance)(cast(GTypeInstance*) __p);
	}

	/**
	 * If the interface type @g_type is currently in use, returns its
	 * default interface vtable.
	 *
	 * Params:
	 *     gType = an interface type
	 *
	 * Returns: the default
	 *     vtable for the interface, or %NULL if the type is not currently
	 *     in use
	 *
	 * Since: 2.4
	 */
	public static TypeInterface defaultInterfacePeek(GType gType)
	{
		auto __p = g_type_default_interface_peek(gType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInterface)(cast(GTypeInterface*) __p);
	}

	/**
	 * Increments the reference count for the interface type @g_type,
	 * and returns the default interface vtable for the type.
	 *
	 * If the type is not currently in use, then the default vtable
	 * for the type will be created and initialized by calling
	 * the base interface init and default vtable init functions for
	 * the type (the @base_init and @class_init members of #GTypeInfo).
	 * Calling g_type_default_interface_ref() is useful when you
	 * want to make sure that signals and properties for an interface
	 * have been installed.
	 *
	 * Params:
	 *     gType = an interface type
	 *
	 * Returns: the default
	 *     vtable for the interface; call g_type_default_interface_unref()
	 *     when you are done using the interface.
	 *
	 * Since: 2.4
	 */
	public static TypeInterface defaultInterfaceRef(GType gType)
	{
		auto __p = g_type_default_interface_ref(gType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInterface)(cast(GTypeInterface*) __p);
	}

	/**
	 * Decrements the reference count for the type corresponding to the
	 * interface default vtable @g_iface. If the type is dynamic, then
	 * when no one is using the interface and all references have
	 * been released, the finalize function for the interface's default
	 * vtable (the @class_finalize member of #GTypeInfo) will be called.
	 *
	 * Params:
	 *     gIface = the default vtable
	 *         structure for an interface, as returned by g_type_default_interface_ref()
	 *
	 * Since: 2.4
	 */
	public static void defaultInterfaceUnref(TypeInterface gIface)
	{
		g_type_default_interface_unref((gIface is null) ? null : gIface.getTypeInterfaceStruct());
	}

	/**
	 * Returns the length of the ancestry of the passed in type. This
	 * includes the type itself, so that e.g. a fundamental type has depth 1.
	 *
	 * Params:
	 *     type = a #GType
	 *
	 * Returns: the depth of @type
	 */
	public static uint depth(GType type)
	{
		return g_type_depth(type);
	}

	/**
	 * Ensures that the indicated @type has been registered with the
	 * type system, and its _class_init() method has been run.
	 *
	 * In theory, simply calling the type's _get_type() method (or using
	 * the corresponding macro) is supposed take care of this. However,
	 * _get_type() methods are often marked %G_GNUC_CONST for performance
	 * reasons, even though this is technically incorrect (since
	 * %G_GNUC_CONST requires that the function not have side effects,
	 * which _get_type() methods do on the first call). As a result, if
	 * you write a bare call to a _get_type() macro, it may get optimized
	 * out by the compiler. Using g_type_ensure() guarantees that the
	 * type's _get_type() method is called.
	 *
	 * Params:
	 *     type = a #GType
	 *
	 * Since: 2.34
	 */
	public static void ensure(GType type)
	{
		g_type_ensure(type);
	}

	/**
	 * Frees an instance of a type, returning it to the instance pool for
	 * the type, if there is one.
	 *
	 * Like g_type_create_instance(), this function is reserved for
	 * implementors of fundamental types.
	 *
	 * Params:
	 *     instance_ = an instance of a type
	 */
	public static void freeInstance(TypeInstance instance_)
	{
		g_type_free_instance((instance_ is null) ? null : instance_.getTypeInstanceStruct());
	}

	/**
	 * Look up the type ID from a given type name, returning 0 if no type
	 * has been registered under this name (this is the preferred method
	 * to find out by name whether a specific type has been registered
	 * yet).
	 *
	 * Params:
	 *     name = type name to look up
	 *
	 * Returns: corresponding type ID or 0
	 */
	public static GType fromName(string name)
	{
		return g_type_from_name(Str.toStringz(name));
	}

	/**
	 * Internal function, used to extract the fundamental type ID portion.
	 * Use G_TYPE_FUNDAMENTAL() instead.
	 *
	 * Params:
	 *     typeId = valid type ID
	 *
	 * Returns: fundamental type ID
	 */
	public static GType fundamental(GType typeId)
	{
		return g_type_fundamental(typeId);
	}

	/**
	 * Returns the next free fundamental type id which can be used to
	 * register a new fundamental type with g_type_register_fundamental().
	 * The returned type ID represents the highest currently registered
	 * fundamental type identifier.
	 *
	 * Returns: the next available fundamental type ID to be registered,
	 *     or 0 if the type system ran out of fundamental type IDs
	 */
	public static GType fundamentalNext()
	{
		return g_type_fundamental_next();
	}

	/**
	 * Returns the #GTypePlugin structure for @type.
	 *
	 * Params:
	 *     type = #GType to retrieve the plugin for
	 *
	 * Returns: the corresponding plugin
	 *     if @type is a dynamic type, %NULL otherwise
	 */
	public static TypePluginIF getPlugin(GType type)
	{
		auto __p = g_type_get_plugin(type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypePluginIF)(cast(GTypePlugin*) __p);
	}

	/**
	 * Obtains data which has previously been attached to @type
	 * with g_type_set_qdata().
	 *
	 * Note that this does not take subtyping into account; data
	 * attached to one type with g_type_set_qdata() cannot
	 * be retrieved from a subtype using g_type_get_qdata().
	 *
	 * Params:
	 *     type = a #GType
	 *     quark = a #GQuark id to identify the data
	 *
	 * Returns: the data, or %NULL if no data was found
	 */
	public static void* getQdata(GType type, GQuark quark)
	{
		return g_type_get_qdata(type, quark);
	}

	/**
	 * Returns an opaque serial number that represents the state of the set
	 * of registered types. Any time a type is registered this serial changes,
	 * which means you can cache information based on type lookups (such as
	 * g_type_from_name()) and know if the cache is still valid at a later
	 * time by comparing the current serial with the one at the type lookup.
	 *
	 * Returns: An unsigned int, representing the state of type registrations
	 *
	 * Since: 2.36
	 */
	public static uint getTypeRegistrationSerial()
	{
		return g_type_get_type_registration_serial();
	}

	/**
	 * This function used to initialise the type system.  Since GLib 2.36,
	 * the type system is initialised automatically and this function does
	 * nothing.
	 *
	 * Deprecated: the type system is now initialised automatically
	 */
	public static void init()
	{
		g_type_init();
	}

	/**
	 * This function used to initialise the type system with debugging
	 * flags.  Since GLib 2.36, the type system is initialised automatically
	 * and this function does nothing.
	 *
	 * If you need to enable debugging features, use the GOBJECT_DEBUG
	 * environment variable.
	 *
	 * Deprecated: the type system is now initialised automatically
	 *
	 * Params:
	 *     debugFlags = bitwise combination of #GTypeDebugFlags values for
	 *         debugging purposes
	 */
	public static void initWithDebugFlags(GTypeDebugFlags debugFlags)
	{
		g_type_init_with_debug_flags(debugFlags);
	}

	/**
	 * Return a newly allocated and 0-terminated array of type IDs, listing
	 * the interface types that @type conforms to.
	 *
	 * Params:
	 *     type = the type to list interface types for
	 *
	 * Returns: Newly allocated
	 *     and 0-terminated array of interface types, free with g_free()
	 */
	public static GType[] interfaces(GType type)
	{
		uint nInterfaces;

		auto __p = g_type_interfaces(type, &nInterfaces);

		return __p[0 .. nInterfaces];
	}

	/**
	 * If @is_a_type is a derivable type, check whether @type is a
	 * descendant of @is_a_type. If @is_a_type is an interface, check
	 * whether @type conforms to it.
	 *
	 * Params:
	 *     type = type to check ancestry for
	 *     isAType = possible ancestor of @type or interface that @type
	 *         could conform to
	 *
	 * Returns: %TRUE if @type is a @is_a_type
	 */
	public static bool isA(GType type, GType isAType)
	{
		return g_type_is_a(type, isAType) != 0;
	}

	/**
	 * Get the unique name that is assigned to a type ID.  Note that this
	 * function (like all other GType API) cannot cope with invalid type
	 * IDs. %G_TYPE_INVALID may be passed to this function, as may be any
	 * other validly registered type ID, but randomized type IDs should
	 * not be passed in and will most likely lead to a crash.
	 *
	 * Params:
	 *     type = type to return name for
	 *
	 * Returns: static type name or %NULL
	 */
	public static string name(GType type)
	{
		return Str.toString(g_type_name(type));
	}

	/** */
	public static string nameFromClass(TypeClass gClass)
	{
		return Str.toString(g_type_name_from_class((gClass is null) ? null : gClass.getTypeClassStruct()));
	}

	/** */
	public static string nameFromInstance(TypeInstance instance_)
	{
		return Str.toString(g_type_name_from_instance((instance_ is null) ? null : instance_.getTypeInstanceStruct()));
	}

	/**
	 * Given a @leaf_type and a @root_type which is contained in its
	 * ancestry, return the type that @root_type is the immediate parent
	 * of. In other words, this function determines the type that is
	 * derived directly from @root_type which is also a base class of
	 * @leaf_type.  Given a root type and a leaf type, this function can
	 * be used to determine the types and order in which the leaf type is
	 * descended from the root type.
	 *
	 * Params:
	 *     leafType = descendant of @root_type and the type to be returned
	 *     rootType = immediate parent of the returned type
	 *
	 * Returns: immediate child of @root_type and ancestor of @leaf_type
	 */
	public static GType nextBase(GType leafType, GType rootType)
	{
		return g_type_next_base(leafType, rootType);
	}

	/**
	 * Return the direct parent type of the passed in type. If the passed
	 * in type has no parent, i.e. is a fundamental type, 0 is returned.
	 *
	 * Params:
	 *     type = the derived type
	 *
	 * Returns: the parent type
	 */
	public static GType parent(GType type)
	{
		return g_type_parent(type);
	}

	/**
	 * Get the corresponding quark of the type IDs name.
	 *
	 * Params:
	 *     type = type to return quark of type name for
	 *
	 * Returns: the type names quark or 0
	 */
	public static GQuark qname(GType type)
	{
		return g_type_qname(type);
	}

	/**
	 * Queries the type system for information about a specific type.
	 * This function will fill in a user-provided structure to hold
	 * type-specific information. If an invalid #GType is passed in, the
	 * @type member of the #GTypeQuery is 0. All members filled into the
	 * #GTypeQuery structure should be considered constant and have to be
	 * left untouched.
	 *
	 * Params:
	 *     type = #GType of a static, classed type
	 *     query = a user provided structure that is
	 *         filled in with constant values upon success
	 */
	public static void query(GType type, out GTypeQuery query)
	{
		g_type_query(type, &query);
	}

	/**
	 * Registers @type_name as the name of a new dynamic type derived from
	 * @parent_type.  The type system uses the information contained in the
	 * #GTypePlugin structure pointed to by @plugin to manage the type and its
	 * instances (if not abstract).  The value of @flags determines the nature
	 * (e.g. abstract or not) of the type.
	 *
	 * Params:
	 *     parentType = type from which this type will be derived
	 *     typeName = 0-terminated string used as the name of the new type
	 *     plugin = #GTypePlugin structure to retrieve the #GTypeInfo from
	 *     flags = bitwise combination of #GTypeFlags values
	 *
	 * Returns: the new type identifier or %G_TYPE_INVALID if registration failed
	 */
	public static GType registerDynamic(GType parentType, string typeName, TypePluginIF plugin, GTypeFlags flags)
	{
		return g_type_register_dynamic(parentType, Str.toStringz(typeName), (plugin is null) ? null : plugin.getTypePluginStruct(), flags);
	}

	/**
	 * Registers @type_id as the predefined identifier and @type_name as the
	 * name of a fundamental type. If @type_id is already registered, or a
	 * type named @type_name is already registered, the behaviour is undefined.
	 * The type system uses the information contained in the #GTypeInfo structure
	 * pointed to by @info and the #GTypeFundamentalInfo structure pointed to by
	 * @finfo to manage the type and its instances. The value of @flags determines
	 * additional characteristics of the fundamental type.
	 *
	 * Params:
	 *     typeId = a predefined type identifier
	 *     typeName = 0-terminated string used as the name of the new type
	 *     info = #GTypeInfo structure for this type
	 *     finfo = #GTypeFundamentalInfo structure for this type
	 *     flags = bitwise combination of #GTypeFlags values
	 *
	 * Returns: the predefined type identifier
	 */
	public static GType registerFundamental(GType typeId, string typeName, GTypeInfo* info, GTypeFundamentalInfo* finfo, GTypeFlags flags)
	{
		return g_type_register_fundamental(typeId, Str.toStringz(typeName), info, finfo, flags);
	}

	/**
	 * Registers @type_name as the name of a new static type derived from
	 * @parent_type. The type system uses the information contained in the
	 * #GTypeInfo structure pointed to by @info to manage the type and its
	 * instances (if not abstract). The value of @flags determines the nature
	 * (e.g. abstract or not) of the type.
	 *
	 * Params:
	 *     parentType = type from which this type will be derived
	 *     typeName = 0-terminated string used as the name of the new type
	 *     info = #GTypeInfo structure for this type
	 *     flags = bitwise combination of #GTypeFlags values
	 *
	 * Returns: the new type identifier
	 */
	public static GType registerStatic(GType parentType, string typeName, GTypeInfo* info, GTypeFlags flags)
	{
		return g_type_register_static(parentType, Str.toStringz(typeName), info, flags);
	}

	/**
	 * Registers @type_name as the name of a new static type derived from
	 * @parent_type.  The value of @flags determines the nature (e.g.
	 * abstract or not) of the type. It works by filling a #GTypeInfo
	 * struct and calling g_type_register_static().
	 *
	 * Params:
	 *     parentType = type from which this type will be derived
	 *     typeName = 0-terminated string used as the name of the new type
	 *     classSize = size of the class structure (see #GTypeInfo)
	 *     classInit = location of the class initialization function (see #GTypeInfo)
	 *     instanceSize = size of the instance structure (see #GTypeInfo)
	 *     instanceInit = location of the instance initialization function (see #GTypeInfo)
	 *     flags = bitwise combination of #GTypeFlags values
	 *
	 * Returns: the new type identifier
	 *
	 * Since: 2.12
	 */
	public static GType registerStaticSimple(GType parentType, string typeName, uint classSize, GClassInitFunc classInit, uint instanceSize, GInstanceInitFunc instanceInit, GTypeFlags flags)
	{
		return g_type_register_static_simple(parentType, Str.toStringz(typeName), classSize, classInit, instanceSize, instanceInit, flags);
	}

	/**
	 * Removes a previously installed #GTypeClassCacheFunc. The cache
	 * maintained by @cache_func has to be empty when calling
	 * g_type_remove_class_cache_func() to avoid leaks.
	 *
	 * Params:
	 *     cacheData = data that was given when adding @cache_func
	 *     cacheFunc = a #GTypeClassCacheFunc
	 */
	public static void removeClassCacheFunc(void* cacheData, GTypeClassCacheFunc cacheFunc)
	{
		g_type_remove_class_cache_func(cacheData, cacheFunc);
	}

	/**
	 * Removes an interface check function added with
	 * g_type_add_interface_check().
	 *
	 * Params:
	 *     checkData = callback data passed to g_type_add_interface_check()
	 *     checkFunc = callback function passed to g_type_add_interface_check()
	 *
	 * Since: 2.4
	 */
	public static void removeInterfaceCheck(void* checkData, GTypeInterfaceCheckFunc checkFunc)
	{
		g_type_remove_interface_check(checkData, checkFunc);
	}

	/**
	 * Attaches arbitrary data to a type.
	 *
	 * Params:
	 *     type = a #GType
	 *     quark = a #GQuark id to identify the data
	 *     data = the data
	 */
	public static void setQdata(GType type, GQuark quark, void* data)
	{
		g_type_set_qdata(type, quark, data);
	}

	/** */
	public static bool testFlags(GType type, uint flags)
	{
		return g_type_test_flags(type, flags) != 0;
	}

	/**
	 * Returns the number of instances allocated of the particular type;
	 * this is only available if GLib is built with debugging support and
	 * the instance_count debug flag is set (by setting the GOBJECT_DEBUG
	 * variable to include instance-count).
	 *
	 * Params:
	 *     type = a #GType
	 *
	 * Returns: the number of instances allocated of the given type;
	 *     if instance counts are not available, returns 0.
	 *
	 * Since: 2.44
	 */
	public static int getInstanceCount(GType type)
	{
		return g_type_get_instance_count(type);
	}
}
