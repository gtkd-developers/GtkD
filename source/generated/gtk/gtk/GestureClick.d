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


module gtk.GestureClick;

private import gdk.Event;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureSingle;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGestureClick` is a `GtkGesture` implementation for clicks.
 * 
 * It is able to recognize multiple clicks on a nearby zone, which
 * can be listened for through the [signal@Gtk.GestureClick::pressed]
 * signal. Whenever time or distance between clicks exceed the GTK
 * defaults, [signal@Gtk.GestureClick::stopped] is emitted, and the
 * click counter is reset.
 */
public class GestureClick : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureClick* gtkGestureClick;

	/** Get the main Gtk struct */
	public GtkGestureClick* getGestureClickStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureClick;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureClick;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureClick* gtkGestureClick, bool ownedRef = false)
	{
		this.gtkGestureClick = gtkGestureClick;
		super(cast(GtkGestureSingle*)gtkGestureClick, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_click_get_type();
	}

	/**
	 * Returns a newly created `GtkGesture` that recognizes
	 * single and multiple presses.
	 *
	 * Returns: a newly created `GtkGestureClick`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gesture_click_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureClick*) __p, true);
	}

	/**
	 * Emitted whenever a button or touch press happens.
	 *
	 * Params:
	 *     nPress = how many touch/button presses happened with this one
	 *     x = The X coordinate, in widget allocation coordinates
	 *     y = The Y coordinate, in widget allocation coordinates
	 */
	gulong addOnPressed(void delegate(int, double, double, GestureClick) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pressed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a button or touch is released.
	 *
	 * @n_press will report the number of press that is paired to
	 * this event, note that [signal@Gtk.GestureClick::stopped] may
	 * have been emitted between the press and its release, @n_press
	 * will only start over at the next press.
	 *
	 * Params:
	 *     nPress = number of press that is paired with this release
	 *     x = The X coordinate, in widget allocation coordinates
	 *     y = The Y coordinate, in widget allocation coordinates
	 */
	gulong addOnReleased(void delegate(int, double, double, GestureClick) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "released", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever any time/distance threshold has been exceeded.
	 */
	gulong addOnStopped(void delegate(GestureClick) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "stopped", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever the gesture receives a release
	 * event that had no previous corresponding press.
	 *
	 * Due to implicit grabs, this can only happen on situations
	 * where input is grabbed elsewhere mid-press or the pressed
	 * widget voluntarily relinquishes its implicit grab.
	 *
	 * Params:
	 *     x = X coordinate of the event
	 *     y = Y coordinate of the event
	 *     button = Button being released
	 *     sequence = Sequence being released
	 */
	gulong addOnUnpairedRelease(void delegate(double, double, uint, GdkEventSequence*, GestureClick) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unpaired-release", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever the gesture receives a release
	 * event that had no previous corresponding press.
	 *
	 * Due to implicit grabs, this can only happen on situations
	 * where input is grabbed elsewhere mid-press or the pressed
	 * widget voluntarily relinquishes its implicit grab.
	 *
	 * Params:
	 *     x = X coordinate of the event
	 *     y = Y coordinate of the event
	 *     button = Button being released
	 *     sequence = Sequence being released
	 */
	gulong addOnUnpairedRelease(void delegate(double, double, uint, Event, GestureClick) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unpaired-release", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
