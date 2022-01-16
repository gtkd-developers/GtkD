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


module gtk.AppChooserIF;

private import gio.AppInfoIF;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkAppChooser` is an interface for widgets which allow the user to
 * choose an application.
 * 
 * The main objects that implement this interface are
 * [class@Gtk.AppChooserWidget],
 * [class@Gtk.AppChooserDialog] and [class@Gtk.AppChooserButton].
 * 
 * Applications are represented by GIO `GAppInfo` objects here.
 * GIO has a concept of recommended and fallback applications for a
 * given content type. Recommended applications are those that claim
 * to handle the content type itself, while fallback also includes
 * applications that handle a more generic content type. GIO also
 * knows the default and last-used application for a given content
 * type. The `GtkAppChooserWidget` provides detailed control over
 * whether the shown list of applications should include default,
 * recommended or fallback applications.
 * 
 * To obtain the application that has been selected in a `GtkAppChooser`,
 * use [method@Gtk.AppChooser.get_app_info].
 */
public interface AppChooserIF{
	/** Get the main Gtk struct */
	public GtkAppChooser* getAppChooserStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_app_chooser_get_type();
	}

	/**
	 * Returns the currently selected application.
	 *
	 * Returns: a `GAppInfo` for the
	 *     currently selected application
	 */
	public AppInfoIF getAppInfo();

	/**
	 * Returns the content type for which the `GtkAppChooser`
	 * shows applications.
	 *
	 * Returns: the content type of @self. Free with g_free()
	 */
	public string getContentType();

	/**
	 * Reloads the list of applications.
	 */
	public void refresh();
}
