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


module adw.PreferencesWindow;

private import adw.PreferencesPage;
private import adw.Toast;
private import adw.Window;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * A window to present an application's preferences.
 * 
 * <picture>
 * <source srcset="preferences-window-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="preferences-window.png" alt="preferences-window">
 * </picture>
 * 
 * The `AdwPreferencesWindow` widget presents an application's preferences
 * gathered into pages and groups. The preferences are searchable by the user.
 * 
 * ## CSS nodes
 * 
 * `AdwPreferencesWindow` has a main CSS node with the name `window` and the
 * style class `.preferences`.
 *
 * Since: 1.0
 */
public class PreferencesWindow : Window
{
	/** the main Gtk struct */
	protected AdwPreferencesWindow* adwPreferencesWindow;

	/** Get the main Gtk struct */
	public AdwPreferencesWindow* getPreferencesWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPreferencesWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPreferencesWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPreferencesWindow* adwPreferencesWindow, bool ownedRef = false)
	{
		this.adwPreferencesWindow = adwPreferencesWindow;
		super(cast(AdwWindow*)adwPreferencesWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_preferences_window_get_type();
	}

	/**
	 * Creates a new `AdwPreferencesWindow`.
	 *
	 * Returns: the newly created `AdwPreferencesWindow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_preferences_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPreferencesWindow*) __p);
	}

	/**
	 * Adds a preferences page to @self.
	 *
	 * Params:
	 *     page = the page to add
	 *
	 * Since: 1.0
	 */
	public void add(PreferencesPage page)
	{
		adw_preferences_window_add(adwPreferencesWindow, (page is null) ? null : page.getPreferencesPageStruct());
	}

	/**
	 * Displays @toast.
	 *
	 * See [method@ToastOverlay.add_toast].
	 *
	 * Params:
	 *     toast = a toast
	 *
	 * Since: 1.0
	 */
	public void addToast(Toast toast)
	{
		adw_preferences_window_add_toast(adwPreferencesWindow, (toast is null) ? null : toast.getToastStruct());
	}

	/**
	 * Closes the current subpage.
	 *
	 * If there is no presented subpage, this does nothing.
	 *
	 * Since: 1.0
	 */
	public void closeSubpage()
	{
		adw_preferences_window_close_subpage(adwPreferencesWindow);
	}

	/**
	 * Gets whether gestures and shortcuts for closing subpages are enabled.
	 *
	 * Returns: whether gestures and shortcuts are enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanNavigateBack()
	{
		return adw_preferences_window_get_can_navigate_back(adwPreferencesWindow) != 0;
	}

	/**
	 * Gets whether search is enabled for @self.
	 *
	 * Returns: whether search is enabled for @self.
	 *
	 * Since: 1.0
	 */
	public bool getSearchEnabled()
	{
		return adw_preferences_window_get_search_enabled(adwPreferencesWindow) != 0;
	}

	/**
	 * Gets the currently visible page of @self.
	 *
	 * Returns: the visible page
	 *
	 * Since: 1.0
	 */
	public PreferencesPage getVisiblePage()
	{
		auto __p = adw_preferences_window_get_visible_page(adwPreferencesWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PreferencesPage)(cast(AdwPreferencesPage*) __p);
	}

	/**
	 * Gets the name of currently visible page of @self.
	 *
	 * Returns: the name of the visible page
	 *
	 * Since: 1.0
	 */
	public string getVisiblePageName()
	{
		return Str.toString(adw_preferences_window_get_visible_page_name(adwPreferencesWindow));
	}

	/**
	 * Sets @subpage as the window's subpage and opens it.
	 *
	 * The transition can be cancelled by the user, in which case visible child will
	 * change back to the previously visible child.
	 *
	 * Params:
	 *     subpage = the subpage
	 *
	 * Since: 1.0
	 */
	public void presentSubpage(Widget subpage)
	{
		adw_preferences_window_present_subpage(adwPreferencesWindow, (subpage is null) ? null : subpage.getWidgetStruct());
	}

	/**
	 * Removes a page from @self.
	 *
	 * Params:
	 *     page = the page to remove
	 *
	 * Since: 1.0
	 */
	public void remove(PreferencesPage page)
	{
		adw_preferences_window_remove(adwPreferencesWindow, (page is null) ? null : page.getPreferencesPageStruct());
	}

	/**
	 * Sets whether gestures and shortcuts for closing subpages are enabled.
	 *
	 * Params:
	 *     canNavigateBack = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanNavigateBack(bool canNavigateBack)
	{
		adw_preferences_window_set_can_navigate_back(adwPreferencesWindow, canNavigateBack);
	}

	/**
	 * Sets whether search is enabled for @self.
	 *
	 * Params:
	 *     searchEnabled = whether search is enabled
	 *
	 * Since: 1.0
	 */
	public void setSearchEnabled(bool searchEnabled)
	{
		adw_preferences_window_set_search_enabled(adwPreferencesWindow, searchEnabled);
	}

	/**
	 * Makes @page the visible page of @self.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	public void setVisiblePage(PreferencesPage page)
	{
		adw_preferences_window_set_visible_page(adwPreferencesWindow, (page is null) ? null : page.getPreferencesPageStruct());
	}

	/**
	 * Makes the page with the given name visible.
	 *
	 * Params:
	 *     name = the name of the page to make visible
	 *
	 * Since: 1.0
	 */
	public void setVisiblePageName(string name)
	{
		adw_preferences_window_set_visible_page_name(adwPreferencesWindow, Str.toStringz(name));
	}
}
