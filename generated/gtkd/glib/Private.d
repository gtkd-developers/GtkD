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


module glib.Private;

private import glib.c.functions;
public  import glib.c.types;


/**
 * The #GPrivate struct is an opaque data structure to represent a
 * thread-local data key. It is approximately equivalent to the
 * pthread_setspecific()/pthread_getspecific() APIs on POSIX and to
 * TlsSetValue()/TlsGetValue() on Windows.
 * 
 * If you don't already know why you might want this functionality,
 * then you probably don't need it.
 * 
 * #GPrivate is a very limited resource (as far as 128 per program,
 * shared between all libraries). It is also not possible to destroy a
 * #GPrivate after it has been used. As such, it is only ever acceptable
 * to use #GPrivate in static scope, and even then sparingly so.
 * 
 * See G_PRIVATE_INIT() for a couple of examples.
 * 
 * The #GPrivate structure should be considered opaque.  It should only
 * be accessed via the g_private_ functions.
 */
public class Private
{
	/** the main Gtk struct */
	protected GPrivate* gPrivate;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GPrivate* getPrivateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gPrivate;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPrivate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GPrivate* gPrivate, bool ownedRef = false)
	{
		this.gPrivate = gPrivate;
		this.ownedRef = ownedRef;
	}


	/**
	 * Returns the current value of the thread local variable @key.
	 *
	 * If the value has not yet been set in this thread, %NULL is returned.
	 * Values are never copied between threads (when a new thread is
	 * created, for example).
	 *
	 * Returns: the thread-local value
	 */
	public void* get()
	{
		return g_private_get(gPrivate);
	}

	/**
	 * Sets the thread local variable @key to have the value @value in the
	 * current thread.
	 *
	 * This function differs from g_private_set() in the following way: if
	 * the previous value was non-%NULL then the #GDestroyNotify handler for
	 * @key is run on it.
	 *
	 * Params:
	 *     value = the new value
	 *
	 * Since: 2.32
	 */
	public void replace(void* value)
	{
		g_private_replace(gPrivate, value);
	}

	/**
	 * Sets the thread local variable @key to have the value @value in the
	 * current thread.
	 *
	 * This function differs from g_private_replace() in the following way:
	 * the #GDestroyNotify for @key is not called on the old value.
	 *
	 * Params:
	 *     value = the new value
	 */
	public void set(void* value)
	{
		g_private_set(gPrivate, value);
	}
}
