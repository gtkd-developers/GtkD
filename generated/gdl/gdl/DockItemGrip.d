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


module gdl.DockItemGrip;

private import gdk.Event;
private import gdl.DockItem;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import gtk.Widget;


/** */
public class DockItemGrip : Container
{
	/** the main Gtk struct */
	protected GdlDockItemGrip* gdlDockItemGrip;

	/** Get the main Gtk struct */
	public GdlDockItemGrip* getDockItemGripStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockItemGrip;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockItemGrip;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockItemGrip* gdlDockItemGrip, bool ownedRef = false)
	{
		this.gdlDockItemGrip = gdlDockItemGrip;
		super(cast(GtkContainer*)gdlDockItemGrip, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_item_grip_get_type();
	}

	/**
	 * Creates a new GDL dock item grip object.
	 *
	 * Params:
	 *     item = The dock item that will "own" this grip widget.
	 *
	 * Returns: The newly created dock item grip widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DockItem item)
	{
		auto __p = gdl_dock_item_grip_new((item is null) ? null : item.getDockItemStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockItemGrip*) __p);
	}

	/**
	 * Return %TRUE if the grip window has reveived the event.
	 *
	 * Params:
	 *     event = A #GdkEvent
	 *
	 * Returns: %TRUE if the grip has received the event
	 */
	public bool hasEvent(Event event)
	{
		return gdl_dock_item_grip_has_event(gdlDockItemGrip, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * This function hides the dock item's grip widget handle hatching.
	 */
	public void hideHandle()
	{
		gdl_dock_item_grip_hide_handle(gdlDockItemGrip);
	}

	/**
	 * Change the cursor when a drag operation is started.
	 *
	 * Params:
	 *     inDrag = %TRUE if a drag operation is started
	 *
	 * Since: 3.6
	 */
	public void setCursor(bool inDrag)
	{
		gdl_dock_item_grip_set_cursor(gdlDockItemGrip, inDrag);
	}

	/**
	 * Replaces the current label widget with another widget.
	 *
	 * Params:
	 *     label = The widget that will become the label.
	 */
	public void setLabel(Widget label)
	{
		gdl_dock_item_grip_set_label(gdlDockItemGrip, (label is null) ? null : label.getWidgetStruct());
	}

	/**
	 * This function shows the dock item's grip widget handle hatching.
	 */
	public void showHandle()
	{
		gdl_dock_item_grip_show_handle(gdlDockItemGrip);
	}
}
