/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gtk
 * outFile = Idle
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Idle
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_idle_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Idle;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;






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
public class Idle
{
	
	/** Holds all idle delegates */
	bool delegate()[] idleListeners;
	/** our gtk idle ID */
	uint idleID;
	
	/**
	 * Creates a new idle cycle.
	 * Params:
	 *    	interval = 	the idle in milieconds
	 *    	delegate() = 	the delegate to be executed
	 *    	fireNow = 	When true the delegate will be executed emmidiatly
	 * Returns:
	 */
	this(bool delegate() dlg, bool fireNow=false)
	{
		idleListeners ~= dlg;
		idleID = gtk_idle_add(cast(GtkFunction)&idleCallback, cast(void*)this);
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = 0;
			}
		}
	}
	
	public void stop()
	{
		if ( idleID > 0 )
		{
			gtk_idle_remove(idleID);
		}
		idleListeners.length = 0;
	}
	
	/**
	 * Removes the idle from gtk
	 * Returns:
	 */
	~this()
	{
		stop();
	}
	
	/**
	 * Adds a new delegate to this idle cycle
	 * Params:
	 *    	delegate() =
	 *    	fireNow =
	 */
	public void addListener(bool delegate() dlg, bool fireNow=false)
	{
		idleListeners ~= dlg;
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = idleListeners.length - 1;
			}
		}
	}
	
	/**
	 * The callback execution from glib
	 * Params:
	 *    	idle =
	 * Returns:
	 */
	extern(C) static bool idleCallback(Idle idle)
	{
		return idle.callAllListeners();
	}
	
	/**
	 * Executes all delegates on the execution list
	 * Returns:
	 */
	private bool callAllListeners()
	{
		bool runAgain = false;
		
		int i = 0;
		
		while ( i<idleListeners.length )
		{
			if ( !idleListeners[i]() )
			{
				idleListeners = idleListeners[0..i] ~ idleListeners[i+1..idleListeners.length];
			}
			else
			{
				runAgain = true;
				++i;
			}
		}
		return runAgain;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Warning
	 * gtk_idle_add has been deprecated since version 2.4 and should not be used in newly-written code. Use g_idle_add() instead.
	 * Causes the mainloop to call the given function whenever no events with
	 * higher priority are to be processed. The default priority is
	 * GTK_PRIORITY_DEFAULT, which is rather low.
	 * function:
	 * The function to call.
	 * data:
	 * The information to pass to the function.
	 * Returns:
	 * a unique handle for this registration.
	 */
	public static uint add(GtkFunction funct, void* data)
	{
		// guint gtk_idle_add (GtkFunction function,  gpointer data);
		return gtk_idle_add(funct, data);
	}
	
	/**
	 * Warning
	 * gtk_idle_add_priority has been deprecated since version 2.4 and should not be used in newly-written code. Use g_idle_add_full() instead.
	 * Like gtk_idle_add() this function allows you to have a function called
	 * when the event loop is idle. The difference is that you can give a
	 * priority different from GTK_PRIORITY_DEFAULT to the idle function.
	 * priority:
	 * The priority which should not be above G_PRIORITY_HIGH_IDLE.
	 * Note that you will interfere with GTK+ if you use a priority above
	 * GTK_PRIORITY_RESIZE.
	 * function:
	 * The function to call.
	 * data:
	 * Data to pass to that function.
	 * Returns:
	 * A unique id for the event source.
	 */
	public static uint addPriority(int priority, GtkFunction funct, void* data)
	{
		// guint gtk_idle_add_priority (gint priority,  GtkFunction function,  gpointer data);
		return gtk_idle_add_priority(priority, funct, data);
	}
	
	/**
	 * Warning
	 * gtk_idle_add_full has been deprecated since version 2.4 and should not be used in newly-written code. Use g_idle_add_full() instead.
	 * Like gtk_idle_add() this function allows you to have a function called
	 * when the event loop is idle. The difference is that you can give a
	 * priority different from GTK_PRIORITY_DEFAULT to the idle function.
	 * priority:
	 * The priority which should not be above G_PRIORITY_HIGH_IDLE.
	 * Note that you will interfere with GTK+ if you use a priority above
	 * GTK_PRIORITY_RESIZE.
	 * function:
	 * The function to call.
	 * marshal:
	 * The marshaller to use instead of the function (if non-NULL).
	 * data:
	 * Data to pass to that function.
	 * destroy:
	 * Function to call when the timeout is destroyed or NULL.
	 * Returns:
	 * A unique id for the event source.
	 */
	public static uint addFull(int priority, GtkFunction funct, GtkCallbackMarshal marshal, void* data, GtkDestroyNotify destroy)
	{
		// guint gtk_idle_add_full (gint priority,  GtkFunction function,  GtkCallbackMarshal marshal,  gpointer data,  GtkDestroyNotify destroy);
		return gtk_idle_add_full(priority, funct, marshal, data, destroy);
	}
	
	/**
	 * Warning
	 * gtk_idle_remove has been deprecated since version 2.4 and should not be used in newly-written code. Use g_source_remove() instead.
	 * Removes the idle function with the given id.
	 * idle_handler_id:
	 * Identifies the idle function to remove.
	 */
	public static void remove(uint idleHandlerId)
	{
		// void gtk_idle_remove (guint idle_handler_id);
		gtk_idle_remove(idleHandlerId);
	}
	
	/**
	 * Warning
	 * gtk_idle_remove_by_data has been deprecated since version 2.4 and should not be used in newly-written code. Use g_idle_remove_by_data() instead.
	 * Removes the idle function identified by the user data.
	 * data:
	 * remove the idle function which was registered with this user data.
	 */
	public static void removeByData(void* data)
	{
		// void gtk_idle_remove_by_data (gpointer data);
		gtk_idle_remove_by_data(data);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
