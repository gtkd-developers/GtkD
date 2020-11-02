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


module gdl.DockItem;

private import gdk.Device;
private import gdkpixbuf.Pixbuf;
private import gdl.DockObject;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Requisition;
private import gtk.Widget;
private import std.algorithm;


/** */
public class DockItem : DockObject
{
	/** the main Gtk struct */
	protected GdlDockItem* gdlDockItem;

	/** Get the main Gtk struct */
	public GdlDockItem* getDockItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockItem* gdlDockItem, bool ownedRef = false)
	{
		this.gdlDockItem = gdlDockItem;
		super(cast(GdlDockObject*)gdlDockItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_item_get_type();
	}

	/**
	 * Creates a new dock item widget.
	 *
	 * Params:
	 *     name = Unique name for identifying the dock object.
	 *     longName = Human readable name for the dock object.
	 *     behavior = General behavior for the dock item (i.e. whether it can
	 *         float, if it's locked, etc.), as specified by
	 *         #GdlDockItemBehavior flags.
	 *
	 * Returns: The newly created dock item grip widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string longName, GdlDockItemBehavior behavior)
	{
		auto __p = gdl_dock_item_new(Str.toStringz(name), Str.toStringz(longName), behavior);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDockItem*) __p);
	}

	/**
	 * Creates a new dock item grip widget with a given pixbuf icon.
	 *
	 * Params:
	 *     name = Unique name for identifying the dock object.
	 *     longName = Human readable name for the dock object.
	 *     pixbufIcon = Pixbuf icon for the dock object.
	 *     behavior = General behavior for the dock item (i.e. whether it can
	 *         float, if it's locked, etc.), as specified by
	 *         #GdlDockItemBehavior flags.
	 *
	 * Returns: The newly created dock item grip widget.
	 *
	 * Since: 3.3.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string longName, Pixbuf pixbufIcon, GdlDockItemBehavior behavior)
	{
		auto __p = gdl_dock_item_new_with_pixbuf_icon(Str.toStringz(name), Str.toStringz(longName), (pixbufIcon is null) ? null : pixbufIcon.getPixbufStruct(), behavior);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_pixbuf_icon");
		}

		this(cast(GdlDockItem*) __p);
	}

	/**
	 * Creates a new dock item grip widget with a given stock id.
	 *
	 * Params:
	 *     name = Unique name for identifying the dock object.
	 *     longName = Human readable name for the dock object.
	 *     stockId = Stock icon for the dock object.
	 *     behavior = General behavior for the dock item (i.e. whether it can
	 *         float, if it's locked, etc.), as specified by
	 *         #GdlDockItemBehavior flags.
	 *
	 * Returns: The newly created dock item grip widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string longName, string stockId, GdlDockItemBehavior behavior)
	{
		auto __p = gdl_dock_item_new_with_stock(Str.toStringz(name), Str.toStringz(longName), Str.toStringz(stockId), behavior);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_stock");
		}

		this(cast(GdlDockItem*) __p);
	}

	/**
	 * Binds this dock item to a new dock master.
	 *
	 * Params:
	 *     dock = The #GdlDock widget to bind it to. Note that this widget must
	 *         be a type of #GdlDock.
	 */
	public void bindTo(Widget dock)
	{
		gdl_dock_item_bind(gdlDockItem, (dock is null) ? null : dock.getWidgetStruct());
	}

	/**
	 * Relocates a dock item to a new location relative to another dock item.
	 *
	 * Params:
	 *     target = The dock item that will be used as the point of reference.
	 *     position = The position to dock #item, relative to #target.
	 *     dockingParam = This value is unused, and will be ignored.
	 */
	public void dockTo(DockItem target, GdlDockPlacement position, int dockingParam)
	{
		gdl_dock_item_dock_to(gdlDockItem, (target is null) ? null : target.getDockItemStruct(), position, dockingParam);
	}

	/**
	 * Retrieves the behavior of the item.
	 *
	 * Returns: the behavior of the item.
	 *
	 * Since: 3.6
	 */
	public GdlDockItemBehavior getBehaviorFlags()
	{
		return gdl_dock_item_get_behavior_flags(gdlDockItem);
	}

	/**
	 * Gets the child of the #GdlDockItem, or %NULL if the item contains
	 * no child widget. The returned widget does not have a reference
	 * added, so you do not need to unref it.
	 *
	 * Returns: pointer to child of the #GdlDockItem
	 *
	 * Since: 3.6
	 */
	public Widget getChild()
	{
		auto __p = gdl_dock_item_get_child(gdlDockItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the size and the position of the drag window in pixels.
	 *
	 * Params:
	 *     rect = A pointer to a #GdkRectangle that will receive the drag position
	 *
	 * Since: 3.6
	 */
	public void getDragArea(GdkRectangle* rect)
	{
		gdl_dock_item_get_drag_area(gdlDockItem, rect);
	}

	/**
	 * This function returns the dock item's grip label widget.
	 *
	 * Returns: Returns the current label widget.
	 */
	public Widget getGrip()
	{
		auto __p = gdl_dock_item_get_grip(gdlDockItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the orientation of the object.
	 *
	 * Returns: the orientation of the object.
	 *
	 * Since: 3.6
	 */
	public GtkOrientation getOrientation()
	{
		return gdl_dock_item_get_orientation(gdlDockItem);
	}

	/**
	 * Gets the current tab label widget. Note that this label widget is
	 * only visible when the "switcher-style" property of the #GdlDockMaster
	 * is set to #GDL_SWITCHER_STYLE_TABS
	 *
	 * Returns: Returns the tab label widget.
	 */
	public Widget getTablabel()
	{
		auto __p = gdl_dock_item_get_tablabel(gdlDockItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * This function hides the dock item's grip widget.
	 */
	public void hideGrip()
	{
		gdl_dock_item_hide_grip(gdlDockItem);
	}

	/**
	 * This function hides the dock item. Since version 3.6, when dock items
	 * are hidden they are not removed from the layout.
	 *
	 * The dock item close button causes the panel to be hidden.
	 */
	public void hideItem()
	{
		gdl_dock_item_hide_item(gdlDockItem);
	}

	/**
	 * This function iconifies the dock item. When dock items are iconified
	 * they are hidden, and appear only as icons in dock bars.
	 *
	 * The dock item iconify button causes the panel to be iconified.
	 */
	public void iconifyItem()
	{
		gdl_dock_item_iconify_item(gdlDockItem);
	}

	/**
	 * Checks whether a given #GdlDockItem is closed. It can be only hidden or
	 * detached.
	 *
	 * Returns: %TRUE if the dock item is closed.
	 *
	 * Since: 3.6
	 */
	public override bool isClosed()
	{
		return gdl_dock_item_is_closed(gdlDockItem) != 0;
	}

	/**
	 * Checks whether a given #GdlDockItem is iconified.
	 *
	 * Returns: %TRUE if the dock item is iconified.
	 *
	 * Since: 3.6
	 */
	public bool isIconified()
	{
		return gdl_dock_item_is_iconified(gdlDockItem) != 0;
	}

	/**
	 * Checks whether a given #GdlDockItem is a placeholder created by the
	 * #GdlDockLayout object and does not contain a child.
	 *
	 * Returns: %TRUE if the dock item is a placeholder
	 *
	 * Since: 3.6
	 */
	public bool isPlaceholder()
	{
		return gdl_dock_item_is_placeholder(gdlDockItem) != 0;
	}

	/**
	 * This function locks the dock item. When locked the dock item cannot
	 * be dragged around and it doesn't show a grip.
	 */
	public void lock()
	{
		gdl_dock_item_lock(gdlDockItem);
	}

	/**
	 * This function emits the deselected signal. It is used by #GdlSwitcher
	 * to let clients know that this item has been deselected.
	 */
	public void notifyDeselected()
	{
		gdl_dock_item_notify_deselected(gdlDockItem);
	}

	/**
	 * This function emits the selected signal. It is to be used by #GdlSwitcher
	 * to let clients know that this item has been switched to.
	 */
	public void notifySelected()
	{
		gdl_dock_item_notify_selected(gdlDockItem);
	}

	/**
	 * Checks whether a given #GdlDockItem or its child widget has focus.
	 * This check is performed recursively on child widgets.
	 *
	 * Returns: %TRUE if the dock item or its child widget has focus;
	 *     %FALSE otherwise.
	 *
	 * Since: 3.3.2
	 */
	public bool orChildHasFocus()
	{
		return gdl_dock_item_or_child_has_focus(gdlDockItem) != 0;
	}

	/**
	 * Gets the preferred size of the dock item in pixels.
	 *
	 * Params:
	 *     req = A pointer to a #GtkRequisition into which the preferred size
	 *         will be written.
	 */
	public void preferredSize(Requisition req)
	{
		gdl_dock_item_preferred_size(gdlDockItem, (req is null) ? null : req.getRequisitionStruct());
	}

	/**
	 * This function sets the behavior of the dock item.
	 *
	 * Params:
	 *     behavior = Behavior flags to turn on
	 *     clear = Whether to clear state before turning on @flags
	 *
	 * Since: 3.6
	 */
	public void setBehaviorFlags(GdlDockItemBehavior behavior, bool clear)
	{
		gdl_dock_item_set_behavior_flags(gdlDockItem, behavior, clear);
	}

	/**
	 * Set a new child for the #GdlDockItem. This child is different from the
	 * children using the #GtkContainer interface. It is a private child reserved
	 * for the widget implementation.
	 *
	 * If a child is already present, it will be replaced. If @widget is %NULL the
	 * child will be removed.
	 *
	 * Params:
	 *     child = a #GtkWidget
	 *
	 * Since: 3.6
	 */
	public void setChild(Widget child)
	{
		gdl_dock_item_set_child(gdlDockItem, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * This method has only an effect when you add you dock_item with
	 * GDL_DOCK_ITEM_BEH_NEVER_FLOATING. In this case you have to assign
	 * it a default position.*
	 *
	 * Deprecated 3.6: This function is doing nothing now.
	 *
	 * Params:
	 *     reference = The GdlDockObject which is the default dock for @item
	 */
	public void setDefaultPosition(DockObject reference)
	{
		gdl_dock_item_set_default_position(gdlDockItem, (reference is null) ? null : reference.getDockObjectStruct());
	}

	/**
	 * This function sets the layout of the dock item.
	 *
	 * Params:
	 *     orientation = The orientation to set the item to. If the orientation
	 *         is set to #GTK_ORIENTATION_VERTICAL, the grip widget will be shown
	 *         along the top of the edge of item (if it is not hidden). If the
	 *         orientation is set to #GTK_ORIENTATION_HORIZONTAL, the grip widget
	 *         will be shown down the left edge of the item (even if the widget
	 *         text direction is set to RTL).
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		gdl_dock_item_set_orientation(gdlDockItem, orientation);
	}

	/**
	 * Replaces the current tab label widget with another widget. Note that
	 * this label widget is only visible when the "switcher-style" property
	 * of the #GdlDockMaster is set to #GDL_SWITCHER_STYLE_TABS
	 *
	 * Params:
	 *     tablabel = The widget that will become the tab label.
	 */
	public void setTablabel(Widget tablabel)
	{
		gdl_dock_item_set_tablabel(gdlDockItem, (tablabel is null) ? null : tablabel.getWidgetStruct());
	}

	/**
	 * This function shows the dock item's grip widget.
	 */
	public void showGrip()
	{
		gdl_dock_item_show_grip(gdlDockItem);
	}

	/**
	 * This function shows the dock item. When dock items are shown, they
	 * are displayed in their normal layout position.
	 */
	public void showItem()
	{
		gdl_dock_item_show_item(gdlDockItem);
	}

	/**
	 * Unbinds this dock item from it's dock master.
	 */
	public override void unbind()
	{
		gdl_dock_item_unbind(gdlDockItem);
	}

	/**
	 * This function unlocks the dock item. When unlocked the dock item can
	 * be dragged around and can show a grip.
	 */
	public void unlock()
	{
		gdl_dock_item_unlock(gdlDockItem);
	}

	/**
	 * This function sets the behavior of the dock item.
	 *
	 * Params:
	 *     behavior = Behavior flags to turn off
	 *
	 * Since: 3.6
	 */
	public void unsetBehaviorFlags(GdlDockItemBehavior behavior)
	{
		gdl_dock_item_unset_behavior_flags(gdlDockItem, behavior);
	}

	/**
	 * Signals that this dock has been deselected in a switcher.
	 */
	gulong addOnDeselected(void delegate(DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "deselected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the dock item has begun to be dragged.
	 */
	gulong addOnDockDragBegin(void delegate(DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dock-drag-begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the dock item dragging has ended.
	 *
	 * Params:
	 *     cancel = This value is set to TRUE if the drag was cancelled by
	 *         the user. #cancel is set to FALSE if the drag was accepted.
	 */
	gulong addOnDockDragEnd(void delegate(bool, DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dock-drag-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that a dock item dragging motion event has occured.
	 *
	 * Params:
	 *     device = The device used.
	 *     x = The x-position that the dock item has been dragged to.
	 *     y = The y-position that the dock item has been dragged to.
	 */
	gulong addOnDockDragMotion(void delegate(Device, int, int, DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dock-drag-motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-focus-child signal is emitted when a change of focus is
	 * requested for the child widget of a dock item.  The @dir parameter
	 * specifies the direction in which focus is to be shifted.
	 *
	 * Params:
	 *     dir = The direction in which to move focus
	 *
	 * Since: 3.3.2
	 */
	gulong addOnMoveFocusChild(void delegate(GtkDirectionType, DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-focus-child", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that this dock has been selected from a switcher.
	 */
	gulong addOnSelected(void delegate(DockItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
