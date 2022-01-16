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


module adw.Carousel;

private import adw.SpringParams;
private import adw.SwipeableIF;
private import adw.SwipeableT;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import std.algorithm;


/**
 * A paginated scrolling widget.
 * 
 * <picture>
 * <source srcset="carousel-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="carousel.png" alt="carousel">
 * </picture>
 * 
 * The `AdwCarousel` widget can be used to display a set of pages with
 * swipe-based navigation between them.
 * 
 * [class@CarouselIndicatorDots] and [class@CarouselIndicatorLines] can be used
 * to provide page indicators for `AdwCarousel`.
 * 
 * ## CSS nodes
 * 
 * `AdwCarousel` has a single CSS node with name `carousel`.
 *
 * Since: 1.0
 */
public class Carousel : Widget, SwipeableIF, OrientableIF
{
	/** the main Gtk struct */
	protected AdwCarousel* adwCarousel;

	/** Get the main Gtk struct */
	public AdwCarousel* getCarouselStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwCarousel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwCarousel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwCarousel* adwCarousel, bool ownedRef = false)
	{
		this.adwCarousel = adwCarousel;
		super(cast(GtkWidget*)adwCarousel, ownedRef);
	}

	// add the Swipeable capabilities
	mixin SwipeableT!(AdwCarousel);

	// add the Orientable capabilities
	mixin OrientableT!(AdwCarousel);


	/** */
	public static GType getType()
	{
		return adw_carousel_get_type();
	}

	/**
	 * Creates a new `AdwCarousel`.
	 *
	 * Returns: the newly created `AdwCarousel`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_carousel_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwCarousel*) __p);
	}

	/**
	 * Appends @child to @self.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Since: 1.0
	 */
	public void append(Widget child)
	{
		adw_carousel_append(adwCarousel, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets whether to allow swiping for more than one page at a time.
	 *
	 * Returns: `TRUE` if long swipes are allowed
	 *
	 * Since: 1.0
	 */
	public bool getAllowLongSwipes()
	{
		return adw_carousel_get_allow_long_swipes(adwCarousel) != 0;
	}

	/**
	 * Sets whether @self can be dragged with mouse pointer.
	 *
	 * Returns: whether @self can be dragged with mouse pointer
	 *
	 * Since: 1.0
	 */
	public bool getAllowMouseDrag()
	{
		return adw_carousel_get_allow_mouse_drag(adwCarousel) != 0;
	}

	/**
	 * Gets whether @self will respond to scroll wheel events.
	 *
	 * Returns: `TRUE` if @self will respond to scroll wheel events
	 *
	 * Since: 1.0
	 */
	public bool getAllowScrollWheel()
	{
		return adw_carousel_get_allow_scroll_wheel(adwCarousel) != 0;
	}

	/**
	 * Gets whether @self can be navigated.
	 *
	 * Returns: whether @self can be navigated
	 *
	 * Since: 1.0
	 */
	public bool getInteractive()
	{
		return adw_carousel_get_interactive(adwCarousel) != 0;
	}

	/**
	 * Gets the number of pages in @self.
	 *
	 * Returns: the number of pages in @self
	 *
	 * Since: 1.0
	 */
	public uint getNPages()
	{
		return adw_carousel_get_n_pages(adwCarousel);
	}

	/**
	 * Gets the page at position @n.
	 *
	 * Params:
	 *     n = index of the page
	 *
	 * Returns: the page
	 *
	 * Since: 1.0
	 */
	public Widget getNthPage(uint n)
	{
		auto __p = adw_carousel_get_nth_page(adwCarousel, n);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets current scroll position in @self.
	 *
	 * It's unitless, 1 matches 1 page.
	 *
	 * Returns: the scroll position
	 *
	 * Since: 1.0
	 */
	public double getPosition()
	{
		return adw_carousel_get_position(adwCarousel);
	}

	/**
	 * Gets duration of the animation used when adding or removing pages.
	 *
	 * Returns: the duration
	 *
	 * Since: 1.0
	 */
	public uint getRevealDuration()
	{
		return adw_carousel_get_reveal_duration(adwCarousel);
	}

	/**
	 * Gets the scroll animation spring parameters for @self.
	 *
	 * Returns: the animation parameters
	 *
	 * Since: 1.0
	 */
	public SpringParams getScrollParams()
	{
		auto __p = adw_carousel_get_scroll_params(adwCarousel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpringParams)(cast(AdwSpringParams*) __p, true);
	}

	/**
	 * Gets spacing between pages in pixels.
	 *
	 * Returns: spacing between pages
	 *
	 * Since: 1.0
	 */
	public uint getSpacing()
	{
		return adw_carousel_get_spacing(adwCarousel);
	}

	/**
	 * Inserts @child into @self at position @position.
	 *
	 * If position is -1, or larger than the number of pages,
	 * @child will be appended to the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to insert @child at
	 *
	 * Since: 1.0
	 */
	public void insert(Widget child, int position)
	{
		adw_carousel_insert(adwCarousel, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Prepends @child to @self.
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Since: 1.0
	 */
	public void prepend(Widget child)
	{
		adw_carousel_prepend(adwCarousel, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes @child from @self.
	 *
	 * Params:
	 *     child = a widget to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_carousel_remove(adwCarousel, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Moves @child into position @position.
	 *
	 * If position is -1, or larger than the number of pages, @child will be moved
	 * at the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to move @child to
	 *
	 * Since: 1.0
	 */
	public void reorder(Widget child, int position)
	{
		adw_carousel_reorder(adwCarousel, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Scrolls to @widget.
	 *
	 * If @animate is `TRUE`, the transition will be animated.
	 *
	 * Params:
	 *     widget = a child of @self
	 *     animate = whether to animate the transition
	 *
	 * Since: 1.0
	 */
	public void scrollTo(Widget widget, bool animate)
	{
		adw_carousel_scroll_to(adwCarousel, (widget is null) ? null : widget.getWidgetStruct(), animate);
	}

	/**
	 * Sets whether to allow swiping for more than one page at a time.
	 *
	 * Params:
	 *     allowLongSwipes = whether to allow long swipes
	 *
	 * Since: 1.0
	 */
	public void setAllowLongSwipes(bool allowLongSwipes)
	{
		adw_carousel_set_allow_long_swipes(adwCarousel, allowLongSwipes);
	}

	/**
	 * Sets whether @self can be dragged with mouse pointer.
	 *
	 * Params:
	 *     allowMouseDrag = whether @self can be dragged with mouse pointer
	 *
	 * Since: 1.0
	 */
	public void setAllowMouseDrag(bool allowMouseDrag)
	{
		adw_carousel_set_allow_mouse_drag(adwCarousel, allowMouseDrag);
	}

	/**
	 * Sets whether @self will respond to scroll wheel events.
	 *
	 * Params:
	 *     allowScrollWheel = whether @self will respond to scroll wheel events
	 *
	 * Since: 1.0
	 */
	public void setAllowScrollWheel(bool allowScrollWheel)
	{
		adw_carousel_set_allow_scroll_wheel(adwCarousel, allowScrollWheel);
	}

	/**
	 * Sets whether @self can be navigated.
	 *
	 * Params:
	 *     interactive = whether @self can be navigated
	 *
	 * Since: 1.0
	 */
	public void setInteractive(bool interactive)
	{
		adw_carousel_set_interactive(adwCarousel, interactive);
	}

	/**
	 * Sets duration of the animation used when adding or removing pages.
	 *
	 * Params:
	 *     revealDuration = the new reveal duration value
	 *
	 * Since: 1.0
	 */
	public void setRevealDuration(uint revealDuration)
	{
		adw_carousel_set_reveal_duration(adwCarousel, revealDuration);
	}

	/**
	 * Sets the scroll animation spring parameters for @self.
	 *
	 * Params:
	 *     params = the new parameters
	 *
	 * Since: 1.0
	 */
	public void setScrollParams(SpringParams params)
	{
		adw_carousel_set_scroll_params(adwCarousel, (params is null) ? null : params.getSpringParamsStruct());
	}

	/**
	 * Sets spacing between pages in pixels.
	 *
	 * Params:
	 *     spacing = the new spacing value
	 *
	 * Since: 1.0
	 */
	public void setSpacing(uint spacing)
	{
		adw_carousel_set_spacing(adwCarousel, spacing);
	}

	/**
	 * This signal is emitted after a page has been changed.
	 *
	 * It can be used to implement "infinite scrolling" by amending the pages
	 * after every scroll.
	 *
	 * Params:
	 *     index = current page
	 *
	 * Since: 1.0
	 */
	gulong addOnPageChanged(void delegate(uint, Carousel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
