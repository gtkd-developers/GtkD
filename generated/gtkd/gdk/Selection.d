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


module gdk.Selection;

private import gdk.Display;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.gdktypes;


/** */
public struct Selection
{

	/**
	 * Retrieves the contents of a selection in a given
	 * form.
	 *
	 * Params:
	 *     requestor = a #GdkWindow.
	 *     selection = an atom identifying the selection to get the
	 *         contents of.
	 *     target = the form in which to retrieve the selection.
	 *     time = the timestamp to use when retrieving the
	 *         selection. The selection owner may refuse the
	 *         request if it did not own the selection at
	 *         the time indicated by the timestamp.
	 */
	public static void convert(Window requestor, GdkAtom selection, GdkAtom target, uint time)
	{
		gdk_selection_convert((requestor is null) ? null : requestor.getWindowStruct(), selection, target, time);
	}

	/**
	 * Determines the owner of the given selection.
	 *
	 * Params:
	 *     selection = an atom indentifying a selection.
	 *
	 * Returns: if there is a selection owner
	 *     for this window, and it is a window known to the current process,
	 *     the #GdkWindow that owns the selection, otherwise %NULL. Note
	 *     that the return value may be owned by a different process if a
	 *     foreign window was previously created for that window, but a new
	 *     foreign window will never be created by this call.
	 */
	public static Window ownerGet(GdkAtom selection)
	{
		auto p = gdk_selection_owner_get(selection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Determine the owner of the given selection.
	 *
	 * Note that the return value may be owned by a different
	 * process if a foreign window was previously created for that
	 * window, but a new foreign window will never be created by this call.
	 *
	 * Params:
	 *     display = a #GdkDisplay
	 *     selection = an atom indentifying a selection
	 *
	 * Returns: if there is a selection owner
	 *     for this window, and it is a window known to the current
	 *     process, the #GdkWindow that owns the selection, otherwise
	 *     %NULL.
	 *
	 * Since: 2.2
	 */
	public static Window ownerGetForDisplay(Display display, GdkAtom selection)
	{
		auto p = gdk_selection_owner_get_for_display((display is null) ? null : display.getDisplayStruct(), selection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Sets the owner of the given selection.
	 *
	 * Params:
	 *     owner = a #GdkWindow or %NULL to indicate that the
	 *         the owner for the given should be unset.
	 *     selection = an atom identifying a selection.
	 *     time = timestamp to use when setting the selection.
	 *         If this is older than the timestamp given last
	 *         time the owner was set for the given selection, the
	 *         request will be ignored.
	 *     sendEvent = if %TRUE, and the new owner is different
	 *         from the current owner, the current owner
	 *         will be sent a SelectionClear event.
	 *
	 * Returns: %TRUE if the selection owner was successfully
	 *     changed to @owner, otherwise %FALSE.
	 */
	public static bool ownerSet(Window owner, GdkAtom selection, uint time, bool sendEvent)
	{
		return gdk_selection_owner_set((owner is null) ? null : owner.getWindowStruct(), selection, time, sendEvent) != 0;
	}

	/**
	 * Sets the #GdkWindow @owner as the current owner of the selection @selection.
	 *
	 * Params:
	 *     display = the #GdkDisplay
	 *     owner = a #GdkWindow or %NULL to indicate that the owner for
	 *         the given should be unset
	 *     selection = an atom identifying a selection
	 *     time = timestamp to use when setting the selection
	 *         If this is older than the timestamp given last time the owner was
	 *         set for the given selection, the request will be ignored
	 *     sendEvent = if %TRUE, and the new owner is different from the current
	 *         owner, the current owner will be sent a SelectionClear event
	 *
	 * Returns: %TRUE if the selection owner was successfully changed to owner,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.2
	 */
	public static bool ownerSetForDisplay(Display display, Window owner, GdkAtom selection, uint time, bool sendEvent)
	{
		return gdk_selection_owner_set_for_display((display is null) ? null : display.getDisplayStruct(), (owner is null) ? null : owner.getWindowStruct(), selection, time, sendEvent) != 0;
	}

	/**
	 * Retrieves selection data that was stored by the selection
	 * data in response to a call to gdk_selection_convert(). This function
	 * will not be used by applications, who should use the #GtkClipboard
	 * API instead.
	 *
	 * Params:
	 *     requestor = the window on which the data is stored
	 *     data = location to store a pointer to the retrieved data.
	 *         If the retrieval failed, %NULL we be stored here, otherwise, it
	 *         will be non-%NULL and the returned data should be freed with g_free()
	 *         when you are finished using it. The length of the
	 *         allocated memory is one more than the length
	 *         of the returned data, and the final byte will always
	 *         be zero, to ensure nul-termination of strings
	 *     propType = location to store the type of the property
	 *     propFormat = location to store the format of the property
	 *
	 * Returns: the length of the retrieved data.
	 */
	public static int propertyGet(Window requestor, out char* data, GdkAtom* propType, int* propFormat)
	{
		return gdk_selection_property_get((requestor is null) ? null : requestor.getWindowStruct(), &data, propType, propFormat);
	}

	/**
	 * Sends a response to SelectionRequest event.
	 *
	 * Params:
	 *     requestor = window to which to deliver response.
	 *     selection = selection that was requested.
	 *     target = target that was selected.
	 *     property = property in which the selection owner stored the
	 *         data, or %GDK_NONE to indicate that the request
	 *         was rejected.
	 *     time = timestamp.
	 */
	public static void sendNotify(Window requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time)
	{
		gdk_selection_send_notify((requestor is null) ? null : requestor.getWindowStruct(), selection, target, property, time);
	}

	/**
	 * Send a response to SelectionRequest event.
	 *
	 * Params:
	 *     display = the #GdkDisplay where @requestor is realized
	 *     requestor = window to which to deliver response
	 *     selection = selection that was requested
	 *     target = target that was selected
	 *     property = property in which the selection owner stored the data,
	 *         or %GDK_NONE to indicate that the request was rejected
	 *     time = timestamp
	 *
	 * Since: 2.2
	 */
	public static void sendNotifyForDisplay(Display display, Window requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time)
	{
		gdk_selection_send_notify_for_display((display is null) ? null : display.getDisplayStruct(), (requestor is null) ? null : requestor.getWindowStruct(), selection, target, property, time);
	}
}
