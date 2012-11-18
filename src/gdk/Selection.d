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
 * inFile  = gdk3-Selections.html
 * outPack = gdk
 * outFile = Selection
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Selection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_selection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Display
 * 	- gdk.Window
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Selection;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Display;
private import gdk.Window;




/**
 * Description
 * The X selection mechanism provides a way to transfer arbitrary chunks of
 * data between programs. A selection is a essentially
 * a named clipboard, identified by a string interned as a GdkAtom. By
 * claiming ownership of a selection, an application indicates that it will
 * be responsible for supplying its contents. The most common selections are
 * PRIMARY and CLIPBOARD.
 * The contents of a selection can be represented in a number of formats,
 * called targets. Each target is identified by an atom.
 * A list of all possible targets supported by the selection owner can be
 * retrieved by requesting the special target TARGETS. When
 * a selection is retrieved, the data is accompanied by a type (an atom), and
 * a format (an integer, representing the number of bits per item).
 * See Properties and Atoms
 * for more information.
 * The functions in this section only contain the lowlevel parts of the
 * selection protocol. A considerably more complicated implementation is needed
 * on top of this. GTK+ contains such an implementation in the functions in
 * gtkselection.h and programmers should use those functions
 * instead of the ones presented here. If you plan to implement selection
 * handling directly on top of the functions here, you should refer to the
 * X Inter-client Communication Conventions Manual (ICCCM).
 */
public class Selection
{
	
	/**
	 */
	
	/**
	 * Sets the owner of the given selection.
	 * Params:
	 * owner = a GdkWindow or NULL to indicate that the
	 * the owner for the given should be unset.
	 * selection = an atom identifying a selection.
	 * time = timestamp to use when setting the selection.
	 * If this is older than the timestamp given last
	 * time the owner was set for the given selection, the
	 * request will be ignored.
	 * sendEvent = if TRUE, and the new owner is different
	 * from the current owner, the current owner
	 * will be sent a SelectionClear event.
	 * Returns: TRUE if the selection owner was successfully changed to owner, otherwise FALSE.
	 */
	public static int ownerSet(Window owner, GdkAtom selection, uint time, int sendEvent)
	{
		// gboolean gdk_selection_owner_set (GdkWindow *owner,  GdkAtom selection,  guint32 time_,  gboolean send_event);
		return gdk_selection_owner_set((owner is null) ? null : owner.getWindowStruct(), selection, time, sendEvent);
	}
	
	/**
	 * Sets the GdkWindow owner as the current owner of the selection selection.
	 * Since 2.2
	 * Params:
	 * display = the GdkDisplay
	 * owner = a GdkWindow or NULL to indicate that the owner for
	 * the given should be unset
	 * selection = an atom identifying a selection
	 * time = timestamp to use when setting the selection
	 * If this is older than the timestamp given last time the owner was
	 * set for the given selection, the request will be ignored
	 * sendEvent = if TRUE, and the new owner is different from the current
	 * owner, the current owner will be sent a SelectionClear event
	 * Returns: TRUE if the selection owner was successfully changed to owner, otherwise FALSE.
	 */
	public static int ownerSetForDisplay(Display display, Window owner, GdkAtom selection, uint time, int sendEvent)
	{
		// gboolean gdk_selection_owner_set_for_display (GdkDisplay *display,  GdkWindow *owner,  GdkAtom selection,  guint32 time_,  gboolean send_event);
		return gdk_selection_owner_set_for_display((display is null) ? null : display.getDisplayStruct(), (owner is null) ? null : owner.getWindowStruct(), selection, time, sendEvent);
	}
	
	/**
	 * Determines the owner of the given selection.
	 * Params:
	 * selection = an atom indentifying a selection.
	 * Returns: if there is a selection owner for this window, and it is a window known to the current process, the GdkWindow that owns the selection, otherwise NULL. Note that the return value may be owned by a different process if a foreign window was previously created for that window, but a new foreign window will never be created by this call. [transfer none]
	 */
	public static Window ownerGet(GdkAtom selection)
	{
		// GdkWindow * gdk_selection_owner_get (GdkAtom selection);
		auto p = gdk_selection_owner_get(selection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Determine the owner of the given selection.
	 * Note that the return value may be owned by a different
	 * process if a foreign window was previously created for that
	 * window, but a new foreign window will never be created by this call.
	 * Since 2.2
	 * Params:
	 * display = a GdkDisplay
	 * selection = an atom indentifying a selection
	 * Returns: if there is a selection owner for this window, and it is a window known to the current process, the GdkWindow that owns the selection, otherwise NULL. [transfer none]
	 */
	public static Window ownerGetForDisplay(Display display, GdkAtom selection)
	{
		// GdkWindow * gdk_selection_owner_get_for_display (GdkDisplay *display,  GdkAtom selection);
		auto p = gdk_selection_owner_get_for_display((display is null) ? null : display.getDisplayStruct(), selection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Retrieves the contents of a selection in a given
	 * form.
	 * Params:
	 * requestor = a GdkWindow.
	 * selection = an atom identifying the selection to get the
	 * contents of.
	 * target = the form in which to retrieve the selection.
	 * time = the timestamp to use when retrieving the
	 * selection. The selection owner may refuse the
	 * request if it did not own the selection at
	 * the time indicated by the timestamp.
	 */
	public static void convert(Window requestor, GdkAtom selection, GdkAtom target, uint time)
	{
		// void gdk_selection_convert (GdkWindow *requestor,  GdkAtom selection,  GdkAtom target,  guint32 time_);
		gdk_selection_convert((requestor is null) ? null : requestor.getWindowStruct(), selection, target, time);
	}
	
	/**
	 * Retrieves selection data that was stored by the selection
	 * data in response to a call to gdk_selection_convert(). This function
	 * will not be used by applications, who should use the GtkClipboard
	 * API instead.
	 * Params:
	 * requestor = the window on which the data is stored
	 * data = location to store a pointer to the retrieved data.
	 * If the retrieval failed, NULL we be stored here, otherwise, it
	 * will be non-NULL and the returned data should be freed with g_free()
	 * when you are finished using it. The length of the
	 * allocated memory is one more than the length
	 * of the returned data, and the final byte will always
	 * be zero, to ensure nul-termination of strings
	 * propType = location to store the type of the property
	 * propFormat = location to store the format of the property
	 * Returns: the length of the retrieved data.
	 */
	public static int propertyGet(Window requestor, out char* data, out GdkAtom propType, out int propFormat)
	{
		// gint gdk_selection_property_get (GdkWindow *requestor,  guchar **data,  GdkAtom *prop_type,  gint *prop_format);
		return gdk_selection_property_get((requestor is null) ? null : requestor.getWindowStruct(), &data, &propType, &propFormat);
	}
	
	/**
	 * Sends a response to SelectionRequest event.
	 * Params:
	 * requestor = window to which to deliver response.
	 * selection = selection that was requested.
	 * target = target that was selected.
	 * property = property in which the selection owner stored the
	 * data, or GDK_NONE to indicate that the request
	 * was rejected.
	 * time = timestamp.
	 */
	public static void sendNotify(Window requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time)
	{
		// void gdk_selection_send_notify (GdkWindow *requestor,  GdkAtom selection,  GdkAtom target,  GdkAtom property,  guint32 time_);
		gdk_selection_send_notify((requestor is null) ? null : requestor.getWindowStruct(), selection, target, property, time);
	}
	
	/**
	 * Send a response to SelectionRequest event.
	 * Since 2.2
	 * Params:
	 * display = the GdkDisplay where requestor is realized
	 * requestor = window to which to deliver response
	 * selection = selection that was requested
	 * target = target that was selected
	 * property = property in which the selection owner stored the data,
	 * or GDK_NONE to indicate that the request was rejected
	 * time = timestamp
	 */
	public static void sendNotifyForDisplay(Display display, Window requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time)
	{
		// void gdk_selection_send_notify_for_display  (GdkDisplay *display,  GdkWindow *requestor,  GdkAtom selection,  GdkAtom target,  GdkAtom property,  guint32 time_);
		gdk_selection_send_notify_for_display((display is null) ? null : display.getDisplayStruct(), (requestor is null) ? null : requestor.getWindowStruct(), selection, target, property, time);
	}
}
