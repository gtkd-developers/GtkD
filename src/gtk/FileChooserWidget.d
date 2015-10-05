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


/**
 * #GtkFileChooserWidget is a widget for choosing files.
 * It exposes the #GtkFileChooser interface, and you should
 * use the methods of this interface to interact with the
 * widget.
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

	/**
	 */

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

	int[string] connectedSignals;

	void delegate(FileChooserWidget)[] onDesktopFolderListeners;
	/**
	 * The ::desktop-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the user's Desktop
	 * folder in the file list.
	 *
	 * The default binding for this signal is `Alt + D`.
	 */
	void addOnDesktopFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "desktop-folder" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"desktop-folder",
				cast(GCallback)&callBackDesktopFolder,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["desktop-folder"] = 1;
		}
		onDesktopFolderListeners ~= dlg;
	}
	extern(C) static void callBackDesktopFolder(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onDesktopFolderListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onDownFolderListeners;
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
	void addOnDownFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "down-folder" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"down-folder",
				cast(GCallback)&callBackDownFolder,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["down-folder"] = 1;
		}
		onDownFolderListeners ~= dlg;
	}
	extern(C) static void callBackDownFolder(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onDownFolderListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onHomeFolderListeners;
	/**
	 * The ::home-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the user's home
	 * folder in the file list.
	 *
	 * The default binding for this signal is `Alt + Home`.
	 */
	void addOnHomeFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "home-folder" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"home-folder",
				cast(GCallback)&callBackHomeFolder,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["home-folder"] = 1;
		}
		onHomeFolderListeners ~= dlg;
	}
	extern(C) static void callBackHomeFolder(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onHomeFolderListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(string, FileChooserWidget)[] onLocationPopupListeners;
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
	void addOnLocationPopup(void delegate(string, FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "location-popup" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"location-popup",
				cast(GCallback)&callBackLocationPopup,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["location-popup"] = 1;
		}
		onLocationPopupListeners ~= dlg;
	}
	extern(C) static void callBackLocationPopup(GtkFileChooserWidget* filechooserwidgetStruct, char* path, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(string, FileChooserWidget) dlg; _filechooserwidget.onLocationPopupListeners )
		{
			dlg(Str.toString(path), _filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onLocationPopupOnPasteListeners;
	/**
	 * The ::location-popup-on-paste signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show a "Location" prompt when the user
	 * pastes into a #GtkFileChooserWidget.
	 *
	 * The default binding for this signal is `Control + V`.
	 */
	void addOnLocationPopupOnPaste(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "location-popup-on-paste" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"location-popup-on-paste",
				cast(GCallback)&callBackLocationPopupOnPaste,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["location-popup-on-paste"] = 1;
		}
		onLocationPopupOnPasteListeners ~= dlg;
	}
	extern(C) static void callBackLocationPopupOnPaste(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onLocationPopupOnPasteListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onLocationTogglePopupListeners;
	/**
	 * The ::location-toggle-popup signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to toggle the visibility of a "Location" prompt which the user
	 * can use to manually type the name of the file he wishes to select.
	 *
	 * The default binding for this signal is `Control + L`.
	 */
	void addOnLocationTogglePopup(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "location-toggle-popup" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"location-toggle-popup",
				cast(GCallback)&callBackLocationTogglePopup,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["location-toggle-popup"] = 1;
		}
		onLocationTogglePopupListeners ~= dlg;
	}
	extern(C) static void callBackLocationTogglePopup(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onLocationTogglePopupListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onPlacesShortcutListeners;
	/**
	 * The ::places-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to move the focus to the places sidebar.
	 *
	 * The default binding for this signal is `Alt + P`.
	 */
	void addOnPlacesShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "places-shortcut" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"places-shortcut",
				cast(GCallback)&callBackPlacesShortcut,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["places-shortcut"] = 1;
		}
		onPlacesShortcutListeners ~= dlg;
	}
	extern(C) static void callBackPlacesShortcut(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onPlacesShortcutListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(int, FileChooserWidget)[] onQuickBookmarkListeners;
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
	void addOnQuickBookmark(void delegate(int, FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "quick-bookmark" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"quick-bookmark",
				cast(GCallback)&callBackQuickBookmark,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["quick-bookmark"] = 1;
		}
		onQuickBookmarkListeners ~= dlg;
	}
	extern(C) static void callBackQuickBookmark(GtkFileChooserWidget* filechooserwidgetStruct, int bookmarkIndex, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(int, FileChooserWidget) dlg; _filechooserwidget.onQuickBookmarkListeners )
		{
			dlg(bookmarkIndex, _filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onRecentShortcutListeners;
	/**
	 * The ::recent-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the Recent location.
	 *
	 * The default binding for this signal is `Alt + R`.
	 */
	void addOnRecentShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "recent-shortcut" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"recent-shortcut",
				cast(GCallback)&callBackRecentShortcut,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["recent-shortcut"] = 1;
		}
		onRecentShortcutListeners ~= dlg;
	}
	extern(C) static void callBackRecentShortcut(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onRecentShortcutListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onSearchShortcutListeners;
	/**
	 * The ::search-shortcut signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser show the search entry.
	 *
	 * The default binding for this signal is `Alt + S`.
	 */
	void addOnSearchShortcut(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "search-shortcut" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"search-shortcut",
				cast(GCallback)&callBackSearchShortcut,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["search-shortcut"] = 1;
		}
		onSearchShortcutListeners ~= dlg;
	}
	extern(C) static void callBackSearchShortcut(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onSearchShortcutListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onShowHiddenListeners;
	/**
	 * The ::show-hidden signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser display hidden files.
	 *
	 * The default binding for this signal is `Control + H`.
	 */
	void addOnShowHidden(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-hidden" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-hidden",
				cast(GCallback)&callBackShowHidden,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-hidden"] = 1;
		}
		onShowHiddenListeners ~= dlg;
	}
	extern(C) static void callBackShowHidden(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onShowHiddenListeners )
		{
			dlg(_filechooserwidget);
		}
	}

	void delegate(FileChooserWidget)[] onUpFolderListeners;
	/**
	 * The ::up-folder signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user asks for it.
	 *
	 * This is used to make the file chooser go to the parent of the current folder
	 * in the file hierarchy.
	 *
	 * The default binding for this signal is `Alt + Up`.
	 */
	void addOnUpFolder(void delegate(FileChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "up-folder" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"up-folder",
				cast(GCallback)&callBackUpFolder,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["up-folder"] = 1;
		}
		onUpFolderListeners ~= dlg;
	}
	extern(C) static void callBackUpFolder(GtkFileChooserWidget* filechooserwidgetStruct, FileChooserWidget _filechooserwidget)
	{
		foreach ( void delegate(FileChooserWidget) dlg; _filechooserwidget.onUpFolderListeners )
		{
			dlg(_filechooserwidget);
		}
	}
}
