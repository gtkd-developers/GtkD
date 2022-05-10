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


module gobject.WeakRef;

private import gobject.ObjectG;
private import gobject.c.functions;
public  import gobject.c.types;


/**
 * A structure containing a weak reference to a #GObject.
 * 
 * A `GWeakRef` can either be empty (i.e. point to %NULL), or point to an
 * object for as long as at least one "strong" reference to that object
 * exists. Before the object's #GObjectClass.dispose method is called,
 * every #GWeakRef associated with becomes empty (i.e. points to %NULL).
 * 
 * Like #GValue, #GWeakRef can be statically allocated, stack- or
 * heap-allocated, or embedded in larger structures.
 * 
 * Unlike g_object_weak_ref() and g_object_add_weak_pointer(), this weak
 * reference is thread-safe: converting a weak pointer to a reference is
 * atomic with respect to invalidation of weak pointers to destroyed
 * objects.
 * 
 * If the object's #GObjectClass.dispose method results in additional
 * references to the object being held (‘re-referencing’), any #GWeakRefs taken
 * before it was disposed will continue to point to %NULL.  Any #GWeakRefs taken
 * during disposal and after re-referencing, or after disposal has returned due
 * to the re-referencing, will continue to point to the object until its refcount
 * goes back to zero, at which point they too will be invalidated.
 * 
 * It is invalid to take a #GWeakRef on an object during #GObjectClass.dispose
 * without first having or creating a strong reference to the object.
 */
public class WeakRef
{
	/** the main Gtk struct */
	protected GWeakRef* gWeakRef;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GWeakRef* getWeakRefStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gWeakRef;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gWeakRef;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GWeakRef* gWeakRef, bool ownedRef = false)
	{
		this.gWeakRef = gWeakRef;
		this.ownedRef = ownedRef;
	}

	/** */
	this(void* object)
	{
		g_weak_ref_init(gWeakRef, object);
	}

	/**
	 */

	/**
	 * Frees resources associated with a non-statically-allocated #GWeakRef.
	 * After this call, the #GWeakRef is left in an undefined state.
	 *
	 * You should only call this on a #GWeakRef that previously had
	 * g_weak_ref_init() called on it.
	 *
	 * Since: 2.32
	 */
	public void clear()
	{
		g_weak_ref_clear(gWeakRef);
	}

	/**
	 * If @weak_ref is not empty, atomically acquire a strong
	 * reference to the object it points to, and return that reference.
	 *
	 * This function is needed because of the potential race between taking
	 * the pointer value and g_object_ref() on it, if the object was losing
	 * its last reference at the same time in a different thread.
	 *
	 * The caller should release the resulting reference in the usual way,
	 * by using g_object_unref().
	 *
	 * Returns: the object pointed to
	 *     by @weak_ref, or %NULL if it was empty
	 *
	 * Since: 2.32
	 */
	public ObjectG get()
	{
		auto __p = g_weak_ref_get(gWeakRef);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Initialise a non-statically-allocated #GWeakRef.
	 *
	 * This function also calls g_weak_ref_set() with @object on the
	 * freshly-initialised weak reference.
	 *
	 * This function should always be matched with a call to
	 * g_weak_ref_clear().  It is not necessary to use this function for a
	 * #GWeakRef in static storage because it will already be
	 * properly initialised.  Just use g_weak_ref_set() directly.
	 *
	 * Params:
	 *     object = a #GObject or %NULL
	 *
	 * Since: 2.32
	 */
	public void init(ObjectG object)
	{
		g_weak_ref_init(gWeakRef, (object is null) ? null : object.getObjectGStruct());
	}

	/**
	 * Change the object to which @weak_ref points, or set it to
	 * %NULL.
	 *
	 * You must own a strong reference on @object while calling this
	 * function.
	 *
	 * Params:
	 *     object = a #GObject or %NULL
	 *
	 * Since: 2.32
	 */
	public void set(ObjectG object)
	{
		g_weak_ref_set(gWeakRef, (object is null) ? null : object.getObjectGStruct());
	}
}
