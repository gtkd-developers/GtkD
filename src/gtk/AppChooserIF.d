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
 * inFile  = GtkAppChooser.html
 * outPack = gtk
 * outFile = AppChooserIF
 * strct   = GtkAppChooser
 * realStrct=
 * ctorStrct=
 * clss    = AppChooserT
 * interf  = AppChooserIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_app_chooser_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.AppInfo
 * structWrap:
 * 	- GAppInfo* -> AppInfo
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AppChooserIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.AppInfo;




/**
 * GtkAppChooser is an interface that can be implemented by widgets which
 * allow the user to choose an application (typically for the purpose of
 * opening a file). The main objects that implement this interface are
 * GtkAppChooserWidget, GtkAppChooserDialog and GtkAppChooserButton.
 *
 * Applications are represented by GIO GAppInfo objects here.
 * GIO has a concept of recommended and fallback applications for a
 * given content type. Recommended applications are those that claim
 * to handle the content type itself, while fallback also includes
 * applications that handle a more generic content type. GIO also
 * knows the default and last-used application for a given content
 * type. The GtkAppChooserWidget provides detailed control over
 * whether the shown list of applications should include default,
 * recommended or fallback applications.
 *
 * To obtain the application that has been selected in a GtkAppChooser,
 * use gtk_app_chooser_get_app_info().
 */
public interface AppChooserIF
{
	
	
	public GtkAppChooser* getAppChooserTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Returns the currently selected application.
	 * Returns: a GAppInfo for the currently selected application, or NULL if none is selected. Free with g_object_unref(). [transfer full] Since 3.0
	 */
	public AppInfo getAppInfo();
	
	/**
	 * Returns the current value of the "content-type" property.
	 * Returns: the content type of self. Free with g_free() Since 3.0
	 */
	public string getContentType();
	
	/**
	 * Reloads the list of applications.
	 */
	public void refresh();
}
