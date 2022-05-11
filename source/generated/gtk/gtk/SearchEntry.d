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


module gtk.SearchEntry;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkSearchEntry` is an entry widget that has been tailored for use
 * as a search entry.
 * 
 * The main API for interacting with a `GtkSearchEntry` as entry
 * is the `GtkEditable` interface.
 * 
 * ![An example GtkSearchEntry](search-entry.png)
 * 
 * It will show an inactive symbolic “find” icon when the search
 * entry is empty, and a symbolic “clear” icon when there is text.
 * Clicking on the “clear” icon will empty the search entry.
 * 
 * To make filtering appear more reactive, it is a good idea to
 * not react to every change in the entry text immediately, but
 * only after a short delay. To support this, `GtkSearchEntry`
 * emits the [signal@Gtk.SearchEntry::search-changed] signal which
 * can be used instead of the [signal@Gtk.Editable::changed] signal.
 * 
 * The [signal@Gtk.SearchEntry::previous-match],
 * [signal@Gtk.SearchEntry::next-match] and
 * [signal@Gtk.SearchEntry::stop-search] signals can be used to
 * implement moving between search results and ending the search.
 * 
 * Often, `GtkSearchEntry` will be fed events by means of being
 * placed inside a [class@Gtk.SearchBar]. If that is not the case,
 * you can use [method@Gtk.SearchEntry.set_key_capture_widget] to
 * let it capture key input from another widget.
 * 
 * `GtkSearchEntry` provides only minimal API and should be used with
 * the [iface@Gtk.Editable] API.
 * 
 * ## CSS Nodes
 * 
 * ```
 * entry.search
 * ╰── text
 * ```
 * 
 * `GtkSearchEntry` has a single CSS node with name entry that carries
 * a `.search` style class, and the text node is a child of that.
 * 
 * ## Accessibility
 * 
 * `GtkSearchEntry` uses the %GTK_ACCESSIBLE_ROLE_SEARCH_BOX role.
 */
public class SearchEntry : Widget, EditableIF
{
	/** the main Gtk struct */
	protected GtkSearchEntry* gtkSearchEntry;

	/** Get the main Gtk struct */
	public GtkSearchEntry* getSearchEntryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSearchEntry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSearchEntry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSearchEntry* gtkSearchEntry, bool ownedRef = false)
	{
		this.gtkSearchEntry = gtkSearchEntry;
		super(cast(GtkWidget*)gtkSearchEntry, ownedRef);
	}

	// add the Editable capabilities
	mixin EditableT!(GtkSearchEntry);


	/** */
	public static GType getType()
	{
		return gtk_search_entry_get_type();
	}

	/**
	 * Creates a `GtkSearchEntry`.
	 *
	 * Returns: a new `GtkSearchEntry`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_search_entry_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSearchEntry*) __p);
	}

	/**
	 * Gets the widget that @entry is capturing key events from.
	 *
	 * Returns: The key capture widget.
	 */
	public Widget getKeyCaptureWidget()
	{
		auto __p = gtk_search_entry_get_key_capture_widget(gtkSearchEntry);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets @widget as the widget that @entry will capture key
	 * events from.
	 *
	 * Key events are consumed by the search entry to start or
	 * continue a search.
	 *
	 * If the entry is part of a `GtkSearchBar`, it is preferable
	 * to call [method@Gtk.SearchBar.set_key_capture_widget] instead,
	 * which will reveal the entry in addition to triggering the
	 * search entry.
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
		gtk_search_entry_set_key_capture_widget(gtkSearchEntry, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Emitted when the entry is activated.
	 *
	 * The keybindings for this signal are all forms of the Enter key.
	 */
	gulong addOnActivate(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiates a move to the next match
	 * for the current search string.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * Applications should connect to it, to implement moving
	 * between matches.
	 *
	 * The default bindings for this signal is Ctrl-g.
	 */
	gulong addOnNextMatch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "next-match", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiates a move to the previous match
	 * for the current search string.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * Applications should connect to it, to implement moving
	 * between matches.
	 *
	 * The default bindings for this signal is Ctrl-Shift-g.
	 */
	gulong addOnPreviousMatch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "previous-match", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted with a short delay of 150 milliseconds after the
	 * last change to the entry text.
	 */
	gulong addOnSearchChanged(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "search-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user initiated a search on the entry.
	 */
	gulong addOnSearchStarted(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "search-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user stops a search via keyboard input.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * Applications should connect to it, to implement hiding
	 * the search entry in this case.
	 *
	 * The default bindings for this signal is Escape.
	 */
	gulong addOnStopSearch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "stop-search", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
