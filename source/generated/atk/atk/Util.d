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


module atk.Util;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * A set of ATK utility functions which are used to support event
 * registration of various types, and obtaining the 'root' accessible
 * of a process and information about the current ATK implementation
 * and toolkit version.
 */
public struct Util
{

	/** */
	public static GType getType()
	{
		return atk_util_get_type();
	}

	/**
	 * Adds the specified function to the list of functions to be called
	 * when an object receives focus.
	 *
	 * Deprecated: Focus tracking has been dropped as a feature
	 * to be implemented by ATK itself. If you need focus tracking on your
	 * implementation, subscribe to the #AtkObject::state-change "focused" signal.
	 *
	 * Params:
	 *     focusTracker = Function to be added to the list of functions to be called
	 *         when an object receives focus.
	 *
	 * Returns: added focus tracker id, or 0 on failure.
	 */
	public static uint addFocusTracker(AtkEventListener focusTracker)
	{
		return atk_add_focus_tracker(focusTracker);
	}

	/**
	 * Adds the specified function to the list of functions to be called
	 * when an ATK event of type event_type occurs.
	 *
	 * The format of event_type is the following:
	 * "ATK:&lt;atk_type&gt;:&lt;atk_event&gt;:&lt;atk_event_detail&gt;
	 *
	 * Where "ATK" works as the namespace, &lt;atk_interface&gt; is the name of
	 * the ATK type (interface or object), &lt;atk_event&gt; is the name of the
	 * signal defined on that interface and &lt;atk_event_detail&gt; is the
	 * gsignal detail of that signal. You can find more info about gsignal
	 * details here:
	 * http://developer.gnome.org/gobject/stable/gobject-Signals.html
	 *
	 * The first three parameters are mandatory. The last one is optional.
	 *
	 * For example:
	 * ATK:AtkObject:state-change
	 * ATK:AtkText:text-selection-changed
	 * ATK:AtkText:text-insert:system
	 *
	 * Toolkit implementor note: ATK provides a default implementation for
	 * this virtual method. ATK implementors are discouraged from
	 * reimplementing this method.
	 *
	 * Toolkit implementor note: this method is not intended to be used by
	 * ATK implementors but by ATK consumers.
	 *
	 * ATK consumers note: as this method adds a listener for a given ATK
	 * type, that type should be already registered on the GType system
	 * before calling this method. A simple way to do that is creating an
	 * instance of #AtkNoOpObject. This class implements all ATK
	 * interfaces, so creating the instance will register all ATK types as
	 * a collateral effect.
	 *
	 * Params:
	 *     listener = the listener to notify
	 *     eventType = the type of event for which notification is requested
	 *
	 * Returns: added event listener id, or 0 on failure.
	 */
	public static uint addGlobalEventListener(GSignalEmissionHook listener, string eventType)
	{
		return atk_add_global_event_listener(listener, Str.toStringz(eventType));
	}

	/**
	 * Adds the specified function to the list of functions to be called
	 * when a key event occurs.  The @data element will be passed to the
	 * #AtkKeySnoopFunc (@listener) as the @func_data param, on notification.
	 *
	 * Params:
	 *     listener = the listener to notify
	 *     data = a #gpointer that points to a block of data that should be sent to the registered listeners,
	 *         along with the event notification, when it occurs.
	 *
	 * Returns: added event listener id, or 0 on failure.
	 */
	public static uint addKeyEventListener(AtkKeySnoopFunc listener, void* data)
	{
		return atk_add_key_event_listener(listener, data);
	}

	/**
	 * Specifies the function to be called for focus tracker initialization.
	 * This function should be called by an implementation of the
	 * ATK interface if any specific work needs to be done to enable
	 * focus tracking.
	 *
	 * Deprecated: Focus tracking has been dropped as a feature
	 * to be implemented by ATK itself.
	 *
	 * Params:
	 *     init = Function to be called for focus tracker initialization
	 */
	public static void focusTrackerInit(AtkEventListenerInit init)
	{
		atk_focus_tracker_init(init);
	}

	/**
	 * Cause the focus tracker functions which have been specified to be
	 * executed for the object.
	 *
	 * Deprecated: Focus tracking has been dropped as a feature
	 * to be implemented by ATK itself. As #AtkObject::focus-event was
	 * deprecated in favor of a #AtkObject::state-change signal, in order
	 * to notify a focus change on your implementation, you can use
	 * atk_object_notify_state_change() instead.
	 *
	 * Params:
	 *     object = an #AtkObject
	 */
	public static void focusTrackerNotify(ObjectAtk object)
	{
		atk_focus_tracker_notify((object is null) ? null : object.getObjectAtkStruct());
	}

	/**
	 * Gets the currently focused object.
	 *
	 * Returns: the currently focused object for the current
	 *     application
	 *
	 * Since: 1.6
	 */
	public static ObjectAtk getFocusObject()
	{
		auto __p = atk_get_focus_object();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p);
	}

	/**
	 * Gets the root accessible container for the current application.
	 *
	 * Returns: the root accessible container for the current
	 *     application
	 */
	public static ObjectAtk getRoot()
	{
		auto __p = atk_get_root();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p);
	}

	/**
	 * Gets name string for the GUI toolkit implementing ATK for this application.
	 *
	 * Returns: name string for the GUI toolkit implementing ATK for this application
	 */
	public static string getToolkitName()
	{
		return Str.toString(atk_get_toolkit_name());
	}

	/**
	 * Removes the specified focus tracker from the list of functions
	 * to be called when any object receives focus.
	 *
	 * Deprecated: Focus tracking has been dropped as a feature
	 * to be implemented by ATK itself. If you need focus tracking on your
	 * implementation, subscribe to the #AtkObject::state-change "focused"
	 * signal.
	 *
	 * Params:
	 *     trackerId = the id of the focus tracker to remove
	 */
	public static void removeFocusTracker(uint trackerId)
	{
		atk_remove_focus_tracker(trackerId);
	}

	/**
	 * @listener_id is the value returned by #atk_add_global_event_listener
	 * when you registered that event listener.
	 *
	 * Toolkit implementor note: ATK provides a default implementation for
	 * this virtual method. ATK implementors are discouraged from
	 * reimplementing this method.
	 *
	 * Toolkit implementor note: this method is not intended to be used by
	 * ATK implementors but by ATK consumers.
	 *
	 * Removes the specified event listener
	 *
	 * Params:
	 *     listenerId = the id of the event listener to remove
	 */
	public static void removeGlobalEventListener(uint listenerId)
	{
		atk_remove_global_event_listener(listenerId);
	}

	/**
	 * @listener_id is the value returned by #atk_add_key_event_listener
	 * when you registered that event listener.
	 *
	 * Removes the specified event listener.
	 *
	 * Params:
	 *     listenerId = the id of the event listener to remove
	 */
	public static void removeKeyEventListener(uint listenerId)
	{
		atk_remove_key_event_listener(listenerId);
	}
}
