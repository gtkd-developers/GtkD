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
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkOverlay` is a container which contains a single main child, on top
 * of which it can place “overlay” widgets.
 * 
 * ![An example GtkOverlay](overlay.png)
 * 
 * The position of each overlay widget is determined by its
 * [property@Gtk.Widget:halign] and [property@Gtk.Widget:valign]
 * properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
 * will be placed at the top left corner of the `GtkOverlay` container,
 * whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
 * to %GTK_ALIGN_END will be placed a the bottom edge of the `GtkOverlay`,
 * horizontally centered. The position can be adjusted by setting the margin
 * properties of the child to non-zero values.
 * 
 * More complicated placement of overlays is possible by connecting
 * to the [signal@Gtk.Overlay::get-child-position] signal.
 * 
 * An overlay’s minimum and natural sizes are those of its main child.
 * The sizes of overlay children are not considered when measuring these
 * preferred sizes.
 * 
 * # GtkOverlay as GtkBuildable
 * 
 * The `GtkOverlay` implementation of the `GtkBuildable` interface
 * supports placing a child as an overlay by specifying “overlay” as
 * the “type” attribute of a `<child>` element.
 * 
 * # CSS nodes
 * 
 * `GtkOverlay` has a single CSS node with the name “overlay”. Overlay children
 * whose alignments cause them to be positioned at an edge get the style classes
 * “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
 */
public class Overlay : Widget
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
		super(cast(GtkWidget*)gtkOverlay, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_overlay_get_type();
	}

	/**
	 * Creates a new `GtkOverlay`.
	 *
	 * Returns: a new `GtkOverlay` object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_overlay_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkOverlay*) __p);
	}

	/**
	 * Adds @widget to @overlay.
	 *
	 * The widget will be stacked on top of the main widget
	 * added with [method@Gtk.Overlay.set_child].
	 *
	 * The position at which @widget is placed is determined
	 * from its [property@Gtk.Widget:halign] and
	 * [property@Gtk.Widget:valign] properties.
	 *
	 * Params:
	 *     widget = a `GtkWidget` to be added to the container
	 */
	public void addOverlay(Widget widget)
	{
		gtk_overlay_add_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets the child widget of @overlay.
	 *
	 * Returns: the child widget of @overlay
	 */
	public Widget getChild()
	{
		auto __p = gtk_overlay_get_child(gtkOverlay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether @widget should be clipped within the parent.
	 *
	 * Params:
	 *     widget = an overlay child of `GtkOverlay`
	 *
	 * Returns: whether the widget is clipped within the parent.
	 */
	public bool getClipOverlay(Widget widget)
	{
		return gtk_overlay_get_clip_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct()) != 0;
	}

	/**
	 * Gets whether @widget's size is included in the measurement of
	 * @overlay.
	 *
	 * Params:
	 *     widget = an overlay child of `GtkOverlay`
	 *
	 * Returns: whether the widget is measured
	 */
	public bool getMeasureOverlay(Widget widget)
	{
		return gtk_overlay_get_measure_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct()) != 0;
	}

	/**
	 * Removes an overlay that was added with gtk_overlay_add_overlay().
	 *
	 * Params:
	 *     widget = a `GtkWidget` to be removed
	 */
	public void removeOverlay(Widget widget)
	{
		gtk_overlay_remove_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the child widget of @overlay.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_overlay_set_child(gtkOverlay, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether @widget should be clipped within the parent.
	 *
	 * Params:
	 *     widget = an overlay child of `GtkOverlay`
	 *     clipOverlay = whether the child should be clipped
	 */
	public void setClipOverlay(Widget widget, bool clipOverlay)
	{
		gtk_overlay_set_clip_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct(), clipOverlay);
	}

	/**
	 * Sets whether @widget is included in the measured size of @overlay.
	 *
	 * The overlay will request the size of the largest child that has
	 * this property set to %TRUE. Children who are not included may
	 * be drawn outside of @overlay's allocation if they are too large.
	 *
	 * Params:
	 *     widget = an overlay child of `GtkOverlay`
	 *     measure = whether the child should be measured
	 */
	public void setMeasureOverlay(Widget widget, bool measure)
	{
		gtk_overlay_set_measure_overlay(gtkOverlay, (widget is null) ? null : widget.getWidgetStruct(), measure);
	}

	/**
	 * Emitted to determine the position and size of any overlay
	 * child widgets.
	 *
	 * A handler for this signal should fill @allocation with
	 * the desired position and size for @widget, relative to
	 * the 'main' child of @overlay.
	 *
	 * The default handler for this signal uses the @widget's
	 * halign and valign properties to determine the position
	 * and gives the widget its natural size (except that an
	 * alignment of %GTK_ALIGN_FILL will cause the overlay to
	 * be full-width/height). If the main child is a
	 * `GtkScrolledWindow`, the overlays are placed relative
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
