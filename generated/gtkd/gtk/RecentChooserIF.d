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


module gtk.RecentChooserIF;

private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.RecentFilter;
private import gtk.RecentInfo;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkRecentChooser is an interface that can be implemented by widgets
 * displaying the list of recently used files.  In GTK+, the main objects
 * that implement this interface are #GtkRecentChooserWidget,
 * #GtkRecentChooserDialog and #GtkRecentChooserMenu.
 * 
 * Recently used files are supported since GTK+ 2.10.
 */
public interface RecentChooserIF{
	/** Get the main Gtk struct */
	public GtkRecentChooser* getRecentChooserStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_recent_chooser_get_type();
	}

	/**
	 * Adds @filter to the list of #GtkRecentFilter objects held by @chooser.
	 *
	 * If no previous filter objects were defined, this function will call
	 * gtk_recent_chooser_set_filter().
	 *
	 * Params:
	 *     filter = a #GtkRecentFilter
	 *
	 * Since: 2.10
	 */
	public void addFilter(RecentFilter filter);

	/**
	 * Gets the #GtkRecentInfo currently selected by @chooser.
	 *
	 * Returns: a #GtkRecentInfo.  Use gtk_recent_info_unref() when
	 *     when you have finished using it.
	 *
	 * Since: 2.10
	 */
	public RecentInfo getCurrentItem();

	/**
	 * Gets the URI currently selected by @chooser.
	 *
	 * Returns: a newly allocated string holding a URI.
	 *
	 * Since: 2.10
	 */
	public string getCurrentUri();

	/**
	 * Gets the #GtkRecentFilter object currently used by @chooser to affect
	 * the display of the recently used resources.
	 *
	 * Returns: a #GtkRecentFilter object.
	 *
	 * Since: 2.10
	 */
	public RecentFilter getFilter();

	/**
	 * Gets the list of recently used resources in form of #GtkRecentInfo objects.
	 *
	 * The return value of this function is affected by the “sort-type” and
	 * “limit” properties of @chooser.
	 *
	 * Returns: A newly allocated
	 *     list of #GtkRecentInfo objects.  You should
	 *     use gtk_recent_info_unref() on every item of the list, and then free
	 *     the list itself using g_list_free().
	 *
	 * Since: 2.10
	 */
	public ListG getItems();

	/**
	 * Gets the number of items returned by gtk_recent_chooser_get_items()
	 * and gtk_recent_chooser_get_uris().
	 *
	 * Returns: A positive integer, or -1 meaning that all items are
	 *     returned.
	 *
	 * Since: 2.10
	 */
	public int getLimit();

	/**
	 * Gets whether only local resources should be shown in the recently used
	 * resources selector.  See gtk_recent_chooser_set_local_only()
	 *
	 * Returns: %TRUE if only local resources should be shown.
	 *
	 * Since: 2.10
	 */
	public bool getLocalOnly();

	/**
	 * Gets whether @chooser can select multiple items.
	 *
	 * Returns: %TRUE if @chooser can select more than one item.
	 *
	 * Since: 2.10
	 */
	public bool getSelectMultiple();

	/**
	 * Retrieves whether @chooser should show an icon near the resource.
	 *
	 * Returns: %TRUE if the icons should be displayed, %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowIcons();

	/**
	 * Retrieves whether @chooser should show the recently used resources that
	 * were not found.
	 *
	 * Returns: %TRUE if the resources not found should be displayed, and
	 *     %FALSE otheriwse.
	 *
	 * Since: 2.10
	 */
	public bool getShowNotFound();

	/**
	 * Returns whether @chooser should display recently used resources
	 * registered as private.
	 *
	 * Returns: %TRUE if the recent chooser should show private items,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowPrivate();

	/**
	 * Gets whether @chooser should display tooltips containing the full path
	 * of a recently user resource.
	 *
	 * Returns: %TRUE if the recent chooser should show tooltips,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowTips();

	/**
	 * Gets the value set by gtk_recent_chooser_set_sort_type().
	 *
	 * Returns: the sorting order of the @chooser.
	 *
	 * Since: 2.10
	 */
	public GtkRecentSortType getSortType();

	/**
	 * Gets the URI of the recently used resources.
	 *
	 * The return value of this function is affected by the “sort-type” and “limit”
	 * properties of @chooser.
	 *
	 * Since the returned array is %NULL terminated, @length may be %NULL.
	 *
	 * Returns: A newly allocated, %NULL-terminated array of strings. Use
	 *     g_strfreev() to free it.
	 *
	 * Since: 2.10
	 */
	public string[] getUris();

	/**
	 * Gets the #GtkRecentFilter objects held by @chooser.
	 *
	 * Returns: A singly linked list
	 *     of #GtkRecentFilter objects.  You
	 *     should just free the returned list using g_slist_free().
	 *
	 * Since: 2.10
	 */
	public ListSG listFilters();

	/**
	 * Removes @filter from the list of #GtkRecentFilter objects held by @chooser.
	 *
	 * Params:
	 *     filter = a #GtkRecentFilter
	 *
	 * Since: 2.10
	 */
	public void removeFilter(RecentFilter filter);

	/**
	 * Selects all the items inside @chooser, if the @chooser supports
	 * multiple selection.
	 *
	 * Since: 2.10
	 */
	public void selectAll();

	/**
	 * Selects @uri inside @chooser.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Returns: %TRUE if @uri was found.
	 *
	 * Since: 2.10
	 *
	 * Throws: GException on failure.
	 */
	public bool selectUri(string uri);

	/**
	 * Sets @uri as the current URI for @chooser.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Returns: %TRUE if the URI was found.
	 *
	 * Since: 2.10
	 *
	 * Throws: GException on failure.
	 */
	public bool setCurrentUri(string uri);

	/**
	 * Sets @filter as the current #GtkRecentFilter object used by @chooser
	 * to affect the displayed recently used resources.
	 *
	 * Params:
	 *     filter = a #GtkRecentFilter
	 *
	 * Since: 2.10
	 */
	public void setFilter(RecentFilter filter);

	/**
	 * Sets the number of items that should be returned by
	 * gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
	 *
	 * Params:
	 *     limit = a positive integer, or -1 for all items
	 *
	 * Since: 2.10
	 */
	public void setLimit(int limit);

	/**
	 * Sets whether only local resources, that is resources using the file:// URI
	 * scheme, should be shown in the recently used resources selector.  If
	 * @local_only is %TRUE (the default) then the shown resources are guaranteed
	 * to be accessible through the operating system native file system.
	 *
	 * Params:
	 *     localOnly = %TRUE if only local files can be shown
	 *
	 * Since: 2.10
	 */
	public void setLocalOnly(bool localOnly);

	/**
	 * Sets whether @chooser can select multiple items.
	 *
	 * Params:
	 *     selectMultiple = %TRUE if @chooser can select more than one item
	 *
	 * Since: 2.10
	 */
	public void setSelectMultiple(bool selectMultiple);

	/**
	 * Sets whether @chooser should show an icon near the resource when
	 * displaying it.
	 *
	 * Params:
	 *     showIcons = whether to show an icon near the resource
	 *
	 * Since: 2.10
	 */
	public void setShowIcons(bool showIcons);

	/**
	 * Sets whether @chooser should display the recently used resources that
	 * it didn’t find.  This only applies to local resources.
	 *
	 * Params:
	 *     showNotFound = whether to show the local items we didn’t find
	 *
	 * Since: 2.10
	 */
	public void setShowNotFound(bool showNotFound);

	/**
	 * Whether to show recently used resources marked registered as private.
	 *
	 * Params:
	 *     showPrivate = %TRUE to show private items, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public void setShowPrivate(bool showPrivate);

	/**
	 * Sets whether to show a tooltips containing the full path of each
	 * recently used resource in a #GtkRecentChooser widget.
	 *
	 * Params:
	 *     showTips = %TRUE if tooltips should be shown
	 *
	 * Since: 2.10
	 */
	public void setShowTips(bool showTips);

	/**
	 * Sets the comparison function used when sorting to be @sort_func.  If
	 * the @chooser has the sort type set to #GTK_RECENT_SORT_CUSTOM then
	 * the chooser will sort using this function.
	 *
	 * To the comparison function will be passed two #GtkRecentInfo structs and
	 * @sort_data;  @sort_func should return a positive integer if the first
	 * item comes before the second, zero if the two items are equal and
	 * a negative integer if the first item comes after the second.
	 *
	 * Params:
	 *     sortFunc = the comparison function
	 *     sortData = user data to pass to @sort_func, or %NULL
	 *     dataDestroy = destroy notifier for @sort_data, or %NULL
	 *
	 * Since: 2.10
	 */
	public void setSortFunc(GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy);

	/**
	 * Changes the sorting order of the recently used resources list displayed by
	 * @chooser.
	 *
	 * Params:
	 *     sortType = sort order that the chooser should use
	 *
	 * Since: 2.10
	 */
	public void setSortType(GtkRecentSortType sortType);

	/**
	 * Unselects all the items inside @chooser.
	 *
	 * Since: 2.10
	 */
	public void unselectAll();

	/**
	 * Unselects @uri inside @chooser.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Since: 2.10
	 */
	public void unselectUri(string uri);

	/**
	 * This signal is emitted when the user "activates" a recent item
	 * in the recent chooser.  This can happen by double-clicking on an item
	 * in the recently used resources list, or by pressing
	 * `Enter`.
	 *
	 * Since: 2.10
	 */
	gulong addOnItemActivated(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * This signal is emitted when there is a change in the set of
	 * selected recently used resources.  This can happen when a user
	 * modifies the selection with the mouse or the keyboard, or when
	 * explicitly calling functions to change the selection.
	 *
	 * Since: 2.10
	 */
	gulong addOnSelectionChanged(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
