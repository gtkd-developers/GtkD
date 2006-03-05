/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Duit
 * strct   = 
 * realStrct=
 * clss    = Duit
 * extend  = 
 * prefixes:
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_true
 * 	- gtk_false
 * 	- gtk_timeout_
 * 	- gtk_idle_
 * omit code:
 * imports:
 * 	- gdk.Event
 * 	- gtk.Widget
 * 	- gtk.ObjectGtk
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GtkObject* -> ObjectGtk
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Duit;

private import gtk.typedefs;

private import lib.gtk;

private import gdk.Event;private import gtk.Widget;private import gtk.ObjectGtk;
/**
 * Description
 * Before using GTK+, you need to initialize it; initialization connects
 * to the window system display, and parses some standard command line
 * arguments. The gtk_init() function initializes GTK+. gtk_init() exits
 * the application if errors occur; to avoid this, use gtk_init_check().
 * gtk_init_check() allows you to recover from a failed GTK+
 * initialization - you might start up your application in text mode instead.
 * Like all GUI toolkits, GTK+ uses an event-driven programming
 * model. When the user is doing nothing, GTK+ sits in the
 * main loop and waits for input. If the user
 * performs some action - say, a mouse click - then the main loop "wakes
 * up" and delivers an event to GTK+. GTK+ forwards the event to one or
 * more widgets.
 * When widgets receive an event, they frequently emit one or more
 * signals. Signals notify your program that
 * "something interesting happened" by invoking functions you've
 * connected to the signal with g_signal_connect(). Functions connected
 * to a signal are often termed callbacks.
 * When your callbacks are invoked, you would typically take some action
 * - for example, when an Open button is clicked you might display a
 * GtkFileSelectionDialog. After a callback finishes, GTK+ will return
 * to the main loop and await more user input.
 * Example1.Typical main function for a GTK+ application
 * int
 * main (int argc, char **argv)
 * {
	 *  /+* Initialize i18n support +/
	 *  gtk_set_locale ();
	 *  /+* Initialize the widget set +/
	 *  gtk_init (argc, argv);
	 *  /+* Create the main window +/
	 *  mainwin = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 *  /+* Set up our GUI elements +/
	 *  ...
	 *  /+* Show the application window +/
	 *  gtk_widget_show_all (mainwin);
	 *  /+* Enter the main event loop, and wait for user interaction +/
	 *  gtk_main ();
	 *  /+* The user lost interest +/
	 *  return 0;
 * }
 * It's OK to use the GLib main loop directly instead of gtk_main(),
 * though it involves slightly more typing. See GMainLoop in the GLib
 * documentation.
 */
public class Duit
{
	
	/**
	 * Call this function before using any other GTK+ functions in your GUI applications.
	 */
	public static void init(char[][] args)
	{
		char** argv = new char*[args.length];
		int argc = 0;
		foreach (char[] p; args)
		{
			argv[argc++] = cast(char*)p;
		}
		
		init(&argc,&argv);
	}
	
	
	/**
	 */
	
	/**
	 * Initializes internationalization support for GTK+. gtk_init()
	 * automatically does this, so there is typically no point
	 * in calling this function.
	 * If you are calling this function because you changed the locale
	 * after GTK+ is was initialized, then calling this function
	 * may help a bit. (Note, however, that changing the locale
	 * after GTK+ is initialized may produce inconsistent results and
	 * is not really supported.)
	 * In detail - sets the current locale according to the
	 * program environment. This is the same as calling the C library function
	 * setlocale (LC_ALL, "") but also takes care of the
	 * locale specific setup of the windowing system used by GDK.
	 * Returns:
	 *  a string corresponding to the locale set, typically in the
	 * form lang_COUNTRY, where lang is an ISO-639 language code, and
	 * COUNTRY is an ISO-3166 country code. On Unix, this form matches the
	 * result of the setlocale(); it is also used on other machines, such as
	 * Windows, where the C library returns a different result. The string is
	 * owned by GTK+ and should not be modified or freed.
	 */
	public static char[] setLocale()
	{
		// gchar* gtk_set_locale (void);
		return std.string.toString(gtk_set_locale() );
	}
	
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
	 * right-to-left or left-to-right text direction. See
	 * _gtk_get_lc_ctype() for notes on behaviour on Windows.
	 * Returns:
	 *  the default language as a PangoLanguage, must not be
	 * freed
	 */
	public static PangoLanguage* getDefaultLanguage()
	{
		// PangoLanguage* gtk_get_default_language (void);
		return gtk_get_default_language();
	}
	
	/**
	 * Parses command line arguments, and initializes global
	 * attributes of GTK+, but does not actually open a connection
	 * to a display. (See gdk_display_open(), gdk_get_display_arg_name())
	 * Any arguments used by GTK+ or GDK are removed from the array and
	 * argc and argv are updated accordingly.
	 * You shouldn't call this function explicitely if you are using
	 * gtk_init(), or gtk_init_check().
	 * argc:
	 *  a pointer to the number of command line arguments.
	 * argv:
	 *  a pointer to the array of command line arguments.
	 * Returns:
	 *  TRUE if initialization succeeded, otherwise FALSE.
	 */
	public static int parseArgs(int* argc, char*** argv)
	{
		// gboolean gtk_parse_args (int *argc,  char ***argv);
		return gtk_parse_args(argc, argv);
	}
	
	/**
	 * Call this function before using any other GTK+ functions in your GUI
	 * applications. It will initialize everything needed to operate the
	 * toolkit and parses some standard command line options. argc and
	 * argv are adjusted accordingly so your own code will
	 * never see those standard arguments.
	 * Note that there are some alternative ways to initialize GTK+:
	 * if you are calling gtk_parse_args(), gtk_init_check(),
	 * gtk_init_with_args() or g_option_context_parse() with
	 * the option group returned by gtk_get_option_group(), you
	 * don't have to call gtk_init().
	 * Note
	 * This function will terminate your program if it was unable to initialize
	 * the GUI for some reason. If you want your program to fall back to a
	 * textual interface you want to call gtk_init_check() instead.
	 * Note
	 * argc:
	 *  Address of the argc parameter of your
	 *  main() function. Changed if any arguments were handled.
	 * argv:
	 *  Address of the argv parameter of main().
	 *  Any parameters understood by gtk_init() are stripped before return.
	 */
	public static void init(int* argc, char*** argv)
	{
		// void gtk_init (int *argc,  char ***argv);
		gtk_init(argc, argv);
	}
	
	/**
	 * This function does the same work as gtk_init() with only
	 * a single change: It does not terminate the program if the GUI can't be
	 * initialized. Instead it returns FALSE on failure.
	 * This way the application can fall back to some other means of communication
	 * with the user - for example a curses or command line interface.
	 * argc:
	 *  Address of the argc parameter of your
	 *  main() function. Changed if any arguments were handled.
	 * argv:
	 *  Address of the argv parameter of main().
	 *  Any parameters understood by gtk_init() are stripped before return.
	 * Returns:
	 *  TRUE if the GUI has been successfully initialized,
	 *  FALSE otherwise.
	 */
	public static int initCheck(int* argc, char*** argv)
	{
		// gboolean gtk_init_check (int *argc,  char ***argv);
		return gtk_init_check(argc, argv);
	}
	
	/**
	 * This function does the same work as gtk_init_check().
	 * Additionally, it allows you to add your own commandline options,
	 * and it automatically generates nicely formatted
	 * --help output. Note that your program will
	 * be terminated after writing out the help output.
	 * argc:
	 *  a pointer to the number of command line arguments.
	 * argv:
	 *  a pointer to the array of command line arguments.
	 * parameter_string:
	 *  a string which is displayed in
	 *  the first line of --help output, after
	 *  programname [OPTION...]
	 * entries:
	 *  a NULL-terminated array of GOptionEntrys
	 *  describing the options of your program
	 * translation_domain:
	 *  a translation domain to use for translating
	 *  the --help output for the options in entries
	 *  with gettext(), or NULL
	 * error:
	 *  a return location for errors
	 * Returns:
	 *  TRUE if the GUI has been successfully initialized,
	 *  FALSE otherwise.
	 * Since 2.6
	 */
	public static int initWithArgs(int* argc, char*** argv, char[] parameterString, GOptionEntry* entries, char[] translationDomain, GError** error)
	{
		// gboolean gtk_init_with_args (int *argc,  char ***argv,  char *parameter_string,  GOptionEntry *entries,  char *translation_domain,  GError **error);
		return gtk_init_with_args(argc, argv, std.string.toStringz(parameterString), entries, std.string.toStringz(translationDomain), error);
	}
	
	/**
	 * Returns a GOptionGroup for the commandline arguments recognized
	 * by GTK+ and GDK. You should add this group to your GOptionContext
	 * with g_option_context_add_group(), if you are using
	 * g_option_context_parse() to parse your commandline arguments.
	 * open_default_display:
	 *  whether to open the default display
	 *  when parsing the commandline arguments
	 * Returns:
	 * a GOptionGroup for the commandline arguments recognized
	 *  by GTK+
	 * Since 2.6
	 */
	public static GOptionGroup* getOptionGroup(int openDefaultDisplay)
	{
		// GOptionGroup* gtk_get_option_group (gboolean open_default_display);
		return gtk_get_option_group(openDefaultDisplay);
	}
	
	/**
	 * Warning
	 * gtk_exit is deprecated and should not be used in newly-written code. Use the standard exit() function instead.
	 * Terminates the program and returns the given exit code to the caller.
	 * This function will shut down the GUI and free all resources allocated
	 * for GTK+.
	 * error_code:
	 * Return value to pass to the caller. This is dependend on the
	 * target system but at least on Unix systems 0 means success.
	 */
	public static void exit(int errorCode)
	{
		// void gtk_exit (gint error_code);
		gtk_exit(errorCode);
	}
	
	/**
	 * Checks if any events are pending. This can be used to update the GUI
	 * and invoke timeouts etc. while doing some time intensive computation.
	 * Example2.Updating the GUI during a long computation.
	 * 	/+* computation going on +/
	 * ...
	 *  while (gtk_events_pending ())
	 * 	 gtk_main_iteration ();
	 * ...
	 * 	/+* computation continued +/
	 * Returns:
	 * TRUE if any events are pending, FALSE otherwise.
	 */
	public static int eventsPending()
	{
		// gboolean gtk_events_pending (void);
		return gtk_events_pending();
	}
	
	/**
	 * Runs the main loop until gtk_main_quit() is called. You can nest calls to
	 * gtk_main(). In that case gtk_main_quit() will make the innermost invocation
	 * of the main loop return.
	 */
	public static void main()
	{
		// void gtk_main (void);
		gtk_main();
	}
	
	/**
	 * Asks for the current nesting level of the main loop. This can be useful
	 * when calling gtk_quit_add().
	 * Returns:
	 * the nesting level of the current invocation of the main loop.
	 */
	public static uint mainLevel()
	{
		// guint gtk_main_level (void);
		return gtk_main_level();
	}
	
	/**
	 * Makes the innermost invocation of the main loop return when it regains
	 * control.
	 */
	public static void mainQuit()
	{
		// void gtk_main_quit (void);
		gtk_main_quit();
	}
	
	/**
	 * Runs a single iteration of the mainloop. If no events are waiting to be
	 * processed GTK+ will block until the next event is noticed. If you don't
	 * want to block look at gtk_main_iteration_do() or check if any events are
	 * pending with gtk_events_pending() first.
	 * Returns:
	 * TRUE if gtk_main_quit() has been called for the innermost mainloop.
	 */
	public static int mainIteration()
	{
		// gboolean gtk_main_iteration (void);
		return gtk_main_iteration();
	}
	
	/**
	 * Runs a single iteration of the mainloop. If no events are available either
	 * return or block dependent on the value of blocking.
	 * blocking:
	 * TRUE if you want GTK+ to block if no events are pending.
	 * Returns:
	 * TRUE if gtk_main_quit() has been called for the innermost mainloop.
	 */
	public static int mainIterationDo(int blocking)
	{
		// gboolean gtk_main_iteration_do (gboolean blocking);
		return gtk_main_iteration_do(blocking);
	}
	
	/**
	 * Processes a single GDK event. This is public only to allow filtering of events
	 * between GDK and GTK+. You will not usually need to call this function directly.
	 * While you should not call this function directly, you might want to know
	 * how exactly events are handled. So here is what this function does with
	 * the event:
	 *  Compress enter/leave notify events. If the event passed build an
	 *  enter/leave pair together with the next event (peeked from GDK)
	 *  both events are thrown away. This is to avoid a backlog of (de-)highlighting
	 *  widgets crossed by the pointer.
	 *  Find the widget which got the event. If the widget can't be determined
	 *  the event is thrown away unless it belongs to a INCR transaction. In that
	 *  case it is passed to gtk_selection_incr_event().
	 *  Then the event is passed on a stack so you can query the currently handled
	 *  event with gtk_get_current_event().
	 *  The event is sent to a widget. If a grab is active all events for
	 *  widgets that are not in the contained in the grab widget are sent to the
	 *  latter with a few exceptions:
	 *  Deletion and destruction events are still sent to the event widget for
	 *  obvious reasons.
	 *  Events which directly relate to the visual representation of the event
	 *  widget.
	 *  Leave events are delivered to the event widget if there was an enter
	 *  event delivered to it before without the paired leave event.
	 *  Drag events are not redirected because it is unclear what the semantics
	 *  of that would be.
	 *  Another point of interest might be that all key events are first passed
	 *  through the key snooper functions if there are any. Read the description
	 *  of gtk_key_snooper_install() if you need this feature.
	 *  After finishing the delivery the event is popped from the event stack.
	 * event:
	 * An event to process (normally) passed by GDK.
	 */
	public static void mainDoEvent(Event event)
	{
		// void gtk_main_do_event (GdkEvent *event);
		gtk_main_do_event((event is null) ? null : event.getEventStruct());
	}
	
	
	
	
	
	/**
	 * Makes widget the current grabbed widget. This means that interaction with
	 * other widgets in the same application is blocked and mouse as well as
	 * keyboard events are delivered to this widget.
	 * widget:
	 * The widget that grabs keyboard and pointer events.
	 */
	public static void grabAdd(Widget widget)
	{
		// void gtk_grab_add (GtkWidget *widget);
		gtk_grab_add((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Queries the current grab of the default window group.
	 * Returns:
	 * The widget which currently has the grab or NULL if no grab is active.
	 */
	public static Widget grabGetCurrent()
	{
		// GtkWidget* gtk_grab_get_current (void);
		return new Widget( gtk_grab_get_current() );
	}
	
	/**
	 * Removes the grab from the given widget. You have to pair calls to gtk_grab_add()
	 * and gtk_grab_remove().
	 * widget:
	 * The widget which gives up the grab.
	 */
	public static void grabRemove(Widget widget)
	{
		// void gtk_grab_remove (GtkWidget *widget);
		gtk_grab_remove((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Registers a function to be called when the mainloop is started.
	 * function:
	 * Function to invoke when gtk_main() is called next.
	 * data:
	 * Data to pass to that function.
	 */
	public static void initAdd(GtkFunction funct, void* data)
	{
		// void gtk_init_add (GtkFunction function,  gpointer data);
		gtk_init_add(funct, data);
	}
	
	/**
	 * Trigger destruction of object in case the mainloop at level main_level
	 * is quit.
	 * main_level:
	 * Level of the mainloop which shall trigger the destruction.
	 * object:
	 * Object to be destroyed.
	 */
	public static void quitAddDestroy(uint mainLevel, ObjectGtk object)
	{
		// void gtk_quit_add_destroy (guint main_level,  GtkObject *object);
		gtk_quit_add_destroy(mainLevel, (object is null) ? null : object.getObjectGtkStruct());
	}
	
	/**
	 * Registers a function to be called when an instance of the mainloop is left.
	 * main_level:
	 * Level at which termination the function shall be called. You
	 *  can pass 0 here to have the function run at the termination of the current
	 *  mainloop.
	 * function:
	 * The function to call. This should return 0 to be removed from the
	 *  list of quit handlers. Otherwise the function might be called again.
	 * data:
	 * Pointer to pass when calling function.
	 * Returns:
	 * A handle for this quit handler (you need this for gtk_quit_remove())
	 *  or 0 if you passed a NULL pointer in function.
	 */
	public static uint quitAdd(uint mainLevel, GtkFunction funct, void* data)
	{
		// guint gtk_quit_add (guint main_level,  GtkFunction function,  gpointer data);
		return gtk_quit_add(mainLevel, funct, data);
	}
	
	/**
	 * Registers a function to be called when an instance of the mainloop is left.
	 * In comparison to gtk_quit_add() this function adds the possibility to
	 * pass a marshaller and a function to be called when the quit handler is freed.
	 * The former can be used to run interpreted code instead of a compiled function
	 * while the latter can be used to free the information stored in data (while
	 * you can do this in function as well)... So this function will mostly be
	 * used by GTK+ wrappers for languages other than C.
	 * main_level:
	 * Level at which termination the function shall be called. You
	 *  can pass 0 here to have the function run at the termination of the current
	 *  mainloop.
	 * function:
	 * The function to call. This should return 0 to be removed from the
	 *  list of quit handlers. Otherwise the function might be called again.
	 * marshal:
	 * The marshaller to be used. If this is non-NULL, function is
	 *  ignored.
	 * data:
	 * Pointer to pass when calling function.
	 * destroy:
	 * Function to call to destruct data. Gets data as argument.
	 * Returns:
	 * A handle for this quit handler (you need this for gtk_quit_remove())
	 *  or 0 if you passed a NULL pointer in function.
	 */
	public static uint quitAddFull(uint mainLevel, GtkFunction funct, GtkCallbackMarshal marshal, void* data, GtkDestroyNotify destroy)
	{
		// guint gtk_quit_add_full (guint main_level,  GtkFunction function,  GtkCallbackMarshal marshal,  gpointer data,  GtkDestroyNotify destroy);
		return gtk_quit_add_full(mainLevel, funct, marshal, data, destroy);
	}
	
	/**
	 * Removes a quit handler by its identifier.
	 * quit_handler_id:
	 * Identifier for the handler returned when installing it.
	 */
	public static void quitRemove(uint quitHandlerId)
	{
		// void gtk_quit_remove (guint quit_handler_id);
		gtk_quit_remove(quitHandlerId);
	}
	
	/**
	 * Removes a quit handler identified by its data field.
	 * data:
	 * The pointer passed as data to gtk_quit_add() or gtk_quit_add_full().
	 */
	public static void quitRemoveByData(void* data)
	{
		// void gtk_quit_remove_by_data (gpointer data);
		gtk_quit_remove_by_data(data);
	}
	
	
	
	
	
	
	
	
	
	/**
	 * Warning
	 * gtk_input_add_full is deprecated and should not be used in newly-written code. Use g_io_add_watch_full() instead.
	 * Registers a function to be called when a condition becomes true
	 * on a file descriptor.
	 * source:
	 * a file descriptor.
	 * condition:
	 * the condition.
	 * function:
	 * The function to call.
	 * marshal:
	 * The marshaller to use instead of the function (if non-NULL).
	 * data:
	 * callback data passed to function.
	 * destroy:
	 * callback function to call with data when the input
	 *  handler is removed, or NULL.
	 * Returns:
	 * A unique id for the event source; to be used with gtk_input_remove().
	 */
	public static uint inputAddFull(int source, GdkInputCondition condition, GdkInputFunction funct, GtkCallbackMarshal marshal, void* data, GtkDestroyNotify destroy)
	{
		// guint gtk_input_add_full (gint source,  GdkInputCondition condition,  GdkInputFunction function,  GtkCallbackMarshal marshal,  gpointer data,  GtkDestroyNotify destroy);
		return gtk_input_add_full(source, condition, funct, marshal, data, destroy);
	}
	
	/**
	 * Warning
	 * gtk_input_remove is deprecated and should not be used in newly-written code. Use g_source_remove() instead.
	 * Removes the function with the given id.
	 * input_handler_id:
	 * Identifies the function to remove.
	 */
	public static void inputRemove(uint inputHandlerId)
	{
		// void gtk_input_remove (guint input_handler_id);
		gtk_input_remove(inputHandlerId);
	}
	
	
	
	
	
	
	
	/**
	 * Installs a key snooper function, which will get called on all key events
	 * before delivering them normally.
	 * snooper:
	 * a GtkKeySnoopFunc.
	 * func_data:
	 * data to pass to snooper.
	 * Returns:
	 * a unique id for this key snooper for use with gtk_key_snooper_remove().
	 */
	public static uint keySnooperInstall(GtkKeySnoopFunc snooper, void* funcData)
	{
		// guint gtk_key_snooper_install (GtkKeySnoopFunc snooper,  gpointer func_data);
		return gtk_key_snooper_install(snooper, funcData);
	}
	
	
	/**
	 * Removes the key snooper function with the given id.
	 * snooper_handler_id:
	 * Identifies the key snooper to remove.
	 */
	public static void keySnooperRemove(uint snooperHandlerId)
	{
		// void gtk_key_snooper_remove (guint snooper_handler_id);
		gtk_key_snooper_remove(snooperHandlerId);
	}
	
	/**
	 * Obtains a copy of the event currently being processed by GTK+. For
	 * example, if you get a "clicked" signal from GtkButton, the current
	 * event will be the GdkEventButton that triggered the "clicked"
	 * signal. The returned event must be freed with gdk_event_free().
	 * If there is no current event, the function returns NULL.
	 * Returns:
	 *  a copy of the current event, or NULL if no current event.
	 */
	public static Event getCurrentEvent()
	{
		// GdkEvent* gtk_get_current_event (void);
		return new Event( gtk_get_current_event() );
	}
	
	/**
	 * If there is a current event and it has a timestamp, return that
	 * timestamp, otherwise return GDK_CURRENT_TIME.
	 * Returns:
	 *  the timestamp from the current event, or GDK_CURRENT_TIME.
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
	 * state:
	 *  a location to store the state of the current event
	 * Returns:
	 *  TRUE if there was a current event and it had a state field
	 */
	public static int getCurrentEventState(GdkModifierType* state)
	{
		// gboolean gtk_get_current_event_state (GdkModifierType *state);
		return gtk_get_current_event_state(state);
	}
	
	/**
	 * If event is NULL or the event was not associated with any widget,
	 * returns NULL, otherwise returns the widget that received the event
	 * originally.
	 * event:
	 *  a GdkEvent
	 * Returns:
	 *  the widget that originally received event, or NULL
	 */
	public static Widget getEventWidget(Event event)
	{
		// GtkWidget* gtk_get_event_widget (GdkEvent *event);
		return new Widget( gtk_get_event_widget((event is null) ? null : event.getEventStruct()) );
	}
	
	/**
	 * Sends an event to a widget, propagating the event to parent widgets
	 * if the event remains unhandled. Events received by GTK+ from GDK
	 * normally begin in gtk_main_do_event(). Depending on the type of
	 * event, existence of modal dialogs, grabs, etc., the event may be
	 * propagated; if so, this function is used. gtk_propagate_event()
	 * calls gtk_widget_event() on each widget it decides to send the
	 * event to. So gtk_widget_event() is the lowest-level function; it
	 * simply emits the "event" and possibly an event-specific signal on a
	 * widget. gtk_propagate_event() is a bit higher-level, and
	 * gtk_main_do_event() is the highest level.
	 * All that said, you most likely don't want to use any of these
	 * functions; synthesizing events is rarely needed. Consider asking on
	 * the mailing list for better ways to achieve your goals. For
	 * example, use gdk_window_invalidate_rect() or
	 * gtk_widget_queue_draw() instead of making up expose events.
	 * widget:
	 *  a GtkWidget
	 * event:
	 *  an event
	 * See Also
	 * See the GLib manual, especially GMainLoop and signal-related
	 * functions such as g_signal_connect().
	 */
	public static void propagateEvent(Widget widget, Event event)
	{
		// void gtk_propagate_event (GtkWidget *widget,  GdkEvent *event);
		gtk_propagate_event((widget is null) ? null : widget.getWidgetStruct(), (event is null) ? null : event.getEventStruct());
	}
}
