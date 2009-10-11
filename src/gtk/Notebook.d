/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkNotebook.html
 * outPack = gtk
 * outFile = Notebook
 * strct   = GtkNotebook
 * realStrct=
 * ctorStrct=
 * clss    = Notebook
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_notebook_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Label
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Notebook;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Label;
private import gtk.Widget;



private import gtk.Container;

/**
 * Description
 * The GtkNotebook widget is a GtkContainer whose children are pages that
 * can be switched between using tab labels along one edge.
 * There are many configuration options for GtkNotebook. Among other
 * things, you can choose on which edge the tabs appear
 * (see gtk_notebook_set_tab_pos()), whether, if there are too many
 * tabs to fit the notebook should be made bigger or scrolling
 * arrows added (see gtk_notebook_set_scrollable), and whether there
 * will be a popup menu allowing the users to switch pages.
 * (see gtk_notebook_popup_enable(), gtk_notebook_popup_disable())
 * GtkNotebook as GtkBuildable
 * The GtkNoteboopk implementation of the GtkBuildable interface
 * supports placing children into tabs by specifying "tab" as the
 * "type" attribute of a <child> element. Note that the content
 * of the tab must be created before the tab can be filled.
 * A tab child can be specified without specifying a <child>
 * type attribute.
 * Example 43. A UI definition fragment with GtkNotebook
 * <object class="GtkNotebook">
 *  <child>
 *  <object class="GtkLabel" id="notebook-content">
 *  <property name="label">Content</property>
 *  </object>
 *  </child>
 *  <child type="tab">
 *  <object class="GtkLabel" id="notebook-tab">
 *  <property name="label">Tab</property>
 *  </object>
 *  </child>
 * </object>
 */
public class Notebook : Container
{
	
	/** the main Gtk struct */
	protected GtkNotebook* gtkNotebook;
	
	
	public GtkNotebook* getNotebookStruct()
	{
		return gtkNotebook;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNotebook;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkNotebook* gtkNotebook)
	{
		if(gtkNotebook is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkNotebook);
		if( ptr !is null )
		{
			this = cast(Notebook)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkNotebook);
		this.gtkNotebook = gtkNotebook;
	}
	
	/** The GtkNotebookTab is not documented */
	public enum GtkNotebookTab
	{
		GTK_NOTEBOOK_TAB_FIRST,
		GTK_NOTEBOOK_TAB_LAST
	}
	alias GtkNotebookTab NotebookTab;
	
	/**
	 * Append a page with a widget and a text for a label
	 */
	public int appendPage(Widget child, string tabLabel)
	{
		return appendPage(child, new Label(tabLabel));
	}
	
	/** */
	void setCurrentPage(Widget child)
	{
		gtk_notebook_set_current_page(gtkNotebook,gtk_notebook_page_num(gtkNotebook, child.getWidgetStruct()));
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	bool delegate(gint, Notebook)[] onChangeCurrentPageListeners;
	/**
	 */
	void addOnChangeCurrentPage(bool delegate(gint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("change-current-page" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-current-page",
			cast(GCallback)&callBackChangeCurrentPage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["change-current-page"] = 1;
		}
		onChangeCurrentPageListeners ~= dlg;
	}
	extern(C) static gboolean callBackChangeCurrentPage(GtkNotebook* notebookStruct, gint arg1, Notebook notebook)
	{
		foreach ( bool delegate(gint, Notebook) dlg ; notebook.onChangeCurrentPageListeners )
		{
			if ( dlg(arg1, notebook) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	GtkNotebook* delegate(Widget, gint, gint, Notebook)[] onCreateWindowListeners;
	/**
	 * The ::create-window signal is emitted when a detachable
	 * tab is dropped on the root window.
	 * A handler for this signal can create a window containing
	 * a notebook where the tab will be attached. It is also
	 * responsible for moving/resizing the window and adding the
	 * necessary properties to the notebook (e.g. the
	 * "group-id" ).
	 * The default handler uses the global window creation hook,
	 * if one has been set with gtk_notebook_set_window_creation_hook().
	 * Since 2.12
	 */
	void addOnCreateWindow(GtkNotebook* delegate(Widget, gint, gint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("create-window" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"create-window",
			cast(GCallback)&callBackCreateWindow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["create-window"] = 1;
		}
		onCreateWindowListeners ~= dlg;
	}
	extern(C) static void callBackCreateWindow(GtkNotebook* notebookStruct, GtkWidget* page, gint x, gint y, Notebook notebook)
	{
		foreach ( GtkNotebook* delegate(Widget, gint, gint, Notebook) dlg ; notebook.onCreateWindowListeners )
		{
			dlg(new Widget(page), x, y, notebook);
		}
	}
	
	bool delegate(GtkNotebookTab, Notebook)[] onFocusTabListeners;
	/**
	 */
	void addOnFocusTab(bool delegate(GtkNotebookTab, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-tab" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-tab",
			cast(GCallback)&callBackFocusTab,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-tab"] = 1;
		}
		onFocusTabListeners ~= dlg;
	}
	extern(C) static gboolean callBackFocusTab(GtkNotebook* notebookStruct, GtkNotebookTab arg1, Notebook notebook)
	{
		foreach ( bool delegate(GtkNotebookTab, Notebook) dlg ; notebook.onFocusTabListeners )
		{
			if ( dlg(arg1, notebook) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkDirectionType, Notebook)[] onMoveFocusOutListeners;
	/**
	 */
	void addOnMoveFocusOut(void delegate(GtkDirectionType, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-focus-out" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus-out",
			cast(GCallback)&callBackMoveFocusOut,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-focus-out"] = 1;
		}
		onMoveFocusOutListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocusOut(GtkNotebook* notebookStruct, GtkDirectionType arg1, Notebook notebook)
	{
		foreach ( void delegate(GtkDirectionType, Notebook) dlg ; notebook.onMoveFocusOutListeners )
		{
			dlg(arg1, notebook);
		}
	}
	
	void delegate(Widget, guint, Notebook)[] onPageAddedListeners;
	/**
	 * the ::page-added signal is emitted in the notebook
	 * right after a page is added to the notebook.
	 * Since 2.10
	 */
	void addOnPageAdded(void delegate(Widget, guint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("page-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"page-added",
			cast(GCallback)&callBackPageAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["page-added"] = 1;
		}
		onPageAddedListeners ~= dlg;
	}
	extern(C) static void callBackPageAdded(GtkNotebook* notebookStruct, GtkWidget* child, guint pageNum, Notebook notebook)
	{
		foreach ( void delegate(Widget, guint, Notebook) dlg ; notebook.onPageAddedListeners )
		{
			dlg(new Widget(child), pageNum, notebook);
		}
	}
	
	void delegate(Widget, guint, Notebook)[] onPageRemovedListeners;
	/**
	 * the ::page-removed signal is emitted in the notebook
	 * right after a page is removed from the notebook.
	 * Since 2.10
	 */
	void addOnPageRemoved(void delegate(Widget, guint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("page-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"page-removed",
			cast(GCallback)&callBackPageRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["page-removed"] = 1;
		}
		onPageRemovedListeners ~= dlg;
	}
	extern(C) static void callBackPageRemoved(GtkNotebook* notebookStruct, GtkWidget* child, guint pageNum, Notebook notebook)
	{
		foreach ( void delegate(Widget, guint, Notebook) dlg ; notebook.onPageRemovedListeners )
		{
			dlg(new Widget(child), pageNum, notebook);
		}
	}
	
	void delegate(Widget, guint, Notebook)[] onPageReorderedListeners;
	/**
	 * the ::page-reordered signal is emitted in the notebook
	 * right after a page has been reordered.
	 * Since 2.10
	 */
	void addOnPageReordered(void delegate(Widget, guint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("page-reordered" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"page-reordered",
			cast(GCallback)&callBackPageReordered,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["page-reordered"] = 1;
		}
		onPageReorderedListeners ~= dlg;
	}
	extern(C) static void callBackPageReordered(GtkNotebook* notebookStruct, GtkWidget* child, guint pageNum, Notebook notebook)
	{
		foreach ( void delegate(Widget, guint, Notebook) dlg ; notebook.onPageReorderedListeners )
		{
			dlg(new Widget(child), pageNum, notebook);
		}
	}
	
	bool delegate(GtkDirectionType, gboolean, Notebook)[] onReorderTabListeners;
	/**
	 */
	void addOnReorderTab(bool delegate(GtkDirectionType, gboolean, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("reorder-tab" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"reorder-tab",
			cast(GCallback)&callBackReorderTab,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["reorder-tab"] = 1;
		}
		onReorderTabListeners ~= dlg;
	}
	extern(C) static gboolean callBackReorderTab(GtkNotebook* notebookStruct, GtkDirectionType arg1, gboolean arg2, Notebook notebook)
	{
		foreach ( bool delegate(GtkDirectionType, gboolean, Notebook) dlg ; notebook.onReorderTabListeners )
		{
			if ( dlg(arg1, arg2, notebook) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gboolean, Notebook)[] onSelectPageListeners;
	/**
	 */
	void addOnSelectPage(bool delegate(gboolean, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-page" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-page",
			cast(GCallback)&callBackSelectPage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-page"] = 1;
		}
		onSelectPageListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectPage(GtkNotebook* notebookStruct, gboolean arg1, Notebook notebook)
	{
		foreach ( bool delegate(gboolean, Notebook) dlg ; notebook.onSelectPageListeners )
		{
			if ( dlg(arg1, notebook) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkNotebookPage*, guint, Notebook)[] onSwitchPageListeners;
	/**
	 * Emitted when the user or a function changes the current page.
	 * See Also
	 * GtkContainer
	 * For functions that apply to every GtkContainer
	 */
	void addOnSwitchPage(void delegate(GtkNotebookPage*, guint, Notebook) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("switch-page" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"switch-page",
			cast(GCallback)&callBackSwitchPage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["switch-page"] = 1;
		}
		onSwitchPageListeners ~= dlg;
	}
	extern(C) static void callBackSwitchPage(GtkNotebook* notebookStruct, GtkNotebookPage* page, guint pageNum, Notebook notebook)
	{
		foreach ( void delegate(GtkNotebookPage*, guint, Notebook) dlg ; notebook.onSwitchPageListeners )
		{
			dlg(page, pageNum, notebook);
		}
	}
	
	
	/**
	 * Creates a new GtkNotebook widget with no pages.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_notebook_new (void);
		auto p = gtk_notebook_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_notebook_new()");
		}
		this(cast(GtkNotebook*) p);
	}
	
	/**
	 * Appends a page to notebook.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * Returns: the index (starting from 0) of the appendedpage in the notebook, or -1 if function fails
	 */
	public int appendPage(Widget child, Widget tabLabel)
	{
		// gint gtk_notebook_append_page (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label);
		return gtk_notebook_append_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}
	
	/**
	 * Appends a page to notebook, specifying the widget to use as the
	 * label in the popup menu.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * menuLabel =  the widget to use as a label for the page-switch
	 *  menu, if that is enabled. If NULL, and tab_label
	 *  is a GtkLabel or NULL, then the menu label will be
	 *  a newly created label with the same text as tab_label;
	 *  If tab_label is not a GtkLabel, menu_label must be
	 *  specified if the page-switch menu is to be used.
	 * Returns: the index (starting from 0) of the appendedpage in the notebook, or -1 if function fails
	 */
	public int appendPageMenu(Widget child, Widget tabLabel, Widget menuLabel)
	{
		// gint gtk_notebook_append_page_menu (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label,  GtkWidget *menu_label);
		return gtk_notebook_append_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}
	
	/**
	 * Prepends a page to notebook.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * Returns: the index (starting from 0) of the prependedpage in the notebook, or -1 if function fails
	 */
	public int prependPage(Widget child, Widget tabLabel)
	{
		// gint gtk_notebook_prepend_page (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label);
		return gtk_notebook_prepend_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}
	
	/**
	 * Prepends a page to notebook, specifying the widget to use as the
	 * label in the popup menu.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * menuLabel =  the widget to use as a label for the page-switch
	 *  menu, if that is enabled. If NULL, and tab_label
	 *  is a GtkLabel or NULL, then the menu label will be
	 *  a newly created label with the same text as tab_label;
	 *  If tab_label is not a GtkLabel, menu_label must be
	 *  specified if the page-switch menu is to be used.
	 * Returns: the index (starting from 0) of the prependedpage in the notebook, or -1 if function fails
	 */
	public int prependPageMenu(Widget child, Widget tabLabel, Widget menuLabel)
	{
		// gint gtk_notebook_prepend_page_menu (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label,  GtkWidget *menu_label);
		return gtk_notebook_prepend_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}
	
	/**
	 * Insert a page into notebook at the given position.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * position =  the index (starting at 0) at which to insert the page,
	 *  or -1 to append the page after all other pages.
	 * Returns: the index (starting from 0) of the insertedpage in the notebook, or -1 if function fails
	 */
	public int insertPage(Widget child, Widget tabLabel, int position)
	{
		// gint gtk_notebook_insert_page (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label,  gint position);
		return gtk_notebook_insert_page(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), position);
	}
	
	/**
	 * Insert a page into notebook at the given position, specifying
	 * the widget to use as the label in the popup menu.
	 * Params:
	 * child =  the GtkWidget to use as the contents of the page.
	 * tabLabel =  the GtkWidget to be used as the label for the page,
	 *  or NULL to use the default label, 'page N'.
	 * menuLabel =  the widget to use as a label for the page-switch
	 *  menu, if that is enabled. If NULL, and tab_label
	 *  is a GtkLabel or NULL, then the menu label will be
	 *  a newly created label with the same text as tab_label;
	 *  If tab_label is not a GtkLabel, menu_label must be
	 *  specified if the page-switch menu is to be used.
	 * position =  the index (starting at 0) at which to insert the page,
	 *  or -1 to append the page after all other pages.
	 * Returns: the index (starting from 0) of the insertedpage in the notebook
	 */
	public int insertPageMenu(Widget child, Widget tabLabel, Widget menuLabel, int position)
	{
		// gint gtk_notebook_insert_page_menu (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label,  GtkWidget *menu_label,  gint position);
		return gtk_notebook_insert_page_menu(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct(), position);
	}
	
	/**
	 * Removes a page from the notebook given its index
	 * in the notebook.
	 * Params:
	 * pageNum =  the index of a notebook page, starting
	 *  from 0. If -1, the last page will
	 *  be removed.
	 */
	public void removePage(int pageNum)
	{
		// void gtk_notebook_remove_page (GtkNotebook *notebook,  gint page_num);
		gtk_notebook_remove_page(gtkNotebook, pageNum);
	}
	
	/**
	 * Finds the index of the page which contains the given child
	 * widget.
	 * Params:
	 * child =  a GtkWidget
	 * Returns: the index of the page containing child, or -1 if child is not in the notebook.
	 */
	public int pageNum(Widget child)
	{
		// gint gtk_notebook_page_num (GtkNotebook *notebook,  GtkWidget *child);
		return gtk_notebook_page_num(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Switches to the next page. Nothing happens if the current page is
	 * the last page.
	 */
	public void nextPage()
	{
		// void gtk_notebook_next_page (GtkNotebook *notebook);
		gtk_notebook_next_page(gtkNotebook);
	}
	
	/**
	 * Switches to the previous page. Nothing happens if the current page
	 * is the first page.
	 */
	public void prevPage()
	{
		// void gtk_notebook_prev_page (GtkNotebook *notebook);
		gtk_notebook_prev_page(gtkNotebook);
	}
	
	/**
	 * Reorders the page containing child, so that it appears in position
	 * position. If position is greater than or equal to the number of
	 * children in the list or negative, child will be moved to the end
	 * of the list.
	 * Params:
	 * child =  the child to move
	 * position =  the new position, or -1 to move to the end
	 */
	public void reorderChild(Widget child, int position)
	{
		// void gtk_notebook_reorder_child (GtkNotebook *notebook,  GtkWidget *child,  gint position);
		gtk_notebook_reorder_child(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), position);
	}
	
	/**
	 * Sets the edge at which the tabs for switching pages in the
	 * notebook are drawn.
	 * Params:
	 * pos =  the edge to draw the tabs at.
	 */
	public void setTabPos(GtkPositionType pos)
	{
		// void gtk_notebook_set_tab_pos (GtkNotebook *notebook,  GtkPositionType pos);
		gtk_notebook_set_tab_pos(gtkNotebook, pos);
	}
	
	/**
	 * Sets whether to show the tabs for the notebook or not.
	 * Params:
	 * showTabs =  TRUE if the tabs should be shown.
	 */
	public void setShowTabs(int showTabs)
	{
		// void gtk_notebook_set_show_tabs (GtkNotebook *notebook,  gboolean show_tabs);
		gtk_notebook_set_show_tabs(gtkNotebook, showTabs);
	}
	
	/**
	 * Sets whether a bevel will be drawn around the notebook pages.
	 * This only has a visual effect when the tabs are not shown.
	 * See gtk_notebook_set_show_tabs().
	 * Params:
	 * showBorder =  TRUE if a bevel should be drawn around the notebook.
	 */
	public void setShowBorder(int showBorder)
	{
		// void gtk_notebook_set_show_border (GtkNotebook *notebook,  gboolean show_border);
		gtk_notebook_set_show_border(gtkNotebook, showBorder);
	}
	
	/**
	 * Sets whether the tab label area will have arrows for scrolling if
	 * there are too many tabs to fit in the area.
	 * Params:
	 * scrollable =  TRUE if scroll arrows should be added
	 */
	public void setScrollable(int scrollable)
	{
		// void gtk_notebook_set_scrollable (GtkNotebook *notebook,  gboolean scrollable);
		gtk_notebook_set_scrollable(gtkNotebook, scrollable);
	}
	
	/**
	 * Warning
	 * gtk_notebook_set_tab_border is deprecated and should not be used in newly-written code.
	 * Sets the width the border around the tab labels
	 * in a notebook. This is equivalent to calling
	 * gtk_notebook_set_tab_hborder (notebook, border_width) followed
	 * by gtk_notebook_set_tab_vborder (notebook, border_width).
	 * Params:
	 * borderWidth =  width of the border around the tab labels.
	 */
	public void setTabBorder(uint borderWidth)
	{
		// void gtk_notebook_set_tab_border (GtkNotebook *notebook,  guint border_width);
		gtk_notebook_set_tab_border(gtkNotebook, borderWidth);
	}
	
	/**
	 * Enables the popup menu: if the user clicks with the right mouse button on
	 * the bookmarks, a menu with all the pages will be popped up.
	 */
	public void popupEnable()
	{
		// void gtk_notebook_popup_enable (GtkNotebook *notebook);
		gtk_notebook_popup_enable(gtkNotebook);
	}
	
	/**
	 * Disables the popup menu.
	 */
	public void popupDisable()
	{
		// void gtk_notebook_popup_disable (GtkNotebook *notebook);
		gtk_notebook_popup_disable(gtkNotebook);
	}
	
	/**
	 * Returns the page number of the current page.
	 * Returns: the index (starting from 0) of the currentpage in the notebook. If the notebook has no pages, then-1 will be returned.
	 */
	public int getCurrentPage()
	{
		// gint gtk_notebook_get_current_page (GtkNotebook *notebook);
		return gtk_notebook_get_current_page(gtkNotebook);
	}
	
	/**
	 * Retrieves the menu label widget of the page containing child.
	 * Params:
	 * child =  a widget contained in a page of notebook
	 * Returns: the menu label, or NULL if the notebook page does not have a menu label other than the default (the tab label).
	 */
	public Widget getMenuLabel(Widget child)
	{
		// GtkWidget * gtk_notebook_get_menu_label (GtkNotebook *notebook,  GtkWidget *child);
		auto p = gtk_notebook_get_menu_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Returns the child widget contained in page number page_num.
	 * Params:
	 * pageNum =  the index of a page in the notebook, or -1
	 *  to get the last page.
	 * Returns: the child widget, or NULL if page_num isout of bounds.
	 */
	public Widget getNthPage(int pageNum)
	{
		// GtkWidget* gtk_notebook_get_nth_page (GtkNotebook *notebook,  gint page_num);
		auto p = gtk_notebook_get_nth_page(gtkNotebook, pageNum);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the number of pages in a notebook.
	 * Since 2.2
	 * Returns: the number of pages in the notebook.
	 */
	public int getNPages()
	{
		// gint gtk_notebook_get_n_pages (GtkNotebook *notebook);
		return gtk_notebook_get_n_pages(gtkNotebook);
	}
	
	/**
	 * Returns the tab label widget for the page child. NULL is returned
	 * if child is not in notebook or if no tab label has specifically
	 * been set for child.
	 * Params:
	 * child =  the page
	 * Returns: the tab label
	 */
	public Widget getTabLabel(Widget child)
	{
		// GtkWidget * gtk_notebook_get_tab_label (GtkNotebook *notebook,  GtkWidget *child);
		auto p = gtk_notebook_get_tab_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Query the packing attributes for the tab label of the page
	 * containing child.
	 * Params:
	 * child =  the page
	 * expand =  location to store the expand value (or NULL)
	 * fill =  location to store the fill value (or NULL)
	 * packType =  location to store the pack_type (or NULL)
	 */
	public void queryTabLabelPacking(Widget child, out int expand, out int fill, out GtkPackType packType)
	{
		// void gtk_notebook_query_tab_label_packing  (GtkNotebook *notebook,  GtkWidget *child,  gboolean *expand,  gboolean *fill,  GtkPackType *pack_type);
		gtk_notebook_query_tab_label_packing(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), &expand, &fill, &packType);
	}
	
	/**
	 * Warning
	 * gtk_notebook_set_homogeneous_tabs is deprecated and should not be used in newly-written code.
	 * Sets whether the tabs must have all the same size or not.
	 * Params:
	 * homogeneous =  TRUE if all tabs should be the same size.
	 */
	public void setHomogeneousTabs(int homogeneous)
	{
		// void gtk_notebook_set_homogeneous_tabs (GtkNotebook *notebook,  gboolean homogeneous);
		gtk_notebook_set_homogeneous_tabs(gtkNotebook, homogeneous);
	}
	
	/**
	 * Changes the menu label for the page containing child.
	 * Params:
	 * child =  the child widget
	 * menuLabel =  the menu label, or NULL for default
	 */
	public void setMenuLabel(Widget child, Widget menuLabel)
	{
		// void gtk_notebook_set_menu_label (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *menu_label);
		gtk_notebook_set_menu_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (menuLabel is null) ? null : menuLabel.getWidgetStruct());
	}
	
	/**
	 * Creates a new label and sets it as the menu label of child.
	 * Params:
	 * child =  the child widget
	 * menuText =  the label text
	 */
	public void setMenuLabelText(Widget child, string menuText)
	{
		// void gtk_notebook_set_menu_label_text (GtkNotebook *notebook,  GtkWidget *child,  const gchar *menu_text);
		gtk_notebook_set_menu_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(menuText));
	}
	
	/**
	 * Warning
	 * gtk_notebook_set_tab_hborder is deprecated and should not be used in newly-written code.
	 * Sets the width of the horizontal border of tab labels.
	 * Params:
	 * tabHborder =  width of the horizontal border of tab labels.
	 */
	public void setTabHborder(uint tabHborder)
	{
		// void gtk_notebook_set_tab_hborder (GtkNotebook *notebook,  guint tab_hborder);
		gtk_notebook_set_tab_hborder(gtkNotebook, tabHborder);
	}
	
	/**
	 * Changes the tab label for child. If NULL is specified
	 * for tab_label, then the page will have the label 'page N'.
	 * Params:
	 * child =  the page
	 * tabLabel =  the tab label widget to use, or NULL for default tab
	 *  label.
	 */
	public void setTabLabel(Widget child, Widget tabLabel)
	{
		// void gtk_notebook_set_tab_label (GtkNotebook *notebook,  GtkWidget *child,  GtkWidget *tab_label);
		gtk_notebook_set_tab_label(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), (tabLabel is null) ? null : tabLabel.getWidgetStruct());
	}
	
	/**
	 * Sets the packing parameters for the tab label of the page
	 * containing child. See gtk_box_pack_start() for the exact meaning
	 * of the parameters.
	 * Params:
	 * child =  the child widget
	 * expand =  whether to expand the bookmark or not
	 * fill =  whether the bookmark should fill the allocated area or not
	 * packType =  the position of the bookmark
	 */
	public void setTabLabelPacking(Widget child, int expand, int fill, GtkPackType packType)
	{
		// void gtk_notebook_set_tab_label_packing (GtkNotebook *notebook,  GtkWidget *child,  gboolean expand,  gboolean fill,  GtkPackType pack_type);
		gtk_notebook_set_tab_label_packing(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), expand, fill, packType);
	}
	
	/**
	 * Creates a new label and sets it as the tab label for the page
	 * containing child.
	 * Params:
	 * child =  the page
	 * tabText =  the label text
	 */
	public void setTabLabelText(Widget child, string tabText)
	{
		// void gtk_notebook_set_tab_label_text (GtkNotebook *notebook,  GtkWidget *child,  const gchar *tab_text);
		gtk_notebook_set_tab_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), Str.toStringz(tabText));
	}
	
	/**
	 * Warning
	 * gtk_notebook_set_tab_vborder is deprecated and should not be used in newly-written code.
	 * Sets the width of the vertical border of tab labels.
	 * Params:
	 * tabVborder =  width of the vertical border of tab labels.
	 */
	public void setTabVborder(uint tabVborder)
	{
		// void gtk_notebook_set_tab_vborder (GtkNotebook *notebook,  guint tab_vborder);
		gtk_notebook_set_tab_vborder(gtkNotebook, tabVborder);
	}
	
	/**
	 * Sets whether the notebook tab can be reordered
	 * via drag and drop or not.
	 * Since 2.10
	 * Params:
	 * child =  a child GtkWidget
	 * reorderable =  whether the tab is reorderable or not.
	 */
	public void setTabReorderable(Widget child, int reorderable)
	{
		// void gtk_notebook_set_tab_reorderable (GtkNotebook *notebook,  GtkWidget *child,  gboolean reorderable);
		gtk_notebook_set_tab_reorderable(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), reorderable);
	}
	
	/**
	 * Sets whether the tab can be detached from notebook to another
	 * notebook or widget.
	 * Note that 2 notebooks must share a common group identificator
	 * (see gtk_notebook_set_group_id()) to allow automatic tabs
	 * interchange between them.
	 * If you want a widget to interact with a notebook through DnD
	 * (i.e.: accept dragged tabs from it) it must be set as a drop
	 * destination and accept the target "GTK_NOTEBOOK_TAB". The notebook
	 * will fill the selection with a GtkWidget** pointing to the child
	 * widget that corresponds to the dropped tab.
	 *  static void
	 *  on_drop_zone_drag_data_received (GtkWidget *widget,
	 *  GdkDragContext *context,
	 *  gint x,
	 *  gint y,
	 *  GtkSelectionData *selection_data,
	 *  guint info,
	 *  guint time,
	 *  gpointer user_data)
	 *  {
		 *  GtkWidget *notebook;
		 *  GtkWidget **child;
		 *  notebook = gtk_drag_get_source_widget (context);
		 *  child = (void*) selection_data->data;
		 *  process_widget (*child);
		 *  gtk_container_remove (GTK_CONTAINER (notebook), *child);
	 *  }
	 * If you want a notebook to accept drags from other widgets,
	 * you will have to set your own DnD code to do it.
	 * Since 2.10
	 * Params:
	 * child =  a child GtkWidget
	 * detachable =  whether the tab is detachable or not
	 */
	public void setTabDetachable(Widget child, int detachable)
	{
		// void gtk_notebook_set_tab_detachable (GtkNotebook *notebook,  GtkWidget *child,  gboolean detachable);
		gtk_notebook_set_tab_detachable(gtkNotebook, (child is null) ? null : child.getWidgetStruct(), detachable);
	}
	
	/**
	 * Retrieves the text of the menu label for the page containing
	 *  child.
	 * Params:
	 * child =  the child widget of a page of the notebook.
	 * Returns: the text of the tab label, or NULL if the widget does not have a menu label other than the default menu label, or the menu label widget is not a GtkLabel. The string is owned by the widget and must not be freed.
	 */
	public string getMenuLabelText(Widget child)
	{
		// const gchar * gtk_notebook_get_menu_label_text (GtkNotebook *notebook,  GtkWidget *child);
		return Str.toString(gtk_notebook_get_menu_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct()));
	}
	
	/**
	 * Returns whether the tab label area has arrows for scrolling. See
	 * gtk_notebook_set_scrollable().
	 * Returns: TRUE if arrows for scrolling are present
	 */
	public int getScrollable()
	{
		// gboolean gtk_notebook_get_scrollable (GtkNotebook *notebook);
		return gtk_notebook_get_scrollable(gtkNotebook);
	}
	
	/**
	 * Returns whether a bevel will be drawn around the notebook pages. See
	 * gtk_notebook_set_show_border().
	 * Returns: TRUE if the bevel is drawn
	 */
	public int getShowBorder()
	{
		// gboolean gtk_notebook_get_show_border (GtkNotebook *notebook);
		return gtk_notebook_get_show_border(gtkNotebook);
	}
	
	/**
	 * Returns whether the tabs of the notebook are shown. See
	 * gtk_notebook_set_show_tabs().
	 * Returns: TRUE if the tabs are shown
	 */
	public int getShowTabs()
	{
		// gboolean gtk_notebook_get_show_tabs (GtkNotebook *notebook);
		return gtk_notebook_get_show_tabs(gtkNotebook);
	}
	
	/**
	 * Retrieves the text of the tab label for the page containing
	 *  child.
	 * Params:
	 * child =  a widget contained in a page of notebook
	 * Returns: the text of the tab label, or NULL if the tab label widget is not a GtkLabel. The string is owned by the widget and must not be freed.
	 */
	public string getTabLabelText(Widget child)
	{
		// const gchar * gtk_notebook_get_tab_label_text (GtkNotebook *notebook,  GtkWidget *child);
		return Str.toString(gtk_notebook_get_tab_label_text(gtkNotebook, (child is null) ? null : child.getWidgetStruct()));
	}
	
	/**
	 * Gets the edge at which the tabs for switching pages in the
	 * notebook are drawn.
	 * Returns: the edge at which the tabs are drawn
	 */
	public GtkPositionType getTabPos()
	{
		// GtkPositionType gtk_notebook_get_tab_pos (GtkNotebook *notebook);
		return gtk_notebook_get_tab_pos(gtkNotebook);
	}
	
	/**
	 * Gets whether the tab can be reordered via drag and drop or not.
	 * Since 2.10
	 * Params:
	 * child =  a child GtkWidget
	 * Returns: TRUE if the tab is reorderable.
	 */
	public int getTabReorderable(Widget child)
	{
		// gboolean gtk_notebook_get_tab_reorderable (GtkNotebook *notebook,  GtkWidget *child);
		return gtk_notebook_get_tab_reorderable(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Returns whether the tab contents can be detached from notebook.
	 * Since 2.10
	 * Params:
	 * child =  a child GtkWidget
	 * Returns: TRUE if the tab is detachable.
	 */
	public int getTabDetachable(Widget child)
	{
		// gboolean gtk_notebook_get_tab_detachable (GtkNotebook *notebook,  GtkWidget *child);
		return gtk_notebook_get_tab_detachable(gtkNotebook, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Switches to the page number page_num.
	 * Note that due to historical reasons, GtkNotebook refuses
	 * to switch to a page unless the child widget is visible.
	 * Therefore, it is recommended to show child widgets before
	 * adding them to a notebook.
	 * Params:
	 * pageNum =  index of the page to switch to, starting from 0.
	 *  If negative, the last page will be used. If greater
	 *  than the number of pages in the notebook, nothing
	 *  will be done.
	 */
	public void setCurrentPage(int pageNum)
	{
		// void gtk_notebook_set_current_page (GtkNotebook *notebook,  gint page_num);
		gtk_notebook_set_current_page(gtkNotebook, pageNum);
	}
	
	/**
	 * Warning
	 * gtk_notebook_set_group_id has been deprecated since version 2.12 and should not be used in newly-written code. use gtk_notebook_set_group() instead.
	 * Sets an group identificator for notebook, notebooks sharing
	 * the same group identificator will be able to exchange tabs
	 * via drag and drop. A notebook with group identificator -1 will
	 * not be able to exchange tabs with any other notebook.
	 * Since 2.10
	 * Params:
	 * groupId =  a group identificator, or -1 to unset it
	 */
	public void setGroupId(int groupId)
	{
		// void gtk_notebook_set_group_id (GtkNotebook *notebook,  gint group_id);
		gtk_notebook_set_group_id(gtkNotebook, groupId);
	}
	
	/**
	 * Warning
	 * gtk_notebook_get_group_id has been deprecated since version 2.12 and should not be used in newly-written code. use gtk_notebook_get_group() instead.
	 * Gets the current group identificator for notebook.
	 * Since 2.10
	 * Returns: the group identificator, or -1 if none is set.
	 */
	public int getGroupId()
	{
		// gint gtk_notebook_get_group_id (GtkNotebook *notebook);
		return gtk_notebook_get_group_id(gtkNotebook);
	}
	
	/**
	 * Sets a group identificator pointer for notebook, notebooks sharing
	 * the same group identificator pointer will be able to exchange tabs
	 * via drag and drop. A notebook with a NULL group identificator will
	 * not be able to exchange tabs with any other notebook.
	 * Since 2.12
	 * Params:
	 * group =  a pointer to identify the notebook group, or NULL to unset it
	 */
	public void setGroup(void* group)
	{
		// void gtk_notebook_set_group (GtkNotebook *notebook,  gpointer group);
		gtk_notebook_set_group(gtkNotebook, group);
	}
	
	/**
	 * Gets the current group identificator pointer for notebook.
	 * Since 2.12
	 * Returns: the group identificator, or NULL if none is set.
	 */
	public void* getGroup()
	{
		// gpointer gtk_notebook_get_group (GtkNotebook *notebook);
		return gtk_notebook_get_group(gtkNotebook);
	}
	
	/**
	 * Installs a global function used to create a window
	 * when a detached tab is dropped in an empty area.
	 * Since 2.10
	 * Params:
	 * func =  the GtkNotebookWindowCreationFunc, or NULL
	 * data =  user data for func
	 * destroy =  Destroy notifier for data, or NULL
	 */
	public static void setWindowCreationHook(GtkNotebookWindowCreationFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_notebook_set_window_creation_hook  (GtkNotebookWindowCreationFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_notebook_set_window_creation_hook(func, data, destroy);
	}
}
