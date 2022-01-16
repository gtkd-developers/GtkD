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


module gtk.EventControllerScroll;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkEventControllerScroll` is an event controller that handles scroll
 * events.
 * 
 * It is capable of handling both discrete and continuous scroll
 * events from mice or touchpads, abstracting them both with the
 * [signal@Gtk.EventControllerScroll::scroll] signal. Deltas in
 * the discrete case are multiples of 1.
 * 
 * In the case of continuous scroll events, `GtkEventControllerScroll`
 * encloses all [signal@Gtk.EventControllerScroll::scroll] emissions
 * between two [signal@Gtk.EventControllerScroll::scroll-begin] and
 * [signal@Gtk.EventControllerScroll::scroll-end] signals.
 * 
 * The behavior of the event controller can be modified by the flags
 * given at creation time, or modified at a later point through
 * [method@Gtk.EventControllerScroll.set_flags] (e.g. because the scrolling
 * conditions of the widget changed).
 * 
 * The controller can be set up to emit motion for either/both vertical
 * and horizontal scroll events through %GTK_EVENT_CONTROLLER_SCROLL_VERTICAL,
 * %GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL and %GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES.
 * If any axis is disabled, the respective [signal@Gtk.EventControllerScroll::scroll]
 * delta will be 0. Vertical scroll events will be translated to horizontal
 * motion for the devices incapable of horizontal scrolling.
 * 
 * The event controller can also be forced to emit discrete events on all
 * devices through %GTK_EVENT_CONTROLLER_SCROLL_DISCRETE. This can be used
 * to implement discrete actions triggered through scroll events (e.g.
 * switching across combobox options).
 * 
 * The %GTK_EVENT_CONTROLLER_SCROLL_KINETIC flag toggles the emission of the
 * [signal@Gtk.EventControllerScroll::decelerate] signal, emitted at the end
 * of scrolling with two X/Y velocity arguments that are consistent with the
 * motion that was received.
 */
public class EventControllerScroll : EventController
{
	/** the main Gtk struct */
	protected GtkEventControllerScroll* gtkEventControllerScroll;

	/** Get the main Gtk struct */
	public GtkEventControllerScroll* getEventControllerScrollStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventControllerScroll;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventControllerScroll;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventControllerScroll* gtkEventControllerScroll, bool ownedRef = false)
	{
		this.gtkEventControllerScroll = gtkEventControllerScroll;
		super(cast(GtkEventController*)gtkEventControllerScroll, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_scroll_get_type();
	}

	/**
	 * Creates a new event controller that will handle scroll events.
	 *
	 * Params:
	 *     flags = flags affecting the controller behavior
	 *
	 * Returns: a new `GtkEventControllerScroll`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkEventControllerScrollFlags flags)
	{
		auto __p = gtk_event_controller_scroll_new(flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerScroll*) __p, true);
	}

	/**
	 * Gets the flags conditioning the scroll controller behavior.
	 *
	 * Returns: the controller flags.
	 */
	public GtkEventControllerScrollFlags getFlags()
	{
		return gtk_event_controller_scroll_get_flags(gtkEventControllerScroll);
	}

	/**
	 * Sets the flags conditioning scroll controller behavior.
	 *
	 * Params:
	 *     flags = flags affecting the controller behavior
	 */
	public void setFlags(GtkEventControllerScrollFlags flags)
	{
		gtk_event_controller_scroll_set_flags(gtkEventControllerScroll, flags);
	}

	/**
	 * Emitted after scroll is finished if the
	 * %GTK_EVENT_CONTROLLER_SCROLL_KINETIC flag is set.
	 *
	 * @vel_x and @vel_y express the initial velocity that was
	 * imprinted by the scroll events. @vel_x and @vel_y are expressed in
	 * pixels/ms.
	 *
	 * Params:
	 *     velX = X velocity
	 *     velY = Y velocity
	 */
	gulong addOnDecelerate(void delegate(double, double, EventControllerScroll) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "decelerate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the widget should scroll by the
	 * amount specified by @dx and @dy.
	 *
	 * Params:
	 *     dx = X delta
	 *     dy = Y delta
	 *
	 * Returns: %TRUE if the scroll event was handled,
	 *     %FALSE otherwise.
	 */
	gulong addOnScroll(bool delegate(double, double, EventControllerScroll) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that a new scrolling operation has begun.
	 *
	 * It will only be emitted on devices capable of it.
	 */
	gulong addOnScrollBegin(void delegate(EventControllerScroll) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll-begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that a scrolling operation has finished.
	 *
	 * It will only be emitted on devices capable of it.
	 */
	gulong addOnScrollEnd(void delegate(EventControllerScroll) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
