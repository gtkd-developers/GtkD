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
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * #GtkApplicationWindow is a #GtkWindow subclass that offers some
 * extra functionality for better integration with #GtkApplication
 * features.  Notably, it can handle both the application menu as well
 * as the menubar. See gtk_application_set_app_menu() and
 * gtk_application_set_menubar().
 * 
 * This class implements the #GActionGroup and #GActionMap interfaces,
 * to let you add window-specific actions that will be exported by the
 * associated #GtkApplication, together with its application-wide
 * actions.  Window-specific actions are prefixed with the “win.”
 * prefix and application-wide actions are prefixed with the “app.”
 * prefix.  Actions must be addressed with the prefixed name when
 * referring to them from a #GMenuModel.
 * 
 * Note that widgets that are placed inside a #GtkApplicationWindow
 * can also activate these actions, if they implement the
 * #GtkActionable interface.
 * 
 * As with #GtkApplication, the GDK lock will be acquired when
 * processing actions arriving from other processes and should therefore
 * be held when activating actions locally (if GDK threads are enabled).
 * 
 * The settings #GtkSettings:gtk-shell-shows-app-menu and
 * #GtkSettings:gtk-shell-shows-menubar tell GTK+ whether the
 * desktop environment is showing the application menu and menubar
 * models outside the application as part of the desktop shell.
 * For instance, on OS X, both menus will be displayed remotely;
 * on Windows neither will be. gnome-shell (starting with version 3.4)
 * will display the application menu, but not the menubar.
 * 
 * If the desktop environment does not display the menubar, then
 * #GtkApplicationWindow will automatically show a #GtkMenuBar for it.
 * This behaviour can be overridden with the #GtkApplicationWindow:show-menubar
 * property. If the desktop environment does not display the application
 * menu, then it will automatically be included in the menubar or in the
 * windows client-side decorations.
 * 
 * ## A GtkApplicationWindow with a menubar
 * 
 * |[<!-- language="C" -->
 * app = gtk_application_new ();
 * 
 * builder = gtk_builder_new_from_string (
 * "<interface>"
 * "  <menu id='menubar'>"
 * "    <submenu label='_Edit'>"
 * "      <item label='_Copy' action='win.copy'/>"
 * "      <item label='_Paste' action='win.paste'/>"
 * "    </submenu>"
 * "  </menu>"
 * "</interface>",
 * -1);
 * 
 * menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
 * "menubar"));
 * gtk_application_set_menubar (G_APPLICATION (app), menubar);
 * g_object_unref (builder);
 * 
 * ...
 * 
 * window = gtk_application_window_new (app);
 * ]|
 * 
 * ## Handling fallback yourself
 * 
 * [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/sunny.c)
 * 
 * The XML format understood by #GtkBuilder for #GMenuModel consists
 * of a toplevel `<menu>` element, which contains one or more `<item>`
 * elements. Each `<item>` element contains `<attribute>` and `<link>`
 * elements with a mandatory name attribute. `<link>` elements have the
 * same content model as `<menu>`. Instead of `<link name="submenu>` or
 * `<link name="section">`, you can use `<submenu>` or `<section>`
 * elements.
 * 
 * Attribute values can be translated using gettext, like other #GtkBuilder
 * content. `<attribute>` elements can be marked for translation with a
 * `translatable="yes"` attribute. It is also possible to specify message
 * context and translator comments, using the context and comments attributes.
 * To make use of this, the #GtkBuilder must have been given the gettext
 * domain to use.
 * 
 * The following attributes are used when constructing menu items:
 * - "label": a user-visible string to display
 * - "action": the prefixed name of the action to trigger
 * - "target": the parameter to use when activating the action
 * - "icon" and "verb-icon": names of icons that may be displayed
 * - "submenu-action": name of an action that may be used to determine
 * if a submenu can be opened
 * - "hidden-when": a string used to determine when the item will be hidden.
 * Possible values include "action-disabled", "action-missing", "macos-menubar".
 * 
 * The following attributes are used when constructing sections:
 * - "label": a user-visible string to use as section heading
 * - "display-hint": a string used to determine special formatting for the section.
 * Possible values include "horizontal-buttons".
 * 
 * The following attributes are used when constructing submenus:
 * - "label": a user-visible string to display
 * - "icon": icon name to display
 */
public class ApplicationWindow : Window, ActionGroupIF, ActionMapIF
{
	/** the main Gtk struct */
	protected GtkApplicationWindow* gtkApplicationWindow;

	/** Get the main Gtk struct */
	public GtkApplicationWindow* getApplicationWindowStruct()
	{
		return gtkApplicationWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkApplicationWindow;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkApplicationWindow = cast(GtkApplicationWindow*)obj;
		super.setStruct(obj);
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
	 * Creates a new #GtkApplicationWindow.
	 *
	 * Params:
	 *     application = a #GtkApplication
	 *
	 * Return: a newly created #GtkApplicationWindow
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Application application)
	{
		auto p = gtk_application_window_new((application is null) ? null : application.getGtkApplicationStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkApplicationWindow*) p);
	}

	/**
	 * Gets the #GtkShortcutsWindow that has been set up with
	 * a prior call to gtk_application_window_set_help_overlay().
	 *
	 * Return: the help overlay associated with @window, or %NULL
	 *
	 * Since: 3.20
	 */
	public ShortcutsWindow getHelpOverlay()
	{
		auto p = gtk_application_window_get_help_overlay(gtkApplicationWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ShortcutsWindow)(cast(GtkShortcutsWindow*) p);
	}

	/**
	 * Returns the unique ID of the window. If the window has not yet been added to
	 * a #GtkApplication, returns `0`.
	 *
	 * Return: the unique ID for @window, or `0` if the window
	 *     has not yet been added to a #GtkApplication
	 *
	 * Since: 3.6
	 */
	public uint getId()
	{
		return gtk_application_window_get_id(gtkApplicationWindow);
	}

	/**
	 * Returns whether the window will display a menubar for the app menu
	 * and menubar as needed.
	 *
	 * Return: %TRUE if @window will display a menubar when needed
	 *
	 * Since: 3.4
	 */
	public bool getShowMenubar()
	{
		return gtk_application_window_get_show_menubar(gtkApplicationWindow) != 0;
	}

	/**
	 * Associates a shortcuts window with the application window, and
	 * sets up an action with the name win.show-help-overlay to present
	 * it.
	 *
	 * Params:
	 *     helpOverlay = a #GtkShortcutsWindow
	 *
	 * Since: 3.20
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
	 *
	 * Since: 3.4
	 */
	public void setShowMenubar(bool showMenubar)
	{
		gtk_application_window_set_show_menubar(gtkApplicationWindow, showMenubar);
	}
}
