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


module gtk.GestureZoom;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGestureZoom` is a `GtkGesture` for 2-finger pinch/zoom gestures.
 * 
 * Whenever the distance between both tracked sequences changes, the
 * [signal@Gtk.GestureZoom::scale-changed] signal is emitted to report
 * the scale factor.
 */
public class GestureZoom : Gesture
{
	/** the main Gtk struct */
	protected GtkGestureZoom* gtkGestureZoom;

	/** Get the main Gtk struct */
	public GtkGestureZoom* getGestureZoomStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureZoom;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureZoom;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureZoom* gtkGestureZoom, bool ownedRef = false)
	{
		this.gtkGestureZoom = gtkGestureZoom;
		super(cast(GtkGesture*)gtkGestureZoom, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_zoom_get_type();
	}

	/**
	 * Returns a newly created `GtkGesture` that recognizes
	 * pinch/zoom gestures.
	 *
	 * Returns: a newly created `GtkGestureZoom`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gesture_zoom_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureZoom*) __p, true);
	}

	/**
	 * Gets the scale delta.
	 *
	 * If @gesture is active, this function returns the zooming
	 * difference since the gesture was recognized (hence the
	 * starting point is considered 1:1). If @gesture is not
	 * active, 1 is returned.
	 *
	 * Returns: the scale delta
	 */
	public double getScaleDelta()
	{
		return gtk_gesture_zoom_get_scale_delta(gtkGestureZoom);
	}

	/**
	 * Emitted whenever the distance between both tracked sequences changes.
	 *
	 * Params:
	 *     scale = Scale delta, taking the initial state as 1:1
	 */
	gulong addOnScaleChanged(void delegate(double, GestureZoom) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scale-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
