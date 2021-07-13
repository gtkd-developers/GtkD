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
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGestureStylus` is a `GtkGesture` specific to stylus input.
 * 
 * The provided signals just relay the basic information of the
 * stylus events.
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
	 * Creates a new `GtkGestureStylus`.
	 *
	 * Returns: a newly created stylus gesture
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gesture_stylus_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureStylus*) __p, true);
	}

	/**
	 * Returns the current values for the requested @axes.
	 *
	 * This function must be called from the handler of one of the
	 * [signal@Gtk.GestureStylus::down], [signal@Gtk.GestureStylus::motion],
	 * [signal@Gtk.GestureStylus::up] or [signal@Gtk.GestureStylus::proximity]
	 * signals.
	 *
	 * Params:
	 *     axes = array of requested axes, terminated with %GDK_AXIS_IGNORE
	 *     values = return location for the axis values
	 *
	 * Returns: %TRUE if there is a current value for the axes
	 */
	public bool getAxes(GdkAxisUse[] axes, out double[] values)
	{
		double* outvalues;

		auto __p = gtk_gesture_stylus_get_axes(gtkGestureStylus, axes.ptr, &outvalues) != 0;

		values = outvalues[0 .. getArrayLength(outvalues)];

		return __p;
	}

	/**
	 * Returns the current value for the requested @axis.
	 *
	 * This function must be called from the handler of one of the
	 * [signal@Gtk.GestureStylus::down], [signal@Gtk.GestureStylus::motion],
	 * [signal@Gtk.GestureStylus::up] or [signal@Gtk.GestureStylus::proximity]
	 * signals.
	 *
	 * Params:
	 *     axis = requested device axis
	 *     value = return location for the axis value
	 *
	 * Returns: %TRUE if there is a current value for the axis
	 */
	public bool getAxis(GdkAxisUse axis, out double value)
	{
		return gtk_gesture_stylus_get_axis(gtkGestureStylus, axis, &value) != 0;
	}

	/**
	 * Returns the accumulated backlog of tracking information.
	 *
	 * By default, GTK will limit rate of input events. On stylus input
	 * where accuracy of strokes is paramount, this function returns the
	 * accumulated coordinate/timing state before the emission of the
	 * current [Gtk.GestureStylus::motion] signal.
	 *
	 * This function may only be called within a [signal@Gtk.GestureStylus::motion]
	 * signal handler, the state given in this signal and obtainable through
	 * [method@Gtk.GestureStylus.get_axis] express the latest (most up-to-date)
	 * state in motion history.
	 *
	 * The @backlog is provided in chronological order.
	 *
	 * Params:
	 *     backlog = coordinates and times for the backlog events
	 *
	 * Returns: %TRUE if there is a backlog to unfold in the current state.
	 */
	public bool getBacklog(out GdkTimeCoord[] backlog)
	{
		GdkTimeCoord* outbacklog;
		uint nElems;

		auto __p = gtk_gesture_stylus_get_backlog(gtkGestureStylus, &outbacklog, &nElems) != 0;

		backlog = outbacklog[0 .. nElems];

		return __p;
	}

	/**
	 * Returns the `GdkDeviceTool` currently driving input through this gesture.
	 *
	 * This function must be called from the handler of one of the
	 * [signal@Gtk.GestureStylus::down], [signal@Gtk.GestureStylus::motion],
	 * [signal@Gtk.GestureStylus::up] or [signal@Gtk.GestureStylus::proximity]
	 * signals.
	 *
	 * Returns: The current stylus tool
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

	/**
	 * Emitted when the stylus touches the device.
	 *
	 * Params:
	 *     x = the X coordinate of the stylus event
	 *     y = the Y coordinate of the stylus event
	 */
	gulong addOnDown(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "down", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the stylus moves while touching the device.
	 *
	 * Params:
	 *     x = the X coordinate of the stylus event
	 *     y = the Y coordinate of the stylus event
	 */
	gulong addOnMotion(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the stylus is in proximity of the device.
	 *
	 * Params:
	 *     x = the X coordinate of the stylus event
	 *     y = the Y coordinate of the stylus event
	 */
	gulong addOnProximity(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "proximity", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the stylus no longer touches the device.
	 *
	 * Params:
	 *     x = the X coordinate of the stylus event
	 *     y = the Y coordinate of the stylus event
	 */
	gulong addOnUp(void delegate(double, double, GestureStylus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "up", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
