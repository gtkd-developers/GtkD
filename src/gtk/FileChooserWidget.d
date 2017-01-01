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
public  import gtkc.gdktypes;
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
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDesktopFolderDelegateWrapper[] onDesktopFolderListeners;

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
		onDesktopFolderListeners ~= new OnDesktopFolderDelegateWrapper(dlg, 0, connectFlags);
		onDesktopFolderListeners[onDesktopFolderListeners.length - 1].handlerId = Signals.connectData(
			this,
			"desktop-folder",
			cast(GCallback)&callBackDesktopFolder,
			cast(void*)onDesktopFolderListeners[onDesktopFolderListeners.length - 1],
			cast(GClosureNotify)&callBackDesktopFolderDestroy,
			connectFlags);
		return onDesktopFolderListeners[onDesktopFolderListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDesktopFolder(GtkFileChooserWidget* filechooserwidgetStruct,OnDesktopFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDesktopFolderDestroy(OnDesktopFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDesktopFolder(wrapper);
	}

	protected void internalRemoveOnDesktopFolder(OnDesktopFolderDelegateWrapper source)
	{
		foreach(index, wrapper; onDesktopFolderListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDesktopFolderListeners[index] = null;
				onDesktopFolderListeners = std.algorithm.remove(onDesktopFolderListeners, index);
				break;
			}
		}
	}
	

	protected class OnDownFolderDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDownFolderDelegateWrapper[] onDownFolderListeners;

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
		onDownFolderListeners ~= new OnDownFolderDelegateWrapper(dlg, 0, connectFlags);
		onDownFolderListeners[onDownFolderListeners.length - 1].handlerId = Signals.connectData(
			this,
			"down-folder",
			cast(GCallback)&callBackDownFolder,
			cast(void*)onDownFolderListeners[onDownFolderListeners.length - 1],
			cast(GClosureNotify)&callBackDownFolderDestroy,
			connectFlags);
		return onDownFolderListeners[onDownFolderListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDownFolder(GtkFileChooserWidget* filechooserwidgetStruct,OnDownFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDownFolderDestroy(OnDownFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDownFolder(wrapper);
	}

	protected void internalRemoveOnDownFolder(OnDownFolderDelegateWrapper source)
	{
		foreach(index, wrapper; onDownFolderListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDownFolderListeners[index] = null;
				onDownFolderListeners = std.algorithm.remove(onDownFolderListeners, index);
				break;
			}
		}
	}
	

	protected class OnHomeFolderDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnHomeFolderDelegateWrapper[] onHomeFolderListeners;

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
		onHomeFolderListeners ~= new OnHomeFolderDelegateWrapper(dlg, 0, connectFlags);
		onHomeFolderListeners[onHomeFolderListeners.length - 1].handlerId = Signals.connectData(
			this,
			"home-folder",
			cast(GCallback)&callBackHomeFolder,
			cast(void*)onHomeFolderListeners[onHomeFolderListeners.length - 1],
			cast(GClosureNotify)&callBackHomeFolderDestroy,
			connectFlags);
		return onHomeFolderListeners[onHomeFolderListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackHomeFolder(GtkFileChooserWidget* filechooserwidgetStruct,OnHomeFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackHomeFolderDestroy(OnHomeFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnHomeFolder(wrapper);
	}

	protected void internalRemoveOnHomeFolder(OnHomeFolderDelegateWrapper source)
	{
		foreach(index, wrapper; onHomeFolderListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onHomeFolderListeners[index] = null;
				onHomeFolderListeners = std.algorithm.remove(onHomeFolderListeners, index);
				break;
			}
		}
	}
	

	protected class OnLocationPopupDelegateWrapper
	{
		void delegate(string, FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLocationPopupDelegateWrapper[] onLocationPopupListeners;

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
		onLocationPopupListeners ~= new OnLocationPopupDelegateWrapper(dlg, 0, connectFlags);
		onLocationPopupListeners[onLocationPopupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"location-popup",
			cast(GCallback)&callBackLocationPopup,
			cast(void*)onLocationPopupListeners[onLocationPopupListeners.length - 1],
			cast(GClosureNotify)&callBackLocationPopupDestroy,
			connectFlags);
		return onLocationPopupListeners[onLocationPopupListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLocationPopup(GtkFileChooserWidget* filechooserwidgetStruct, char* path,OnLocationPopupDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(path), wrapper.outer);
	}
	
	extern(C) static void callBackLocationPopupDestroy(OnLocationPopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLocationPopup(wrapper);
	}

	protected void internalRemoveOnLocationPopup(OnLocationPopupDelegateWrapper source)
	{
		foreach(index, wrapper; onLocationPopupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLocationPopupListeners[index] = null;
				onLocationPopupListeners = std.algorithm.remove(onLocationPopupListeners, index);
				break;
			}
		}
	}
	

	protected class OnLocationPopupOnPasteDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLocationPopupOnPasteDelegateWrapper[] onLocationPopupOnPasteListeners;

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
		onLocationPopupOnPasteListeners ~= new OnLocationPopupOnPasteDelegateWrapper(dlg, 0, connectFlags);
		onLocationPopupOnPasteListeners[onLocationPopupOnPasteListeners.length - 1].handlerId = Signals.connectData(
			this,
			"location-popup-on-paste",
			cast(GCallback)&callBackLocationPopupOnPaste,
			cast(void*)onLocationPopupOnPasteListeners[onLocationPopupOnPasteListeners.length - 1],
			cast(GClosureNotify)&callBackLocationPopupOnPasteDestroy,
			connectFlags);
		return onLocationPopupOnPasteListeners[onLocationPopupOnPasteListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLocationPopupOnPaste(GtkFileChooserWidget* filechooserwidgetStruct,OnLocationPopupOnPasteDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLocationPopupOnPasteDestroy(OnLocationPopupOnPasteDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLocationPopupOnPaste(wrapper);
	}

	protected void internalRemoveOnLocationPopupOnPaste(OnLocationPopupOnPasteDelegateWrapper source)
	{
		foreach(index, wrapper; onLocationPopupOnPasteListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLocationPopupOnPasteListeners[index] = null;
				onLocationPopupOnPasteListeners = std.algorithm.remove(onLocationPopupOnPasteListeners, index);
				break;
			}
		}
	}
	

	protected class OnLocationTogglePopupDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLocationTogglePopupDelegateWrapper[] onLocationTogglePopupListeners;

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
		onLocationTogglePopupListeners ~= new OnLocationTogglePopupDelegateWrapper(dlg, 0, connectFlags);
		onLocationTogglePopupListeners[onLocationTogglePopupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"location-toggle-popup",
			cast(GCallback)&callBackLocationTogglePopup,
			cast(void*)onLocationTogglePopupListeners[onLocationTogglePopupListeners.length - 1],
			cast(GClosureNotify)&callBackLocationTogglePopupDestroy,
			connectFlags);
		return onLocationTogglePopupListeners[onLocationTogglePopupListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLocationTogglePopup(GtkFileChooserWidget* filechooserwidgetStruct,OnLocationTogglePopupDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLocationTogglePopupDestroy(OnLocationTogglePopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLocationTogglePopup(wrapper);
	}

	protected void internalRemoveOnLocationTogglePopup(OnLocationTogglePopupDelegateWrapper source)
	{
		foreach(index, wrapper; onLocationTogglePopupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLocationTogglePopupListeners[index] = null;
				onLocationTogglePopupListeners = std.algorithm.remove(onLocationTogglePopupListeners, index);
				break;
			}
		}
	}
	

	protected class OnPlacesShortcutDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPlacesShortcutDelegateWrapper[] onPlacesShortcutListeners;

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
		onPlacesShortcutListeners ~= new OnPlacesShortcutDelegateWrapper(dlg, 0, connectFlags);
		onPlacesShortcutListeners[onPlacesShortcutListeners.length - 1].handlerId = Signals.connectData(
			this,
			"places-shortcut",
			cast(GCallback)&callBackPlacesShortcut,
			cast(void*)onPlacesShortcutListeners[onPlacesShortcutListeners.length - 1],
			cast(GClosureNotify)&callBackPlacesShortcutDestroy,
			connectFlags);
		return onPlacesShortcutListeners[onPlacesShortcutListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPlacesShortcut(GtkFileChooserWidget* filechooserwidgetStruct,OnPlacesShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPlacesShortcutDestroy(OnPlacesShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPlacesShortcut(wrapper);
	}

	protected void internalRemoveOnPlacesShortcut(OnPlacesShortcutDelegateWrapper source)
	{
		foreach(index, wrapper; onPlacesShortcutListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPlacesShortcutListeners[index] = null;
				onPlacesShortcutListeners = std.algorithm.remove(onPlacesShortcutListeners, index);
				break;
			}
		}
	}
	

	protected class OnQuickBookmarkDelegateWrapper
	{
		void delegate(int, FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnQuickBookmarkDelegateWrapper[] onQuickBookmarkListeners;

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
		onQuickBookmarkListeners ~= new OnQuickBookmarkDelegateWrapper(dlg, 0, connectFlags);
		onQuickBookmarkListeners[onQuickBookmarkListeners.length - 1].handlerId = Signals.connectData(
			this,
			"quick-bookmark",
			cast(GCallback)&callBackQuickBookmark,
			cast(void*)onQuickBookmarkListeners[onQuickBookmarkListeners.length - 1],
			cast(GClosureNotify)&callBackQuickBookmarkDestroy,
			connectFlags);
		return onQuickBookmarkListeners[onQuickBookmarkListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackQuickBookmark(GtkFileChooserWidget* filechooserwidgetStruct, int bookmarkIndex,OnQuickBookmarkDelegateWrapper wrapper)
	{
		wrapper.dlg(bookmarkIndex, wrapper.outer);
	}
	
	extern(C) static void callBackQuickBookmarkDestroy(OnQuickBookmarkDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnQuickBookmark(wrapper);
	}

	protected void internalRemoveOnQuickBookmark(OnQuickBookmarkDelegateWrapper source)
	{
		foreach(index, wrapper; onQuickBookmarkListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onQuickBookmarkListeners[index] = null;
				onQuickBookmarkListeners = std.algorithm.remove(onQuickBookmarkListeners, index);
				break;
			}
		}
	}
	

	protected class OnRecentShortcutDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRecentShortcutDelegateWrapper[] onRecentShortcutListeners;

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
		onRecentShortcutListeners ~= new OnRecentShortcutDelegateWrapper(dlg, 0, connectFlags);
		onRecentShortcutListeners[onRecentShortcutListeners.length - 1].handlerId = Signals.connectData(
			this,
			"recent-shortcut",
			cast(GCallback)&callBackRecentShortcut,
			cast(void*)onRecentShortcutListeners[onRecentShortcutListeners.length - 1],
			cast(GClosureNotify)&callBackRecentShortcutDestroy,
			connectFlags);
		return onRecentShortcutListeners[onRecentShortcutListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRecentShortcut(GtkFileChooserWidget* filechooserwidgetStruct,OnRecentShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRecentShortcutDestroy(OnRecentShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRecentShortcut(wrapper);
	}

	protected void internalRemoveOnRecentShortcut(OnRecentShortcutDelegateWrapper source)
	{
		foreach(index, wrapper; onRecentShortcutListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRecentShortcutListeners[index] = null;
				onRecentShortcutListeners = std.algorithm.remove(onRecentShortcutListeners, index);
				break;
			}
		}
	}
	

	protected class OnSearchShortcutDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSearchShortcutDelegateWrapper[] onSearchShortcutListeners;

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
		onSearchShortcutListeners ~= new OnSearchShortcutDelegateWrapper(dlg, 0, connectFlags);
		onSearchShortcutListeners[onSearchShortcutListeners.length - 1].handlerId = Signals.connectData(
			this,
			"search-shortcut",
			cast(GCallback)&callBackSearchShortcut,
			cast(void*)onSearchShortcutListeners[onSearchShortcutListeners.length - 1],
			cast(GClosureNotify)&callBackSearchShortcutDestroy,
			connectFlags);
		return onSearchShortcutListeners[onSearchShortcutListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSearchShortcut(GtkFileChooserWidget* filechooserwidgetStruct,OnSearchShortcutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSearchShortcutDestroy(OnSearchShortcutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSearchShortcut(wrapper);
	}

	protected void internalRemoveOnSearchShortcut(OnSearchShortcutDelegateWrapper source)
	{
		foreach(index, wrapper; onSearchShortcutListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSearchShortcutListeners[index] = null;
				onSearchShortcutListeners = std.algorithm.remove(onSearchShortcutListeners, index);
				break;
			}
		}
	}
	

	protected class OnShowHiddenDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnShowHiddenDelegateWrapper[] onShowHiddenListeners;

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
		onShowHiddenListeners ~= new OnShowHiddenDelegateWrapper(dlg, 0, connectFlags);
		onShowHiddenListeners[onShowHiddenListeners.length - 1].handlerId = Signals.connectData(
			this,
			"show-hidden",
			cast(GCallback)&callBackShowHidden,
			cast(void*)onShowHiddenListeners[onShowHiddenListeners.length - 1],
			cast(GClosureNotify)&callBackShowHiddenDestroy,
			connectFlags);
		return onShowHiddenListeners[onShowHiddenListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackShowHidden(GtkFileChooserWidget* filechooserwidgetStruct,OnShowHiddenDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackShowHiddenDestroy(OnShowHiddenDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnShowHidden(wrapper);
	}

	protected void internalRemoveOnShowHidden(OnShowHiddenDelegateWrapper source)
	{
		foreach(index, wrapper; onShowHiddenListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onShowHiddenListeners[index] = null;
				onShowHiddenListeners = std.algorithm.remove(onShowHiddenListeners, index);
				break;
			}
		}
	}
	

	protected class OnUpFolderDelegateWrapper
	{
		void delegate(FileChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(FileChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnUpFolderDelegateWrapper[] onUpFolderListeners;

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
		onUpFolderListeners ~= new OnUpFolderDelegateWrapper(dlg, 0, connectFlags);
		onUpFolderListeners[onUpFolderListeners.length - 1].handlerId = Signals.connectData(
			this,
			"up-folder",
			cast(GCallback)&callBackUpFolder,
			cast(void*)onUpFolderListeners[onUpFolderListeners.length - 1],
			cast(GClosureNotify)&callBackUpFolderDestroy,
			connectFlags);
		return onUpFolderListeners[onUpFolderListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackUpFolder(GtkFileChooserWidget* filechooserwidgetStruct,OnUpFolderDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackUpFolderDestroy(OnUpFolderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnUpFolder(wrapper);
	}

	protected void internalRemoveOnUpFolder(OnUpFolderDelegateWrapper source)
	{
		foreach(index, wrapper; onUpFolderListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onUpFolderListeners[index] = null;
				onUpFolderListeners = std.algorithm.remove(onUpFolderListeners, index);
				break;
			}
		}
	}
	
}
