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

private import gdk.Event;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.Entry;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkSearchBar is a container made to have a search entry (possibly
 * with additional connex widgets, such as drop-down menus, or buttons)
 * built-in. The search bar would appear when a search is started through
 * typing on the keyboard, or the application’s search mode is toggled on.
 * 
 * For keyboard presses to start a search, events will need to be
 * forwarded from the top-level window that contains the search bar.
 * See gtk_search_bar_handle_event() for example code. Common shortcuts
 * such as Ctrl+F should be handled as an application action, or through
 * the menu items.
 * 
 * You will also need to tell the search bar about which entry you
 * are using as your search entry using gtk_search_bar_connect_entry().
 * The following example shows you how to create a more complex search
 * entry.
 * 
 * # CSS nodes
 * 
 * GtkSearchBar has a single CSS node with name searchbar.
 * 
 * ## Creating a search bar
 * 
 * [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/search-bar.c)
 */
public class SearchBar : Bin
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
		super(cast(GtkBin*)gtkSearchBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_search_bar_get_type();
	}

	/**
	 * Creates a #GtkSearchBar. You will need to tell it about
	 * which widget is going to be your text entry using
	 * gtk_search_bar_connect_entry().
	 *
	 * Returns: a new #GtkSearchBar
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_search_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSearchBar*) p);
	}

	/**
	 * Connects the #GtkEntry widget passed as the one to be used in
	 * this search bar. The entry should be a descendant of the search bar.
	 * This is only required if the entry isn’t the direct child of the
	 * search bar (as in our main example).
	 *
	 * Params:
	 *     entry = a #GtkEntry
	 *
	 * Since: 3.10
	 */
	public void connectEntry(Entry entry)
	{
		gtk_search_bar_connect_entry(gtkSearchBar, (entry is null) ? null : entry.getEntryStruct());
	}

	/**
	 * Returns whether the search mode is on or off.
	 *
	 * Returns: whether search mode is toggled on
	 *
	 * Since: 3.10
	 */
	public bool getSearchMode()
	{
		return gtk_search_bar_get_search_mode(gtkSearchBar) != 0;
	}

	/**
	 * Returns whether the close button is shown.
	 *
	 * Returns: whether the close button is shown
	 *
	 * Since: 3.10
	 */
	public bool getShowCloseButton()
	{
		return gtk_search_bar_get_show_close_button(gtkSearchBar) != 0;
	}

	/**
	 * This function should be called when the top-level
	 * window which contains the search bar received a key event.
	 *
	 * If the key event is handled by the search bar, the bar will
	 * be shown, the entry populated with the entered text and %GDK_EVENT_STOP
	 * will be returned. The caller should ensure that events are
	 * not propagated further.
	 *
	 * If no entry has been connected to the search bar, using
	 * gtk_search_bar_connect_entry(), this function will return
	 * immediately with a warning.
	 *
	 * ## Showing the search bar on key presses
	 *
	 * |[<!-- language="C" -->
	 * static gboolean
	 * on_key_press_event (GtkWidget *widget,
	 * GdkEvent  *event,
	 * gpointer   user_data)
	 * {
	 * GtkSearchBar *bar = GTK_SEARCH_BAR (user_data);
	 * return gtk_search_bar_handle_event (bar, event);
	 * }
	 *
	 * static void
	 * create_toplevel (void)
	 * {
	 * GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 * GtkWindow *search_bar = gtk_search_bar_new ();
	 *
	 * // Add more widgets to the window...
	 *
	 * g_signal_connect (window,
	 * "key-press-event",
	 * G_CALLBACK (on_key_press_event),
	 * search_bar);
	 * }
	 * ]|
	 *
	 * Params:
	 *     event = a #GdkEvent containing key press events
	 *
	 * Returns: %GDK_EVENT_STOP if the key press event resulted
	 *     in text being entered in the search entry (and revealing
	 *     the search bar if necessary), %GDK_EVENT_PROPAGATE otherwise.
	 *
	 * Since: 3.10
	 */
	public bool handleEvent(Event event)
	{
		return gtk_search_bar_handle_event(gtkSearchBar, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Switches the search mode on or off.
	 *
	 * Params:
	 *     searchMode = the new state of the search mode
	 *
	 * Since: 3.10
	 */
	public void setSearchMode(bool searchMode)
	{
		gtk_search_bar_set_search_mode(gtkSearchBar, searchMode);
	}

	/**
	 * Shows or hides the close button. Applications that
	 * already have a “search” toggle button should not show a close
	 * button in their search bar, as it duplicates the role of the
	 * toggle button.
	 *
	 * Params:
	 *     visible = whether the close button will be shown or not
	 *
	 * Since: 3.10
	 */
	public void setShowCloseButton(bool visible)
	{
		gtk_search_bar_set_show_close_button(gtkSearchBar, visible);
	}
}
