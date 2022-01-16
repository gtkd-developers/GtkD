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


module adw.Bin;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * A widget with one child.
 * 
 * <picture>
 * <source srcset="bin-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="bin.png" alt="bin">
 * </picture>
 * 
 * The `AdwBin` widget has only one child, set with the [property@Bin:child]
 * property.
 * 
 * It is useful for deriving subclasses, since it provides common code needed
 * for handling a single child widget.
 *
 * Since: 1.0
 */
public class Bin : Widget
{
	/** the main Gtk struct */
	protected AdwBin* adwBin;

	/** Get the main Gtk struct */
	public AdwBin* getBinStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwBin;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwBin;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwBin* adwBin, bool ownedRef = false)
	{
		this.adwBin = adwBin;
		super(cast(GtkWidget*)adwBin, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_bin_get_type();
	}

	/**
	 * Creates a new `AdwBin`.
	 *
	 * Returns: the new created `AdwBin`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_bin_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwBin*) __p);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_bin_get_child(adwBin);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 *
	 * Since: 1.0
	 */
	public void setChild(Widget child)
	{
		adw_bin_set_child(adwBin, (child is null) ? null : child.getWidgetStruct());
	}
}
