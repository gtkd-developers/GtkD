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


module gio.PropertyAction;

private import gio.ActionIF;
private import gio.ActionT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A #GPropertyAction is a way to get a #GAction with a state value
 * reflecting and controlling the value of a #GObject property.
 * 
 * The state of the action will correspond to the value of the property.
 * Changing it will change the property (assuming the requested value
 * matches the requirements as specified in the #GParamSpec).
 * 
 * Only the most common types are presently supported.  Booleans are
 * mapped to booleans, strings to strings, signed/unsigned integers to
 * int32/uint32 and floats and doubles to doubles.
 * 
 * If the property is an enum then the state will be string-typed and
 * conversion will automatically be performed between the enum value and
 * "nick" string as per the #GEnumValue table.
 * 
 * Flags types are not currently supported.
 * 
 * Properties of object types, boxed types and pointer types are not
 * supported and probably never will be.
 * 
 * Properties of #GVariant types are not currently supported.
 * 
 * If the property is boolean-valued then the action will have a NULL
 * parameter type, and activating the action (with no parameter) will
 * toggle the value of the property.
 * 
 * In all other cases, the parameter type will correspond to the type of
 * the property.
 * 
 * The general idea here is to reduce the number of locations where a
 * particular piece of state is kept (and therefore has to be synchronised
 * between). #GPropertyAction does not have a separate state that is kept
 * in sync with the property value -- its state is the property value.
 * 
 * For example, it might be useful to create a #GAction corresponding to
 * the "visible-child-name" property of a #GtkStack so that the current
 * page can be switched from a menu.  The active radio indication in the
 * menu is then directly determined from the active page of the
 * #GtkStack.
 * 
 * An anti-example would be binding the "active-id" property on a
 * #GtkComboBox.  This is because the state of the combobox itself is
 * probably uninteresting and is actually being used to control
 * something else.
 * 
 * Another anti-example would be to bind to the "visible-child-name"
 * property of a #GtkStack if this value is actually stored in
 * #GSettings.  In that case, the real source of the value is
 * #GSettings.  If you want a #GAction to control a setting stored in
 * #GSettings, see g_settings_create_action() instead, and possibly
 * combine its use with g_settings_bind().
 *
 * Since: 2.38
 */
public class PropertyAction : ObjectG, ActionIF
{
	/** the main Gtk struct */
	protected GPropertyAction* gPropertyAction;

	/** Get the main Gtk struct */
	public GPropertyAction* getPropertyActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gPropertyAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gPropertyAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GPropertyAction* gPropertyAction, bool ownedRef = false)
	{
		this.gPropertyAction = gPropertyAction;
		super(cast(GObject*)gPropertyAction, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(GPropertyAction);


	/** */
	public static GType getType()
	{
		return g_property_action_get_type();
	}

	/**
	 * Creates a #GAction corresponding to the value of property
	 * @property_name on @object.
	 *
	 * The property must be existent and readable and writable (and not
	 * construct-only).
	 *
	 * This function takes a reference on @object and doesn't release it
	 * until the action is destroyed.
	 *
	 * Params:
	 *     name = the name of the action to create
	 *     object = the object that has the property
	 *         to wrap
	 *     propertyName = the name of the property
	 *
	 * Returns: a new #GPropertyAction
	 *
	 * Since: 2.38
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, ObjectG object, string propertyName)
	{
		auto __p = g_property_action_new(Str.toStringz(name), (object is null) ? null : object.getObjectGStruct(), Str.toStringz(propertyName));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GPropertyAction*) __p, true);
	}
}
