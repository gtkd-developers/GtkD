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


module gdk.Drag;

private import gdk.ContentFormats;
private import gdk.ContentProvider;
private import gdk.Device;
private import gdk.Display;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The `GdkDrag` object represents the source of an ongoing DND operation.
 * 
 * A `GdkDrag` is created when a drag is started, and stays alive for duration of
 * the DND operation. After a drag has been started with [func@Gdk.Drag.begin],
 * the caller gets informed about the status of the ongoing drag operation
 * with signals on the `GdkDrag` object.
 * 
 * GTK provides a higher level abstraction based on top of these functions,
 * and so they are not normally needed in GTK applications. See the
 * "Drag and Drop" section of the GTK documentation for more information.
 */
public class Drag : ObjectG
{
	/** the main Gtk struct */
	protected GdkDrag* gdkDrag;

	/** Get the main Gtk struct */
	public GdkDrag* getDragStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDrag;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDrag;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDrag* gdkDrag, bool ownedRef = false)
	{
		this.gdkDrag = gdkDrag;
		super(cast(GObject*)gdkDrag, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_drag_get_type();
	}

	/**
	 * Starts a drag and creates a new drag context for it.
	 *
	 * This function is called by the drag source. After this call, you
	 * probably want to set up the drag icon using the surface returned
	 * by [method@Gdk.Drag.get_drag_surface].
	 *
	 * This function returns a reference to the [class@Gdk.Drag] object,
	 * but GTK keeps its own reference as well, as long as the DND operation
	 * is going on.
	 *
	 * Note: if @actions include %GDK_ACTION_MOVE, you need to listen for
	 * the [signal@Gdk.Drag::dnd-finished] signal and delete the data at
	 * the source if [method@Gdk.Drag.get_selected_action] returns
	 * %GDK_ACTION_MOVE.
	 *
	 * Params:
	 *     surface = the source surface for this drag
	 *     device = the device that controls this drag
	 *     content = the offered content
	 *     actions = the actions supported by this drag
	 *     dx = the x offset to @device's position where the drag nominally started
	 *     dy = the y offset to @device's position where the drag nominally started
	 *
	 * Returns: a newly created `GdkDrag`
	 */
	public static Drag begin(Surface surface, Device device, ContentProvider content, GdkDragAction actions, double dx, double dy)
	{
		auto __p = gdk_drag_begin((surface is null) ? null : surface.getSurfaceStruct(), (device is null) ? null : device.getDeviceStruct(), (content is null) ? null : content.getContentProviderStruct(), actions, dx, dy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drag)(cast(GdkDrag*) __p, true);
	}

	/**
	 * Informs GDK that the drop ended.
	 *
	 * Passing %FALSE for @success may trigger a drag cancellation
	 * animation.
	 *
	 * This function is called by the drag source, and should be the
	 * last call before dropping the reference to the @drag.
	 *
	 * The `GdkDrag` will only take the first [method@Gdk.Drag.drop_done]
	 * call as effective, if this function is called multiple times,
	 * all subsequent calls will be ignored.
	 *
	 * Params:
	 *     success = whether the drag was ultimatively successful
	 */
	public void dropDone(bool success)
	{
		gdk_drag_drop_done(gdkDrag, success);
	}

	/**
	 * Determines the bitmask of possible actions proposed by the source.
	 *
	 * Returns: the `GdkDragAction` flags
	 */
	public GdkDragAction getActions()
	{
		return gdk_drag_get_actions(gdkDrag);
	}

	/**
	 * Returns the `GdkContentProvider` associated to the `GdkDrag` object.
	 *
	 * Returns: The `GdkContentProvider` associated to @drag.
	 */
	public ContentProvider getContent()
	{
		auto __p = gdk_drag_get_content(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentProvider)(cast(GdkContentProvider*) __p);
	}

	/**
	 * Returns the `GdkDevice` associated to the `GdkDrag` object.
	 *
	 * Returns: The `GdkDevice` associated to @drag.
	 */
	public Device getDevice()
	{
		auto __p = gdk_drag_get_device(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Gets the `GdkDisplay` that the drag object was created for.
	 *
	 * Returns: a `GdkDisplay`
	 */
	public Display getDisplay()
	{
		auto __p = gdk_drag_get_display(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Returns the surface on which the drag icon should be rendered
	 * during the drag operation.
	 *
	 * Note that the surface may not be available until the drag operation
	 * has begun. GDK will move the surface in accordance with the ongoing
	 * drag operation. The surface is owned by @drag and will be destroyed
	 * when the drag operation is over.
	 *
	 * Returns: the drag surface
	 */
	public Surface getDragSurface()
	{
		auto __p = gdk_drag_get_drag_surface(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Retrieves the formats supported by this `GdkDrag` object.
	 *
	 * Returns: a `GdkContentFormats`
	 */
	public ContentFormats getFormats()
	{
		auto __p = gdk_drag_get_formats(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p);
	}

	/**
	 * Determines the action chosen by the drag destination.
	 *
	 * Returns: a `GdkDragAction` value
	 */
	public GdkDragAction getSelectedAction()
	{
		return gdk_drag_get_selected_action(gdkDrag);
	}

	/**
	 * Returns the `GdkSurface` where the drag originates.
	 *
	 * Returns: The `GdkSurface` where the drag originates
	 */
	public Surface getSurface()
	{
		auto __p = gdk_drag_get_surface(gdkDrag);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Sets the position of the drag surface that will be kept
	 * under the cursor hotspot.
	 *
	 * Initially, the hotspot is at the top left corner of the drag surface.
	 *
	 * Params:
	 *     hotX = x coordinate of the drag surface hotspot
	 *     hotY = y coordinate of the drag surface hotspot
	 */
	public void setHotspot(int hotX, int hotY)
	{
		gdk_drag_set_hotspot(gdkDrag, hotX, hotY);
	}

	/**
	 * Emitted when the drag operation is cancelled.
	 *
	 * Params:
	 *     reason = The reason the drag was cancelled
	 */
	gulong addOnCancel(void delegate(GdkDragCancelReason, Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the destination side has finished reading all data.
	 *
	 * The drag object can now free all miscellaneous data.
	 */
	gulong addOnDndFinished(void delegate(Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dnd-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the drop operation is performed on an accepting client.
	 */
	gulong addOnDropPerformed(void delegate(Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drop-performed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
