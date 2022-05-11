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


module glib.HookList;

private import glib.Hook;
private import glib.MemorySlice;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The #GHookList struct represents a list of hook functions.
 */
public final class HookList
{
	/** the main Gtk struct */
	protected GHookList* gHookList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GHookList* getHookListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gHookList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHookList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GHookList* gHookList, bool ownedRef = false)
	{
		this.gHookList = gHookList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			sliceFree(gHookList);
	}


	/**
	 * the next free #GHook id
	 */
	public @property gulong seqId()
	{
		return gHookList.seqId;
	}

	/** Ditto */
	public @property void seqId(gulong value)
	{
		gHookList.seqId = value;
	}

	/**
	 * the size of the #GHookList elements, in bytes
	 */
	public @property uint hookSize()
	{
		return gHookList.hookSize;
	}

	/** Ditto */
	public @property void hookSize(uint value)
	{
		gHookList.hookSize = value;
	}

	/**
	 * 1 if the #GHookList has been initialized
	 */
	public @property uint isSetup()
	{
		return gHookList.isSetup;
	}

	/** Ditto */
	public @property void isSetup(uint value)
	{
		gHookList.isSetup = value;
	}

	/**
	 * the first #GHook element in the list
	 */
	public @property Hook hooks()
	{
		return new Hook(gHookList.hooks, false);
	}

	/** Ditto */
	public @property void hooks(Hook value)
	{
		gHookList.hooks = value.getHookStruct();
	}

	/**
	 * the function to call to finalize a #GHook element.
	 * The default behaviour is to call the hooks @destroy function
	 */
	public @property GHookFinalizeFunc finalizeHook()
	{
		return gHookList.finalizeHook;
	}

	/** Ditto */
	public @property void finalizeHook(GHookFinalizeFunc value)
	{
		gHookList.finalizeHook = value;
	}

	/**
	 * Removes all the #GHook elements from a #GHookList.
	 */
	public void clear()
	{
		g_hook_list_clear(gHookList);
	}

	/**
	 * Initializes a #GHookList.
	 * This must be called before the #GHookList is used.
	 *
	 * Params:
	 *     hookSize = the size of each element in the #GHookList,
	 *         typically `sizeof (GHook)`.
	 */
	public void init(uint hookSize)
	{
		g_hook_list_init(gHookList, hookSize);
	}

	/**
	 * Calls all of the #GHook functions in a #GHookList.
	 *
	 * Params:
	 *     mayRecurse = %TRUE if functions which are already running
	 *         (e.g. in another thread) can be called. If set to %FALSE,
	 *         these are skipped
	 */
	public void invoke(bool mayRecurse)
	{
		g_hook_list_invoke(gHookList, mayRecurse);
	}

	/**
	 * Calls all of the #GHook functions in a #GHookList.
	 * Any function which returns %FALSE is removed from the #GHookList.
	 *
	 * Params:
	 *     mayRecurse = %TRUE if functions which are already running
	 *         (e.g. in another thread) can be called. If set to %FALSE,
	 *         these are skipped
	 */
	public void invokeCheck(bool mayRecurse)
	{
		g_hook_list_invoke_check(gHookList, mayRecurse);
	}

	/**
	 * Calls a function on each valid #GHook.
	 *
	 * Params:
	 *     mayRecurse = %TRUE if hooks which are currently running
	 *         (e.g. in another thread) are considered valid. If set to %FALSE,
	 *         these are skipped
	 *     marshaller = the function to call for each #GHook
	 *     marshalData = data to pass to @marshaller
	 */
	public void marshal(bool mayRecurse, GHookMarshaller marshaller, void* marshalData)
	{
		g_hook_list_marshal(gHookList, mayRecurse, marshaller, marshalData);
	}

	/**
	 * Calls a function on each valid #GHook and destroys it if the
	 * function returns %FALSE.
	 *
	 * Params:
	 *     mayRecurse = %TRUE if hooks which are currently running
	 *         (e.g. in another thread) are considered valid. If set to %FALSE,
	 *         these are skipped
	 *     marshaller = the function to call for each #GHook
	 *     marshalData = data to pass to @marshaller
	 */
	public void marshalCheck(bool mayRecurse, GHookCheckMarshaller marshaller, void* marshalData)
	{
		g_hook_list_marshal_check(gHookList, mayRecurse, marshaller, marshalData);
	}
}
