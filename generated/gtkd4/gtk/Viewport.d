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


module gtk.Viewport;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Bin;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The #GtkViewport widget acts as an adaptor class, implementing
 * scrollability for child widgets that lack their own scrolling
 * capabilities. Use GtkViewport to scroll child widgets such as
 * #GtkGrid, #GtkBox, and so on.
 * 
 * If a widget has native scrolling abilities, such as #GtkTextView,
 * #GtkTreeView or #GtkIconView, it can be added to a #GtkScrolledWindow
 * with gtk_container_add(). If a widget does not, you must first add the
 * widget to a #GtkViewport, then add the viewport to the scrolled window.
 * gtk_container_add() does this automatically if a child that does not
 * implement #GtkScrollable is added to a #GtkScrolledWindow, so you can
 * ignore the presence of the viewport.
 * 
 * The GtkViewport will start scrolling content only if allocated less
 * than the child widget’s minimum size in a given orientation.
 * 
 * # CSS nodes
 * 
 * GtkViewport has a single CSS node with name viewport.
 */
public class Viewport : Bin, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkViewport* gtkViewport;

	/** Get the main Gtk struct */
	public GtkViewport* getViewportStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkViewport;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkViewport;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkViewport* gtkViewport, bool ownedRef = false)
	{
		this.gtkViewport = gtkViewport;
		super(cast(GtkBin*)gtkViewport, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkViewport);


	/** */
	public static GType getType()
	{
		return gtk_viewport_get_type();
	}

	/**
	 * Creates a new #GtkViewport with the given adjustments, or with default
	 * adjustments if none are given.
	 *
	 * Params:
	 *     hadjustment = horizontal adjustment
	 *     vadjustment = vertical adjustment
	 *
	 * Returns: a new #GtkViewport
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment hadjustment, Adjustment vadjustment)
	{
		auto __p = gtk_viewport_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkViewport*) __p);
	}

	/**
	 * Gets the shadow type of the #GtkViewport. See
	 * gtk_viewport_set_shadow_type().
	 *
	 * Returns: the shadow type
	 */
	public GtkShadowType getShadowType()
	{
		return gtk_viewport_get_shadow_type(gtkViewport);
	}

	/**
	 * Sets the shadow type of the viewport.
	 *
	 * Params:
	 *     type = the new shadow type.
	 */
	public void setShadowType(GtkShadowType type)
	{
		gtk_viewport_set_shadow_type(gtkViewport, type);
	}
}
