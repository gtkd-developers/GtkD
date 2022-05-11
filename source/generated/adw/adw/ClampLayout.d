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


module adw.ClampLayout;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.OrientableIF;
private import gtk.OrientableT;


/**
 * A layout manager constraining its children to a given size.
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
 * `AdwClampLayout` constraints the size of the widgets it contains to a given
 * maximum size. It will constrain the width if it is horizontal, or the height
 * if it is vertical. The expansion of the children from their minimum to their
 * maximum size is eased out for a smooth transition.
 * 
 * If a child requires more than the requested maximum size, it will be
 * allocated the minimum size it can fit in instead.
 * 
 * Each child will get the style  classes .large when it reached its maximum
 * size, .small when it's allocated the full size, .medium in-between, or none
 * if it hasn't been allocated yet.
 *
 * Since: 1.0
 */
public class ClampLayout : LayoutManager, OrientableIF
{
	/** the main Gtk struct */
	protected AdwClampLayout* adwClampLayout;

	/** Get the main Gtk struct */
	public AdwClampLayout* getClampLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwClampLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwClampLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwClampLayout* adwClampLayout, bool ownedRef = false)
	{
		this.adwClampLayout = adwClampLayout;
		super(cast(GtkLayoutManager*)adwClampLayout, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwClampLayout);


	/** */
	public static GType getType()
	{
		return adw_clamp_layout_get_type();
	}

	/**
	 * Creates a new `AdwClampLayout`.
	 *
	 * Returns: the newly created `AdwClampLayout`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_clamp_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwClampLayout*) __p, true);
	}

	/**
	 * Gets the maximum size allocated to the children.
	 *
	 * Returns: the maximum size to allocate to the children
	 *
	 * Since: 1.0
	 */
	public int getMaximumSize()
	{
		return adw_clamp_layout_get_maximum_size(adwClampLayout);
	}

	/**
	 * Gets the size above which the children are clamped.
	 *
	 * Returns: the size above which the children are clamped
	 *
	 * Since: 1.0
	 */
	public int getTighteningThreshold()
	{
		return adw_clamp_layout_get_tightening_threshold(adwClampLayout);
	}

	/**
	 * Sets the maximum size allocated to the children.
	 *
	 * Params:
	 *     maximumSize = the maximum size
	 *
	 * Since: 1.0
	 */
	public void setMaximumSize(int maximumSize)
	{
		adw_clamp_layout_set_maximum_size(adwClampLayout, maximumSize);
	}

	/**
	 * Sets the size above which the children are clamped.
	 *
	 * Params:
	 *     tighteningThreshold = the tightening threshold
	 *
	 * Since: 1.0
	 */
	public void setTighteningThreshold(int tighteningThreshold)
	{
		adw_clamp_layout_set_tightening_threshold(adwClampLayout, tighteningThreshold);
	}
}
