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
 * inFile  = 
 * outPack = gobject
 * outFile = WeakRef
 * strct   = GWeakRef
 * realStrct=
 * ctorStrct=
 * clss    = WeakRef
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_weak_ref_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- notify
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.WeakRef;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * GObject is the fundamental type providing the common attributes and
 * methods for all object types in GTK+, Pango and other libraries
 * based on GObject. The GObject class provides methods for object
 * construction and destruction, property access methods, and signal
 * support. Signals are described in detail in Signals(3).
 *
 * GInitiallyUnowned is derived from GObject. The only difference between
 * the two is that the initial reference of a GInitiallyUnowned is flagged
 * as a floating reference.
 * This means that it is not specifically claimed to be "owned" by
 * any code portion. The main motivation for providing floating references is
 * C convenience. In particular, it allows code to be written as:
 *
 * $(DDOC_COMMENT example)
 *
 * If container_add_child() will g_object_ref_sink() the
 * passed in child, no reference of the newly created child is leaked.
 * Without floating references, container_add_child()
 * can only g_object_ref() the new child, so to implement this code without
 * reference leaks, it would have to be written as:
 *
 * $(DDOC_COMMENT example)
 *
 * The floating reference can be converted into
 * an ordinary reference by calling g_object_ref_sink().
 * For already sunken objects (objects that don't have a floating reference
 * anymore), g_object_ref_sink() is equivalent to g_object_ref() and returns
 * a new reference.
 * Since floating references are useful almost exclusively for C convenience,
 * language bindings that provide automated reference and memory ownership
 * maintenance (such as smart pointers or garbage collection) should not
 * expose floating references in their API.
 *
 * Some object implementations may need to save an objects floating state
 * across certain code portions (an example is GtkMenu), to achieve this,
 * the following sequence can be used:
 *
 * $(DDOC_COMMENT example)
 */
public class WeakRef
{
	
	/** the main Gtk struct */
	protected GWeakRef* gWeakRef;
	
	
	public GWeakRef* getWeakRefStruct()
	{
		return gWeakRef;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gWeakRef;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GWeakRef* gWeakRef)
	{
		this.gWeakRef = gWeakRef;
	}
	
	/** */
	this(void* object)
	{
		g_weak_ref_init(gWeakRef, object);
	}
	
	/**
	 */
	
	/**
	 * Initialise a non-statically-allocated GWeakRef.
	 * This function also calls g_weak_ref_set() with object on the
	 * freshly-initialised weak reference.
	 * This function should always be matched with a call to
	 * g_weak_ref_clear(). It is not necessary to use this function for a
	 * GWeakRef in static storage because it will already be
	 * properly initialised. Just use g_weak_ref_set() directly.
	 * Since 2.32
	 * Params:
	 * object = a GObject or NULL. [allow-none]
	 */
	public void init(void* object)
	{
		// void g_weak_ref_init (GWeakRef *weak_ref,  gpointer object);
		g_weak_ref_init(gWeakRef, object);
	}
	
	/**
	 * Frees resources associated with a non-statically-allocated GWeakRef.
	 * After this call, the GWeakRef is left in an undefined state.
	 * You should only call this on a GWeakRef that previously had
	 * g_weak_ref_init() called on it.
	 * Since 2.32
	 */
	public void clear()
	{
		// void g_weak_ref_clear (GWeakRef *weak_ref);
		g_weak_ref_clear(gWeakRef);
	}
	
	/**
	 * If weak_ref is not empty, atomically acquire a strong
	 * reference to the object it points to, and return that reference.
	 * This function is needed because of the potential race between taking
	 * the pointer value and g_object_ref() on it, if the object was losing
	 * its last reference at the same time in a different thread.
	 * The caller should release the resulting reference in the usual way,
	 * by using g_object_unref().
	 * Since 2.32
	 * Returns: the object pointed to by weak_ref, or NULL if it was empty. [transfer full][type GObject.Object]
	 */
	public void* get()
	{
		// gpointer g_weak_ref_get (GWeakRef *weak_ref);
		return g_weak_ref_get(gWeakRef);
	}
	
	/**
	 * Change the object to which weak_ref points, or set it to
	 * NULL.
	 * You must own a strong reference on object while calling this
	 * function.
	 * Since 2.32
	 * Signal Details
	 * The "notify" signal
	 * void user_function (GObject *gobject,
	 *  GParamSpec *pspec,
	 *  gpointer user_data) : No Hooks
	 * The notify signal is emitted on an object when one of its
	 * properties has been changed. Note that getting this signal
	 * doesn't guarantee that the value of the property has actually
	 * changed, it may also be emitted when the setter for the property
	 * is called to reinstate the previous value.
	 * This signal is typically used to obtain change notification for a
	 * single property, by specifying the property name as a detail in the
	 * Params:
	 * object = a GObject or NULL. [allow-none]
	 */
	public void set(void* object)
	{
		// void g_weak_ref_set (GWeakRef *weak_ref,  gpointer object);
		g_weak_ref_set(gWeakRef, object);
	}
}
