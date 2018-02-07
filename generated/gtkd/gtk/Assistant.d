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


module gtk.Assistant;

private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkAssistant is a widget used to represent a generally complex
 * operation splitted in several steps, guiding the user through its
 * pages and controlling the page flow to collect the necessary data.
 * 
 * The design of GtkAssistant is that it controls what buttons to show
 * and to make sensitive, based on what it knows about the page sequence
 * and the [type][GtkAssistantPageType] of each page,
 * in addition to state information like the page
 * [completion][gtk-assistant-set-page-complete]
 * and [committed][gtk-assistant-commit] status.
 * 
 * If you have a case that doesn’t quite fit in #GtkAssistants way of
 * handling buttons, you can use the #GTK_ASSISTANT_PAGE_CUSTOM page
 * type and handle buttons yourself.
 * 
 * # GtkAssistant as GtkBuildable
 * 
 * The GtkAssistant implementation of the #GtkBuildable interface
 * exposes the @action_area as internal children with the name
 * “action_area”.
 * 
 * To add pages to an assistant in #GtkBuilder, simply add it as a
 * child to the GtkAssistant object, and set its child properties
 * as necessary.
 * 
 * # CSS nodes
 * 
 * GtkAssistant has a single CSS node with the name assistant.
 */
public class Assistant : Window
{
	/** the main Gtk struct */
	protected GtkAssistant* gtkAssistant;

	/** Get the main Gtk struct */
	public GtkAssistant* getAssistantStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAssistant;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAssistant;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAssistant* gtkAssistant, bool ownedRef = false)
	{
		this.gtkAssistant = gtkAssistant;
		super(cast(GtkWindow*)gtkAssistant, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_assistant_get_type();
	}

	/**
	 * Creates a new #GtkAssistant.
	 *
	 * Returns: a newly created #GtkAssistant
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_assistant_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAssistant*) p);
	}

	/**
	 * Adds a widget to the action area of a #GtkAssistant.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 *
	 * Since: 2.10
	 */
	public void addActionWidget(Widget child)
	{
		gtk_assistant_add_action_widget(gtkAssistant, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Appends a page to the @assistant.
	 *
	 * Params:
	 *     page = a #GtkWidget
	 *
	 * Returns: the index (starting at 0) of the inserted page
	 *
	 * Since: 2.10
	 */
	public int appendPage(Widget page)
	{
		return gtk_assistant_append_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}

	/**
	 * Erases the visited page history so the back button is not
	 * shown on the current page, and removes the cancel button
	 * from subsequent pages.
	 *
	 * Use this when the information provided up to the current
	 * page is hereafter deemed permanent and cannot be modified
	 * or undone. For example, showing a progress page to track
	 * a long-running, unreversible operation after the user has
	 * clicked apply on a confirmation page.
	 *
	 * Since: 2.22
	 */
	public void commit()
	{
		gtk_assistant_commit(gtkAssistant);
	}

	/**
	 * Returns the page number of the current page.
	 *
	 * Returns: The index (starting from 0) of the current
	 *     page in the @assistant, or -1 if the @assistant has no pages,
	 *     or no current page.
	 *
	 * Since: 2.10
	 */
	public int getCurrentPage()
	{
		return gtk_assistant_get_current_page(gtkAssistant);
	}

	/**
	 * Returns the number of pages in the @assistant
	 *
	 * Returns: the number of pages in the @assistant
	 *
	 * Since: 2.10
	 */
	public int getNPages()
	{
		return gtk_assistant_get_n_pages(gtkAssistant);
	}

	/**
	 * Returns the child widget contained in page number @page_num.
	 *
	 * Params:
	 *     pageNum = the index of a page in the @assistant,
	 *         or -1 to get the last page
	 *
	 * Returns: the child widget, or %NULL
	 *     if @page_num is out of bounds
	 *
	 * Since: 2.10
	 */
	public Widget getNthPage(int pageNum)
	{
		auto p = gtk_assistant_get_nth_page(gtkAssistant, pageNum);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets whether @page is complete.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: %TRUE if @page is complete.
	 *
	 * Since: 2.10
	 */
	public bool getPageComplete(Widget page)
	{
		return gtk_assistant_get_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) != 0;
	}

	/**
	 * Gets whether page has padding.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: %TRUE if @page has padding
	 *
	 * Since: 3.18
	 */
	public bool getPageHasPadding(Widget page)
	{
		return gtk_assistant_get_page_has_padding(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) != 0;
	}

	/**
	 * Gets the header image for @page.
	 *
	 * Deprecated: Since GTK+ 3.2, a header is no longer shown;
	 * add your header decoration to the page content instead.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: the header image for @page,
	 *     or %NULL if there’s no header image for the page
	 *
	 * Since: 2.10
	 */
	public Pixbuf getPageHeaderImage(Widget page)
	{
		auto p = gtk_assistant_get_page_header_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Gets the side image for @page.
	 *
	 * Deprecated: Since GTK+ 3.2, sidebar images are not
	 * shown anymore.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: the side image for @page,
	 *     or %NULL if there’s no side image for the page
	 *
	 * Since: 2.10
	 */
	public Pixbuf getPageSideImage(Widget page)
	{
		auto p = gtk_assistant_get_page_side_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Gets the title for @page.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: the title for @page
	 *
	 * Since: 2.10
	 */
	public string getPageTitle(Widget page)
	{
		return Str.toString(gtk_assistant_get_page_title(gtkAssistant, (page is null) ? null : page.getWidgetStruct()));
	}

	/**
	 * Gets the page type of @page.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: the page type of @page
	 *
	 * Since: 2.10
	 */
	public GtkAssistantPageType getPageType(Widget page)
	{
		return gtk_assistant_get_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}

	/**
	 * Inserts a page in the @assistant at a given position.
	 *
	 * Params:
	 *     page = a #GtkWidget
	 *     position = the index (starting at 0) at which to insert the page,
	 *         or -1 to append the page to the @assistant
	 *
	 * Returns: the index (starting from 0) of the inserted page
	 *
	 * Since: 2.10
	 */
	public int insertPage(Widget page, int position)
	{
		return gtk_assistant_insert_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), position);
	}

	/**
	 * Navigate to the next page.
	 *
	 * It is a programming error to call this function when
	 * there is no next page.
	 *
	 * This function is for use when creating pages of the
	 * #GTK_ASSISTANT_PAGE_CUSTOM type.
	 *
	 * Since: 3.0
	 */
	public void nextPage()
	{
		gtk_assistant_next_page(gtkAssistant);
	}

	/**
	 * Prepends a page to the @assistant.
	 *
	 * Params:
	 *     page = a #GtkWidget
	 *
	 * Returns: the index (starting at 0) of the inserted page
	 *
	 * Since: 2.10
	 */
	public int prependPage(Widget page)
	{
		return gtk_assistant_prepend_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}

	/**
	 * Navigate to the previous visited page.
	 *
	 * It is a programming error to call this function when
	 * no previous page is available.
	 *
	 * This function is for use when creating pages of the
	 * #GTK_ASSISTANT_PAGE_CUSTOM type.
	 *
	 * Since: 3.0
	 */
	public void previousPage()
	{
		gtk_assistant_previous_page(gtkAssistant);
	}

	/**
	 * Removes a widget from the action area of a #GtkAssistant.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 *
	 * Since: 2.10
	 */
	public void removeActionWidget(Widget child)
	{
		gtk_assistant_remove_action_widget(gtkAssistant, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes the @page_num’s page from @assistant.
	 *
	 * Params:
	 *     pageNum = the index of a page in the @assistant,
	 *         or -1 to remove the last page
	 *
	 * Since: 3.2
	 */
	public void removePage(int pageNum)
	{
		gtk_assistant_remove_page(gtkAssistant, pageNum);
	}

	/**
	 * Switches the page to @page_num.
	 *
	 * Note that this will only be necessary in custom buttons,
	 * as the @assistant flow can be set with
	 * gtk_assistant_set_forward_page_func().
	 *
	 * Params:
	 *     pageNum = index of the page to switch to, starting from 0.
	 *         If negative, the last page will be used. If greater
	 *         than the number of pages in the @assistant, nothing
	 *         will be done.
	 *
	 * Since: 2.10
	 */
	public void setCurrentPage(int pageNum)
	{
		gtk_assistant_set_current_page(gtkAssistant, pageNum);
	}

	/**
	 * Sets the page forwarding function to be @page_func.
	 *
	 * This function will be used to determine what will be
	 * the next page when the user presses the forward button.
	 * Setting @page_func to %NULL will make the assistant to
	 * use the default forward function, which just goes to the
	 * next visible page.
	 *
	 * Params:
	 *     pageFunc = the #GtkAssistantPageFunc, or %NULL
	 *         to use the default one
	 *     data = user data for @page_func
	 *     destroy = destroy notifier for @data
	 *
	 * Since: 2.10
	 */
	public void setForwardPageFunc(GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy)
	{
		gtk_assistant_set_forward_page_func(gtkAssistant, pageFunc, data, destroy);
	}

	/**
	 * Sets whether @page contents are complete.
	 *
	 * This will make @assistant update the buttons state
	 * to be able to continue the task.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     complete = the completeness status of the page
	 *
	 * Since: 2.10
	 */
	public void setPageComplete(Widget page, bool complete)
	{
		gtk_assistant_set_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), complete);
	}

	/**
	 * Sets whether the assistant is adding padding around
	 * the page.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     hasPadding = whether this page has padding
	 *
	 * Since: 3.18
	 */
	public void setPageHasPadding(Widget page, bool hasPadding)
	{
		gtk_assistant_set_page_has_padding(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), hasPadding);
	}

	/**
	 * Sets a header image for @page.
	 *
	 * Deprecated: Since GTK+ 3.2, a header is no longer shown;
	 * add your header decoration to the page content instead.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     pixbuf = the new header image @page
	 *
	 * Since: 2.10
	 */
	public void setPageHeaderImage(Widget page, Pixbuf pixbuf)
	{
		gtk_assistant_set_page_header_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets a side image for @page.
	 *
	 * This image used to be displayed in the side area of the assistant
	 * when @page is the current page.
	 *
	 * Deprecated: Since GTK+ 3.2, sidebar images are not
	 * shown anymore.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     pixbuf = the new side image @page
	 *
	 * Since: 2.10
	 */
	public void setPageSideImage(Widget page, Pixbuf pixbuf)
	{
		gtk_assistant_set_page_side_image(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets a title for @page.
	 *
	 * The title is displayed in the header area of the assistant
	 * when @page is the current page.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     title = the new title for @page
	 *
	 * Since: 2.10
	 */
	public void setPageTitle(Widget page, string title)
	{
		gtk_assistant_set_page_title(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), Str.toStringz(title));
	}

	/**
	 * Sets the page type for @page.
	 *
	 * The page type determines the page behavior in the @assistant.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *     type = the new type for @page
	 *
	 * Since: 2.10
	 */
	public void setPageType(Widget page, GtkAssistantPageType type)
	{
		gtk_assistant_set_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), type);
	}

	/**
	 * Forces @assistant to recompute the buttons state.
	 *
	 * GTK+ automatically takes care of this in most situations,
	 * e.g. when the user goes to a different page, or when the
	 * visibility or completeness of a page changes.
	 *
	 * One situation where it can be necessary to call this
	 * function is when changing a value on the current page
	 * affects the future page flow of the assistant.
	 *
	 * Since: 2.10
	 */
	public void updateButtonsState()
	{
		gtk_assistant_update_buttons_state(gtkAssistant);
	}

	/**
	 * The ::apply signal is emitted when the apply button is clicked.
	 *
	 * The default behavior of the #GtkAssistant is to switch to the page
	 * after the current page, unless the current page is the last one.
	 *
	 * A handler for the ::apply signal should carry out the actions for
	 * which the wizard has collected data. If the action takes a long time
	 * to complete, you might consider putting a page of type
	 * %GTK_ASSISTANT_PAGE_PROGRESS after the confirmation page and handle
	 * this operation within the #GtkAssistant::prepare signal of the progress
	 * page.
	 *
	 * Since: 2.10
	 */
	gulong addOnApply(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::cancel signal is emitted when then the cancel button is clicked.
	 *
	 * Since: 2.10
	 */
	gulong addOnCancel(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::close signal is emitted either when the close button of
	 * a summary page is clicked, or when the apply button in the last
	 * page in the flow (of type %GTK_ASSISTANT_PAGE_CONFIRM) is clicked.
	 *
	 * Since: 2.10
	 */
	gulong addOnClose(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnEscape(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "escape", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::prepare signal is emitted when a new page is set as the
	 * assistant's current page, before making the new page visible.
	 *
	 * A handler for this signal can do any preparations which are
	 * necessary before showing @page.
	 *
	 * Params:
	 *     page = the current page
	 *
	 * Since: 2.10
	 */
	gulong addOnPrepare(void delegate(Widget, Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prepare", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
