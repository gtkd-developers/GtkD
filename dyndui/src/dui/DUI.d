/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.DUI;
private import def.Types;
private import def.Constants;
private import dui.Utils;

private import lib.gtk;
private import lib.gdk;
private import lib.gobject;

//private import event.Event;

/**
 * Provides the main GTK cycle.
 * Only one instance of this class will exist per application.<br>
 * (that has to be reviewed has it seems that GTK+ applications
 * can have more then one main cyle)<br>
 * Use DUI.dui (char[][] args) to create and get an instance 
 * of DUI, use DUI.dui() to the the current instance to DUI.<br>
 * Any second call the DUI.dui(char[][]args) will ignore the
 * arguments passed and just return the current DUI instance.<br>
 * The valid arguments to GTK+ are:<br>
 * --gtk-module<br>
 * --g-fatal-warnings<br>
 * --gtk-debug<br>
 * --gtk-no-debug<br>
 * --gdk-debug<br>
 * --gdk-no-debug<br>
 * --display<br>
 * --sync<br>
 * --name<br>
 * --class<br>
 */

// moved out ------------------
   private import dool.String;
// ----------------------------

public GType pixbufGetType()
{
	return gdk_pixbuf_get_type();
}

public: class DUI
{
	debug(status)
	{
		int complete(){return 10;}
		char[] gtkName(){return "main cycle";}
		char[] description(){return "Provides the main GTK cycle";}
		char[] author(){return "Antonio";}
	}
	
	protected: static DUI duiInstance;

	public:

	const int GTK_REQUIRED_MAJOR = 2;
	const int GTK_REQUIRED_MINOR = 2;
	const int GTK_REQUIRED_MICRO = 4;
	
	/**
	 * Check the require GTK version with the actual GTK library.
	 * @return an empty string if versions are compatible or a warning message
	 */
	static String gtkCheckVersion()
	{
		return String.newz(gtk_check_version(GTK_REQUIRED_MAJOR, GTK_REQUIRED_MINOR, GTK_REQUIRED_MICRO));
	}
	
	/**
	 * Gets the expected GTK version
	 * @return a string with major, minor, micro separatd by comas
	 */
	static String getGTKExpectedVersion()
	{
		return new String(GTK_REQUIRED_MAJOR)
				~ "." ~ GTK_REQUIRED_MINOR
				~ "." ~ GTK_REQUIRED_MICRO;
	}
	
	/**
	 * Creates a new DUI object.
	 * This is suppose to be a singleton but this ctor is left with access protected.
	 * \todo actually parse the parameters
	 */
	protected: this(char[][] args)
	{
		String versionCompare = DUI.gtkCheckVersion();
		if ( versionCompare.length > 0 )
		{
			printf("\n######\n"
					 "###### ATTENTION !!! %.*s\n"
					 "######\n"
					 "### probably you will run into problems with DUI\n"
					 "######\n\n"
					,versionCompare);
		}
		
		int argc = args.length;
		
		// my version
		//char*[] argv;
		//for ( int i=1 ; i<argc ; i++ )
		//{
		//	argv ~= cast(char*)args[i];
		//}
		
		// Walter version
		char** argv = new char*[args.length];
		int i = 0;
		foreach (char[] p; args)
		{
			argv[i++] = cast(char*)p;
		}
		
		//for ( int i = 0 ; i< argc ; i++ )
		//{
		//	printf("\t%d %s\n",i,argv[i]);
		//}
		
		gtk_init(&argc,&argv);
		//for ( int i = 0 ; i< argc ; i++ )
		//{
		//	printf("\t%d %s\n",i,argv[i]);
		//}
		
		g_type_init();
		
	}

	/**
	 * This is to show or not all widget by default.
	 * @see autoShow(byte)
	 */
	protected: byte showWidgetOnCreation = 1;

	/**
	 * Set the auto show flag.
	 * This is an experimental (good so far) flag to show every 
	 * widget on creation.
	 * Instead of this a showAll is used on normal GTK programming
	 * the idea for this is that probably we want ot show most of the
	 * widget placed on a container and don't want to wary about it.
	 * If a widget is not to show just use widget.hide() method.
	 * Some widgets (e.g. Windows and Dialog) are never shown by default
	 */
	public: void autoShow(byte show)
	{
		showWidgetOnCreation = show;
	}
	
	/**
	 * get the auto show state
	 * @see autoShow(byte)
	 */
	public: byte autoShow()
	{
		return showWidgetOnCreation;
	}

//	private: Thread thread;

	/**
	 * Get the current DUI or create a new one if it doesn't exist yet.
	 * Only one DUI will exist by application.
	 * @return the DUI for this application.
	 */
	public: static DUI dui (char[][] args)
	{
		if ( duiInstance === null )
		{
			g_thread_init(null);
			gdk_threads_init();
			duiInstance = new DUI(args);
		}
		return duiInstance;
	}
	
	/**
	 * Get the current DUI.
	 * @return the DUI for this application or null if it doesn't exist yet
	 */
	public: static DUI dui()
	{	
		return duiInstance;
	}
	
	/**
	 * Starts the main DUI cycle.
	 * You should call this only after all initialization are completed
	 * as the control will not be return to the calling function
	 * @return the exit status
	 */
	public: int go()
	{
		gdk_threads_enter();
		gtk_main();
		gdk_threads_leave();
		return 0;
	}

	public static void threadsEnter()
	{
		gdk_threads_enter();
	}
	
	public static void threadsLeave()
	{
		gdk_threads_leave();
	}
	
	public static void flush()
	{
		gdk_flush();
	}
	
	/**
	 * Stop the DUI main cycle.
	 * This should be called to finish the application, all GUI activities will be stoped
	 */
	public: void stop()
	{
		gtk_main_quit();
	}
	
	/**
	 * Allow DUI to process all pending events.
	 */
	public: static void processPendingEvents()
	{
		while (gtk_events_pending ())
		{
			  gtk_main_iteration ();
		}
	}

	//void g_type_init();
	//gchar* gtk_check_version (guint required_major,
    //                     guint required_minor,
    //                      guint required_micro);
	//gboolean gtk_events_pending ();

	//gchar * gtk_set_locale();
	//void gtk_disable_setlocale();
	//PangoLanguage * gtk_get_default_language();
	//void gtk_init(int * argc, char * **argv);
	//gboolean gtk_init_check(int * argc, char * **argv);
	//void gtk_exit(gint error_code);
	//gint gtk_events_pending();
	//void gtk_main();
	//guint gtk_main_level();
	//void gtk_main_quit();
	//gboolean gtk_main_iteration();
	//gboolean gtk_main_iteration_do(gboolean blocking);
	//void gtk_main_do_event(GdkEvent * event);
	//void (*GtkModuleInitFunc)(gint * argc, gchar * **argv);
	//void (*GtkModuleDisplayInitFunc)(GdkDisplay * display);
	
	//gboolean gtk_true();
	//gboolean gtk_false();
	
	//void gtk_grab_add(GtkWidget * widget);
	//GtkWidget * gtk_grab_get_current();
	//void gtk_grab_remove(GtkWidget * widget);
	
	//void gtk_init_add(GtkFunction function, gpointer data);
	//void gtk_quit_add_destroy(guint main_level, GtkObject * object);
	//guint gtk_quit_add(guint main_level, GtkFunction function, gpointer data);
	//guint gtk_quit_add_full(guint main_level, GtkFunction function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	//void gtk_quit_remove(guint quit_handler_id);
	//void gtk_quit_remove_by_data(gpointer data);
	
	//guint gtk_timeout_add_full(guint32 interval, GtkFunction function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	//guint gtk_timeout_add(guint32 interval, GtkFunction function, gpointer data);
	//void gtk_timeout_remove(guint timeout_handler_id);
	
	//guint gtk_input_add_full(gint source, GdkInputCondition condition, GdkInputFunction function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
	//void gtk_input_remove(guint input_handler_id);
	
	//#define     GTK_PRIORITY_REDRAW
	//#define     GTK_PRIORITY_RESIZE
	//#define GTK_PRIORITY_HIGH 
	//# define GTK_PRIORITY_INTERNAL 
	//# define GTK_PRIORITY_DEFAULT 
	//# define GTK_PRIORITY_LOW
	//guint gtk_key_snooper_install (GtkKeySnoopFunc snooper, gpointer func_data);
	//gint (*GtkKeySnoopFunc)(GtkWidget * grab_widget, GdkEventKey * event, gpointer func_data);
	//void gtk_key_snooper_remove(guint snooper_handler_id);
	
	//GdkEvent * gtk_get_current_event();
	static int getCurrentEventTime()
	{
		return gtk_get_current_event_time();
	}
	
	//gboolean gtk_get_current_event_state(GdkModifierType * state);
	//GtkWidget * gtk_get_event_widget(GdkEvent * event);
	//void gtk_propagate_event(GtkWidget * widget, GdkEvent * event);

	//////////////////////////////////////////////
	/// idle events
	//////////////////////////////////////////////
	
//	guint idleAdd(void* funct, gpointer data)
//	{
//		return gtk_idle_add(funct, data);
//	}
//	guint idleAddPriority(gint priority, void* funct, IdleListener listener)
//	{
//		return gtk_idle_add_priority(priority, funct, listener);
//	}
//	//guint gtk_idle_add_full(gint priority, GtkFunction function, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy);
//	void idleRemove(guint idle_handler_id)
//	{
//		gtk_idle_remove(idle_handler_id);
//	}
//	//void gtk_idle_remove_by_data(gpointer data);
//	
//
//	public:
//
//	/**
//	 * Adds a idle listener to an object
//	 * @param listener the IdleListener object
//	 * @return the idle id. The idle id can be used to remove the idle listener
//	 */
//	int addIdleListener(IdleListener listener)
//	{
//		return idleAdd(&idle,listener);
//	}
//	
//	/**
//	 * Adds a idle listener to an object
//	 * @param listener the IdleListener object
//	 * @param priority ???
//	 * @return the idle id. The idle id can be used to remove the idle listener
//	 */
//	int addIdleListener(IdleListener listener, int priority)
//	{
//		return idleAddPriority(priority, &idle,listener);
//	}
//	
//	/**
//	 * Removes a idle listener by idle id
//	 * @param idleID the idleID id to remove.
//	 */
//	void removeIdleListener(int idleID)
//	{
//		idleRemove(idleID);
//	}
//	
//	extern(C)
//	{
//		static int idle(IdleListener listener)
//		{
//			return listener.idleCallback();
//		}
//	}

	//////////////////////////////////////////////
	/// timeout events
	//////////////////////////////////////////////
	
//	struct TimeoutHolder
//	{
//		guint timeoutHandler;
//		bit delegate() timeoutListener;
//	}
//	
//	void*[guint] timeoutHolders;
//	
//	/**
//	 * Sets a function to be called at regular intervals, with the default priority,
//	 * G_PRIORITY_DEFAULT. The function is called repeatedly until it returns FALSE,
//	 * at which point the timeout is automatically destroyed and the function will
//	 * not be called again. The first call to the function will be at the end of the
//	 * first interval. Note that timeout functions may be delayed, due to the
//	 * processing of other event sources. Thus they should not be relied on for
//	 * precise timing. After each call to the timeout function, the time of the next
//	 * timeout is recalculated based on the current time and the given interval (it
//	 * does not try to 'catch up' time lost in delays).
//	 * @param dlg the function delegate
//	 * @param interval the time between calls to the function, in milliseconds
//	 * (1/1000ths of a second)
//	 * @return the timeout handler
//	 */
//	guint addTimeout(bit delegate() dlg, guint32 interval)
//	{
//		TimeoutHolder th;
//		th.timeoutListener = dlg;
//		guint timeoutHandler = gtk_timeout_add(interval, &timeoutCallback, &th);
//		timeoutHolders[timeoutHandler] = &th;
//		return timeoutHandler;
//	}
//	
//	//void removeTimeout(guint timeout_handler_id)
//	//{
//	//	gtk_timeout_remove(timeout_handler_id);
//	//	delete timeoutHolders[timeout_handler_id];
//	//}
//
//	extern(C)
//	{
//		static int timeoutCallback(TimeoutHolder* th)
//		{
//			return th.timeoutListener();
//		}
//	}

}
