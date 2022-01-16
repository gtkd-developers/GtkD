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


module gio.InitableIF;

private import gio.Cancellable;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GInitable is implemented by objects that can fail during
 * initialization. If an object implements this interface then
 * it must be initialized as the first thing after construction,
 * either via g_initable_init() or g_async_initable_init_async()
 * (the latter is only available if it also implements #GAsyncInitable).
 * 
 * If the object is not initialized, or initialization returns with an
 * error, then all operations on the object except g_object_ref() and
 * g_object_unref() are considered to be invalid, and have undefined
 * behaviour. They will often fail with g_critical() or g_warning(), but
 * this must not be relied on.
 * 
 * Users of objects implementing this are not intended to use
 * the interface method directly, instead it will be used automatically
 * in various ways. For C applications you generally just call
 * g_initable_new() directly, or indirectly via a foo_thing_new() wrapper.
 * This will call g_initable_init() under the cover, returning %NULL and
 * setting a #GError on failure (at which point the instance is
 * unreferenced).
 * 
 * For bindings in languages where the native constructor supports
 * exceptions the binding could check for objects implementing %GInitable
 * during normal construction and automatically initialize them, throwing
 * an exception on failure.
 *
 * Since: 2.22
 */
public interface InitableIF{
	/** Get the main Gtk struct */
	public GInitable* getInitableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_initable_get_type();
	}

	/**
	 * Initializes the object implementing the interface.
	 *
	 * This method is intended for language bindings. If writing in C,
	 * g_initable_new() should typically be used instead.
	 *
	 * The object must be initialized before any real use after initial
	 * construction, either with this function or g_async_initable_init_async().
	 *
	 * Implementations may also support cancellation. If @cancellable is not %NULL,
	 * then initialization can be cancelled by triggering the cancellable object
	 * from another thread. If the operation was cancelled, the error
	 * %G_IO_ERROR_CANCELLED will be returned. If @cancellable is not %NULL and
	 * the object doesn't support cancellable initialization the error
	 * %G_IO_ERROR_NOT_SUPPORTED will be returned.
	 *
	 * If the object is not initialized, or initialization returns with an
	 * error, then all operations on the object except g_object_ref() and
	 * g_object_unref() are considered to be invalid, and have undefined
	 * behaviour. See the [introduction][ginitable] for more details.
	 *
	 * Callers should not assume that a class which implements #GInitable can be
	 * initialized multiple times, unless the class explicitly documents itself as
	 * supporting this. Generally, a class’ implementation of init() can assume
	 * (and assert) that it will only be called once. Previously, this documentation
	 * recommended all #GInitable implementations should be idempotent; that
	 * recommendation was relaxed in GLib 2.54.
	 *
	 * If a class explicitly supports being initialized multiple times, it is
	 * recommended that the method is idempotent: multiple calls with the same
	 * arguments should return the same results. Only the first call initializes
	 * the object; further calls return the result of the first call.
	 *
	 * One reason why a class might need to support idempotent initialization is if
	 * it is designed to be used via the singleton pattern, with a
	 * #GObjectClass.constructor that sometimes returns an existing instance.
	 * In this pattern, a caller would expect to be able to call g_initable_init()
	 * on the result of g_object_new(), regardless of whether it is in fact a new
	 * instance.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: %TRUE if successful. If an error has occurred, this function will
	 *     return %FALSE and set @error appropriately if present.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool init(Cancellable cancellable);
}
