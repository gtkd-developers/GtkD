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
private import gtk.c.functions;
public  import gtk.c.types;
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
	public GtkFileChooserWidget* getFileChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFileChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileChooserWidget;
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
	 * Returns: a new #GtkFileChooserWidget
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
		return Signals.connect(this, "desktop-folder", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "down-folder", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "home-folder", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "location-popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "location-popup-on-paste", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "location-toggle-popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "places-shortcut", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "quick-bookmark", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "recent-shortcut", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "search-shortcut", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "show-hidden", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
		return Signals.connect(this, "up-folder", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
