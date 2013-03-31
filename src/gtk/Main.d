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

/*
 * Conversion parameters:
 * inFile  = gtk3-General.html
 * outPack = gtk
 * outFile = Main
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Main
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_main_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_true
 * 	- gtk_false
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.OptionGroup
 * 	- gdk.Device
 * 	- gdk.Event
 * 	- gdk.Threads
 * 	- gthread.Thread
 * 	- gtk.Widget
 * 	- pango.PgLanguage
 * structWrap:
 * 	- GOptionGroup* -> OptionGroup
 * 	- GdkDevice* -> Device
 * 	- GdkEvent* -> Event
 * 	- GtkWidget* -> Widget
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * 	- main -> run
 * overrides:
 */

module gtk.Main;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.OptionGroup;
private import gdk.Device;
private import gdk.Event;
private import gdk.Threads;
private import gthread.Thread;
private import gtk.Widget;
private import pango.PgLanguage;




/**
 * Before using GTK+, you need to initialize it; initialization connects to the
 * window system display, and parses some standard command line arguments. The
 * gtk_init() macro initializes GTK+. gtk_init() exits the application if errors
 * occur; to avoid this, use gtk_init_check(). gtk_init_check() allows you to
 * recover from a failed GTK+ initialization - you might start up your
 * application in text mode instead.
 *
 * Like all GUI toolkits, GTK+ uses an event-driven programming model. When the
 * user is doing nothing, GTK+ sits in the main loop and
 * waits for input. If the user performs some action - say, a mouse click - then
 * the main loop "wakes up" and delivers an event to GTK+. GTK+ forwards the
 * event to one or more widgets.
 *
 * When widgets receive an event, they frequently emit one or more
 * signals. Signals notify your program that "something
 * interesting happened" by invoking functions you've connected to the signal
 * with g_signal_connect(). Functions connected to a signal are often termed
 * callbacks.
 *
 * When your callbacks are invoked, you would typically take some action - for
 * example, when an Open button is clicked you might display a
 * GtkFileChooserDialog. After a callback finishes, GTK+ will return to the
 * main loop and await more user input.
 *
 * $(DDOC_COMMENT example)
 *
 * It's OK to use the GLib main loop directly instead of gtk_main(), though it
 * involves slightly more typing. See GMainLoop in the GLib documentation.
 */
public class Main
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
	 * Prevents gtk_init(), gtk_init_check(), gtk_init_with_args() and
	 * gtk_parse_args() from automatically
	 * calling setlocale (LC_ALL, ""). You would
	 * want to use this function if you wanted to set the locale for
	 * your program to something other than the user's locale, or if
	 * you wanted to set different values for different locale categories.
	 * Most programs should not need to call this function.
	 */
	public static void disableSetlocale()
	{
		// void gtk_disable_setlocale (void);
		gtk_disable_setlocale();
	}
	
	/**
	 * Returns the PangoLanguage for the default language currently in
	 * effect. (Note that this can change over the life of an
	 * application.) The default language is derived from the current
	 * locale. It determines, for example, whether GTK+ uses the
	 * right-to-left or left-to-right text direction.
	 * This function is equivalent to pango_language_get_default().
	 * See that function for details.
	 * Returns: the default language as a PangoLanguage, must not be freed
	 */
	public static PgLanguage getDefaultLanguage()
	{
		// PangoLanguage * gtk_get_default_language (void);
		auto p = gtk_get_default_language();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) p);
	}
	
	/**
	 * Parses command line arguments, and initializes global
	 * attributes of GTK+, but does not actually open a connection
	 * to a display. (See gdk_display_open(), gdk_get_display_arg_name())
	 * Any arguments used by GTK+ or GDK are removed from the array and
	 * argc and argv are updated accordingly.
	 * There is no need to call this function explicitely if you are using
	 * gtk_init(), or gtk_init_check().
	 * Params:
	 * argv = a pointer to the array of
	 * command line arguments. [array length=argc][inout]
	 * Returns: TRUE if initialization succeeded, otherwise FALSE
	 */
	public static int parseArgs(ref string[] argv)
	{
		// gboolean gtk_parse_args (int *argc,  char ***argv);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		auto p = gtk_parse_args(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * Call this function before using any other GTK+ functions in your GUI
	 * applications. It will initialize everything needed to operate the
	 * toolkit and parses some standard command line options.
	 * Although you are expected to pass the argc, argv parameters from main() to
	 * this function, it is possible to pass NULL if argv is not available or
	 * commandline handling is not required.
	 * argc and argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 * Since 2.18, GTK+ calls signal (SIGPIPE, SIG_IGN)
	 * during initialization, to ignore SIGPIPE signals, since these are
	 * almost never wanted in graphical applications. If you do need to
	 * handle SIGPIPE for some reason, reset the handler after gtk_init(),
	 * but notice that other libraries (e.g. libdbus or gvfs) might do
	 * similar things.
	 * Params:
	 * argv = Address of the
	 * argv parameter of main(), or NULL. Any options
	 * understood by GTK+ are stripped before return. [array length=argc][inout][allow-none]
	 */
	public static void init(ref string[] argv)
	{
		// void gtk_init (int *argc,  char ***argv);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		gtk_init(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
	}
	
	/**
	 * This function does the same work as gtk_init() with only a single
	 * change: It does not terminate the program if the windowing system
	 * can't be initialized. Instead it returns FALSE on failure.
	 * This way the application can fall back to some other means of
	 * communication with the user - for example a curses or command line
	 * interface.
	 * Params:
	 * argv = Address of the
	 * argv parameter of main(), or NULL. Any options
	 * understood by GTK+ are stripped before return. [array length=argc][inout][allow-none]
	 * Returns: TRUE if the windowing system has been successfully initialized, FALSE otherwise
	 */
	public static int initCheck(ref string[] argv)
	{
		// gboolean gtk_init_check (int *argc,  char ***argv);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		
		auto p = gtk_init_check(&argc, &outargv);
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * This function does the same work as gtk_init_check().
	 * Additionally, it allows you to add your own commandline options,
	 * and it automatically generates nicely formatted
	 * --help output. Note that your program will
	 * be terminated after writing out the help output.
	 * Since 2.6
	 * Params:
	 * argv = Address of the
	 * argv parameter of main(), or NULL. Any options
	 * understood by GTK+ are stripped before return. [array length=argc][inout][allow-none]
	 * parameterString = a string which is displayed in
	 * the first line of --help output, after
	 * programname [OPTION...]. [allow-none]
	 * entries = a NULL-terminated array
	 * of GOptionEntrys describing the options of your program. [array zero-terminated=1]
	 * translationDomain = a translation domain to use for translating
	 * the --help output for the options in entries
	 * and the parameter_string with gettext(), or NULL
	 * Returns: TRUE if the windowing system has been successfully initialized, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public static int initWithArgs(ref string[] argv, string parameterString, GOptionEntry[] entries, string translationDomain)
	{
		// gboolean gtk_init_with_args (gint *argc,  gchar ***argv,  const gchar *parameter_string,  const GOptionEntry *entries,  const gchar *translation_domain,  GError **error);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;
		GError* err = null;
		
		auto p = gtk_init_with_args(&argc, &outargv, Str.toStringz(parameterString), entries.ptr, Str.toStringz(translationDomain), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		argv = null;
		foreach ( cstr; outargv[0 .. argc] )
		{
			argv ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * Returns a GOptionGroup for the commandline arguments recognized
	 * by GTK+ and GDK.
	 * You should add this group to your GOptionContext
	 * with g_option_context_add_group(), if you are using
	 * g_option_context_parse() to parse your commandline arguments.
	 * Since 2.6
	 * Params:
	 * openDefaultDisplay = whether to open the default display
	 * when parsing the commandline arguments
	 * Returns: a GOptionGroup for the commandline arguments recognized by GTK+
	 */
	public static OptionGroup getOptionGroup(int openDefaultDisplay)
	{
		// GOptionGroup * gtk_get_option_group (gboolean open_default_display);
		auto p = gtk_get_option_group(openDefaultDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(OptionGroup)(cast(GOptionGroup*) p);
	}
	
	/**
	 * Checks if any events are pending.
	 * This can be used to update the UI and invoke timeouts etc.
	 * while doing some time intensive computation.
	 * $(DDOC_COMMENT example)
	 * Returns: TRUE if any events are pending, FALSE otherwise
	 */
	public static int eventsPending()
	{
		// gboolean gtk_events_pending (void);
		return gtk_events_pending();
	}
	
	/**
	 * Runs the main loop until gtk_main_quit() is called.
	 * You can nest calls to gtk_main(). In that case gtk_main_quit()
	 * will make the innermost invocation of the main loop return.
	 */
	public static void run()
	{
		// void gtk_main (void);
		gtk_main();
	}
	
	/**
	 * Asks for the current nesting level of the main loop.
	 * Returns: the nesting level of the current invocation of the main loop
	 */
	public static uint level()
	{
		// guint gtk_main_level (void);
		return gtk_main_level();
	}
	
	/**
	 * Makes the innermost invocation of the main loop return
	 * when it regains control.
	 */
	public static void quit()
	{
		// void gtk_main_quit (void);
		gtk_main_quit();
	}
	
	/**
	 * Runs a single iteration of the mainloop.
	 * If no events are waiting to be processed GTK+ will block
	 * until the next event is noticed. If you don't want to block
	 * look at gtk_main_iteration_do() or check if any events are
	 * pending with gtk_events_pending() first.
	 * Returns: TRUE if gtk_main_quit() has been called for the innermost mainloop
	 */
	public static int iteration()
	{
		// gboolean gtk_main_iteration (void);
		return gtk_main_iteration();
	}
	
	/**
	 * Runs a single iteration of the mainloop.
	 * If no events are available either return or block depending on
	 * the value of blocking.
	 * Params:
	 * blocking = TRUE if you want GTK+ to block if no events are pending
	 * Returns: TRUE if gtk_main_quit() has been called for the innermost mainloop
	 */
	public static int iterationDo(int blocking)
	{
		// gboolean gtk_main_iteration_do (gboolean blocking);
		return gtk_main_iteration_do(blocking);
	}
	
	/**
	 * Processes a single GDK event.
	 * This is public only to allow filtering of events between GDK and GTK+.
	 * You will not usually need to call this function directly.
	 * While you should not call this function directly, you might want to
	 * know how exactly events are handled. So here is what this function
	 * Params:
	 * event = An event to process (normally passed by GDK)
	 */
	public static void doEvent(Event event)
	{
		// void gtk_main_do_event (GdkEvent *event);
		gtk_main_do_event((event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Makes widget the current grabbed widget.
	 * This means that interaction with other widgets in the same
	 * application is blocked and mouse as well as keyboard events
	 * are delivered to this widget.
	 * If widget is not sensitive, it is not set as the current
	 * grabbed widget and this function does nothing.
	 * Params:
	 * widget = The widget that grabs keyboard and pointer events
	 */
	public static void grabAdd(Widget widget)
	{
		// void gtk_grab_add (GtkWidget *widget);
		gtk_grab_add((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Queries the current grab of the default window group.
	 * Returns: The widget which currently has the grab or NULL if no grab is active. [transfer none]
	 */
	public static Widget grabGetCurrent()
	{
		// GtkWidget * gtk_grab_get_current (void);
		auto p = gtk_grab_get_current();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Removes the grab from the given widget.
	 * You have to pair calls to gtk_grab_add() and gtk_grab_remove().
	 * If widget does not have the grab, this function does nothing.
	 * Params:
	 * widget = The widget which gives up the grab
	 */
	public static void grabRemove(Widget widget)
	{
		// void gtk_grab_remove (GtkWidget *widget);
		gtk_grab_remove((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Adds a GTK+ grab on device, so all the events on device and its
	 * associated pointer or keyboard (if any) are delivered to widget.
	 * If the block_others parameter is TRUE, any other devices will be
	 * unable to interact with widget during the grab.
	 * Params:
	 * widget = a GtkWidget
	 * device = a GdkDevice to grab on.
	 * blockOthers = TRUE to prevent other devices to interact with widget.
	 * Since 3.0
	 */
	public static void deviceGrabAdd(Widget widget, Device device, int blockOthers)
	{
		// void gtk_device_grab_add (GtkWidget *widget,  GdkDevice *device,  gboolean block_others);
		gtk_device_grab_add((widget is null) ? null : widget.getWidgetStruct(), (device is null) ? null : device.getDeviceStruct(), blockOthers);
	}
	
	/**
	 * Removes a device grab from the given widget.
	 * You have to pair calls to gtk_device_grab_add() and
	 * gtk_device_grab_remove().
	 * Params:
	 * widget = a GtkWidget
	 * device = a GdkDevice
	 * Since 3.0
	 */
	public static void deviceGrabRemove(Widget widget, Device device)
	{
		// void gtk_device_grab_remove (GtkWidget *widget,  GdkDevice *device);
		gtk_device_grab_remove((widget is null) ? null : widget.getWidgetStruct(), (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Warning
	 * gtk_key_snooper_install has been deprecated since version 3.4 and should not be used in newly-written code. Key snooping should not be done. Events should
	 *  be handled by widgets.
	 * Installs a key snooper function, which will get called on all
	 * key events before delivering them normally.
	 * Params:
	 * snooper = a GtkKeySnoopFunc
	 * funcData = data to pass to snooper
	 * Returns: a unique id for this key snooper for use with gtk_key_snooper_remove().
	 */
	public static uint keySnooperInstall(GtkKeySnoopFunc snooper, void* funcData)
	{
		// guint gtk_key_snooper_install (GtkKeySnoopFunc snooper,  gpointer func_data);
		return gtk_key_snooper_install(snooper, funcData);
	}
	
	/**
	 * Warning
	 * gtk_key_snooper_remove has been deprecated since version 3.4 and should not be used in newly-written code. Key snooping should not be done. Events should
	 *  be handled by widgets.
	 * Removes the key snooper function with the given id.
	 * Params:
	 * snooperHandlerId = Identifies the key snooper to remove
	 */
	public static void keySnooperRemove(uint snooperHandlerId)
	{
		// void gtk_key_snooper_remove (guint snooper_handler_id);
		gtk_key_snooper_remove(snooperHandlerId);
	}
	
	/**
	 * Obtains a copy of the event currently being processed by GTK+.
	 * For example, if you are handling a "clicked" signal,
	 * the current event will be the GdkEventButton that triggered
	 * the ::clicked signal.
	 * Returns: a copy of the current event, or NULL if there is no current event. The returned event must be freed with gdk_event_free(). [transfer full]
	 */
	public static Event getCurrentEvent()
	{
		// GdkEvent * gtk_get_current_event (void);
		auto p = gtk_get_current_event();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p);
	}
	
	/**
	 * If there is a current event and it has a timestamp,
	 * return that timestamp, otherwise return GDK_CURRENT_TIME.
	 * Returns: the timestamp from the current event, or GDK_CURRENT_TIME.
	 */
	public static uint getCurrentEventTime()
	{
		// guint32 gtk_get_current_event_time (void);
		return gtk_get_current_event_time();
	}
	
	/**
	 * If there is a current event and it has a state field, place
	 * that state field in state and return TRUE, otherwise return
	 * FALSE.
	 * Params:
	 * state = a location to store the state of the current event. [out]
	 * Returns: TRUE if there was a current event and it had a state field
	 */
	public static int getCurrentEventState(out GdkModifierType state)
	{
		// gboolean gtk_get_current_event_state (GdkModifierType *state);
		return gtk_get_current_event_state(&state);
	}
	
	/**
	 * If there is a current event and it has a device, return that
	 * device, otherwise return NULL.
	 * Returns: a GdkDevice, or NULL. [transfer none]
	 */
	public static Device getCurrentEventDevice()
	{
		// GdkDevice * gtk_get_current_event_device (void);
		auto p = gtk_get_current_event_device();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * If event is NULL or the event was not associated with any widget,
	 * returns NULL, otherwise returns the widget that received the event
	 * originally.
	 * Params:
	 * event = a GdkEvent
	 * Returns: the widget that originally received event, or NULL. [transfer none]
	 */
	public static Widget getEventWidget(Event event)
	{
		// GtkWidget * gtk_get_event_widget (GdkEvent *event);
		auto p = gtk_get_event_widget((event is null) ? null : event.getEventStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sends an event to a widget, propagating the event to parent widgets
	 * if the event remains unhandled.
	 * Events received by GTK+ from GDK normally begin in gtk_main_do_event().
	 * Depending on the type of event, existence of modal dialogs, grabs, etc.,
	 * the event may be propagated; if so, this function is used.
	 * gtk_propagate_event() calls gtk_widget_event() on each widget it
	 * decides to send the event to. So gtk_widget_event() is the lowest-level
	 * function; it simply emits the "event" and possibly an
	 * event-specific signal on a widget. gtk_propagate_event() is a bit
	 * higher-level, and gtk_main_do_event() is the highest level.
	 * All that said, you most likely don't want to use any of these
	 * functions; synthesizing events is rarely needed. There are almost
	 * certainly better ways to achieve your goals. For example, use
	 * gdk_window_invalidate_rect() or gtk_widget_queue_draw() instead
	 * of making up expose events.
	 * Params:
	 * widget = a GtkWidget
	 * event = an event
	 */
	public static void propagateEvent(Widget widget, Event event)
	{
		// void gtk_propagate_event (GtkWidget *widget,  GdkEvent *event);
		gtk_propagate_event((widget is null) ? null : widget.getWidgetStruct(), (event is null) ? null : event.getEventStruct());
	}
}
