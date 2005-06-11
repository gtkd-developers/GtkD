/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Notebook;
private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.ObjectG;
private import dui.Widget;
private import dui.Container;
private import dui.Label;
private import lib.gtk;

/**
 * A container where the children share the same display space.
 * THe active child can be selected from a set of buttons displayed by the noteboook.
 */

// moved out -----------------------
	private import event.EventHandler;
	private import dool.String;
// ---------------------------------

public:
class Notebook : Container
{
	protected:
	
 	alias EventHandler11!(Notebook, uint) OnSwitchPage;
	OnSwitchPage onSwitchPage;
	
	public:

	this(GtkWidget * gtkWidget) {
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new notebook
	 */
	this() {
		super(gtk_notebook_new());
	}

	void addOnSwitchPage(void delegate(Notebook, uint) dlg)
	{
		if ( onSwitchPage  is  null )
		{
			onSwitchPage = new OnSwitchPage(this, EventMask.NONE, new String("switch-page"));
		}
		onSwitchPage += dlg;
	}
	
	/**
	 * Sets the tab positions
	 * @param tabPos the new tab position
	 */
	void setTabPos(PositionType tabPos) {
		gtk_notebook_set_tab_pos(gtkW(), tabPos);
	}

	/**
	 * Gets the current tab position
	 * @return the current tab position
	 */
	PositionType getTabPos() {
		return cast(PositionType)gtk_notebook_get_tab_pos (gtkW());
	}

	/**
	 * Appends a new page to the notebook
	 * @param child the widget to append
	 * @param str the tab text
	 */
	void appendPage(Widget child, char[] str)
	{
		appendPage(child, new String(str));
	}

	void appendPage(Widget child, String str)
	{
		//printf("add page to notebook %d %d\n", widget, child.gtkW());
		Label label = new Label(str);
		gtk_notebook_append_page(gtkW(), child.gtkW(), label.gtkW());
		//printf("add page to notebook %.*s DONE\n", str);
	}

	/**
	 * Appens a new page to the notebook
	 * @param child the widget to append
	 * @param tabLabel the tab widget
	 */
	void appendPage(Widget child, Widget tabLabel)
	{
		gtk_notebook_append_page(gtkW(), child.gtkW(), tabLabel.gtkW());
	}

	/**
	 * Appends a new page witha menu to the notebook
	 * @param child the widget to append
	 * @param tabLabel the tab widget
	 * @param menuLabel the menu
	 */
	void appendPageMenu(Widget child, Widget tabLabel, Widget menuLabel) 
	{
		gtk_notebook_append_page_menu(gtkW(), child.gtkW(), tabLabel.gtkW(), menuLabel.gtkW());
	}

	/**
	 * Enables the popup menu
	 */
	void popupEnable()
	{
		gtk_notebook_popup_enable(gtkW());
	}
	
	/**
	 * Set the border visibility
	 */
	void setShowBorder(bit showBorder)
	{
		gtk_notebook_set_show_border(gtkW(), showBorder);
	}
	
	/**
	 * Gets the border visibility
	 * @return true if the border is vidible
	 */
	gboolean getShowBorder()
	{
		return gtk_notebook_get_show_border(gtkW())==0?false:true;
	}
	
	/**
	 * Sets the tabs visibility
	 * @param showTabs if true the tabs will be visible
	 */
	void setShowTabs(bit showTabs)
	{
		gtk_notebook_set_show_tabs(gtkW(), showTabs);
	}
	
	/**
	 * Gets the tabs visibility
	 * @return true if the tabs are visible
	 */
	gboolean getShowTabs()
	{
		return gtk_notebook_get_show_tabs(gtkW())==0?false:true;
	}

	/+ /***********************************************************
	   *           Creation, insertion, deletion                 *
	   ***********************************************************/

	GType gtk_notebook_get_type(void) G_GNUC_CONST;
	// DONE GtkWidget * gtk_notebook_new(void);
	// DONE void gtk_notebook_append_page(gtkW(), GtkWidget * child, GtkWidget * tab_label);
	// DONE void gtk_notebook_append_page_menu(gtkW(), GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label);
	void gtk_notebook_prepend_page(gtkW(), GtkWidget * child, GtkWidget * tab_label);
	void gtk_notebook_prepend_page_menu(gtkW(), GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label);
	void gtk_notebook_insert_page(gtkW(), GtkWidget * child, GtkWidget * tab_label, gint position);
	void gtk_notebook_insert_page_menu(gtkW(), GtkWidget * child, GtkWidget * tab_label, GtkWidget * menu_label, gint position);
	+/
	
	/**
	 * Remove one page from this notebook
	 * @param pageNumber the page number to be removed
	 */
	void removePage(gint pageNumber)
	{
		gtk_notebook_remove_page(gtkW(), pageNumber);
	}

	/***********************************************************
	 *            query, set current NoteebookPage             *
	 ***********************************************************/

	/**
	 * Gets the current page number
	 * @return the current page number
	 */
	gint getCurrentPage()
	{
		return gtk_notebook_get_current_page(gtkW());
	}
	
	/**
	 * Gets the widget on a page
	 * @param pageNumber
	 * @return the widget on the page
	 */
	Widget getNthPage(gint pageNumber)
	{
		return new Widget(gtk_notebook_get_nth_page(gtkW(), pageNumber));
	}
	
	/**
	 * Gets the total number of page on this notebook
	 */
	gint getNPages()
	{
		return gtk_notebook_get_n_pages(gtkW());
	}
	
	/**
	 * Gets the page number for a widget
	 * @param child the widget
	 * @return the page number for the widget or ??? if not found
	 */
	gint pageNum(Widget child)
	{
		return gtk_notebook_page_num(gtkW(), child.gtkW());
	}

	/**
	 * Sets this notebook current page
	 * @param pageNumber the page number
	 */
	void setCurrentPage(int pageNumber)
	{
		gtk_notebook_set_current_page(gtkW(), pageNumber);
	}
	
	void setCurrentPage(Widget child)
	{
		gtk_notebook_set_current_page(gtkW(),gtk_notebook_page_num(gtkW(), child.gtkW()));
	}
	
	/**
	 * Sets the next page as the current page
	 */
	void nextPage()
	{
		gtk_notebook_next_page(gtkW());
	}
	
	/**
	 * Sets the previous page as the current page
	 */
	void prevPage()
	{
		gtk_notebook_prev_page(gtkW());
	}

	/***********************************************************
	 *            set Notebook, NotebookTab style              *
	 ***********************************************************/

	// DONE void gtk_notebook_set_show_border(gtkW(), gboolean show_border);
	// DONE gboolean gtk_notebook_get_show_border(gtkW());
	// DONE void gtk_notebook_set_show_tabs(gtkW(), gboolean show_tabs);
	// DONE gboolean gtk_notebook_get_show_tabs(gtkW());
	// DONE void gtk_notebook_set_tab_pos(gtkW(), GtkPositionType pos);
	// DONE GtkPositionType gtk_notebook_get_tab_pos(gtkW());

	// deprected # ifndef GTK_DISABLE_DEPRECATED void gtk_notebook_set_homogeneous_tabs(gtkW(), gboolean homogeneous);
	// deprected void gtk_notebook_set_tab_border(gtkW(), guint border_width);
	// deprected void gtk_notebook_set_tab_hborder(gtkW(), guint tab_hborder);
	// deprected void gtk_notebook_set_tab_vborder(gtkW(), guint tab_vborder);
	// deprected # endif /* GTK_DISABLE_DEPRECATED */

	/**
	 * Sets the scrollabe mode
	 * @param scrollable the new scrollable mode
	 */
	void setScrollable(bit scrollable)
	{
		gtk_notebook_set_scrollable(gtkW(), scrollable);
	}
	
	/**
	 * Gets the scrollable mode
	 * @return the scrollable mode
	 */
	bit getScrollable()
	{
		return gtk_notebook_get_scrollable(gtkW())==0?false:true;
	}

	/***********************************************************
	 *               enable/disable PopupMenu                  *
	 ***********************************************************/

	/**
	 * Disables the popup menu
	 */
	void popupDisable()
	{
		gtk_notebook_popup_disable(gtkW());
	}
	
	/**
	 * Enables the popup menu
	 * @param enabled if true enables else disables
	 */
	void popupEnable(bit enabled)
	{
		if ( enabled) popupEnable();
		else popupDisable();
	}
	

	/***********************************************************
	 *             query/set NotebookPage Properties           *
	 ***********************************************************/

	/**
	 * Gets the tab label from the tab that contains a widget
	 * @param child the widget
	 * @return the tab label widget
	 */
	Widget getTabLabel(Widget child)
	{
		return new Widget(gtk_notebook_get_tab_label(gtkW(), child.gtkW()));
	}
	
	/**
	 * Sets the tab label widget for a tab that contains a widget
	 * @param child the widget on the tab
	 * @param tabLabel the widget to set as the tab
	 */
	void setTabLabel(Widget child, Widget tabLabel)
	{
		gtk_notebook_set_tab_label(gtkW(), child.gtkW(), tabLabel.gtkW());
	}
	
	/**
	 * Sets the tab label text
	 * @param child the widget contained on the tab to set
	 * @param tabText the new tabText
	 */
	void setTabLabelText(Widget child, char[] tabText)
	{
		gtk_notebook_set_tab_label_text(gtkW(), child.gtkW(), cChar(tabText));
	}
	
	/**
	 * Gets the tab label text for a tab that contains a specific child
	 * @param child the widget
	 * @return
	 */
	String getTabLabelText(Widget child)
	{
		return String.newz(gtk_notebook_get_tab_label_text(gtkW(), child.gtkW()));
	}
	
	/** 
	 * Gets the menu for the tab containing a widget
	 * @param child the widget
	 * @return the menu
	 */
	Widget getMenuLabel(Widget child)
	{
		return new Widget(gtk_notebook_get_menu_label(gtkW(), child.gtkW()));
	}
	
	/** 
	 * Sets the menu for the tab containing a widget
	 * @param child the widget
	 * @param menuLabel the menu
	 */
	void setMenuLabel(Widget child, Widget menuLabel)
	{
		gtk_notebook_set_menu_label(gtkW(), child.gtkW(), menuLabel.gtkW());
	}
	
	/** 
	 * Sets the menu label text for the tab containing a widget
	 * @param child the widget
	 * @param menuText the menu label text
	 */
	void setMenuLabelText(Widget child, String menuText)
	{
		gtk_notebook_set_menu_label_text(gtkW(), child.gtkW(), menuText.toStringz());
	}

	String getMenuLabelText(Widget child)
	{
		return String.newz(gtk_notebook_get_menu_label_text(gtkW(), child.gtkW()));
	}
	
	
	/+
	void gtk_notebook_query_tab_label_packing(gtkW(), GtkWidget * child, gboolean * expand, gboolean * fill, GtkPackType * pack_type);
	void gtk_notebook_set_tab_label_packing(gtkW(), GtkWidget * child, gboolean expand, gboolean fill, GtkPackType pack_type);
	void gtk_notebook_reorder_child(gtkW(), GtkWidget * child, gint position);
	+/
}
