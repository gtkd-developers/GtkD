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


module adw.Squeezer;

private import adw.SqueezerPage;
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
private import gtk.SelectionModelIF;
private import gtk.Widget;


/**
 * A best fit container.
 * 
 * <picture>
 * <source srcset="squeezer-wide-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="squeezer-wide.png" alt="squeezer-wide">
 * </picture>
 * <picture>
 * <source srcset="squeezer-narrow-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="squeezer-narrow.png" alt="squeezer-narrow">
 * </picture>
 * 
 * The `AdwSqueezer` widget is a container which only shows the first of its
 * children that fits in the available size. It is convenient to offer different
 * widgets to represent the same data with different levels of detail, making
 * the widget seem to squeeze itself to fit in the available space.
 * 
 * Transitions between children can be animated as fades. This can be controlled
 * with [property@Squeezer:transition-type].
 * 
 * ## CSS nodes
 * 
 * `AdwSqueezer` has a single CSS node with name `squeezer`.
 *
 * Since: 1.0
 */
public class Squeezer : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected AdwSqueezer* adwSqueezer;

	/** Get the main Gtk struct */
	public AdwSqueezer* getSqueezerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwSqueezer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwSqueezer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwSqueezer* adwSqueezer, bool ownedRef = false)
	{
		this.adwSqueezer = adwSqueezer;
		super(cast(GtkWidget*)adwSqueezer, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwSqueezer);


	/** */
	public static GType getType()
	{
		return adw_squeezer_get_type();
	}

	/**
	 * Creates a new `AdwSqueezer`.
	 *
	 * Returns: the newly created `AdwSqueezer`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_squeezer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwSqueezer*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Returns: the [class@SqueezerPage] for @child
	 *
	 * Since: 1.0
	 */
	public SqueezerPage add(Widget child)
	{
		auto __p = adw_squeezer_add(adwSqueezer, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SqueezerPage)(cast(AdwSqueezerPage*) __p);
	}

	/**
	 * Gets whether to allow squeezing beyond the last child's minimum size.
	 *
	 * Returns: whether @self allows squeezing beyond the last child
	 *
	 * Since: 1.0
	 */
	public bool getAllowNone()
	{
		return adw_squeezer_get_allow_none(adwSqueezer) != 0;
	}

	/**
	 * Gets whether all children have the same size for the opposite orientation.
	 *
	 * Returns: whether @self is homogeneous
	 *
	 * Since: 1.0
	 */
	public bool getHomogeneous()
	{
		return adw_squeezer_get_homogeneous(adwSqueezer) != 0;
	}

	/**
	 * Gets whether @self interpolates its size when changing the visible child.
	 *
	 * Returns: whether the size is interpolated
	 *
	 * Since: 1.0
	 */
	public bool getInterpolateSize()
	{
		return adw_squeezer_get_interpolate_size(adwSqueezer) != 0;
	}

	/**
	 * Returns the [class@SqueezerPage] object for @child.
	 *
	 * Params:
	 *     child = a child of @self
	 *
	 * Returns: the page object for @child
	 *
	 * Since: 1.0
	 */
	public SqueezerPage getPage(Widget child)
	{
		auto __p = adw_squeezer_get_page(adwSqueezer, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SqueezerPage)(cast(AdwSqueezerPage*) __p);
	}

	/**
	 * Returns a [iface@Gio.ListModel] that contains the pages of @self.
	 *
	 * This can be used to keep an up-to-date view. The model also implements
	 * [iface@Gtk.SelectionModel] and can be used to track the visible page.
	 *
	 * Returns: a `GtkSelectionModel` for the squeezer's children
	 *
	 * Since: 1.0
	 */
	public SelectionModelIF getPages()
	{
		auto __p = adw_squeezer_get_pages(adwSqueezer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p, true);
	}

	/**
	 * Gets the fold threshold policy for @self.
	 *
	 * Since: 1.0
	 */
	public AdwFoldThresholdPolicy getSwitchThresholdPolicy()
	{
		return adw_squeezer_get_switch_threshold_policy(adwSqueezer);
	}

	/**
	 * Gets the transition animation duration for @self.
	 *
	 * Returns: the transition duration, in milliseconds
	 *
	 * Since: 1.0
	 */
	public uint getTransitionDuration()
	{
		return adw_squeezer_get_transition_duration(adwSqueezer);
	}

	/**
	 * Gets whether a transition is currently running for @self.
	 *
	 * Returns: whether a transition is currently running
	 *
	 * Since: 1.0
	 */
	public bool getTransitionRunning()
	{
		return adw_squeezer_get_transition_running(adwSqueezer) != 0;
	}

	/**
	 * Gets the type of animation used for transitions between children in @self.
	 *
	 * Returns: the current transition type of @self
	 *
	 * Since: 1.0
	 */
	public AdwSqueezerTransitionType getTransitionType()
	{
		return adw_squeezer_get_transition_type(adwSqueezer);
	}

	/**
	 * Gets the currently visible child of @self.
	 *
	 * Returns: the visible child
	 *
	 * Since: 1.0
	 */
	public Widget getVisibleChild()
	{
		auto __p = adw_squeezer_get_visible_child(adwSqueezer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the horizontal alignment, from 0 (start) to 1 (end).
	 *
	 * Returns: the alignment value
	 *
	 * Since: 1.0
	 */
	public float getXalign()
	{
		return adw_squeezer_get_xalign(adwSqueezer);
	}

	/**
	 * Gets the vertical alignment, from 0 (top) to 1 (bottom).
	 *
	 * Returns: the alignment value
	 *
	 * Since: 1.0
	 */
	public float getYalign()
	{
		return adw_squeezer_get_yalign(adwSqueezer);
	}

	/**
	 * Removes a child widget from @self.
	 *
	 * Params:
	 *     child = the child to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_squeezer_remove(adwSqueezer, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether to allow squeezing beyond the last child's minimum size.
	 *
	 * Params:
	 *     allowNone = whether @self allows squeezing beyond the last child
	 *
	 * Since: 1.0
	 */
	public void setAllowNone(bool allowNone)
	{
		adw_squeezer_set_allow_none(adwSqueezer, allowNone);
	}

	/**
	 * Sets whether all children have the same size for the opposite orientation.
	 *
	 * Params:
	 *     homogeneous = whether @self is homogeneous
	 *
	 * Since: 1.0
	 */
	public void setHomogeneous(bool homogeneous)
	{
		adw_squeezer_set_homogeneous(adwSqueezer, homogeneous);
	}

	/**
	 * Sets whether @self interpolates its size when changing the visible child.
	 *
	 * Params:
	 *     interpolateSize = whether to interpolate the size
	 *
	 * Since: 1.0
	 */
	public void setInterpolateSize(bool interpolateSize)
	{
		adw_squeezer_set_interpolate_size(adwSqueezer, interpolateSize);
	}

	/**
	 * Sets the fold threshold policy for @self.
	 *
	 * Params:
	 *     policy = the policy to use
	 *
	 * Since: 1.0
	 */
	public void setSwitchThresholdPolicy(AdwFoldThresholdPolicy policy)
	{
		adw_squeezer_set_switch_threshold_policy(adwSqueezer, policy);
	}

	/**
	 * Sets the transition animation duration for @self.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setTransitionDuration(uint duration)
	{
		adw_squeezer_set_transition_duration(adwSqueezer, duration);
	}

	/**
	 * Sets the type of animation used for transitions between children in @self.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 1.0
	 */
	public void setTransitionType(AdwSqueezerTransitionType transition)
	{
		adw_squeezer_set_transition_type(adwSqueezer, transition);
	}

	/**
	 * Sets the horizontal alignment, from 0 (start) to 1 (end).
	 *
	 * Params:
	 *     xalign = the new alignment value
	 *
	 * Since: 1.0
	 */
	public void setXalign(float xalign)
	{
		adw_squeezer_set_xalign(adwSqueezer, xalign);
	}

	/**
	 * Sets the vertical alignment, from 0 (top) to 1 (bottom).
	 *
	 * Params:
	 *     yalign = the new alignment value
	 *
	 * Since: 1.0
	 */
	public void setYalign(float yalign)
	{
		adw_squeezer_set_yalign(adwSqueezer, yalign);
	}
}
