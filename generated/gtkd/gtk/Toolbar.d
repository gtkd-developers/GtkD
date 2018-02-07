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


module gtk.Toolbar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Container;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ToolItem;
private import gtk.ToolShellIF;
private import gtk.ToolShellT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A toolbar is created with a call to gtk_toolbar_new().
 * 
 * A toolbar can contain instances of a subclass of #GtkToolItem. To add
 * a #GtkToolItem to the a toolbar, use gtk_toolbar_insert(). To remove
 * an item from the toolbar use gtk_container_remove(). To add a button
 * to the toolbar, add an instance of #GtkToolButton.
 * 
 * Toolbar items can be visually grouped by adding instances of
 * #GtkSeparatorToolItem to the toolbar. If the GtkToolbar child property
 * “expand” is #TRUE and the property #GtkSeparatorToolItem:draw is set to
 * #FALSE, the effect is to force all following items to the end of the toolbar.
 * 
 * By default, a toolbar can be shrunk, upon which it will add an arrow button
 * to show an overflow menu offering access to any #GtkToolItem child that has
 * a proxy menu item. To disable this and request enough size for all children,
 * call gtk_toolbar_set_show_arrow() to set #GtkToolbar:show-arrow to %FALSE.
 * 
 * Creating a context menu for the toolbar can be done by connecting to
 * the #GtkToolbar::popup-context-menu signal.
 * 
 * # CSS nodes
 * 
 * GtkToolbar has a single CSS node with name toolbar.
 */
public class Toolbar : Container, OrientableIF, ToolShellIF
{
	/** the main Gtk struct */
	protected GtkToolbar* gtkToolbar;

	/** Get the main Gtk struct */
	public GtkToolbar* getToolbarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToolbar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolbar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToolbar* gtkToolbar, bool ownedRef = false)
	{
		this.gtkToolbar = gtkToolbar;
		super(cast(GtkContainer*)gtkToolbar, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkToolbar);

	// add the ToolShell capabilities
	mixin ToolShellT!(GtkToolbar);

	/**
	 * Insert a GtkToolItem into the toolbar at position pos.
	 * If pos is 0 the item is prepended to the start of the toolbar. If pos is negative, the item is appended to the end of the toolbar.
	 * Since 2.4
	 * Params:
	 * toolItem  = a GtkToolItem
	 * pos = the position of the new item
	 */
	public void insert(ToolItem toolItem, int pos=-1)
	{
		gtk_toolbar_insert(gtkToolbar, toolItem.getToolItemStruct(), pos);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_toolbar_get_type();
	}

	/**
	 * Creates a new toolbar.
	 *
	 * Returns: the newly-created toolbar.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_toolbar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolbar*) p);
	}

	/**
	 * Returns the position corresponding to the indicated point on
	 * @toolbar. This is useful when dragging items to the toolbar:
	 * this function returns the position a new item should be
	 * inserted.
	 *
	 * @x and @y are in @toolbar coordinates.
	 *
	 * Params:
	 *     x = x coordinate of a point on the toolbar
	 *     y = y coordinate of a point on the toolbar
	 *
	 * Returns: The position corresponding to the point (@x, @y) on the toolbar.
	 *
	 * Since: 2.4
	 */
	public int getDropIndex(int x, int y)
	{
		return gtk_toolbar_get_drop_index(gtkToolbar, x, y);
	}

	/**
	 * Returns the position of @item on the toolbar, starting from 0.
	 * It is an error if @item is not a child of the toolbar.
	 *
	 * Params:
	 *     item = a #GtkToolItem that is a child of @toolbar
	 *
	 * Returns: the position of item on the toolbar.
	 *
	 * Since: 2.4
	 */
	public int getItemIndex(ToolItem item)
	{
		return gtk_toolbar_get_item_index(gtkToolbar, (item is null) ? null : item.getToolItemStruct());
	}

	/**
	 * Returns the number of items on the toolbar.
	 *
	 * Returns: the number of items on the toolbar
	 *
	 * Since: 2.4
	 */
	public int getNItems()
	{
		return gtk_toolbar_get_n_items(gtkToolbar);
	}

	/**
	 * Returns the @n'th item on @toolbar, or %NULL if the
	 * toolbar does not contain an @n'th item.
	 *
	 * Params:
	 *     n = A position on the toolbar
	 *
	 * Returns: The @n'th #GtkToolItem on @toolbar,
	 *     or %NULL if there isn’t an @n'th item.
	 *
	 * Since: 2.4
	 */
	public ToolItem getNthItem(int n)
	{
		auto p = gtk_toolbar_get_nth_item(gtkToolbar, n);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}

	/**
	 * Returns whether the toolbar has an overflow menu.
	 * See gtk_toolbar_set_show_arrow().
	 *
	 * Returns: %TRUE if the toolbar has an overflow menu.
	 *
	 * Since: 2.4
	 */
	public bool getShowArrow()
	{
		return gtk_toolbar_get_show_arrow(gtkToolbar) != 0;
	}

	/**
	 * Retrieves whether the toolbar has text, icons, or both . See
	 * gtk_toolbar_set_style().
	 *
	 * Returns: the current style of @toolbar
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		return gtk_toolbar_get_style(gtkToolbar);
	}

	/**
	 * Highlights @toolbar to give an idea of what it would look like
	 * if @item was added to @toolbar at the position indicated by @index_.
	 * If @item is %NULL, highlighting is turned off. In that case @index_
	 * is ignored.
	 *
	 * The @tool_item passed to this function must not be part of any widget
	 * hierarchy. When an item is set as drop highlight item it can not
	 * added to any widget hierarchy or used as highlight item for another
	 * toolbar.
	 *
	 * Params:
	 *     toolItem = a #GtkToolItem, or %NULL to turn of highlighting
	 *     index = a position on @toolbar
	 *
	 * Since: 2.4
	 */
	public void setDropHighlightItem(ToolItem toolItem, int index)
	{
		gtk_toolbar_set_drop_highlight_item(gtkToolbar, (toolItem is null) ? null : toolItem.getToolItemStruct(), index);
	}

	/**
	 * This function sets the size of stock icons in the toolbar. You
	 * can call it both before you add the icons and after they’ve been
	 * added. The size you set will override user preferences for the default
	 * icon size.
	 *
	 * This should only be used for special-purpose toolbars, normal
	 * application toolbars should respect the user preferences for the
	 * size of icons.
	 *
	 * Params:
	 *     iconSize = The #GtkIconSize that stock icons in the toolbar shall have.
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		gtk_toolbar_set_icon_size(gtkToolbar, iconSize);
	}

	/**
	 * Sets whether to show an overflow menu when @toolbar isn’t allocated enough
	 * size to show all of its items. If %TRUE, items which can’t fit in @toolbar,
	 * and which have a proxy menu item set by gtk_tool_item_set_proxy_menu_item()
	 * or #GtkToolItem::create-menu-proxy, will be available in an overflow menu,
	 * which can be opened by an added arrow button. If %FALSE, @toolbar will
	 * request enough size to fit all of its child items without any overflow.
	 *
	 * Params:
	 *     showArrow = Whether to show an overflow menu
	 *
	 * Since: 2.4
	 */
	public void setShowArrow(bool showArrow)
	{
		gtk_toolbar_set_show_arrow(gtkToolbar, showArrow);
	}

	/**
	 * Alters the view of @toolbar to display either icons only, text only, or both.
	 *
	 * Params:
	 *     style = the new style for @toolbar.
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		gtk_toolbar_set_style(gtkToolbar, style);
	}

	/**
	 * Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
	 * user preferences will be used to determine the icon size.
	 */
	public void unsetIconSize()
	{
		gtk_toolbar_unset_icon_size(gtkToolbar);
	}

	/**
	 * Unsets a toolbar style set with gtk_toolbar_set_style(), so that
	 * user preferences will be used to determine the toolbar style.
	 */
	public void unsetStyle()
	{
		gtk_toolbar_unset_style(gtkToolbar);
	}

	/**
	 * A keybinding signal used internally by GTK+. This signal can't
	 * be used in application code
	 *
	 * Params:
	 *     focusHome = %TRUE if the first item should be focused
	 *
	 * Returns: %TRUE if the signal was handled, %FALSE if not
	 */
	gulong addOnFocusHomeOrEnd(bool delegate(bool, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-home-or-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the orientation of the toolbar changes.
	 *
	 * Params:
	 *     orientation = the new #GtkOrientation of the toolbar
	 */
	gulong addOnOrientationChanged(void delegate(GtkOrientation, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "orientation-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user right-clicks the toolbar or uses the
	 * keybinding to display a popup menu.
	 *
	 * Application developers should handle this signal if they want
	 * to display a context menu on the toolbar. The context-menu should
	 * appear at the coordinates given by @x and @y. The mouse button
	 * number is given by the @button parameter. If the menu was popped
	 * up using the keybaord, @button is -1.
	 *
	 * Params:
	 *     x = the x coordinate of the point where the menu should appear
	 *     y = the y coordinate of the point where the menu should appear
	 *     button = the mouse button the user pressed, or -1
	 *
	 * Returns: return %TRUE if the signal was handled, %FALSE if not
	 */
	gulong addOnPopupContextMenu(bool delegate(int, int, int, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup-context-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the style of the toolbar changes.
	 *
	 * Params:
	 *     style = the new #GtkToolbarStyle of the toolbar
	 */
	gulong addOnStyleChanged(void delegate(GtkToolbarStyle, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "style-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
