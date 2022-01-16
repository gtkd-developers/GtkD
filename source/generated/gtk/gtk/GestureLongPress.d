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


module gtk.GestureLongPress;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureSingle;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGestureLongPress` is a `GtkGesture` for long presses.
 * 
 * This gesture is also known as “Press and Hold”.
 * 
 * When the timeout is exceeded, the gesture is triggering the
 * [signal@Gtk.GestureLongPress::pressed] signal.
 * 
 * If the touchpoint is lifted before the timeout passes, or if
 * it drifts too far of the initial press point, the
 * [signal@Gtk.GestureLongPress::cancelled] signal will be emitted.
 * 
 * How long the timeout is before the ::pressed signal gets emitted is
 * determined by the [property@Gtk.Settings:gtk-long-press-time] setting.
 * It can be modified by the [property@Gtk.GestureLongPress:delay-factor]
 * property.
 */
public class GestureLongPress : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureLongPress* gtkGestureLongPress;

	/** Get the main Gtk struct */
	public GtkGestureLongPress* getGestureLongPressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureLongPress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureLongPress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureLongPress* gtkGestureLongPress, bool ownedRef = false)
	{
		this.gtkGestureLongPress = gtkGestureLongPress;
		super(cast(GtkGestureSingle*)gtkGestureLongPress, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_long_press_get_type();
	}

	/**
	 * Returns a newly created `GtkGesture` that recognizes long presses.
	 *
	 * Returns: a newly created `GtkGestureLongPress`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gesture_long_press_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureLongPress*) __p, true);
	}

	/**
	 * Returns the delay factor.
	 *
	 * Returns: the delay factor
	 */
	public double getDelayFactor()
	{
		return gtk_gesture_long_press_get_delay_factor(gtkGestureLongPress);
	}

	/**
	 * Applies the given delay factor.
	 *
	 * The default long press time will be multiplied by this value.
	 * Valid values are in the range [0.5..2.0].
	 *
	 * Params:
	 *     delayFactor = The delay factor to apply
	 */
	public void setDelayFactor(double delayFactor)
	{
		gtk_gesture_long_press_set_delay_factor(gtkGestureLongPress, delayFactor);
	}

	/**
	 * Emitted whenever a press moved too far, or was released
	 * before [signal@Gtk.GestureLongPress::pressed] happened.
	 */
	gulong addOnCancelled(void delegate(GestureLongPress) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancelled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a press goes unmoved/unreleased longer than
	 * what the GTK defaults tell.
	 *
	 * Params:
	 *     x = the X coordinate where the press happened, relative to the widget allocation
	 *     y = the Y coordinate where the press happened, relative to the widget allocation
	 */
	gulong addOnPressed(void delegate(double, double, GestureLongPress) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pressed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
