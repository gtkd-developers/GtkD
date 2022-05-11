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

private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AssistantPage;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkAssistant` is used to represent a complex as a series of steps.
 * 
 * ![An example GtkAssistant](assistant.png)
 * 
 * Each step consists of one or more pages. `GtkAssistant` guides the user
 * through the pages, and controls the page flow to collect the data needed
 * for the operation.
 * 
 * `GtkAssistant` handles which buttons to show and to make sensitive based
 * on page sequence knowledge and the [enum@Gtk.AssistantPageType] of each
 * page in addition to state information like the *completed* and *committed*
 * page statuses.
 * 
 * If you have a case that doesn’t quite fit in `GtkAssistant`s way of
 * handling buttons, you can use the %GTK_ASSISTANT_PAGE_CUSTOM page
 * type and handle buttons yourself.
 * 
 * `GtkAssistant` maintains a `GtkAssistantPage` object for each added
 * child, which holds additional per-child properties. You
 * obtain the `GtkAssistantPage` for a child with [method@Gtk.Assistant.get_page].
 * 
 * # GtkAssistant as GtkBuildable
 * 
 * The `GtkAssistant` implementation of the `GtkBuildable` interface
 * exposes the @action_area as internal children with the name
 * “action_area”.
 * 
 * To add pages to an assistant in `GtkBuilder`, simply add it as a
 * child to the `GtkAssistant` object. If you need to set per-object
 * properties, create a `GtkAssistantPage` object explicitly, and
 * set the child widget as a property on it.
 * 
 * # CSS nodes
 * 
 * `GtkAssistant` has a single CSS node with the name window and style
 * class .assistant.
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
	 * Creates a new `GtkAssistant`.
	 *
	 * Returns: a newly created `GtkAssistant`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_assistant_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAssistant*) __p);
	}

	/**
	 * Adds a widget to the action area of a `GtkAssistant`.
	 *
	 * Params:
	 *     child = a `GtkWidget`
	 */
	public void addActionWidget(Widget child)
	{
		gtk_assistant_add_action_widget(gtkAssistant, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Appends a page to the @assistant.
	 *
	 * Params:
	 *     page = a `GtkWidget`
	 *
	 * Returns: the index (starting at 0) of the inserted page
	 */
	public int appendPage(Widget page)
	{
		return gtk_assistant_append_page(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}

	/**
	 * Erases the visited page history.
	 *
	 * GTK will then hide the back button on the current page,
	 * and removes the cancel button from subsequent pages.
	 *
	 * Use this when the information provided up to the current
	 * page is hereafter deemed permanent and cannot be modified
	 * or undone. For example, showing a progress page to track
	 * a long-running, unreversible operation after the user has
	 * clicked apply on a confirmation page.
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
	 *     or no current page
	 */
	public int getCurrentPage()
	{
		return gtk_assistant_get_current_page(gtkAssistant);
	}

	/**
	 * Returns the number of pages in the @assistant
	 *
	 * Returns: the number of pages in the @assistant
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
	 */
	public Widget getNthPage(int pageNum)
	{
		auto __p = gtk_assistant_get_nth_page(gtkAssistant, pageNum);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the `GtkAssistantPage` object for @child.
	 *
	 * Params:
	 *     child = a child of @assistant
	 *
	 * Returns: the `GtkAssistantPage` for @child
	 */
	public AssistantPage getPage(Widget child)
	{
		auto __p = gtk_assistant_get_page(gtkAssistant, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AssistantPage)(cast(GtkAssistantPage*) __p);
	}

	/**
	 * Gets whether @page is complete.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: %TRUE if @page is complete.
	 */
	public bool getPageComplete(Widget page)
	{
		return gtk_assistant_get_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct()) != 0;
	}

	/**
	 * Gets the title for @page.
	 *
	 * Params:
	 *     page = a page of @assistant
	 *
	 * Returns: the title for @page
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
	 */
	public GtkAssistantPageType getPageType(Widget page)
	{
		return gtk_assistant_get_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct());
	}

	/**
	 * Gets a list model of the assistant pages.
	 *
	 * Returns: A list model of the pages.
	 */
	public ListModelIF getPages()
	{
		auto __p = gtk_assistant_get_pages(gtkAssistant);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * Inserts a page in the @assistant at a given position.
	 *
	 * Params:
	 *     page = a `GtkWidget`
	 *     position = the index (starting at 0) at which to insert the page,
	 *         or -1 to append the page to the @assistant
	 *
	 * Returns: the index (starting from 0) of the inserted page
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
	 * %GTK_ASSISTANT_PAGE_CUSTOM type.
	 */
	public void nextPage()
	{
		gtk_assistant_next_page(gtkAssistant);
	}

	/**
	 * Prepends a page to the @assistant.
	 *
	 * Params:
	 *     page = a `GtkWidget`
	 *
	 * Returns: the index (starting at 0) of the inserted page
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
	 * %GTK_ASSISTANT_PAGE_CUSTOM type.
	 */
	public void previousPage()
	{
		gtk_assistant_previous_page(gtkAssistant);
	}

	/**
	 * Removes a widget from the action area of a `GtkAssistant`.
	 *
	 * Params:
	 *     child = a `GtkWidget`
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
	 *     pageFunc = the `GtkAssistantPageFunc`, or %NULL
	 *         to use the default one
	 *     data = user data for @page_func
	 *     destroy = destroy notifier for @data
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
	 */
	public void setPageComplete(Widget page, bool complete)
	{
		gtk_assistant_set_page_complete(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), complete);
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
	 */
	public void setPageType(Widget page, GtkAssistantPageType type)
	{
		gtk_assistant_set_page_type(gtkAssistant, (page is null) ? null : page.getWidgetStruct(), type);
	}

	/**
	 * Forces @assistant to recompute the buttons state.
	 *
	 * GTK automatically takes care of this in most situations,
	 * e.g. when the user goes to a different page, or when the
	 * visibility or completeness of a page changes.
	 *
	 * One situation where it can be necessary to call this
	 * function is when changing a value on the current page
	 * affects the future page flow of the assistant.
	 */
	public void updateButtonsState()
	{
		gtk_assistant_update_buttons_state(gtkAssistant);
	}

	/**
	 * Emitted when the apply button is clicked.
	 *
	 * The default behavior of the `GtkAssistant` is to switch to the page
	 * after the current page, unless the current page is the last one.
	 *
	 * A handler for the ::apply signal should carry out the actions for
	 * which the wizard has collected data. If the action takes a long time
	 * to complete, you might consider putting a page of type
	 * %GTK_ASSISTANT_PAGE_PROGRESS after the confirmation page and handle
	 * this operation within the [signal@Gtk.Assistant::prepare] signal of
	 * the progress page.
	 */
	gulong addOnApply(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when then the cancel button is clicked.
	 */
	gulong addOnCancel(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted either when the close button of a summary page is clicked,
	 * or when the apply button in the last page in the flow (of type
	 * %GTK_ASSISTANT_PAGE_CONFIRM) is clicked.
	 */
	gulong addOnClose(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The action signal for the Escape binding.
	 */
	gulong addOnEscape(void delegate(Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "escape", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a new page is set as the assistant's current page,
	 * before making the new page visible.
	 *
	 * A handler for this signal can do any preparations which are
	 * necessary before showing @page.
	 *
	 * Params:
	 *     page = the current page
	 */
	gulong addOnPrepare(void delegate(Widget, Assistant) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prepare", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
