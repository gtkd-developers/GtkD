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


module sourceview.SnippetManager;

private import gio.ListModelIF;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.Snippet;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Provides access to [class@Snippet].
 * 
 * `GtkSourceSnippetManager` is an object which processes snippet description
 * files and creates [class@Snippet] objects.
 * 
 * Use [func@SnippetManager.get_default] to retrieve the default
 * instance of `GtkSourceSnippetManager`.
 * 
 * Use [method@SnippetManager.get_snippet] to retrieve snippets for
 * a given snippets.
 */
public class SnippetManager : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSnippetManager* gtkSourceSnippetManager;

	/** Get the main Gtk struct */
	public GtkSourceSnippetManager* getSnippetManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSnippetManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSnippetManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSnippetManager* gtkSourceSnippetManager, bool ownedRef = false)
	{
		this.gtkSourceSnippetManager = gtkSourceSnippetManager;
		super(cast(GObject*)gtkSourceSnippetManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_snippet_manager_get_type();
	}

	/**
	 * Returns the default #GtkSourceSnippetManager instance.
	 *
	 * Returns: a #GtkSourceSnippetManager which
	 *     is owned by GtkSourceView library and must not be unref'd.
	 */
	public static SnippetManager getDefault()
	{
		auto __p = gtk_source_snippet_manager_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SnippetManager)(cast(GtkSourceSnippetManager*) __p);
	}

	/**
	 * Gets the list directories where @self looks for snippet files.
	 *
	 * Returns: %NULL-terminated array
	 *     containing a list of snippet files directories.
	 *     The array is owned by @lm and must not be modified.
	 */
	public string[] getSearchPath()
	{
		return Str.toStringArray(gtk_source_snippet_manager_get_search_path(gtkSourceSnippetManager));
	}

	/**
	 * Queries the known snippets for the first matching @group, @language_id,
	 * and/or @trigger.
	 *
	 * If @group or @language_id are %NULL, they will be ignored.
	 *
	 * Params:
	 *     group = a group name or %NULL
	 *     languageId = a #GtkSourceLanguage:id or %NULL
	 *     trigger = the trigger for the snippet
	 *
	 * Returns: a #GtkSourceSnippet or %NULL if no
	 *     matching snippet was found.
	 */
	public Snippet getSnippet(string group, string languageId, string trigger)
	{
		auto __p = gtk_source_snippet_manager_get_snippet(gtkSourceSnippetManager, Str.toStringz(group), Str.toStringz(languageId), Str.toStringz(trigger));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Snippet)(cast(GtkSourceSnippet*) __p, true);
	}

	/**
	 * List all the known groups within the snippet manager.
	 *
	 * The result should be freed with g_free(), and the individual strings are
	 * owned by @self and should never be freed by the caller.
	 *
	 * Returns: An array of strings which should be freed with g_free().
	 */
	public string[] listGroups()
	{
		auto retStr = gtk_source_snippet_manager_list_groups(gtkSourceSnippetManager);

		scope(exit) g_free(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Queries the known snippets for those matching @group, @language_id, and/or
	 * @trigger_prefix.
	 *
	 * If any of these are %NULL, they will be ignored when filtering the available snippets.
	 *
	 * The [iface@Gio.ListModel] only contains information about the available snippets until
	 * [method@Gio.ListModel.get_item] is called for a specific snippet. This helps reduce
	 * the number of [class@GObject.Object]'s that are created at runtime to those needed by
	 * the calling application.
	 *
	 * Params:
	 *     group = a group name or %NULL
	 *     languageId = a #GtkSourceLanguage:id or %NULL
	 *     triggerPrefix = a prefix for a trigger to activate
	 *
	 * Returns: a #GListModel of #GtkSourceSnippet.
	 */
	public ListModelIF listMatching(string group, string languageId, string triggerPrefix)
	{
		auto __p = gtk_source_snippet_manager_list_matching(gtkSourceSnippetManager, Str.toStringz(group), Str.toStringz(languageId), Str.toStringz(triggerPrefix));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * Sets the list of directories in which the `GtkSourceSnippetManager` looks for
	 * snippet files.
	 *
	 * If @dirs is %NULL, the search path is reset to default.
	 *
	 * At the moment this function can be called only before the
	 * snippet files are loaded for the first time. In practice
	 * to set a custom search path for a `GtkSourceSnippetManager`,
	 * you have to call this function right after creating it.
	 *
	 * Params:
	 *     dirs = a %NULL-terminated array of
	 *         strings or %NULL.
	 */
	public void setSearchPath(string[] dirs)
	{
		gtk_source_snippet_manager_set_search_path(gtkSourceSnippetManager, Str.toStringzArray(dirs));
	}
}
