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


module gobject.TypeClass;

private import gobject.ObjectG;
private import gobject.c.functions;
public  import gobject.c.types;
private import linker.Loader;


/**
 * An opaque structure used as the base of all classes.
 */
public class TypeClass
{
	/** the main Gtk struct */
	protected GTypeClass* gTypeClass;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTypeClass* getTypeClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTypeClass;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTypeClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTypeClass* gTypeClass, bool ownedRef = false)
	{
		this.gTypeClass = gTypeClass;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GOBJECT[0]) && ownedRef )
			g_type_class_unref(gTypeClass);
	}


	/**
	 * Registers a private structure for an instantiatable type.
	 *
	 * When an object is allocated, the private structures for
	 * the type and all of its parent types are allocated
	 * sequentially in the same memory block as the public
	 * structures, and are zero-filled.
	 *
	 * Note that the accumulated size of the private structures of
	 * a type and all its parent types cannot exceed 64 KiB.
	 *
	 * This function should be called in the type's class_init() function.
	 * The private structure can be retrieved using the
	 * G_TYPE_INSTANCE_GET_PRIVATE() macro.
	 *
	 * The following example shows attaching a private structure
	 * MyObjectPrivate to an object MyObject defined in the standard
	 * GObject fashion in the type's class_init() function.
	 *
	 * Note the use of a structure member "priv" to avoid the overhead
	 * of repeatedly calling MY_OBJECT_GET_PRIVATE().
	 *
	 * |[<!-- language="C" -->
	 * typedef struct _MyObject        MyObject;
	 * typedef struct _MyObjectPrivate MyObjectPrivate;
	 *
	 * struct _MyObject {
	 * GObject parent;
	 *
	 * MyObjectPrivate *priv;
	 * };
	 *
	 * struct _MyObjectPrivate {
	 * int some_field;
	 * };
	 *
	 * static void
	 * my_object_class_init (MyObjectClass *klass)
	 * {
	 * g_type_class_add_private (klass, sizeof (MyObjectPrivate));
	 * }
	 *
	 * static void
	 * my_object_init (MyObject *my_object)
	 * {
	 * my_object->priv = G_TYPE_INSTANCE_GET_PRIVATE (my_object,
	 * MY_TYPE_OBJECT,
	 * MyObjectPrivate);
	 * // my_object->priv->some_field will be automatically initialised to 0
	 * }
	 *
	 * static int
	 * my_object_get_some_field (MyObject *my_object)
	 * {
	 * MyObjectPrivate *priv;
	 *
	 * g_return_val_if_fail (MY_IS_OBJECT (my_object), 0);
	 *
	 * priv = my_object->priv;
	 *
	 * return priv->some_field;
	 * }
	 * ]|
	 *
	 * Deprecated: Use the G_ADD_PRIVATE() macro with the `G_DEFINE_*`
	 * family of macros to add instance private data to a type
	 *
	 * Params:
	 *     privateSize = size of private structure
	 *
	 * Since: 2.4
	 */
	public void addPrivate(size_t privateSize)
	{
		g_type_class_add_private(gTypeClass, privateSize);
	}

	/**
	 * Gets the offset of the private data for instances of @g_class.
	 *
	 * This is how many bytes you should add to the instance pointer of a
	 * class in order to get the private data for the type represented by
	 * @g_class.
	 *
	 * You can only call this function after you have registered a private
	 * data area for @g_class using g_type_class_add_private().
	 *
	 * Returns: the offset, in bytes
	 *
	 * Since: 2.38
	 */
	public int getInstancePrivateOffset()
	{
		return g_type_class_get_instance_private_offset(gTypeClass);
	}

	/** */
	public void* getPrivate(GType privateType)
	{
		return g_type_class_get_private(gTypeClass, privateType);
	}

	/**
	 * This is a convenience function often needed in class initializers.
	 * It returns the class structure of the immediate parent type of the
	 * class passed in.  Since derived classes hold a reference count on
	 * their parent classes as long as they are instantiated, the returned
	 * class will always exist.
	 *
	 * This function is essentially equivalent to:
	 * g_type_class_peek (g_type_parent (G_TYPE_FROM_CLASS (g_class)))
	 *
	 * Returns: the parent class
	 *     of @g_class
	 */
	public TypeClass peekParent()
	{
		auto __p = g_type_class_peek_parent(gTypeClass);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeClass)(cast(GTypeClass*) __p);
	}

	/**
	 * Decrements the reference count of the class structure being passed in.
	 * Once the last reference count of a class has been released, classes
	 * may be finalized by the type system, so further dereferencing of a
	 * class pointer after g_type_class_unref() are invalid.
	 */
	public void unref()
	{
		g_type_class_unref(gTypeClass);
	}

	/**
	 * A variant of g_type_class_unref() for use in #GTypeClassCacheFunc
	 * implementations. It unreferences a class without consulting the chain
	 * of #GTypeClassCacheFuncs, avoiding the recursion which would occur
	 * otherwise.
	 */
	public void unrefUncached()
	{
		g_type_class_unref_uncached(gTypeClass);
	}

	/** */
	public static void adjustPrivateOffset(void* gClass, int* privateSizeOrOffset)
	{
		g_type_class_adjust_private_offset(gClass, privateSizeOrOffset);
	}

	/**
	 * This function is essentially the same as g_type_class_ref(),
	 * except that the classes reference count isn't incremented.
	 * As a consequence, this function may return %NULL if the class
	 * of the type passed in does not currently exist (hasn't been
	 * referenced before).
	 *
	 * Params:
	 *     type = type ID of a classed type
	 *
	 * Returns: the #GTypeClass
	 *     structure for the given type ID or %NULL if the class does not
	 *     currently exist
	 */
	public static TypeClass peek(GType type)
	{
		auto __p = g_type_class_peek(type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeClass)(cast(GTypeClass*) __p);
	}

	/**
	 * A more efficient version of g_type_class_peek() which works only for
	 * static types.
	 *
	 * Params:
	 *     type = type ID of a classed type
	 *
	 * Returns: the #GTypeClass
	 *     structure for the given type ID or %NULL if the class does not
	 *     currently exist or is dynamically loaded
	 *
	 * Since: 2.4
	 */
	public static TypeClass peekStatic(GType type)
	{
		auto __p = g_type_class_peek_static(type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeClass)(cast(GTypeClass*) __p);
	}

	alias doref = ref_;
	/**
	 * Increments the reference count of the class structure belonging to
	 * @type. This function will demand-create the class if it doesn't
	 * exist already.
	 *
	 * Params:
	 *     type = type ID of a classed type
	 *
	 * Returns: the #GTypeClass
	 *     structure for the given type ID
	 */
	public static TypeClass ref_(GType type)
	{
		auto __p = g_type_class_ref(type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeClass)(cast(GTypeClass*) __p);
	}
}
