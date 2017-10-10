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
private import gdk.Threads;
private import glib.ErrorG;
private import glib.GException;
private import glib.OptionGroup;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgLanguage;


/** */
public struct Main
{
	/**
	 * This initiates GtkD to supports multi threaded programs.
	 * read full documantation at http://gtk.org/faq/#AEN482
	 * from the FAQ:
	 * "There is a single global lock that you must acquire with
	 * gdk_threads_enter() before making any GDK calls,
	 * and release with gdk_threads_leave() afterwards throughout your code."
	 * This is to be used on any call to GDK not executed from the main thread.
	 */
	public static void initMultiThread(string[] args)
	{
		threadsInit();
		init(args);
	}

	/**
	 */

	/**
	 * Adds a GTK+ grab on @device, so all the events on @device and its
	 * associated pointer or keyboard (if any) are delivered to @widget.
	 * If the @block_others parameter is %TRUE, any other devices will be
	 * unable to interact with @widget during the grab.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     device = a #GdkDevice to grab on.
	 *     blockOthers = %TRUE to prevent other devices to interact with @widget.
	 *
	 * Since: 3.0
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
	 *
	 * Since: 3.0
	 */
	public static void deviceGrabRemove(Widget widget, Device device)
	{
		gtk_device_grab_remove((widget is null) ? null : widget.getWidgetStruct(), (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Prevents gtk_init(), gtk_init_check(), gtk_init_with_args() and
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
	 * Obtains a copy of the event currently being processed by GTK+.
	 *
	 * For example, if you are handling a #GtkButton::clicked signal,
	 * the current event will be the #GdkEventButton that triggered
	 * the ::clicked signal.
	 *
	 * Returns: a copy of the current event, or
	 *     %NULL if there is no current event. The returned event must be
	 *     freed with gdk_event_free().
	 */
	public static Event getCurrentEvent()
	{
		auto p = gtk_get_current_event();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * If there is a current event and it has a device, return that
	 * device, otherwise return %NULL.
	 *
	 * Returns: a #GdkDevice, or %NULL
	 */
	public static Device getCurrentEventDevice()
	{
		auto p = gtk_get_current_event_device();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
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
	 * Returns the GTK+ debug flags.
	 *
	 * This function is intended for GTK+ modules that want
	 * to adjust their debug output based on GTK+ debug flags.
	 *
	 * Returns: the GTK+ debug flags.
	 */
	public static uint getDebugFlags()
	{
		return gtk_get_debug_flags();
	}

	/**
	 * Returns the #PangoLanguage for the default language currently in
	 * effect. (Note that this can change over the life of an
	 * application.) The default language is derived from the current
	 * locale. It determines, for example, whether GTK+ uses the
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
		auto p = gtk_get_default_language();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) p);
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
		auto p = gtk_get_event_widget((event is null) ? null : event.getEventStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Get the direction of the current locale. This is the expected
	 * reading direction for text and UI.
	 *
	 * This function depends on the current locale being set with
	 * setlocale() and will default to setting the %GTK_TEXT_DIR_LTR
	 * direction otherwise. %GTK_TEXT_DIR_NONE will never be returned.
	 *
	 * GTK+ sets the default text direction according to the locale
	 * during gtk_init(), and you should normally use
	 * gtk_widget_get_direction() or gtk_widget_get_default_direction()
	 * to obtain the current direcion.
	 *
	 * This function is only needed rare cases when the locale is
	 * changed after GTK+ has already been initialized. In this case,
	 * you can use it to update the default text direction as follows:
	 *
	 * |[<!-- language="C" -->
	 * setlocale (LC_ALL, new_locale);
	 * direction = gtk_get_locale_direction ();
	 * gtk_widget_set_default_direction (direction);
	 * ]|
	 *
	 * Returns: the #GtkTextDirection of the current locale
	 *
	 * Since: 3.12
	 */
	public static GtkTextDirection getLocaleDirection()
	{
		return gtk_get_locale_direction();
	}

	/**
	 * Returns a #GOptionGroup for the commandline arguments recognized
	 * by GTK+ and GDK.
	 *
	 * You should add this group to your #GOptionContext
	 * with g_option_context_add_group(), if you are using
	 * g_option_context_parse() to parse your commandline arguments.
	 *
	 * Params:
	 *     openDefaultDisplay = whether to open the default display
	 *         when parsing the commandline arguments
	 *
	 * Returns: a #GOptionGroup for the commandline
	 *     arguments recognized by GTK+
	 *
	 * Since: 2.6
	 */
	public static OptionGroup getOptionGroup(bool openDefaultDisplay)
	{
		auto p = gtk_get_option_group(openDefaultDisplay);

		if(p is null)
		{
			return null;
		}

		return new OptionGroup(cast(GOptionGroup*) p, true);
	}

	/**
	 * Queries the current grab of the default window group.
	 *
	 * Returns: The widget which currently
	 *     has the grab or %NULL if no grab is active
	 */
	public static Widget grabGetCurrent()
	{
		auto p = gtk_grab_get_current();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Call this function before using any other GTK+ functions in your GUI
	 * applications.  It will initialize everything needed to operate the
	 * toolkit and parses some standard command line options.
	 *
	 * Although you are expected to pass the @argc, @argv parameters from main() to
	 * this function, it is possible to pass %NULL if @argv is not available or
	 * commandline handling is not required.
	 *
	 * @argc and @argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 *
	 * Note that there are some alternative ways to initialize GTK+:
	 * if you are calling gtk_parse_args(), gtk_init_check(),
	 * gtk_init_with_args() or g_option_context_parse() with
	 * the option group returned by gtk_get_option_group(),
	 * you don’t have to call gtk_init().
	 *
	 * And if you are using #GtkApplication, you don't have to call any of the
	 * initialization functions either; the #GtkApplication::startup handler
	 * does it for you.
	 *
	 * This function will terminate your program if it was unable to
	 * initialize the windowing system for some reason. If you want
	 * your program to fall back to a textual interface you want to
	 * call gtk_init_check() instead.
	 *
	 * Since 2.18, GTK+ calls `signal (SIGPIPE, SIG_IGN)`
	 * during initialization, to ignore SIGPIPE signals, since these are
	 * almost never wanted in graphical applications. If you do need to
	 * handle SIGPIPE for some reason, reset the handler after gtk_init(),
	 * but notice that other libraries (e.g. libdbus or gvfs) might do
	 * similar things.
	 *
	 * Params:
	 *     argv = Address of the
	 *         `argv` parameter of main(), or %NULL. Any options
	 *         understood by GTK+ are stripped before return.
	 */
	public static void init(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		gtk_init(&argc, &outargv);

		argv = Str.toStringArray(outargv, argc);
	}

	/**
	 * This function does the same work as gtk_init() with only a single
	 * change: It does not terminate the program if the commandline
	 * arguments couldn’t be parsed or the windowing system can’t be
	 * initialized. Instead it returns %FALSE on failure.
	 *
	 * This way the application can fall back to some other means of
	 * communication with the user - for example a curses or command line
	 * interface.
	 *
	 * Params:
	 *     argv = Address of the
	 *         `argv` parameter of main(), or %NULL. Any options
	 *         understood by GTK+ are stripped before return.
	 *
	 * Returns: %TRUE if the commandline arguments (if any) were valid and
	 *     the windowing system has been successfully initialized, %FALSE
	 *     otherwise
	 */
	public static bool initCheck(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		auto p = gtk_init_check(&argc, &outargv) != 0;

		argv = Str.toStringArray(outargv, argc);

		return p;
	}

	/**
	 * This function does the same work as gtk_init_check().
	 * Additionally, it allows you to add your own commandline options,
	 * and it automatically generates nicely formatted
	 * `--help` output. Note that your program will
	 * be terminated after writing out the help output.
	 *
	 * Params:
	 *     argv = Address of the
	 *         `argv` parameter of main(), or %NULL. Any options
	 *         understood by GTK+ are stripped before return.
	 *     parameterString = a string which is displayed in
	 *         the first line of `--help` output, after
	 *         `programname [OPTION...]`
	 *     entries = a %NULL-terminated array
	 *         of #GOptionEntrys describing the options of your program
	 *     translationDomain = a translation domain to use for translating
	 *         the `--help` output for the options in @entries
	 *         and the @parameter_string with gettext(), or %NULL
	 *
	 * Returns: %TRUE if the commandline arguments (if any) were valid and
	 *     if the windowing system has been successfully initialized,
	 *     %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public static bool initWithArgs(ref string[] argv, string parameterString, GOptionEntry[] entries, string translationDomain)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);
		GError* err = null;

		auto p = gtk_init_with_args(&argc, &outargv, Str.toStringz(parameterString), entries.ptr, Str.toStringz(translationDomain), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		argv = Str.toStringArray(outargv, argc);

		return p;
	}

	/**
	 * Installs a key snooper function, which will get called on all
	 * key events before delivering them normally.
	 *
	 * Deprecated: Key snooping should not be done. Events should
	 * be handled by widgets.
	 *
	 * Params:
	 *     snooper = a #GtkKeySnoopFunc
	 *     funcData = data to pass to @snooper
	 *
	 * Returns: a unique id for this key snooper for use with
	 *     gtk_key_snooper_remove().
	 */
	public static uint keySnooperInstall(GtkKeySnoopFunc snooper, void* funcData)
	{
		return gtk_key_snooper_install(snooper, funcData);
	}

	/**
	 * Removes the key snooper function with the given id.
	 *
	 * Deprecated: Key snooping should not be done. Events should
	 * be handled by widgets.
	 *
	 * Params:
	 *     snooperHandlerId = Identifies the key snooper to remove
	 */
	public static void keySnooperRemove(uint snooperHandlerId)
	{
		gtk_key_snooper_remove(snooperHandlerId);
	}

	/**
	 * Runs the main loop until gtk_main_quit() is called.
	 *
	 * You can nest calls to gtk_main(). In that case gtk_main_quit()
	 * will make the innermost invocation of the main loop return.
	 */
	public static void run()
	{
		gtk_main();
	}

	/**
	 * Processes a single GDK event.
	 *
	 * This is public only to allow filtering of events between GDK and GTK+.
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
	 * Another point of interest might be that all key events are first passed
	 * through the key snooper functions if there are any. Read the description
	 * of gtk_key_snooper_install() if you need this feature.
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
	 * If no events are waiting to be processed GTK+ will block
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
	 *     blocking = %TRUE if you want GTK+ to block if no events are pending
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
	 * Parses command line arguments, and initializes global
	 * attributes of GTK+, but does not actually open a connection
	 * to a display. (See gdk_display_open(), gdk_get_display_arg_name())
	 *
	 * Any arguments used by GTK+ or GDK are removed from the array and
	 * @argc and @argv are updated accordingly.
	 *
	 * There is no need to call this function explicitly if you are using
	 * gtk_init(), or gtk_init_check().
	 *
	 * Note that many aspects of GTK+ require a display connection to
	 * function, so this way of initializing GTK+ is really only useful
	 * for specialized use cases.
	 *
	 * Params:
	 *     argv = a pointer to the array of
	 *         command line arguments
	 *
	 * Returns: %TRUE if initialization succeeded, otherwise %FALSE
	 */
	public static bool parseArgs(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		auto p = gtk_parse_args(&argc, &outargv) != 0;

		argv = Str.toStringArray(outargv, argc);

		return p;
	}

	/**
	 * Sends an event to a widget, propagating the event to parent widgets
	 * if the event remains unhandled.
	 *
	 * Events received by GTK+ from GDK normally begin in gtk_main_do_event().
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
	 * gdk_window_invalidate_rect() or gtk_widget_queue_draw() instead
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
	 * Sets the GTK+ debug flags.
	 */
	public static void setDebugFlags(uint flags)
	{
		gtk_set_debug_flags(flags);
	}
}
