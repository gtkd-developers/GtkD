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


module gdk.DragContext;

private import gdk.Device;
private import gdk.Screen;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import std.algorithm;


/** */
public class DragContext : ObjectG
{
	/** the main Gtk struct */
	protected GdkDragContext* gdkDragContext;

	/** Get the main Gtk struct */
	public GdkDragContext* getDragContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDragContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDragContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDragContext* gdkDragContext, bool ownedRef = false)
	{
		this.gdkDragContext = gdkDragContext;
		super(cast(GObject*)gdkDragContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_drag_context_get_type();
	}

	/**
	 * Determines the bitmask of actions proposed by the source if
	 * gdk_drag_context_get_suggested_action() returns %GDK_ACTION_ASK.
	 *
	 * Returns: the #GdkDragAction flags
	 *
	 * Since: 2.22
	 */
	public GdkDragAction getActions()
	{
		return gdk_drag_context_get_actions(gdkDragContext);
	}

	/**
	 * Returns the destination windw for the DND operation.
	 *
	 * Returns: a #GdkWindow
	 *
	 * Since: 3.0
	 */
	public Window getDestWindow()
	{
		auto p = gdk_drag_context_get_dest_window(gdkDragContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Returns the #GdkDevice associated to the drag context.
	 *
	 * Returns: The #GdkDevice associated to @context.
	 */
	public Device getDevice()
	{
		auto p = gdk_drag_context_get_device(gdkDragContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}

	/**
	 * Returns the window on which the drag icon should be rendered
	 * during the drag operation. Note that the window may not be
	 * available until the drag operation has begun. GDK will move
	 * the window in accordance with the ongoing drag operation.
	 * The window is owned by @context and will be destroyed when
	 * the drag operation is over.
	 *
	 * Returns: the drag window, or %NULL
	 *
	 * Since: 3.20
	 */
	public Window getDragWindow()
	{
		auto p = gdk_drag_context_get_drag_window(gdkDragContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Returns the drag protocol thats used by this context.
	 *
	 * Returns: the drag protocol
	 *
	 * Since: 3.0
	 */
	public GdkDragProtocol getProtocol()
	{
		return gdk_drag_context_get_protocol(gdkDragContext);
	}

	/**
	 * Determines the action chosen by the drag destination.
	 *
	 * Returns: a #GdkDragAction value
	 *
	 * Since: 2.22
	 */
	public GdkDragAction getSelectedAction()
	{
		return gdk_drag_context_get_selected_action(gdkDragContext);
	}

	/**
	 * Returns the #GdkWindow where the DND operation started.
	 *
	 * Returns: a #GdkWindow
	 *
	 * Since: 2.22
	 */
	public Window getSourceWindow()
	{
		auto p = gdk_drag_context_get_source_window(gdkDragContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Determines the suggested drag action of the context.
	 *
	 * Returns: a #GdkDragAction value
	 *
	 * Since: 2.22
	 */
	public GdkDragAction getSuggestedAction()
	{
		return gdk_drag_context_get_suggested_action(gdkDragContext);
	}

	/**
	 * Retrieves the list of targets of the context.
	 *
	 * Returns: a #GList of targets
	 *
	 * Since: 2.22
	 */
	public ListG listTargets()
	{
		auto p = gdk_drag_context_list_targets(gdkDragContext);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Requests the drag and drop operation to be managed by @context.
	 * When a drag and drop operation becomes managed, the #GdkDragContext
	 * will internally handle all input and source-side #GdkEventDND events
	 * as required by the windowing system.
	 *
	 * Once the drag and drop operation is managed, the drag context will
	 * emit the following signals:
	 * - The #GdkDragContext::action-changed signal whenever the final action
	 * to be performed by the drag and drop operation changes.
	 * - The #GdkDragContext::drop-performed signal after the user performs
	 * the drag and drop gesture (typically by releasing the mouse button).
	 * - The #GdkDragContext::dnd-finished signal after the drag and drop
	 * operation concludes (after all #GdkSelection transfers happen).
	 * - The #GdkDragContext::cancel signal if the drag and drop operation is
	 * finished but doesn't happen over an accepting destination, or is
	 * cancelled through other means.
	 *
	 * Params:
	 *     ipcWindow = Window to use for IPC messaging/events
	 *     actions = the actions supported by the drag source
	 *
	 * Returns: #TRUE if the drag and drop operation is managed.
	 *
	 * Since: 3.20
	 */
	public bool manageDnd(Window ipcWindow, GdkDragAction actions)
	{
		return gdk_drag_context_manage_dnd(gdkDragContext, (ipcWindow is null) ? null : ipcWindow.getWindowStruct(), actions) != 0;
	}

	/**
	 * Associates a #GdkDevice to @context, so all Drag and Drop events
	 * for @context are emitted as if they came from this device.
	 *
	 * Params:
	 *     device = a #GdkDevice
	 */
	public void setDevice(Device device)
	{
		gdk_drag_context_set_device(gdkDragContext, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Sets the position of the drag window that will be kept
	 * under the cursor hotspot. Initially, the hotspot is at the
	 * top left corner of the drag window.
	 *
	 * Params:
	 *     hotX = x coordinate of the drag window hotspot
	 *     hotY = y coordinate of the drag window hotspot
	 *
	 * Since: 3.20
	 */
	public void setHotspot(int hotX, int hotY)
	{
		gdk_drag_context_set_hotspot(gdkDragContext, hotX, hotY);
	}

	/**
	 * A new action is being chosen for the drag and drop operation.
	 *
	 * This signal will only be emitted if the #GdkDragContext manages
	 * the drag and drop operation. See gdk_drag_context_manage_dnd()
	 * for more information.
	 *
	 * Params:
	 *     action = The action currently chosen
	 *
	 * Since: 3.20
	 */
	gulong addOnActionChanged(void delegate(GdkDragAction, DragContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The drag and drop operation was cancelled.
	 *
	 * This signal will only be emitted if the #GdkDragContext manages
	 * the drag and drop operation. See gdk_drag_context_manage_dnd()
	 * for more information.
	 *
	 * Params:
	 *     reason = The reason the context was cancelled
	 *
	 * Since: 3.20
	 */
	gulong addOnCancel(void delegate(GdkDragCancelReason, DragContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The drag and drop operation was finished, the drag destination
	 * finished reading all data. The drag source can now free all
	 * miscellaneous data.
	 *
	 * This signal will only be emitted if the #GdkDragContext manages
	 * the drag and drop operation. See gdk_drag_context_manage_dnd()
	 * for more information.
	 *
	 * Since: 3.20
	 */
	gulong addOnDndFinished(void delegate(DragContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dnd-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The drag and drop operation was performed on an accepting client.
	 *
	 * This signal will only be emitted if the #GdkDragContext manages
	 * the drag and drop operation. See gdk_drag_context_manage_dnd()
	 * for more information.
	 *
	 * Params:
	 *     time = the time at which the drop happened.
	 *
	 * Since: 3.20
	 */
	gulong addOnDropPerformed(void delegate(int, DragContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drop-performed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Aborts a drag without dropping.
	 *
	 * This function is called by the drag source.
	 *
	 * This function does not need to be called in managed drag and drop
	 * operations. See gdk_drag_context_manage_dnd() for more information.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     time = the timestamp for this operation
	 */
	public static void dragAbort(DragContext context, uint time)
	{
		gdk_drag_abort((context is null) ? null : context.getDragContextStruct(), time);
	}

	/**
	 * Starts a drag and creates a new drag context for it.
	 * This function assumes that the drag is controlled by the
	 * client pointer device, use gdk_drag_begin_for_device() to
	 * begin a drag with a different device.
	 *
	 * This function is called by the drag source.
	 *
	 * Params:
	 *     window = the source window for this drag.
	 *     targets = the offered targets,
	 *         as list of #GdkAtoms
	 *
	 * Returns: a newly created #GdkDragContext
	 */
	public static DragContext dragBegin(Window window, ListG targets)
	{
		auto p = gdk_drag_begin((window is null) ? null : window.getWindowStruct(), (targets is null) ? null : targets.getListGStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p, true);
	}

	/**
	 * Starts a drag and creates a new drag context for it.
	 *
	 * This function is called by the drag source.
	 *
	 * Params:
	 *     window = the source window for this drag
	 *     device = the device that controls this drag
	 *     targets = the offered targets,
	 *         as list of #GdkAtoms
	 *
	 * Returns: a newly created #GdkDragContext
	 */
	public static DragContext dragBeginForDevice(Window window, Device device, ListG targets)
	{
		auto p = gdk_drag_begin_for_device((window is null) ? null : window.getWindowStruct(), (device is null) ? null : device.getDeviceStruct(), (targets is null) ? null : targets.getListGStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p, true);
	}

	/**
	 * Starts a drag and creates a new drag context for it.
	 *
	 * This function is called by the drag source.
	 *
	 * Params:
	 *     window = the source window for this drag
	 *     device = the device that controls this drag
	 *     targets = the offered targets,
	 *         as list of #GdkAtoms
	 *     xRoot = the x coordinate where the drag nominally started
	 *     yRoot = the y coordinate where the drag nominally started
	 *
	 * Returns: a newly created #GdkDragContext
	 *
	 * Since: 3.20
	 */
	public static DragContext dragBeginFromPoint(Window window, Device device, ListG targets, int xRoot, int yRoot)
	{
		auto p = gdk_drag_begin_from_point((window is null) ? null : window.getWindowStruct(), (device is null) ? null : device.getDeviceStruct(), (targets is null) ? null : targets.getListGStruct(), xRoot, yRoot);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DragContext)(cast(GdkDragContext*) p, true);
	}

	/**
	 * Drops on the current destination.
	 *
	 * This function is called by the drag source.
	 *
	 * This function does not need to be called in managed drag and drop
	 * operations. See gdk_drag_context_manage_dnd() for more information.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     time = the timestamp for this operation
	 */
	public static void dragDrop(DragContext context, uint time)
	{
		gdk_drag_drop((context is null) ? null : context.getDragContextStruct(), time);
	}

	/**
	 * Inform GDK if the drop ended successfully. Passing %FALSE
	 * for @success may trigger a drag cancellation animation.
	 *
	 * This function is called by the drag source, and should
	 * be the last call before dropping the reference to the
	 * @context.
	 *
	 * The #GdkDragContext will only take the first gdk_drag_drop_done()
	 * call as effective, if this function is called multiple times,
	 * all subsequent calls will be ignored.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     success = whether the drag was ultimatively successful
	 *
	 * Since: 3.20
	 */
	public static void dragDropDone(DragContext context, bool success)
	{
		gdk_drag_drop_done((context is null) ? null : context.getDragContextStruct(), success);
	}

	/**
	 * Returns whether the dropped data has been successfully
	 * transferred. This function is intended to be used while
	 * handling a %GDK_DROP_FINISHED event, its return value is
	 * meaningless at other times.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *
	 * Returns: %TRUE if the drop was successful.
	 *
	 * Since: 2.6
	 */
	public static bool dragDropSucceeded(DragContext context)
	{
		return gdk_drag_drop_succeeded((context is null) ? null : context.getDragContextStruct()) != 0;
	}

	/**
	 * Finds the destination window and DND protocol to use at the
	 * given pointer position.
	 *
	 * This function is called by the drag source to obtain the
	 * @dest_window and @protocol parameters for gdk_drag_motion().
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     dragWindow = a window which may be at the pointer position, but
	 *         should be ignored, since it is put up by the drag source as an icon
	 *     screen = the screen where the destination window is sought
	 *     xRoot = the x position of the pointer in root coordinates
	 *     yRoot = the y position of the pointer in root coordinates
	 *     destWindow = location to store the destination window in
	 *     protocol = location to store the DND protocol in
	 *
	 * Since: 2.2
	 */
	public static void dragFindWindowForScreen(DragContext context, Window dragWindow, Screen screen, int xRoot, int yRoot, out Window destWindow, out GdkDragProtocol protocol)
	{
		GdkWindow* outdestWindow = null;

		gdk_drag_find_window_for_screen((context is null) ? null : context.getDragContextStruct(), (dragWindow is null) ? null : dragWindow.getWindowStruct(), (screen is null) ? null : screen.getScreenStruct(), xRoot, yRoot, &outdestWindow, &protocol);

		destWindow = ObjectG.getDObject!(Window)(outdestWindow);
	}

	/**
	 * Returns the selection atom for the current source window.
	 *
	 * Params:
	 *     context = a #GdkDragContext.
	 *
	 * Returns: the selection atom, or %GDK_NONE
	 */
	public static GdkAtom dragGetSelection(DragContext context)
	{
		return gdk_drag_get_selection((context is null) ? null : context.getDragContextStruct());
	}

	/**
	 * Updates the drag context when the pointer moves or the
	 * set of actions changes.
	 *
	 * This function is called by the drag source.
	 *
	 * This function does not need to be called in managed drag and drop
	 * operations. See gdk_drag_context_manage_dnd() for more information.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     destWindow = the new destination window, obtained by
	 *         gdk_drag_find_window()
	 *     protocol = the DND protocol in use, obtained by gdk_drag_find_window()
	 *     xRoot = the x position of the pointer in root coordinates
	 *     yRoot = the y position of the pointer in root coordinates
	 *     suggestedAction = the suggested action
	 *     possibleActions = the possible actions
	 *     time = the timestamp for this operation
	 */
	public static bool dragMotion(DragContext context, Window destWindow, GdkDragProtocol protocol, int xRoot, int yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, uint time)
	{
		return gdk_drag_motion((context is null) ? null : context.getDragContextStruct(), (destWindow is null) ? null : destWindow.getWindowStruct(), protocol, xRoot, yRoot, suggestedAction, possibleActions, time) != 0;
	}

	/**
	 * Selects one of the actions offered by the drag source.
	 *
	 * This function is called by the drag destination in response to
	 * gdk_drag_motion() called by the drag source.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     action = the selected action which will be taken when a drop happens,
	 *         or 0 to indicate that a drop will not be accepted
	 *     time = the timestamp for this operation
	 */
	public static void dragStatus(DragContext context, GdkDragAction action, uint time)
	{
		gdk_drag_status((context is null) ? null : context.getDragContextStruct(), action, time);
	}

	/**
	 * Ends the drag operation after a drop.
	 *
	 * This function is called by the drag destination.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     success = %TRUE if the data was successfully received
	 *     time = the timestamp for this operation
	 */
	public static void dropFinish(DragContext context, bool success, uint time)
	{
		gdk_drop_finish((context is null) ? null : context.getDragContextStruct(), success, time);
	}

	/**
	 * Accepts or rejects a drop.
	 *
	 * This function is called by the drag destination in response
	 * to a drop initiated by the drag source.
	 *
	 * Params:
	 *     context = a #GdkDragContext
	 *     accepted = %TRUE if the drop is accepted
	 *     time = the timestamp for this operation
	 */
	public static void dropReply(DragContext context, bool accepted, uint time)
	{
		gdk_drop_reply((context is null) ? null : context.getDragContextStruct(), accepted, time);
	}
}
