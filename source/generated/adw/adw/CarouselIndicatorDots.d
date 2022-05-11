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


module adw.CarouselIndicatorDots;

private import adw.Carousel;
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
 * A dots indicator for [class@Carousel].
 * 
 * <picture>
 * <source srcset="carousel-indicator-dots-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="carousel-indicator-dots.png" alt="carousel-indicator-dots">
 * </picture>
 * 
 * The `AdwCarouselIndicatorDots` widget shows a set of dots for each page of a
 * given [class@Carousel]. The dot representing the carousel's active page is
 * larger and more opaque than the others, the transition to the active and
 * inactive state is gradual to match the carousel's position.
 * 
 * See also [class@CarouselIndicatorLines].
 * 
 * ## CSS nodes
 * 
 * `AdwCarouselIndicatorDots` has a single CSS node with name
 * `carouselindicatordots`.
 *
 * Since: 1.0
 */
public class CarouselIndicatorDots : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected AdwCarouselIndicatorDots* adwCarouselIndicatorDots;

	/** Get the main Gtk struct */
	public AdwCarouselIndicatorDots* getCarouselIndicatorDotsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwCarouselIndicatorDots;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwCarouselIndicatorDots;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwCarouselIndicatorDots* adwCarouselIndicatorDots, bool ownedRef = false)
	{
		this.adwCarouselIndicatorDots = adwCarouselIndicatorDots;
		super(cast(GtkWidget*)adwCarouselIndicatorDots, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwCarouselIndicatorDots);


	/** */
	public static GType getType()
	{
		return adw_carousel_indicator_dots_get_type();
	}

	/**
	 * Creates a new `AdwCarouselIndicatorDots`.
	 *
	 * Returns: the newly created `AdwCarouselIndicatorDots`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_carousel_indicator_dots_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwCarouselIndicatorDots*) __p);
	}

	/**
	 * Gets the displayed carousel.
	 *
	 * Returns: the displayed carousel
	 *
	 * Since: 1.0
	 */
	public Carousel getCarousel()
	{
		auto __p = adw_carousel_indicator_dots_get_carousel(adwCarouselIndicatorDots);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Carousel)(cast(AdwCarousel*) __p);
	}

	/**
	 * Sets the displayed carousel.
	 *
	 * Params:
	 *     carousel = a carousel
	 *
	 * Since: 1.0
	 */
	public void setCarousel(Carousel carousel)
	{
		adw_carousel_indicator_dots_set_carousel(adwCarouselIndicatorDots, (carousel is null) ? null : carousel.getCarouselStruct());
	}
}
