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


module gtk.GestureStylus;

private import gdk.DeviceTool;
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
 * #GtkGestureStylus is a #GtkGesture implementation specific to stylus
 * input. The provided signals just provide the basic information
 */
public class GestureStylus : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureStylus* gtkGestureStylus;

	/** Get the main Gtk struct */
	public GtkGestureStylus* getGestureStylusStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureStylus;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureStylus;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureStylus* gtkGestureStylus, bool ownedRef = false)
	{
		this.gtkGestureStylus = gtkGestureStylus;
		super(cast(GtkGestureSingle*)gtkGestureStylus, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_stylus_get_type();
	}

	/**
	 * Creates a new #GtkGestureStylus.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: a newly created stylus gesture
	 *
	 * Since: 3.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto __p = gtk_gesture_stylus_new((widget is null) ? null : widget.getWidgetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureStylus*) __p, true);
	}

	/**
	 * Returns the current values for the requested @axes. This function
	 * must be called from either the #GtkGestureStylus:down,
	 * #GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
	 * signals.
	 *
	 * Params:
	 *     axes = array of requested axes, terminated with #GDK_AXIS_IGNORE
	 *     values = return location for the axis values
	 *
	 * Returns: #TRUE if there is a current value for the axes
	 *
	 * Since: 3.24
	 */
	public bool getAxes(GdkAxisUse[] axes, out double[] values)
	{
		double* outvalues;

		auto __p = gtk_gesture_stylus_get_axes(gtkGestureStylus, axes.ptr, &outvalues) != 0;

		values = outvalues[0 .. getArrayLength(outvalues)];

		return __p;
	}

	/**
	 * Returns the current value for the requested @axis. This function
	 * must be called from either the #GtkGestureStylus:down,
	 * #GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
	 * signals.
	 *
	 * Params:
	 *     axis = requested device axis
	 *     value = return location for the axis value
	 *
	 * Returns: #TRUE if there is a current value for the axis
	 *
	 * Since: 3.24
	 */
	public bool getAxis(GdkAxisUse axis, out double value)
	{
		return gtk_gesture_stylus_get_axis(gtkGestureStylus, axis, &value) != 0;
	}

	/**
	 * Returns the #GdkDeviceTool currently driving input through this gesture.
	 * This function must be called from either the #GtkGestureStylus::down,
	 * #GtkGestureStylus::motion, #GtkGestureStylus::up or #GtkGestureStylus::proximity
	 * signal handlers.
	 *
	 * Returns: The current stylus tool
	 *
	 * Since: 3.24
	 */
	public DeviceTool getDeviceTool()
	{
		auto __p = gtk_gesture_stylus_get_device_tool(gtkGestureStylus);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceTool)(cast(GdkDeviceTool*) __p);
	}

	/** */
	gulong addOnDown(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "down", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnMotion(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnProximity(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "proximity", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnUp(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "up", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
