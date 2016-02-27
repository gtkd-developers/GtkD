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


module gtk.PlacesSidebar;

private import gdk.DragContext;
private import gio.File;
private import gio.FileIF;
private import gio.Volume;
private import gio.VolumeIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ScrolledWindow;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * #GtkPlacesSidebar is a widget that displays a list of frequently-used places in the
 * file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
 * This widget is used as a sidebar in #GtkFileChooser and may be used by file managers
 * and similar programs.
 * 
 * The places sidebar displays drives and volumes, and will automatically mount
 * or unmount them when the user selects them.
 * 
 * Applications can hook to various signals in the places sidebar to customize
 * its behavior.  For example, they can add extra commands to the context menu
 * of the sidebar.
 * 
 * While bookmarks are completely in control of the user, the places sidebar also
 * allows individual applications to provide extra shortcut folders that are unique
 * to each application.  For example, a Paint program may want to add a shortcut
 * for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().
 * 
 * To make use of the places sidebar, an application at least needs to connect
 * to the #GtkPlacesSidebar::open-location signal.  This is emitted when the
 * user selects in the sidebar a location to open.  The application should also
 * call gtk_places_sidebar_set_location() when it changes the currently-viewed
 * location.
 */
public class PlacesSidebar : ScrolledWindow
{
	/** the main Gtk struct */
	protected GtkPlacesSidebar* gtkPlacesSidebar;

	/** Get the main Gtk struct */
	public GtkPlacesSidebar* getPlacesSidebarStruct()
	{
		return gtkPlacesSidebar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPlacesSidebar;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkPlacesSidebar = cast(GtkPlacesSidebar*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPlacesSidebar* gtkPlacesSidebar, bool ownedRef = false)
	{
		this.gtkPlacesSidebar = gtkPlacesSidebar;
		super(cast(GtkScrolledWindow*)gtkPlacesSidebar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_places_sidebar_get_type();
	}

	/**
	 * Creates a new #GtkPlacesSidebar widget.
	 *
	 * The application should connect to at least the
	 * #GtkPlacesSidebar::open-location signal to be notified
	 * when the user makes a selection in the sidebar.
	 *
	 * Return: a newly created #GtkPlacesSidebar
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_places_sidebar_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkPlacesSidebar*) p);
	}

	/**
	 * Applications may want to present some folders in the places sidebar if
	 * they could be immediately useful to users.  For example, a drawing
	 * program could add a “/usr/share/clipart” location when the sidebar is
	 * being used in an “Insert Clipart” dialog box.
	 *
	 * This function adds the specified @location to a special place for immutable
	 * shortcuts.  The shortcuts are application-specific; they are not shared
	 * across applications, and they are not persistent.  If this function
	 * is called multiple times with different locations, then they are added
	 * to the sidebar’s list in the same order as the function is called.
	 *
	 * Params:
	 *     location = location to add as an application-specific shortcut
	 *
	 * Since: 3.10
	 */
	public void addShortcut(FileIF location)
	{
		gtk_places_sidebar_add_shortcut(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_local_only().
	 *
	 * Return: %TRUE if the sidebar will only show local files.
	 *
	 * Since: 3.12
	 */
	public bool getLocalOnly()
	{
		return gtk_places_sidebar_get_local_only(gtkPlacesSidebar) != 0;
	}

	/**
	 * Gets the currently-selected location in the @sidebar.  This can be #NULL when
	 * nothing is selected, for example, when gtk_places_sidebar_set_location() has
	 * been called with a location that is not among the sidebar’s list of places to
	 * show.
	 *
	 * You can use this function to get the selection in the @sidebar.  Also, if you
	 * connect to the #GtkPlacesSidebar::populate-popup signal, you can use this
	 * function to get the location that is being referred to during the callbacks
	 * for your menu items.
	 *
	 * Return: a GFile with the selected location, or #NULL if nothing is visually
	 *     selected.
	 *
	 * Since: 3.10
	 */
	public FileIF getLocation()
	{
		auto p = gtk_places_sidebar_get_location(gtkPlacesSidebar);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File, FileIF)(cast(GFile*) p, true);
	}

	/**
	 * This function queries the bookmarks added by the user to the places sidebar,
	 * and returns one of them.  This function is used by #GtkFileChooser to implement
	 * the “Alt-1”, “Alt-2”, etc. shortcuts, which activate the cooresponding bookmark.
	 *
	 * Params:
	 *     n = index of the bookmark to query
	 *
	 * Return: The bookmark specified by the index @n, or
	 *     #NULL if no such index exist.  Note that the indices start at 0, even though
	 *     the file chooser starts them with the keyboard shortcut “Alt-1”.
	 *
	 * Since: 3.10
	 */
	public FileIF getNthBookmark(int n)
	{
		auto p = gtk_places_sidebar_get_nth_bookmark(gtkPlacesSidebar, n);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File, FileIF)(cast(GFile*) p, true);
	}

	/**
	 * Gets the open flags.
	 *
	 * Return: the #GtkPlacesOpenFlags of @sidebar
	 *
	 * Since: 3.10
	 */
	public GtkPlacesOpenFlags getOpenFlags()
	{
		return gtk_places_sidebar_get_open_flags(gtkPlacesSidebar);
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
	 *
	 * Deprecated: It is recommended to group this functionality with the drives
	 * and network location under the new 'Other Location' item
	 *
	 * Return: %TRUE if the sidebar will display a “Connect to Server” item.
	 */
	public bool getShowConnectToServer()
	{
		return gtk_places_sidebar_get_show_connect_to_server(gtkPlacesSidebar) != 0;
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_desktop()
	 *
	 * Return: %TRUE if the sidebar will display a builtin shortcut to the desktop folder.
	 *
	 * Since: 3.10
	 */
	public bool getShowDesktop()
	{
		return gtk_places_sidebar_get_show_desktop(gtkPlacesSidebar) != 0;
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_enter_location()
	 *
	 * Return: %TRUE if the sidebar will display an “Enter Location” item.
	 *
	 * Since: 3.14
	 */
	public bool getShowEnterLocation()
	{
		return gtk_places_sidebar_get_show_enter_location(gtkPlacesSidebar) != 0;
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_other_locations()
	 *
	 * Return: %TRUE if the sidebar will display an “Other Locations” item.
	 *
	 * Since: 3.18
	 */
	public bool getShowOtherLocations()
	{
		return gtk_places_sidebar_get_show_other_locations(gtkPlacesSidebar) != 0;
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_recent()
	 *
	 * Return: %TRUE if the sidebar will display a builtin shortcut for recent files
	 *
	 * Since: 3.18
	 */
	public bool getShowRecent()
	{
		return gtk_places_sidebar_get_show_recent(gtkPlacesSidebar) != 0;
	}

	/**
	 * Returns the value previously set with gtk_places_sidebar_set_show_trash()
	 *
	 * Return: %TRUE if the sidebar will display a “Trash” item.
	 *
	 * Since: 3.18
	 */
	public bool getShowTrash()
	{
		return gtk_places_sidebar_get_show_trash(gtkPlacesSidebar) != 0;
	}

	/**
	 * Gets the list of shortcuts.
	 *
	 * Return: A #GSList of #GFile of the locations that have been added as
	 *     application-specific shortcuts with gtk_places_sidebar_add_shortcut().
	 *     To free this list, you can use
	 *     |[<!-- language="C" -->
	 *     g_slist_free_full (list, (GDestroyNotify) g_object_unref);
	 *     ]|
	 *
	 * Since: 3.10
	 */
	public ListSG listShortcuts()
	{
		auto p = gtk_places_sidebar_list_shortcuts(gtkPlacesSidebar);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p, true);
	}

	/**
	 * Removes an application-specific shortcut that has been previously been
	 * inserted with gtk_places_sidebar_add_shortcut().  If the @location is not a
	 * shortcut in the sidebar, then nothing is done.
	 *
	 * Params:
	 *     location = location to remove
	 *
	 * Since: 3.10
	 */
	public void removeShortcut(FileIF location)
	{
		gtk_places_sidebar_remove_shortcut(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}

	/**
	 * Make the GtkPlacesSidebar show drop targets, so it can show the available
	 * drop targets and a "new bookmark" row. This improves the Drag-and-Drop
	 * experience of the user and allows applications to show all available
	 * drop targets at once.
	 *
	 * This needs to be called when the application is aware of an ongoing drag
	 * that might target the sidebar. The drop-targets-visible state will be unset
	 * automatically if the drag finishes in the GtkPlacesSidebar. You only need
	 * to unset the state when the drag ends on some other widget on your application.
	 *
	 * Params:
	 *     visible = whether to show the valid targets or not.
	 *     context = drag context used to ask the source about the action that wants to
	 *         perform, so hints are more accurate.
	 *
	 * Since: 3.18
	 */
	public void setDropTargetsVisible(bool visible, DragContext context)
	{
		gtk_places_sidebar_set_drop_targets_visible(gtkPlacesSidebar, visible, (context is null) ? null : context.getDragContextStruct());
	}

	/**
	 * Sets whether the @sidebar should only show local files.
	 *
	 * Params:
	 *     localOnly = whether to show only local files
	 *
	 * Since: 3.12
	 */
	public void setLocalOnly(bool localOnly)
	{
		gtk_places_sidebar_set_local_only(gtkPlacesSidebar, localOnly);
	}

	/**
	 * Sets the location that is being shown in the widgets surrounding the
	 * @sidebar, for example, in a folder view in a file manager.  In turn, the
	 * @sidebar will highlight that location if it is being shown in the list of
	 * places, or it will unhighlight everything if the @location is not among the
	 * places in the list.
	 *
	 * Params:
	 *     location = location to select, or #NULL for no current path
	 *
	 * Since: 3.10
	 */
	public void setLocation(FileIF location)
	{
		gtk_places_sidebar_set_location(gtkPlacesSidebar, (location is null) ? null : location.getFileStruct());
	}

	/**
	 * Sets the way in which the calling application can open new locations from
	 * the places sidebar.  For example, some applications only open locations
	 * “directly” into their main view, while others may support opening locations
	 * in a new notebook tab or a new window.
	 *
	 * This function is used to tell the places @sidebar about the ways in which the
	 * application can open new locations, so that the sidebar can display (or not)
	 * the “Open in new tab” and “Open in new window” menu items as appropriate.
	 *
	 * When the #GtkPlacesSidebar::open-location signal is emitted, its flags
	 * argument will be set to one of the @flags that was passed in
	 * gtk_places_sidebar_set_open_flags().
	 *
	 * Passing 0 for @flags will cause #GTK_PLACES_OPEN_NORMAL to always be sent
	 * to callbacks for the “open-location” signal.
	 *
	 * Params:
	 *     flags = Bitmask of modes in which the calling application can open locations
	 *
	 * Since: 3.10
	 */
	public void setOpenFlags(GtkPlacesOpenFlags flags)
	{
		gtk_places_sidebar_set_open_flags(gtkPlacesSidebar, flags);
	}

	/**
	 * Sets whether the @sidebar should show an item for connecting to a network server;
	 * this is off by default. An application may want to turn this on if it implements
	 * a way for the user to connect to network servers directly.
	 *
	 * If you enable this, you should connect to the
	 * #GtkPlacesSidebar::show-connect-to-server signal.
	 *
	 * Deprecated: It is recommended to group this functionality with the drives
	 * and network location under the new 'Other Location' item
	 *
	 * Params:
	 *     showConnectToServer = whether to show an item for the Connect to Server command
	 *
	 * Since: 3.10
	 */
	public void setShowConnectToServer(bool showConnectToServer)
	{
		gtk_places_sidebar_set_show_connect_to_server(gtkPlacesSidebar, showConnectToServer);
	}

	/**
	 * Sets whether the @sidebar should show an item for the Desktop folder.
	 * The default value for this option is determined by the desktop
	 * environment and the user’s configuration, but this function can be
	 * used to override it on a per-application basis.
	 *
	 * Params:
	 *     showDesktop = whether to show an item for the Desktop folder
	 *
	 * Since: 3.10
	 */
	public void setShowDesktop(bool showDesktop)
	{
		gtk_places_sidebar_set_show_desktop(gtkPlacesSidebar, showDesktop);
	}

	/**
	 * Sets whether the @sidebar should show an item for entering a location;
	 * this is off by default. An application may want to turn this on if manually
	 * entering URLs is an expected user action.
	 *
	 * If you enable this, you should connect to the
	 * #GtkPlacesSidebar::show-enter-location signal.
	 *
	 * Params:
	 *     showEnterLocation = whether to show an item to enter a location
	 *
	 * Since: 3.14
	 */
	public void setShowEnterLocation(bool showEnterLocation)
	{
		gtk_places_sidebar_set_show_enter_location(gtkPlacesSidebar, showEnterLocation);
	}

	/**
	 * Sets whether the @sidebar should show an item for the application to show
	 * an Other Locations view; this is off by default. When set to %TRUE, persistent
	 * devices such as hard drives are hidden, otherwise they are shown in the sidebar.
	 * An application may want to turn this on if it implements a way for the user to
	 * see and interact with drives and network servers directly.
	 *
	 * If you enable this, you should connect to the
	 * #GtkPlacesSidebar::show-other-locations signal.
	 *
	 * Params:
	 *     showOtherLocations = whether to show an item for the Other Locations view
	 *
	 * Since: 3.18
	 */
	public void setShowOtherLocations(bool showOtherLocations)
	{
		gtk_places_sidebar_set_show_other_locations(gtkPlacesSidebar, showOtherLocations);
	}

	/**
	 * Sets whether the @sidebar should show an item for recent files.
	 * The default value for this option is determined by the desktop
	 * environment, but this function can be used to override it on a
	 * per-application basis.
	 *
	 * Params:
	 *     showRecent = whether to show an item for recent files
	 *
	 * Since: 3.18
	 */
	public void setShowRecent(bool showRecent)
	{
		gtk_places_sidebar_set_show_recent(gtkPlacesSidebar, showRecent);
	}

	/**
	 * Sets whether the @sidebar should show an item for the Trash location.
	 *
	 * Params:
	 *     showTrash = whether to show an item for the Trash location
	 *
	 * Since: 3.18
	 */
	public void setShowTrash(bool showTrash)
	{
		gtk_places_sidebar_set_show_trash(gtkPlacesSidebar, showTrash);
	}

	int[string] connectedSignals;

	int delegate(int, PlacesSidebar)[] onDragActionAskListeners;
	/**
	 * The places sidebar emits this signal when it needs to ask the application
	 * to pop up a menu to ask the user for which drag action to perform.
	 *
	 * Params:
	 *     actions = Possible drag actions that need to be asked for.
	 *
	 * Return: the final drag action that the sidebar should pass to the drag side
	 *     of the drag-and-drop operation.
	 *
	 * Since: 3.10
	 */
	void addOnDragActionAsk(int delegate(int, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drag-action-ask" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drag-action-ask",
				cast(GCallback)&callBackDragActionAsk,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drag-action-ask"] = 1;
		}
		onDragActionAskListeners ~= dlg;
	}
	extern(C) static int callBackDragActionAsk(GtkPlacesSidebar* placessidebarStruct, int actions, PlacesSidebar _placessidebar)
	{
		return _placessidebar.onDragActionAskListeners[0](actions, _placessidebar);
	}

	int delegate(DragContext, FileIF, ListG, PlacesSidebar)[] onDragActionRequestedListeners;
	/**
	 * When the user starts a drag-and-drop operation and the sidebar needs
	 * to ask the application for which drag action to perform, then the
	 * sidebar will emit this signal.
	 *
	 * The application can evaluate the @context for customary actions, or
	 * it can check the type of the files indicated by @source_file_list against the
	 * possible actions for the destination @dest_file.
	 *
	 * The drag action to use must be the return value of the signal handler.
	 *
	 * Params:
	 *     context = #GdkDragContext with information about the drag operation
	 *     destFile = #GFile with the tentative location that is being hovered for a drop
	 *     sourceFileList = List of #GFile that are being dragged
	 *
	 * Return: The drag action to use, for example, #GDK_ACTION_COPY
	 *     or #GDK_ACTION_MOVE, or 0 if no action is allowed here (i.e. drops
	 *     are not allowed in the specified @dest_file).
	 *
	 * Since: 3.10
	 */
	void addOnDragActionRequested(int delegate(DragContext, FileIF, ListG, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drag-action-requested" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drag-action-requested",
				cast(GCallback)&callBackDragActionRequested,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drag-action-requested"] = 1;
		}
		onDragActionRequestedListeners ~= dlg;
	}
	extern(C) static int callBackDragActionRequested(GtkPlacesSidebar* placessidebarStruct, GdkDragContext* context, GFile* destFile, GList* sourceFileList, PlacesSidebar _placessidebar)
	{
		return _placessidebar.onDragActionRequestedListeners[0](ObjectG.getDObject!(DragContext)(context), ObjectG.getDObject!(File, FileIF)(destFile), new ListG(sourceFileList), _placessidebar);
	}

	void delegate(FileIF, ListG, int, PlacesSidebar)[] onDragPerformDropListeners;
	/**
	 * The places sidebar emits this signal when the user completes a
	 * drag-and-drop operation and one of the sidebar's items is the
	 * destination.  This item is in the @dest_file, and the
	 * @source_file_list has the list of files that are dropped into it and
	 * which should be copied/moved/etc. based on the specified @action.
	 *
	 * Params:
	 *     destFile = Destination #GFile.
	 *     sourceFileList = #GList of #GFile that got dropped.
	 *     action = Drop action to perform.
	 *
	 * Since: 3.10
	 */
	void addOnDragPerformDrop(void delegate(FileIF, ListG, int, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "drag-perform-drop" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"drag-perform-drop",
				cast(GCallback)&callBackDragPerformDrop,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["drag-perform-drop"] = 1;
		}
		onDragPerformDropListeners ~= dlg;
	}
	extern(C) static void callBackDragPerformDrop(GtkPlacesSidebar* placessidebarStruct, GFile* destFile, GList* sourceFileList, int action, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(FileIF, ListG, int, PlacesSidebar) dlg; _placessidebar.onDragPerformDropListeners )
		{
			dlg(ObjectG.getDObject!(File, FileIF)(destFile), new ListG(sourceFileList), action, _placessidebar);
		}
	}

	void delegate(FileIF, GtkPlacesOpenFlags, PlacesSidebar)[] onOpenLocationListeners;
	/**
	 * The places sidebar emits this signal when the user selects a location
	 * in it.  The calling application should display the contents of that
	 * location; for example, a file manager should show a list of files in
	 * the specified location.
	 *
	 * Params:
	 *     location = #GFile to which the caller should switch.
	 *     openFlags = a single value from #GtkPlacesOpenFlags specifying how the @location should be opened.
	 *
	 * Since: 3.10
	 */
	void addOnOpenLocation(void delegate(FileIF, GtkPlacesOpenFlags, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "open-location" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"open-location",
				cast(GCallback)&callBackOpenLocation,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["open-location"] = 1;
		}
		onOpenLocationListeners ~= dlg;
	}
	extern(C) static void callBackOpenLocation(GtkPlacesSidebar* placessidebarStruct, GFile* location, GtkPlacesOpenFlags openFlags, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(FileIF, GtkPlacesOpenFlags, PlacesSidebar) dlg; _placessidebar.onOpenLocationListeners )
		{
			dlg(ObjectG.getDObject!(File, FileIF)(location), openFlags, _placessidebar);
		}
	}

	void delegate(Widget, FileIF, VolumeIF, PlacesSidebar)[] onPopulatePopupListeners;
	/**
	 * The places sidebar emits this signal when the user invokes a contextual
	 * popup on one of its items. In the signal handler, the application may
	 * add extra items to the menu as appropriate. For example, a file manager
	 * may want to add a "Properties" command to the menu.
	 *
	 * It is not necessary to store the @selected_item for each menu item;
	 * during their callbacks, the application can use gtk_places_sidebar_get_location()
	 * to get the file to which the item refers.
	 *
	 * The @selected_item argument may be %NULL in case the selection refers to
	 * a volume. In this case, @selected_volume will be non-%NULL. In this case,
	 * the calling application will have to g_object_ref() the @selected_volume and
	 * keep it around to use it in the callback.
	 *
	 * The @container and all its contents are destroyed after the user
	 * dismisses the popup. The popup is re-created (and thus, this signal is
	 * emitted) every time the user activates the contextual menu.
	 *
	 * Before 3.18, the @container always was a #GtkMenu, and you were expected
	 * to add your items as #GtkMenuItems. Since 3.18, the popup may be implemented
	 * as a #GtkPopover, in which case @container will be something else, e.g. a
	 * #GtkBox, to which you may add #GtkModelButtons or other widgets, such as
	 * #GtkEntries, #GtkSpinButtons, etc. If your application can deal with this
	 * situation, you can set #GtkPlacesSidebar::populate-all to %TRUE to request
	 * that this signal is emitted for populating popovers as well.
	 *
	 * Params:
	 *     container = a #GtkMenu or another #GtkContainer
	 *     selectedItem = #GFile with the item to which the popup should refer, or #NULL in the case of a @selected_volume.
	 *     selectedVolume = #GVolume if the selected item is a volume, or #NULL if it is a file.
	 *
	 * Since: 3.10
	 */
	void addOnPopulatePopup(void delegate(Widget, FileIF, VolumeIF, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "populate-popup" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"populate-popup",
				cast(GCallback)&callBackPopulatePopup,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkPlacesSidebar* placessidebarStruct, GtkWidget* container, GFile* selectedItem, GVolume* selectedVolume, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(Widget, FileIF, VolumeIF, PlacesSidebar) dlg; _placessidebar.onPopulatePopupListeners )
		{
			dlg(ObjectG.getDObject!(Widget)(container), ObjectG.getDObject!(File, FileIF)(selectedItem), ObjectG.getDObject!(Volume, VolumeIF)(selectedVolume), _placessidebar);
		}
	}

	void delegate(PlacesSidebar)[] onShowConnectToServerListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present an way to connect directly to a network server.
	 * For example, the application may bring up a dialog box asking for
	 * a URL like "sftp://ftp.example.com".  It is up to the application to create
	 * the corresponding mount by using, for example, g_file_mount_enclosing_volume().
	 *
	 * Deprecated: use the #GtkPlacesSidebar::show-other-locations signal
	 * to connect to network servers.
	 */
	void addOnShowConnectToServer(void delegate(PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-connect-to-server" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-connect-to-server",
				cast(GCallback)&callBackShowConnectToServer,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-connect-to-server"] = 1;
		}
		onShowConnectToServerListeners ~= dlg;
	}
	extern(C) static void callBackShowConnectToServer(GtkPlacesSidebar* placessidebarStruct, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(PlacesSidebar) dlg; _placessidebar.onShowConnectToServerListeners )
		{
			dlg(_placessidebar);
		}
	}

	void delegate(PlacesSidebar)[] onShowEnterLocationListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present an way to directly enter a location.
	 * For example, the application may bring up a dialog box asking for
	 * a URL like "http://http.example.com".
	 *
	 * Since: 3.14
	 */
	void addOnShowEnterLocation(void delegate(PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-enter-location" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-enter-location",
				cast(GCallback)&callBackShowEnterLocation,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-enter-location"] = 1;
		}
		onShowEnterLocationListeners ~= dlg;
	}
	extern(C) static void callBackShowEnterLocation(GtkPlacesSidebar* placessidebarStruct, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(PlacesSidebar) dlg; _placessidebar.onShowEnterLocationListeners )
		{
			dlg(_placessidebar);
		}
	}

	void delegate(string, string, PlacesSidebar)[] onShowErrorMessageListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present an error message.  Most of these messages
	 * refer to mounting or unmounting media, for example, when a drive
	 * cannot be started for some reason.
	 *
	 * Params:
	 *     primary = primary message with a summary of the error to show.
	 *     secondary = secondary message with details of the error to show.
	 *
	 * Since: 3.10
	 */
	void addOnShowErrorMessage(void delegate(string, string, PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-error-message" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-error-message",
				cast(GCallback)&callBackShowErrorMessage,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-error-message"] = 1;
		}
		onShowErrorMessageListeners ~= dlg;
	}
	extern(C) static void callBackShowErrorMessage(GtkPlacesSidebar* placessidebarStruct, char* primary, char* secondary, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(string, string, PlacesSidebar) dlg; _placessidebar.onShowErrorMessageListeners )
		{
			dlg(Str.toString(primary), Str.toString(secondary), _placessidebar);
		}
	}

	void delegate(PlacesSidebar)[] onShowOtherLocationsListeners;
	/**
	 * The places sidebar emits this signal when it needs the calling
	 * application to present a way to show other locations e.g. drives
	 * and network access points.
	 * For example, the application may bring up a page showing persistent
	 * volumes and discovered network addresses.
	 *
	 * Since: 3.18
	 */
	void addOnShowOtherLocations(void delegate(PlacesSidebar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "show-other-locations" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"show-other-locations",
				cast(GCallback)&callBackShowOtherLocations,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["show-other-locations"] = 1;
		}
		onShowOtherLocationsListeners ~= dlg;
	}
	extern(C) static void callBackShowOtherLocations(GtkPlacesSidebar* placessidebarStruct, PlacesSidebar _placessidebar)
	{
		foreach ( void delegate(PlacesSidebar) dlg; _placessidebar.onShowOtherLocationsListeners )
		{
			dlg(_placessidebar);
		}
	}
}
