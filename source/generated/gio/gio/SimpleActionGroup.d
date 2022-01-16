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


module gio.SimpleActionGroup;

private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.ActionIF;
private import gio.ActionMapIF;
private import gio.ActionMapT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GSimpleActionGroup is a hash table filled with #GAction objects,
 * implementing the #GActionGroup and #GActionMap interfaces.
 *
 * Since: 2.28
 */
public class SimpleActionGroup : ObjectG, ActionGroupIF, ActionMapIF
{
	/** the main Gtk struct */
	protected GSimpleActionGroup* gSimpleActionGroup;

	/** Get the main Gtk struct */
	public GSimpleActionGroup* getSimpleActionGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimpleActionGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleActionGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimpleActionGroup* gSimpleActionGroup, bool ownedRef = false)
	{
		this.gSimpleActionGroup = gSimpleActionGroup;
		super(cast(GObject*)gSimpleActionGroup, ownedRef);
	}

	// add the ActionGroup capabilities
	mixin ActionGroupT!(GSimpleActionGroup);

	// add the ActionMap capabilities
	mixin ActionMapT!(GSimpleActionGroup);


	/** */
	public static GType getType()
	{
		return g_simple_action_group_get_type();
	}

	/**
	 * Creates a new, empty, #GSimpleActionGroup.
	 *
	 * Returns: a new #GSimpleActionGroup
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_simple_action_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimpleActionGroup*) __p, true);
	}

	/**
	 * A convenience function for creating multiple #GSimpleAction instances
	 * and adding them to the action group.
	 *
	 * Deprecated: Use g_action_map_add_action_entries()
	 *
	 * Params:
	 *     entries = a pointer to the first item in
	 *         an array of #GActionEntry structs
	 *     userData = the user data for signal connections
	 *
	 * Since: 2.30
	 */
	public void addEntries(GActionEntry[] entries, void* userData)
	{
		g_simple_action_group_add_entries(gSimpleActionGroup, entries.ptr, cast(int)entries.length, userData);
	}

	/**
	 * Adds an action to the action group.
	 *
	 * If the action group already contains an action with the same name as
	 * @action then the old action is dropped from the group.
	 *
	 * The action group takes its own reference on @action.
	 *
	 * Deprecated: Use g_action_map_add_action()
	 *
	 * Params:
	 *     action = a #GAction
	 *
	 * Since: 2.28
	 */
	public void insert(ActionIF action)
	{
		g_simple_action_group_insert(gSimpleActionGroup, (action is null) ? null : action.getActionStruct());
	}

	/**
	 * Looks up the action with the name @action_name in the group.
	 *
	 * If no such action exists, returns %NULL.
	 *
	 * Deprecated: Use g_action_map_lookup_action()
	 *
	 * Params:
	 *     actionName = the name of an action
	 *
	 * Returns: a #GAction, or %NULL
	 *
	 * Since: 2.28
	 */
	public ActionIF lookup(string actionName)
	{
		auto __p = g_simple_action_group_lookup(gSimpleActionGroup, Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ActionIF)(cast(GAction*) __p);
	}

	/**
	 * Removes the named action from the action group.
	 *
	 * If no action of this name is in the group then nothing happens.
	 *
	 * Deprecated: Use g_action_map_remove_action()
	 *
	 * Params:
	 *     actionName = the name of the action
	 *
	 * Since: 2.28
	 */
	public void remove(string actionName)
	{
		g_simple_action_group_remove(gSimpleActionGroup, Str.toStringz(actionName));
	}
}
