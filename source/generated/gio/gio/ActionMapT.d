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


module gio.ActionMapT;

public  import gio.ActionIF;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.Str;
public  import gobject.ObjectG;


/**
 * The GActionMap interface is implemented by #GActionGroup
 * implementations that operate by containing a number of
 * named #GAction instances, such as #GSimpleActionGroup.
 * 
 * One useful application of this interface is to map the
 * names of actions from various action groups to unique,
 * prefixed names (e.g. by prepending "app." or "win.").
 * This is the motivation for the 'Map' part of the interface
 * name.
 *
 * Since: 2.32
 */
public template ActionMapT(TStruct)
{
	/** Get the main Gtk struct */
	public GActionMap* getActionMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GActionMap*)getStruct();
	}


	/**
	 * Adds an action to the @action_map.
	 *
	 * If the action map already contains an action with the same name
	 * as @action then the old action is dropped from the action map.
	 *
	 * The action map takes its own reference on @action.
	 *
	 * Params:
	 *     action = a #GAction
	 *
	 * Since: 2.32
	 */
	public void addAction(ActionIF action)
	{
		g_action_map_add_action(getActionMapStruct(), (action is null) ? null : action.getActionStruct());
	}

	/**
	 * A convenience function for creating multiple #GSimpleAction instances
	 * and adding them to a #GActionMap.
	 *
	 * Each action is constructed as per one #GActionEntry.
	 *
	 * |[<!-- language="C" -->
	 * static void
	 * activate_quit (GSimpleAction *simple,
	 * GVariant      *parameter,
	 * gpointer       user_data)
	 * {
	 * exit (0);
	 * }
	 *
	 * static void
	 * activate_print_string (GSimpleAction *simple,
	 * GVariant      *parameter,
	 * gpointer       user_data)
	 * {
	 * g_print ("%s\n", g_variant_get_string (parameter, NULL));
	 * }
	 *
	 * static GActionGroup *
	 * create_action_group (void)
	 * {
	 * const GActionEntry entries[] = {
	 * { "quit",         activate_quit              },
	 * { "print-string", activate_print_string, "s" }
	 * };
	 * GSimpleActionGroup *group;
	 *
	 * group = g_simple_action_group_new ();
	 * g_action_map_add_action_entries (G_ACTION_MAP (group), entries, G_N_ELEMENTS (entries), NULL);
	 *
	 * return G_ACTION_GROUP (group);
	 * }
	 * ]|
	 *
	 * Params:
	 *     entries = a pointer to
	 *         the first item in an array of #GActionEntry structs
	 *     userData = the user data for signal connections
	 *
	 * Since: 2.32
	 */
	public void addActionEntries(GActionEntry[] entries, void* userData)
	{
		g_action_map_add_action_entries(getActionMapStruct(), entries.ptr, cast(int)entries.length, userData);
	}

	/**
	 * Looks up the action with the name @action_name in @action_map.
	 *
	 * If no such action exists, returns %NULL.
	 *
	 * Params:
	 *     actionName = the name of an action
	 *
	 * Returns: a #GAction, or %NULL
	 *
	 * Since: 2.32
	 */
	public ActionIF lookupAction(string actionName)
	{
		auto __p = g_action_map_lookup_action(getActionMapStruct(), Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ActionIF)(cast(GAction*) __p);
	}

	/**
	 * Removes the named action from the action map.
	 *
	 * If no action of this name is in the map then nothing happens.
	 *
	 * Params:
	 *     actionName = the name of the action
	 *
	 * Since: 2.32
	 */
	public void removeAction(string actionName)
	{
		g_action_map_remove_action(getActionMapStruct(), Str.toStringz(actionName));
	}
}
