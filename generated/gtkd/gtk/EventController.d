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

private import gdk.Event;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkEventController is a base, low-level implementation for event
 * controllers. Those react to a series of #GdkEvents, and possibly trigger
 * actions as a consequence of those.
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
	 * Gets the propagation phase at which @controller handles events.
	 *
	 * Returns: the propagation phase
	 *
	 * Since: 3.14
	 */
	public GtkPropagationPhase getPropagationPhase()
	{
		return gtk_event_controller_get_propagation_phase(gtkEventController);
	}

	/**
	 * Returns the #GtkWidget this controller relates to.
	 *
	 * Returns: a #GtkWidget
	 *
	 * Since: 3.14
	 */
	public Widget getWidget()
	{
		auto p = gtk_event_controller_get_widget(gtkEventController);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Feeds an events into @controller, so it can be interpreted
	 * and the controller actions triggered.
	 *
	 * Params:
	 *     event = a #GdkEvent
	 *
	 * Returns: %TRUE if the event was potentially useful to trigger the
	 *     controller action
	 *
	 * Since: 3.14
	 */
	public bool handleEvent(Event event)
	{
		return gtk_event_controller_handle_event(gtkEventController, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Resets the @controller to a clean state. Every interaction
	 * the controller did through #GtkEventController::handle-event
	 * will be dropped at this point.
	 *
	 * Since: 3.14
	 */
	public void reset()
	{
		gtk_event_controller_reset(gtkEventController);
	}

	/**
	 * Sets the propagation phase at which a controller handles events.
	 *
	 * If @phase is %GTK_PHASE_NONE, no automatic event handling will be
	 * performed, but other additional gesture maintenance will. In that phase,
	 * the events can be managed by calling gtk_event_controller_handle_event().
	 *
	 * Params:
	 *     phase = a propagation phase
	 *
	 * Since: 3.14
	 */
	public void setPropagationPhase(GtkPropagationPhase phase)
	{
		gtk_event_controller_set_propagation_phase(gtkEventController, phase);
	}
}
