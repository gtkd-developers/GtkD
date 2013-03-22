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
 * inFile  = GtkToolItem.html
 * outPack = gtk
 * outFile = ToolItem
 * strct   = GtkToolItem
 * realStrct=
 * ctorStrct=
 * clss    = ToolItem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActivatableIF
 * prefixes:
 * 	- gtk_tool_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.SizeGroup
 * 	- gtk.Widget
 * 	- gtk.ActivatableT
 * 	- gtk.ActivatableIF
 * structWrap:
 * 	- GtkSizeGroup* -> SizeGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 * 	- setTooltipText
 * 	- setTooltipMarkup
 */

module gtk.ToolItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.SizeGroup;
private import gtk.Widget;
private import gtk.ActivatableT;
private import gtk.ActivatableIF;



private import gtk.Bin;

/**
 * GtkToolItems are widgets that can appear on a toolbar. To
 * create a toolbar item that contain something else than a button, use
 * gtk_tool_item_new(). Use gtk_container_add() to add a child
 * widget to the tool item.
 *
 * For toolbar items that contain buttons, see the GtkToolButton,
 * GtkToggleToolButton and GtkRadioToolButton classes.
 *
 * See the GtkToolbar class for a description of the toolbar widget, and
 * GtkToolShell for a description of the tool shell interface.
 */
public class ToolItem : Bin, ActivatableIF
{
	
	/** the main Gtk struct */
	protected GtkToolItem* gtkToolItem;
	
	
	public GtkToolItem* getToolItemStruct()
	{
		return gtkToolItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToolItem = cast(GtkToolItem*)obj;
	}
	
	// add the Activatable capabilities
	mixin ActivatableT!(GtkToolItem);
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(ToolItem)[] onCreateMenuProxyListeners;
	/**
	 * This signal is emitted when the toolbar needs information from tool_item
	 * about whether the item should appear in the toolbar overflow menu. In
	 * response the tool item should either
	 * call gtk_tool_item_set_proxy_menu_item() with a NULL
	 * pointer and return TRUE to indicate that the item should not appear
	 * in the overflow menu
	 *  call gtk_tool_item_set_proxy_menu_item() with a new menu
	 * item and return TRUE, or
	 *  return FALSE to indicate that the signal was not
	 * handled by the item. This means that
	 * the item will not appear in the overflow menu unless a later handler
	 * installs a menu item.
	 * The toolbar may cache the result of this signal. When the tool item changes
	 * how it will respond to this signal it must call gtk_tool_item_rebuild_menu()
	 * to invalidate the cache and ensure that the toolbar rebuilds its overflow
	 * menu.
	 * TRUE if the signal was handled, FALSE if not
	 */
	void addOnCreateMenuProxy(bool delegate(ToolItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("create-menu-proxy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"create-menu-proxy",
			cast(GCallback)&callBackCreateMenuProxy,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["create-menu-proxy"] = 1;
		}
		onCreateMenuProxyListeners ~= dlg;
	}
	extern(C) static gboolean callBackCreateMenuProxy(GtkToolItem* toolItemStruct, ToolItem _toolItem)
	{
		foreach ( bool delegate(ToolItem) dlg ; _toolItem.onCreateMenuProxyListeners )
		{
			if ( dlg(_toolItem) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(ToolItem)[] onToolbarReconfiguredListeners;
	/**
	 * This signal is emitted when some property of the toolbar that the
	 * item is a child of changes. For custom subclasses of GtkToolItem,
	 * the default handler of this signal use the functions
	 * gtk_tool_shell_get_orientation()
	 * gtk_tool_shell_get_style()
	 * gtk_tool_shell_get_icon_size()
	 * gtk_tool_shell_get_relief_style()
	 * to find out what the toolbar should look like and change
	 * themselves accordingly.
	 * See Also
	 * GtkToolbar
	 * The toolbar widget
	 * GtkToolButton
	 * A subclass of GtkToolItem that displays buttons on
	 *  the toolbar
	 * GtkSeparatorToolItem
	 * A subclass of GtkToolItem that separates groups of
	 *  items on a toolbar
	 */
	void addOnToolbarReconfigured(void delegate(ToolItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toolbar-reconfigured" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toolbar-reconfigured",
			cast(GCallback)&callBackToolbarReconfigured,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toolbar-reconfigured"] = 1;
		}
		onToolbarReconfiguredListeners ~= dlg;
	}
	extern(C) static void callBackToolbarReconfigured(GtkToolItem* toolItemStruct, ToolItem _toolItem)
	{
		foreach ( void delegate(ToolItem) dlg ; _toolItem.onToolbarReconfiguredListeners )
		{
			dlg(_toolItem);
		}
	}
	
	
	/**
	 * Creates a new GtkToolItem
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkToolItem * gtk_tool_item_new (void);
		auto p = gtk_tool_item_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_item_new()");
		}
		this(cast(GtkToolItem*) p);
	}
	
	/**
	 * Sets whether tool_item is to be allocated the same size as other
	 * homogeneous items. The effect is that all homogeneous items will have
	 * the same width as the widest of the items.
	 * Since 2.4
	 * Params:
	 * homogeneous = whether tool_item is the same size as other homogeneous items
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_tool_item_set_homogeneous (GtkToolItem *tool_item,  gboolean homogeneous);
		gtk_tool_item_set_homogeneous(gtkToolItem, homogeneous);
	}
	
	/**
	 * Returns whether tool_item is the same size as other homogeneous
	 * items. See gtk_tool_item_set_homogeneous().
	 * Since 2.4
	 * Returns: TRUE if the item is the same size as other homogeneous items.
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
	 * Since 2.4
	 * Params:
	 * expand = Whether tool_item is allocated extra space
	 */
	public void setExpand(int expand)
	{
		// void gtk_tool_item_set_expand (GtkToolItem *tool_item,  gboolean expand);
		gtk_tool_item_set_expand(gtkToolItem, expand);
	}
	
	/**
	 * Returns whether tool_item is allocated extra space.
	 * See gtk_tool_item_set_expand().
	 * Since 2.4
	 * Returns: TRUE if tool_item is allocated extra space.
	 */
	public int getExpand()
	{
		// gboolean gtk_tool_item_get_expand (GtkToolItem *tool_item);
		return gtk_tool_item_get_expand(gtkToolItem);
	}
	
	/**
	 * Sets the text to be displayed as tooltip on the item.
	 * See gtk_widget_set_tooltip_text().
	 * Since 2.12
	 * Params:
	 * text = text to be used as tooltip for tool_item
	 */
	public override void setTooltipText(string text)
	{
		// void gtk_tool_item_set_tooltip_text (GtkToolItem *tool_item,  const gchar *text);
		gtk_tool_item_set_tooltip_text(gtkToolItem, Str.toStringz(text));
	}
	
	/**
	 * Sets the markup text to be displayed as tooltip on the item.
	 * See gtk_widget_set_tooltip_markup().
	 * Since 2.12
	 * Params:
	 * markup = markup text to be used as tooltip for tool_item
	 */
	public override void setTooltipMarkup(string markup)
	{
		// void gtk_tool_item_set_tooltip_markup (GtkToolItem *tool_item,  const gchar *markup);
		gtk_tool_item_set_tooltip_markup(gtkToolItem, Str.toStringz(markup));
	}
	
	/**
	 * Sets whether tool_item has a drag window. When TRUE the
	 * toolitem can be used as a drag source through gtk_drag_source_set().
	 * When tool_item has a drag window it will intercept all events,
	 * even those that would otherwise be sent to a child of tool_item.
	 * Since 2.4
	 * Params:
	 * useDragWindow = Whether tool_item has a drag window.
	 */
	public void setUseDragWindow(int useDragWindow)
	{
		// void gtk_tool_item_set_use_drag_window (GtkToolItem *tool_item,  gboolean use_drag_window);
		gtk_tool_item_set_use_drag_window(gtkToolItem, useDragWindow);
	}
	
	/**
	 * Returns whether tool_item has a drag window. See
	 * gtk_tool_item_set_use_drag_window().
	 * Since 2.4
	 * Returns: TRUE if tool_item uses a drag window.
	 */
	public int getUseDragWindow()
	{
		// gboolean gtk_tool_item_get_use_drag_window (GtkToolItem *tool_item);
		return gtk_tool_item_get_use_drag_window(gtkToolItem);
	}
	
	/**
	 * Sets whether tool_item is visible when the toolbar is docked horizontally.
	 * Since 2.4
	 * Params:
	 * visibleHorizontal = Whether tool_item is visible when in horizontal mode
	 */
	public void setVisibleHorizontal(int visibleHorizontal)
	{
		// void gtk_tool_item_set_visible_horizontal  (GtkToolItem *tool_item,  gboolean visible_horizontal);
		gtk_tool_item_set_visible_horizontal(gtkToolItem, visibleHorizontal);
	}
	
	/**
	 * Returns whether the tool_item is visible on toolbars that are
	 * docked horizontally.
	 * Since 2.4
	 * Returns: TRUE if tool_item is visible on toolbars that are docked horizontally.
	 */
	public int getVisibleHorizontal()
	{
		// gboolean gtk_tool_item_get_visible_horizontal  (GtkToolItem *tool_item);
		return gtk_tool_item_get_visible_horizontal(gtkToolItem);
	}
	
	/**
	 * Sets whether tool_item is visible when the toolbar is docked
	 * vertically. Some tool items, such as text entries, are too wide to be
	 * useful on a vertically docked toolbar. If visible_vertical is FALSE
	 * tool_item will not appear on toolbars that are docked vertically.
	 * Since 2.4
	 * Params:
	 * visibleVertical = whether tool_item is visible when the toolbar
	 * is in vertical mode
	 */
	public void setVisibleVertical(int visibleVertical)
	{
		// void gtk_tool_item_set_visible_vertical (GtkToolItem *tool_item,  gboolean visible_vertical);
		gtk_tool_item_set_visible_vertical(gtkToolItem, visibleVertical);
	}
	
	/**
	 * Returns whether tool_item is visible when the toolbar is docked vertically.
	 * See gtk_tool_item_set_visible_vertical().
	 * Since 2.4
	 * Returns: Whether tool_item is visible when the toolbar is docked vertically
	 */
	public int getVisibleVertical()
	{
		// gboolean gtk_tool_item_get_visible_vertical (GtkToolItem *tool_item);
		return gtk_tool_item_get_visible_vertical(gtkToolItem);
	}
	
	/**
	 * Sets whether tool_item should be considered important. The GtkToolButton
	 * class uses this property to determine whether to show or hide its label
	 * when the toolbar style is GTK_TOOLBAR_BOTH_HORIZ. The result is that
	 * only tool buttons with the "is_important" property set have labels, an
	 * effect known as "priority text"
	 * Since 2.4
	 * Params:
	 * isImportant = whether the tool item should be considered important
	 */
	public void setIsImportant(int isImportant)
	{
		// void gtk_tool_item_set_is_important (GtkToolItem *tool_item,  gboolean is_important);
		gtk_tool_item_set_is_important(gtkToolItem, isImportant);
	}
	
	/**
	 * Returns whether tool_item is considered important. See
	 * gtk_tool_item_set_is_important()
	 * Since 2.4
	 * Returns: TRUE if tool_item is considered important.
	 */
	public int getIsImportant()
	{
		// gboolean gtk_tool_item_get_is_important (GtkToolItem *tool_item);
		return gtk_tool_item_get_is_important(gtkToolItem);
	}
	
	/**
	 * Returns the ellipsize mode used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out how text should
	 * be ellipsized.
	 * Since 2.20
	 * Returns: a PangoEllipsizeMode indicating how text in tool_item should be ellipsized.
	 */
	public PangoEllipsizeMode getEllipsizeMode()
	{
		// PangoEllipsizeMode gtk_tool_item_get_ellipsize_mode (GtkToolItem *tool_item);
		return gtk_tool_item_get_ellipsize_mode(gtkToolItem);
	}
	
	/**
	 * Returns the icon size used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out what size icons
	 * they should use.
	 * Since 2.4
	 * Returns: a GtkIconSize indicating the icon size used for tool_item. [type int]
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
	 * Since 2.4
	 * Returns: a GtkOrientation indicating the orientation used for tool_item
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_tool_item_get_orientation (GtkToolItem *tool_item);
		return gtk_tool_item_get_orientation(gtkToolItem);
	}
	
	/**
	 * Returns the toolbar style used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function in the handler of the
	 * GtkToolItem::toolbar_reconfigured signal to find out in what style
	 * the toolbar is displayed and change themselves accordingly
	 * Since 2.4
	 * Returns: A GtkToolbarStyle indicating the toolbar style used for tool_item.
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		// GtkToolbarStyle gtk_tool_item_get_toolbar_style (GtkToolItem *tool_item);
		return gtk_tool_item_get_toolbar_style(gtkToolItem);
	}
	
	/**
	 * Returns the relief style of tool_item. See gtk_button_set_relief().
	 * Custom subclasses of GtkToolItem should call this function in the handler
	 * of the "toolbar_reconfigured" signal to find out the
	 * relief style of buttons.
	 * Since 2.4
	 * Returns: a GtkReliefStyle indicating the relief style used for tool_item.
	 */
	public GtkReliefStyle getReliefStyle()
	{
		// GtkReliefStyle gtk_tool_item_get_relief_style (GtkToolItem *tool_item);
		return gtk_tool_item_get_relief_style(gtkToolItem);
	}
	
	/**
	 * Returns the text alignment used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out how text should
	 * be aligned.
	 * Since 2.20
	 * Returns: a gfloat indicating the horizontal text alignment used for tool_item
	 */
	public float getTextAlignment()
	{
		// gfloat gtk_tool_item_get_text_alignment (GtkToolItem *tool_item);
		return gtk_tool_item_get_text_alignment(gtkToolItem);
	}
	
	/**
	 * Returns the text orientation used for tool_item. Custom subclasses of
	 * GtkToolItem should call this function to find out how text should
	 * be orientated.
	 * Since 2.20
	 * Returns: a GtkOrientation indicating the text orientation used for tool_item
	 */
	public GtkOrientation getTextOrientation()
	{
		// GtkOrientation gtk_tool_item_get_text_orientation (GtkToolItem *tool_item);
		return gtk_tool_item_get_text_orientation(gtkToolItem);
	}
	
	/**
	 * Returns the GtkMenuItem that was last set by
	 * gtk_tool_item_set_proxy_menu_item(), ie. the GtkMenuItem
	 * that is going to appear in the overflow menu.
	 * Since 2.4
	 * Returns: The GtkMenuItem that is going to appear in the overflow menu for tool_item. [transfer none]
	 */
	public Widget retrieveProxyMenuItem()
	{
		// GtkWidget * gtk_tool_item_retrieve_proxy_menu_item  (GtkToolItem *tool_item);
		auto p = gtk_tool_item_retrieve_proxy_menu_item(gtkToolItem);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * If menu_item_id matches the string passed to
	 * gtk_tool_item_set_proxy_menu_item() return the corresponding GtkMenuItem.
	 * Custom subclasses of GtkToolItem should use this function to
	 * update their menu item when the GtkToolItem changes. That the
	 * menu_item_ids must match ensures that a GtkToolItem
	 * will not inadvertently change a menu item that they did not create.
	 * Since 2.4
	 * Params:
	 * menuItemId = a string used to identify the menu item
	 * Returns: The GtkMenuItem passed to gtk_tool_item_set_proxy_menu_item(), if the menu_item_ids match. [transfer none]
	 */
	public Widget getProxyMenuItem(string menuItemId)
	{
		// GtkWidget * gtk_tool_item_get_proxy_menu_item (GtkToolItem *tool_item,  const gchar *menu_item_id);
		auto p = gtk_tool_item_get_proxy_menu_item(gtkToolItem, Str.toStringz(menuItemId));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the GtkMenuItem used in the toolbar overflow menu. The
	 * menu_item_id is used to identify the caller of this function and
	 * should also be used with gtk_tool_item_get_proxy_menu_item().
	 * Since 2.4
	 * Params:
	 * menuItemId = a string used to identify menu_item
	 * menuItem = a GtkMenuItem to be used in the overflow menu
	 */
	public void setProxyMenuItem(string menuItemId, Widget menuItem)
	{
		// void gtk_tool_item_set_proxy_menu_item (GtkToolItem *tool_item,  const gchar *menu_item_id,  GtkWidget *menu_item);
		gtk_tool_item_set_proxy_menu_item(gtkToolItem, Str.toStringz(menuItemId), (menuItem is null) ? null : menuItem.getWidgetStruct());
	}
	
	/**
	 * Calling this function signals to the toolbar that the
	 * overflow menu item for tool_item has changed. If the
	 * overflow menu is visible when this function it called,
	 * the menu will be rebuilt.
	 * The function must be called when the tool item changes what it
	 * will do in response to the "create-menu-proxy" signal.
	 * Since 2.6
	 */
	public void rebuildMenu()
	{
		// void gtk_tool_item_rebuild_menu (GtkToolItem *tool_item);
		gtk_tool_item_rebuild_menu(gtkToolItem);
	}
	
	/**
	 * Emits the signal "toolbar_reconfigured" on tool_item.
	 * GtkToolbar and other GtkToolShell implementations use this function
	 * to notify children, when some aspect of their configuration changes.
	 * Since 2.14
	 */
	public void toolbarReconfigured()
	{
		// void gtk_tool_item_toolbar_reconfigured (GtkToolItem *tool_item);
		gtk_tool_item_toolbar_reconfigured(gtkToolItem);
	}
	
	/**
	 * Returns the size group used for labels in tool_item.
	 * Custom subclasses of GtkToolItem should call this function
	 * and use the size group for labels.
	 * Since 2.20
	 * Returns: a GtkSizeGroup. [transfer none]
	 */
	public SizeGroup getTextSizeGroup()
	{
		// GtkSizeGroup * gtk_tool_item_get_text_size_group (GtkToolItem *tool_item);
		auto p = gtk_tool_item_get_text_size_group(gtkToolItem);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SizeGroup)(cast(GtkSizeGroup*) p);
	}
}
