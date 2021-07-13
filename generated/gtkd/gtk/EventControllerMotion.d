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


module gtk.EventControllerMotion;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkEventControllerMotion` is an event controller tracking the pointer
 * position.
 * 
 * The event controller offers [signal@Gtk.EventControllerMotion::enter]
 * and [signal@Gtk.EventControllerMotion::leave] signals, as well as
 * [property@Gtk.EventControllerMotion:is-pointer] and
 * [property@Gtk.EventControllerMotion:contains-pointer] properties
 * which are updated to reflect changes in the pointer position as it
 * moves over the widget.
 */
public class EventControllerMotion : EventController
{
	/** the main Gtk struct */
	protected GtkEventControllerMotion* gtkEventControllerMotion;

	/** Get the main Gtk struct */
	public GtkEventControllerMotion* getEventControllerMotionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventControllerMotion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventControllerMotion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventControllerMotion* gtkEventControllerMotion, bool ownedRef = false)
	{
		this.gtkEventControllerMotion = gtkEventControllerMotion;
		super(cast(GtkEventController*)gtkEventControllerMotion, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_motion_get_type();
	}

	/**
	 * Creates a new event controller that will handle motion events.
	 *
	 * Returns: a new `GtkEventControllerMotion`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_event_controller_motion_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerMotion*) __p, true);
	}

	/**
	 * Returns if a pointer is within @self or one of its children.
	 *
	 * Returns: %TRUE if a pointer is within @self or one of its children
	 */
	public bool containsPointer()
	{
		return gtk_event_controller_motion_contains_pointer(gtkEventControllerMotion) != 0;
	}

	/**
	 * Returns if a pointer is within @self, but not one of its children.
	 *
	 * Returns: %TRUE if a pointer is within @self but not one of its children
	 */
	public bool isPointer()
	{
		return gtk_event_controller_motion_is_pointer(gtkEventControllerMotion) != 0;
	}

	/**
	 * Signals that the pointer has entered the widget.
	 *
	 * Params:
	 *     x = coordinates of pointer location
	 *     y = coordinates of pointer location
	 */
	gulong addOnEnter(void delegate(double, double, EventControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the pointer has left the widget.
	 */
	gulong addOnLeave(void delegate(EventControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the pointer moves inside the widget.
	 *
	 * Params:
	 *     x = the x coordinate
	 *     y = the y coordinate
	 */
	gulong addOnMotion(void delegate(double, double, EventControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
