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


module gtk.Overlay;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * GtkOverlay is a container which contains a single main child, on top
 * of which it can place “overlay” widgets. The position of each overlay
 * widget is determined by its #GtkWidget:halign and #GtkWidget:valign
 * properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
 * will be placed at the top left corner of the GtkOverlay container,
 * whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
 * to %GTK_ALIGN_END will be placed a the bottom edge of the GtkOverlay,
 * horizontally centered. The position can be adjusted by setting the margin
 * properties of the child to non-zero values.
 * 
 * More complicated placement of overlays is possible by connecting
 * to the #GtkOverlay::get-child-position signal.
 * 
 * # GtkOverlay as GtkBuildable
 * 
 * The GtkOverlay implementation of the GtkBuildable interface
 * supports placing a child as an overlay by specifying “overlay” as
 * the “type” attribute of a `<child>` element.
 * 
 * # CSS nodes
 * 
 * GtkOverlay has a single CSS node with the name “overlay”. Overlay children
 * whose alignments cause them to be positioned at an edge get the style classes
 * “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
 */
public class Overlay : Bin
{
	/** the main Gtk struct */
	protected GtkOverlay* gtkOverlay;

	/** Get the main Gtk struct */
	public GtkOverlay* getOverlayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkOverlay;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkOverlay;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkOverlay* gtkOverlay, bool ownedRef = false)
	{
		this.gtkOverlay = gtkOverlay;
		super(cast(GtkBin*)gtkOverlay, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_overlay_get_type();
	}

	/**
	 * Creates a new #GtkOverlay.
	 *
	 * Returns: a new #GtkOverlay object.
	 *
	 * Since: 3.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_overlay_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkOverlay*) p);
	}

	/**
	 * Adds @widget to @overlay.
	 *
	 * The widget will be stacked on top of the main widget
	 * added with gtk_container_add().
	 *
	 * The position at which @widget is placed is determined
	 * from its #GtkWidget:halign and #GtkWidget:valign properties.
	 *
	 * Params:
	 *     widget = a #GtkWidget to be added to the container
	 *
	 * Since: 3.2
	 */
	public void addOverlay(Widget widget)
	{
		gtk_overlay_add_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Convenience function to get the value of the #GtkOverlay:pass-through
	 * child property for @widget.
	 *
	 * Params:
	 *     widget = an overlay child of #GtkOverlay
	 *
	 * Returns: whether the widget is a pass through child.
	 *
	 * Since: 3.18
	 */
	public bool getOverlayPassThrough(Widget widget)
	{
		return gtk_overlay_get_overlay_pass_through(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct()) != 0;
	}

	/**
	 * Moves @child to a new @index in the list of @overlay children.
	 * The list contains overlays in the order that these were
	 * added to @overlay.
	 *
	 * A widget’s index in the @overlay children list determines which order
	 * the children are drawn if they overlap. The first child is drawn at
	 * the bottom. It also affects the default focus chain order.
	 *
	 * Params:
	 *     child = the overlaid #GtkWidget to move
	 *     position = the new index for @child in the list of overlay children
	 *         of @overlay, starting from 0. If negative, indicates the end of
	 *         the list
	 *
	 * Since: 3.18
	 */
	public void reorderOverlay(Widget child, int position)
	{
		gtk_overlay_reorder_overlay(gtkOverlay, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Convenience function to set the value of the #GtkOverlay:pass-through
	 * child property for @widget.
	 *
	 * Params:
	 *     widget = an overlay child of #GtkOverlay
	 *     passThrough = whether the child should pass the input through
	 *
	 * Since: 3.18
	 */
	public void setOverlayPassThrough(Widget widget, bool passThrough)
	{
		gtk_overlay_set_overlay_pass_through(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct(), passThrough);
	}

	/**
	 * The ::get-child-position signal is emitted to determine
	 * the position and size of any overlay child widgets. A
	 * handler for this signal should fill @allocation with
	 * the desired position and size for @widget, relative to
	 * the 'main' child of @overlay.
	 *
	 * The default handler for this signal uses the @widget's
	 * halign and valign properties to determine the position
	 * and gives the widget its natural size (except that an
	 * alignment of %GTK_ALIGN_FILL will cause the overlay to
	 * be full-width/height). If the main child is a
	 * #GtkScrolledWindow, the overlays are placed relative
	 * to its contents.
	 *
	 * Params:
	 *     widget = the child widget to position
	 *     allocation = return
	 *         location for the allocation
	 *
	 * Returns: %TRUE if the @allocation has been filled
	 */
	gulong addOnGetChildPosition(bool delegate(Widget, GdkRectangle*, Overlay) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "get-child-position", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
