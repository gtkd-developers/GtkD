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


module gtk.EventControllerFocus;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkEventControllerFocus` is an event controller to keep track of
 * keyboard focus.
 * 
 * The event controller offers [signal@Gtk.EventControllerFocus::enter]
 * and [signal@Gtk.EventControllerFocus::leave] signals, as well as
 * [property@Gtk.EventControllerFocus:is-focus] and
 * [property@Gtk.EventControllerFocus:contains-focus] properties
 * which are updated to reflect focus changes inside the widget hierarchy
 * that is rooted at the controllers widget.
 */
public class EventControllerFocus : EventController
{
	/** the main Gtk struct */
	protected GtkEventControllerFocus* gtkEventControllerFocus;

	/** Get the main Gtk struct */
	public GtkEventControllerFocus* getEventControllerFocusStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventControllerFocus;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventControllerFocus;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventControllerFocus* gtkEventControllerFocus, bool ownedRef = false)
	{
		this.gtkEventControllerFocus = gtkEventControllerFocus;
		super(cast(GtkEventController*)gtkEventControllerFocus, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_focus_get_type();
	}

	/**
	 * Creates a new event controller that will handle focus events.
	 *
	 * Returns: a new `GtkEventControllerFocus`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_event_controller_focus_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerFocus*) __p, true);
	}

	/**
	 * Returns %TRUE if focus is within @self or one of its children.
	 *
	 * Returns: %TRUE if focus is within @self or one of its children
	 */
	public bool containsFocus()
	{
		return gtk_event_controller_focus_contains_focus(gtkEventControllerFocus) != 0;
	}

	/**
	 * Returns %TRUE if focus is within @self, but not one of its children.
	 *
	 * Returns: %TRUE if focus is within @self, but not one of its children
	 */
	public bool isFocus()
	{
		return gtk_event_controller_focus_is_focus(gtkEventControllerFocus) != 0;
	}

	/**
	 * Emitted whenever the focus enters into the widget or one
	 * of its descendents.
	 *
	 * Note that this means you may not get an ::enter signal
	 * even though the widget becomes the focus location, in
	 * certain cases (such as when the focus moves from a descendent
	 * of the widget to the widget itself). If you are interested
	 * in these cases, you can monitor the
	 * [property@Gtk.EventControllerFocus:is-focus]
	 * property for changes.
	 */
	gulong addOnEnter(void delegate(EventControllerFocus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever the focus leaves the widget hierarchy
	 * that is rooted at the widget that the controller is attached to.
	 *
	 * Note that this means you may not get a ::leave signal
	 * even though the focus moves away from the widget, in
	 * certain cases (such as when the focus moves from the widget
	 * to a descendent). If you are interested in these cases, you
	 * can monitor the [property@Gtk.EventControllerFocus:is-focus]
	 * property for changes.
	 */
	gulong addOnLeave(void delegate(EventControllerFocus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
