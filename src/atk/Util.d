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
 * outPack = atk
 * outFile = Util
 * strct   = 
 * realStrct=
 * clss    = Util
 * template for:
 * extend  = 
 * prefixes:
 * 	- atk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.Util;

private import atk.typedefs;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * This is a utility class which supports the adding and removal of event
 * listeners. The adding and removing of the listeners must be done in the
 * same thread. The file also contains a number of utility functions.
 */
public class Util
{
	
	/**
	 */
	
	
	
	/**
	 * Adds the specified function to the list of functions to be called
	 * when an object receives focus.
	 * focus_tracker:
	 *  Function to be added to the list of functions to be called
	 * when an object receives focus.
	 * Returns:
	 *  added focus tracker id, or 0 on failure.
	 */
	public static uint addFocusTracker(AtkEventListener focusTracker)
	{
		// guint atk_add_focus_tracker (AtkEventListener focus_tracker);
		return atk_add_focus_tracker(focusTracker);
	}
	
	/**
	 * Removes the specified focus tracker from the list of functions
	 * to be called when any object receives focus.
	 * tracker_id:
	 *  the id of the focus tracker to remove
	 */
	public static void removeFocusTracker(uint trackerId)
	{
		// void atk_remove_focus_tracker (guint tracker_id);
		atk_remove_focus_tracker(trackerId);
	}
	
	/**
	 * Specifies the function to be called for focus tracker initialization.
	 * This function should be called by an implementation of the
	 * ATK interface if any specific work needs to be done to enable
	 * focus tracking.
	 * add_function:
	 */
	public static void focusTrackerInit(AtkEventListenerInit addFunction)
	{
		// void atk_focus_tracker_init (AtkEventListenerInit add_function);
		atk_focus_tracker_init(addFunction);
	}
	
	/**
	 * Cause the focus tracker functions which have been specified to be
	 * executed for the object.
	 * object:
	 *  an AtkObject
	 */
	public static void focusTrackerNotify(AtkObject* object)
	{
		// void atk_focus_tracker_notify (AtkObject *object);
		atk_focus_tracker_notify(object);
	}
	
	
	
	/**
	 * Adds the specified function to the list of functions to be called
	 * when an event of type event_type occurs.
	 * listener:
	 *  the listener to notify
	 * event_type:
	 *  the type of event for which notification is requested
	 * Returns:
	 *  added event listener id, or 0 on failure.
	 */
	public static uint addGlobalEventListener(GSignalEmissionHook listener, char[] eventType)
	{
		// guint atk_add_global_event_listener (GSignalEmissionHook listener,  const gchar *event_type);
		return atk_add_global_event_listener(listener, Str.toStringz(eventType));
	}
	
	/**
	 * Removes the specified event listener
	 * listener_id:
	 *  the id of the event listener to remove
	 */
	public static void removeGlobalEventListener(uint listenerId)
	{
		// void atk_remove_global_event_listener  (guint listener_id);
		atk_remove_global_event_listener(listenerId);
	}
	
	
	
	
	/**
	 * Adds the specified function to the list of functions to be called
	 *  when a key event occurs. The data element will be passed to the
	 *  AtkKeySnoopFunc (listener) as the func_data param, on notification.
	 * listener:
	 *  the listener to notify
	 * data:
	 *  a gpointer that points to a block of data that should be sent to the registered listeners,
	 *  along with the event notification, when it occurs.
	 * Returns:
	 *  added event listener id, or 0 on failure.
	 */
	public static uint addKeyEventListener(AtkKeySnoopFunc listener, void* data)
	{
		// guint atk_add_key_event_listener (AtkKeySnoopFunc listener,  gpointer data);
		return atk_add_key_event_listener(listener, data);
	}
	
	/**
	 * Removes the specified event listener
	 * listener_id:
	 *  the id of the event listener to remove
	 */
	public static void removeKeyEventListener(uint listenerId)
	{
		// void atk_remove_key_event_listener (guint listener_id);
		atk_remove_key_event_listener(listenerId);
	}
	
	/**
	 * Gets the root accessible container for the current application.
	 * Returns:
	 *  the root accessible container for the current application
	 */
	public static AtkObject* getRoot()
	{
		// AtkObject* atk_get_root (void);
		return atk_get_root();
	}
	
	/**
	 * Gets the currently focused object.
	 * Returns:
	 *  the currently focused object for the current application
	 */
	public static AtkObject* getFocusObject()
	{
		// AtkObject* atk_get_focus_object (void);
		return atk_get_focus_object();
	}
	
	/**
	 * Gets name string for the GUI toolkit implementing ATK for this application.
	 * Returns:
	 *  name string for the GUI toolkit implementing ATK for this application
	 */
	public static char[] getToolkitName()
	{
		// const gchar* atk_get_toolkit_name (void);
		return Str.toString(atk_get_toolkit_name() );
	}
	
	/**
	 * Gets version string for the GUI toolkit implementing ATK for this application.
	 * Returns:
	 *  version string for the GUI toolkit implementing ATK for this application
	 */
	public static char[] getToolkitVersion()
	{
		// const gchar* atk_get_toolkit_version (void);
		return Str.toString(atk_get_toolkit_version() );
	}
}
