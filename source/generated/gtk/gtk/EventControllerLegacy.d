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


module gtk.EventControllerLegacy;

private import gdk.Event;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkEventControllerLegacy` is an event controller that provides raw
 * access to the event stream.
 * 
 * It should only be used as a last resort if none of the other event
 * controllers or gestures do the job.
 */
public class EventControllerLegacy : EventController
{
	/** the main Gtk struct */
	protected GtkEventControllerLegacy* gtkEventControllerLegacy;

	/** Get the main Gtk struct */
	public GtkEventControllerLegacy* getEventControllerLegacyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventControllerLegacy;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventControllerLegacy;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventControllerLegacy* gtkEventControllerLegacy, bool ownedRef = false)
	{
		this.gtkEventControllerLegacy = gtkEventControllerLegacy;
		super(cast(GtkEventController*)gtkEventControllerLegacy, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_legacy_get_type();
	}

	/**
	 * Creates a new legacy event controller.
	 *
	 * Returns: the newly created event controller.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_event_controller_legacy_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerLegacy*) __p, true);
	}

	/**
	 * Emitted for each GDK event delivered to @controller.
	 *
	 * Params:
	 *     event = the `GdkEvent` which triggered this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event
	 *     and the emission of this signal. %FALSE to propagate the event further.
	 */
	gulong addOnEvent(bool delegate(Event, EventControllerLegacy) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
