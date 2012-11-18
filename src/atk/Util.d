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
 * inFile  = AtkUtil.html
 * outPack = atk
 * outFile = Util
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Util
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- glib.Str
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Util;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import atk.ObjectAtk;
private import glib.Str;




/**
 * Description
 * A set of ATK utility functions which are used to support event registration of
 * various types, and obtaining the 'root' accessible of a process and
 * information about the current ATK implementation and toolkit version.
 */
public class Util
{
	
	/**
	 */
	
	/**
	 * Adds the specified function to the list of functions to be called
	 * when an object receives focus.
	 * Params:
	 * focusTracker = Function to be added to the list of functions to be called
	 * when an object receives focus.
	 * Returns: added focus tracker id, or 0 on failure.
	 */
	public static uint addFocusTracker(AtkEventListener focusTracker)
	{
		// guint atk_add_focus_tracker (AtkEventListener focus_tracker);
		return atk_add_focus_tracker(focusTracker);
	}
	
	/**
	 * Removes the specified focus tracker from the list of functions
	 * to be called when any object receives focus.
	 * Params:
	 * trackerId = the id of the focus tracker to remove
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
	 * Params:
	 * init = Function to be called for focus tracker initialization
	 */
	public static void focusTrackerInit(AtkEventListenerInit init)
	{
		// void atk_focus_tracker_init (AtkEventListenerInit init);
		atk_focus_tracker_init(init);
	}
	
	/**
	 * Cause the focus tracker functions which have been specified to be
	 * executed for the object.
	 * Params:
	 * object = an AtkObject
	 */
	public static void focusTrackerNotify(ObjectAtk object)
	{
		// void atk_focus_tracker_notify (AtkObject *object);
		atk_focus_tracker_notify((object is null) ? null : object.getObjectAtkStruct());
	}
	
	/**
	 * Adds the specified function to the list of functions to be called
	 * when an ATK event of type event_type occurs.
	 * Params:
	 * listener = the listener to notify
	 * eventType = the type of event for which notification is requested
	 * Returns: added event listener id, or 0 on failure.
	 */
	public static uint addGlobalEventListener(GSignalEmissionHook listener, string eventType)
	{
		// guint atk_add_global_event_listener (GSignalEmissionHook listener,  const gchar *event_type);
		return atk_add_global_event_listener(listener, Str.toStringz(eventType));
	}
	
	/**
	 * listener_id is the value returned by atk_add_global_event_listener
	 * when you registered that event listener.
	 * Toolkit implementor note: Atk provides a default implementation for
	 * this virtual method, and that implementation should be enough for
	 * most of the cases. You should have a really good reason to
	 * reimplement this method.
	 * Removes the specified event listener
	 * Params:
	 * listenerId = the id of the event listener to remove
	 */
	public static void removeGlobalEventListener(uint listenerId)
	{
		// void atk_remove_global_event_listener (guint listener_id);
		atk_remove_global_event_listener(listenerId);
	}
	
	/**
	 * Adds the specified function to the list of functions to be called
	 *  when a key event occurs. The data element will be passed to the
	 *  AtkKeySnoopFunc (listener) as the func_data param, on notification.
	 * Params:
	 * listener = the listener to notify
	 * data = a gpointer that points to a block of data that should be sent to the registered listeners,
	 * along with the event notification, when it occurs.
	 * Returns: added event listener id, or 0 on failure.
	 */
	public static uint addKeyEventListener(AtkKeySnoopFunc listener, void* data)
	{
		// guint atk_add_key_event_listener (AtkKeySnoopFunc listener,  gpointer data);
		return atk_add_key_event_listener(listener, data);
	}
	
	/**
	 * listener_id is the value returned by atk_add_key_event_listener
	 * when you registered that event listener.
	 * Removes the specified event listener.
	 * Params:
	 * listenerId = the id of the event listener to remove
	 */
	public static void removeKeyEventListener(uint listenerId)
	{
		// void atk_remove_key_event_listener (guint listener_id);
		atk_remove_key_event_listener(listenerId);
	}
	
	/**
	 * Gets the root accessible container for the current application.
	 * Returns: the root accessible container for the current application. [transfer none]
	 */
	public static ObjectAtk getRoot()
	{
		// AtkObject * atk_get_root (void);
		auto p = atk_get_root();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the currently focused object.
	 * Since 1.6
	 * Returns: the currently focused object for the current application. [transfer none]
	 */
	public static ObjectAtk getFocusObject()
	{
		// AtkObject * atk_get_focus_object (void);
		auto p = atk_get_focus_object();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets name string for the GUI toolkit implementing ATK for this application.
	 * Returns: name string for the GUI toolkit implementing ATK for this application
	 */
	public static string getToolkitName()
	{
		// const gchar * atk_get_toolkit_name (void);
		return Str.toString(atk_get_toolkit_name());
	}
	
	/**
	 * Gets version string for the GUI toolkit implementing ATK for this application.
	 * Returns: version string for the GUI toolkit implementing ATK for this application
	 */
	public static string getToolkitVersion()
	{
		// const gchar * atk_get_toolkit_version (void);
		return Str.toString(atk_get_toolkit_version());
	}
	
	/**
	 * Gets the current version for ATK.
	 * Since 1.20
	 * Returns: version string for ATK
	 */
	public static string getVersion()
	{
		// const gchar * atk_get_version (void);
		return Str.toString(atk_get_version());
	}
}
