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


module adw.Clamp;

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
private import gtk.Widget;


/**
 * A widget constraining its child to a given size.
 * 
 * <picture>
 * <source srcset="clamp-wide-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="clamp-wide.png" alt="clamp-wide">
 * </picture>
 * <picture>
 * <source srcset="clamp-narrow-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="clamp-narrow.png" alt="clamp-narrow">
 * </picture>
 * 
 * The `AdwClamp` widget constrains the size of the widget it contains to a
 * given maximum size. It will constrain the width if it is horizontal, or the
 * height if it is vertical. The expansion of the child from its minimum to its
 * maximum size is eased out for a smooth transition.
 * 
 * If the child requires more than the requested maximum size, it will be
 * allocated the minimum size it can fit in instead.
 * 
 * ## CSS nodes
 * 
 * `AdwClamp` has a single CSS node with name `clamp`.
 * 
 * Its children will receive the style classes `.large` when the child reached
 * its maximum size, `.small` when the clamp allocates its full size to the
 * child, `.medium` in-between, or none if it hasn't computed its size yet.
 *
 * Since: 1.0
 */
public class Clamp : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected AdwClamp* adwClamp;

	/** Get the main Gtk struct */
	public AdwClamp* getClampStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwClamp;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwClamp;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwClamp* adwClamp, bool ownedRef = false)
	{
		this.adwClamp = adwClamp;
		super(cast(GtkWidget*)adwClamp, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwClamp);


	/** */
	public static GType getType()
	{
		return adw_clamp_get_type();
	}

	/**
	 * Creates a new `AdwClamp`.
	 *
	 * Returns: the newly created `AdwClamp`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_clamp_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwClamp*) __p);
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
		auto __p = adw_clamp_get_child(adwClamp);

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
		return adw_clamp_get_maximum_size(adwClamp);
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
		return adw_clamp_get_tightening_threshold(adwClamp);
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
		adw_clamp_set_child(adwClamp, (child is null) ? null : child.getWidgetStruct());
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
		adw_clamp_set_maximum_size(adwClamp, maximumSize);
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
		adw_clamp_set_tightening_threshold(adwClamp, tighteningThreshold);
	}
}
