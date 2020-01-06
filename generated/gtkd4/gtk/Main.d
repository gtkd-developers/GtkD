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


module gtk.Main;

private import gdk.Device;
private import gdk.Event;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgLanguage;


/** */
public struct Main
{

	/**
	 * Adds a GTK grab on @device, so all the events on @device and its
	 * associated pointer or keyboard (if any) are delivered to @widget.
	 * If the @block_others parameter is %TRUE, any other devices will be
	 * unable to interact with @widget during the grab.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     device = a #GdkDevice to grab on.
	 *     blockOthers = %TRUE to prevent other devices to interact with @widget.
	 */
	public static void deviceGrabAdd(Widget widget, Device device, bool blockOthers)
	{
		gtk_device_grab_add((widget is null) ? null : widget.getWidgetStruct(), (device is null) ? null : device.getDeviceStruct(), blockOthers);
	}

	/**
	 * Removes a device grab from the given widget.
	 *
	 * You have to pair calls to gtk_device_grab_add() and
	 * gtk_device_grab_remove().
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     device = a #GdkDevice
	 */
	public static void deviceGrabRemove(Widget widget, Device device)
	{
		gtk_device_grab_remove((widget is null) ? null : widget.getWidgetStruct(), (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Prevents gtk_init(), gtk_init_check() and
	 * gtk_parse_args() from automatically
	 * calling `setlocale (LC_ALL, "")`. You would
	 * want to use this function if you wanted to set the locale for
	 * your program to something other than the user’s locale, or if
	 * you wanted to set different values for different locale categories.
	 *
	 * Most programs should not need to call this function.
	 */
	public static void disableSetlocale()
	{
		gtk_disable_setlocale();
	}

	/**
	 * Checks if any events are pending.
	 *
	 * This can be used to update the UI and invoke timeouts etc.
	 * while doing some time intensive computation.
	 *
	 * ## Updating the UI during a long computation
	 *
	 * |[<!-- language="C" -->
	 * // computation going on...
	 *
	 * while (gtk_events_pending ())
	 * gtk_main_iteration ();
	 *
	 * // ...computation continued
	 * ]|
	 *
	 * Returns: %TRUE if any events are pending, %FALSE otherwise
	 */
	public static bool eventsPending()
	{
		return gtk_events_pending() != 0;
	}

	/**
	 * Obtains a reference of the event currently being processed by GTK.
	 *
	 * For example, if you are handling a #GtkButton::clicked signal,
	 * the current event will be the #GdkEventButton that triggered
	 * the ::clicked signal.
	 *
	 * Returns: a reference of the current event, or
	 *     %NULL if there is no current event. The returned event must be
	 *     freed with g_object_unref().
	 */
	public static Event getCurrentEvent()
	{
		auto __p = gtk_get_current_event();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p, true);
	}

	/**
	 * If there is a current event and it has a device, return that
	 * device, otherwise return %NULL.
	 *
	 * Returns: a #GdkDevice, or %NULL
	 */
	public static Device getCurrentEventDevice()
	{
		auto __p = gtk_get_current_event_device();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * If there is a current event and it has a state field, place
	 * that state field in @state and return %TRUE, otherwise return
	 * %FALSE.
	 *
	 * Params:
	 *     state = a location to store the state of the current event
	 *
	 * Returns: %TRUE if there was a current event and it
	 *     had a state field
	 */
	public static bool getCurrentEventState(out GdkModifierType state)
	{
		return gtk_get_current_event_state(&state) != 0;
	}

	/**
	 * If there is a current event and it has a timestamp,
	 * return that timestamp, otherwise return %GDK_CURRENT_TIME.
	 *
	 * Returns: the timestamp from the current event,
	 *     or %GDK_CURRENT_TIME.
	 */
	public static uint getCurrentEventTime()
	{
		return gtk_get_current_event_time();
	}

	/**
	 * Returns the GTK debug flags.
	 *
	 * This function is intended for GTK modules that want
	 * to adjust their debug output based on GTK debug flags.
	 *
	 * Returns: the GTK debug flags.
	 */
	public static uint getDebugFlags()
	{
		return gtk_get_debug_flags();
	}

	/**
	 * Returns the #PangoLanguage for the default language currently in
	 * effect. (Note that this can change over the life of an
	 * application.) The default language is derived from the current
	 * locale. It determines, for example, whether GTK uses the
	 * right-to-left or left-to-right text direction.
	 *
	 * This function is equivalent to pango_language_get_default().
	 * See that function for details.
	 *
	 * Returns: the default language as a #PangoLanguage,
	 *     must not be freed
	 */
	public static PgLanguage getDefaultLanguage()
	{
		auto __p = gtk_get_default_language();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) __p);
	}

	/**
	 * If @event is %NULL or the event was not associated with any widget,
	 * returns %NULL, otherwise returns the widget that received the event
	 * originally.
	 *
	 * Params:
	 *     event = a #GdkEvent
	 *
	 * Returns: the widget that originally
	 *     received @event, or %NULL
	 */
	public static Widget getEventWidget(Event event)
	{
		auto __p = gtk_get_event_widget((event is null) ? null : event.getEventStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Get the direction of the current locale. This is the expected
	 * reading direction for text and UI.
	 *
	 * This function depends on the current locale being set with
	 * setlocale() and will default to setting the %GTK_TEXT_DIR_LTR
	 * direction otherwise. %GTK_TEXT_DIR_NONE will never be returned.
	 *
	 * GTK sets the default text direction according to the locale
	 * during gtk_init(), and you should normally use
	 * gtk_widget_get_direction() or gtk_widget_get_default_direction()
	 * to obtain the current direcion.
	 *
	 * This function is only needed rare cases when the locale is
	 * changed after GTK has already been initialized. In this case,
	 * you can use it to update the default text direction as follows:
	 *
	 * |[<!-- language="C" -->
	 * setlocale (LC_ALL, new_locale);
	 * direction = gtk_get_locale_direction ();
	 * gtk_widget_set_default_direction (direction);
	 * ]|
	 *
	 * Returns: the #GtkTextDirection of the current locale
	 */
	public static GtkTextDirection getLocaleDirection()
	{
		return gtk_get_locale_direction();
	}

	/**
	 * Queries the current grab of the default window group.
	 *
	 * Returns: The widget which currently
	 *     has the grab or %NULL if no grab is active
	 */
	public static Widget grabGetCurrent()
	{
		auto __p = gtk_grab_get_current();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Call this function before using any other GTK functions in your GUI
	 * applications.  It will initialize everything needed to operate the
	 * toolkit and parses some standard command line options.
	 *
	 * If you are using #GtkApplication, you don't have to call gtk_init()
	 * or gtk_init_check(); the #GtkApplication::startup handler
	 * does it for you.
	 *
	 * This function will terminate your program if it was unable to
	 * initialize the windowing system for some reason. If you want
	 * your program to fall back to a textual interface you want to
	 * call gtk_init_check() instead.
	 *
	 * GTK calls `signal (SIGPIPE, SIG_IGN)`
	 * during initialization, to ignore SIGPIPE signals, since these are
	 * almost never wanted in graphical applications. If you do need to
	 * handle SIGPIPE for some reason, reset the handler after gtk_init(),
	 * but notice that other libraries (e.g. libdbus or gvfs) might do
	 * similar things.
	 */
	public static void init()
	{
		gtk_init();
	}

	/**
	 * This function does the same work as gtk_init() with only a single
	 * change: It does not terminate the program if the windowing system
	 * can’t be initialized. Instead it returns %FALSE on failure.
	 *
	 * This way the application can fall back to some other means of
	 * communication with the user - for example a curses or command line
	 * interface.
	 *
	 * Returns: %TRUE if the windowing system has been successfully
	 *     initialized, %FALSE otherwise
	 */
	public static bool initCheck()
	{
		return gtk_init_check() != 0;
	}

	/**
	 * Runs the main loop until gtk_main_quit() is called.
	 *
	 * You can nest calls to gtk_main(). In that case gtk_main_quit()
	 * will make the innermost invocation of the main loop return.
	 */
	public static void main()
	{
		gtk_main();
	}

	/**
	 * Processes a single GDK event.
	 *
	 * This is public only to allow filtering of events between GDK and GTK.
	 * You will not usually need to call this function directly.
	 *
	 * While you should not call this function directly, you might want to
	 * know how exactly events are handled. So here is what this function
	 * does with the event:
	 *
	 * 1. Compress enter/leave notify events. If the event passed build an
	 * enter/leave pair together with the next event (peeked from GDK), both
	 * events are thrown away. This is to avoid a backlog of (de-)highlighting
	 * widgets crossed by the pointer.
	 *
	 * 2. Find the widget which got the event. If the widget can’t be determined
	 * the event is thrown away unless it belongs to a INCR transaction.
	 *
	 * 3. Then the event is pushed onto a stack so you can query the currently
	 * handled event with gtk_get_current_event().
	 *
	 * 4. The event is sent to a widget. If a grab is active all events for widgets
	 * that are not in the contained in the grab widget are sent to the latter
	 * with a few exceptions:
	 * - Deletion and destruction events are still sent to the event widget for
	 * obvious reasons.
	 * - Events which directly relate to the visual representation of the event
	 * widget.
	 * - Leave events are delivered to the event widget if there was an enter
	 * event delivered to it before without the paired leave event.
	 * - Drag events are not redirected because it is unclear what the semantics
	 * of that would be.
	 *
	 * 5. After finishing the delivery the event is popped from the event stack.
	 *
	 * Params:
	 *     event = An event to process (normally passed by GDK)
	 */
	public static void doEvent(Event event)
	{
		gtk_main_do_event((event is null) ? null : event.getEventStruct());
	}

	/**
	 * Runs a single iteration of the mainloop.
	 *
	 * If no events are waiting to be processed GTK will block
	 * until the next event is noticed. If you don’t want to block
	 * look at gtk_main_iteration_do() or check if any events are
	 * pending with gtk_events_pending() first.
	 *
	 * Returns: %TRUE if gtk_main_quit() has been called for the
	 *     innermost mainloop
	 */
	public static bool iteration()
	{
		return gtk_main_iteration() != 0;
	}

	/**
	 * Runs a single iteration of the mainloop.
	 * If no events are available either return or block depending on
	 * the value of @blocking.
	 *
	 * Params:
	 *     blocking = %TRUE if you want GTK to block if no events are pending
	 *
	 * Returns: %TRUE if gtk_main_quit() has been called for the
	 *     innermost mainloop
	 */
	public static bool iterationDo(bool blocking)
	{
		return gtk_main_iteration_do(blocking) != 0;
	}

	/**
	 * Asks for the current nesting level of the main loop.
	 *
	 * Returns: the nesting level of the current invocation
	 *     of the main loop
	 */
	public static uint level()
	{
		return gtk_main_level();
	}

	/**
	 * Makes the innermost invocation of the main loop return
	 * when it regains control.
	 */
	public static void quit()
	{
		gtk_main_quit();
	}

	/**
	 * Sends an event to a widget, propagating the event to parent widgets
	 * if the event remains unhandled. This function will emit the event
	 * through all the hierarchy of @widget through all propagation phases.
	 *
	 * Events received by GTK from GDK normally begin in gtk_main_do_event().
	 * Depending on the type of event, existence of modal dialogs, grabs, etc.,
	 * the event may be propagated; if so, this function is used.
	 *
	 * gtk_propagate_event() calls gtk_widget_event() on each widget it
	 * decides to send the event to. So gtk_widget_event() is the lowest-level
	 * function; it simply emits the #GtkWidget::event and possibly an
	 * event-specific signal on a widget. gtk_propagate_event() is a bit
	 * higher-level, and gtk_main_do_event() is the highest level.
	 *
	 * All that said, you most likely don’t want to use any of these
	 * functions; synthesizing events is rarely needed. There are almost
	 * certainly better ways to achieve your goals. For example, use
	 * gtk_widget_queue_draw() instead
	 * of making up expose events.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     event = an event
	 */
	public static void propagateEvent(Widget widget, Event event)
	{
		gtk_propagate_event((widget is null) ? null : widget.getWidgetStruct(), (event is null) ? null : event.getEventStruct());
	}

	/**
	 * Sets the GTK debug flags.
	 */
	public static void setDebugFlags(uint flags)
	{
		gtk_set_debug_flags(flags);
	}
}
