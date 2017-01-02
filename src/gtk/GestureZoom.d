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
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkGestureZoom is a #GtkGesture implementation able to recognize
 * pinch/zoom gestures, whenever the distance between both tracked
 * sequences changes, the #GtkGestureZoom::scale-changed signal is
 * emitted to report the scale factor.
 */
public class GestureZoom : Gesture
{
	/** the main Gtk struct */
	protected GtkGestureZoom* gtkGestureZoom;

	/** Get the main Gtk struct */
	public GtkGestureZoom* getGestureZoomStruct()
	{
		return gtkGestureZoom;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureZoom;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkGestureZoom = cast(GtkGestureZoom*)obj;
		super.setStruct(obj);
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
	 * Returns a newly created #GtkGesture that recognizes zoom
	 * in/out gestures (usually known as pinch/zoom).
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Return: a newly created #GtkGestureZoom
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto p = gtk_gesture_zoom_new((widget is null) ? null : widget.getWidgetStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkGestureZoom*) p, true);
	}

	/**
	 * If @gesture is active, this function returns the zooming difference
	 * since the gesture was recognized (hence the starting point is
	 * considered 1:1). If @gesture is not active, 1 is returned.
	 *
	 * Return: the scale delta
	 *
	 * Since: 3.14
	 */
	public double getScaleDelta()
	{
		return gtk_gesture_zoom_get_scale_delta(gtkGestureZoom);
	}

	protected class OnScaleChangedDelegateWrapper
	{
		void delegate(double, GestureZoom) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(double, GestureZoom) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnScaleChangedDelegateWrapper[] onScaleChangedListeners;

	/**
	 * This signal is emitted whenever the distance between both tracked
	 * sequences changes.
	 *
	 * Params:
	 *     scale = Scale delta, taking the initial state as 1:1
	 *
	 * Since: 3.14
	 */
	gulong addOnScaleChanged(void delegate(double, GestureZoom) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onScaleChangedListeners ~= new OnScaleChangedDelegateWrapper(dlg, 0, connectFlags);
		onScaleChangedListeners[onScaleChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"scale-changed",
			cast(GCallback)&callBackScaleChanged,
			cast(void*)onScaleChangedListeners[onScaleChangedListeners.length - 1],
			cast(GClosureNotify)&callBackScaleChangedDestroy,
			connectFlags);
		return onScaleChangedListeners[onScaleChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackScaleChanged(GtkGestureZoom* gesturezoomStruct, double scale,OnScaleChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(scale, wrapper.outer);
	}
	
	extern(C) static void callBackScaleChangedDestroy(OnScaleChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnScaleChanged(wrapper);
	}

	protected void internalRemoveOnScaleChanged(OnScaleChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onScaleChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onScaleChangedListeners[index] = null;
				onScaleChangedListeners = std.algorithm.remove(onScaleChangedListeners, index);
				break;
			}
		}
	}
	
}
