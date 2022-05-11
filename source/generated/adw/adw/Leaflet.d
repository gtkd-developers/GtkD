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


module adw.Leaflet;

private import adw.LeafletPage;
private import adw.SpringParams;
private import adw.SwipeableIF;
private import adw.SwipeableT;
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
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.SelectionModelIF;
private import gtk.Widget;


/**
 * An adaptive container acting like a box or a stack.
 * 
 * <picture>
 * <source srcset="leaflet-wide-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="leaflet-wide.png" alt="leaflet-wide">
 * </picture>
 * <picture>
 * <source srcset="leaflet-narrow-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="leaflet-narrow.png" alt="leaflet-narrow">
 * </picture>
 * 
 * The `AdwLeaflet` widget can display its children like a [class@Gtk.Box] does
 * or like a [class@Gtk.Stack] does, adapting to size changes by switching
 * between the two modes.
 * 
 * When there is enough space the children are displayed side by side, otherwise
 * only one is displayed and the leaflet is said to be “folded”.
 * The threshold is dictated by the preferred minimum sizes of the children.
 * When a leaflet is folded, the children can be navigated using swipe gestures.
 * 
 * The “over” and “under” transition types stack the children one on top of the
 * other, while the “slide” transition puts the children side by side. While
 * navigating to a child on the side or below can be performed by swiping the
 * current child away, navigating to an upper child requires dragging it from
 * the edge where it resides. This doesn't affect non-dragging swipes.
 * 
 * ## CSS nodes
 * 
 * `AdwLeaflet` has a single CSS node with name `leaflet`. The node will get the
 * style classes `.folded` when it is folded, `.unfolded` when it's not, or none
 * if it hasn't computed its fold yet.
 *
 * Since: 1.0
 */
public class Leaflet : Widget, SwipeableIF, OrientableIF
{
	/** the main Gtk struct */
	protected AdwLeaflet* adwLeaflet;

	/** Get the main Gtk struct */
	public AdwLeaflet* getLeafletStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwLeaflet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwLeaflet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwLeaflet* adwLeaflet, bool ownedRef = false)
	{
		this.adwLeaflet = adwLeaflet;
		super(cast(GtkWidget*)adwLeaflet, ownedRef);
	}

	// add the Swipeable capabilities
	mixin SwipeableT!(AdwLeaflet);

	// add the Orientable capabilities
	mixin OrientableT!(AdwLeaflet);


	/** */
	public static GType getType()
	{
		return adw_leaflet_get_type();
	}

	/**
	 * Creates a new `AdwLeaflet`.
	 *
	 * Returns: the new created `AdwLeaflet`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_leaflet_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwLeaflet*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Returns: the [class@LeafletPage] for @child
	 *
	 * Since: 1.0
	 */
	public LeafletPage append(Widget child)
	{
		auto __p = adw_leaflet_append(adwLeaflet, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LeafletPage)(cast(AdwLeafletPage*) __p);
	}

	/**
	 * Finds the previous or next navigatable child.
	 *
	 * This will be the same child [method@Leaflet.navigate] or swipe gestures will
	 * navigate to.
	 *
	 * If there's no child to navigate to, `NULL` will be returned instead.
	 *
	 * See [property@LeafletPage:navigatable].
	 *
	 * Params:
	 *     direction = the direction
	 *
	 * Returns: the previous or next child
	 *
	 * Since: 1.0
	 */
	public Widget getAdjacentChild(AdwNavigationDirection direction)
	{
		auto __p = adw_leaflet_get_adjacent_child(adwLeaflet, direction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether gestures and shortcuts for navigating backward are enabled.
	 *
	 * Returns: Whether gestures and shortcuts are enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanNavigateBack()
	{
		return adw_leaflet_get_can_navigate_back(adwLeaflet) != 0;
	}

	/**
	 * Gets whether gestures and shortcuts for navigating forward are enabled.
	 *
	 * Returns: Whether gestures and shortcuts are enabled.
	 *
	 * Since: 1.0
	 */
	public bool getCanNavigateForward()
	{
		return adw_leaflet_get_can_navigate_forward(adwLeaflet) != 0;
	}

	/**
	 * Gets whether @self can unfold.
	 *
	 * Returns: whether @self can unfold
	 *
	 * Since: 1.0
	 */
	public bool getCanUnfold()
	{
		return adw_leaflet_get_can_unfold(adwLeaflet) != 0;
	}

	/**
	 * Finds the child of @self with @name.
	 *
	 * Returns `NULL` if there is no child with this name.
	 *
	 * See [property@LeafletPage:name].
	 *
	 * Params:
	 *     name = the name of the child to find
	 *
	 * Returns: the requested child of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChildByName(string name)
	{
		auto __p = adw_leaflet_get_child_by_name(adwLeaflet, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the child transition spring parameters for @self.
	 *
	 * Returns: the child transition parameters
	 *
	 * Since: 1.0
	 */
	public SpringParams getChildTransitionParams()
	{
		auto __p = adw_leaflet_get_child_transition_params(adwLeaflet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpringParams)(cast(AdwSpringParams*) __p, true);
	}

	/**
	 * Gets whether a child transition is currently running for @self.
	 *
	 * Returns: whether a transition is currently running
	 *
	 * Since: 1.0
	 */
	public bool getChildTransitionRunning()
	{
		return adw_leaflet_get_child_transition_running(adwLeaflet) != 0;
	}

	/**
	 * Gets the fold threshold policy for @self.
	 *
	 * Since: 1.0
	 */
	public AdwFoldThresholdPolicy getFoldThresholdPolicy()
	{
		return adw_leaflet_get_fold_threshold_policy(adwLeaflet);
	}

	/**
	 * Gets whether @self is folded.
	 *
	 * Returns: whether @self is folded.
	 *
	 * Since: 1.0
	 */
	public bool getFolded()
	{
		return adw_leaflet_get_folded(adwLeaflet) != 0;
	}

	/**
	 * Gets whether @self is homogeneous.
	 *
	 * Returns: whether @self is homogeneous
	 *
	 * Since: 1.0
	 */
	public bool getHomogeneous()
	{
		return adw_leaflet_get_homogeneous(adwLeaflet) != 0;
	}

	/**
	 * Gets the mode transition animation duration for @self.
	 *
	 * Returns: the mode transition duration, in milliseconds.
	 *
	 * Since: 1.0
	 */
	public uint getModeTransitionDuration()
	{
		return adw_leaflet_get_mode_transition_duration(adwLeaflet);
	}

	/**
	 * Returns the [class@LeafletPage] object for @child.
	 *
	 * Params:
	 *     child = a child of @self
	 *
	 * Returns: the page object for @child
	 *
	 * Since: 1.0
	 */
	public LeafletPage getPage(Widget child)
	{
		auto __p = adw_leaflet_get_page(adwLeaflet, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LeafletPage)(cast(AdwLeafletPage*) __p);
	}

	/**
	 * Returns a [iface@Gio.ListModel] that contains the pages of the leaflet.
	 *
	 * This can be used to keep an up-to-date view. The model also implements
	 * [iface@Gtk.SelectionModel] and can be used to track and change the visible
	 * page.
	 *
	 * Returns: a `GtkSelectionModel` for the leaflet's children
	 *
	 * Since: 1.0
	 */
	public SelectionModelIF getPages()
	{
		auto __p = adw_leaflet_get_pages(adwLeaflet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p, true);
	}

	/**
	 * Gets the type of animation used for transitions between modes and children.
	 *
	 * Returns: the current transition type of @self
	 *
	 * Since: 1.0
	 */
	public AdwLeafletTransitionType getTransitionType()
	{
		return adw_leaflet_get_transition_type(adwLeaflet);
	}

	/**
	 * Gets the widget currently visible when the leaflet is folded.
	 *
	 * Returns: the visible child
	 *
	 * Since: 1.0
	 */
	public Widget getVisibleChild()
	{
		auto __p = adw_leaflet_get_visible_child(adwLeaflet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the name of the currently visible child widget.
	 *
	 * Returns: the name of the visible child
	 *
	 * Since: 1.0
	 */
	public string getVisibleChildName()
	{
		return Str.toString(adw_leaflet_get_visible_child_name(adwLeaflet));
	}

	/**
	 * Inserts @child in the position after @sibling in the list of children.
	 *
	 * If @sibling is `NULL`, inserts @child at the first position.
	 *
	 * Params:
	 *     child = the widget to insert
	 *     sibling = the sibling after which to insert @child
	 *
	 * Returns: the [class@LeafletPage] for @child
	 *
	 * Since: 1.0
	 */
	public LeafletPage insertChildAfter(Widget child, Widget sibling)
	{
		auto __p = adw_leaflet_insert_child_after(adwLeaflet, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LeafletPage)(cast(AdwLeafletPage*) __p);
	}

	/**
	 * Navigates to the previous or next child.
	 *
	 * The child must have the [property@LeafletPage:navigatable] property set to
	 * `TRUE`, otherwise it will be skipped.
	 *
	 * This will be the same child as returned by
	 * [method@Leaflet.get_adjacent_child] or navigated to via swipe gestures.
	 *
	 * Params:
	 *     direction = the direction
	 *
	 * Returns: whether the visible child was changed
	 *
	 * Since: 1.0
	 */
	public bool navigate(AdwNavigationDirection direction)
	{
		return adw_leaflet_navigate(adwLeaflet, direction) != 0;
	}

	/**
	 * Inserts @child at the first position in @self.
	 *
	 * Params:
	 *     child = the widget to prepend
	 *
	 * Returns: the [class@LeafletPage] for @child
	 *
	 * Since: 1.0
	 */
	public LeafletPage prepend(Widget child)
	{
		auto __p = adw_leaflet_prepend(adwLeaflet, (child is null) ? null : child.getWidgetStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LeafletPage)(cast(AdwLeafletPage*) __p);
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
		adw_leaflet_remove(adwLeaflet, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Moves @child to the position after @sibling in the list of children.
	 *
	 * If @sibling is `NULL`, moves @child to the first position.
	 *
	 * Params:
	 *     child = the widget to move, must be a child of @self
	 *     sibling = the sibling to move @child after
	 *
	 * Since: 1.0
	 */
	public void reorderChildAfter(Widget child, Widget sibling)
	{
		adw_leaflet_reorder_child_after(adwLeaflet, (child is null) ? null : child.getWidgetStruct(), (sibling is null) ? null : sibling.getWidgetStruct());
	}

	/**
	 * Sets whether gestures and shortcuts for navigating backward are enabled.
	 *
	 * Params:
	 *     canNavigateBack = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanNavigateBack(bool canNavigateBack)
	{
		adw_leaflet_set_can_navigate_back(adwLeaflet, canNavigateBack);
	}

	/**
	 * Sets whether gestures and shortcuts for navigating forward are enabled.
	 *
	 * Params:
	 *     canNavigateForward = the new value
	 *
	 * Since: 1.0
	 */
	public void setCanNavigateForward(bool canNavigateForward)
	{
		adw_leaflet_set_can_navigate_forward(adwLeaflet, canNavigateForward);
	}

	/**
	 * Sets whether @self can unfold.
	 *
	 * Params:
	 *     canUnfold = whether @self can unfold
	 *
	 * Since: 1.0
	 */
	public void setCanUnfold(bool canUnfold)
	{
		adw_leaflet_set_can_unfold(adwLeaflet, canUnfold);
	}

	/**
	 * Sets the child transition spring parameters for @self.
	 *
	 * Params:
	 *     params = the new parameters
	 *
	 * Since: 1.0
	 */
	public void setChildTransitionParams(SpringParams params)
	{
		adw_leaflet_set_child_transition_params(adwLeaflet, (params is null) ? null : params.getSpringParamsStruct());
	}

	/**
	 * Sets the fold threshold policy for @self.
	 *
	 * Params:
	 *     policy = the policy to use
	 *
	 * Since: 1.0
	 */
	public void setFoldThresholdPolicy(AdwFoldThresholdPolicy policy)
	{
		adw_leaflet_set_fold_threshold_policy(adwLeaflet, policy);
	}

	/**
	 * Sets @self to be homogeneous or not.
	 *
	 * If set to `FALSE`, different children can have different size along the
	 * opposite orientation.
	 *
	 * Params:
	 *     homogeneous = whether to make @self homogeneous
	 *
	 * Since: 1.0
	 */
	public void setHomogeneous(bool homogeneous)
	{
		adw_leaflet_set_homogeneous(adwLeaflet, homogeneous);
	}

	/**
	 * Sets the mode transition animation duration for @self.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setModeTransitionDuration(uint duration)
	{
		adw_leaflet_set_mode_transition_duration(adwLeaflet, duration);
	}

	/**
	 * Sets the type of animation used for transitions between modes and children.
	 *
	 * Params:
	 *     transition = the new transition type
	 *
	 * Since: 1.0
	 */
	public void setTransitionType(AdwLeafletTransitionType transition)
	{
		adw_leaflet_set_transition_type(adwLeaflet, transition);
	}

	/**
	 * Sets the widget currently visible when the leaflet is folded.
	 *
	 * Params:
	 *     visibleChild = the new child
	 *
	 * Since: 1.0
	 */
	public void setVisibleChild(Widget visibleChild)
	{
		adw_leaflet_set_visible_child(adwLeaflet, (visibleChild is null) ? null : visibleChild.getWidgetStruct());
	}

	/**
	 * Makes the child with the name @name visible.
	 *
	 * See adw_leaflet_set_visible_child() for more details.
	 *
	 * Params:
	 *     name = the name of a child
	 *
	 * Since: 1.0
	 */
	public void setVisibleChildName(string name)
	{
		adw_leaflet_set_visible_child_name(adwLeaflet, Str.toStringz(name));
	}
}
