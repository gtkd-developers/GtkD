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

private import gdk.Display;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.StyleProviderIF;
private import gtk.StyleProviderT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSettings` provides a mechanism to share global settings between
 * applications.
 * 
 * On the X window system, this sharing is realized by an
 * [XSettings](http://www.freedesktop.org/wiki/Specifications/xsettings-spec)
 * manager that is usually part of the desktop environment, along with
 * utilities that let the user change these settings.
 * 
 * On Wayland, the settings are obtained either via a settings portal,
 * or by reading desktop settings from DConf.
 * 
 * In the absence of these sharing mechanisms, GTK reads default values for
 * settings from `settings.ini` files in `/etc/gtk-4.0`, `$XDG_CONFIG_DIRS/gtk-4.0`
 * and `$XDG_CONFIG_HOME/gtk-4.0`. These files must be valid key files (see
 * `GKeyFile`), and have a section called Settings. Themes can also provide
 * default values for settings by installing a `settings.ini` file
 * next to their `gtk.css` file.
 * 
 * Applications can override system-wide settings by setting the property
 * of the `GtkSettings` object with g_object_set(). This should be restricted
 * to special cases though; `GtkSettings` are not meant as an application
 * configuration facility.
 * 
 * There is one `GtkSettings` instance per display. It can be obtained with
 * [func@Gtk.Settings.get_for_display], but in many cases, it is more
 * convenient to use [method@Gtk.Widget.get_settings].
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
	 * Gets the `GtkSettings` object for the default display, creating
	 * it if necessary.
	 *
	 * See [func@Gtk.Settings.get_for_display].
	 *
	 * Returns: a `GtkSettings` object. If there is
	 *     no default display, then returns %NULL.
	 */
	public static Settings getDefault()
	{
		auto __p = gtk_settings_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) __p);
	}

	/**
	 * Gets the `GtkSettings` object for @display, creating it if necessary.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 *
	 * Returns: a `GtkSettings` object
	 */
	public static Settings getForDisplay(Display display)
	{
		auto __p = gtk_settings_get_for_display((display is null) ? null : display.getDisplayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) __p);
	}

	/**
	 * Undoes the effect of calling g_object_set() to install an
	 * application-specific value for a setting.
	 *
	 * After this call, the setting will again follow the session-wide
	 * value for this setting.
	 *
	 * Params:
	 *     name = the name of the setting to reset
	 */
	public void resetProperty(string name)
	{
		gtk_settings_reset_property(gtkSettings, Str.toStringz(name));
	}
}
