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


module gtk.GesturePan;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureDrag;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGesturePan` is a `GtkGesture` for pan gestures.
 * 
 * These are drags that are locked to happen along one axis. The axis
 * that a `GtkGesturePan` handles is defined at construct time, and
 * can be changed through [method@Gtk.GesturePan.set_orientation].
 * 
 * When the gesture starts to be recognized, `GtkGesturePan` will
 * attempt to determine as early as possible whether the sequence
 * is moving in the expected direction, and denying the sequence if
 * this does not happen.
 * 
 * Once a panning gesture along the expected axis is recognized,
 * the [signal@Gtk.GesturePan::pan] signal will be emitted as input
 * events are received, containing the offset in the given axis.
 */
public class GesturePan : GestureDrag
{
	/** the main Gtk struct */
	protected GtkGesturePan* gtkGesturePan;

	/** Get the main Gtk struct */
	public GtkGesturePan* getGesturePanStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGesturePan;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGesturePan;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGesturePan* gtkGesturePan, bool ownedRef = false)
	{
		this.gtkGesturePan = gtkGesturePan;
		super(cast(GtkGestureDrag*)gtkGesturePan, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_pan_get_type();
	}

	/**
	 * Returns a newly created `GtkGesture` that recognizes pan gestures.
	 *
	 * Params:
	 *     orientation = expected orientation
	 *
	 * Returns: a newly created `GtkGesturePan`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto __p = gtk_gesture_pan_new(orientation);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGesturePan*) __p, true);
	}

	/**
	 * Returns the orientation of the pan gestures that this @gesture expects.
	 *
	 * Returns: the expected orientation for pan gestures
	 */
	public GtkOrientation getOrientation()
	{
		return gtk_gesture_pan_get_orientation(gtkGesturePan);
	}

	/**
	 * Sets the orientation to be expected on pan gestures.
	 *
	 * Params:
	 *     orientation = expected orientation
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		gtk_gesture_pan_set_orientation(gtkGesturePan, orientation);
	}

	/**
	 * Emitted once a panning gesture along the expected axis is detected.
	 *
	 * Params:
	 *     direction = current direction of the pan gesture
	 *     offset = Offset along the gesture orientation
	 */
	gulong addOnPan(void delegate(GtkPanDirection, double, GesturePan) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pan", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
