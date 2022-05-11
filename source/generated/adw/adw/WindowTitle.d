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


module adw.WindowTitle;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * A helper widget for setting a window's title and subtitle.
 * 
 * <picture>
 * <source srcset="window-title-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="window-title.png" alt="window-title">
 * </picture>
 * 
 * `AdwWindowTitle` shows a title and subtitle. It's intended to be used as the
 * title child of [class@Gtk.HeaderBar] or [class@HeaderBar].
 * 
 * ## CSS nodes
 * 
 * `AdwWindowTitle` has a single CSS node with name `windowtitle`.
 *
 * Since: 1.0
 */
public class WindowTitle : Widget
{
	/** the main Gtk struct */
	protected AdwWindowTitle* adwWindowTitle;

	/** Get the main Gtk struct */
	public AdwWindowTitle* getWindowTitleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwWindowTitle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwWindowTitle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwWindowTitle* adwWindowTitle, bool ownedRef = false)
	{
		this.adwWindowTitle = adwWindowTitle;
		super(cast(GtkWidget*)adwWindowTitle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_window_title_get_type();
	}

	/**
	 * Creates a new `AdwWindowTitle`.
	 *
	 * Params:
	 *     title = a title
	 *     subtitle = a subtitle
	 *
	 * Returns: the newly created `AdwWindowTitle`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, string subtitle)
	{
		auto __p = adw_window_title_new(Str.toStringz(title), Str.toStringz(subtitle));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwWindowTitle*) __p);
	}

	/**
	 * Gets the subtitle of @self.
	 *
	 * Returns: the subtitle
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(adw_window_title_get_subtitle(adwWindowTitle));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_window_title_get_title(adwWindowTitle));
	}

	/**
	 * Sets the subtitle of @self.
	 *
	 * Params:
	 *     subtitle = a subtitle
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		adw_window_title_set_subtitle(adwWindowTitle, Str.toStringz(subtitle));
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = a title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_window_title_set_title(adwWindowTitle, Str.toStringz(title));
	}
}
