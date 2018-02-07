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


module gtk.GestureDrag;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureSingle;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkGestureDrag is a #GtkGesture implementation that recognizes drag
 * operations. The drag operation itself can be tracked throught the
 * #GtkGestureDrag::drag-begin, #GtkGestureDrag::drag-update and
 * #GtkGestureDrag::drag-end signals, or the relevant coordinates be
 * extracted through gtk_gesture_drag_get_offset() and
 * gtk_gesture_drag_get_start_point().
 */
public class GestureDrag : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureDrag* gtkGestureDrag;

	/** Get the main Gtk struct */
	public GtkGestureDrag* getGestureDragStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureDrag;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureDrag;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureDrag* gtkGestureDrag, bool ownedRef = false)
	{
		this.gtkGestureDrag = gtkGestureDrag;
		super(cast(GtkGestureSingle*)gtkGestureDrag, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_drag_get_type();
	}

	/**
	 * Returns a newly created #GtkGesture that recognizes drags.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: a newly created #GtkGestureDrag
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto p = gtk_gesture_drag_new((widget is null) ? null : widget.getWidgetStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureDrag*) p, true);
	}

	/**
	 * If the @gesture is active, this function returns %TRUE and
	 * fills in @x and @y with the coordinates of the current point,
	 * as an offset to the starting drag point.
	 *
	 * Params:
	 *     x = X offset for the current point
	 *     y = Y offset for the current point
	 *
	 * Returns: %TRUE if the gesture is active
	 *
	 * Since: 3.14
	 */
	public bool getOffset(out double x, out double y)
	{
		return gtk_gesture_drag_get_offset(gtkGestureDrag, &x, &y) != 0;
	}

	/**
	 * If the @gesture is active, this function returns %TRUE
	 * and fills in @x and @y with the drag start coordinates,
	 * in window-relative coordinates.
	 *
	 * Params:
	 *     x = X coordinate for the drag start point
	 *     y = Y coordinate for the drag start point
	 *
	 * Returns: %TRUE if the gesture is active
	 *
	 * Since: 3.14
	 */
	public bool getStartPoint(out double x, out double y)
	{
		return gtk_gesture_drag_get_start_point(gtkGestureDrag, &x, &y) != 0;
	}

	/**
	 * This signal is emitted whenever dragging starts.
	 *
	 * Params:
	 *     startX = X coordinate, relative to the widget allocation
	 *     startY = Y coordinate, relative to the widget allocation
	 *
	 * Since: 3.14
	 */
	gulong addOnDragBegin(void delegate(double, double, GestureDrag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever the dragging is finished.
	 *
	 * Params:
	 *     offsetX = X offset, relative to the start point
	 *     offsetY = Y offset, relative to the start point
	 *
	 * Since: 3.14
	 */
	gulong addOnDragEnd(void delegate(double, double, GestureDrag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever the dragging point moves.
	 *
	 * Params:
	 *     offsetX = X offset, relative to the start point
	 *     offsetY = Y offset, relative to the start point
	 *
	 * Since: 3.14
	 */
	gulong addOnDragUpdate(void delegate(double, double, GestureDrag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-update", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
