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
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * #GtkEventControllerMotion is an event controller meant for situations
 * where you need to track the position of the pointer.
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
	 * Returns: a new #GtkEventControllerMotion
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
	 * Returns the value of the GtkEventControllerMotion:contains-pointer property.
	 *
	 * Returns: %TRUE if a pointer is within @self or one of its children
	 */
	public bool containsPointer()
	{
		return gtk_event_controller_motion_contains_pointer(gtkEventControllerMotion) != 0;
	}

	/**
	 * Returns the widget that contained the pointer before.
	 *
	 * This function can only be used in handlers for the
	 * #GtkEventControllerMotion::enter and
	 * #GtkEventControllerMotion::leave signals.
	 *
	 * Returns: the previous pointer focus
	 */
	public Widget getPointerOrigin()
	{
		auto __p = gtk_event_controller_motion_get_pointer_origin(gtkEventControllerMotion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the widget that will contain the pointer afterwards.
	 *
	 * This function can only be used in handlers for the
	 * #GtkEventControllerMotion::enter and
	 * #GtkEventControllerMotion::leave signals.
	 *
	 * Returns: the next pointer focus
	 */
	public Widget getPointerTarget()
	{
		auto __p = gtk_event_controller_motion_get_pointer_target(gtkEventControllerMotion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the value of the GtkEventControllerMotion:is-pointer property.
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
	 *     x = the x coordinate
	 *     y = the y coordinate
	 *     crossingMode = the crossing mode of this event
	 *     notifyType = the kind of crossing event
	 */
	gulong addOnEnter(void delegate(double, double, GdkCrossingMode, GdkNotifyType, EventControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that pointer has left the widget.
	 *
	 * Params:
	 *     crossingMode = the crossing mode of this event
	 *     notifyType = the kind of crossing event
	 */
	gulong addOnLeave(void delegate(GdkCrossingMode, GdkNotifyType, EventControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
