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


module adw.ClampScrollable;

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
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;


/**
 * A scrollable [class@Clamp].
 * 
 * `AdwClampScrollable` is a variant of [class@Clamp] that implements the
 * [iface@Gtk.Scrollable] interface.
 * 
 * The primary use case for `AdwClampScrollable` is clamping
 * [class@Gtk.ListView].
 *
 * Since: 1.0
 */
public class ClampScrollable : Widget, OrientableIF, ScrollableIF
{
	/** the main Gtk struct */
	protected AdwClampScrollable* adwClampScrollable;

	/** Get the main Gtk struct */
	public AdwClampScrollable* getClampScrollableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwClampScrollable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwClampScrollable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwClampScrollable* adwClampScrollable, bool ownedRef = false)
	{
		this.adwClampScrollable = adwClampScrollable;
		super(cast(GtkWidget*)adwClampScrollable, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwClampScrollable);

	// add the Scrollable capabilities
	mixin ScrollableT!(AdwClampScrollable);


	/** */
	public static GType getType()
	{
		return adw_clamp_scrollable_get_type();
	}

	/**
	 * Creates a new `AdwClampScrollable`.
	 *
	 * Returns: the newly created `AdwClampScrollable`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_clamp_scrollable_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwClampScrollable*) __p);
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
		auto __p = adw_clamp_scrollable_get_child(adwClampScrollable);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the maximum size allocated to the child.
	 *
	 * Returns: the maximum size to allocate to the child
	 *
	 * Since: 1.0
	 */
	public int getMaximumSize()
	{
		return adw_clamp_scrollable_get_maximum_size(adwClampScrollable);
	}

	/**
	 * Gets the size above which the child is clamped.
	 *
	 * Returns: the size above which the child is clamped
	 *
	 * Since: 1.0
	 */
	public int getTighteningThreshold()
	{
		return adw_clamp_scrollable_get_tightening_threshold(adwClampScrollable);
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
		adw_clamp_scrollable_set_child(adwClampScrollable, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the maximum size allocated to the child.
	 *
	 * Params:
	 *     maximumSize = the maximum size
	 *
	 * Since: 1.0
	 */
	public void setMaximumSize(int maximumSize)
	{
		adw_clamp_scrollable_set_maximum_size(adwClampScrollable, maximumSize);
	}

	/**
	 * Sets the size above which the child is clamped.
	 *
	 * Params:
	 *     tighteningThreshold = the tightening threshold
	 *
	 * Since: 1.0
	 */
	public void setTighteningThreshold(int tighteningThreshold)
	{
		adw_clamp_scrollable_set_tightening_threshold(adwClampScrollable, tighteningThreshold);
	}
}
