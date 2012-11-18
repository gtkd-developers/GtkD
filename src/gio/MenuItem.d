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
 * outFile = MenuItem
 * strct   = GMenuItem
 * realStrct=
 * ctorStrct=
 * clss    = MenuItem
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_menu_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_menu_item_new_section
 * 	- g_menu_item_new_submenu
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gio.MenuModel
 * structWrap:
 * 	- GMenuModel* -> MenuModel
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.MenuItem;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gio.MenuModel;




/**
 * Description
 * GMenu is a simple implementation of GMenuModel.
 * You populate a GMenu by adding GMenuItem instances to it.
 * There are some convenience functions to allow you to directly
 * add items (avoiding GMenuItem) for the common cases. To add
 * a regular item, use g_menu_insert(). To add a section, use
 * g_menu_insert_section(). To add a submenu, use
 * g_menu_insert_submenu().
 */
public class MenuItem
{
	
	/** the main Gtk struct */
	protected GMenuItem* gMenuItem;
	
	
	public GMenuItem* getMenuItemStruct()
	{
		return gMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMenuItem* gMenuItem)
	{
		this.gMenuItem = gMenuItem;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GMenuItem.
	 * If label is non-NULL it is used to set the "label" attribute of the
	 * new item.
	 * If detailed_action is non-NULL it is used to set the "action" and
	 * possibly the "target" attribute of the new item. See
	 * g_menu_item_set_detailed_action() for more information.
	 * Since 2.32
	 * Params:
	 * label = the section label, or NULL. [allow-none]
	 * detailedAction = the detailed action string, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, string detailedAction)
	{
		// GMenuItem * g_menu_item_new (const gchar *label,  const gchar *detailed_action);
		auto p = g_menu_item_new(Str.toStringz(label), Str.toStringz(detailedAction));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_menu_item_new(Str.toStringz(label), Str.toStringz(detailedAction))");
		}
		this(cast(GMenuItem*) p);
	}
	
	/**
	 * Creates a GMenuItem as an exact copy of an existing menu item in a
	 * GMenuModel.
	 * item_index must be valid (ie: be sure to call
	 * g_menu_model_get_n_items() first).
	 * Since 2.34
	 * Params:
	 * model = a GMenuModel
	 * itemIndex = the index of an item in model
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (MenuModel model, int itemIndex)
	{
		// GMenuItem * g_menu_item_new_from_model (GMenuModel *model,  gint item_index);
		auto p = g_menu_item_new_from_model((model is null) ? null : model.getMenuModelStruct(), itemIndex);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_menu_item_new_from_model((model is null) ? null : model.getMenuModelStruct(), itemIndex)");
		}
		this(cast(GMenuItem*) p);
	}
	
	/**
	 * Sets or unsets the "label" attribute of menu_item.
	 * If label is non-NULL it is used as the label for the menu item. If
	 * it is NULL then the label attribute is unset.
	 * Since 2.32
	 * Params:
	 * label = the label to set, or NULL to unset. [allow-none]
	 */
	public void setLabel(string label)
	{
		// void g_menu_item_set_label (GMenuItem *menu_item,  const gchar *label);
		g_menu_item_set_label(gMenuItem, Str.toStringz(label));
	}
	
	/**
	 * Sets or unsets the "action" and "target" attributes of menu_item.
	 * If action is NULL then both the "action" and "target" attributes
	 * are unset (and target_value is ignored).
	 * If action is non-NULL then the "action" attribute is set. The
	 * "target" attribute is then set to the value of target_value if it is
	 * non-NULL or unset otherwise.
	 * Normal menu items (ie: not submenu, section or other custom item
	 * types) are expected to have the "action" attribute set to identify
	 * the action that they are associated with. The state type of the
	 * action help to determine the disposition of the menu item. See
	 * GAction and GActionGroup for an overview of actions.
	 * In general, clicking on the menu item will result in activation of
	 * the named action with the "target" attribute given as the parameter
	 * to the action invocation. If the "target" attribute is not set then
	 * the action is invoked with no parameter.
	 * If the action has no state then the menu item is usually drawn as a
	 * plain menu item (ie: with no additional decoration).
	 * If the action has a boolean state then the menu item is usually drawn
	 * as a toggle menu item (ie: with a checkmark or equivalent
	 * indication). The item should be marked as 'toggled' or 'checked'
	 * when the boolean state is TRUE.
	 * If the action has a string state then the menu item is usually drawn
	 * as a radio menu item (ie: with a radio bullet or equivalent
	 * indication). The item should be marked as 'selected' when the string
	 * state is equal to the value of the target property.
	 * See g_menu_item_set_action_and_target() or
	 * g_menu_item_set_detailed_action() for two equivalent calls that are
	 * probably more convenient for most uses.
	 * Since 2.32
	 * Params:
	 * action = the name of the action for this item. [allow-none]
	 * targetValue = a GVariant to use as the action target. [allow-none]
	 */
	public void setActionAndTargetValue(string action, Variant targetValue)
	{
		// void g_menu_item_set_action_and_target_value  (GMenuItem *menu_item,  const gchar *action,  GVariant *target_value);
		g_menu_item_set_action_and_target_value(gMenuItem, Str.toStringz(action), (targetValue is null) ? null : targetValue.getVariantStruct());
	}
	
	/**
	 * Sets the "action" and possibly the "target" attribute of menu_item.
	 * If detailed_action contains a double colon ("::") then it is used as
	 * a separator between an action name and a target string. In this
	 * case, this call is equivalent to calling
	 * g_menu_item_set_action_and_target() with the part before the "::" and
	 * with a string-type GVariant containing the part following the "::".
	 * If detailed_action doesn't contain "::" then the action is set to
	 * the given string (verbatim) and the target value is unset.
	 * See g_menu_item_set_action_and_target() or
	 * g_menu_item_set_action_and_target_value() for more flexible (but
	 * slightly less convenient) alternatives.
	 * See also g_menu_item_set_action_and_target_value() for a description of
	 * the semantics of the action and target attributes.
	 * Since 2.32
	 * Params:
	 * detailedAction = the "detailed" action string
	 */
	public void setDetailedAction(string detailedAction)
	{
		// void g_menu_item_set_detailed_action (GMenuItem *menu_item,  const gchar *detailed_action);
		g_menu_item_set_detailed_action(gMenuItem, Str.toStringz(detailedAction));
	}
	
	/**
	 * Sets or unsets the "section" link of menu_item to section.
	 * The effect of having one menu appear as a section of another is
	 * exactly as it sounds: the items from section become a direct part of
	 * the menu that menu_item is added to. See g_menu_item_new_section()
	 * for more information about what it means for a menu item to be a
	 * section.
	 * Since 2.32
	 * Params:
	 * section = a GMenuModel, or NULL. [allow-none]
	 */
	public void setSection(MenuModel section)
	{
		// void g_menu_item_set_section (GMenuItem *menu_item,  GMenuModel *section);
		g_menu_item_set_section(gMenuItem, (section is null) ? null : section.getMenuModelStruct());
	}
	
	/**
	 * Sets or unsets the "submenu" link of menu_item to submenu.
	 * If submenu is non-NULL, it is linked to. If it is NULL then the
	 * link is unset.
	 * The effect of having one menu appear as a submenu of another is
	 * exactly as it sounds.
	 * Since 2.32
	 * Params:
	 * submenu = a GMenuModel, or NULL. [allow-none]
	 */
	public void setSubmenu(MenuModel submenu)
	{
		// void g_menu_item_set_submenu (GMenuItem *menu_item,  GMenuModel *submenu);
		g_menu_item_set_submenu(gMenuItem, (submenu is null) ? null : submenu.getMenuModelStruct());
	}
	
	/**
	 * Queries the named attribute on menu_item.
	 * If expected_type is specified and the attribute does not have this
	 * type, NULL is returned. NULL is also returned if the attribute
	 * simply does not exist.
	 * Since 2.34
	 * Params:
	 * attribute = the attribute name to query
	 * expectedType = the expected type of the attribute. [allow-none]
	 * Returns: the attribute value, or NULL. [transfer full]
	 */
	public Variant getAttributeValue(string attribute, VariantType expectedType)
	{
		// GVariant * g_menu_item_get_attribute_value (GMenuItem *menu_item,  const gchar *attribute,  const GVariantType *expected_type);
		auto p = g_menu_item_get_attribute_value(gMenuItem, Str.toStringz(attribute), (expectedType is null) ? null : expectedType.getVariantTypeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Queries the named link on menu_item.
	 * Since 2.34
	 * Params:
	 * link = the link name to query
	 * Returns: the link, or NULL. [transfer full]
	 */
	public MenuModel getLink(string link)
	{
		// GMenuModel * g_menu_item_get_link (GMenuItem *menu_item,  const gchar *link);
		auto p = g_menu_item_get_link(gMenuItem, Str.toStringz(link));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) p);
	}
	
	/**
	 * Sets or unsets an attribute on menu_item.
	 * The attribute to set or unset is specified by attribute. This
	 * can be one of the standard attribute names G_MENU_ATTRIBUTE_LABEL,
	 * G_MENU_ATTRIBUTE_ACTION, G_MENU_ATTRIBUTE_TARGET, or a custom
	 * attribute name.
	 * Attribute names are restricted to lowercase characters, numbers
	 * and '-'. Furthermore, the names must begin with a lowercase character,
	 * must not end with a '-', and must not contain consecutive dashes.
	 * must consist only of lowercase
	 * ASCII characters, digits and '-'.
	 * If value is non-NULL then it is used as the new value for the
	 * attribute. If value is NULL then the attribute is unset. If
	 * the value GVariant is floating, it is consumed.
	 * See also g_menu_item_set_attribute() for a more convenient way to do
	 * the same.
	 * Since 2.32
	 * Params:
	 * attribute = the attribute to set
	 * value = a GVariant to use as the value, or NULL. [allow-none]
	 */
	public void setAttributeValue(string attribute, Variant value)
	{
		// void g_menu_item_set_attribute_value (GMenuItem *menu_item,  const gchar *attribute,  GVariant *value);
		g_menu_item_set_attribute_value(gMenuItem, Str.toStringz(attribute), (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Creates a link from menu_item to model if non-NULL, or unsets it.
	 * Links are used to establish a relationship between a particular menu
	 * item and another menu. For example, G_MENU_LINK_SUBMENU is used to
	 * associate a submenu with a particular menu item, and G_MENU_LINK_SECTION
	 * is used to create a section. Other types of link can be used, but there
	 * is no guarantee that clients will be able to make sense of them.
	 * Link types are restricted to lowercase characters, numbers
	 * and '-'. Furthermore, the names must begin with a lowercase character,
	 * must not end with a '-', and must not contain consecutive dashes.
	 * Since 2.32
	 * Params:
	 * link = type of link to establish or unset
	 * model = the GMenuModel to link to (or NULL to unset). [allow-none]
	 */
	public void setLink(string link, MenuModel model)
	{
		// void g_menu_item_set_link (GMenuItem *menu_item,  const gchar *link,  GMenuModel *model);
		g_menu_item_set_link(gMenuItem, Str.toStringz(link), (model is null) ? null : model.getMenuModelStruct());
	}
}
