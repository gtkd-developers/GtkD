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


module adw.Application;

private import adw.StyleManager;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Application : DGtkApplication = Application;


/**
 * A base class for Adwaita applications.
 * 
 * `AdwApplication` handles library initialization by calling [func@init] in the
 * default [signal@Gio.Application::startup] signal handler, in turn chaining up
 * as required by [class@Gtk.Application]. Therefore, any subclass of
 * `AdwApplication` should always chain up its `startup` handler before using
 * any Adwaita or GTK API.
 * 
 * ## Automatic Resources
 * 
 * `AdwApplication` will automatically load stylesheets located in the
 * application's resource base path (see
 * [method@Gio.Application.set_resource_base_path], if they're present.
 * 
 * They can be used to add custom styles to the application, as follows:
 * 
 * - `style.css` contains styles that are always present.
 * 
 * - `style-dark.css` contains styles only used when
 * [property@StyleManager:dark] is `TRUE`.
 * 
 * - `style-hc.css` contains styles used when the system high contrast
 * preference is enabled.
 * 
 * - `style-hc-dark.css` contains styles used when the system high contrast
 * preference is enabled and [property@StyleManager:dark] is `TRUE`.
 *
 * Since: 1.0
 */
public class Application : DGtkApplication
{
	/** the main Gtk struct */
	protected AdwApplication* adwApplication;

	/** Get the main Gtk struct */
	public AdwApplication* getAdwApplicationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwApplication;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwApplication;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwApplication* adwApplication, bool ownedRef = false)
	{
		this.adwApplication = adwApplication;
		super(cast(GtkApplication*)adwApplication, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_application_get_type();
	}

	/**
	 * Creates a new `AdwApplication`.
	 *
	 * If `application_id` is not `NULL`, then it must be valid. See
	 * [func@Gio.Application.id_is_valid].
	 *
	 * If no application ID is given then some features (most notably application
	 * uniqueness) will be disabled.
	 *
	 * Params:
	 *     applicationId = The application ID
	 *     flags = The application flags
	 *
	 * Returns: the newly created `AdwApplication`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string applicationId, GApplicationFlags flags)
	{
		auto __p = adw_application_new(Str.toStringz(applicationId), flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwApplication*) __p, true);
	}

	/**
	 * Gets the style manager for @self.
	 *
	 * Returns: the style manager
	 *
	 * Since: 1.0
	 */
	public StyleManager getStyleManager()
	{
		auto __p = adw_application_get_style_manager(adwApplication);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleManager)(cast(AdwStyleManager*) __p);
	}
}
