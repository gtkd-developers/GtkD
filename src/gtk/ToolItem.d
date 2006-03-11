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
 * outPack = gtk
 * outFile = ToolItem
 * strct   = GtkToolItem
 * realStrct=
 * clss    = ToolItem
 * extend  = 
 * prefixes:
 * 	- gtk_tool_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.string
 * 	- gtk.Tooltips
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkTooltips* -> Tooltips
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.ToolItem;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;
private import gtk.Tooltips;
private import gtk.Widget;

/**
 * Description
 * GtkToolItems are widgets that can appear on a toolbar. To
 * create a toolbar item that contain something else than a button, use
 * gtk_tool_item_new(). Use gtk_container_add() to add a child
 * widget to the tool item.
 * For toolbar items that contain buttons, see the GtkToolButton,
 * GtkToggleToolButton and GtkRadioToolButton classes.
 * See the GtkToolbar class for a description of the toolbar widget.
 */
private import gtk.Bin;
public class ToolItem : Bin
{
	
	/** the main Gtk struct */
	protected GtkToolItem* gtkToolItem;
	
	
	public GtkToolItem* getToolItemStruct()
	{
		return gtkToolItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkToolItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolItem* gtkToolItem)
	{
		super(cast(GtkBin*)gtkToolItem);
		this.gtkToolItem = gtkToolItem;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	gboolean delegate(ToolItem)[] onCreateMenuProxyListeners;
	void addOnCreateMenuProxy(gboolean delegate(ToolItem) dlg)
	{
		if ( !("create-menu-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"create-menu-proxy",
			cast(GCallback)&callBackCreateMenuProxy,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["create-menu-proxy"] = 1;
		}
		onCreateMenuProxyListeners ~= dlg;
	}
	extern(C) static void callBackCreateMenuProxy(GtkToolItem* toolitemStruct, ToolItem toolItem)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(ToolItem) dlg ; toolItem.onCreateMenuProxyListeners )
		{
			dlg(toolItem);
		}
		
		return consumed;
	}
	
	gboolean delegate(Tooltips, char[], char[], ToolItem)[] onSetTooltipListeners;
	void addOnSetTooltip(gboolean delegate(Tooltips, char[], char[], ToolItem) dlg)
	{
		if ( !("set-tooltip" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-tooltip",
			cast(GCallback)&callBackSetTooltip,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["set-tooltip"] = 1;
		}
		onSetTooltipListeners ~= dlg;
	}
	extern(C) static void callBackSetTooltip(GtkToolItem* toolitemStruct, GtkTooltips* tooltips, gchar* tipText, gchar* tipPrivate, ToolItem toolItem)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Tooltips, char[], char[], ToolItem) dlg ; toolItem.onSetTooltipListeners )
		{
			dlg(new Tooltips(tooltips), std.string.toString(tipText), std.string.toString(tipPrivate), toolItem);
		}
		
		return consumed;
	}
	
	void delegate(ToolItem)[] onToolbarReconfiguredListeners;
	void addOnToolbarReconfigured(void delegate(ToolItem) dlg)
	{
		if ( !("toolbar-reconfigured" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toolbar-reconfigured",
			cast(GCallback)&callBackToolbarReconfigured,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toolbar-reconfigured"] = 1;
		}
		onToolbarReconfiguredListeners ~= dlg;
	}
	extern(C) static void callBackToolbarReconfigured(GtkToolItem* toolitemStruct, ToolItem toolItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(ToolItem) dlg ; toolItem.onToolbarReconfiguredListeners )
		{
			dlg(toolItem);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkToolItem
	 * Returns:
	 *  the new GtkToolItem
	 * Since 2.4
	 */
	public this ()
	{
		// GtkToolItem* gtk_tool_item_new (void);
		this(cast(GtkToolItem*)gtk_tool_item_new() );
	}
	
	/**
	 * Sets whether tool_item is to be allocated the same size as other
	 * homogeneous items. The effect is that all homogeneous items will have
	 * the same width as the widest of the items.
	 * tool_item:
	 *  a GtkToolItem:
	 * homogeneous:
	 *  whether tool_item is the same size as other homogeneous items
	 * Since 2.4
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_tool_item_set_homogeneous (GtkToolItem *tool_item,  gboolean homogeneous);
		gtk_tool_item_set_homogeneous(gtkToolItem, homogeneous);
	}
	
	/**
	 * Returns whether tool_item is the same size as other homogeneous
	 * items. See gtk_tool_item_set_homogeneous().
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  TRUE if the item is the same size as other homogeneous
	 * item.s
	 * Since 2.4
	 */
	public int getHomogeneous()
	{
		// gboolean gtk_tool_item_get_homogeneous (GtkToolItem *tool_item);
		return gtk_tool_item_get_homogeneous(gtkToolItem);
	}
	
	/**
	 * Sets whether tool_item is allocated extra space when there
	 * is more room on the toolbar then needed for the items. The
	 * effect is that the item gets bigger when the toolbar gets bigger
	 * and smaller when the toolbar gets smaller.
	 * tool_item:
	 *  a GtkToolItem:
	 * expand:
	 *  Whether tool_item is allocated extra space
	 * Since 2.4
	 */
	public void setExpand(int expand)
	{
		// void gtk_tool_item_set_expand (GtkToolItem *tool_item,  gboolean expand);
		gtk_tool_item_set_expand(gtkToolItem, expand);
	}
	
	/**
	 * Returns whether tool_item is allocated extra space.
	 * See gtk_tool_item_set_expand().
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  TRUE if tool_item is allocated extra space.
	 * Since 2.4
	 */
	public int getExpand()
	{
		// gboolean gtk_tool_item_get_expand (GtkToolItem *tool_item);
		return gtk_tool_item_get_expand(gtkToolItem);
	}
	
	/**
	 * Sets the GtkTooltips object to be used for tool_item, the
	 * text to be displayed as tooltip on the item and the private text
	 * to be used. See gtk_tooltips_set_tip().
	 * tool_item:
	 *  a GtkToolItem:
	 * tooltips:
	 *  The GtkTooltips object to be used
	 * tip_text:
	 *  text to be used as tooltip text for tool_item
	 * tip_private:
	 *  text to be used as private tooltip text
	 * Since 2.4
	 */
	public void setTooltip(Tooltips tooltips, char[] tipText, char[] tipPrivate)
	{
		// void gtk_tool_item_set_tooltip (GtkToolItem *tool_item,  GtkTooltips *tooltips,  const gchar *tip_text,  const gchar *tip_private);
		gtk_tool_item_set_tooltip(gtkToolItem, (tooltips is null) ? null : tooltips.getTooltipsStruct(), std.string.toStringz(tipText), std.string.toStringz(tipPrivate));
	}
	
	/**
	 * Sets whether toolitem has a drag window. When TRUE the
	 * toolitem can be used as a drag source through gtk_drag_source_set().
	 * When toolitem has a drag window it will intercept all events,
	 * even those that would otherwise be sent to a child of toolitem.
	 * toolitem:
	 *  a GtkToolItem
	 * use_drag_window:
	 *  Whether toolitem has a drag window.
	 * Since 2.4
	 */
	public void setUseDragWindow(int useDragWindow)
	{
		// void gtk_tool_item_set_use_drag_window  (GtkToolItem *toolitem,  gboolean use_drag_window);
		gtk_tool_item_set_use_drag_window(gtkToolItem, useDragWindow);
	}
	
	/**
	 * Returns whether toolitem has a drag window. See
	 * gtk_tool_item_set_use_drag_window().
	 * toolitem:
	 *  a GtkToolItem
	 * Returns:
	 *  TRUE if toolitem uses a drag window.
	 * Since 2.4
	 */
	public int getUseDragWindow()
	{
		// gboolean gtk_tool_item_get_use_drag_window  (GtkToolItem *toolitem);
		return gtk_tool_item_get_use_drag_window(gtkToolItem);
	}
	
	/**
	 * Sets whether toolitem is visible when the toolbar is docked horizontally.
	 * toolitem:
	 *  a GtkToolItem
	 * visible_horizontal:
	 *  Whether toolitem is visible when in horizontal mode
	 * Since 2.4
	 */
	public void setVisibleHorizontal(int visibleHorizontal)
	{
		// void gtk_tool_item_set_visible_horizontal  (GtkToolItem *toolitem,  gboolean visible_horizontal);
		gtk_tool_item_set_visible_horizontal(gtkToolItem, visibleHorizontal);
	}
	
	/**
	 * Returns whether the toolitem is visible on toolbars that are
	 * docked horizontally.
	 * toolitem:
	 *  a GtkToolItem
	 * Returns:
	 *  TRUE if toolitem is visible on toolbars that are
	 * docked horizontally.
	 * Since 2.4
	 */
	public int getVisibleHorizontal()
	{
		// gboolean gtk_tool_item_get_visible_horizontal  (GtkToolItem *toolitem);
		return gtk_tool_item_get_visible_horizontal(gtkToolItem);
	}
	
	/**
	 * Sets whether toolitem is visible when the toolbar is docked
	 * vertically. Some tool items, such as text entries, are too wide to be
	 * useful on a vertically docked toolbar. If visible_vertical is FALSE
	 * toolitem will not appear on toolbars that are docked vertically.
	 * toolitem:
	 *  a GtkToolItem
	 * visible_vertical:
	 *  whether toolitem is visible when the toolbar
	 * is in vertical mode
	 * Since 2.4
	 */
	public void setVisibleVertical(int visibleVertical)
	{
		// void gtk_tool_item_set_visible_vertical  (GtkToolItem *toolitem,  gboolean visible_vertical);
		gtk_tool_item_set_visible_vertical(gtkToolItem, visibleVertical);
	}
	
	/**
	 * Returns whether toolitem is visible when the toolbar is docked vertically.
	 * See gtk_tool_item_set_visible_vertical().
	 * toolitem:
	 *  a GtkToolItem
	 * Returns:
	 *  Whether toolitem is visible when the toolbar is docked vertically
	 * Since 2.4
	 */
	public int getVisibleVertical()
	{
		// gboolean gtk_tool_item_get_visible_vertical  (GtkToolItem *toolitem);
		return gtk_tool_item_get_visible_vertical(gtkToolItem);
	}
	
	/**
	 * Sets whether tool_item should be considered important. The GtkToolButton
	 * class uses this property to determine whether to show or hide its label
	 * when the toolbar style is GTK_TOOLBAR_BOTH_HORIZ. The result is that
	 * only tool buttons with the "is_important" property set have labels, an
	 * effect known as "priority text"
	 * tool_item:
	 *  a GtkToolItem
	 * is_important:
	 *  whether the tool item should be considered important
	 * Since 2.4
	 */
	public void setIsImportant(int isImportant)
	{
		// void gtk_tool_item_set_is_important (GtkToolItem *tool_item,  gboolean is_important);
		gtk_tool_item_set_is_important(gtkToolItem, isImportant);
	}
	
	/**
	 * Returns whether tool_item is considered important. See
	 * gtk_tool_item_set_is_important()
	 * tool_item:
	 *  a GtkToolItem
	 * Returns:
	 *  TRUE if tool_item is considered important.
	 * Since 2.4
	 */
	public int getIsImportant()
	{
		// gboolean gtk_tool_item_get_is_important (GtkToolItem *tool_item);
		return gtk_tool_item_get_is_important(gtkToolItem);
	}
	
	/**
	 * Returns the icon size used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out what size icons
	 * they should use.
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  a GtkIconSize indicating the icon size used for tool_item
	 * Since 2.4
	 */
	public GtkIconSize getIconSize()
	{
		// GtkIconSize gtk_tool_item_get_icon_size (GtkToolItem *tool_item);
		return gtk_tool_item_get_icon_size(gtkToolItem);
	}
	
	/**
	 * Returns the orientation used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out what size icons
	 * they should use.
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  a GtkOrientation indicating the orientation
	 * used for tool_item
	 * Since 2.4
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_tool_item_get_orientation  (GtkToolItem *tool_item);
		return gtk_tool_item_get_orientation(gtkToolItem);
	}
	
	/**
	 * Returns the toolbar style used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function in the handler of the
	 * GtkToolItem::toolbar_reconfigured signal to find out in what style
	 * the toolbar is displayed and change themselves accordingly
	 * Possibilities are:
	 *  GTK_TOOLBAR_BOTH, meaning the tool item should show
	 * both an icon and a label, stacked vertically
	 *  GTK_TOOLBAR_ICONS, meaning the toolbar shows
	 * only icons
	 *  GTK_TOOLBAR_TEXT, meaning the tool item should only
	 * show text
	 *  GTK_TOOLBAR_BOTH_HORIZ, meaning the tool item should show
	 * both an icon and a label, arranged horizontally (however, note the
	 * GtkToolButton::has_text_horizontally that makes tool buttons not
	 * show labels when the toolbar style is GTK_TOOLBAR_BOTH_HORIZ.
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  A GtkToolbarStyle indicating the toolbar style used
	 * for tool_item.
	 * Since 2.4
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		// GtkToolbarStyle gtk_tool_item_get_toolbar_style  (GtkToolItem *tool_item);
		return gtk_tool_item_get_toolbar_style(gtkToolItem);
	}
	
	/**
	 * Returns the relief style of tool_item. See gtk_button_set_relief_style().
	 * Custom subclasses of GtkToolItem should call this function in the handler
	 * of the GtkToolItem::toolbar_reconfigured signal to find out the
	 * relief style of buttons.
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  a GtkReliefStyle indicating the relief style used
	 * for tool_item.
	 * Since 2.4
	 */
	public GtkReliefStyle getReliefStyle()
	{
		// GtkReliefStyle gtk_tool_item_get_relief_style  (GtkToolItem *tool_item);
		return gtk_tool_item_get_relief_style(gtkToolItem);
	}
	
	/**
	 * Returns the GtkMenuItem that was last set by
	 * gtk_tool_item_set_proxy_menu_item(), ie. the GtkMenuItem
	 * that is going to appear in the overflow menu.
	 * tool_item:
	 *  a GtkToolItem:
	 * Returns:
	 *  The GtkMenuItem that is going to appear in the
	 * overflow menu for tool_item.
	 * Since 2.4
	 */
	public Widget retrieveProxyMenuItem()
	{
		// GtkWidget* gtk_tool_item_retrieve_proxy_menu_item  (GtkToolItem *tool_item);
		return new Widget( gtk_tool_item_retrieve_proxy_menu_item(gtkToolItem) );
	}
	
	/**
	 * If menu_item_id matches the string passed to
	 * gtk_tool_item_set_proxy_menu_item() return the corresponding GtkMenuItem.
	 * Custom subclasses of GtkToolItem should use this function to update
	 * their menu item when the GtkToolItem changes. That the
	 * menu_item_ids must match ensures that a GtkToolItem will not
	 * inadvertently change a menu item that they did not create.
	 * tool_item:
	 *  a GtkToolItem:
	 * menu_item_id:
	 *  a string used to identify the menu item
	 * Returns:
	 *  The GtkMenuItem passed to
	 * gtk_tool_item_set_proxy_menu_item(), if the menu_item_ids match.
	 * Since 2.4
	 */
	public Widget getProxyMenuItem(char[] menuItemId)
	{
		// GtkWidget* gtk_tool_item_get_proxy_menu_item  (GtkToolItem *tool_item,  const gchar *menu_item_id);
		return new Widget( gtk_tool_item_get_proxy_menu_item(gtkToolItem, std.string.toStringz(menuItemId)) );
	}
	
	/**
	 * Sets the GtkMenuItem used in the toolbar overflow menu. The
	 * menu_item_id is used to identify the caller of this function and
	 * should also be used with gtk_tool_item_get_proxy_menu_item().
	 * tool_item:
	 *  a GtkToolItem:
	 * menu_item_id:
	 *  a string used to identify menu_item
	 * menu_item:
	 *  a GtkMenuItem to be used in the overflow menu
	 * Since 2.4
	 */
	public void setProxyMenuItem(char[] menuItemId, Widget menuItem)
	{
		// void gtk_tool_item_set_proxy_menu_item  (GtkToolItem *tool_item,  const gchar *menu_item_id,  GtkWidget *menu_item);
		gtk_tool_item_set_proxy_menu_item(gtkToolItem, std.string.toStringz(menuItemId), (menuItem is null) ? null : menuItem.getWidgetStruct());
	}
	
	/**
	 * Calling this function signals to the toolbar that the
	 * overflow menu item for tool_item has changed. If the
	 * overflow menu is visible when this function it called,
	 * the menu will be rebuilt.
	 * The function must be called when the tool item
	 * changes what it will do in response to the "create_menu_proxy"
	 * signal.
	 * tool_item:
	 *  a GtkToolItem
	 * Since 2.6
	 * Property Details
	 * The "is-important" property
	 *  "is-important" gboolean : Read / Write
	 * Whether the toolbar item is considered important. When TRUE, toolbar buttons show text in GTK_TOOLBAR_BOTH_HORIZ mode.
	 * Default value: FALSE
	 */
	public void rebuildMenu()
	{
		// void gtk_tool_item_rebuild_menu (GtkToolItem *tool_item);
		gtk_tool_item_rebuild_menu(gtkToolItem);
	}
	
	
	
	
}
