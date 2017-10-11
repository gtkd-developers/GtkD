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


module gtk.Settings;

private import gdk.Screen;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gtk.StyleProviderIF;
private import gtk.StyleProviderT;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkSettings provide a mechanism to share global settings between
 * applications.
 * 
 * On the X window system, this sharing is realized by an
 * [XSettings](http://www.freedesktop.org/wiki/Specifications/xsettings-spec)
 * manager that is usually part of the desktop environment, along with
 * utilities that let the user change these settings. In the absence of
 * an Xsettings manager, GTK+ reads default values for settings from
 * `settings.ini` files in
 * `/etc/gtk-3.0`, `$XDG_CONFIG_DIRS/gtk-3.0`
 * and `$XDG_CONFIG_HOME/gtk-3.0`.
 * These files must be valid key files (see #GKeyFile), and have
 * a section called Settings. Themes can also provide default values
 * for settings by installing a `settings.ini` file
 * next to their `gtk.css` file.
 * 
 * Applications can override system-wide settings by setting the property
 * of the GtkSettings object with g_object_set(). This should be restricted
 * to special cases though; GtkSettings are not meant as an application
 * configuration facility. When doing so, you need to be aware that settings
 * that are specific to individual widgets may not be available before the
 * widget type has been realized at least once. The following example
 * demonstrates a way to do this:
 * |[<!-- language="C" -->
 * gtk_init (&argc, &argv);
 * 
 * // make sure the type is realized
 * g_type_class_unref (g_type_class_ref (GTK_TYPE_IMAGE_MENU_ITEM));
 * 
 * g_object_set (gtk_settings_get_default (), "gtk-enable-animations", FALSE, NULL);
 * ]|
 * 
 * There is one GtkSettings instance per screen. It can be obtained with
 * gtk_settings_get_for_screen(), but in many cases, it is more convenient
 * to use gtk_widget_get_settings(). gtk_settings_get_default() returns the
 * GtkSettings instance for the default screen.
 */
public class Settings : ObjectG, StyleProviderIF
{
	/** the main Gtk struct */
	protected GtkSettings* gtkSettings;

	/** Get the main Gtk struct */
	public GtkSettings* getSettingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSettings;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSettings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSettings* gtkSettings, bool ownedRef = false)
	{
		this.gtkSettings = gtkSettings;
		super(cast(GObject*)gtkSettings, ownedRef);
	}

	// add the StyleProvider capabilities
	mixin StyleProviderT!(GtkSettings);


	/** */
	public static GType getType()
	{
		return gtk_settings_get_type();
	}

	/**
	 * Gets the #GtkSettings object for the default GDK screen, creating
	 * it if necessary. See gtk_settings_get_for_screen().
	 *
	 * Returns: a #GtkSettings object. If there is
	 *     no default screen, then returns %NULL.
	 */
	public static Settings getDefault()
	{
		auto p = gtk_settings_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
	}

	/**
	 * Gets the #GtkSettings object for @screen, creating it if necessary.
	 *
	 * Params:
	 *     screen = a #GdkScreen.
	 *
	 * Returns: a #GtkSettings object.
	 *
	 * Since: 2.2
	 */
	public static Settings getForScreen(Screen screen)
	{
		auto p = gtk_settings_get_for_screen((screen is null) ? null : screen.getScreenStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
	}

	/**
	 *
	 *
	 * Deprecated: This function is not useful outside GTK+.
	 */
	public static void installProperty(ParamSpec pspec)
	{
		gtk_settings_install_property((pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 *
	 *
	 * Deprecated: This function is not useful outside GTK+.
	 */
	public static void installPropertyParser(ParamSpec pspec, GtkRcPropertyParser parser)
	{
		gtk_settings_install_property_parser((pspec is null) ? null : pspec.getParamSpecStruct(), parser);
	}

	/**
	 * Undoes the effect of calling g_object_set() to install an
	 * application-specific value for a setting. After this call,
	 * the setting will again follow the session-wide value for
	 * this setting.
	 *
	 * Params:
	 *     name = the name of the setting to reset
	 *
	 * Since: 3.20
	 */
	public void resetProperty(string name)
	{
		gtk_settings_reset_property(gtkSettings, Str.toStringz(name));
	}

	/**
	 *
	 *
	 * Deprecated: Use g_object_set() instead.
	 */
	public void setDoubleProperty(string name, double vDouble, string origin)
	{
		gtk_settings_set_double_property(gtkSettings, Str.toStringz(name), vDouble, Str.toStringz(origin));
	}

	/**
	 *
	 *
	 * Deprecated: Use g_object_set() instead.
	 */
	public void setLongProperty(string name, glong vLong, string origin)
	{
		gtk_settings_set_long_property(gtkSettings, Str.toStringz(name), vLong, Str.toStringz(origin));
	}

	/**
	 *
	 *
	 * Deprecated: Use g_object_set() instead.
	 */
	public void setPropertyValue(string name, GtkSettingsValue* svalue)
	{
		gtk_settings_set_property_value(gtkSettings, Str.toStringz(name), svalue);
	}

	/**
	 *
	 *
	 * Deprecated: Use g_object_set() instead.
	 */
	public void setStringProperty(string name, string vString, string origin)
	{
		gtk_settings_set_string_property(gtkSettings, Str.toStringz(name), Str.toStringz(vString), Str.toStringz(origin));
	}
}
