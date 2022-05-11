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


module gtk.ListItem;

private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkListItem` is used by list widgets to represent items in a `GListModel`.
 * 
 * The `GtkListItem`s are managed by the list widget (with its factory)
 * and cannot be created by applications, but they need to be populated
 * by application code. This is done by calling [method@Gtk.ListItem.set_child].
 * 
 * `GtkListItem`s exist in 2 stages:
 * 
 * 1. The unbound stage where the listitem is not currently connected to
 * an item in the list. In that case, the [property@Gtk.ListItem:item]
 * property is set to %NULL.
 * 
 * 2. The bound stage where the listitem references an item from the list.
 * The [property@Gtk.ListItem:item] property is not %NULL.
 */
public class ListItem : ObjectG
{
	/** the main Gtk struct */
	protected GtkListItem* gtkListItem;

	/** Get the main Gtk struct */
	public GtkListItem* getListItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListItem* gtkListItem, bool ownedRef = false)
	{
		this.gtkListItem = gtkListItem;
		super(cast(GObject*)gtkListItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_list_item_get_type();
	}

	/**
	 * Checks if a list item has been set to be activatable via
	 * gtk_list_item_set_activatable().
	 *
	 * Returns: %TRUE if the item is activatable
	 */
	public bool getActivatable()
	{
		return gtk_list_item_get_activatable(gtkListItem) != 0;
	}

	/**
	 * Gets the child previously set via gtk_list_item_set_child() or
	 * %NULL if none was set.
	 *
	 * Returns: The child
	 */
	public Widget getChild()
	{
		auto __p = gtk_list_item_get_child(gtkListItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the model item that associated with @self.
	 *
	 * If @self is unbound, this function returns %NULL.
	 *
	 * Returns: The item displayed
	 */
	public ObjectG getItem()
	{
		auto __p = gtk_list_item_get_item(gtkListItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets the position in the model that @self currently displays.
	 *
	 * If @self is unbound, %GTK_INVALID_LIST_POSITION is returned.
	 *
	 * Returns: The position of this item
	 */
	public uint getPosition()
	{
		return gtk_list_item_get_position(gtkListItem);
	}

	/**
	 * Checks if a list item has been set to be selectable via
	 * gtk_list_item_set_selectable().
	 *
	 * Do not confuse this function with [method@Gtk.ListItem.get_selected].
	 *
	 * Returns: %TRUE if the item is selectable
	 */
	public bool getSelectable()
	{
		return gtk_list_item_get_selectable(gtkListItem) != 0;
	}

	/**
	 * Checks if the item is displayed as selected.
	 *
	 * The selected state is maintained by the liste widget and its model
	 * and cannot be set otherwise.
	 *
	 * Returns: %TRUE if the item is selected.
	 */
	public bool getSelected()
	{
		return gtk_list_item_get_selected(gtkListItem) != 0;
	}

	/**
	 * Sets @self to be activatable.
	 *
	 * If an item is activatable, double-clicking on the item, using
	 * the Return key or calling gtk_widget_activate() will activate
	 * the item. Activating instructs the containing view to handle
	 * activation. `GtkListView` for example will be emitting the
	 * [signal@Gtk.ListView::activate] signal.
	 *
	 * By default, list items are activatable.
	 *
	 * Params:
	 *     activatable = if the item should be activatable
	 */
	public void setActivatable(bool activatable)
	{
		gtk_list_item_set_activatable(gtkListItem, activatable);
	}

	/**
	 * Sets the child to be used for this listitem.
	 *
	 * This function is typically called by applications when
	 * setting up a listitem so that the widget can be reused when
	 * binding it multiple times.
	 *
	 * Params:
	 *     child = The list item's child or %NULL to unset
	 */
	public void setChild(Widget child)
	{
		gtk_list_item_set_child(gtkListItem, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets @self to be selectable.
	 *
	 * If an item is selectable, clicking on the item or using the keyboard
	 * will try to select or unselect the item. If this succeeds is up to
	 * the model to determine, as it is managing the selected state.
	 *
	 * Note that this means that making an item non-selectable has no
	 * influence on the selected state at all. A non-selectable item
	 * may still be selected.
	 *
	 * By default, list items are selectable. When rebinding them to
	 * a new item, they will also be reset to be selectable by GTK.
	 *
	 * Params:
	 *     selectable = if the item should be selectable
	 */
	public void setSelectable(bool selectable)
	{
		gtk_list_item_set_selectable(gtkListItem, selectable);
	}
}
