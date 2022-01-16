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


module gtk.AccessibleT;

public  import gobject.Value;
public  import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkAccessible` is an interface for describing UI elements for
 * Assistive Technologies.
 * 
 * Every accessible implementation has:
 * 
 * - a “role”, represented by a value of the [enum@Gtk.AccessibleRole] enumeration
 * - an “attribute”, represented by a set of [enum@Gtk.AccessibleState],
 * [enum@Gtk.AccessibleProperty] and [enum@Gtk.AccessibleRelation] values
 * 
 * The role cannot be changed after instantiating a `GtkAccessible`
 * implementation.
 * 
 * The attributes are updated every time a UI element's state changes in
 * a way that should be reflected by assistive technologies. For instance,
 * if a `GtkWidget` visibility changes, the %GTK_ACCESSIBLE_STATE_HIDDEN
 * state will also change to reflect the [property@Gtk.Widget:visible] property.
 */
public template AccessibleT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkAccessible* getAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkAccessible*)getStruct();
	}


	/**
	 * Retrieves the `GtkAccessibleRole` for the given `GtkAccessible`.
	 *
	 * Returns: a `GtkAccessibleRole`
	 */
	public GtkAccessibleRole getAccessibleRole()
	{
		return gtk_accessible_get_accessible_role(getAccessibleStruct());
	}

	/**
	 * Resets the accessible @property to its default value.
	 *
	 * Params:
	 *     property = a `GtkAccessibleProperty`
	 */
	public void resetProperty(GtkAccessibleProperty property)
	{
		gtk_accessible_reset_property(getAccessibleStruct(), property);
	}

	/**
	 * Resets the accessible @relation to its default value.
	 *
	 * Params:
	 *     relation = a `GtkAccessibleRelation`
	 */
	public void resetRelation(GtkAccessibleRelation relation)
	{
		gtk_accessible_reset_relation(getAccessibleStruct(), relation);
	}

	/**
	 * Resets the accessible @state to its default value.
	 *
	 * Params:
	 *     state = a `GtkAccessibleState`
	 */
	public void resetState(GtkAccessibleState state)
	{
		gtk_accessible_reset_state(getAccessibleStruct(), state);
	}

	/**
	 * Updates an array of accessible properties.
	 *
	 * This function should be called by `GtkWidget` types whenever an accessible
	 * property change must be communicated to assistive technologies.
	 *
	 * This function is meant to be used by language bindings.
	 *
	 * Params:
	 *     properties = an array of `GtkAccessibleProperty`
	 *     values = an array of `GValues`, one for each property
	 */
	public void updatePropertyValue(GtkAccessibleProperty[] properties, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		gtk_accessible_update_property_value(getAccessibleStruct(), cast(int)values.length, properties.ptr, valuesArray.ptr);
	}

	/**
	 * Updates an array of accessible relations.
	 *
	 * This function should be called by `GtkWidget` types whenever an accessible
	 * relation change must be communicated to assistive technologies.
	 *
	 * This function is meant to be used by language bindings.
	 *
	 * Params:
	 *     relations = an array of `GtkAccessibleRelation`
	 *     values = an array of `GValues`, one for each relation
	 */
	public void updateRelationValue(GtkAccessibleRelation[] relations, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		gtk_accessible_update_relation_value(getAccessibleStruct(), cast(int)values.length, relations.ptr, valuesArray.ptr);
	}

	/**
	 * Updates an array of accessible states.
	 *
	 * This function should be called by `GtkWidget` types whenever an accessible
	 * state change must be communicated to assistive technologies.
	 *
	 * This function is meant to be used by language bindings.
	 *
	 * Params:
	 *     states = an array of `GtkAccessibleState`
	 *     values = an array of `GValues`, one for each state
	 */
	public void updateStateValue(GtkAccessibleState[] states, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		gtk_accessible_update_state_value(getAccessibleStruct(), cast(int)values.length, states.ptr, valuesArray.ptr);
	}
}
