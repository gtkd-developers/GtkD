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


module gtk.AppChooserT;

public  import gio.AppInfoIF;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkAppChooser is an interface that can be implemented by widgets which
 * allow the user to choose an application (typically for the purpose of
 * opening a file). The main objects that implement this interface are
 * #GtkAppChooserWidget, #GtkAppChooserDialog and #GtkAppChooserButton.
 * 
 * Applications are represented by GIO #GAppInfo objects here.
 * GIO has a concept of recommended and fallback applications for a
 * given content type. Recommended applications are those that claim
 * to handle the content type itself, while fallback also includes
 * applications that handle a more generic content type. GIO also
 * knows the default and last-used application for a given content
 * type. The #GtkAppChooserWidget provides detailed control over
 * whether the shown list of applications should include default,
 * recommended or fallback applications.
 * 
 * To obtain the application that has been selected in a #GtkAppChooser,
 * use gtk_app_chooser_get_app_info().
 */
public template AppChooserT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkAppChooser* getAppChooserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkAppChooser*)getStruct();
	}


	/**
	 * Returns the currently selected application.
	 *
	 * Returns: a #GAppInfo for the currently selected
	 *     application, or %NULL if none is selected. Free with g_object_unref()
	 *
	 * Since: 3.0
	 */
	public AppInfoIF getAppInfo()
	{
		auto p = gtk_app_chooser_get_app_info(getAppChooserStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AppInfoIF)(cast(GAppInfo*) p, true);
	}

	/**
	 * Returns the current value of the #GtkAppChooser:content-type property.
	 *
	 * Returns: the content type of @self. Free with g_free()
	 *
	 * Since: 3.0
	 */
	public string getContentType()
	{
		auto retStr = gtk_app_chooser_get_content_type(getAppChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Reloads the list of applications.
	 *
	 * Since: 3.0
	 */
	public void refresh()
	{
		gtk_app_chooser_refresh(getAppChooserStruct());
	}
}
