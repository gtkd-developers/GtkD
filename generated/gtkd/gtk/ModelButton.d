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


module gtk.ModelButton;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Button;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkModelButton is a button class that can use a #GAction as its model.
 * In contrast to #GtkToggleButton or #GtkRadioButton, which can also
 * be backed by a #GAction via the #GtkActionable:action-name property,
 * GtkModelButton will adapt its appearance according to the kind of
 * action it is backed by, and appear either as a plain, check or
 * radio button.
 * 
 * Model buttons are used when popovers from a menu model with
 * gtk_popover_new_from_model(); they can also be used manually in
 * a #GtkPopoverMenu.
 * 
 * When the action is specified via the #GtkActionable:action-name
 * and #GtkActionable:action-target properties, the role of the button
 * (i.e. whether it is a plain, check or radio button) is determined by
 * the type of the action and doesn't have to be explicitly specified
 * with the #GtkModelButton:role property.
 * 
 * The content of the button is specified by the #GtkModelButton:text
 * and #GtkModelButton:icon properties.
 * 
 * The appearance of model buttons can be influenced with the
 * #GtkModelButton:centered and #GtkModelButton:iconic properties.
 * 
 * Model buttons have built-in support for submenus in #GtkPopoverMenu.
 * To make a GtkModelButton that opens a submenu when activated, set
 * the #GtkModelButton:menu-name property. To make a button that goes
 * back to the parent menu, you should set the #GtkModelButton:inverted
 * property to place the submenu indicator at the opposite side.
 * 
 * # Example
 * 
 * |[
 * <object class="GtkPopoverMenu">
 * <child>
 * <object class="GtkBox">
 * <property name="visible">True</property>
 * <property name="margin">10</property>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">view.cut</property>
 * <property name="text" translatable="yes">Cut</property>
 * </object>
 * </child>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">view.copy</property>
 * <property name="text" translatable="yes">Copy</property>
 * </object>
 * </child>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">view.paste</property>
 * <property name="text" translatable="yes">Paste</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * modelbutton
 * ├── <child>
 * ╰── check
 * ]|
 * 
 * |[<!-- language="plain" -->
 * modelbutton
 * ├── <child>
 * ╰── radio
 * ]|
 * 
 * |[<!-- language="plain" -->
 * modelbutton
 * ├── <child>
 * ╰── arrow
 * ]|
 * 
 * GtkModelButton has a main CSS node with name modelbutton, and a subnode,
 * which will have the name check, radio or arrow, depending on the role
 * of the button and whether it has a menu name set.
 * 
 * The subnode is positioned before or after the content nodes and gets the
 * .left or .right style class, depending on where it is located.
 * 
 * |[<!-- language="plain" -->
 * button.model
 * ├── <child>
 * ╰── check
 * ]|
 * 
 * Iconic model buttons (see #GtkModelButton:iconic) change the name of
 * their main node to button and add a .model style class to it. The indicator
 * subnode is invisible in this case.
 */
public class ModelButton : Button
{
	/** the main Gtk struct */
	protected GtkModelButton* gtkModelButton;

	/** Get the main Gtk struct */
	public GtkModelButton* getModelButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkModelButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkModelButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkModelButton* gtkModelButton, bool ownedRef = false)
	{
		this.gtkModelButton = gtkModelButton;
		super(cast(GtkButton*)gtkModelButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_model_button_get_type();
	}

	/**
	 * Creates a new GtkModelButton.
	 *
	 * Returns: the newly created #GtkModelButton widget
	 *
	 * Since: 3.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_model_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkModelButton*) p);
	}
}
