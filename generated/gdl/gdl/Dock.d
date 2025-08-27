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


module gdl.Dock;

private import gdl.DockItem;
private import gdl.DockObject;
private import gdl.DockPlaceholder;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import std.algorithm;


/** */
public class Dock : DockObject
{
	/** the main Gtk struct */
	protected GdlDock* gdlDock;

	/** Get the main Gtk struct */
	public GdlDock* getDockStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDock;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDock;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDock* gdlDock, bool ownedRef = false)
	{
		this.gdlDock = gdlDock;
		super(cast(GdlDockObject*)gdlDock, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_get_type();
	}

	/**
	 * Create a new dock.
	 *
	 * Returns: A new #GdlDock widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdl_dock_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdlDock*) __p, true);
	}

	/**
	 * Dock an item as a floating item. It creates a new window containing a new
	 * dock widget sharing the same master where the item is docked.
	 *
	 * Params:
	 *     item = A #GdlDockItem widget
	 *     x = X coordinate of the floating item
	 *     y = Y coordinate of the floating item
	 *     width = width of the floating item
	 *     height = height of the floating item
	 */
	public void addFloatingItem(DockItem item, int x, int y, int width, int height)
	{
		gdl_dock_add_floating_item(gdlDock, (item is null) ? null : item.getDockItemStruct(), x, y, width, height);
	}

	/**
	 * Dock in @dock, the widget @item at the position defined by @placement. The
	 * function takes care of finding the right parent widget eventually creating
	 * it if needed.
	 *
	 * Params:
	 *     item = A #GdlDockItem widget
	 *     placement = A position for the widget
	 */
	public void addItem(DockItem item, GdlDockPlacement placement)
	{
		gdl_dock_add_item(gdlDock, (item is null) ? null : item.getDockItemStruct(), placement);
	}

	/**
	 * Looks for an #GdlDockItem widget bound to the master of the dock item. It
	 * does not search only in the children of this particular dock widget.
	 *
	 * Params:
	 *     name = An item name
	 *
	 * Returns: A #GdlDockItem widget or %NULL
	 */
	public DockItem getItemByName(string name)
	{
		auto __p = gdl_dock_get_item_by_name(gdlDock, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockItem)(cast(GdlDockItem*) __p);
	}

	/**
	 * Returns a list of all item bound to the master of the dock, not only
	 * the children of this particular dock widget.
	 *
	 * Returns: A list of #GdlDockItem. The list should be freedwith g_list_free(),
	 *     but the item still belong to the master.
	 */
	public ListG getNamedItems()
	{
		auto __p = gdl_dock_get_named_items(gdlDock);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Looks for an #GdlDockPlaceholder object bound to the master of the dock item.
	 * It does not search only in the children of this particular dock widget.
	 *
	 * Deprecated: This function is always returning %NULL.
	 *
	 * Params:
	 *     name = An item name
	 *
	 * Returns: A #GdlDockPlaceholder object or %NULL
	 */
	public DockPlaceholder getPlaceholderByName(string name)
	{
		auto __p = gdl_dock_get_placeholder_by_name(gdlDock, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockPlaceholder)(cast(GdlDockPlaceholder*) __p);
	}

	/**
	 * Get the first child of the #GdlDockObject.
	 *
	 * Returns: A #GdlDockObject or %NULL.
	 */
	public DockObject getRoot()
	{
		auto __p = gdl_dock_get_root(gdlDock);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockObject)(cast(GdlDockObject*) __p);
	}

	/**
	 * Hide the preview window used to materialize the dock target.
	 */
	public void hidePreview()
	{
		gdl_dock_hide_preview(gdlDock);
	}

	/**
	 * Create a new dock widget having the same master than @original.
	 *
	 * Params:
	 *     floating = %TRUE to create a floating dock
	 *
	 * Returns: A new #GdlDock widget
	 */
	public Widget newFrom(bool floating)
	{
		auto __p = gdl_dock_new_from(gdlDock, floating);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p, true);
	}

	/**
	 * Sets whether or not a floating dock window should be prevented from
	 * appearing in the system taskbar.
	 *
	 * Params:
	 *     skip = %TRUE if floating docks should be prevented from appearing in the taskbar
	 *
	 * Since: 3.6
	 */
	public void setSkipTaskbar(bool skip)
	{
		gdl_dock_set_skip_taskbar(gdlDock, skip);
	}

	/**
	 * Show a preview window used to materialize the dock target.
	 *
	 * Params:
	 *     rect = The position and the size of the preview window
	 */
	public void showPreview(GdkRectangle* rect)
	{
		gdl_dock_show_preview(gdlDock, rect);
	}

	/**
	 * Show a preview window used to materialize the dock target.
	 *
	 * Deprecated: Use gdl_dock_show_preview instead.
	 *
	 * Params:
	 *     rect = The position and the size of the preview window
	 */
	public void xorRect(GdkRectangle* rect)
	{
		gdl_dock_xor_rect(gdlDock, rect);
	}

	/**
	 * Hide the preview window used to materialize the dock target.
	 *
	 * Deprecated: Use gdl_dock_hide_preview instead.
	 */
	public void xorRectHide()
	{
		gdl_dock_xor_rect_hide(gdlDock);
	}

	/**
	 * Signals that the layout has changed, one or more widgets have been moved,
	 * added or removed.
	 */
	gulong addOnLayoutChanged(void delegate(Dock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "layout-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
