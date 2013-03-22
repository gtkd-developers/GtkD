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
 * inFile  = 
 * outPack = gio
 * outFile = MenuLinkIter
 * strct   = GMenuLinkIter
 * realStrct=
 * ctorStrct=
 * clss    = MenuLinkIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_menu_link_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- items-changed
 * imports:
 * 	- glib.Str
 * 	- gio.MenuModel
 * structWrap:
 * 	- GMenuModel* -> MenuModel
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.MenuLinkIter;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.MenuModel;




/**
 * GMenuModel represents the contents of a menu -- an ordered list of
 * menu items. The items are associated with actions, which can be
 * activated through them. Items can be grouped in sections, and may
 * have submenus associated with them. Both items and sections usually
 * have some representation data, such as labels or icons. The type of
 * the associated action (ie whether it is stateful, and what kind of
 * state it has) can influence the representation of the item.
 *
 * The conceptual model of menus in GMenuModel is hierarchical:
 * sections and submenus are again represented by GMenuModels.
 * Menus themselves do not define their own roles. Rather, the role
 * of a particular GMenuModel is defined by the item that references
 * it (or, in the case of the 'root' menu, is defined by the context
 * in which it is used).
 *
 * As an example, consider the visible portions of the menu in
 *  Figure 2, “An example menu”.
 *
 * Figure 2. An example menu
 *
 * There are 8 "menus" visible in the screenshot: one menubar, two
 * submenus and 5 sections:
 *
 * the toplevel menubar (containing 4 items)
 * the View submenu (containing 3 sections)
 * the first section of the View submenu (containing 2 items)
 * the second section of the View submenu (containing 1 item)
 * the final section of the View submenu (containing 1 item)
 * the Highlight Mode submenu (containing 2 sections)
 * the Sources section (containing 2 items)
 * the Markup section (containing 2 items)
 *
 *  Figure 3, “A menu model” illustrates the conceptual connection between
 * these 8 menus. Each large block in the figure represents a menu and the
 * smaller blocks within the large block represent items in that menu. Some
 * items contain references to other menus.
 *
 * Figure 3. A menu model
 *
 * Notice that the separators visible in Figure 2, “An example menu”
 * appear nowhere in Figure 3, “A menu model”. This is because
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
 * is exactly what the
 * GActionGroup exporter
 * and the
 * GMenuModel exporter
 * do for GActionGroup and GMenuModel. The client-side counterparts
 * to make use of the exported information are GDBusActionGroup and
 * GDBusMenuModel.
 *
 * The API of GMenuModel is very generic, with iterators for the
 * attributes and links of an item, see g_menu_model_iterate_item_attributes()
 * and g_menu_model_iterate_item_links(). The 'standard' attributes and
 * link types have predefined names: G_MENU_ATTRIBUTE_LABEL,
 * G_MENU_ATTRIBUTE_ACTION, G_MENU_ATTRIBUTE_TARGET, G_MENU_LINK_SECTION
 * and G_MENU_LINK_SUBMENU.
 *
 * Items in a GMenuModel represent active controls if they refer to
 * an action that can get activated when the user interacts with the
 * menu item. The reference to the action is encoded by the string id
 * in the G_MENU_ATTRIBUTE_ACTION attribute. An action id uniquely
 * identifies an action in an action group. Which action group(s) provide
 * actions depends on the context in which the menu model is used.
 * E.g. when the model is exported as the application menu of a
 * GtkApplication, actions can be application-wide or window-specific
 * (and thus come from two different action groups). By convention, the
 * application-wide actions have names that start with "app.", while the
 * names of window-specific actions start with "win.".
 *
 * While a wide variety of stateful actions is possible, the following
 * is the minimum that is expected to be supported by all users of exported
 * menu information:
 *
 * an action with no parameter type and no state
 * an action with no parameter type and boolean state
 * an action with string parameter type and string state
 *
 * Stateless.
 * A stateless action typically corresponds to an ordinary menu item.
 *
 * Selecting such a menu item will activate the action (with no parameter).
 *
 * Boolean State.
 * An action with a boolean state will most typically be used with a "toggle"
 * or "switch" menu item. The state can be set directly, but activating the
 * action (with no parameter) results in the state being toggled.
 *
 * Selecting a toggle menu item will activate the action. The menu item should
 * be rendered as "checked" when the state is true.
 *
 * String Parameter and State.
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
 */
public class MenuLinkIter
{
	
	/** the main Gtk struct */
	protected GMenuLinkIter* gMenuLinkIter;
	
	
	public GMenuLinkIter* getMenuLinkIterStruct()
	{
		return gMenuLinkIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMenuLinkIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMenuLinkIter* gMenuLinkIter)
	{
		this.gMenuLinkIter = gMenuLinkIter;
	}
	
	/**
	 */
	
	/**
	 * Gets the name of the link at the current iterator position.
	 * The iterator is not advanced.
	 * Since 2.32
	 * Returns: the type of the link
	 */
	public string getName()
	{
		// const gchar * g_menu_link_iter_get_name (GMenuLinkIter *iter);
		return Str.toString(g_menu_link_iter_get_name(gMenuLinkIter));
	}
	
	/**
	 * This function combines g_menu_link_iter_next() with
	 * g_menu_link_iter_get_name() and g_menu_link_iter_get_value().
	 * First the iterator is advanced to the next (possibly first) link.
	 * If that fails, then FALSE is returned and there are no other effects.
	 * If successful, out_link and value are set to the name and GMenuModel
	 * of the link that has just been advanced to. At this point,
	 * g_menu_link_iter_get_name() and g_menu_link_iter_get_value() will return the
	 * same values again.
	 * The value returned in out_link remains valid for as long as the iterator
	 * remains at the current position. The value returned in value must
	 * be unreffed using g_object_unref() when it is no longer in use.
	 * Since 2.32
	 * Params:
	 * outLink = the name of the link. [out][allow-none][transfer none]
	 * value = the linked GMenuModel. [out][allow-none][transfer full]
	 * Returns: TRUE on success, or FALSE if there is no additional link
	 */
	public int getNext(char** outLink, out MenuModel value)
	{
		// gboolean g_menu_link_iter_get_next (GMenuLinkIter *iter,  const gchar **out_link,  GMenuModel **value);
		GMenuModel* outvalue = null;
		
		auto p = g_menu_link_iter_get_next(gMenuLinkIter, outLink, &outvalue);
		
		value = ObjectG.getDObject!(MenuModel)(outvalue);
		return p;
	}
	
	/**
	 * Gets the linked GMenuModel at the current iterator position.
	 * The iterator is not advanced.
	 * Since 2.32
	 * Returns: the GMenuModel that is linked to. [transfer full]
	 */
	public MenuModel getValue()
	{
		// GMenuModel * g_menu_link_iter_get_value (GMenuLinkIter *iter);
		auto p = g_menu_link_iter_get_value(gMenuLinkIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) p);
	}
	
	/**
	 * Attempts to advance the iterator to the next (possibly first)
	 * link.
	 * TRUE is returned on success, or FALSE if there are no more links.
	 * You must call this function when you first acquire the iterator to
	 * advance it to the first link (and determine if the first link exists
	 * at all).
	 * Since 2.32
	 * Signal Details
	 * The "items-changed" signal
	 * void user_function (GMenuModel *model,
	 *  gint position,
	 *  gint removed,
	 *  gint added,
	 *  gpointer user_data) : Run Last
	 * Emitted when a change has occured to the menu.
	 * The only changes that can occur to a menu is that items are removed
	 * or added. Items may not change (except by being removed and added
	 * back in the same location). This signal is capable of describing
	 * both of those changes (at the same time).
	 * The signal means that starting at the index position, removed
	 * items were removed and added items were added in their place. If
	 * removed is zero then only items were added. If added is zero
	 * then only items were removed.
	 * As an example, if the menu contains items a, b, c, d (in that
	 * order) and the signal (2, 1, 3) occurs then the new composition of
	 * the menu will be a, b, _, _, _, d (with each _ representing some
	 * new item).
	 * Signal handlers may query the model (particularly the added items)
	 * and expect to see the results of the modification that is being
	 * reported. The signal is emitted after the modification.
	 * Returns: TRUE on success, or FALSE when there are no more links
	 */
	public int next()
	{
		// gboolean g_menu_link_iter_next (GMenuLinkIter *iter);
		return g_menu_link_iter_next(gMenuLinkIter);
	}
}
