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


module adw.TabView;

private import adw.TabPage;
private import adw.c.functions;
public  import adw.c.types;
private import gio.IconIF;
private import gio.MenuModel;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.SelectionModelIF;
private import gtk.Widget;
private import std.algorithm;


/**
 * A dynamic tabbed container.
 * 
 * `AdwTabView` is a container which shows one child at a time. While it
 * provides keyboard shortcuts for switching between pages, it does not provide
 * a visible tab bar and relies on external widgets for that, such as
 * [class@TabBar].
 * 
 * `AdwTabView` maintains a [class@TabPage] object for each page, which holds
 * additional per-page properties. You can obtain the `AdwTabPage` for a page
 * with [method@TabView.get_page], and as the return value for
 * [method@TabView.append] and other functions for adding children.
 * 
 * `AdwTabView` only aims to be useful for dynamic tabs in multi-window
 * document-based applications, such as web browsers, file managers, text
 * editors or terminals. It does not aim to replace [class@Gtk.Notebook] for use
 * cases such as tabbed dialogs.
 * 
 * As such, it does not support disabling page reordering or detaching.
 * 
 * `AdwTabView` adds the following shortcuts in the managed scope:
 * 
 * * <kbd>Ctrl</kbd>+<kbd>Page Up</kbd> - switch to the previous page
 * * <kbd>Ctrl</kbd>+<kbd>Page Down</kbd> - switch to the next page
 * * <kbd>Ctrl</kbd>+<kbd>Home</kbd> - switch to the first page
 * * <kbd>Ctrl</kbd>+<kbd>End</kbd> - switch to the last page
 * * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Page Up</kbd> - move the current page
 * backward
 * * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Page Down</kbd> - move the current
 * page forward
 * * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Home</kbd> - move the current page at
 * the start
 * * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>End</kbd> - move the current page at
 * the end
 * * <kbd>Ctrl</kbd>+<kbd>Tab</kbd> - switch to the next page, with looping
 * * <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Tab</kbd> - switch to the previous
 * page, with looping
 * * <kbd>Alt</kbd>+<kbd>1</kbd>⋯<kbd>9</kbd> - switch to pages 1-9
 * * <kbd>Alt</kbd>+<kbd>0</kbd> - switch to page 10
 * 
 * ## CSS nodes
 * 
 * `AdwTabView` has a main CSS node with the name `tabview`.
 *
 * Since: 1.0
 */
public class TabView : Widget
{
	/** the main Gtk struct */
	protected AdwTabView* adwTabView;

	/** Get the main Gtk struct */
	public AdwTabView* getTabViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwTabView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwTabView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwTabView* adwTabView, bool ownedRef = false)
	{
		this.adwTabView = adwTabView;
		super(cast(GtkWidget*)adwTabView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_tab_view_get_type();
	}

	/**
	 * Creates a new `AdwTabView`.
	 *
	 * Returns: the newly created `AdwTabView`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_tab_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwTabView*) __p);
	}

	/**
	 * Adds @child to @self with @parent as the parent.
	 *
	 * This function can be used to automatically position new pages, and to select
	 * the correct page when this page is closed while being selected (see
	 * [method@TabView.close_page]).
	 *
	 * If @parent is `NULL`, this function is equivalent to [method@TabView.append].
	 *
	 * Params:
	 *     child = a widget to add
	 *     parent = a parent page for @child
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage addPage(Widget child, TabPage parent)
	{
		auto __p = adw_tab_view_add_page(adwTabView, (child is null) ? null : child.getWidgetStruct(), (parent is null) ? null : parent.getTabPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts @child as the last non-pinned page.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage append(Widget child)
	{
		auto __p = adw_tab_view_append(adwTabView, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts @child as the last pinned page.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage appendPinned(Widget child)
	{
		auto __p = adw_tab_view_append_pinned(adwTabView, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Requests to close all pages other than @page.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	public void closeOtherPages(TabPage page)
	{
		adw_tab_view_close_other_pages(adwTabView, (page is null) ? null : page.getTabPageStruct());
	}

	/**
	 * Requests to close @page.
	 *
	 * Calling this function will result in the [signal@TabView::close-page] signal
	 * being emitted for @page. Closing the page can then be confirmed or
	 * denied via [method@TabView.close_page_finish].
	 *
	 * If the page is waiting for a [method@TabView.close_page_finish] call, this
	 * function will do nothing.
	 *
	 * The default handler for [signal@TabView::close-page] will immediately confirm
	 * closing the page if it's non-pinned, or reject it if it's pinned. This
	 * behavior can be changed by registering your own handler for that signal.
	 *
	 * If @page was selected, another page will be selected instead:
	 *
	 * If the [property@TabPage:parent] value is `NULL`, the next page will be
	 * selected when possible, or if the page was already last, the previous page
	 * will be selected instead.
	 *
	 * If it's not `NULL`, the previous page will be selected if it's a descendant
	 * (possibly indirect) of the parent. If both the previous page and the parent
	 * are pinned, the parent will be selected instead.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	public void closePage(TabPage page)
	{
		adw_tab_view_close_page(adwTabView, (page is null) ? null : page.getTabPageStruct());
	}

	/**
	 * Completes a [method@TabView.close_page] call for @page.
	 *
	 * If @confirm is `TRUE`, @page will be closed. If it's `FALSE`, it will be
	 * reverted to its previous state and [method@TabView.close_page] can be called
	 * for it again.
	 *
	 * This function should not be called unless a custom handler for
	 * [signal@TabView::close-page] is used.
	 *
	 * Params:
	 *     page = a page of @self
	 *     confirm = whether to confirm or deny closing @page
	 *
	 * Since: 1.0
	 */
	public void closePageFinish(TabPage page, bool confirm)
	{
		adw_tab_view_close_page_finish(adwTabView, (page is null) ? null : page.getTabPageStruct(), confirm);
	}

	/**
	 * Requests to close all pages after @page.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	public void closePagesAfter(TabPage page)
	{
		adw_tab_view_close_pages_after(adwTabView, (page is null) ? null : page.getTabPageStruct());
	}

	/**
	 * Requests to close all pages before @page.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	public void closePagesBefore(TabPage page)
	{
		adw_tab_view_close_pages_before(adwTabView, (page is null) ? null : page.getTabPageStruct());
	}

	/**
	 * Gets the default icon of @self.
	 *
	 * Returns: the default icon of @self.
	 *
	 * Since: 1.0
	 */
	public IconIF getDefaultIcon()
	{
		auto __p = adw_tab_view_get_default_icon(adwTabView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Whether a page is being transferred.
	 *
	 * Returns: whether a page is being transferred
	 *
	 * Since: 1.0
	 */
	public bool getIsTransferringPage()
	{
		return adw_tab_view_get_is_transferring_page(adwTabView) != 0;
	}

	/**
	 * Gets the tab context menu model for @self.
	 *
	 * Returns: the tab context menu model for @self
	 *
	 * Since: 1.0
	 */
	public MenuModel getMenuModel()
	{
		auto __p = adw_tab_view_get_menu_model(adwTabView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Gets the number of pages in @self.
	 *
	 * Returns: the number of pages in @self
	 *
	 * Since: 1.0
	 */
	public int getNPages()
	{
		return adw_tab_view_get_n_pages(adwTabView);
	}

	/**
	 * Gets the number of pinned pages in @self.
	 *
	 * Returns: the number of pinned pages in @self
	 *
	 * Since: 1.0
	 */
	public int getNPinnedPages()
	{
		return adw_tab_view_get_n_pinned_pages(adwTabView);
	}

	/**
	 * Gets the [class@TabPage] representing the child at @position.
	 *
	 * Params:
	 *     position = the index of the page in @self, starting from 0
	 *
	 * Returns: the page object at @position
	 *
	 * Since: 1.0
	 */
	public TabPage getNthPage(int position)
	{
		auto __p = adw_tab_view_get_nth_page(adwTabView, position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Gets the [class@TabPage] object representing @child.
	 *
	 * Params:
	 *     child = a child in @self
	 *
	 * Returns: the page object for @child
	 *
	 * Since: 1.0
	 */
	public TabPage getPage(Widget child)
	{
		auto __p = adw_tab_view_get_page(adwTabView, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Finds the position of @page in @self, starting from 0.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Returns: the position of @page in @self
	 *
	 * Since: 1.0
	 */
	public int getPagePosition(TabPage page)
	{
		return adw_tab_view_get_page_position(adwTabView, (page is null) ? null : page.getTabPageStruct());
	}

	/**
	 * Returns a [iface@Gio.ListModel] that contains the pages of @self.
	 *
	 * This can be used to keep an up-to-date view. The model also implements
	 * [iface@Gtk.SelectionModel] and can be used to track and change the selected
	 * page.
	 *
	 * Returns: a `GtkSelectionModel` for the pages of @self
	 *
	 * Since: 1.0
	 */
	public SelectionModelIF getPages()
	{
		auto __p = adw_tab_view_get_pages(adwTabView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p, true);
	}

	/**
	 * Gets the currently selected page in @self.
	 *
	 * Returns: the selected page
	 *
	 * Since: 1.0
	 */
	public TabPage getSelectedPage()
	{
		auto __p = adw_tab_view_get_selected_page(adwTabView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts a non-pinned page at @position.
	 *
	 * It's an error to try to insert a page before a pinned page, in that case
	 * [method@TabView.insert_pinned] should be used instead.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to add @child at, starting from 0
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage insert(Widget child, int position)
	{
		auto __p = adw_tab_view_insert(adwTabView, (child is null) ? null : child.getWidgetStruct(), position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts a pinned page at @position.
	 *
	 * It's an error to try to insert a pinned page after a non-pinned page, in
	 * that case [method@TabView.insert] should be used instead.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to add @child at, starting from 0
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage insertPinned(Widget child, int position)
	{
		auto __p = adw_tab_view_insert_pinned(adwTabView, (child is null) ? null : child.getWidgetStruct(), position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts @child as the first non-pinned page.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage prepend(Widget child)
	{
		auto __p = adw_tab_view_prepend(adwTabView, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Inserts @child as the first pinned page.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Returns: the page object representing @child
	 *
	 * Since: 1.0
	 */
	public TabPage prependPinned(Widget child)
	{
		auto __p = adw_tab_view_prepend_pinned(adwTabView, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Reorders @page to before its previous page if possible.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Returns: whether @page was moved
	 *
	 * Since: 1.0
	 */
	public bool reorderBackward(TabPage page)
	{
		return adw_tab_view_reorder_backward(adwTabView, (page is null) ? null : page.getTabPageStruct()) != 0;
	}

	/**
	 * Reorders @page to the first possible position.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Returns: whether @page was moved
	 *
	 * Since: 1.0
	 */
	public bool reorderFirst(TabPage page)
	{
		return adw_tab_view_reorder_first(adwTabView, (page is null) ? null : page.getTabPageStruct()) != 0;
	}

	/**
	 * Reorders @page to after its next page if possible.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Returns: whether @page was moved
	 *
	 * Since: 1.0
	 */
	public bool reorderForward(TabPage page)
	{
		return adw_tab_view_reorder_forward(adwTabView, (page is null) ? null : page.getTabPageStruct()) != 0;
	}

	/**
	 * Reorders @page to the last possible position.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Returns: whether @page was moved
	 *
	 * Since: 1.0
	 */
	public bool reorderLast(TabPage page)
	{
		return adw_tab_view_reorder_last(adwTabView, (page is null) ? null : page.getTabPageStruct()) != 0;
	}

	/**
	 * Reorders @page to @position.
	 *
	 * It's a programmer error to try to reorder a pinned page after a non-pinned
	 * one, or a non-pinned page before a pinned one.
	 *
	 * Params:
	 *     page = a page of @self
	 *     position = the position to insert the page at, starting at 0
	 *
	 * Returns: whether @page was moved
	 *
	 * Since: 1.0
	 */
	public bool reorderPage(TabPage page, int position)
	{
		return adw_tab_view_reorder_page(adwTabView, (page is null) ? null : page.getTabPageStruct(), position) != 0;
	}

	/**
	 * Selects the page after the currently selected page.
	 *
	 * If the last page was already selected, this function does nothing.
	 *
	 * Returns: whether the selected page was changed
	 *
	 * Since: 1.0
	 */
	public bool selectNextPage()
	{
		return adw_tab_view_select_next_page(adwTabView) != 0;
	}

	/**
	 * Selects the page before the currently selected page.
	 *
	 * If the first page was already selected, this function does nothing.
	 *
	 * Returns: whether the selected page was changed
	 *
	 * Since: 1.0
	 */
	public bool selectPreviousPage()
	{
		return adw_tab_view_select_previous_page(adwTabView) != 0;
	}

	/**
	 * Sets the default page icon for @self.
	 *
	 * Params:
	 *     defaultIcon = the default icon
	 *
	 * Since: 1.0
	 */
	public void setDefaultIcon(IconIF defaultIcon)
	{
		adw_tab_view_set_default_icon(adwTabView, (defaultIcon is null) ? null : defaultIcon.getIconStruct());
	}

	/**
	 * Sets the tab context menu model for @self.
	 *
	 * Params:
	 *     menuModel = a menu model
	 *
	 * Since: 1.0
	 */
	public void setMenuModel(MenuModel menuModel)
	{
		adw_tab_view_set_menu_model(adwTabView, (menuModel is null) ? null : menuModel.getMenuModelStruct());
	}

	/**
	 * Pins or unpins @page.
	 *
	 * Pinned pages are guaranteed to be placed before all non-pinned pages; at any
	 * given moment the first [property@TabView:n-pinned-pages] pages in @self are
	 * guaranteed to be pinned.
	 *
	 * When a page is pinned or unpinned, it's automatically reordered: pinning a
	 * page moves it after other pinned pages; unpinning a page moves it before
	 * other non-pinned pages.
	 *
	 * Pinned pages can still be reordered between each other.
	 *
	 * [class@TabBar] will display pinned pages in a compact form, never showing the
	 * title or close button, and only showing a single icon, selected in the
	 * following order:
	 *
	 * 1. [property@TabPage:indicator-icon]
	 * 2. A spinner if [property@TabPage:loading] is `TRUE`
	 * 3. [property@TabPage:icon]
	 * 4. [property@TabView:default-icon]
	 *
	 * Pinned pages cannot be closed by default, see [signal@TabView::close-page]
	 * for how to override that behavior.
	 *
	 * Changes the value of the [property@TabPage:pinned] property.
	 *
	 * Params:
	 *     page = a page of @self
	 *     pinned = whether @page should be pinned
	 *
	 * Since: 1.0
	 */
	public void setPagePinned(TabPage page, bool pinned)
	{
		adw_tab_view_set_page_pinned(adwTabView, (page is null) ? null : page.getTabPageStruct(), pinned);
	}

	/**
	 * Sets the currently selected page in @self.
	 *
	 * Params:
	 *     selectedPage = a page in @self
	 *
	 * Since: 1.0
	 */
	public void setSelectedPage(TabPage selectedPage)
	{
		adw_tab_view_set_selected_page(adwTabView, (selectedPage is null) ? null : selectedPage.getTabPageStruct());
	}

	/**
	 * Transfers @page from @self to @other_view.
	 *
	 * The @page object will be reused.
	 *
	 * It's a programmer error to try to insert a pinned page after a non-pinned
	 * one, or a non-pinned page before a pinned one.
	 *
	 * Params:
	 *     page = a page of @self
	 *     otherView = the tab view to transfer the page to
	 *     position = the position to insert the page at, starting at 0
	 *
	 * Since: 1.0
	 */
	public void transferPage(TabPage page, TabView otherView, int position)
	{
		adw_tab_view_transfer_page(adwTabView, (page is null) ? null : page.getTabPageStruct(), (otherView is null) ? null : otherView.getTabViewStruct(), position);
	}

	/**
	 * Emitted after [method@TabView.close_page] has been called for @page.
	 *
	 * The handler is expected to call [method@TabView.close_page_finish] to
	 * confirm or reject the closing.
	 *
	 * The default handler will immediately confirm closing for non-pinned pages,
	 * or reject it for pinned pages, equivalent to the following example:
	 *
	 * ```c
	 * static gboolean
	 * close_page_cb (AdwTabView *view,
	 * AdwTabPage *page,
	 * gpointer    user_data)
	 * {
	 * adw_tab_view_close_page_finish (view, page, !adw_tab_page_get_pinned (page));
	 *
	 * return GDK_EVENT_STOP;
	 * }
	 * ```
	 *
	 * The [method@TabView.close_page_finish] call doesn't have to happen inside
	 * the handler, so can be used to do asynchronous checks before confirming the
	 * closing.
	 *
	 * A typical reason to connect to this signal is to show a confirmation dialog
	 * for closing a tab.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	gulong addOnClosePage(bool delegate(TabPage, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a tab should be transferred into a new window.
	 *
	 * This can happen after a tab has been dropped on desktop.
	 *
	 * The signal handler is expected to create a new window, position it as
	 * needed and return its `AdwTabView` that the page will be transferred into.
	 *
	 * Returns: the `AdwTabView` from the new window
	 *
	 * Since: 1.0
	 */
	gulong addOnCreateWindow(TabView delegate(TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-window", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after the indicator icon on @page has been activated.
	 *
	 * See [property@TabPage:indicator-icon] and
	 * [property@TabPage:indicator-activatable].
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	gulong addOnIndicatorActivated(void delegate(TabPage, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "indicator-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a page has been created or transferred to @self.
	 *
	 * A typical reason to connect to this signal would be to connect to page
	 * signals for things such as updating window title.
	 *
	 * Params:
	 *     page = a page of @self
	 *     position = the position of the page, starting from 0
	 *
	 * Since: 1.0
	 */
	gulong addOnPageAttached(void delegate(TabPage, int, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-attached", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a page has been removed or transferred to another view.
	 *
	 * A typical reason to connect to this signal would be to disconnect signal
	 * handlers connected in the [signal@TabView::page-attached] handler.
	 *
	 * It is important not to try and destroy the page child in the handler of
	 * this function as the child might merely be moved to another window; use
	 * child dispose handler for that or do it in sync with your
	 * [method@TabView.close_page_finish] calls.
	 *
	 * Params:
	 *     page = a page of @self
	 *     position = the position of the removed page, starting from 0
	 *
	 * Since: 1.0
	 */
	gulong addOnPageDetached(void delegate(TabPage, int, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-detached", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after @page has been reordered to @position.
	 *
	 * Params:
	 *     page = a page of @self
	 *     position = the position @page was moved to, starting at 0
	 *
	 * Since: 1.0
	 */
	gulong addOnPageReordered(void delegate(TabPage, int, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-reordered", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a context menu is opened or closed for @page.
	 *
	 * If the menu has been closed, @page will be set to `NULL`.
	 *
	 * It can be used to set up menu actions before showing the menu, for example
	 * disable actions not applicable to @page.
	 *
	 * Params:
	 *     page = a page of @self
	 *
	 * Since: 1.0
	 */
	gulong addOnSetupMenu(void delegate(TabPage, TabView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "setup-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
