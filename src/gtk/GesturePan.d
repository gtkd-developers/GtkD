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
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkGesturePan is a #GtkGesture implementation able to recognize
 * pan gestures, those are drags that are locked to happen along one
 * axis. The axis that a #GtkGesturePan handles is defined at
 * construct time, and can be changed through
 * gtk_gesture_pan_set_orientation().
 * 
 * When the gesture starts to be recognized, #GtkGesturePan will
 * attempt to determine as early as possible whether the sequence
 * is moving in the expected direction, and denying the sequence if
 * this does not happen.
 * 
 * Once a panning gesture along the expected axis is recognized,
 * the #GtkGesturePan::pan signal will be emitted as input events
 * are received, containing the offset in the given axis.
 */
public class GesturePan : GestureDrag
{
	/** the main Gtk struct */
	protected GtkGesturePan* gtkGesturePan;

	/** Get the main Gtk struct */
	public GtkGesturePan* getGesturePanStruct()
	{
		return gtkGesturePan;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGesturePan;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkGesturePan = cast(GtkGesturePan*)obj;
		super.setStruct(obj);
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
	 * Returns a newly created #GtkGesture that recognizes pan gestures.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     orientation = expected orientation
	 *
	 * Return: a newly created #GtkGesturePan
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget, GtkOrientation orientation)
	{
		auto p = gtk_gesture_pan_new((widget is null) ? null : widget.getWidgetStruct(), orientation);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkGesturePan*) p, true);
	}

	/**
	 * Returns the orientation of the pan gestures that this @gesture expects.
	 *
	 * Return: the expected orientation for pan gestures
	 *
	 * Since: 3.14
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
	 *
	 * Since: 3.14
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		gtk_gesture_pan_set_orientation(gtkGesturePan, orientation);
	}

	protected class OnPanDelegateWrapper
	{
		void delegate(GtkPanDirection, double, GesturePan) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(GtkPanDirection, double, GesturePan) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPanDelegateWrapper[] onPanListeners;

	/**
	 * This signal is emitted once a panning gesture along the
	 * expected axis is detected.
	 *
	 * Params:
	 *     direction = current direction of the pan gesture
	 *     offset = Offset along the gesture orientation
	 *
	 * Since: 3.14
	 */
	gulong addOnPan(void delegate(GtkPanDirection, double, GesturePan) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPanListeners ~= new OnPanDelegateWrapper(dlg, 0, connectFlags);
		onPanListeners[onPanListeners.length - 1].handlerId = Signals.connectData(
			this,
			"pan",
			cast(GCallback)&callBackPan,
			cast(void*)onPanListeners[onPanListeners.length - 1],
			cast(GClosureNotify)&callBackPanDestroy,
			connectFlags);
		return onPanListeners[onPanListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPan(GtkGesturePan* gesturepanStruct, GtkPanDirection direction, double offset,OnPanDelegateWrapper wrapper)
	{
		wrapper.dlg(direction, offset, wrapper.outer);
	}
	
	extern(C) static void callBackPanDestroy(OnPanDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPan(wrapper);
	}

	protected void internalRemoveOnPan(OnPanDelegateWrapper source)
	{
		foreach(index, wrapper; onPanListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPanListeners[index] = null;
				onPanListeners = std.algorithm.remove(onPanListeners, index);
				break;
			}
		}
	}
	
}
