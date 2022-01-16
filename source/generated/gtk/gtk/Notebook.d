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


module gtk.Notebook;

private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.NotebookPage;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkNotebook` is a container whose children are pages switched
 * between using tabs.
 * 
 * ![An example GtkNotebook](notebook.png)
 * 
 * There are many configuration options for `GtkNotebook`. Among
 * other things, you can choose on which edge the tabs appear
 * (see [method@Gtk.Notebook.set_tab_pos]), whether, if there are
 * too many tabs to fit the notebook should be made bigger or scrolling
 * arrows added (see [method@Gtk.Notebook.set_scrollable]), and whether
 * there will be a popup menu allowing the users to switch pages.
 * (see [method@Gtk.Notebook.popup_enable]).
 * 
 * # GtkNotebook as GtkBuildable
 * 
 * The `GtkNotebook` implementation of the `GtkBuildable` interface
 * supports placing children into tabs by specifying “tab” as the
 * “type” attribute of a <child> element. Note that the content
 * of the tab must be created before the tab can be filled.
 * A tab child can be specified without specifying a <child>
 * type attribute.
 * 
 * To add a child widget in the notebooks action area, specify
 * "action-start" or “action-end” as the “type” attribute of the
 * <child> element.
 * 
 * An example of a UI definition fragment with `GtkNotebook`:
 * 
 * ```xml
 * <object class="GtkNotebook">
 * <child>
 * <object class="GtkLabel" id="notebook-content">
 * <property name="label">Content</property>
 * </object>
 * </child>
 * <child type="tab">
 * <object class="GtkLabel" id="notebook-tab">
 * <property name="label">Tab</property>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * notebook
 * ├── header.top
 * │   ├── [<action widget>]
 * │   ├── tabs
 * │   │   ├── [arrow]
 * │   │   ├── tab
 * │   │   │   ╰── <tab label>
 * ┊   ┊   ┊
 * │   │   ├── tab[.reorderable-page]
 * │   │   │   ╰── <tab label>
 * │   │   ╰── [arrow]
 * │   ╰── [<action widget>]
 * │
 * ╰── stack
 * ├── <child>
 * ┊
 * ╰── <child>
 * ```
 * 
 * `GtkNotebook` has a main CSS node with name `notebook`, a subnode
 * with name `header` and below that a subnode with name `tabs` which
 * contains one subnode per tab with name `tab`.
 * 
 * If action widgets are present, their CSS nodes are placed next
 * to the `tabs` node. If the notebook is scrollable, CSS nodes with
 * name `arrow` are placed as first and last child of the `tabs` node.
 * 
 * The main node gets the `.frame` style class when the notebook
 * has a border (see [method@Gtk.Notebook.set_show_border]).
 * 
 * The header node gets one of the style class `.top`, `.bottom`,
 * `.left` or `.right`, depending on where the tabs are placed. For
 * reorderable pages, the tab node gets the `.reorderable-page` class.
 * 
 * A `tab` node gets the `.dnd` style class while it is moved with drag-and-drop.
 * 
 * The nodes are always arranged from left-to-right, regardless of text direction.
 * 
 * # Accessibility
 * 
 * `GtkNotebook` uses the following roles:
 * 
 * - %GTK_ACCESSIBLE_ROLE_GROUP for the notebook widget
 * - %GTK_ACCESSIBLE_ROLE_TAB_LIST for the list of tabs
 * - %GTK_ACCESSIBLE_ROLE_TAB role for each tab
 * - %GTK_ACCESSIBLE_ROLE_TAB_PANEL for each page
 */
public class Notebook : Widget
{
	/** the main Gtk struct */
	protected GtkNotebook* gtkNotebook;

	/** Get the main Gtk struct */
	public GtkNotebook* getNotebookStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNotebook;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNotebook;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNotebook* gtkNotebook, bool ownedRef = false)
	{
		this.gtkNotebook = gtkNotebook;
		super(cast(GtkWidget*)gtkNotebook, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_notebook_get_type();
	}

	/**
	 * Creates a new `GtkNotebook` widget with no pages.
	 *
	 * Returns: the newly created `GtkNotebook`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_notebook_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkNotebook*) __p);
	}

	/**
	 * Appends a page to @notebook.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *
	 * Returns: the index (starting from 0) of the appended
	 *     page in the notebook, or -1 if function fails
	 */
	public int appendPage(Widget child, Widget tabLabel)
	{
		return gtk_notebook_append_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}

	/**
	 * Appends a page to @notebook, specifying the widget to use as the
	 * label in the popup menu.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *     menuLabel = the widget to use as a label for the
	 *         page-switch menu, if that is enabled. If %NULL, and @tab_label
	 *         is a `GtkLabel` or %NULL, then the menu label will be a newly
	 *         created label with the same text as @tab_label; if @tab_label
	 *         is not a `GtkLabel`, @menu_label must be specified if the
	 *         page-switch menu is to be used.
	 *
	 * Returns: the index (starting from 0) of the appended
	 *     page in the notebook, or -1 if function fails
	 */
	public int appendPageMenu(Widget child, Widget tabLabel, Widget menuLabel)
	{
		return gtk_notebook_append_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}

	/**
	 * Removes the child from the notebook.
	 *
	 * This function is very similar to [method@Gtk.Notebook.remove_page],
	 * but additionally informs the notebook that the removal
	 * is happening as part of a tab DND operation, which should
	 * not be cancelled.
	 *
	 * Params:
	 *     child = a child
	 */
	public void detachTab(Widget child)
	{
		gtk_notebook_detach_tab(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets one of the action widgets.
	 *
	 * See [method@Gtk.Notebook.set_action_widget].
	 *
	 * Params:
	 *     packType = pack type of the action widget to receive
	 *
	 * Returns: The action widget
	 *     with the given @pack_type or %NULL when this action
	 *     widget has not been set
	 */
	public Widget getActionWidget(GtkPackType packType)
	{
		auto __p = gtk_notebook_get_action_widget(gtkNotebook, packType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the page number of the current page.
	 *
	 * Returns: the index (starting from 0) of the current
	 *     page in the notebook. If the notebook has no pages,
	 *     then -1 will be returned.
	 */
	public int getCurrentPage()
	{
		return gtk_notebook_get_current_page(gtkNotebook);
	}

	/**
	 * Gets the current group name for @notebook.
	 *
	 * Returns: the group name,
	 *     or %NULL if none is set
	 */
	public string getGroupName()
	{
		return Str.toString(gtk_notebook_get_group_name(gtkNotebook));
	}

	/**
	 * Retrieves the menu label widget of the page containing @child.
	 *
	 * Params:
	 *     child = a widget contained in a page of @notebook
	 *
	 * Returns: the menu label, or %NULL
	 *     if the notebook page does not have a menu label other than
	 *     the default (the tab label).
	 */
	public Widget getMenuLabel(Widget child)
	{
		auto __p = gtk_notebook_get_menu_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the text of the menu label for the page containing
	 * @child.
	 *
	 * Params:
	 *     child = the child widget of a page of the notebook.
	 *
	 * Returns: the text of the tab label, or %NULL if
	 *     the widget does not have a menu label other than the default
	 *     menu label, or the menu label widget is not a `GtkLabel`.
	 *     The string is owned by the widget and must not be freed.
	 */
	public string getMenuLabelText(Widget child)
	{
		return Str.toString(gtk_notebook_get_menu_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct()));
	}

	/**
	 * Gets the number of pages in a notebook.
	 *
	 * Returns: the number of pages in the notebook
	 */
	public int getNPages()
	{
		return gtk_notebook_get_n_pages(gtkNotebook);
	}

	/**
	 * Returns the child widget contained in page number @page_num.
	 *
	 * Params:
	 *     pageNum = the index of a page in the notebook, or -1
	 *         to get the last page
	 *
	 * Returns: the child widget, or %NULL if @page_num
	 *     is out of bounds
	 */
	public Widget getNthPage(int pageNum)
	{
		auto __p = gtk_notebook_get_nth_page(gtkNotebook, pageNum);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the `GtkNotebookPage` for @child.
	 *
	 * Params:
	 *     child = a child of @notebook
	 *
	 * Returns: the `GtkNotebookPage` for @child
	 */
	public NotebookPage getPage(Widget child)
	{
		auto __p = gtk_notebook_get_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NotebookPage)(cast(GtkNotebookPage*) __p);
	}

	/**
	 * Returns a `GListModel` that contains the pages of the notebook.
	 *
	 * This can be used to keep an up-to-date view. The model also
	 * implements [iface@Gtk.SelectionModel] and can be used to track
	 * and modify the visible page.
	 *
	 * Returns: a
	 *     `GListModel` for the notebook's children
	 */
	public ListModelIF getPages()
	{
		auto __p = gtk_notebook_get_pages(gtkNotebook);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * Returns whether the tab label area has arrows for scrolling.
	 *
	 * Returns: %TRUE if arrows for scrolling are present
	 */
	public bool getScrollable()
	{
		return gtk_notebook_get_scrollable(gtkNotebook) != 0;
	}

	/**
	 * Returns whether a bevel will be drawn around the notebook pages.
	 *
	 * Returns: %TRUE if the bevel is drawn
	 */
	public bool getShowBorder()
	{
		return gtk_notebook_get_show_border(gtkNotebook) != 0;
	}

	/**
	 * Returns whether the tabs of the notebook are shown.
	 *
	 * Returns: %TRUE if the tabs are shown
	 */
	public bool getShowTabs()
	{
		return gtk_notebook_get_show_tabs(gtkNotebook) != 0;
	}

	/**
	 * Returns whether the tab contents can be detached from @notebook.
	 *
	 * Params:
	 *     child = a child `GtkWidget`
	 *
	 * Returns: %TRUE if the tab is detachable.
	 */
	public bool getTabDetachable(Widget child)
	{
		return gtk_notebook_get_tab_detachable(gtkNotebook, (child is null) ? null : child.getWidgetStruct()) != 0;
	}

	/**
	 * Returns the tab label widget for the page @child.
	 *
	 * %NULL is returned if @child is not in @notebook or
	 * if no tab label has specifically been set for @child.
	 *
	 * Params:
	 *     child = the page
	 *
	 * Returns: the tab label
	 */
	public Widget getTabLabel(Widget child)
	{
		auto __p = gtk_notebook_get_tab_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the text of the tab label for the page containing
	 * @child.
	 *
	 * Params:
	 *     child = a widget contained in a page of @notebook
	 *
	 * Returns: the text of the tab label, or %NULL if
	 *     the tab label idget is not a `GtkLabel`. The string is owned
	 *     by the widget and must not be freed.
	 */
	public string getTabLabelText(Widget child)
	{
		return Str.toString(gtk_notebook_get_tab_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct()));
	}

	/**
	 * Gets the edge at which the tabs are drawn.
	 *
	 * Returns: the edge at which the tabs are drawn
	 */
	public GtkPositionType getTabPos()
	{
		return gtk_notebook_get_tab_pos(gtkNotebook);
	}

	/**
	 * Gets whether the tab can be reordered via drag and drop or not.
	 *
	 * Params:
	 *     child = a child `GtkWidget`
	 *
	 * Returns: %TRUE if the tab is reorderable.
	 */
	public bool getTabReorderable(Widget child)
	{
		return gtk_notebook_get_tab_reorderable(gtkNotebook, (child is null) ? null : child.getWidgetStruct()) != 0;
	}

	/**
	 * Insert a page into @notebook at the given position.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *     position = the index (starting at 0) at which to insert the page,
	 *         or -1 to append the page after all other pages
	 *
	 * Returns: the index (starting from 0) of the inserted
	 *     page in the notebook, or -1 if function fails
	 */
	public int insertPage(Widget child, Widget tabLabel, int position)
	{
		return gtk_notebook_insert_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), position);
	}

	/**
	 * Insert a page into @notebook at the given position, specifying
	 * the widget to use as the label in the popup menu.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *     menuLabel = the widget to use as a label for the
	 *         page-switch menu, if that is enabled. If %NULL, and @tab_label
	 *         is a `GtkLabel` or %NULL, then the menu label will be a newly
	 *         created label with the same text as @tab_label; if @tab_label
	 *         is not a `GtkLabel`, @menu_label must be specified if the
	 *         page-switch menu is to be used.
	 *     position = the index (starting at 0) at which to insert the page,
	 *         or -1 to append the page after all other pages.
	 *
	 * Returns: the index (starting from 0) of the inserted
	 *     page in the notebook
	 */
	public int insertPageMenu(Widget child, Widget tabLabel, Widget menuLabel, int position)
	{
		return gtk_notebook_insert_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct(), position);
	}

	/**
	 * Switches to the next page.
	 *
	 * Nothing happens if the current page is the last page.
	 */
	public void nextPage()
	{
		gtk_notebook_next_page(gtkNotebook);
	}

	/**
	 * Finds the index of the page which contains the given child
	 * widget.
	 *
	 * Params:
	 *     child = a `GtkWidget`
	 *
	 * Returns: the index of the page containing @child, or
	 *     -1 if @child is not in the notebook
	 */
	public int pageNum(Widget child)
	{
		return gtk_notebook_page_num(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Disables the popup menu.
	 */
	public void popupDisable()
	{
		gtk_notebook_popup_disable(gtkNotebook);
	}

	/**
	 * Enables the popup menu.
	 *
	 * If the user clicks with the right mouse button on the tab labels,
	 * a menu with all the pages will be popped up.
	 */
	public void popupEnable()
	{
		gtk_notebook_popup_enable(gtkNotebook);
	}

	/**
	 * Prepends a page to @notebook.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *
	 * Returns: the index (starting from 0) of the prepended
	 *     page in the notebook, or -1 if function fails
	 */
	public int prependPage(Widget child, Widget tabLabel)
	{
		return gtk_notebook_prepend_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}

	/**
	 * Prepends a page to @notebook, specifying the widget to use as the
	 * label in the popup menu.
	 *
	 * Params:
	 *     child = the `GtkWidget` to use as the contents of the page
	 *     tabLabel = the `GtkWidget` to be used as the label
	 *         for the page, or %NULL to use the default label, “page N”
	 *     menuLabel = the widget to use as a label for the
	 *         page-switch menu, if that is enabled. If %NULL, and @tab_label
	 *         is a `GtkLabel` or %NULL, then the menu label will be a newly
	 *         created label with the same text as @tab_label; if @tab_label
	 *         is not a `GtkLabel`, @menu_label must be specified if the
	 *         page-switch menu is to be used.
	 *
	 * Returns: the index (starting from 0) of the prepended
	 *     page in the notebook, or -1 if function fails
	 */
	public int prependPageMenu(Widget child, Widget tabLabel, Widget menuLabel)
	{
		return gtk_notebook_prepend_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}

	/**
	 * Switches to the previous page.
	 *
	 * Nothing happens if the current page is the first page.
	 */
	public void prevPage()
	{
		gtk_notebook_prev_page(gtkNotebook);
	}

	/**
	 * Removes a page from the notebook given its index
	 * in the notebook.
	 *
	 * Params:
	 *     pageNum = the index of a notebook page, starting
	 *         from 0. If -1, the last page will be removed.
	 */
	public void removePage(int pageNum)
	{
		gtk_notebook_remove_page(gtkNotebook, pageNum);
	}

	/**
	 * Reorders the page containing @child, so that it appears in position
	 * @position.
	 *
	 * If @position is greater than or equal to the number of children in
	 * the list or negative, @child will be moved to the end of the list.
	 *
	 * Params:
	 *     child = the child to move
	 *     position = the new position, or -1 to move to the end
	 */
	public void reorderChild(Widget child, int position)
	{
		gtk_notebook_reorder_child(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Sets @widget as one of the action widgets.
	 *
	 * Depending on the pack type the widget will be placed before
	 * or after the tabs. You can use a `GtkBox` if you need to pack
	 * more than one widget on the same side.
	 *
	 * Params:
	 *     widget = a `GtkWidget`
	 *     packType = pack type of the action widget
	 */
	public void setActionWidget(Widget widget, GtkPackType packType)
	{
		gtk_notebook_set_action_widget(gtkNotebook, (widget is null) ? null : widget.getWidgetStruct(), packType);
	}

	/**
	 * Switches to the page number @page_num.
	 *
	 * Note that due to historical reasons, GtkNotebook refuses
	 * to switch to a page unless the child widget is visible.
	 * Therefore, it is recommended to show child widgets before
	 * adding them to a notebook.
	 *
	 * Params:
	 *     pageNum = index of the page to switch to, starting from 0.
	 *         If negative, the last page will be used. If greater
	 *         than the number of pages in the notebook, nothing
	 *         will be done.
	 */
	public void setCurrentPage(int pageNum)
	{
		gtk_notebook_set_current_page(gtkNotebook, pageNum);
	}

	/**
	 * Sets a group name for @notebook.
	 *
	 * Notebooks with the same name will be able to exchange tabs
	 * via drag and drop. A notebook with a %NULL group name will
	 * not be able to exchange tabs with any other notebook.
	 *
	 * Params:
	 *     groupName = the name of the notebook group,
	 *         or %NULL to unset it
	 */
	public void setGroupName(string groupName)
	{
		gtk_notebook_set_group_name(gtkNotebook, Str.toStringz(groupName));
	}

	/**
	 * Changes the menu label for the page containing @child.
	 *
	 * Params:
	 *     child = the child widget
	 *     menuLabel = the menu label, or %NULL for default
	 */
	public void setMenuLabel(Widget child, Widget menuLabel)
	{
		gtk_notebook_set_menu_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}

	/**
	 * Creates a new label and sets it as the menu label of @child.
	 *
	 * Params:
	 *     child = the child widget
	 *     menuText = the label text
	 */
	public void setMenuLabelText(Widget child, string menuText)
	{
		gtk_notebook_set_menu_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(menuText));
	}

	/**
	 * Sets whether the tab label area will have arrows for
	 * scrolling if there are too many tabs to fit in the area.
	 *
	 * Params:
	 *     scrollable = %TRUE if scroll arrows should be added
	 */
	public void setScrollable(bool scrollable)
	{
		gtk_notebook_set_scrollable(gtkNotebook, scrollable);
	}

	/**
	 * Sets whether a bevel will be drawn around the notebook pages.
	 *
	 * This only has a visual effect when the tabs are not shown.
	 *
	 * Params:
	 *     showBorder = %TRUE if a bevel should be drawn around the notebook
	 */
	public void setShowBorder(bool showBorder)
	{
		gtk_notebook_set_show_border(gtkNotebook, showBorder);
	}

	/**
	 * Sets whether to show the tabs for the notebook or not.
	 *
	 * Params:
	 *     showTabs = %TRUE if the tabs should be shown
	 */
	public void setShowTabs(bool showTabs)
	{
		gtk_notebook_set_show_tabs(gtkNotebook, showTabs);
	}

	/**
	 * Sets whether the tab can be detached from @notebook to another
	 * notebook or widget.
	 *
	 * Note that two notebooks must share a common group identificator
	 * (see [method@Gtk.Notebook.set_group_name]) to allow automatic tabs
	 * interchange between them.
	 *
	 * If you want a widget to interact with a notebook through DnD
	 * (i.e.: accept dragged tabs from it) it must be set as a drop
	 * destination and accept the target “GTK_NOTEBOOK_TAB”. The notebook
	 * will fill the selection with a GtkWidget** pointing to the child
	 * widget that corresponds to the dropped tab.
	 *
	 * Note that you should use [method@Gtk.Notebook.detach_tab] instead
	 * of [method@Gtk.Notebook.remove_page] if you want to remove the tab
	 * from the source notebook as part of accepting a drop. Otherwise,
	 * the source notebook will think that the dragged tab was removed
	 * from underneath the ongoing drag operation, and will initiate a
	 * drag cancel animation.
	 *
	 * ```c
	 * static void
	 * on_drag_data_received (GtkWidget        *widget,
	 * GdkDrop          *drop,
	 * GtkSelectionData *data,
	 * guint             time,
	 * gpointer          user_data)
	 * {
	 * GtkDrag *drag;
	 * GtkWidget *notebook;
	 * GtkWidget **child;
	 *
	 * drag = gtk_drop_get_drag (drop);
	 * notebook = g_object_get_data (drag, "gtk-notebook-drag-origin");
	 * child = (void*) gtk_selection_data_get_data (data);
	 *
	 * // process_widget (*child);
	 *
	 * gtk_notebook_detach_tab (GTK_NOTEBOOK (notebook), *child);
	 * }
	 * ```
	 *
	 * If you want a notebook to accept drags from other widgets,
	 * you will have to set your own DnD code to do it.
	 *
	 * Params:
	 *     child = a child `GtkWidget`
	 *     detachable = whether the tab is detachable or not
	 */
	public void setTabDetachable(Widget child, bool detachable)
	{
		gtk_notebook_set_tab_detachable(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), detachable);
	}

	/**
	 * Changes the tab label for @child.
	 *
	 * If %NULL is specified for @tab_label, then the page will
	 * have the label “page N”.
	 *
	 * Params:
	 *     child = the page
	 *     tabLabel = the tab label widget to use, or %NULL
	 *         for default tab label
	 */
	public void setTabLabel(Widget child, Widget tabLabel)
	{
		gtk_notebook_set_tab_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}

	/**
	 * Creates a new label and sets it as the tab label for the page
	 * containing @child.
	 *
	 * Params:
	 *     child = the page
	 *     tabText = the label text
	 */
	public void setTabLabelText(Widget child, string tabText)
	{
		gtk_notebook_set_tab_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(tabText));
	}

	/**
	 * Sets the edge at which the tabs are drawn.
	 *
	 * Params:
	 *     pos = the edge to draw the tabs at
	 */
	public void setTabPos(GtkPositionType pos)
	{
		gtk_notebook_set_tab_pos(gtkNotebook, pos);
	}

	/**
	 * Sets whether the notebook tab can be reordered
	 * via drag and drop or not.
	 *
	 * Params:
	 *     child = a child `GtkWidget`
	 *     reorderable = whether the tab is reorderable or not
	 */
	public void setTabReorderable(Widget child, bool reorderable)
	{
		gtk_notebook_set_tab_reorderable(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), reorderable);
	}

	/** */
	gulong addOnChangeCurrentPage(bool delegate(int, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-current-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::create-window signal is emitted when a detachable
	 * tab is dropped on the root window.
	 *
	 * A handler for this signal can create a window containing
	 * a notebook where the tab will be attached. It is also
	 * responsible for moving/resizing the window and adding the
	 * necessary properties to the notebook (e.g. the
	 * `GtkNotebook`:group-name ).
	 *
	 * Params:
	 *     page = the tab of @notebook that is being detached
	 *
	 * Returns: a `GtkNotebook` that
	 *     @page should be added to
	 */
	gulong addOnCreateWindow(Notebook delegate(Widget, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-window", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnFocusTab(bool delegate(GtkNotebookTab, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-tab", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnMoveFocusOut(void delegate(GtkDirectionType, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-focus-out", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * the ::page-added signal is emitted in the notebook
	 * right after a page is added to the notebook.
	 *
	 * Params:
	 *     child = the child `GtkWidget` affected
	 *     pageNum = the new page number for @child
	 */
	gulong addOnPageAdded(void delegate(Widget, uint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * the ::page-removed signal is emitted in the notebook
	 * right after a page is removed from the notebook.
	 *
	 * Params:
	 *     child = the child `GtkWidget` affected
	 *     pageNum = the @child page number
	 */
	gulong addOnPageRemoved(void delegate(Widget, uint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * the ::page-reordered signal is emitted in the notebook
	 * right after a page has been reordered.
	 *
	 * Params:
	 *     child = the child `GtkWidget` affected
	 *     pageNum = the new page number for @child
	 */
	gulong addOnPageReordered(void delegate(Widget, uint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-reordered", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnReorderTab(bool delegate(GtkDirectionType, bool, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "reorder-tab", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelectPage(bool delegate(bool, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user or a function changes the current page.
	 *
	 * Params:
	 *     page = the new current page
	 *     pageNum = the index of the page
	 */
	gulong addOnSwitchPage(void delegate(Widget, uint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "switch-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
