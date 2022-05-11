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


module gtk.SearchBar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.EditableIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSearchBar` is a container made to have a search entry.
 * 
 * ![An example GtkSearchBar](search-bar.png)
 * 
 * It can also contain additional widgets, such as drop-down menus,
 * or buttons.  The search bar would appear when a search is started
 * through typing on the keyboard, or the application’s search mode
 * is toggled on.
 * 
 * For keyboard presses to start a search, the search bar must be told
 * of a widget to capture key events from through
 * [method@Gtk.SearchBar.set_key_capture_widget]. This widget will
 * typically be the top-level window, or a parent container of the
 * search bar. Common shortcuts such as Ctrl+F should be handled as an
 * application action, or through the menu items.
 * 
 * You will also need to tell the search bar about which entry you
 * are using as your search entry using [method@Gtk.SearchBar.connect_entry].
 * 
 * ## Creating a search bar
 * 
 * The following example shows you how to create a more complex search
 * entry.
 * 
 * [A simple example](https://gitlab.gnome.org/GNOME/gtk/tree/main/examples/search-bar.c)
 * 
 * # CSS nodes
 * 
 * ```
 * searchbar
 * ╰── revealer
 * ╰── box
 * ├── [child]
 * ╰── [button.close]
 * ```
 * 
 * `GtkSearchBar` has a main CSS node with name searchbar. It has a child
 * node with name revealer that contains a node with name box. The box node
 * contains both the CSS node of the child widget as well as an optional button
 * node which gets the .close style class applied.
 * 
 * # Accessibility
 * 
 * `GtkSearchBar` uses the %GTK_ACCESSIBLE_ROLE_SEARCH role.
 */
public class SearchBar : Widget
{
	/** the main Gtk struct */
	protected GtkSearchBar* gtkSearchBar;

	/** Get the main Gtk struct */
	public GtkSearchBar* getSearchBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSearchBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSearchBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSearchBar* gtkSearchBar, bool ownedRef = false)
	{
		this.gtkSearchBar = gtkSearchBar;
		super(cast(GtkWidget*)gtkSearchBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_search_bar_get_type();
	}

	/**
	 * Creates a `GtkSearchBar`.
	 *
	 * You will need to tell it about which widget is going to be your text
	 * entry using [method@Gtk.SearchBar.connect_entry].
	 *
	 * Returns: a new `GtkSearchBar`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_search_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSearchBar*) __p);
	}

	/**
	 * Connects the `GtkEditable widget passed as the one to be used in
	 * this search bar.
	 *
	 * The entry should be a descendant of the search bar. Calling this
	 * function manually is only required if the entry isn’t the direct
	 * child of the search bar (as in our main example).
	 *
	 * Params:
	 *     entry = a `GtkEditable`
	 */
	public void connectEntry(EditableIF entry)
	{
		gtk_search_bar_connect_entry(gtkSearchBar, (entry is null) ? null : entry.getEditableStruct());
	}

	/**
	 * Gets the child widget of @bar.
	 *
	 * Returns: the child widget of @bar
	 */
	public Widget getChild()
	{
		auto __p = gtk_search_bar_get_child(gtkSearchBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the widget that @bar is capturing key events from.
	 *
	 * Returns: The key capture widget.
	 */
	public Widget getKeyCaptureWidget()
	{
		auto __p = gtk_search_bar_get_key_capture_widget(gtkSearchBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the search mode is on or off.
	 *
	 * Returns: whether search mode is toggled on
	 */
	public bool getSearchMode()
	{
		return gtk_search_bar_get_search_mode(gtkSearchBar) != 0;
	}

	/**
	 * Returns whether the close button is shown.
	 *
	 * Returns: whether the close button is shown
	 */
	public bool getShowCloseButton()
	{
		return gtk_search_bar_get_show_close_button(gtkSearchBar) != 0;
	}

	/**
	 * Sets the child widget of @bar.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_search_bar_set_child(gtkSearchBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets @widget as the widget that @bar will capture key events
	 * from.
	 *
	 * If key events are handled by the search bar, the bar will
	 * be shown, and the entry populated with the entered text.
	 *
	 * Note that despite the name of this function, the events
	 * are only 'captured' in the bubble phase, which means that
	 * editable child widgets of @widget will receive text input
	 * before it gets captured. If that is not desired, you can
	 * capture and forward the events yourself with
	 * [method@Gtk.EventControllerKey.forward].
	 *
	 * Params:
	 *     widget = a `GtkWidget`
	 */
	public void setKeyCaptureWidget(Widget widget)
	{
		gtk_search_bar_set_key_capture_widget(gtkSearchBar, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Switches the search mode on or off.
	 *
	 * Params:
	 *     searchMode = the new state of the search mode
	 */
	public void setSearchMode(bool searchMode)
	{
		gtk_search_bar_set_search_mode(gtkSearchBar, searchMode);
	}

	/**
	 * Shows or hides the close button.
	 *
	 * Applications that already have a “search” toggle button should not
	 * show a close button in their search bar, as it duplicates the role
	 * of the toggle button.
	 *
	 * Params:
	 *     visible = whether the close button will be shown or not
	 */
	public void setShowCloseButton(bool visible)
	{
		gtk_search_bar_set_show_close_button(gtkSearchBar, visible);
	}
}
