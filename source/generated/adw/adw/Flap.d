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


module adw.Flap;

private import adw.SpringParams;
private import adw.SwipeableIF;
private import adw.SwipeableT;
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
 * An adaptive container acting like a box or an overlay.
 * 
 * <picture>
 * <source srcset="flap-wide-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="flap-wide.png" alt="flap-wide">
 * </picture>
 * <picture>
 * <source srcset="flap-narrow-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="flap-narrow.png" alt="flap-narrow">
 * </picture>
 * 
 * The `AdwFlap` widget can display its children like a [class@Gtk.Box] does or
 * like a [class@Gtk.Overlay] does, according to the
 * [property@Flap:fold-policy] value.
 * 
 * `AdwFlap` has at most three children: [property@Flap:content],
 * [property@Flap:flap] and [property@Flap:separator]. Content is the primary
 * child, flap is displayed next to it when unfolded, or overlays it when
 * folded. Flap can be shown or hidden by changing the
 * [property@Flap:reveal-flap] value, as well as via swipe gestures if
 * [property@Flap:swipe-to-open] and/or [property@Flap:swipe-to-close] are set
 * to `TRUE`.
 * 
 * Optionally, a separator can be provided, which would be displayed between
 * the content and the flap when there's no shadow to separate them, depending
 * on the transition type.
 * 
 * [property@Flap:flap] is transparent by default; add the
 * [`.background`](style-classes.html#background) style class to it if this is
 * unwanted.
 * 
 * If [property@Flap:modal] is set to `TRUE`, content becomes completely
 * inaccessible when the flap is revealed while folded.
 * 
 * The position of the flap and separator children relative to the content is
 * determined by orientation, as well as the [property@Flap:flap-position]
 * value.
 * 
 * Folding the flap will automatically hide the flap widget, and unfolding it
 * will automatically reveal it. If this behavior is not desired, the
 * [property@Flap:locked] property can be used to override it.
 * 
 * Common use cases include sidebars, header bars that need to be able to
 * overlap the window content (for example, in fullscreen mode) and bottom
 * sheets.
 * 
 * ## AdwFlap as GtkBuildable
 * 
 * The `AdwFlap` implementation of the [iface@Gtk.Buildable] interface supports
 * setting the flap child by specifying “flap” as the “type” attribute of a
 * <child> element, and separator by specifying “separator”. Specifying
 * “content” child type or omitting it results in setting the content child.
 * 
 * ## CSS nodes
 * 
 * `AdwFlap` has a single CSS node with name `flap`. The node will get the style
 * classes `.folded` when it is folded, and `.unfolded` when it's not.
 *
 * Since: 1.0
 */
public class Flap : Widget, SwipeableIF, OrientableIF
{
	/** the main Gtk struct */
	protected AdwFlap* adwFlap;

	/** Get the main Gtk struct */
	public AdwFlap* getFlapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwFlap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwFlap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwFlap* adwFlap, bool ownedRef = false)
	{
		this.adwFlap = adwFlap;
		super(cast(GtkWidget*)adwFlap, ownedRef);
	}

	// add the Swipeable capabilities
	mixin SwipeableT!(AdwFlap);

	// add the Orientable capabilities
	mixin OrientableT!(AdwFlap);


	/** */
	public static GType getType()
	{
		return adw_flap_get_type();
	}

	/**
	 * Creates a new `AdwFlap`.
	 *
	 * Returns: the newly created `AdwFlap`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_flap_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwFlap*) __p);
	}

	/**
	 * Gets the content widget for @self.
	 *
	 * Returns: the content widget for @self
	 *
	 * Since: 1.0
	 */
	public Widget getContent()
	{
		auto __p = adw_flap_get_content(adwFlap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the flap widget for @self.
	 *
	 * Returns: the flap widget for @self
	 *
	 * Since: 1.0
	 */
	public Widget getFlap()
	{
		auto __p = adw_flap_get_flap(adwFlap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the flap position for @self.
	 *
	 * Returns: the flap position for @self
	 *
	 * Since: 1.0
	 */
	public GtkPackType getFlapPosition()
	{
		return adw_flap_get_flap_position(adwFlap);
	}

	/**
	 * Gets the duration that fold transitions in @self will take.
	 *
	 * Returns: the fold transition duration
	 *
	 * Since: 1.0
	 */
	public uint getFoldDuration()
	{
		return adw_flap_get_fold_duration(adwFlap);
	}

	/**
	 * Gets the fold policy for @self.
	 *
	 * Returns: the fold policy for @self
	 *
	 * Since: 1.0
	 */
	public AdwFlapFoldPolicy getFoldPolicy()
	{
		return adw_flap_get_fold_policy(adwFlap);
	}

	/**
	 * Gets the fold threshold policy for @self.
	 *
	 * Since: 1.0
	 */
	public AdwFoldThresholdPolicy getFoldThresholdPolicy()
	{
		return adw_flap_get_fold_threshold_policy(adwFlap);
	}

	/**
	 * Gets whether @self is currently folded.
	 *
	 * Returns: `TRUE` if @self is currently folded
	 *
	 * Since: 1.0
	 */
	public bool getFolded()
	{
		return adw_flap_get_folded(adwFlap) != 0;
	}

	/**
	 * Gets whether @self is locked.
	 *
	 * Returns: `TRUE` if @self is locked
	 *
	 * Since: 1.0
	 */
	public bool getLocked()
	{
		return adw_flap_get_locked(adwFlap) != 0;
	}

	/**
	 * Gets whether @self is modal.
	 *
	 * Returns: `TRUE` if @self is modal
	 *
	 * Since: 1.0
	 */
	public bool getModal()
	{
		return adw_flap_get_modal(adwFlap) != 0;
	}

	/**
	 * Gets whether the flap widget is revealed for @self.
	 *
	 * Returns: `TRUE` if the flap widget is revealed
	 *
	 * Since: 1.0
	 */
	public bool getRevealFlap()
	{
		return adw_flap_get_reveal_flap(adwFlap) != 0;
	}

	/**
	 * Gets the reveal animation spring parameters for @self.
	 *
	 * Returns: the reveal animation parameters
	 *
	 * Since: 1.0
	 */
	public SpringParams getRevealParams()
	{
		auto __p = adw_flap_get_reveal_params(adwFlap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpringParams)(cast(AdwSpringParams*) __p, true);
	}

	/**
	 * Gets the current reveal progress for @self.
	 *
	 * Returns: the current reveal progress for @self
	 *
	 * Since: 1.0
	 */
	public double getRevealProgress()
	{
		return adw_flap_get_reveal_progress(adwFlap);
	}

	/**
	 * Gets the separator widget for @self.
	 *
	 * Returns: the separator widget for @self
	 *
	 * Since: 1.0
	 */
	public Widget getSeparator()
	{
		auto __p = adw_flap_get_separator(adwFlap);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether @self can be closed with a swipe gesture.
	 *
	 * Returns: `TRUE` if @self can be closed with a swipe gesture
	 *
	 * Since: 1.0
	 */
	public bool getSwipeToClose()
	{
		return adw_flap_get_swipe_to_close(adwFlap) != 0;
	}

	/**
	 * Gets whether @self can be opened with a swipe gesture.
	 *
	 * Returns: `TRUE` if @self can be opened with a swipe gesture
	 *
	 * Since: 1.0
	 */
	public bool getSwipeToOpen()
	{
		return adw_flap_get_swipe_to_open(adwFlap) != 0;
	}

	/**
	 * Gets the type of animation used for reveal and fold transitions in @self.
	 *
	 * Returns: the current transition type of @self
	 *
	 * Since: 1.0
	 */
	public AdwFlapTransitionType getTransitionType()
	{
		return adw_flap_get_transition_type(adwFlap);
	}

	/**
	 * Sets the content widget for @self.
	 *
	 * Params:
	 *     content = the content widget
	 *
	 * Since: 1.0
	 */
	public void setContent(Widget content)
	{
		adw_flap_set_content(adwFlap, (content is null) ? null : content.getWidgetStruct());
	}

	/**
	 * Sets the flap widget for @self.
	 *
	 * Params:
	 *     flap = the flap widget
	 *
	 * Since: 1.0
	 */
	public void setFlap(Widget flap)
	{
		adw_flap_set_flap(adwFlap, (flap is null) ? null : flap.getWidgetStruct());
	}

	/**
	 * Sets the flap position for @self.
	 *
	 * Params:
	 *     position = the new value
	 *
	 * Since: 1.0
	 */
	public void setFlapPosition(GtkPackType position)
	{
		adw_flap_set_flap_position(adwFlap, position);
	}

	/**
	 * Sets the duration that fold transitions in @self will take.
	 *
	 * Params:
	 *     duration = the new duration, in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setFoldDuration(uint duration)
	{
		adw_flap_set_fold_duration(adwFlap, duration);
	}

	/**
	 * Sets the fold policy for @self.
	 *
	 * Params:
	 *     policy = the fold policy
	 *
	 * Since: 1.0
	 */
	public void setFoldPolicy(AdwFlapFoldPolicy policy)
	{
		adw_flap_set_fold_policy(adwFlap, policy);
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
		adw_flap_set_fold_threshold_policy(adwFlap, policy);
	}

	/**
	 * Sets whether @self is locked.
	 *
	 * Params:
	 *     locked = the new value
	 *
	 * Since: 1.0
	 */
	public void setLocked(bool locked)
	{
		adw_flap_set_locked(adwFlap, locked);
	}

	/**
	 * Sets whether @self is modal.
	 *
	 * Params:
	 *     modal = whether @self is modal
	 *
	 * Since: 1.0
	 */
	public void setModal(bool modal)
	{
		adw_flap_set_modal(adwFlap, modal);
	}

	/**
	 * Sets whether the flap widget is revealed for @self.
	 *
	 * Params:
	 *     revealFlap = whether to reveal the flap widget
	 *
	 * Since: 1.0
	 */
	public void setRevealFlap(bool revealFlap)
	{
		adw_flap_set_reveal_flap(adwFlap, revealFlap);
	}

	/**
	 * Sets the reveal animation spring parameters for @self.
	 *
	 * Params:
	 *     params = the new parameters
	 *
	 * Since: 1.0
	 */
	public void setRevealParams(SpringParams params)
	{
		adw_flap_set_reveal_params(adwFlap, (params is null) ? null : params.getSpringParamsStruct());
	}

	/**
	 * Sets the separator widget for @self.
	 *
	 * Params:
	 *     separator = the separator widget
	 *
	 * Since: 1.0
	 */
	public void setSeparator(Widget separator)
	{
		adw_flap_set_separator(adwFlap, (separator is null) ? null : separator.getWidgetStruct());
	}

	/**
	 * Sets whether @self can be closed with a swipe gesture.
	 *
	 * Params:
	 *     swipeToClose = whether @self can be closed with a swipe gesture
	 *
	 * Since: 1.0
	 */
	public void setSwipeToClose(bool swipeToClose)
	{
		adw_flap_set_swipe_to_close(adwFlap, swipeToClose);
	}

	/**
	 * Sets whether @self can be opened with a swipe gesture.
	 *
	 * Params:
	 *     swipeToOpen = whether @self can be opened with a swipe gesture
	 *
	 * Since: 1.0
	 */
	public void setSwipeToOpen(bool swipeToOpen)
	{
		adw_flap_set_swipe_to_open(adwFlap, swipeToOpen);
	}

	/**
	 * Sets the type of animation used for reveal and fold transitions in @self.
	 *
	 * Params:
	 *     transitionType = the new transition type
	 *
	 * Since: 1.0
	 */
	public void setTransitionType(AdwFlapTransitionType transitionType)
	{
		adw_flap_set_transition_type(adwFlap, transitionType);
	}
}
