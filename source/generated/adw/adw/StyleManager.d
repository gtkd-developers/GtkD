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


module adw.StyleManager;

private import adw.c.functions;
public  import adw.c.types;
private import gdk.Display;
private import gobject.ObjectG;


/**
 * A class for managing application-wide styling.
 * 
 * `AdwStyleManager` provides a way to query and influence the application
 * styles, such as whether to use dark or high contrast appearance.
 * 
 * It allows to set the color scheme via the
 * [property@StyleManager:color-scheme] property, and to query the current
 * appearance, as well as whether a system-wide color scheme preference exists.
 *
 * Since: 1.0
 */
public class StyleManager : ObjectG
{
	/** the main Gtk struct */
	protected AdwStyleManager* adwStyleManager;

	/** Get the main Gtk struct */
	public AdwStyleManager* getStyleManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwStyleManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwStyleManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwStyleManager* adwStyleManager, bool ownedRef = false)
	{
		this.adwStyleManager = adwStyleManager;
		super(cast(GObject*)adwStyleManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_style_manager_get_type();
	}

	/**
	 * Gets the default `AdwStyleManager` instance.
	 *
	 * It manages all [class@Gdk.Display] instances unless the style manager for
	 * that display has an override.
	 *
	 * See [func@StyleManager.get_for_display].
	 *
	 * Returns: the default style manager
	 *
	 * Since: 1.0
	 */
	public static StyleManager getDefault()
	{
		auto __p = adw_style_manager_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleManager)(cast(AdwStyleManager*) __p);
	}

	/**
	 * Gets the `AdwStyleManager` instance managing @display.
	 *
	 * It can be used to override styles for that specific display instead of the
	 * whole application.
	 *
	 * Most applications should use [func@StyleManager.get_default] instead.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 *
	 * Returns: the style manager for @display
	 *
	 * Since: 1.0
	 */
	public static StyleManager getForDisplay(Display display)
	{
		auto __p = adw_style_manager_get_for_display((display is null) ? null : display.getDisplayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleManager)(cast(AdwStyleManager*) __p);
	}

	/**
	 * Gets the requested application color scheme.
	 *
	 * Returns: the color scheme
	 *
	 * Since: 1.0
	 */
	public AdwColorScheme getColorScheme()
	{
		return adw_style_manager_get_color_scheme(adwStyleManager);
	}

	/**
	 * Gets whether the application is using dark appearance.
	 *
	 * Returns: whether the application is using dark appearance
	 *
	 * Since: 1.0
	 */
	public bool getDark()
	{
		return adw_style_manager_get_dark(adwStyleManager) != 0;
	}

	/**
	 * Gets the display the style manager is associated with.
	 *
	 * The display will be `NULL` for the style manager returned by
	 * [func@StyleManager.get_default].
	 *
	 * Returns: (nullable): the display
	 *
	 * Since: 1.0
	 */
	public Display getDisplay()
	{
		auto __p = adw_style_manager_get_display(adwStyleManager);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets whether the application is using high contrast appearance.
	 *
	 * Returns: whether the application is using high contrast appearance
	 *
	 * Since: 1.0
	 */
	public bool getHighContrast()
	{
		return adw_style_manager_get_high_contrast(adwStyleManager) != 0;
	}

	/**
	 * Gets whether the system supports color schemes.
	 *
	 * Returns: whether the system supports color schemes
	 *
	 * Since: 1.0
	 */
	public bool getSystemSupportsColorSchemes()
	{
		return adw_style_manager_get_system_supports_color_schemes(adwStyleManager) != 0;
	}

	/**
	 * Sets the requested application color scheme.
	 *
	 * The effective appearance will be decided based on the application color
	 * scheme and the system preferred color scheme. The
	 * [property@StyleManager:dark] property can be used to query the current
	 * effective appearance.
	 *
	 * Params:
	 *     colorScheme = the color scheme
	 *
	 * Since: 1.0
	 */
	public void setColorScheme(AdwColorScheme colorScheme)
	{
		adw_style_manager_set_color_scheme(adwStyleManager, colorScheme);
	}
}
