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


module gtk.Action;

private import gio.IconIF;
private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Image;
private import gtk.Menu;
private import gtk.MenuItem;
private import gtk.ToolItem;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * > In GTK+ 3.10, GtkAction has been deprecated. Use #GAction
 * > instead, and associate actions with #GtkActionable widgets. Use
 * > #GMenuModel for creating menus with gtk_menu_new_from_model().
 * 
 * Actions represent operations that the user can be perform, along with
 * some information how it should be presented in the interface. Each action
 * provides methods to create icons, menu items and toolbar items
 * representing itself.
 * 
 * As well as the callback that is called when the action gets activated,
 * the following also gets associated with the action:
 * 
 * - a name (not translated, for path lookup)
 * 
 * - a label (translated, for display)
 * 
 * - an accelerator
 * 
 * - whether label indicates a stock id
 * 
 * - a tooltip (optional, translated)
 * 
 * - a toolbar label (optional, shorter than label)
 * 
 * 
 * The action will also have some state information:
 * 
 * - visible (shown/hidden)
 * 
 * - sensitive (enabled/disabled)
 * 
 * Apart from regular actions, there are [toggle actions][GtkToggleAction],
 * which can be toggled between two states and
 * [radio actions][GtkRadioAction], of which only one in a group
 * can be in the “active” state. Other actions can be implemented as #GtkAction
 * subclasses.
 * 
 * Each action can have one or more proxy widgets. To act as an action proxy,
 * widget needs to implement #GtkActivatable interface. Proxies mirror the state
 * of the action and should change when the action’s state changes. Properties
 * that are always mirrored by proxies are #GtkAction:sensitive and
 * #GtkAction:visible. #GtkAction:gicon, #GtkAction:icon-name, #GtkAction:label,
 * #GtkAction:short-label and #GtkAction:stock-id properties are only mirorred
 * if proxy widget has #GtkActivatable:use-action-appearance property set to
 * %TRUE.
 * 
 * When the proxy is activated, it should activate its action.
 */
public class Action : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkAction* gtkAction;

	/** Get the main Gtk struct */
	public GtkAction* getActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAction* gtkAction, bool ownedRef = false)
	{
		this.gtkAction = gtkAction;
		super(cast(GObject*)gtkAction, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkAction);

	/**
	 * Creates a new GtkAction object. To add the action to a
	 * GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * See the section called UI Definitions for information on allowed action
	 * names.
	 * Since 2.4
	 * Params:
	 * name =  A unique name for the action
	 * label =  the label displayed in menu items and on buttons, or NULL
	 * tooltip =  a tooltip for the action, or NULL
	 * stockId =  the stock icon to display in widgets representing the
	 *  action.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockId)
	{
		this(name, label, tooltip, cast(string)stockId);
	}

	/**
	 * Gets the stock id of action.
	 * Since 2.16
	 * Returns: the stock id
	 */
	public StockID getStockId()
	{
		return cast(StockID)Str.toString(gtk_action_get_stock_id(gtkAction));
	}

	/**
	 * Sets the stock id on action
	 * Since 2.16
	 * Params:
	 * stockId =  the stock id
	 */
	public void setStockId(StockID stockId)
	{
		setStockId(stockId);
	}

	/**
	 * This function is intended for use by action implementations to
	 * create icons displayed in the proxy widgets.
	 * Since 2.4
	 * Params:
	 * iconSize = the size of the icon that should be created. [type int]
	 * Returns: a widget that displays the icon for this action.
	 */
	public Image createIcon(GtkIconSize iconSize)
	{
		// GtkWidget * gtk_action_create_icon (GtkAction *action,  GtkIconSize icon_size);
		auto p = gtk_action_create_icon(gtkAction, iconSize);
		if(p is null)
		{
			return null;
		}
		return new Image(cast(GtkImage*) p);
	}

	/**
	 * Creates a menu item widget that proxies for the given action.
	 * Since 2.4
	 * Returns: a menu item connected to the action.
	 */
	public MenuItem createMenuItem()
	{
		// GtkWidget * gtk_action_create_menu_item (GtkAction *action);
		auto p = gtk_action_create_menu_item(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new MenuItem(cast(GtkMenuItem*) p);
	}

	/**
	 * Creates a toolbar item widget that proxies for the given action.
	 * Since 2.4
	 * Returns: a toolbar item connected to the action.
	 */
	public ToolItem createToolItem()
	{
		// GtkWidget * gtk_action_create_tool_item (GtkAction *action);
		auto p = gtk_action_create_tool_item(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new ToolItem(cast(GtkToolItem*) p);
	}

	/**
	 * If action provides a GtkMenu widget as a submenu for the menu
	 * item or the toolbar item it creates, this function returns an
	 * instance of that menu.
	 * Since 2.12
	 * Returns: the menu item provided by the action, or NULL.
	 */
	public Menu createMenu()
	{
		// GtkWidget * gtk_action_create_menu (GtkAction *action);
		auto p = gtk_action_create_menu(gtkAction);
		if(p is null)
		{
			return null;
		}
		return new Menu(cast(GtkMenu*) p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_action_get_type();
	}

	/**
	 * Creates a new #GtkAction object. To add the action to a
	 * #GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * See the [UI Definition section][XML-UI] for information on allowed action
	 * names.
	 *
	 * Deprecated: Use #GAction instead, associating it to a widget with
	 * #GtkActionable or creating a #GtkMenu with gtk_menu_new_from_model()
	 *
	 * Params:
	 *     name = A unique name for the action
	 *     label = the label displayed in menu items and on buttons,
	 *         or %NULL
	 *     tooltip = a tooltip for the action, or %NULL
	 *     stockId = the stock icon to display in widgets representing
	 *         the action, or %NULL
	 *
	 * Returns: a new #GtkAction
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string label, string tooltip, string stockId)
	{
		auto p = gtk_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAction*) p, true);
	}

	/**
	 * Emits the “activate” signal on the specified action, if it isn't
	 * insensitive. This gets called by the proxy widgets when they get
	 * activated.
	 *
	 * It can also be used to manually activate an action.
	 *
	 * Deprecated: Use g_action_group_activate_action() on a #GAction instead
	 *
	 * Since: 2.4
	 */
	public void activate()
	{
		gtk_action_activate(gtkAction);
	}

	/**
	 * Disable activation signals from the action
	 *
	 * This is needed when updating the state of your proxy
	 * #GtkActivatable widget could result in calling gtk_action_activate(),
	 * this is a convenience function to avoid recursing in those
	 * cases (updating toggle state for instance).
	 *
	 * Deprecated: Use g_simple_action_set_enabled() to disable the
	 * #GSimpleAction instead
	 *
	 * Since: 2.16
	 */
	public void blockActivate()
	{
		gtk_action_block_activate(gtkAction);
	}

	/**
	 * Installs the accelerator for @action if @action has an
	 * accel path and group. See gtk_action_set_accel_path() and
	 * gtk_action_set_accel_group()
	 *
	 * Since multiple proxies may independently trigger the installation
	 * of the accelerator, the @action counts the number of times this
	 * function has been called and doesn’t remove the accelerator until
	 * gtk_action_disconnect_accelerator() has been called as many times.
	 *
	 * Deprecated: Use #GAction and the accelerator group on an associated
	 * #GtkMenu instead
	 *
	 * Since: 2.4
	 */
	public void connectAccelerator()
	{
		gtk_action_connect_accelerator(gtkAction);
	}

	/**
	 * Undoes the effect of one call to gtk_action_connect_accelerator().
	 *
	 * Deprecated: Use #GAction and the accelerator group on an associated
	 * #GtkMenu instead
	 *
	 * Since: 2.4
	 */
	public void disconnectAccelerator()
	{
		gtk_action_disconnect_accelerator(gtkAction);
	}

	/**
	 * Returns the accel closure for this action.
	 *
	 * Deprecated: Use #GAction and #GtkMenu instead, which have no
	 * equivalent for getting the accel closure
	 *
	 * Returns: the accel closure for this action. The
	 *     returned closure is owned by GTK+ and must not be unreffed
	 *     or modified.
	 *
	 * Since: 2.8
	 */
	public Closure getAccelClosure()
	{
		auto p = gtk_action_get_accel_closure(gtkAction);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Closure)(cast(GClosure*) p);
	}

	/**
	 * Returns the accel path for this action.
	 *
	 * Deprecated: Use #GAction and the accelerator path on an associated
	 * #GtkMenu instead
	 *
	 * Returns: the accel path for this action, or %NULL
	 *     if none is set. The returned string is owned by GTK+
	 *     and must not be freed or modified.
	 *
	 * Since: 2.6
	 */
	public string getAccelPath()
	{
		return Str.toString(gtk_action_get_accel_path(gtkAction));
	}

	/**
	 * Returns whether @action's menu item proxies will always
	 * show their image, if available.
	 *
	 * Deprecated: Use g_menu_item_get_attribute_value() on a #GMenuItem
	 * instead
	 *
	 * Returns: %TRUE if the menu item proxies will always show their image
	 *
	 * Since: 2.20
	 */
	public bool getAlwaysShowImage()
	{
		return gtk_action_get_always_show_image(gtkAction) != 0;
	}

	/**
	 * Gets the gicon of @action.
	 *
	 * Deprecated: Use #GAction instead, and
	 * g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
	 * associated with a #GAction
	 *
	 * Returns: The action’s #GIcon if one is set.
	 *
	 * Since: 2.16
	 */
	public IconIF getGicon()
	{
		auto p = gtk_action_get_gicon(gtkAction);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) p);
	}

	/**
	 * Gets the icon name of @action.
	 *
	 * Deprecated: Use #GAction instead, and
	 * g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
	 * associated with a #GAction
	 *
	 * Returns: the icon name
	 *
	 * Since: 2.16
	 */
	public string getIconName()
	{
		return Str.toString(gtk_action_get_icon_name(gtkAction));
	}

	/**
	 * Checks whether @action is important or not
	 *
	 * Deprecated: Use #GAction instead, and control and monitor whether
	 * labels are shown directly
	 *
	 * Returns: whether @action is important
	 *
	 * Since: 2.16
	 */
	public bool getIsImportant()
	{
		return gtk_action_get_is_important(gtkAction) != 0;
	}

	/**
	 * Gets the label text of @action.
	 *
	 * Deprecated: Use #GAction instead, and get a label from a menu item
	 * with g_menu_item_get_attribute_value(). For #GtkActionable widgets, use the
	 * widget-specific API to get a label
	 *
	 * Returns: the label text
	 *
	 * Since: 2.16
	 */
	public string getLabel()
	{
		return Str.toString(gtk_action_get_label(gtkAction));
	}

	/**
	 * Returns the name of the action.
	 *
	 * Deprecated: Use g_action_get_name() on a #GAction instead
	 *
	 * Returns: the name of the action. The string belongs to GTK+ and should not
	 *     be freed.
	 *
	 * Since: 2.4
	 */
	public string getName()
	{
		return Str.toString(gtk_action_get_name(gtkAction));
	}

	/**
	 * Returns the proxy widgets for an action.
	 * See also gtk_activatable_get_related_action().
	 *
	 * Returns: a #GSList of proxy widgets. The list is owned by GTK+
	 *     and must not be modified.
	 *
	 * Since: 2.4
	 */
	public ListSG getProxies()
	{
		auto p = gtk_action_get_proxies(gtkAction);

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Returns whether the action itself is sensitive. Note that this doesn’t
	 * necessarily mean effective sensitivity. See gtk_action_is_sensitive()
	 * for that.
	 *
	 * Deprecated: Use g_action_get_enabled() on a #GAction
	 * instead
	 *
	 * Returns: %TRUE if the action itself is sensitive.
	 *
	 * Since: 2.4
	 */
	public bool getSensitive()
	{
		return gtk_action_get_sensitive(gtkAction) != 0;
	}

	/**
	 * Gets the short label text of @action.
	 *
	 * Deprecated: Use #GAction instead, which has no equivalent of short
	 * labels
	 *
	 * Returns: the short label text.
	 *
	 * Since: 2.16
	 */
	public string getShortLabel()
	{
		return Str.toString(gtk_action_get_short_label(gtkAction));
	}

	/**
	 * Gets the tooltip text of @action.
	 *
	 * Deprecated: Use #GAction instead, and get tooltips from associated
	 * #GtkActionable widgets with gtk_widget_get_tooltip_text()
	 *
	 * Returns: the tooltip text
	 *
	 * Since: 2.16
	 */
	public string getTooltip()
	{
		return Str.toString(gtk_action_get_tooltip(gtkAction));
	}

	/**
	 * Returns whether the action itself is visible. Note that this doesn’t
	 * necessarily mean effective visibility. See gtk_action_is_sensitive()
	 * for that.
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the state of
	 * #GtkActionable widgets directly
	 *
	 * Returns: %TRUE if the action itself is visible.
	 *
	 * Since: 2.4
	 */
	public bool getVisible()
	{
		return gtk_action_get_visible(gtkAction) != 0;
	}

	/**
	 * Checks whether @action is visible when horizontal
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the
	 * visibility of associated widgets and menu items directly
	 *
	 * Returns: whether @action is visible when horizontal
	 *
	 * Since: 2.16
	 */
	public bool getVisibleHorizontal()
	{
		return gtk_action_get_visible_horizontal(gtkAction) != 0;
	}

	/**
	 * Checks whether @action is visible when horizontal
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the
	 * visibility of associated widgets and menu items directly
	 *
	 * Returns: whether @action is visible when horizontal
	 *
	 * Since: 2.16
	 */
	public bool getVisibleVertical()
	{
		return gtk_action_get_visible_vertical(gtkAction) != 0;
	}

	/**
	 * Returns whether the action is effectively sensitive.
	 *
	 * Deprecated: Use g_action_get_enabled() on a #GAction
	 * instead
	 *
	 * Returns: %TRUE if the action and its associated action group
	 *     are both sensitive.
	 *
	 * Since: 2.4
	 */
	public bool isSensitive()
	{
		return gtk_action_is_sensitive(gtkAction) != 0;
	}

	/**
	 * Returns whether the action is effectively visible.
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the state of
	 * #GtkActionable widgets directly
	 *
	 * Returns: %TRUE if the action and its associated action group
	 *     are both visible.
	 *
	 * Since: 2.4
	 */
	public bool isVisible()
	{
		return gtk_action_is_visible(gtkAction) != 0;
	}

	/**
	 * Sets the #GtkAccelGroup in which the accelerator for this action
	 * will be installed.
	 *
	 * Deprecated: Use #GAction and the accelerator group on an associated
	 * #GtkMenu instead
	 *
	 * Params:
	 *     accelGroup = a #GtkAccelGroup or %NULL
	 *
	 * Since: 2.4
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		gtk_action_set_accel_group(gtkAction, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}

	/**
	 * Sets the accel path for this action.  All proxy widgets associated
	 * with the action will have this accel path, so that their
	 * accelerators are consistent.
	 *
	 * Note that @accel_path string will be stored in a #GQuark. Therefore, if you
	 * pass a static string, you can save some memory by interning it first with
	 * g_intern_static_string().
	 *
	 * Deprecated: Use #GAction and the accelerator path on an associated
	 * #GtkMenu instead
	 *
	 * Params:
	 *     accelPath = the accelerator path
	 *
	 * Since: 2.4
	 */
	public void setAccelPath(string accelPath)
	{
		gtk_action_set_accel_path(gtkAction, Str.toStringz(accelPath));
	}

	/**
	 * Sets whether @action's menu item proxies will ignore the
	 * #GtkSettings:gtk-menu-images setting and always show their image, if available.
	 *
	 * Use this if the menu item would be useless or hard to use
	 * without their image.
	 *
	 * Deprecated: Use g_menu_item_set_icon() on a #GMenuItem instead, if the
	 * item should have an image
	 *
	 * Params:
	 *     alwaysShow = %TRUE if menuitem proxies should always show their image
	 *
	 * Since: 2.20
	 */
	public void setAlwaysShowImage(bool alwaysShow)
	{
		gtk_action_set_always_show_image(gtkAction, alwaysShow);
	}

	/**
	 * Sets the icon of @action.
	 *
	 * Deprecated: Use #GAction instead, and g_menu_item_set_icon() to set an
	 * icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
	 * add a #GtkImage to a #GtkButton
	 *
	 * Params:
	 *     icon = the #GIcon to set
	 *
	 * Since: 2.16
	 */
	public void setGicon(IconIF icon)
	{
		gtk_action_set_gicon(gtkAction, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets the icon name on @action
	 *
	 * Deprecated: Use #GAction instead, and g_menu_item_set_icon() to set an
	 * icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
	 * add a #GtkImage to a #GtkButton
	 *
	 * Params:
	 *     iconName = the icon name to set
	 *
	 * Since: 2.16
	 */
	public void setIconName(string iconName)
	{
		gtk_action_set_icon_name(gtkAction, Str.toStringz(iconName));
	}

	/**
	 * Sets whether the action is important, this attribute is used
	 * primarily by toolbar items to decide whether to show a label
	 * or not.
	 *
	 * Deprecated: Use #GAction instead, and control and monitor whether
	 * labels are shown directly
	 *
	 * Params:
	 *     isImportant = %TRUE to make the action important
	 *
	 * Since: 2.16
	 */
	public void setIsImportant(bool isImportant)
	{
		gtk_action_set_is_important(gtkAction, isImportant);
	}

	/**
	 * Sets the label of @action.
	 *
	 * Deprecated: Use #GAction instead, and set a label on a menu item with
	 * g_menu_item_set_label(). For #GtkActionable widgets, use the widget-specific
	 * API to set a label
	 *
	 * Params:
	 *     label = the label text to set
	 *
	 * Since: 2.16
	 */
	public void setLabel(string label)
	{
		gtk_action_set_label(gtkAction, Str.toStringz(label));
	}

	/**
	 * Sets the :sensitive property of the action to @sensitive. Note that
	 * this doesn’t necessarily mean effective sensitivity. See
	 * gtk_action_is_sensitive()
	 * for that.
	 *
	 * Deprecated: Use g_simple_action_set_enabled() on a #GSimpleAction
	 * instead
	 *
	 * Params:
	 *     sensitive = %TRUE to make the action sensitive
	 *
	 * Since: 2.6
	 */
	public void setSensitive(bool sensitive)
	{
		gtk_action_set_sensitive(gtkAction, sensitive);
	}

	/**
	 * Sets a shorter label text on @action.
	 *
	 * Deprecated: Use #GAction instead, which has no equivalent of short
	 * labels
	 *
	 * Params:
	 *     shortLabel = the label text to set
	 *
	 * Since: 2.16
	 */
	public void setShortLabel(string shortLabel)
	{
		gtk_action_set_short_label(gtkAction, Str.toStringz(shortLabel));
	}

	/**
	 * Sets the stock id on @action
	 *
	 * Deprecated: Use #GAction instead, which has no equivalent of stock
	 * items
	 *
	 * Params:
	 *     stockId = the stock id
	 *
	 * Since: 2.16
	 */
	public void setStockId(string stockId)
	{
		gtk_action_set_stock_id(gtkAction, Str.toStringz(stockId));
	}

	/**
	 * Sets the tooltip text on @action
	 *
	 * Deprecated: Use #GAction instead, and set tooltips on associated
	 * #GtkActionable widgets with gtk_widget_set_tooltip_text()
	 *
	 * Params:
	 *     tooltip = the tooltip text
	 *
	 * Since: 2.16
	 */
	public void setTooltip(string tooltip)
	{
		gtk_action_set_tooltip(gtkAction, Str.toStringz(tooltip));
	}

	/**
	 * Sets the :visible property of the action to @visible. Note that
	 * this doesn’t necessarily mean effective visibility. See
	 * gtk_action_is_visible()
	 * for that.
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the state of
	 * #GtkActionable widgets directly
	 *
	 * Params:
	 *     visible = %TRUE to make the action visible
	 *
	 * Since: 2.6
	 */
	public void setVisible(bool visible)
	{
		gtk_action_set_visible(gtkAction, visible);
	}

	/**
	 * Sets whether @action is visible when horizontal
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the
	 * visibility of associated widgets and menu items directly
	 *
	 * Params:
	 *     visibleHorizontal = whether the action is visible horizontally
	 *
	 * Since: 2.16
	 */
	public void setVisibleHorizontal(bool visibleHorizontal)
	{
		gtk_action_set_visible_horizontal(gtkAction, visibleHorizontal);
	}

	/**
	 * Sets whether @action is visible when vertical
	 *
	 * Deprecated: Use #GAction instead, and control and monitor the
	 * visibility of associated widgets and menu items directly
	 *
	 * Params:
	 *     visibleVertical = whether the action is visible vertically
	 *
	 * Since: 2.16
	 */
	public void setVisibleVertical(bool visibleVertical)
	{
		gtk_action_set_visible_vertical(gtkAction, visibleVertical);
	}

	/**
	 * Reenable activation signals from the action
	 *
	 * Deprecated: Use g_simple_action_set_enabled() to enable the
	 * #GSimpleAction instead
	 *
	 * Since: 2.16
	 */
	public void unblockActivate()
	{
		gtk_action_unblock_activate(gtkAction);
	}

	/**
	 * The "activate" signal is emitted when the action is activated.
	 *
	 * Deprecated: Use #GSimpleAction::activate instead
	 *
	 * Since: 2.4
	 */
	gulong addOnActivate(void delegate(Action) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
