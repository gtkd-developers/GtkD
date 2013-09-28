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
 * inFile  = GtkSearchBar.html
 * outPack = gtk
 * outFile = SearchBar
 * strct   = GtkSearchBar
 * realStrct=
 * ctorStrct=
 * clss    = SearchBar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_search_bar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Event
 * 	- gtk.Entry
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GtkEntry* -> Entry
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.SearchBar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Event;
private import gtk.Entry;



private import gtk.Bin;

/**
 * GtkSearchBar is a container made to have a search entry (possibly
 * with additional connex widgets, such as drop-down menus, or buttons)
 * built-in. The search bar would appear when a search is started through
 * typing on the keyboard, or the application's search mode is toggled on.
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
 * $(DDOC_COMMENT example)
 */
public class SearchBar : Bin
{
	
	/** the main Gtk struct */
	protected GtkSearchBar* gtkSearchBar;
	
	
	public GtkSearchBar* getSearchBarStruct()
	{
		return gtkSearchBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSearchBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSearchBar* gtkSearchBar)
	{
		super(cast(GtkBin*)gtkSearchBar);
		this.gtkSearchBar = gtkSearchBar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSearchBar = cast(GtkSearchBar*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a GtkSearchBar. You will need to tell it about
	 * which widget is going to be your text entry using
	 * gtk_search_bar_set_entry().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_search_bar_new (void);
		auto p = gtk_search_bar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_search_bar_new()");
		}
		this(cast(GtkSearchBar*) p);
	}
	
	/**
	 * Connects the GtkEntry widget passed as the one to be used in
	 * this search bar. The entry should be a descendant of the search bar.
	 * This is only required if the entry isn't the direct child of the
	 * search bar (as in our main example).
	 * Params:
	 * entry = a GtkEntry
	 * Since 3.10
	 */
	public void connectEntry(Entry entry)
	{
		// void gtk_search_bar_connect_entry (GtkSearchBar *bar,  GtkEntry *entry);
		gtk_search_bar_connect_entry(gtkSearchBar, (entry is null) ? null : entry.getEntryStruct());
	}
	
	/**
	 * Returns whether the search mode is on or off.
	 * Returns: whether search mode is toggled on Since 3.10
	 */
	public int getSearchMode()
	{
		// gboolean gtk_search_bar_get_search_mode (GtkSearchBar *bar);
		return gtk_search_bar_get_search_mode(gtkSearchBar);
	}
	
	/**
	 * Switches the search mode on or off.
	 * Params:
	 * searchMode = the new state of the search mode
	 * Since 3.10
	 */
	public void setSearchMode(int searchMode)
	{
		// void gtk_search_bar_set_search_mode (GtkSearchBar *bar,  gboolean search_mode);
		gtk_search_bar_set_search_mode(gtkSearchBar, searchMode);
	}
	
	/**
	 * Returns whether the close button is shown.
	 * Returns: whether the close button is shown Since 3.10
	 */
	public int getShowCloseButton()
	{
		// gboolean gtk_search_bar_get_show_close_button  (GtkSearchBar *bar);
		return gtk_search_bar_get_show_close_button(gtkSearchBar);
	}
	
	/**
	 * Shows or hides the close button. Applications that
	 * already have a "search" toggle button should not show a close
	 * button in their search bar, as it duplicates the role of the
	 * toggle button.
	 * Params:
	 * visible = whether the close button will be shown or not
	 * Since 3.10
	 */
	public void setShowCloseButton(int visible)
	{
		// void gtk_search_bar_set_show_close_button  (GtkSearchBar *bar,  gboolean visible);
		gtk_search_bar_set_show_close_button(gtkSearchBar, visible);
	}
	
	/**
	 * This function should be called when the top-level
	 * window which contains the search bar received a key event.
	 * If the key event is handled by the search bar, the bar will
	 * be shown, the entry populated with the entered text and GDK_EVENT_STOP
	 * will be returned. The caller should ensure that events are
	 * not propagated further.
	 * If no entry has been connected to the search bar, using
	 * gtk_search_bar_connect_entry(), this function will return
	 * immediately with a warning.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * event = a GdkEvent containing key press events
	 * Returns: GDK_EVENT_STOP if the key press event resulted in text being entered in the search entry (and revealing the search bar if necessary), GDK_EVENT_PROPAGATE otherwise. Since 3.10
	 */
	public int handleEvent(Event event)
	{
		// gboolean gtk_search_bar_handle_event (GtkSearchBar *bar,  GdkEvent *event);
		return gtk_search_bar_handle_event(gtkSearchBar, (event is null) ? null : event.getEventStruct());
	}
}
