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


module gtk.ApplicationWindow;

private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.ActionMapIF;
private import gio.ActionMapT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Application;
private import gtk.ShortcutsWindow;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkApplicationWindow` is a `GtkWindow` subclass that integrates with
 * `GtkApplication`.
 * 
 * Notably, `GtkApplicationWindow` can handle an application menubar.
 * 
 * This class implements the `GActionGroup` and `GActionMap` interfaces,
 * to let you add window-specific actions that will be exported by the
 * associated [class@Gtk.Application], together with its application-wide
 * actions. Window-specific actions are prefixed with the “win.”
 * prefix and application-wide actions are prefixed with the “app.”
 * prefix. Actions must be addressed with the prefixed name when
 * referring to them from a `GMenuModel`.
 * 
 * Note that widgets that are placed inside a `GtkApplicationWindow`
 * can also activate these actions, if they implement the
 * [iface@Gtk.Actionable] interface.
 * 
 * The settings [property@Gtk.Settings:gtk-shell-shows-app-menu] and
 * [property@Gtk.Settings:gtk-shell-shows-menubar] tell GTK whether the
 * desktop environment is showing the application menu and menubar
 * models outside the application as part of the desktop shell.
 * For instance, on OS X, both menus will be displayed remotely;
 * on Windows neither will be.
 * 
 * If the desktop environment does not display the menubar, then
 * `GtkApplicationWindow` will automatically show a menubar for it.
 * This behaviour can be overridden with the
 * [property@Gtk.ApplicationWindow:show-menubar] property. If the
 * desktop environment does not display the application menu, then
 * it will automatically be included in the menubar or in the windows
 * client-side decorations.
 * 
 * See [class@Gtk.PopoverMenu] for information about the XML language
 * used by `GtkBuilder` for menu models.
 * 
 * See also: [method@Gtk.Application.set_menubar].
 * 
 * ## A GtkApplicationWindow with a menubar
 * 
 * The code sample below shows how to set up a `GtkApplicationWindow`
 * with a menu bar defined on the [class@Gtk.Application]:
 * 
 * ```c
 * GtkApplication *app = gtk_application_new ("org.gtk.test", 0);
 * 
 * GtkBuilder *builder = gtk_builder_new_from_string (
 * "<interface>"
 * "  <menu id='menubar'>"
 * "    <submenu>"
 * "      <attribute name='label' translatable='yes'>_Edit</attribute>"
 * "      <item>"
 * "        <attribute name='label' translatable='yes'>_Copy</attribute>"
 * "        <attribute name='action'>win.copy</attribute>"
 * "      </item>"
 * "      <item>"
 * "        <attribute name='label' translatable='yes'>_Paste</attribute>"
 * "        <attribute name='action'>win.paste</attribute>"
 * "      </item>"
 * "    </submenu>"
 * "  </menu>"
 * "</interface>",
 * -1);
 * 
 * GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder, "menubar"));
 * gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
 * g_object_unref (builder);
 * 
 * // ...
 * 
 * GtkWidget *window = gtk_application_window_new (app);
 * ```
 */
public class ApplicationWindow : Window, ActionGroupIF, ActionMapIF
{
	/** the main Gtk struct */
	protected GtkApplicationWindow* gtkApplicationWindow;

	/** Get the main Gtk struct */
	public GtkApplicationWindow* getApplicationWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkApplicationWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkApplicationWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkApplicationWindow* gtkApplicationWindow, bool ownedRef = false)
	{
		this.gtkApplicationWindow = gtkApplicationWindow;
		super(cast(GtkWindow*)gtkApplicationWindow, ownedRef);
	}

	// add the ActionGroup capabilities
	mixin ActionGroupT!(GtkApplicationWindow);

	// add the ActionMap capabilities
	mixin ActionMapT!(GtkApplicationWindow);


	/** */
	public static GType getType()
	{
		return gtk_application_window_get_type();
	}

	/**
	 * Creates a new `GtkApplicationWindow`.
	 *
	 * Params:
	 *     application = a `GtkApplication`
	 *
	 * Returns: a newly created `GtkApplicationWindow`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Application application)
	{
		auto __p = gtk_application_window_new((application is null) ? null : application.getGtkApplicationStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkApplicationWindow*) __p);
	}

	/**
	 * Gets the `GtkShortcutsWindow` that is associated with @window.
	 *
	 * See [method@Gtk.ApplicationWindow.set_help_overlay].
	 *
	 * Returns: the help overlay associated
	 *     with @window
	 */
	public ShortcutsWindow getHelpOverlay()
	{
		auto __p = gtk_application_window_get_help_overlay(gtkApplicationWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ShortcutsWindow)(cast(GtkShortcutsWindow*) __p);
	}

	/**
	 * Returns the unique ID of the window.
	 *
	 * If the window has not yet been added to a `GtkApplication`, returns `0`.
	 *
	 * Returns: the unique ID for @window, or `0` if the window
	 *     has not yet been added to a `GtkApplication`
	 */
	public uint getId()
	{
		return gtk_application_window_get_id(gtkApplicationWindow);
	}

	/**
	 * Returns whether the window will display a menubar for the app menu
	 * and menubar as needed.
	 *
	 * Returns: %TRUE if @window will display a menubar when needed
	 */
	public bool getShowMenubar()
	{
		return gtk_application_window_get_show_menubar(gtkApplicationWindow) != 0;
	}

	/**
	 * Associates a shortcuts window with the application window.
	 *
	 * Additionally, sets up an action with the name
	 * `win.show-help-overlay` to present it.
	 *
	 * @window takes responsibility for destroying @help_overlay.
	 *
	 * Params:
	 *     helpOverlay = a `GtkShortcutsWindow`
	 */
	public void setHelpOverlay(ShortcutsWindow helpOverlay)
	{
		gtk_application_window_set_help_overlay(gtkApplicationWindow, (helpOverlay is null) ? null : helpOverlay.getShortcutsWindowStruct());
	}

	/**
	 * Sets whether the window will display a menubar for the app menu
	 * and menubar as needed.
	 *
	 * Params:
	 *     showMenubar = whether to show a menubar when needed
	 */
	public void setShowMenubar(bool showMenubar)
	{
		gtk_application_window_set_show_menubar(gtkApplicationWindow, showMenubar);
	}
}
