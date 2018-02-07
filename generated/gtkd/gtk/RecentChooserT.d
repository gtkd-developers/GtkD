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


module gtk.RecentChooserT;

public  import glib.ErrorG;
public  import glib.GException;
public  import glib.ListG;
public  import glib.ListSG;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtk.RecentFilter;
public  import gtk.RecentInfo;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
public  import std.algorithm;


/**
 * #GtkRecentChooser is an interface that can be implemented by widgets
 * displaying the list of recently used files.  In GTK+, the main objects
 * that implement this interface are #GtkRecentChooserWidget,
 * #GtkRecentChooserDialog and #GtkRecentChooserMenu.
 * 
 * Recently used files are supported since GTK+ 2.10.
 */
public template RecentChooserT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkRecentChooser* getRecentChooserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkRecentChooser*)getStruct();
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
	public void addFilter(RecentFilter filter)
	{
		gtk_recent_chooser_add_filter(getRecentChooserStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}

	/**
	 * Gets the #GtkRecentInfo currently selected by @chooser.
	 *
	 * Returns: a #GtkRecentInfo.  Use gtk_recent_info_unref() when
	 *     when you have finished using it.
	 *
	 * Since: 2.10
	 */
	public RecentInfo getCurrentItem()
	{
		auto p = gtk_recent_chooser_get_current_item(getRecentChooserStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecentInfo)(cast(GtkRecentInfo*) p, true);
	}

	/**
	 * Gets the URI currently selected by @chooser.
	 *
	 * Returns: a newly allocated string holding a URI.
	 *
	 * Since: 2.10
	 */
	public string getCurrentUri()
	{
		auto retStr = gtk_recent_chooser_get_current_uri(getRecentChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the #GtkRecentFilter object currently used by @chooser to affect
	 * the display of the recently used resources.
	 *
	 * Returns: a #GtkRecentFilter object.
	 *
	 * Since: 2.10
	 */
	public RecentFilter getFilter()
	{
		auto p = gtk_recent_chooser_get_filter(getRecentChooserStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RecentFilter)(cast(GtkRecentFilter*) p);
	}

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
	public ListG getItems()
	{
		auto p = gtk_recent_chooser_get_items(getRecentChooserStruct());

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets the number of items returned by gtk_recent_chooser_get_items()
	 * and gtk_recent_chooser_get_uris().
	 *
	 * Returns: A positive integer, or -1 meaning that all items are
	 *     returned.
	 *
	 * Since: 2.10
	 */
	public int getLimit()
	{
		return gtk_recent_chooser_get_limit(getRecentChooserStruct());
	}

	/**
	 * Gets whether only local resources should be shown in the recently used
	 * resources selector.  See gtk_recent_chooser_set_local_only()
	 *
	 * Returns: %TRUE if only local resources should be shown.
	 *
	 * Since: 2.10
	 */
	public bool getLocalOnly()
	{
		return gtk_recent_chooser_get_local_only(getRecentChooserStruct()) != 0;
	}

	/**
	 * Gets whether @chooser can select multiple items.
	 *
	 * Returns: %TRUE if @chooser can select more than one item.
	 *
	 * Since: 2.10
	 */
	public bool getSelectMultiple()
	{
		return gtk_recent_chooser_get_select_multiple(getRecentChooserStruct()) != 0;
	}

	/**
	 * Retrieves whether @chooser should show an icon near the resource.
	 *
	 * Returns: %TRUE if the icons should be displayed, %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowIcons()
	{
		return gtk_recent_chooser_get_show_icons(getRecentChooserStruct()) != 0;
	}

	/**
	 * Retrieves whether @chooser should show the recently used resources that
	 * were not found.
	 *
	 * Returns: %TRUE if the resources not found should be displayed, and
	 *     %FALSE otheriwse.
	 *
	 * Since: 2.10
	 */
	public bool getShowNotFound()
	{
		return gtk_recent_chooser_get_show_not_found(getRecentChooserStruct()) != 0;
	}

	/**
	 * Returns whether @chooser should display recently used resources
	 * registered as private.
	 *
	 * Returns: %TRUE if the recent chooser should show private items,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowPrivate()
	{
		return gtk_recent_chooser_get_show_private(getRecentChooserStruct()) != 0;
	}

	/**
	 * Gets whether @chooser should display tooltips containing the full path
	 * of a recently user resource.
	 *
	 * Returns: %TRUE if the recent chooser should show tooltips,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool getShowTips()
	{
		return gtk_recent_chooser_get_show_tips(getRecentChooserStruct()) != 0;
	}

	/**
	 * Gets the value set by gtk_recent_chooser_set_sort_type().
	 *
	 * Returns: the sorting order of the @chooser.
	 *
	 * Since: 2.10
	 */
	public GtkRecentSortType getSortType()
	{
		return gtk_recent_chooser_get_sort_type(getRecentChooserStruct());
	}

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
	public string[] getUris()
	{
		size_t length;

		auto retStr = gtk_recent_chooser_get_uris(getRecentChooserStruct(), &length);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the #GtkRecentFilter objects held by @chooser.
	 *
	 * Returns: A singly linked list
	 *     of #GtkRecentFilter objects.  You
	 *     should just free the returned list using g_slist_free().
	 *
	 * Since: 2.10
	 */
	public ListSG listFilters()
	{
		auto p = gtk_recent_chooser_list_filters(getRecentChooserStruct());

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Removes @filter from the list of #GtkRecentFilter objects held by @chooser.
	 *
	 * Params:
	 *     filter = a #GtkRecentFilter
	 *
	 * Since: 2.10
	 */
	public void removeFilter(RecentFilter filter)
	{
		gtk_recent_chooser_remove_filter(getRecentChooserStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}

	/**
	 * Selects all the items inside @chooser, if the @chooser supports
	 * multiple selection.
	 *
	 * Since: 2.10
	 */
	public void selectAll()
	{
		gtk_recent_chooser_select_all(getRecentChooserStruct());
	}

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
	public bool selectUri(string uri)
	{
		GError* err = null;

		auto p = gtk_recent_chooser_select_uri(getRecentChooserStruct(), Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

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
	public bool setCurrentUri(string uri)
	{
		GError* err = null;

		auto p = gtk_recent_chooser_set_current_uri(getRecentChooserStruct(), Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Sets @filter as the current #GtkRecentFilter object used by @chooser
	 * to affect the displayed recently used resources.
	 *
	 * Params:
	 *     filter = a #GtkRecentFilter
	 *
	 * Since: 2.10
	 */
	public void setFilter(RecentFilter filter)
	{
		gtk_recent_chooser_set_filter(getRecentChooserStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}

	/**
	 * Sets the number of items that should be returned by
	 * gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
	 *
	 * Params:
	 *     limit = a positive integer, or -1 for all items
	 *
	 * Since: 2.10
	 */
	public void setLimit(int limit)
	{
		gtk_recent_chooser_set_limit(getRecentChooserStruct(), limit);
	}

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
	public void setLocalOnly(bool localOnly)
	{
		gtk_recent_chooser_set_local_only(getRecentChooserStruct(), localOnly);
	}

	/**
	 * Sets whether @chooser can select multiple items.
	 *
	 * Params:
	 *     selectMultiple = %TRUE if @chooser can select more than one item
	 *
	 * Since: 2.10
	 */
	public void setSelectMultiple(bool selectMultiple)
	{
		gtk_recent_chooser_set_select_multiple(getRecentChooserStruct(), selectMultiple);
	}

	/**
	 * Sets whether @chooser should show an icon near the resource when
	 * displaying it.
	 *
	 * Params:
	 *     showIcons = whether to show an icon near the resource
	 *
	 * Since: 2.10
	 */
	public void setShowIcons(bool showIcons)
	{
		gtk_recent_chooser_set_show_icons(getRecentChooserStruct(), showIcons);
	}

	/**
	 * Sets whether @chooser should display the recently used resources that
	 * it didn’t find.  This only applies to local resources.
	 *
	 * Params:
	 *     showNotFound = whether to show the local items we didn’t find
	 *
	 * Since: 2.10
	 */
	public void setShowNotFound(bool showNotFound)
	{
		gtk_recent_chooser_set_show_not_found(getRecentChooserStruct(), showNotFound);
	}

	/**
	 * Whether to show recently used resources marked registered as private.
	 *
	 * Params:
	 *     showPrivate = %TRUE to show private items, %FALSE otherwise
	 *
	 * Since: 2.10
	 */
	public void setShowPrivate(bool showPrivate)
	{
		gtk_recent_chooser_set_show_private(getRecentChooserStruct(), showPrivate);
	}

	/**
	 * Sets whether to show a tooltips containing the full path of each
	 * recently used resource in a #GtkRecentChooser widget.
	 *
	 * Params:
	 *     showTips = %TRUE if tooltips should be shown
	 *
	 * Since: 2.10
	 */
	public void setShowTips(bool showTips)
	{
		gtk_recent_chooser_set_show_tips(getRecentChooserStruct(), showTips);
	}

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
	public void setSortFunc(GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy)
	{
		gtk_recent_chooser_set_sort_func(getRecentChooserStruct(), sortFunc, sortData, dataDestroy);
	}

	/**
	 * Changes the sorting order of the recently used resources list displayed by
	 * @chooser.
	 *
	 * Params:
	 *     sortType = sort order that the chooser should use
	 *
	 * Since: 2.10
	 */
	public void setSortType(GtkRecentSortType sortType)
	{
		gtk_recent_chooser_set_sort_type(getRecentChooserStruct(), sortType);
	}

	/**
	 * Unselects all the items inside @chooser.
	 *
	 * Since: 2.10
	 */
	public void unselectAll()
	{
		gtk_recent_chooser_unselect_all(getRecentChooserStruct());
	}

	/**
	 * Unselects @uri inside @chooser.
	 *
	 * Params:
	 *     uri = a URI
	 *
	 * Since: 2.10
	 */
	public void unselectUri(string uri)
	{
		gtk_recent_chooser_unselect_uri(getRecentChooserStruct(), Str.toStringz(uri));
	}

	/**
	 * This signal is emitted when the user "activates" a recent item
	 * in the recent chooser.  This can happen by double-clicking on an item
	 * in the recently used resources list, or by pressing
	 * `Enter`.
	 *
	 * Since: 2.10
	 */
	gulong addOnItemActivated(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "item-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when there is a change in the set of
	 * selected recently used resources.  This can happen when a user
	 * modifies the selection with the mouse or the keyboard, or when
	 * explicitly calling functions to change the selection.
	 *
	 * Since: 2.10
	 */
	gulong addOnSelectionChanged(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
