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

private import gdk.Event;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Entry;
private import gtk.Widget;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkSearchEntry is a subclass of #GtkEntry that has been
 * tailored for use as a search entry.
 * 
 * It will show an inactive symbolic “find” icon when the search
 * entry is empty, and a symbolic “clear” icon when there is text.
 * Clicking on the “clear” icon will empty the search entry.
 * 
 * Note that the search/clear icon is shown using a secondary
 * icon, and thus does not work if you are using the secondary
 * icon position for some other purpose.
 * 
 * To make filtering appear more reactive, it is a good idea to
 * not react to every change in the entry text immediately, but
 * only after a short delay. To support this, #GtkSearchEntry
 * emits the #GtkSearchEntry::search-changed signal which can
 * be used instead of the #GtkEditable::changed signal.
 * 
 * The #GtkSearchEntry::previous-match, #GtkSearchEntry::next-match
 * and #GtkSearchEntry::stop-search signals can be used to implement
 * moving between search results and ending the search.
 * 
 * Often, GtkSearchEntry will be fed events by means of being
 * placed inside a #GtkSearchBar. If that is not the case,
 * you can use gtk_search_entry_handle_event() to pass events.
 */
public class SearchEntry : Entry
{
	/** the main Gtk struct */
	protected GtkSearchEntry* gtkSearchEntry;

	/** Get the main Gtk struct */
	public GtkSearchEntry* getSearchEntryStruct()
	{
		return gtkSearchEntry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSearchEntry;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSearchEntry = cast(GtkSearchEntry*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSearchEntry* gtkSearchEntry, bool ownedRef = false)
	{
		this.gtkSearchEntry = gtkSearchEntry;
		super(cast(GtkEntry*)gtkSearchEntry, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_search_entry_get_type();
	}

	/**
	 * Creates a #GtkSearchEntry, with a find icon when the search field is
	 * empty, and a clear icon when it isn't.
	 *
	 * Returns: a new #GtkSearchEntry
	 *
	 * Since: 3.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_search_entry_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkSearchEntry*) p);
	}

	/**
	 * This function should be called when the top-level window
	 * which contains the search entry received a key event. If
	 * the entry is part of a #GtkSearchBar, it is preferable
	 * to call gtk_search_bar_handle_event() instead, which will
	 * reveal the entry in addition to passing the event to this
	 * function.
	 *
	 * If the key event is handled by the search entry and starts
	 * or continues a search, %GDK_EVENT_STOP will be returned.
	 * The caller should ensure that the entry is shown in this
	 * case, and not propagate the event further.
	 *
	 * Params:
	 *     event = a key event
	 *
	 * Returns: %GDK_EVENT_STOP if the key press event resulted
	 *     in a search beginning or continuing, %GDK_EVENT_PROPAGATE
	 *     otherwise.
	 *
	 * Since: 3.16
	 */
	public bool handleEvent(Event event)
	{
		return gtk_search_entry_handle_event(gtkSearchEntry, (event is null) ? null : event.getEventStruct()) != 0;
	}

	protected class OnNextMatchDelegateWrapper
	{
		static OnNextMatchDelegateWrapper[] listeners;
		void delegate(SearchEntry) dlg;
		gulong handlerId;
		
		this(void delegate(SearchEntry) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnNextMatchDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::next-match signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a move to the next match
	 * for the current search string.
	 *
	 * Applications should connect to it, to implement moving between
	 * matches.
	 *
	 * The default bindings for this signal is Ctrl-g.
	 *
	 * Since: 3.16
	 */
	gulong addOnNextMatch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnNextMatchDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"next-match",
			cast(GCallback)&callBackNextMatch,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackNextMatchDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackNextMatch(GtkSearchEntry* searchentryStruct, OnNextMatchDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackNextMatchDestroy(OnNextMatchDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPreviousMatchDelegateWrapper
	{
		static OnPreviousMatchDelegateWrapper[] listeners;
		void delegate(SearchEntry) dlg;
		gulong handlerId;
		
		this(void delegate(SearchEntry) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnPreviousMatchDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::previous-match signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a move to the previous match
	 * for the current search string.
	 *
	 * Applications should connect to it, to implement moving between
	 * matches.
	 *
	 * The default bindings for this signal is Ctrl-Shift-g.
	 *
	 * Since: 3.16
	 */
	gulong addOnPreviousMatch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPreviousMatchDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"previous-match",
			cast(GCallback)&callBackPreviousMatch,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPreviousMatchDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPreviousMatch(GtkSearchEntry* searchentryStruct, OnPreviousMatchDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPreviousMatchDestroy(OnPreviousMatchDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnSearchChangedDelegateWrapper
	{
		static OnSearchChangedDelegateWrapper[] listeners;
		void delegate(SearchEntry) dlg;
		gulong handlerId;
		
		this(void delegate(SearchEntry) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnSearchChangedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The #GtkSearchEntry::search-changed signal is emitted with a short
	 * delay of 150 milliseconds after the last change to the entry text.
	 *
	 * Since: 3.10
	 */
	gulong addOnSearchChanged(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnSearchChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"search-changed",
			cast(GCallback)&callBackSearchChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackSearchChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackSearchChanged(GtkSearchEntry* searchentryStruct, OnSearchChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSearchChangedDestroy(OnSearchChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnStopSearchDelegateWrapper
	{
		static OnStopSearchDelegateWrapper[] listeners;
		void delegate(SearchEntry) dlg;
		gulong handlerId;
		
		this(void delegate(SearchEntry) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnStopSearchDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The ::stop-search signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user stops a search via keyboard input.
	 *
	 * Applications should connect to it, to implement hiding the search
	 * entry in this case.
	 *
	 * The default bindings for this signal is Escape.
	 *
	 * Since: 3.16
	 */
	gulong addOnStopSearch(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnStopSearchDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"stop-search",
			cast(GCallback)&callBackStopSearch,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackStopSearchDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackStopSearch(GtkSearchEntry* searchentryStruct, OnStopSearchDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackStopSearchDestroy(OnStopSearchDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
