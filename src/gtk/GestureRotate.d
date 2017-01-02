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


module gtk.GestureRotate;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkGestureRotate is a #GtkGesture implementation able to recognize
 * 2-finger rotations, whenever the angle between both handled sequences
 * changes, the #GtkGestureRotate::angle-changed signal is emitted.
 */
public class GestureRotate : Gesture
{
	/** the main Gtk struct */
	protected GtkGestureRotate* gtkGestureRotate;

	/** Get the main Gtk struct */
	public GtkGestureRotate* getGestureRotateStruct()
	{
		return gtkGestureRotate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureRotate;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkGestureRotate = cast(GtkGestureRotate*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureRotate* gtkGestureRotate, bool ownedRef = false)
	{
		this.gtkGestureRotate = gtkGestureRotate;
		super(cast(GtkGesture*)gtkGestureRotate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_rotate_get_type();
	}

	/**
	 * Returns a newly created #GtkGesture that recognizes 2-touch
	 * rotation gestures.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Return: a newly created #GtkGestureRotate
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto p = gtk_gesture_rotate_new((widget is null) ? null : widget.getWidgetStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkGestureRotate*) p, true);
	}

	/**
	 * If @gesture is active, this function returns the angle difference
	 * in radians since the gesture was first recognized. If @gesture is
	 * not active, 0 is returned.
	 *
	 * Return: the angle delta in radians
	 *
	 * Since: 3.14
	 */
	public double getAngleDelta()
	{
		return gtk_gesture_rotate_get_angle_delta(gtkGestureRotate);
	}

	protected class OnAngleChangedDelegateWrapper
	{
		void delegate(double, double, GestureRotate) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(double, double, GestureRotate) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAngleChangedDelegateWrapper[] onAngleChangedListeners;

	/**
	 * This signal is emitted when the angle between both tracked points
	 * changes.
	 *
	 * Params:
	 *     angle = Current angle in radians
	 *     angleDelta = Difference with the starting angle, in radians
	 *
	 * Since: 3.14
	 */
	gulong addOnAngleChanged(void delegate(double, double, GestureRotate) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onAngleChangedListeners ~= new OnAngleChangedDelegateWrapper(dlg, 0, connectFlags);
		onAngleChangedListeners[onAngleChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"angle-changed",
			cast(GCallback)&callBackAngleChanged,
			cast(void*)onAngleChangedListeners[onAngleChangedListeners.length - 1],
			cast(GClosureNotify)&callBackAngleChangedDestroy,
			connectFlags);
		return onAngleChangedListeners[onAngleChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackAngleChanged(GtkGestureRotate* gesturerotateStruct, double angle, double angleDelta,OnAngleChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(angle, angleDelta, wrapper.outer);
	}
	
	extern(C) static void callBackAngleChangedDestroy(OnAngleChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnAngleChanged(wrapper);
	}

	protected void internalRemoveOnAngleChanged(OnAngleChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onAngleChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onAngleChangedListeners[index] = null;
				onAngleChangedListeners = std.algorithm.remove(onAngleChangedListeners, index);
				break;
			}
		}
	}
	
}
