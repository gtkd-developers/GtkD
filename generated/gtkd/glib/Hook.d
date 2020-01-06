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


module glib.Hook;

private import glib.HookList;
private import glib.MemorySlice;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The #GHook struct represents a single hook function in a #GHookList.
 */
public final class Hook
{
	/** the main Gtk struct */
	protected GHook* gHook;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GHook* getHookStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gHook;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHook;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GHook* gHook, bool ownedRef = false)
	{
		this.gHook = gHook;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gHook);
	}


	/**
	 * data which is passed to func when this hook is invoked
	 */
	public @property void* data()
	{
		return gHook.data;
	}

	/** Ditto */
	public @property void data(void* value)
	{
		gHook.data = value;
	}

	/**
	 * pointer to the next hook in the list
	 */
	public @property Hook next()
	{
		return new Hook(gHook.next, false);
	}

	/** Ditto */
	public @property void next(Hook value)
	{
		gHook.next = value.getHookStruct();
	}

	/**
	 * pointer to the previous hook in the list
	 */
	public @property Hook prev()
	{
		return new Hook(gHook.prev, false);
	}

	/** Ditto */
	public @property void prev(Hook value)
	{
		gHook.prev = value.getHookStruct();
	}

	/**
	 * the reference count of this hook
	 */
	public @property uint refCount()
	{
		return gHook.refCount;
	}

	/** Ditto */
	public @property void refCount(uint value)
	{
		gHook.refCount = value;
	}

	/**
	 * the id of this hook, which is unique within its list
	 */
	public @property gulong hookId()
	{
		return gHook.hookId;
	}

	/** Ditto */
	public @property void hookId(gulong value)
	{
		gHook.hookId = value;
	}

	/**
	 * flags which are set for this hook. See #GHookFlagMask for
	 * predefined flags
	 */
	public @property uint flags()
	{
		return gHook.flags;
	}

	/** Ditto */
	public @property void flags(uint value)
	{
		gHook.flags = value;
	}

	/**
	 * the function to call when this hook is invoked. The possible
	 * signatures for this function are #GHookFunc and #GHookCheckFunc
	 */
	public @property void* func()
	{
		return gHook.func;
	}

	/** Ditto */
	public @property void func(void* value)
	{
		gHook.func = value;
	}

	/**
	 * the default @finalize_hook function of a #GHookList calls
	 * this member of the hook that is being finalized
	 */
	public @property GDestroyNotify destroy()
	{
		return gHook.destroy;
	}

	/** Ditto */
	public @property void destroy(GDestroyNotify value)
	{
		gHook.destroy = value;
	}

	/**
	 * Compares the ids of two #GHook elements, returning a negative value
	 * if the second id is greater than the first.
	 *
	 * Params:
	 *     sibling = a #GHook to compare with @new_hook
	 *
	 * Returns: a value <= 0 if the id of @sibling is >= the id of @new_hook
	 */
	public int compareIds(Hook sibling)
	{
		return g_hook_compare_ids(gHook, (sibling is null) ? null : sibling.getHookStruct());
	}

	/**
	 * Allocates space for a #GHook and initializes it.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *
	 * Returns: a new #GHook
	 */
	public static Hook alloc(HookList hookList)
	{
		auto __p = g_hook_alloc((hookList is null) ? null : hookList.getHookListStruct());

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Destroys a #GHook, given its ID.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hookId = a hook ID
	 *
	 * Returns: %TRUE if the #GHook was found in the #GHookList and destroyed
	 */
	public static bool destroy(HookList hookList, gulong hookId)
	{
		return g_hook_destroy((hookList is null) ? null : hookList.getHookListStruct(), hookId) != 0;
	}

	/**
	 * Removes one #GHook from a #GHookList, marking it
	 * inactive and calling g_hook_unref() on it.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to remove
	 */
	public static void destroyLink(HookList hookList, Hook hook)
	{
		g_hook_destroy_link((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());
	}

	/**
	 * Finds a #GHook in a #GHookList using the given function to
	 * test for a match.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     needValids = %TRUE if #GHook elements which have been destroyed
	 *         should be skipped
	 *     func = the function to call for each #GHook, which should return
	 *         %TRUE when the #GHook has been found
	 *     data = the data to pass to @func
	 *
	 * Returns: the found #GHook or %NULL if no matching #GHook is found
	 */
	public static Hook find(HookList hookList, bool needValids, GHookFindFunc func, void* data)
	{
		auto __p = g_hook_find((hookList is null) ? null : hookList.getHookListStruct(), needValids, func, data);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Finds a #GHook in a #GHookList with the given data.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     needValids = %TRUE if #GHook elements which have been destroyed
	 *         should be skipped
	 *     data = the data to find
	 *
	 * Returns: the #GHook with the given @data or %NULL if no matching
	 *     #GHook is found
	 */
	public static Hook findData(HookList hookList, bool needValids, void* data)
	{
		auto __p = g_hook_find_data((hookList is null) ? null : hookList.getHookListStruct(), needValids, data);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Finds a #GHook in a #GHookList with the given function.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     needValids = %TRUE if #GHook elements which have been destroyed
	 *         should be skipped
	 *     func = the function to find
	 *
	 * Returns: the #GHook with the given @func or %NULL if no matching
	 *     #GHook is found
	 */
	public static Hook findFunc(HookList hookList, bool needValids, void* func)
	{
		auto __p = g_hook_find_func((hookList is null) ? null : hookList.getHookListStruct(), needValids, func);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Finds a #GHook in a #GHookList with the given function and data.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     needValids = %TRUE if #GHook elements which have been destroyed
	 *         should be skipped
	 *     func = the function to find
	 *     data = the data to find
	 *
	 * Returns: the #GHook with the given @func and @data or %NULL if
	 *     no matching #GHook is found
	 */
	public static Hook findFuncData(HookList hookList, bool needValids, void* func, void* data)
	{
		auto __p = g_hook_find_func_data((hookList is null) ? null : hookList.getHookListStruct(), needValids, func, data);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Returns the first #GHook in a #GHookList which has not been destroyed.
	 * The reference count for the #GHook is incremented, so you must call
	 * g_hook_unref() to restore it when no longer needed. (Or call
	 * g_hook_next_valid() if you are stepping through the #GHookList.)
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     mayBeInCall = %TRUE if hooks which are currently running
	 *         (e.g. in another thread) are considered valid. If set to %FALSE,
	 *         these are skipped
	 *
	 * Returns: the first valid #GHook, or %NULL if none are valid
	 */
	public static Hook firstValid(HookList hookList, bool mayBeInCall)
	{
		auto __p = g_hook_first_valid((hookList is null) ? null : hookList.getHookListStruct(), mayBeInCall);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Calls the #GHookList @finalize_hook function if it exists,
	 * and frees the memory allocated for the #GHook.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to free
	 */
	public static void free(HookList hookList, Hook hook)
	{
		g_hook_free((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());
	}

	/**
	 * Returns the #GHook with the given id, or %NULL if it is not found.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hookId = a hook id
	 *
	 * Returns: the #GHook with the given id, or %NULL if it is not found
	 */
	public static Hook get(HookList hookList, gulong hookId)
	{
		auto __p = g_hook_get((hookList is null) ? null : hookList.getHookListStruct(), hookId);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Inserts a #GHook into a #GHookList, before a given #GHook.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     sibling = the #GHook to insert the new #GHook before
	 *     hook = the #GHook to insert
	 */
	public static void insertBefore(HookList hookList, Hook sibling, Hook hook)
	{
		g_hook_insert_before((hookList is null) ? null : hookList.getHookListStruct(), (sibling is null) ? null : sibling.getHookStruct(), (hook is null) ? null : hook.getHookStruct());
	}

	/**
	 * Inserts a #GHook into a #GHookList, sorted by the given function.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to insert
	 *     func = the comparison function used to sort the #GHook elements
	 */
	public static void insertSorted(HookList hookList, Hook hook, GHookCompareFunc func)
	{
		g_hook_insert_sorted((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct(), func);
	}

	/**
	 * Returns the next #GHook in a #GHookList which has not been destroyed.
	 * The reference count for the #GHook is incremented, so you must call
	 * g_hook_unref() to restore it when no longer needed. (Or continue to call
	 * g_hook_next_valid() until %NULL is returned.)
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the current #GHook
	 *     mayBeInCall = %TRUE if hooks which are currently running
	 *         (e.g. in another thread) are considered valid. If set to %FALSE,
	 *         these are skipped
	 *
	 * Returns: the next valid #GHook, or %NULL if none are valid
	 */
	public static Hook nextValid(HookList hookList, Hook hook, bool mayBeInCall)
	{
		auto __p = g_hook_next_valid((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct(), mayBeInCall);

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Prepends a #GHook on the start of a #GHookList.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to add to the start of @hook_list
	 */
	public static void prepend(HookList hookList, Hook hook)
	{
		g_hook_prepend((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());
	}

	alias doref = ref_;
	/**
	 * Increments the reference count for a #GHook.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to increment the reference count of
	 *
	 * Returns: the @hook that was passed in (since 2.6)
	 */
	public static Hook ref_(HookList hookList, Hook hook)
	{
		auto __p = g_hook_ref((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());

		if(__p is null)
		{
			return null;
		}

		return new Hook(cast(GHook*) __p);
	}

	/**
	 * Decrements the reference count of a #GHook.
	 * If the reference count falls to 0, the #GHook is removed
	 * from the #GHookList and g_hook_free() is called to free it.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to unref
	 */
	public static void unref(HookList hookList, Hook hook)
	{
		g_hook_unref((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());
	}
}
