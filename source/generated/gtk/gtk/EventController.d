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


module gtk.EventController;

private import gdk.Device;
private import gdk.Event;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkEventController` is the base class for event controllers.
 * 
 * These are ancillary objects associated to widgets, which react
 * to `GdkEvents`, and possibly trigger actions as a consequence.
 * 
 * Event controllers are added to a widget with
 * [method@Gtk.Widget.add_controller]. It is rarely necessary to
 * explicitly remove a controller with [method@Gtk.Widget.remove_controller].
 * 
 * See the chapter on [input handling](input-handling.html) for
 * an overview of the basic concepts, such as the capture and bubble
 * phases of even propagation.
 */
public class EventController : ObjectG
{
	/** the main Gtk struct */
	protected GtkEventController* gtkEventController;

	/** Get the main Gtk struct */
	public GtkEventController* getEventControllerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventController;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventController;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventController* gtkEventController, bool ownedRef = false)
	{
		this.gtkEventController = gtkEventController;
		super(cast(GObject*)gtkEventController, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_get_type();
	}

	/**
	 * Returns the event that is currently being handled by the controller.
	 *
	 * At other times, %NULL is returned.
	 *
	 * Returns: the event that is currently
	 *     handled by @controller
	 */
	public Event getCurrentEvent()
	{
		auto __p = gtk_event_controller_get_current_event(gtkEventController);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p);
	}

	/**
	 * Returns the device of the event that is currently being
	 * handled by the controller.
	 *
	 * At other times, %NULL is returned.
	 *
	 * Returns: device of the event is
	 *     currently handled by @controller
	 */
	public Device getCurrentEventDevice()
	{
		auto __p = gtk_event_controller_get_current_event_device(gtkEventController);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Returns the modifier state of the event that is currently being
	 * handled by the controller.
	 *
	 * At other times, 0 is returned.
	 *
	 * Returns: modifier state of the event is currently handled by @controller
	 */
	public GdkModifierType getCurrentEventState()
	{
		return gtk_event_controller_get_current_event_state(gtkEventController);
	}

	/**
	 * Returns the timestamp of the event that is currently being
	 * handled by the controller.
	 *
	 * At other times, 0 is returned.
	 *
	 * Returns: timestamp of the event is currently handled by @controller
	 */
	public uint getCurrentEventTime()
	{
		return gtk_event_controller_get_current_event_time(gtkEventController);
	}

	/**
	 * Gets the name of @controller.
	 *
	 * Returns: The controller name
	 */
	public string getName()
	{
		return Str.toString(gtk_event_controller_get_name(gtkEventController));
	}

	/**
	 * Gets the propagation limit of the event controller.
	 *
	 * Returns: the propagation limit
	 */
	public GtkPropagationLimit getPropagationLimit()
	{
		return gtk_event_controller_get_propagation_limit(gtkEventController);
	}

	/**
	 * Gets the propagation phase at which @controller handles events.
	 *
	 * Returns: the propagation phase
	 */
	public GtkPropagationPhase getPropagationPhase()
	{
		return gtk_event_controller_get_propagation_phase(gtkEventController);
	}

	/**
	 * Returns the `GtkWidget` this controller relates to.
	 *
	 * Returns: a `GtkWidget`
	 */
	public Widget getWidget()
	{
		auto __p = gtk_event_controller_get_widget(gtkEventController);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Resets the @controller to a clean state.
	 */
	public void reset()
	{
		gtk_event_controller_reset(gtkEventController);
	}

	/**
	 * Sets a name on the controller that can be used for debugging.
	 *
	 * Params:
	 *     name = a name for @controller
	 */
	public void setName(string name)
	{
		gtk_event_controller_set_name(gtkEventController, Str.toStringz(name));
	}

	/**
	 * Sets the event propagation limit on the event controller.
	 *
	 * If the limit is set to %GTK_LIMIT_SAME_NATIVE, the controller
	 * won't handle events that are targeted at widgets on a different
	 * surface, such as popovers.
	 *
	 * Params:
	 *     limit = the propagation limit
	 */
	public void setPropagationLimit(GtkPropagationLimit limit)
	{
		gtk_event_controller_set_propagation_limit(gtkEventController, limit);
	}

	/**
	 * Sets the propagation phase at which a controller handles events.
	 *
	 * If @phase is %GTK_PHASE_NONE, no automatic event handling will be
	 * performed, but other additional gesture maintenance will.
	 *
	 * Params:
	 *     phase = a propagation phase
	 */
	public void setPropagationPhase(GtkPropagationPhase phase)
	{
		gtk_event_controller_set_propagation_phase(gtkEventController, phase);
	}
}
