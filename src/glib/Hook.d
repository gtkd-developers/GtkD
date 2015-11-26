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
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * The #GHook struct represents a single hook function in a #GHookList.
 */
public class Hook
{
	/** the main Gtk struct */
	protected GHook* gHook;

	/** Get the main Gtk struct */
	public GHook* getHookStruct()
	{
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
	public this (GHook* gHook)
	{
		this.gHook = gHook;
	}


	/**
	 * Compares the ids of two #GHook elements, returning a negative value
	 * if the second id is greater than the first.
	 *
	 * Params:
	 *     sibling = a #GHook to compare with @new_hook
	 *
	 * Return: a value <= 0 if the id of @sibling is >= the id of @new_hook
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
	 * Return: a new #GHook
	 */
	public static Hook alloc(HookList hookList)
	{
		auto p = g_hook_alloc((hookList is null) ? null : hookList.getHookListStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
	}

	/**
	 * Destroys a #GHook, given its ID.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hookId = a hook ID
	 *
	 * Return: %TRUE if the #GHook was found in the #GHookList and destroyed
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
	 * Return: the found #GHook or %NULL if no matching #GHook is found
	 */
	public static Hook find(HookList hookList, bool needValids, GHookFindFunc func, void* data)
	{
		auto p = g_hook_find((hookList is null) ? null : hookList.getHookListStruct(), needValids, func, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the #GHook with the given @data or %NULL if no matching
	 *     #GHook is found
	 */
	public static Hook findData(HookList hookList, bool needValids, void* data)
	{
		auto p = g_hook_find_data((hookList is null) ? null : hookList.getHookListStruct(), needValids, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the #GHook with the given @func or %NULL if no matching
	 *     #GHook is found
	 */
	public static Hook findFunc(HookList hookList, bool needValids, void* func)
	{
		auto p = g_hook_find_func((hookList is null) ? null : hookList.getHookListStruct(), needValids, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the #GHook with the given @func and @data or %NULL if
	 *     no matching #GHook is found
	 */
	public static Hook findFuncData(HookList hookList, bool needValids, void* func, void* data)
	{
		auto p = g_hook_find_func_data((hookList is null) ? null : hookList.getHookListStruct(), needValids, func, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the first valid #GHook, or %NULL if none are valid
	 */
	public static Hook firstValid(HookList hookList, bool mayBeInCall)
	{
		auto p = g_hook_first_valid((hookList is null) ? null : hookList.getHookListStruct(), mayBeInCall);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the #GHook with the given id, or %NULL if it is not found
	 */
	public static Hook get(HookList hookList, gulong hookId)
	{
		auto p = g_hook_get((hookList is null) ? null : hookList.getHookListStruct(), hookId);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
	 * Return: the next valid #GHook, or %NULL if none are valid
	 */
	public static Hook nextValid(HookList hookList, Hook hook, bool mayBeInCall)
	{
		auto p = g_hook_next_valid((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct(), mayBeInCall);
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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

	/**
	 * Increments the reference count for a #GHook.
	 *
	 * Params:
	 *     hookList = a #GHookList
	 *     hook = the #GHook to increment the reference count of
	 *
	 * Return: the @hook that was passed in (since 2.6)
	 */
	public static Hook doref(HookList hookList, Hook hook)
	{
		auto p = g_hook_ref((hookList is null) ? null : hookList.getHookListStruct(), (hook is null) ? null : hook.getHookStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Hook(cast(GHook*) p);
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
