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
 * inFile  = gdk3-Drag-and-Drop.html
 * outPack = gdk
 * outFile = DragContext
 * strct   = GdkDragContext
 * realStrct=
 * ctorStrct=
 * clss    = DragContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_drag_context_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gdk.Device
 * 	- gdk.Screen
 * 	- gdk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkDevice* -> Device
 * 	- GdkDragContext* -> DragContext
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.DragContext;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import gdk.Device;
private import gdk.Screen;
private import gdk.Window;



private import gobject.ObjectG;

/**
 * Description
 * These functions provide a low level interface for drag and drop.
 * The X backend of GDK supports both the Xdnd and Motif drag and drop
 * protocols transparently, the Win32 backend supports the WM_DROPFILES
 * protocol.
 * GTK+ provides a higher level abstraction based on top of these functions,
 * and so they are not normally needed in GTK+ applications.
 * See the Drag and Drop section of
 * the GTK+ documentation for more information.
 */
public class DragContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDragContext* gdkDragContext;
	
	
	public GdkDragContext* getDragContextStruct()
	{
		return gdkDragContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDragContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDragContext* gdkDragContext)
	{
		super(cast(GObject*)gdkDragContext);
		this.gdkDragContext = gdkDragContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkDragContext = cast(GdkDragContext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns the selection atom for the current source window.
	 * Returns: the selection atom, or GDK_NONE. [transfer none]
	 */
	public GdkAtom dragGetSelection()
	{
		// GdkAtom gdk_drag_get_selection (GdkDragContext *context);
		return gdk_drag_get_selection(gdkDragContext);
	}
	
	/**
	 * Aborts a drag without dropping.
	 * This function is called by the drag source.
	 * Params:
	 * time = the timestamp for this operation
	 */
	public void dragAbort(uint time)
	{
		// void gdk_drag_abort (GdkDragContext *context,  guint32 time_);
		gdk_drag_abort(gdkDragContext, time);
	}
	
	/**
	 * Accepts or rejects a drop.
	 * This function is called by the drag destination in response
	 * to a drop initiated by the drag source.
	 * Params:
	 * accepted = TRUE if the drop is accepted
	 * time = the timestamp for this operation
	 */
	public void dropReply(int accepted, uint time)
	{
		// void gdk_drop_reply (GdkDragContext *context,  gboolean accepted,  guint32 time_);
		gdk_drop_reply(gdkDragContext, accepted, time);
	}
	
	/**
	 * Drops on the current destination.
	 * This function is called by the drag source.
	 * Params:
	 * time = the timestamp for this operation
	 */
	public void dragDrop(uint time)
	{
		// void gdk_drag_drop (GdkDragContext *context,  guint32 time_);
		gdk_drag_drop(gdkDragContext, time);
	}
	
	/**
	 * Finds the destination window and DND protocol to use at the
	 * given pointer position.
	 * This function is called by the drag source to obtain the
	 * dest_window and protocol parameters for gdk_drag_motion().
	 * Since 2.2
	 * Params:
	 * dragWindow = a window which may be at the pointer position, but
	 * should be ignored, since it is put up by the drag source as an icon
	 * screen = the screen where the destination window is sought
	 * xRoot = the x position of the pointer in root coordinates
	 * yRoot = the y position of the pointer in root coordinates
	 * destWindow = location to store the destination window in. [out]
	 * protocol = location to store the DND protocol in. [out]
	 */
	public void dragFindWindowForScreen(Window dragWindow, Screen screen, int xRoot, int yRoot, out Window destWindow, out GdkDragProtocol protocol)
	{
		// void gdk_drag_find_window_for_screen (GdkDragContext *context,  GdkWindow *drag_window,  GdkScreen *screen,  gint x_root,  gint y_root,  GdkWindow **dest_window,  GdkDragProtocol *protocol);
		GdkWindow* outdestWindow = null;
		
		gdk_drag_find_window_for_screen(gdkDragContext, (dragWindow is null) ? null : dragWindow.getWindowStruct(), (screen is null) ? null : screen.getScreenStruct(), xRoot, yRoot, &outdestWindow, &protocol);
		
		destWindow = ObjectG.getDObject!(Window)(outdestWindow);
	}
	
	/**
	 * Starts a drag and creates a new drag context for it.
	 * This function assumes that the drag is controlled by the
	 * client pointer device, use gdk_drag_begin_for_device() to
	 * begin a drag with a different device.
	 * This function is called by the drag source.
	 * Params:
	 * window = the source window for this drag.
	 * targets = the offered targets,
	 * as list of GdkAtoms. [transfer none][element-type GdkAtom]
	 * Returns: a newly created GdkDragContext. [transfer full]
	 */
	public static DragContext dragBegin(Window window, ListG targets)
	{
		// GdkDragContext * gdk_drag_begin (GdkWindow *window,  GList *targets);
		auto p = gdk_drag_begin((window is null) ? null : window.getWindowStruct(), (targets is null) ? null : targets.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p);
	}
	
	/**
	 * Starts a drag and creates a new drag context for it.
	 * This function is called by the drag source.
	 * Params:
	 * window = the source window for this drag
	 * device = the device that controls this drag
	 * targets = the offered targets,
	 * as list of GdkAtoms. [transfer none][element-type GdkAtom]
	 * Returns: a newly created GdkDragContext. [transfer full]
	 */
	public static DragContext dragBeginForDevice(Window window, Device device, ListG targets)
	{
		// GdkDragContext * gdk_drag_begin_for_device (GdkWindow *window,  GdkDevice *device,  GList *targets);
		auto p = gdk_drag_begin_for_device((window is null) ? null : window.getWindowStruct(), (device is null) ? null : device.getDeviceStruct(), (targets is null) ? null : targets.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p);
	}
	
	/**
	 * Updates the drag context when the pointer moves or the
	 * set of actions changes.
	 * This function is called by the drag source.
	 * Params:
	 * destWindow = the new destination window, obtained by
	 * gdk_drag_find_window()
	 * protocol = the DND protocol in use, obtained by gdk_drag_find_window()
	 * xRoot = the x position of the pointer in root coordinates
	 * yRoot = the y position of the pointer in root coordinates
	 * suggestedAction = the suggested action
	 * possibleActions = the possible actions
	 * time = the timestamp for this operation
	 */
	public int dragMotion(Window destWindow, GdkDragProtocol protocol, int xRoot, int yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, uint time)
	{
		// gboolean gdk_drag_motion (GdkDragContext *context,  GdkWindow *dest_window,  GdkDragProtocol protocol,  gint x_root,  gint y_root,  GdkDragAction suggested_action,  GdkDragAction possible_actions,  guint32 time_);
		return gdk_drag_motion(gdkDragContext, (destWindow is null) ? null : destWindow.getWindowStruct(), protocol, xRoot, yRoot, suggestedAction, possibleActions, time);
	}
	
	/**
	 * Ends the drag operation after a drop.
	 * This function is called by the drag destination.
	 * Params:
	 * success = TRUE if the data was successfully received
	 * time = the timestamp for this operation
	 */
	public void dropFinish(int success, uint time)
	{
		// void gdk_drop_finish (GdkDragContext *context,  gboolean success,  guint32 time_);
		gdk_drop_finish(gdkDragContext, success, time);
	}
	
	/**
	 * Selects one of the actions offered by the drag source.
	 * This function is called by the drag destination in response to
	 * gdk_drag_motion() called by the drag source.
	 * Params:
	 * action = the selected action which will be taken when a drop happens,
	 * or 0 to indicate that a drop will not be accepted
	 * time = the timestamp for this operation
	 */
	public void dragStatus(GdkDragAction action, uint time)
	{
		// void gdk_drag_status (GdkDragContext *context,  GdkDragAction action,  guint32 time_);
		gdk_drag_status(gdkDragContext, action, time);
	}
	
	/**
	 * Returns whether the dropped data has been successfully
	 * transferred. This function is intended to be used while
	 * handling a GDK_DROP_FINISHED event, its return value is
	 * meaningless at other times.
	 * Since 2.6
	 * Returns: TRUE if the drop was successful.
	 */
	public int dragDropSucceeded()
	{
		// gboolean gdk_drag_drop_succeeded (GdkDragContext *context);
		return gdk_drag_drop_succeeded(gdkDragContext);
	}
	
	/**
	 * Finds out the DND protocol supported by a window.
	 * Params:
	 * window = the destination window
	 * target = location of the window
	 * where the drop should happen. This may be window or a proxy window,
	 * or NULL if window does not support Drag and Drop. [out][allow-none][transfer full]
	 * Returns: the supported DND protocol. Since 3.0
	 */
	public static GdkDragProtocol windowGetDragProtocol(Window window, out Window target)
	{
		// GdkDragProtocol gdk_window_get_drag_protocol (GdkWindow *window,  GdkWindow **target);
		GdkWindow* outtarget = null;
		
		auto p = gdk_window_get_drag_protocol((window is null) ? null : window.getWindowStruct(), &outtarget);
		
		target = ObjectG.getDObject!(Window)(outtarget);
		return p;
	}
	
	/**
	 * Determines the bitmask of actions proposed by the source if
	 * gdk_drag_context_get_suggested_action() returns GDK_ACTION_ASK.
	 * Since 2.22
	 * Returns: the GdkDragAction flags
	 */
	public GdkDragAction getActions()
	{
		// GdkDragAction gdk_drag_context_get_actions (GdkDragContext *context);
		return gdk_drag_context_get_actions(gdkDragContext);
	}
	
	/**
	 * Determines the suggested drag action of the context.
	 * Since 2.22
	 * Returns: a GdkDragAction value
	 */
	public GdkDragAction getSuggestedAction()
	{
		// GdkDragAction gdk_drag_context_get_suggested_action  (GdkDragContext *context);
		return gdk_drag_context_get_suggested_action(gdkDragContext);
	}
	
	/**
	 * Determines the action chosen by the drag destination.
	 * Since 2.22
	 * Returns: a GdkDragAction value
	 */
	public GdkDragAction getSelectedAction()
	{
		// GdkDragAction gdk_drag_context_get_selected_action  (GdkDragContext *context);
		return gdk_drag_context_get_selected_action(gdkDragContext);
	}
	
	/**
	 * Retrieves the list of targets of the context.
	 * Since 2.22
	 * Returns: a GList of targets. [transfer none][element-type GdkAtom]
	 */
	public ListG listTargets()
	{
		// GList * gdk_drag_context_list_targets (GdkDragContext *context);
		auto p = gdk_drag_context_list_targets(gdkDragContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Returns the GdkDevice associated to the drag context.
	 * Returns: The GdkDevice associated to context. [transfer none]
	 */
	public Device getDevice()
	{
		// GdkDevice * gdk_drag_context_get_device (GdkDragContext *context);
		auto p = gdk_drag_context_get_device(gdkDragContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * Associates a GdkDevice to context, so all Drag and Drop events
	 * for context are emitted as if they came from this device.
	 * Params:
	 * device = a GdkDevice
	 */
	public void setDevice(Device device)
	{
		// void gdk_drag_context_set_device (GdkDragContext *context,  GdkDevice *device);
		gdk_drag_context_set_device(gdkDragContext, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Returns the GdkWindow where the DND operation started.
	 * Since 2.22
	 * Returns: a GdkWindow. [transfer none]
	 */
	public Window getSourceWindow()
	{
		// GdkWindow * gdk_drag_context_get_source_window (GdkDragContext *context);
		auto p = gdk_drag_context_get_source_window(gdkDragContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Returns the destination windw for the DND operation.
	 * Returns: a GdkWindow. [transfer none] Since 3.0
	 */
	public Window getDestWindow()
	{
		// GdkWindow * gdk_drag_context_get_dest_window (GdkDragContext *context);
		auto p = gdk_drag_context_get_dest_window(gdkDragContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Returns the drag protocol thats used by this context.
	 * Returns: the drag protocol Since 3.0
	 */
	public GdkDragProtocol getProtocol()
	{
		// GdkDragProtocol gdk_drag_context_get_protocol (GdkDragContext *context);
		return gdk_drag_context_get_protocol(gdkDragContext);
	}
}
