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
 * outPack = gdk
 * outFile = DragContext
 * strct   = GdkDragContext
 * realStrct=
 * clss    = DragContext
 * extend  = 
 * prefixes:
 * 	- gdk-drag_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gdk.DragContext
 * 	- gdk.Window
 * 	- gdk.Screen
 * 	- glib.ListG
 * 	- gdk.Display
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkDisplay* -> Display
 * 	- GdkDragContext* -> DragContext
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * local aliases:
 */

module gdk.DragContext;

private import gdk.typedefs;

private import lib.gdk;

private import gdk.DragContext;private import gdk.Window;private import gdk.Screen;private import glib.ListG;private import gdk.Display;
/**
 * Description
 * These functions provide a low level interface for drag and drop.
 * The X backend of GDK supports both the Xdnd and Motif drag and drop protocols
 * transparently, the Win32 backend supports the WM_DROPFILES protocol.
 * GTK+ provides a higher level abstraction based on top of these functions,
 * and so they are not normally needed in GTK+ applications.
 * See the Drag and Drop section of
 * the GTK+ documentation for more information.
 */
public class DragContext
{
	
	/** the main Gtk struct */
	protected GdkDragContext* gdkDragContext;
	
	
	public GdkDragContext* getDragContextStruct()
	{
		return gdkDragContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkDragContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDragContext* gdkDragContext)
	{
		this.gdkDragContext = gdkDragContext;
	}
	
	/**
	 */
	
	/**
	 * Returns the selection atom for the current source window.
	 * context:
	 *  a GdkDragContext.
	 * Returns:
	 *  the selection atom.
	 */
	public GdkAtom gdkDragGetSelection()
	{
		// GdkAtom gdk_drag_get_selection (GdkDragContext *context);
		return gdk_drag_get_selection(gdkDragContext);
	}
	
	/**
	 * Aborts a drag without dropping.
	 * This function is called by the drag source.
	 * context:
	 *  a GdkDragContext.
	 * time_:
	 *  the timestamp for this operation.
	 */
	public void gdkDragAbort(uint time)
	{
		// void gdk_drag_abort (GdkDragContext *context,  guint32 time_);
		gdk_drag_abort(gdkDragContext, time);
	}
	
	/**
	 * Accepts or rejects a drop.
	 * This function is called by the drag destination in response
	 * to a drop initiated by the drag source.
	 * context:
	 *  a GdkDragContext.
	 * ok:
	 *  TRUE if the drop is accepted.
	 * time_:
	 *  the timestamp for this operation.
	 */
	public void gdkDropReply(int ok, uint time)
	{
		// void gdk_drop_reply (GdkDragContext *context,  gboolean ok,  guint32 time_);
		gdk_drop_reply(gdkDragContext, ok, time);
	}
	
	/**
	 * Creates a new GdkDragContext.
	 * Returns:
	 *  the newly created GdkDragContext.
	 */
	public static DragContext gdkDragContextNew()
	{
		// GdkDragContext* gdk_drag_context_new (void);
		return new DragContext( gdk_drag_context_new() );
	}
	
	/**
	 * Drops on the current destination.
	 * This function is called by the drag source.
	 * context:
	 *  a GdkDragContext.
	 * time_:
	 *  the timestamp for this operation.
	 */
	public void gdkDragDrop(uint time)
	{
		// void gdk_drag_drop (GdkDragContext *context,  guint32 time_);
		gdk_drag_drop(gdkDragContext, time);
	}
	
	/**
	 * Finds the destination window and DND protocol to use at the
	 * given pointer position.
	 * This function is called by the drag source to obtain the
	 * dest_window and protocol parameters for gdk_drag_motion().
	 * context:
	 *  a GdkDragContext.
	 * drag_window:
	 *  a window which may be at the pointer position, but
	 *  should be ignored, since it is put up by the drag source as an icon.
	 * x_root:
	 *  the x position of the pointer in root coordinates.
	 * y_root:
	 *  the y position of the pointer in root coordinates.
	 * dest_window:
	 *  location to store the destination window in.
	 * protocol:
	 *  location to store the DND protocol in.
	 */
	public void gdkDragFindWindow(Window dragWindow, int xRoot, int yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol)
	{
		// void gdk_drag_find_window (GdkDragContext *context,  GdkWindow *drag_window,  gint x_root,  gint y_root,  GdkWindow **dest_window,  GdkDragProtocol *protocol);
		gdk_drag_find_window(gdkDragContext, dragWindow.getWindowStruct(), xRoot, yRoot, destWindow, protocol);
	}
	
	/**
	 * Finds the destination window and DND protocol to use at the
	 * given pointer position.
	 * This function is called by the drag source to obtain the
	 * dest_window and protocol parameters for gdk_drag_motion().
	 * context:
	 *  a GdkDragContext
	 * drag_window:
	 *  a window which may be at the pointer position, but
	 * should be ignored, since it is put up by the drag source as an icon.
	 * screen:
	 *  the screen where the destination window is sought.
	 * x_root:
	 *  the x position of the pointer in root coordinates.
	 * y_root:
	 *  the y position of the pointer in root coordinates.
	 * dest_window:
	 *  location to store the destination window in.
	 * protocol:
	 *  location to store the DND protocol in.
	 * Since 2.2
	 */
	public void gdkDragFindWindowForScreen(Window dragWindow, Screen screen, int xRoot, int yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol)
	{
		// void gdk_drag_find_window_for_screen (GdkDragContext *context,  GdkWindow *drag_window,  GdkScreen *screen,  gint x_root,  gint y_root,  GdkWindow **dest_window,  GdkDragProtocol *protocol);
		gdk_drag_find_window_for_screen(gdkDragContext, dragWindow.getWindowStruct(), screen.getScreenStruct(), xRoot, yRoot, destWindow, protocol);
	}
	
	/**
	 * Warning
	 * gdk_drag_context_ref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_ref() instead.
	 * context:
	 *  a GdkDragContext.
	 */
	public void gdkDragContextRef()
	{
		// void gdk_drag_context_ref (GdkDragContext *context);
		gdk_drag_context_ref(gdkDragContext);
	}
	
	/**
	 * Starts a drag and creates a new drag context for it.
	 * This function is called by the drag source.
	 * window:
	 *  the source window for this drag.
	 * targets:
	 *  the list of offered targets.
	 * Returns:
	 *  a newly created GdkDragContext.
	 */
	public static DragContext gdkDragBegin(Window window, ListG targets)
	{
		// GdkDragContext* gdk_drag_begin (GdkWindow *window,  GList *targets);
		return new DragContext( gdk_drag_begin(window.getWindowStruct(), targets.getListGStruct()) );
	}
	
	/**
	 * Updates the drag context when the pointer moves or the
	 * set of actions changes.
	 * This function is called by the drag source.
	 * context:
	 *  a GdkDragContext.
	 * dest_window:
	 *  the new destination window, obtained by
	 *  gdk_drag_find_window().
	 * protocol:
	 *  the DND protocol in use, obtained by gdk_drag_find_window().
	 * x_root:
	 *  the x position of the pointer in root coordinates.
	 * y_root:
	 *  the y position of the pointer in root coordinates.
	 * suggested_action:
	 *  the suggested action.
	 * possible_actions:
	 *  the possible actions.
	 * time_:
	 *  the timestamp for this operation.
	 * Returns:
	 *  FIXME
	 */
	public int gdkDragMotion(Window destWindow, GdkDragProtocol protocol, int xRoot, int yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, uint time)
	{
		// gboolean gdk_drag_motion (GdkDragContext *context,  GdkWindow *dest_window,  GdkDragProtocol protocol,  gint x_root,  gint y_root,  GdkDragAction suggested_action,  GdkDragAction possible_actions,  guint32 time_);
		return gdk_drag_motion(gdkDragContext, destWindow.getWindowStruct(), protocol, xRoot, yRoot, suggestedAction, possibleActions, time);
	}
	
	/**
	 * Ends the drag operation after a drop.
	 * This function is called by the drag destination.
	 * context:
	 *  a GtkDragContext.
	 * success:
	 *  TRUE if the data was successfully received.
	 * time_:
	 *  the timestamp for this operation.
	 */
	public void gdkDropFinish(int success, uint time)
	{
		// void gdk_drop_finish (GdkDragContext *context,  gboolean success,  guint32 time_);
		gdk_drop_finish(gdkDragContext, success, time);
	}
	
	/**
	 * Finds out the DND protocol supported by a window.
	 * xid:
	 *  the X id of the destination window.
	 * protocol:
	 *  location where the supported DND protocol is returned.
	 * Returns:
	 *  the X id of the window where the drop should happen. This
	 *  may be xid or the X id of a proxy window, or None if xid doesn't
	 *  support Drag and Drop.
	 */
	public static uint gdkDragGetProtocol(uint xid, GdkDragProtocol* protocol)
	{
		// guint32 gdk_drag_get_protocol (guint32 xid,  GdkDragProtocol *protocol);
		return gdk_drag_get_protocol(xid, protocol);
	}
	
	/**
	 * Finds out the DND protocol supported by a window.
	 * display:
	 *  the GdkDisplay where the destination window resides
	 * xid:
	 *  the X id of the destination window.
	 * protocol:
	 *  location where the supported DND protocol is returned.
	 * Returns:
	 *  the X id of the window where the drop should happen. This
	 *  may be xid or the X id of a proxy window, or None if xid doesn't
	 *  support Drag and Drop.
	 * Since 2.2
	 */
	public static uint gdkDragGetProtocolForDisplay(Display display, uint xid, GdkDragProtocol* protocol)
	{
		// guint32 gdk_drag_get_protocol_for_display  (GdkDisplay *display,  guint32 xid,  GdkDragProtocol *protocol);
		return gdk_drag_get_protocol_for_display(display.getDisplayStruct(), xid, protocol);
	}
	
	
	/**
	 * Warning
	 * gdk_drag_context_unref is deprecated and should not be used in newly-written code.
	 * Deprecated function; use g_object_unref() instead.
	 * context:
	 *  a GdkDragContext.
	 */
	public void gdkDragContextUnref()
	{
		// void gdk_drag_context_unref (GdkDragContext *context);
		gdk_drag_context_unref(gdkDragContext);
	}
	
	
	
	/**
	 * Selects one of the actions offered by the drag source.
	 * This function is called by the drag destination in response to
	 * gdk_drag_motion() called by the drag source.
	 * context:
	 *  a GdkDragContext.
	 * action:
	 *  the selected action which will be taken when a drop happens,
	 *  or 0 to indicate that a drop will not be accepted.
	 * time_:
	 *  the timestamp for this operation.
	 */
	public void gdkDragStatus(GdkDragAction action, uint time)
	{
		// void gdk_drag_status (GdkDragContext *context,  GdkDragAction action,  guint32 time_);
		gdk_drag_status(gdkDragContext, action, time);
	}
	
	/**
	 * Returns wether the dropped data has been successfully
	 * transferred. This function is intended to be used while
	 * handling a GDK_DROP_FINISHED event, its return value is
	 * meaningless at other times.
	 * context:
	 *  a GdkDragContext
	 * Returns:
	 *  TRUE if the drop was successful.
	 * Since 2.6
	 */
	public int gdkDragDropSucceeded()
	{
		// gboolean gdk_drag_drop_succeeded (GdkDragContext *context);
		return gdk_drag_drop_succeeded(gdkDragContext);
	}
}
