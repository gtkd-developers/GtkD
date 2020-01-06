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
 * The GdkDrag struct contains only private fields and
 * should not be accessed directly.
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
	 * This function is called by the drag source.
	 *
	 * Params:
	 *     surface = the source surface for this drag
	 *     device = the device that controls this drag
	 *     content = the offered content
	 *     actions = the actions supported by this drag
	 *     dx = the x offset to @device's position where the drag nominally started
	 *     dy = the y offset to @device's position where the drag nominally started
	 *
	 * Returns: a newly created #GdkDrag or
	 *     %NULL on error.
	 */
	public static Drag begin(Surface surface, Device device, ContentProvider content, GdkDragAction actions, int dx, int dy)
	{
		auto __p = gdk_drag_begin((surface is null) ? null : surface.getSurfaceStruct(), (device is null) ? null : device.getDeviceStruct(), (content is null) ? null : content.getContentProviderStruct(), actions, dx, dy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drag)(cast(GdkDrag*) __p, true);
	}

	/**
	 * Inform GDK if the drop ended successfully. Passing %FALSE
	 * for @success may trigger a drag cancellation animation.
	 *
	 * This function is called by the drag source, and should
	 * be the last call before dropping the reference to the
	 * @drag.
	 *
	 * The #GdkDrag will only take the first gdk_drag_drop_done()
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
	 * Returns: the #GdkDragAction flags
	 */
	public GdkDragAction getActions()
	{
		return gdk_drag_get_actions(gdkDrag);
	}

	/**
	 * Returns the #GdkDevice associated to the GdkDrag object.
	 *
	 * Returns: The #GdkDevice associated to @drag.
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
	 * Gets the #GdkDisplay that the drag object was created for.
	 *
	 * Returns: a #GdkDisplay
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
	 * during the drag operation. Note that the surface may not be
	 * available until the drag operation has begun. GDK will move
	 * the surface in accordance with the ongoing drag operation.
	 * The surface is owned by @drag and will be destroyed when
	 * the drag operation is over.
	 *
	 * Returns: the drag surface, or %NULL
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
	 * Retrieves the formats supported by this GdkDrag object.
	 *
	 * Returns: a #GdkContentFormats
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
	 * Returns: a #GdkDragAction value
	 */
	public GdkDragAction getSelectedAction()
	{
		return gdk_drag_get_selected_action(gdkDrag);
	}

	/**
	 * Sets the position of the drag surface that will be kept
	 * under the cursor hotspot. Initially, the hotspot is at the
	 * top left corner of the drag surface.
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
	 * The drag operation was cancelled.
	 *
	 * Params:
	 *     reason = The reason the drag was cancelled
	 */
	gulong addOnCancel(void delegate(GdkDragCancelReason, Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The drag operation was finished, the destination
	 * finished reading all data. The drag object can now
	 * free all miscellaneous data.
	 */
	gulong addOnDndFinished(void delegate(Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dnd-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The drag operation was performed on an accepting client.
	 */
	gulong addOnDropPerformed(void delegate(Drag) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drop-performed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
