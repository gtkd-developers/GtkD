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

/*
 * Conversion parameters:
 * inFile  = GtkRecentChooser.html
 * outPack = gtk
 * outFile = RecentChooserIF
 * strct   = GtkRecentChooser
 * realStrct=
 * ctorStrct=
 * clss    = RecentChooserT
 * interf  = RecentChooserIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_recent_chooser_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- glib.ListSG
 * 	- gtk.RecentInfo
 * 	- gtk.RecentFilter
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSList* -> ListSG
 * 	- GtkRecentFilter* -> RecentFilter
 * 	- GtkRecentInfo* -> RecentInfo
 * module aliases:
 * local aliases:
 * 	- getShowNumbers -> recentChooserGetShowNumbers
 * 	- setShowNumbers -> recentChooserSetShowNumbers
 * overrides:
 */

module gtk.RecentChooserIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.ListSG;
private import gtk.RecentInfo;
private import gtk.RecentFilter;




/**
 * Description
 * GtkRecentChooser is an interface that can be implemented by widgets
 * displaying the list of recently used files. In GTK+, the main objects
 * that implement this interface are GtkRecentChooserWidget,
 * GtkRecentChooserDialog and GtkRecentChooserMenu.
 * Recently used files are supported since GTK+ 2.10.
 */
public interface RecentChooserIF
{
	
	
	public GtkRecentChooser* getRecentChooserTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(RecentChooserIF)[] onItemActivatedListeners();
	/**
	 * This signal is emitted when the user "activates" a recent item
	 * in the recent chooser. This can happen by double-clicking on an item
	 * in the recently used resources list, or by pressing
	 * Enter.
	 * Since 2.10
	 */
	void addOnItemActivated(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(RecentChooserIF)[] onSelectionChangedListeners();
	/**
	 * This signal is emitted when there is a change in the set of
	 * selected recently used resources. This can happen when a user
	 * modifies the selection with the mouse or the keyboard, or when
	 * explicitely calling functions to change the selection.
	 * Since 2.10
	 * See Also
	 * GtkRecentManager, GtkRecentChooserDialog,
	 *  GtkRecentChooserWidget, GtkRecentChooserMenu
	 */
	void addOnSelectionChanged(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Whether to show recently used resources marked registered as private.
	 * Since 2.10
	 * Params:
	 * showPrivate = TRUE to show private items, FALSE otherwise
	 */
	public void setShowPrivate(int showPrivate);
	
	/**
	 * Returns whether chooser should display recently used resources
	 * registered as private.
	 * Since 2.10
	 * Returns: TRUE if the recent chooser should show private items, FALSE otherwise.
	 */
	public int getShowPrivate();
	
	/**
	 * Sets whether chooser should display the recently used resources that
	 * it didn't find. This only applies to local resources.
	 * Since 2.10
	 * Params:
	 * showNotFound = whether to show the local items we didn't find
	 */
	public void setShowNotFound(int showNotFound);
	
	/**
	 * Retrieves whether chooser should show the recently used resources that
	 * were not found.
	 * Since 2.10
	 * Returns: TRUE if the resources not found should be displayed, and FALSE otheriwse.
	 */
	public int getShowNotFound();
	
	/**
	 * Sets whether chooser should show an icon near the resource when
	 * displaying it.
	 * Since 2.10
	 * Params:
	 * showIcons = whether to show an icon near the resource
	 */
	public void setShowIcons(int showIcons);
	
	/**
	 * Retrieves whether chooser should show an icon near the resource.
	 * Since 2.10
	 * Returns: TRUE if the icons should be displayed, FALSE otherwise.
	 */
	public int getShowIcons();
	
	/**
	 * Sets whether chooser can select multiple items.
	 * Since 2.10
	 * Params:
	 * selectMultiple = TRUE if chooser can select more than one item
	 */
	public void setSelectMultiple(int selectMultiple);
	
	/**
	 * Gets whether chooser can select multiple items.
	 * Since 2.10
	 * Returns: TRUE if chooser can select more than one item.
	 */
	public int getSelectMultiple();
	
	/**
	 * Sets whether only local resources, that is resources using the file:// URI
	 * scheme, should be shown in the recently used resources selector. If
	 * local_only is TRUE (the default) then the shown resources are guaranteed
	 * to be accessible through the operating system native file system.
	 * Since 2.10
	 * Params:
	 * localOnly = TRUE if only local files can be shown
	 */
	public void setLocalOnly(int localOnly);
	
	/**
	 * Gets whether only local resources should be shown in the recently used
	 * resources selector. See gtk_recent_chooser_set_local_only()
	 * Since 2.10
	 * Returns: TRUE if only local resources should be shown.
	 */
	public int getLocalOnly();
	
	/**
	 * Sets the number of items that should be returned by
	 * gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
	 * Since 2.10
	 * Params:
	 * limit = a positive integer, or -1 for all items
	 */
	public void setLimit(int limit);
	
	/**
	 * Gets the number of items returned by gtk_recent_chooser_get_items()
	 * and gtk_recent_chooser_get_uris().
	 * Since 2.10
	 * Returns: A positive integer, or -1 meaning that all items are returned.
	 */
	public int getLimit();
	
	/**
	 * Sets whether to show a tooltips containing the full path of each
	 * recently used resource in a GtkRecentChooser widget.
	 * Since 2.10
	 * Params:
	 * showTips = TRUE if tooltips should be shown
	 */
	public void setShowTips(int showTips);
	
	/**
	 * Gets whether chooser should display tooltips containing the full path
	 * of a recently user resource.
	 * Since 2.10
	 * Returns: TRUE if the recent chooser should show tooltips, FALSE otherwise.
	 */
	public int getShowTips();
	
	/**
	 * Changes the sorting order of the recently used resources list displayed by
	 * chooser.
	 * Since 2.10
	 * Params:
	 * sortType = sort order that the chooser should use
	 */
	public void setSortType(GtkRecentSortType sortType);
	
	/**
	 * Gets the value set by gtk_recent_chooser_set_sort_type().
	 * Since 2.10
	 * Returns: the sorting order of the chooser.
	 */
	public GtkRecentSortType getSortType();
	
	/**
	 * Sets the comparison function used when sorting to be sort_func. If
	 * the chooser has the sort type set to GTK_RECENT_SORT_CUSTOM then
	 * the chooser will sort using this function.
	 * To the comparison function will be passed two GtkRecentInfo structs and
	 * sort_data; sort_func should return a positive integer if the first
	 * item comes before the second, zero if the two items are equal and
	 * a negative integer if the first item comes after the second.
	 * Since 2.10
	 * Params:
	 * sortFunc = the comparison function
	 * sortData = user data to pass to sort_func, or NULL. [allow-none]
	 * dataDestroy = destroy notifier for sort_data, or NULL. [allow-none]
	 */
	public void setSortFunc(GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy);
	
	/**
	 * Sets uri as the current URI for chooser.
	 * Since 2.10
	 * Params:
	 * uri = a URI
	 * Returns: TRUE if the URI was found.
	 * Throws: GException on failure.
	 */
	public int setCurrentUri(string uri);
	
	/**
	 * Gets the URI currently selected by chooser.
	 * Since 2.10
	 * Returns: a newly allocated string holding a URI.
	 */
	public string getCurrentUri();
	
	/**
	 * Gets the GtkRecentInfo currently selected by chooser.
	 * Since 2.10
	 * Returns: a GtkRecentInfo. Use gtk_recent_info_unref() when when you have finished using it.
	 */
	public RecentInfo getCurrentItem();
	
	/**
	 * Selects uri inside chooser.
	 * Since 2.10
	 * Params:
	 * uri = a URI
	 * Returns: TRUE if uri was found.
	 * Throws: GException on failure.
	 */
	public int selectUri(string uri);
	
	/**
	 * Unselects uri inside chooser.
	 * Since 2.10
	 * Params:
	 * uri = a URI
	 */
	public void unselectUri(string uri);
	
	/**
	 * Selects all the items inside chooser, if the chooser supports
	 * multiple selection.
	 * Since 2.10
	 */
	public void selectAll();
	
	/**
	 * Unselects all the items inside chooser.
	 * Since 2.10
	 */
	public void unselectAll();
	
	/**
	 * Gets the list of recently used resources in form of GtkRecentInfo objects.
	 * The return value of this function is affected by the "sort-type" and
	 * "limit" properties of chooser.
	 * Since 2.10
	 * Returns: A newly allocated list of GtkRecentInfo objects. You should use gtk_recent_info_unref() on every item of the list, and then free the list itself using g_list_free(). [element-type GtkRecentInfo][transfer full]
	 */
	public ListG getItems();
	
	/**
	 * Gets the URI of the recently used resources.
	 * The return value of this function is affected by the "sort-type" and "limit"
	 * properties of chooser.
	 * Since the returned array is NULL terminated, length may be NULL.
	 * Since 2.10
	 * Returns: A newly allocated, NULL-terminated array of strings. Use g_strfreev() to free it. [array length=length zero-terminated=1][transfer full]
	 */
	public string[] getUris();
	
	/**
	 * Adds filter to the list of GtkRecentFilter objects held by chooser.
	 * If no previous filter objects were defined, this function will call
	 * gtk_recent_chooser_set_filter().
	 * Since 2.10
	 * Params:
	 * filter = a GtkRecentFilter
	 */
	public void addFilter(RecentFilter filter);
	
	/**
	 * Removes filter from the list of GtkRecentFilter objects held by chooser.
	 * Since 2.10
	 * Params:
	 * filter = a GtkRecentFilter
	 */
	public void removeFilter(RecentFilter filter);
	
	/**
	 * Gets the GtkRecentFilter objects held by chooser.
	 * Since 2.10
	 * Returns: A singly linked list of GtkRecentFilter objects. You should just free the returned list using g_slist_free(). [element-type GtkRecentFilter][transfer container]
	 */
	public ListSG listFilters();
	
	/**
	 * Sets filter as the current GtkRecentFilter object used by chooser
	 * to affect the displayed recently used resources.
	 * Since 2.10
	 * Params:
	 * filter = a GtkRecentFilter
	 */
	public void setFilter(RecentFilter filter);
	
	/**
	 * Gets the GtkRecentFilter object currently used by chooser to affect
	 * the display of the recently used resources.
	 * Since 2.10
	 * Returns: a GtkRecentFilter object. [transfer none]
	 */
	public RecentFilter getFilter();
}
