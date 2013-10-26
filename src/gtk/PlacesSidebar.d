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
 * inFile  = GtkPlacesSidebar.html
 * outPack = gtk
 * outFile = PlacesSidebar
 * strct   = GtkPlacesSidebar
 * realStrct=
 * ctorStrct=
 * clss    = PlacesSidebar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_places_sidebar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * 	- gio.File
 * 	- gobject.ObjectG
 * 	- gdk.DragContext
 * structWrap:
 * 	- GFile* -> File
 * 	- GObject* -> ObjectG
 * 	- GSList* -> ListSG
 * 	- GdkDragContext* -> DragContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PlacesSidebar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;
private import glib.Str;
private import glib.ListSG;
private import gio.File;
private import gobject.ObjectG;
private import gdk.DragContext;


private import gtk.ScrolledWindow;

/**
 * GtkPlacesSidebar is a widget that displays a list of frequently-used places in the
 * file system: the user's home directory, the user's bookmarks, and volumes and drives.
 * This widget is used as a sidebar in GtkFileChooser and may be used by file managers
 * and similar programs.
 *
 * The places sidebar displays drives and volumes, and will automatically mount
 * or unmount them when the user selects them.
 *
 * Applications can hook to various signals in the places sidebar to customize
 * its behavior. For example, they can add extra commands to the context menu
 * of the sidebar.
 *
 * While bookmarks are completely in control of the user, the places sidebar also
 * allows individual applications to provide extra shortcut folders that are unique
 * to each application. For example, a Paint program may want to add a shortcut
 * for a Clipart folder. You can do this with gtk_places_sidebar_add_shortcut().
 *
 * To make use of the places sidebar, an application at least needs to connect
 * to the "open-location" signal. This is emitted when the
 * user selects in the sidebar a location to open. The application should also
 * call gtk_places_sidebar_set_location() when it changes the currently-viewed
 * location.
 */
public class PlacesSidebar : ScrolledWindow
{
	
	/** the main Gtk struct */
	protected GtkPlacesSidebar* gtkPlacesSidebar;
	
	
	public GtkPlacesSidebar* getPlacesSidebarStruct()
	{
		return gtkPlacesSidebar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPlacesSidebar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPlacesSidebar* gtkPlacesSidebar)
	{
		super(cast(GtkScrolledWindow*)gtkPlacesSidebar);
		this.gtkPlacesSidebar = gtkPlacesSidebar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPlacesSidebar = cast(GtkPlacesSidebar*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	gint delegate(gint, PlacesSidebar)[] onDragActionAskListeners;
	/**
	 * The places sidebar emits this signal when it needs to ask the application
	 * to pop up a menu to ask the user for which drag action to perform.
	 * Since 3.10
	 */
	void addOnDragActionAsk(gint delegate(gint, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-action-ask" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-action-ask",
			cast(GCallback)&callBackDragActionAsk,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-action-ask"] = 1;
		}
		onDragActionAskListeners ~= dlg;
	}
	extern(C) static void callBackDragActionAsk(GtkPlacesSidebar* sidebarStruct, gint actions, PlacesSidebar _placesSidebar)
	{
		foreach ( gint delegate(gint, PlacesSidebar) dlg ; _placesSidebar.onDragActionAskListeners )
		{
			dlg(actions, _placesSidebar);
		}
	}
	
	gint delegate(DragContext, ObjectG, void*, PlacesSidebar)[] onDragActionRequestedListeners;
	/**
	 * When the user starts a drag-and-drop operation and the sidebar needs
	 * to ask the application for which drag action to perform, then the
	 * sidebar will emit this signal.
	 * The application can evaluate the context for customary actions, or
	 * it can check the type of the files indicated by source_file_list against the
	 * possible actions for the destination dest_file.
	 * The drag action to use must be the return value of the signal handler.
	 * GdkDragContext with information about the drag operation
	 * GFile with the tentative location that is being hovered for a drop
	 * Since 3.10
	 */
	void addOnDragActionRequested(gint delegate(DragContext, ObjectG, void*, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-action-requested" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-action-requested",
			cast(GCallback)&callBackDragActionRequested,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-action-requested"] = 1;
		}
		onDragActionRequestedListeners ~= dlg;
	}
	extern(C) static void callBackDragActionRequested(GtkPlacesSidebar* sidebarStruct, GdkDragContext* context, GObject* destFile, void* sourceFileList, PlacesSidebar _placesSidebar)
	{
		foreach ( gint delegate(DragContext, ObjectG, void*, PlacesSidebar) dlg ; _placesSidebar.onDragActionRequestedListeners )
		{
			dlg(ObjectG.getDObject!(DragContext)(context), ObjectG.getDObject!(ObjectG)(destFile), sourceFileList, _placesSidebar);
		}
	}
	
	void delegate(ObjectG, void*, gint, PlacesSidebar)[] onDragPerformDropListeners;
	/**
	 * The places sidebar emits this signal when the user completes a
	 * drag-and-drop operation and one of the sidebar's items is the
	 * destination. This item is in the dest_file, and the
	 * source_file_list has the list of files that are dropped into it and
	 * which should be copied/moved/etc. based on the specified action.
	 * GList of GFile that got dropped. [element-type GFile][transfer none]
	 * Since 3.10
	 */
	void addOnDragPerformDrop(void delegate(ObjectG, void*, gint, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drag-perform-drop" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-perform-drop",
			cast(GCallback)&callBackDragPerformDrop,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drag-perform-drop"] = 1;
		}
		onDragPerformDropListeners ~= dlg;
	}
	extern(C) static void callBackDragPerformDrop(GtkPlacesSidebar* sidebarStruct, GObject* destFile, void* sourceFileList, gint action, PlacesSidebar _placesSidebar)
	{
		foreach ( void delegate(ObjectG, void*, gint, PlacesSidebar) dlg ; _placesSidebar.onDragPerformDropListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(destFile), sourceFileList, action, _placesSidebar);
		}
	}
	
	void delegate(ObjectG, GtkPlacesOpenFlags, PlacesSidebar)[] onOpenLocationListeners;
	/**
	 * The places sidebar emits this signal when the user selects a location
	 * in it. The calling application should display the contents of that
	 * location; for example, a file manager should show a list of files in
	 * the specified location.
	 * GFile to which the caller should switch.
	 * Since 3.10
	 */
	void addOnOpenLocation(void delegate(ObjectG, GtkPlacesOpenFlags, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("open-location" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"open-location",
			cast(GCallback)&callBackOpenLocation,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["open-location"] = 1;
		}
		onOpenLocationListeners ~= dlg;
	}
	extern(C) static void callBackOpenLocation(GtkPlacesSidebar* sidebarStruct, GObject* location, GtkPlacesOpenFlags openFlags, PlacesSidebar _placesSidebar)
	{
		foreach ( void delegate(ObjectG, GtkPlacesOpenFlags, PlacesSidebar) dlg ; _placesSidebar.onOpenLocationListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(location), openFlags, _placesSidebar);
		}
	}
	
	void delegate(ObjectG, ObjectG, ObjectG, PlacesSidebar)[] onPopulatePopupListeners;
	/**
	 * The places sidebar emits this signal when the user invokes a contextual
	 * menu on one of its items. In the signal handler, the application may
	 * add extra items to the menu as appropriate. For example, a file manager
	 * may want to add a "Properties" command to the menu.
	 * It is not necessary to store the selected_item for each menu item;
	 * during their GtkMenuItem::activate callbacks, the application can use
	 * gtk_places_sidebar_get_location() to get the file to which the item
	 * refers.
	 * The selected_item argument may be NULL in case the selection refers to
	 * a volume. In this case, selected_volume will be non-NULL. In this case,
	 * the calling application will have to g_object_ref() the selected_volume and
	 * keep it around for the purposes of its menu item's "activate" callback.
	 * The menu and all its menu items are destroyed after the user
	 * dismisses the menu. The menu is re-created (and thus, this signal is
	 * emitted) every time the user activates the contextual menu.
	 * GFile with the item to which the menu should refer, or NULL in the case of a selected_volume.
	 * GVolume if the selected item is a volume, or NULL if it is a file.
	 * Since 3.10
	 */
	void addOnPopulatePopup(void delegate(ObjectG, ObjectG, ObjectG, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkPlacesSidebar* sidebarStruct, GObject* menu, GObject* selectedItem, GObject* selectedVolume, PlacesSidebar _placesSidebar)
	{
		foreach ( void delegate(ObjectG, ObjectG, ObjectG, PlacesSidebar) dlg ; _placesSidebar.onPopulatePopupListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(menu), ObjectG.getDObject!(ObjectG)(selectedItem), ObjectG.getDObject!(ObjectG)(selectedVolume), _placesSidebar);
		}
	}
	
	void delegate(PlacesSidebar)[] onShowConnectToServerListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present an way to connect directly to a network server.
	 * For example, the application may bring up a dialog box asking for
	 * a URL like "sftp://ftp.example.com". It is up to the application to create
	 * the corresponding mount by using, for example, g_file_mount_enclosing_volume().
	 * Since 3.10
	 */
	void addOnShowConnectToServer(void delegate(PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-connect-to-server" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-connect-to-server",
			cast(GCallback)&callBackShowConnectToServer,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-connect-to-server"] = 1;
		}
		onShowConnectToServerListeners ~= dlg;
	}
	extern(C) static void callBackShowConnectToServer(GtkPlacesSidebar* sidebarStruct, PlacesSidebar _placesSidebar)
	{
		foreach ( void delegate(PlacesSidebar) dlg ; _placesSidebar.onShowConnectToServerListeners )
		{
			dlg(_placesSidebar);
		}
	}
	
	void delegate(string, string, PlacesSidebar)[] onShowErrorMessageListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present an error message. Most of these messages
	 * refer to mounting or unmounting media, for example, when a drive
	 * cannot be started for some reason.
	 * Since 3.10
	 * See Also
	 * GtkFileChooser
	 */
	void addOnShowErrorMessage(void delegate(string, string, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-error-message" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-error-message",
			cast(GCallback)&callBackShowErrorMessage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-error-message"] = 1;
		}
		onShowErrorMessageListeners ~= dlg;
	}
	extern(C) static void callBackShowErrorMessage(GtkPlacesSidebar* sidebarStruct, gchar* primary, gchar* secondary, PlacesSidebar _placesSidebar)
	{
		foreach ( void delegate(string, string, PlacesSidebar) dlg ; _placesSidebar.onShowErrorMessageListeners )
		{
			dlg(Str.toString(primary), Str.toString(secondary), _placesSidebar);
		}
	}
	
	
	/**
	 * Creates a new GtkPlacesSidebar widget.
	 * The application should connect to at least the
	 * "open-location" signal to be notified
	 * when the user makes a selection in the sidebar.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_places_sidebar_new (void);
		auto p = gtk_places_sidebar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_places_sidebar_new()");
		}
		this(cast(GtkPlacesSidebar*) p);
	}
	
	/**
	 * Sets the way in which the calling application can open new locations from
	 * the places sidebar. For example, some applications only open locations
	 * "directly" into their main view, while others may support opening locations
	 * in a new notebook tab or a new window.
	 * This function is used to tell the places sidebar about the ways in which the
	 * application can open new locations, so that the sidebar can display (or not)
	 * the "Open in new tab" and "Open in new window" menu items as appropriate.
	 * When the "open-location" signal is emitted, its flags
	 * argument will be set to one of the flags that was passed in
	 * gtk_places_sidebar_set_open_flags().
	 * Passing 0 for flags will cause GTK_PLACES_OPEN_NORMAL to always be sent
	 * to callbacks for the "open-location" signal.
	 * Params:
	 * flags = Bitmask of modes in which the calling application can open locations
	 * Since 3.10
	 */
	public void setOpenFlags(GtkPlacesOpenFlags flags)
	{
		// void gtk_places_sidebar_set_open_flags (GtkPlacesSidebar *sidebar,  GtkPlacesOpenFlags flags);
		gtk_places_sidebar_set_open_flags(gtkPlacesSidebar, flags);
	}
	
	/**
	 * Gets the open flags.
	 * Returns: the GtkPlacesOpenFlags of sidebar Since 3.10
	 */
	public GtkPlacesOpenFlags getOpenFlags()
	{
		// GtkPlacesOpenFlags gtk_places_sidebar_get_open_flags (GtkPlacesSidebar *sidebar);
		return gtk_places_sidebar_get_open_flags(gtkPlacesSidebar);
	}
	
	/**
	 * Sets the location that is being shown in the widgets surrounding the
	 * sidebar, for example, in a folder view in a file manager. In turn, the
	 * sidebar will highlight that location if it is being shown in the list of
	 * places, or it will unhighlight everything if the location is not among the
	 * places in the list.
	 * Params:
	 * location = location to select, or NULL for no current path. [allow-none]
	 * Since 3.10
	 */
	public void setLocation(File location)
	{
		// void gtk_places_sidebar_set_location (GtkPlacesSidebar *sidebar,  GFile *location);
		gtk_places_sidebar_set_location(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}
	
	/**
	 * Gets the currently-selected location in the sidebar. This can be NULL when
	 * nothing is selected, for example, when gtk_places_sidebar_set_location() has
	 * been called with a location that is not among the sidebar's list of places to
	 * show.
	 * You can use this function to get the selection in the sidebar. Also, if you
	 * connect to the "popup-menu" signal, you can use this
	 * function to get the location that is being referred to during the callbacks
	 * for your menu items.
	 * Returns: a GFile with the selected location, or NULL if nothing is visually selected. [transfer full] Since 3.10
	 */
	public File getLocation()
	{
		// GFile * gtk_places_sidebar_get_location (GtkPlacesSidebar *sidebar);
		auto p = gtk_places_sidebar_get_location(gtkPlacesSidebar);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Sets whether the sidebar should show an item for the Desktop folder; this is off by default.
	 * An application may want to turn this on if the desktop environment actually supports the
	 * notion of a desktop.
	 * Params:
	 * showDesktop = whether to show an item for the Desktop folder
	 * Since 3.10
	 */
	public void setShowDesktop(int showDesktop)
	{
		// void gtk_places_sidebar_set_show_desktop (GtkPlacesSidebar *sidebar,  gboolean show_desktop);
		gtk_places_sidebar_set_show_desktop(gtkPlacesSidebar, showDesktop);
	}
	
	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_desktop()
	 * Returns: TRUE if the sidebar will display a builtin shortcut to the desktop folder. Since 3.10
	 */
	public int getShowDesktop()
	{
		// gboolean gtk_places_sidebar_get_show_desktop (GtkPlacesSidebar *sidebar);
		return gtk_places_sidebar_get_show_desktop(gtkPlacesSidebar);
	}
	
	/**
	 * Applications may want to present some folders in the places sidebar if
	 * they could be immediately useful to users. For example, a drawing
	 * program could add a "/usr/share/clipart" location when the sidebar is
	 * being used in an "Insert Clipart" dialog box.
	 * This function adds the specified location to a special place for immutable
	 * shortcuts. The shortcuts are application-specific; they are not shared
	 * across applications, and they are not persistent. If this function
	 * is called multiple times with different locations, then they are added
	 * to the sidebar's list in the same order as the function is called.
	 * Params:
	 * location = location to add as an application-specific shortcut
	 * Since 3.10
	 */
	public void addShortcut(File location)
	{
		// void gtk_places_sidebar_add_shortcut (GtkPlacesSidebar *sidebar,  GFile *location);
		gtk_places_sidebar_add_shortcut(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}
	
	/**
	 * Removes an application-specific shortcut that has been previously been
	 * inserted with gtk_places_sidebar_add_shortcut(). If the location is not a
	 * shortcut in the sidebar, then nothing is done.
	 * Params:
	 * location = location to remove
	 * Since 3.10
	 */
	public void removeShortcut(File location)
	{
		// void gtk_places_sidebar_remove_shortcut (GtkPlacesSidebar *sidebar,  GFile *location);
		gtk_places_sidebar_remove_shortcut(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}
	
	/**
	 * Gets the list of shortcuts.
	 * Returns: A GSList of GFile of the locations that have been added as application-specific shortcuts with gtk_places_sidebar_add_shortcut(). To free this list, you can use $(DDOC_COMMENT example) . [element-type GFile][transfer full] Since 3.10
	 */
	public ListSG listShortcuts()
	{
		// GSList * gtk_places_sidebar_list_shortcuts (GtkPlacesSidebar *sidebar);
		auto p = gtk_places_sidebar_list_shortcuts(gtkPlacesSidebar);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * This function queries the bookmarks added by the user to the places sidebar,
	 * and returns one of them. This function is used by GtkFileChooser to implement
	 * the "Alt-1", "Alt-2", etc. shortcuts, which activate the cooresponding bookmark.
	 * Params:
	 * n = index of the bookmark to query
	 * Returns: The bookmark specified by the index n, or NULL if no such index exist. Note that the indices start at 0, even though the file chooser starts them with the keyboard shortcut "Alt-1". [transfer full] Since 3.10
	 */
	public File getNthBookmark(int n)
	{
		// GFile * gtk_places_sidebar_get_nth_bookmark (GtkPlacesSidebar *sidebar,  gint n);
		auto p = gtk_places_sidebar_get_nth_bookmark(gtkPlacesSidebar, n);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
	 * Returns: TRUE if the sidebar will display a "Connect to Server" item. Since 3.10
	 */
	public int getShowConnectToServer()
	{
		// gboolean gtk_places_sidebar_get_show_connect_to_server  (GtkPlacesSidebar *sidebar);
		return gtk_places_sidebar_get_show_connect_to_server(gtkPlacesSidebar);
	}
	
	/**
	 * Sets whether the sidebar should show an item for connecting to a network server; this is off by default.
	 * An application may want to turn this on if it implements a way for the user to connect
	 * to network servers directly.
	 * Params:
	 * showConnectToServer = whether to show an item for the Connect to Server command
	 * Since 3.10
	 */
	public void setShowConnectToServer(int showConnectToServer)
	{
		// void gtk_places_sidebar_set_show_connect_to_server  (GtkPlacesSidebar *sidebar,  gboolean show_connect_to_server);
		gtk_places_sidebar_set_show_connect_to_server(gtkPlacesSidebar, showConnectToServer);
	}
}
