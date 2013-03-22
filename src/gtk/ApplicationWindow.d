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
 * inFile  = GtkApplicationWindow.html
 * outPack = gtk
 * outFile = ApplicationWindow
 * strct   = GtkApplicationWindow
 * realStrct=
 * ctorStrct=
 * clss    = ApplicationWindow
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionGroupIF
 * 	- ActionMapIF
 * prefixes:
 * 	- gtk_application_window_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Application
 * 	- gio.ActionGroupIF
 * 	- gio.ActionGroupT
 * 	- gio.ActionMapIF
 * 	- gio.ActionMapT
 * structWrap:
 * 	- GtkApplication* -> Application
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ApplicationWindow;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Application;
private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.ActionMapIF;
private import gio.ActionMapT;



private import gtk.Window;

/**
 * GtkApplicationWindow is a GtkWindow subclass that offers some
 * extra functionality for better integration with GtkApplication
 * features. Notably, it can handle both the application menu as well
 * as the menubar. See gtk_application_set_app_menu() and
 * gtk_application_set_menubar().
 *
 * This class implements the GActionGroup and GActionMap interfaces,
 * to let you add window-specific actions that will be exported by the
 * associated GtkApplication, together with its application-wide
 * actions. Window-specific actions are prefixed with the "win."
 * prefix and application-wide actions are prefixed with the "app."
 * prefix. Actions must be addressed with the prefixed name when
 * referring to them from a GMenuModel.
 *
 * Note that widgets that are placed inside a GtkApplicationWindow
 * can also activate these actions, if they implement the
 * GtkActionable interface.
 *
 * As with GtkApplication, the GDK lock will be acquired when
 * processing actions arriving from other processes and should therefore
 * be held when activating actions locally (if GDK threads are enabled).
 *
 * The settings "gtk-shell-shows-app-menu" and
 * "gtk-shell-shows-menubar" tell GTK+ whether the
 * desktop environment is showing the application menu and menubar
 * models outside the application as part of the desktop shell.
 * For instance, on OS X, both menus will be displayed remotely;
 * on Windows neither will be. gnome-shell (starting with version 3.4)
 * will display the application menu, but not the menubar.
 *
 * If the desktop environment does not display the menubar, then
 * GtkApplicationWindow will automatically show a GtkMenuBar for it.
 * (see the GtkApplication docs for some screenshots of how this
 * looks on different platforms).
 * This behaviour can be overridden with the "show-menubar"
 * property. If the desktop environment does not display the application
 * menu, then it will automatically be included in the menubar.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * The XML format understood by GtkBuilder for GMenuModel consists
 * of a toplevel <menu> element, which contains
 * one or more <item> elements. Each
 * <item> element contains
 * <attribute> and <link>
 * elements with a mandatory name attribute.
 * <link> elements have the same content
 * model as <menu>.
 *
 * Attribute values can be translated using gettext, like other GtkBuilder
 * content. <attribute> elements can be marked for
 * translation with a translatable="yes" attribute.
 * It is also possible to specify message context and translator comments,
 * using the context and comments attributes. To make use of this, the
 * GtkBuilder must have been given the gettext domain to use.
 */
public class ApplicationWindow : Window, ActionGroupIF, ActionMapIF
{
	
	/** the main Gtk struct */
	protected GtkApplicationWindow* gtkApplicationWindow;
	
	
	public GtkApplicationWindow* getApplicationWindowStruct()
	{
		return gtkApplicationWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkApplicationWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkApplicationWindow* gtkApplicationWindow)
	{
		super(cast(GtkWindow*)gtkApplicationWindow);
		this.gtkApplicationWindow = gtkApplicationWindow;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkApplicationWindow = cast(GtkApplicationWindow*)obj;
	}
	
	// add the ActionGroup capabilities
	mixin ActionGroupT!(GtkApplicationWindow);
	
	// add the ActionMap capabilities
	mixin ActionMapT!(GtkApplicationWindow);
	
	/**
	 */
	
	/**
	 * Creates a new GtkApplicationWindow.
	 * Params:
	 * application = a GtkApplication
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Application application)
	{
		// GtkWidget * gtk_application_window_new (GtkApplication *application);
		auto p = gtk_application_window_new((application is null) ? null : application.getGtkApplicationStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_application_window_new((application is null) ? null : application.getGtkApplicationStruct())");
		}
		this(cast(GtkApplicationWindow*) p);
	}
	
	/**
	 * Sets whether the window will display a menubar for the app menu
	 * and menubar as needed.
	 * Params:
	 * showMenubar = whether to show a menubar when needed
	 * Since 3.4
	 */
	public void setShowMenubar(int showMenubar)
	{
		// void gtk_application_window_set_show_menubar  (GtkApplicationWindow *window,  gboolean show_menubar);
		gtk_application_window_set_show_menubar(gtkApplicationWindow, showMenubar);
	}
	
	/**
	 * Returns whether the window will display a menubar for the app menu
	 * and menubar as needed.
	 * Returns: TRUE if window will display a menubar when needed Since 3.4
	 */
	public int getShowMenubar()
	{
		// gboolean gtk_application_window_get_show_menubar  (GtkApplicationWindow *window);
		return gtk_application_window_get_show_menubar(gtkApplicationWindow);
	}
	
	/**
	 * Returns the unique ID of the window. If the window has not yet been added to
	 * a GtkApplication, returns 0.
	 * Returns: the unique ID for window, or 0 if the window has not yet been added to a GtkApplication Since 3.6
	 */
	public uint getId()
	{
		// guint gtk_application_window_get_id (GtkApplicationWindow *window);
		return gtk_application_window_get_id(gtkApplicationWindow);
	}
}
