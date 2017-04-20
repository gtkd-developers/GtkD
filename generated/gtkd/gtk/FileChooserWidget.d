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


module gtk.FileChooserWidget;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Box;
private import gtk.FileChooserIF;
private import gtk.FileChooserT;
private import gtk.Widget;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkFileChooserWidget is a widget for choosing files.
 * It exposes the #GtkFileChooser interface, and you should
 * use the methods of this interface to interact with the
 * widget.
 * 
 * # CSS nodes
 * 
 * GtkFileChooserWidget has a single CSS node with name filechooser.
 */
public class FileChooserWidget : Box, FileChooserIF
{
	/** the main Gtk struct */
	protected GtkFileChooserWidget* gtkFileChooserWidget;

	/** Get the main Gtk struct */
	public GtkFileChooserWidget* getFileChooserWidgetStruct()
	{
		return gtkFileChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserWidget;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkFileChooserWidget = cast(GtkFileChooserWidget*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFileChooserWidget* gtkFileChooserWidget, bool ownedRef = false)
	{
		this.gtkFileChooserWidget = gtkFileChooserWidget;
		super(cast(GtkBox*)gtkFileChooserWidget, ownedRef);
	}

	// add the FileChooser capabilities
	mixin FileChooserT!(GtkFileChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_file_chooser_widget_get_type();
	}

	/**
	 * Creates a new #GtkFileChooserWidget. This is a file chooser widget that can
	 * be embedded in custom windows, and it is the same widget that is used by
	 * #GtkFileChooserDialog.
	 *
	 * Params:
	 *     action = Open or save mode for the widget
	 *
	 * Return: a new #GtkFileChooserWidget
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkFileChooserAction action)
	{
		auto p = gtk_file_chooser_widget_new(action);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkFileChooserWidget*) p);
	}

	protected class OnDesktopFolderDelegateWrapper
	{
		static OnDesktopFolderDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnDesktopFolderDelegateWrapper source)
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
	 * The ::desktop-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the user's Desktop
	 * folder in the file list.
	 *
	 * The default binding for this signal is `Alt + D`.
	 */
	gulong addOnDesktopFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDesktopFolderDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"desktop-folder",
			cast(GCallback)&callBackDesktopFolder,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDesktopFolderDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDesktopFolder(GtkFileChooserWidget* filechooserwidgetStruct, OnDesktopFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDesktopFolderDestroy(OnDesktopFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnDownFolderDelegateWrapper
	{
		static OnDownFolderDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnDownFolderDelegateWrapper source)
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
	 * The ::down-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser go to a child of the current folder
	 * in the file hierarchy. The subfolder that will be used is displayed in the
	 * path bar widget of the file chooser. For example, if the path bar is showing
	 * "/foo/bar/baz", with bar currently displayed, then this will cause the file
	 * chooser to switch to the "baz" subfolder.
	 *
	 * The default binding for this signal is `Alt + Down`.
	 */
	gulong addOnDownFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnDownFolderDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"down-folder",
			cast(GCallback)&callBackDownFolder,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackDownFolderDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackDownFolder(GtkFileChooserWidget* filechooserwidgetStruct, OnDownFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDownFolderDestroy(OnDownFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnHomeFolderDelegateWrapper
	{
		static OnHomeFolderDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnHomeFolderDelegateWrapper source)
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
	 * The ::home-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the user's home
	 * folder in the file list.
	 *
	 * The default binding for this signal is `Alt + Home`.
	 */
	gulong addOnHomeFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnHomeFolderDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"home-folder",
			cast(GCallback)&callBackHomeFolder,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackHomeFolderDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackHomeFolder(GtkFileChooserWidget* filechooserwidgetStruct, OnHomeFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackHomeFolderDestroy(OnHomeFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnLocationPopupDelegateWrapper
	{
		static OnLocationPopupDelegateWrapper[] listeners;
		void delegate(string, FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(string, FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnLocationPopupDelegateWrapper source)
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
	 * The ::location-popup signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show a "Location" prompt which
	 * the user can use to manually type the name of the file he wishes to select.
	 *
	 * The default bindings for this signal are `Control + L` with a @path string
	 * of "" (the empty string).  It is also bound to `/` with a @path string of
	 * "`/`" (a slash):  this lets you type `/` and immediately type a path name.
	 * On Unix systems, this is bound to `~` (tilde) with a @path string of "~"
	 * itself for access to home directories.
	 *
	 * Params:
	 *     path = a string that gets put in the text entry for the file name
	 */
	gulong addOnLocationPopup(void delegate(string, FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLocationPopupDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"location-popup",
			cast(GCallback)&callBackLocationPopup,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLocationPopupDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLocationPopup(GtkFileChooserWidget* filechooserwidgetStruct, char* path, OnLocationPopupDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(path), wrapper.outer);
	}
	
	extern(C) static void callBackLocationPopupDestroy(OnLocationPopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnLocationPopupOnPasteDelegateWrapper
	{
		static OnLocationPopupOnPasteDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnLocationPopupOnPasteDelegateWrapper source)
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
	 * The ::location-popup-on-paste signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show a "Location" prompt when the user
	 * pastes into a #GtkFileChooserWidget.
	 *
	 * The default binding for this signal is `Control + V`.
	 */
	gulong addOnLocationPopupOnPaste(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLocationPopupOnPasteDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"location-popup-on-paste",
			cast(GCallback)&callBackLocationPopupOnPaste,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLocationPopupOnPasteDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLocationPopupOnPaste(GtkFileChooserWidget* filechooserwidgetStruct, OnLocationPopupOnPasteDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLocationPopupOnPasteDestroy(OnLocationPopupOnPasteDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnLocationTogglePopupDelegateWrapper
	{
		static OnLocationTogglePopupDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnLocationTogglePopupDelegateWrapper source)
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
	 * The ::location-toggle-popup signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to toggle the visibility of a "Location" prompt which the user
	 * can use to manually type the name of the file he wishes to select.
	 *
	 * The default binding for this signal is `Control + L`.
	 */
	gulong addOnLocationTogglePopup(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLocationTogglePopupDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"location-toggle-popup",
			cast(GCallback)&callBackLocationTogglePopup,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLocationTogglePopupDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLocationTogglePopup(GtkFileChooserWidget* filechooserwidgetStruct, OnLocationTogglePopupDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLocationTogglePopupDestroy(OnLocationTogglePopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPlacesShortcutDelegateWrapper
	{
		static OnPlacesShortcutDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnPlacesShortcutDelegateWrapper source)
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
	 * The ::places-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to move the focus to the places sidebar.
	 *
	 * The default binding for this signal is `Alt + P`.
	 */
	gulong addOnPlacesShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPlacesShortcutDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"places-shortcut",
			cast(GCallback)&callBackPlacesShortcut,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPlacesShortcutDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPlacesShortcut(GtkFileChooserWidget* filechooserwidgetStruct, OnPlacesShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPlacesShortcutDestroy(OnPlacesShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnQuickBookmarkDelegateWrapper
	{
		static OnQuickBookmarkDelegateWrapper[] listeners;
		void delegate(int, FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(int, FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnQuickBookmarkDelegateWrapper source)
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
	 * The ::quick-bookmark signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser switch to the bookmark specified
	 * in the @bookmark_index parameter. For example, if you have three bookmarks,
	 * you can pass 0, 1, 2 to this signal to switch to each of them, respectively.
	 *
	 * The default binding for this signal is `Alt + 1`, `Alt + 2`,
	 * etc. until `Alt + 0`.  Note that in the default binding, that
	 * `Alt + 1` is actually defined to switch to the bookmark at index
	 * 0, and so on successively; `Alt + 0` is defined to switch to the
	 * bookmark at index 10.
	 *
	 * Params:
	 *     bookmarkIndex = the number of the bookmark to switch to
	 */
	gulong addOnQuickBookmark(void delegate(int, FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnQuickBookmarkDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"quick-bookmark",
			cast(GCallback)&callBackQuickBookmark,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackQuickBookmarkDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackQuickBookmark(GtkFileChooserWidget* filechooserwidgetStruct, int bookmarkIndex, OnQuickBookmarkDelegateWrapper wrapper)
	{
		wrapper.dlg(bookmarkIndex, wrapper.outer);
	}
	
	extern(C) static void callBackQuickBookmarkDestroy(OnQuickBookmarkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnRecentShortcutDelegateWrapper
	{
		static OnRecentShortcutDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnRecentShortcutDelegateWrapper source)
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
	 * The ::recent-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the Recent location.
	 *
	 * The default binding for this signal is `Alt + R`.
	 */
	gulong addOnRecentShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnRecentShortcutDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"recent-shortcut",
			cast(GCallback)&callBackRecentShortcut,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackRecentShortcutDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackRecentShortcut(GtkFileChooserWidget* filechooserwidgetStruct, OnRecentShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRecentShortcutDestroy(OnRecentShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnSearchShortcutDelegateWrapper
	{
		static OnSearchShortcutDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnSearchShortcutDelegateWrapper source)
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
	 * The ::search-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the search entry.
	 *
	 * The default binding for this signal is `Alt + S`.
	 */
	gulong addOnSearchShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnSearchShortcutDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"search-shortcut",
			cast(GCallback)&callBackSearchShortcut,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackSearchShortcutDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackSearchShortcut(GtkFileChooserWidget* filechooserwidgetStruct, OnSearchShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSearchShortcutDestroy(OnSearchShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnShowHiddenDelegateWrapper
	{
		static OnShowHiddenDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnShowHiddenDelegateWrapper source)
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
	 * The ::show-hidden signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser display hidden files.
	 *
	 * The default binding for this signal is `Control + H`.
	 */
	gulong addOnShowHidden(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnShowHiddenDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"show-hidden",
			cast(GCallback)&callBackShowHidden,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackShowHiddenDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackShowHidden(GtkFileChooserWidget* filechooserwidgetStruct, OnShowHiddenDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackShowHiddenDestroy(OnShowHiddenDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnUpFolderDelegateWrapper
	{
		static OnUpFolderDelegateWrapper[] listeners;
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		
		this(void delegate(FileChooserWidget) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnUpFolderDelegateWrapper source)
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
	 * The ::up-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser go to the parent of the current folder
	 * in the file hierarchy.
	 *
	 * The default binding for this signal is `Alt + Up`.
	 */
	gulong addOnUpFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnUpFolderDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"up-folder",
			cast(GCallback)&callBackUpFolder,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackUpFolderDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackUpFolder(GtkFileChooserWidget* filechooserwidgetStruct, OnUpFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackUpFolderDestroy(OnUpFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
