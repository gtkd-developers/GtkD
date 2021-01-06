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


module gio.MenuModel;

private import gio.MenuAttributeIter;
private import gio.MenuLinkIter;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GMenuModel represents the contents of a menu -- an ordered list of
 * menu items. The items are associated with actions, which can be
 * activated through them. Items can be grouped in sections, and may
 * have submenus associated with them. Both items and sections usually
 * have some representation data, such as labels or icons. The type of
 * the associated action (ie whether it is stateful, and what kind of
 * state it has) can influence the representation of the item.
 * 
 * The conceptual model of menus in #GMenuModel is hierarchical:
 * sections and submenus are again represented by #GMenuModels.
 * Menus themselves do not define their own roles. Rather, the role
 * of a particular #GMenuModel is defined by the item that references
 * it (or, in the case of the 'root' menu, is defined by the context
 * in which it is used).
 * 
 * As an example, consider the visible portions of this menu:
 * 
 * ## An example menu # {#menu-example}
 * 
 * ![](menu-example.png)
 * 
 * There are 8 "menus" visible in the screenshot: one menubar, two
 * submenus and 5 sections:
 * 
 * - the toplevel menubar (containing 4 items)
 * - the View submenu (containing 3 sections)
 * - the first section of the View submenu (containing 2 items)
 * - the second section of the View submenu (containing 1 item)
 * - the final section of the View submenu (containing 1 item)
 * - the Highlight Mode submenu (containing 2 sections)
 * - the Sources section (containing 2 items)
 * - the Markup section (containing 2 items)
 * 
 * The [example][menu-model] illustrates the conceptual connection between
 * these 8 menus. Each large block in the figure represents a menu and the
 * smaller blocks within the large block represent items in that menu. Some
 * items contain references to other menus.
 * 
 * ## A menu example # {#menu-model}
 * 
 * ![](menu-model.png)
 * 
 * Notice that the separators visible in the [example][menu-example]
 * appear nowhere in the [menu model][menu-model]. This is because
 * separators are not explicitly represented in the menu model. Instead,
 * a separator is inserted between any two non-empty sections of a menu.
 * Section items can have labels just like any other item. In that case,
 * a display system may show a section header instead of a separator.
 * 
 * The motivation for this abstract model of application controls is
 * that modern user interfaces tend to make these controls available
 * outside the application. Examples include global menus, jumplists,
 * dash boards, etc. To support such uses, it is necessary to 'export'
 * information about actions and their representation in menus, which
 * is exactly what the [GActionGroup exporter][gio-GActionGroup-exporter]
 * and the [GMenuModel exporter][gio-GMenuModel-exporter] do for
 * #GActionGroup and #GMenuModel. The client-side counterparts to
 * make use of the exported information are #GDBusActionGroup and
 * #GDBusMenuModel.
 * 
 * The API of #GMenuModel is very generic, with iterators for the
 * attributes and links of an item, see g_menu_model_iterate_item_attributes()
 * and g_menu_model_iterate_item_links(). The 'standard' attributes and
 * link types have predefined names: %G_MENU_ATTRIBUTE_LABEL,
 * %G_MENU_ATTRIBUTE_ACTION, %G_MENU_ATTRIBUTE_TARGET, %G_MENU_LINK_SECTION
 * and %G_MENU_LINK_SUBMENU.
 * 
 * Items in a #GMenuModel represent active controls if they refer to
 * an action that can get activated when the user interacts with the
 * menu item. The reference to the action is encoded by the string id
 * in the %G_MENU_ATTRIBUTE_ACTION attribute. An action id uniquely
 * identifies an action in an action group. Which action group(s) provide
 * actions depends on the context in which the menu model is used.
 * E.g. when the model is exported as the application menu of a
 * #GtkApplication, actions can be application-wide or window-specific
 * (and thus come from two different action groups). By convention, the
 * application-wide actions have names that start with "app.", while the
 * names of window-specific actions start with "win.".
 * 
 * While a wide variety of stateful actions is possible, the following
 * is the minimum that is expected to be supported by all users of exported
 * menu information:
 * - an action with no parameter type and no state
 * - an action with no parameter type and boolean state
 * - an action with string parameter type and string state
 * 
 * ## Stateless
 * 
 * A stateless action typically corresponds to an ordinary menu item.
 * 
 * Selecting such a menu item will activate the action (with no parameter).
 * 
 * ## Boolean State
 * 
 * An action with a boolean state will most typically be used with a "toggle"
 * or "switch" menu item. The state can be set directly, but activating the
 * action (with no parameter) results in the state being toggled.
 * 
 * Selecting a toggle menu item will activate the action. The menu item should
 * be rendered as "checked" when the state is true.
 * 
 * ## String Parameter and State
 * 
 * Actions with string parameters and state will most typically be used to
 * represent an enumerated choice over the items available for a group of
 * radio menu items. Activating the action with a string parameter is
 * equivalent to setting that parameter as the state.
 * 
 * Radio menu items, in addition to being associated with the action, will
 * have a target value. Selecting that menu item will result in activation
 * of the action with the target value as the parameter. The menu item should
 * be rendered as "selected" when the state of the action is equal to the
 * target value of the menu item.
 *
 * Since: 2.32
 */
public class MenuModel : ObjectG
{
	/** the main Gtk struct */
	protected GMenuModel* gMenuModel;

	/** Get the main Gtk struct */
	public GMenuModel* getMenuModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMenuModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMenuModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMenuModel* gMenuModel, bool ownedRef = false)
	{
		this.gMenuModel = gMenuModel;
		super(cast(GObject*)gMenuModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_menu_model_get_type();
	}

	/**
	 * Queries the item at position @item_index in @model for the attribute
	 * specified by @attribute.
	 *
	 * If @expected_type is non-%NULL then it specifies the expected type of
	 * the attribute.  If it is %NULL then any type will be accepted.
	 *
	 * If the attribute exists and matches @expected_type (or if the
	 * expected type is unspecified) then the value is returned.
	 *
	 * If the attribute does not exist, or does not match the expected type
	 * then %NULL is returned.
	 *
	 * Params:
	 *     itemIndex = the index of the item
	 *     attribute = the attribute to query
	 *     expectedType = the expected type of the attribute, or
	 *         %NULL
	 *
	 * Returns: the value of the attribute
	 *
	 * Since: 2.32
	 */
	public Variant getItemAttributeValue(int itemIndex, string attribute, VariantType expectedType)
	{
		auto __p = g_menu_model_get_item_attribute_value(gMenuModel, itemIndex, Str.toStringz(attribute), (expectedType is null) ? null : expectedType.getVariantTypeStruct());

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Queries the item at position @item_index in @model for the link
	 * specified by @link.
	 *
	 * If the link exists, the linked #GMenuModel is returned.  If the link
	 * does not exist, %NULL is returned.
	 *
	 * Params:
	 *     itemIndex = the index of the item
	 *     link = the link to query
	 *
	 * Returns: the linked #GMenuModel, or %NULL
	 *
	 * Since: 2.32
	 */
	public MenuModel getItemLink(int itemIndex, string link)
	{
		auto __p = g_menu_model_get_item_link(gMenuModel, itemIndex, Str.toStringz(link));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p, true);
	}

	/**
	 * Query the number of items in @model.
	 *
	 * Returns: the number of items
	 *
	 * Since: 2.32
	 */
	public int getNItems()
	{
		return g_menu_model_get_n_items(gMenuModel);
	}

	/**
	 * Queries if @model is mutable.
	 *
	 * An immutable #GMenuModel will never emit the #GMenuModel::items-changed
	 * signal. Consumers of the model may make optimisations accordingly.
	 *
	 * Returns: %TRUE if the model is mutable (ie: "items-changed" may be
	 *     emitted).
	 *
	 * Since: 2.32
	 */
	public bool isMutable()
	{
		return g_menu_model_is_mutable(gMenuModel) != 0;
	}

	/**
	 * Requests emission of the #GMenuModel::items-changed signal on @model.
	 *
	 * This function should never be called except by #GMenuModel
	 * subclasses.  Any other calls to this function will very likely lead
	 * to a violation of the interface of the model.
	 *
	 * The implementation should update its internal representation of the
	 * menu before emitting the signal.  The implementation should further
	 * expect to receive queries about the new state of the menu (and
	 * particularly added menu items) while signal handlers are running.
	 *
	 * The implementation must dispatch this call directly from a mainloop
	 * entry and not in response to calls -- particularly those from the
	 * #GMenuModel API.  Said another way: the menu must not change while
	 * user code is running without returning to the mainloop.
	 *
	 * Params:
	 *     position = the position of the change
	 *     removed = the number of items removed
	 *     added = the number of items added
	 *
	 * Since: 2.32
	 */
	public void itemsChanged(int position, int removed, int added)
	{
		g_menu_model_items_changed(gMenuModel, position, removed, added);
	}

	/**
	 * Creates a #GMenuAttributeIter to iterate over the attributes of
	 * the item at position @item_index in @model.
	 *
	 * You must free the iterator with g_object_unref() when you are done.
	 *
	 * Params:
	 *     itemIndex = the index of the item
	 *
	 * Returns: a new #GMenuAttributeIter
	 *
	 * Since: 2.32
	 */
	public MenuAttributeIter iterateItemAttributes(int itemIndex)
	{
		auto __p = g_menu_model_iterate_item_attributes(gMenuModel, itemIndex);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuAttributeIter)(cast(GMenuAttributeIter*) __p, true);
	}

	/**
	 * Creates a #GMenuLinkIter to iterate over the links of the item at
	 * position @item_index in @model.
	 *
	 * You must free the iterator with g_object_unref() when you are done.
	 *
	 * Params:
	 *     itemIndex = the index of the item
	 *
	 * Returns: a new #GMenuLinkIter
	 *
	 * Since: 2.32
	 */
	public MenuLinkIter iterateItemLinks(int itemIndex)
	{
		auto __p = g_menu_model_iterate_item_links(gMenuModel, itemIndex);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuLinkIter)(cast(GMenuLinkIter*) __p, true);
	}

	/**
	 * Emitted when a change has occurred to the menu.
	 *
	 * The only changes that can occur to a menu is that items are removed
	 * or added.  Items may not change (except by being removed and added
	 * back in the same location).  This signal is capable of describing
	 * both of those changes (at the same time).
	 *
	 * The signal means that starting at the index @position, @removed
	 * items were removed and @added items were added in their place.  If
	 * @removed is zero then only items were added.  If @added is zero
	 * then only items were removed.
	 *
	 * As an example, if the menu contains items a, b, c, d (in that
	 * order) and the signal (2, 1, 3) occurs then the new composition of
	 * the menu will be a, b, _, _, _, d (with each _ representing some
	 * new item).
	 *
	 * Signal handlers may query the model (particularly the added items)
	 * and expect to see the results of the modification that is being
	 * reported.  The signal is emitted after the modification.
	 *
	 * Params:
	 *     position = the position of the change
	 *     removed = the number of items removed
	 *     added = the number of items added
	 */
	gulong addOnItemsChanged(void delegate(int, int, int, MenuModel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "items-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
