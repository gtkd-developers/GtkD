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


module gio.InitableT;

public  import gio.Cancellable;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ConstructionException;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import gobject.ObjectG;


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
 * exceptions the binding could check for objects implemention %GInitable
 * during normal construction and automatically initialize them, throwing
 * an exception on failure.
 *
 * Since: 2.22
 */
public template InitableT(TStruct)
{
	/** Get the main Gtk struct */
	public GInitable* getInitableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GInitable*)getStruct();
	}


	/**
	 * Initializes the object implementing the interface.
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
	 * Implementations of this method must be idempotent, i.e. multiple calls
	 * to this function with the same argument should return the same results.
	 * Only the first call initializes the object, further calls return the result
	 * of the first call. This is so that it's safe to implement the singleton
	 * pattern in the GObject constructor function.
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
	public bool init(Cancellable cancellable)
	{
		GError* err = null;

		auto p = g_initable_init(getInitableStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}
}
