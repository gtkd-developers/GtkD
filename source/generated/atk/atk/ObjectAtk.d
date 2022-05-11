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


module atk.ObjectAtk;

private import atk.RelationSet;
private import atk.StateSet;
private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * This class is the primary class for accessibility support via the
 * Accessibility ToolKit (ATK).  Objects which are instances of
 * #AtkObject (or instances of AtkObject-derived types) are queried
 * for properties which relate basic (and generic) properties of a UI
 * component such as name and description.  Instances of #AtkObject
 * may also be queried as to whether they implement other ATK
 * interfaces (e.g. #AtkAction, #AtkComponent, etc.), as appropriate
 * to the role which a given UI component plays in a user interface.
 * 
 * All UI components in an application which provide useful
 * information or services to the user must provide corresponding
 * #AtkObject instances on request (in GTK+, for instance, usually on
 * a call to #gtk_widget_get_accessible ()), either via ATK support
 * built into the toolkit for the widget class or ancestor class, or
 * in the case of custom widgets, if the inherited #AtkObject
 * implementation is insufficient, via instances of a new #AtkObject
 * subclass.
 * 
 * See also: #AtkObjectFactory, #AtkRegistry.  (GTK+ users see also
 * #GtkAccessible).
 */
public class ObjectAtk : ObjectG
{
	/** the main Gtk struct */
	protected AtkObject* atkObject;

	/** Get the main Gtk struct */
	public AtkObject* getObjectAtkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkObject* atkObject, bool ownedRef = false)
	{
		this.atkObject = atkObject;
		super(cast(GObject*)atkObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_object_get_type();
	}

	/**
	 * Adds a relationship of the specified type with the specified target.
	 *
	 * Params:
	 *     relationship = The #AtkRelationType of the relation
	 *     target = The #AtkObject which is to be the target of the relation.
	 *
	 * Returns: TRUE if the relationship is added.
	 */
	public bool addRelationship(AtkRelationType relationship, ObjectAtk target)
	{
		return atk_object_add_relationship(atkObject, relationship, (target is null) ? null : target.getObjectAtkStruct()) != 0;
	}

	/**
	 * Calls @handler on property changes.
	 *
	 * Deprecated: Connect directly to #AtkObject::property-change or
	 * the relevant #GObject::notify signal for each desired property.
	 *
	 * Params:
	 *     handler = a function to be called when a property changes its value
	 *
	 * Returns: a #guint which is the handler id used in
	 *     atk_object_remove_property_change_handler()
	 */
	public uint connectPropertyChangeHandler(AtkPropertyChangeHandler* handler)
	{
		return atk_object_connect_property_change_handler(atkObject, handler);
	}

	/**
	 * Gets the accessible id of the accessible.
	 *
	 * Returns: a character string representing the accessible id of the object, or
	 *     NULL if no such string was set.
	 *
	 * Since: 2.34
	 */
	public string getAccessibleId()
	{
		return Str.toString(atk_object_get_accessible_id(atkObject));
	}

	/**
	 * Get a list of properties applied to this object as a whole, as an #AtkAttributeSet consisting of
	 * name-value pairs. As such these attributes may be considered weakly-typed properties or annotations,
	 * as distinct from strongly-typed object data available via other get/set methods.
	 * Not all objects have explicit "name-value pair" #AtkAttributeSet properties.
	 *
	 * Returns: an #AtkAttributeSet consisting of all
	 *     explicit properties/annotations applied to the object, or an empty
	 *     set if the object has no name-value pair attributes assigned to
	 *     it. This #atkattributeset should be freed by a call to
	 *     atk_attribute_set_free().
	 *
	 * Since: 1.12
	 */
	public AtkAttributeSet* getAttributes()
	{
		return atk_object_get_attributes(atkObject);
	}

	/**
	 * Gets the accessible description of the accessible.
	 *
	 * Returns: a character string representing the accessible description
	 *     of the accessible.
	 */
	public string getDescription()
	{
		return Str.toString(atk_object_get_description(atkObject));
	}

	/**
	 * Gets the 0-based index of this accessible in its parent; returns -1 if the
	 * accessible does not have an accessible parent.
	 *
	 * Returns: an integer which is the index of the accessible in its parent
	 */
	public int getIndexInParent()
	{
		return atk_object_get_index_in_parent(atkObject);
	}

	/**
	 * Gets the layer of the accessible.
	 *
	 * Deprecated: Use atk_component_get_layer instead.
	 *
	 * Returns: an #AtkLayer which is the layer of the accessible
	 */
	public AtkLayer getLayer()
	{
		return atk_object_get_layer(atkObject);
	}

	/**
	 * Gets the zorder of the accessible. The value G_MININT will be returned
	 * if the layer of the accessible is not ATK_LAYER_MDI.
	 *
	 * Deprecated: Use atk_component_get_mdi_zorder instead.
	 *
	 * Returns: a gint which is the zorder of the accessible, i.e. the depth at
	 *     which the component is shown in relation to other components in the same
	 *     container.
	 */
	public int getMdiZorder()
	{
		return atk_object_get_mdi_zorder(atkObject);
	}

	/**
	 * Gets the number of accessible children of the accessible.
	 *
	 * Returns: an integer representing the number of accessible children
	 *     of the accessible.
	 */
	public int getNAccessibleChildren()
	{
		return atk_object_get_n_accessible_children(atkObject);
	}

	/**
	 * Gets the accessible name of the accessible.
	 *
	 * Returns: a character string representing the accessible name of the object.
	 */
	public string getName()
	{
		return Str.toString(atk_object_get_name(atkObject));
	}

	/**
	 * Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
	 * of @accessible.
	 *
	 * Returns: a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *     locale of @accessible.
	 *
	 * Since: 2.8
	 */
	public string getObjectLocale()
	{
		return Str.toString(atk_object_get_object_locale(atkObject));
	}

	/**
	 * Gets the accessible parent of the accessible. By default this is
	 * the one assigned with atk_object_set_parent(), but it is assumed
	 * that ATK implementors have ways to get the parent of the object
	 * without the need of assigning it manually with
	 * atk_object_set_parent(), and will return it with this method.
	 *
	 * If you are only interested on the parent assigned with
	 * atk_object_set_parent(), use atk_object_peek_parent().
	 *
	 * Returns: an #AtkObject representing the accessible
	 *     parent of the accessible
	 */
	public ObjectAtk getParent()
	{
		auto __p = atk_object_get_parent(atkObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p);
	}

	/**
	 * Gets the role of the accessible.
	 *
	 * Returns: an #AtkRole which is the role of the accessible
	 */
	public AtkRole getRole()
	{
		return atk_object_get_role(atkObject);
	}

	/**
	 * This function is called when implementing subclasses of #AtkObject.
	 * It does initialization required for the new object. It is intended
	 * that this function should called only in the ..._new() functions used
	 * to create an instance of a subclass of #AtkObject
	 *
	 * Params:
	 *     data = a #gpointer which identifies the object for which the AtkObject was created.
	 */
	public void initialize(void* data)
	{
		atk_object_initialize(atkObject, data);
	}

	/**
	 * Emits a state-change signal for the specified state.
	 *
	 * Note that as a general rule when the state of an existing object changes,
	 * emitting a notification is expected.
	 *
	 * Params:
	 *     state = an #AtkState whose state is changed
	 *     value = a gboolean which indicates whether the state is being set on or off
	 */
	public void notifyStateChange(AtkState state, bool value)
	{
		atk_object_notify_state_change(atkObject, state, value);
	}

	/**
	 * Gets the accessible parent of the accessible, if it has been
	 * manually assigned with atk_object_set_parent. Otherwise, this
	 * function returns %NULL.
	 *
	 * This method is intended as an utility for ATK implementors, and not
	 * to be exposed to accessible tools. See atk_object_get_parent() for
	 * further reference.
	 *
	 * Returns: an #AtkObject representing the accessible
	 *     parent of the accessible if assigned
	 */
	public ObjectAtk peekParent()
	{
		auto __p = atk_object_peek_parent(atkObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p);
	}

	/**
	 * Gets a reference to the specified accessible child of the object.
	 * The accessible children are 0-based so the first accessible child is
	 * at index 0, the second at index 1 and so on.
	 *
	 * Params:
	 *     i = a gint representing the position of the child, starting from 0
	 *
	 * Returns: an #AtkObject representing the specified
	 *     accessible child of the accessible.
	 */
	public ObjectAtk refAccessibleChild(int i)
	{
		auto __p = atk_object_ref_accessible_child(atkObject, i);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p, true);
	}

	/**
	 * Gets the #AtkRelationSet associated with the object.
	 *
	 * Returns: an #AtkRelationSet representing the relation set
	 *     of the object.
	 */
	public RelationSet refRelationSet()
	{
		auto __p = atk_object_ref_relation_set(atkObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RelationSet)(cast(AtkRelationSet*) __p, true);
	}

	/**
	 * Gets a reference to the state set of the accessible; the caller must
	 * unreference it when it is no longer needed.
	 *
	 * Returns: a reference to an #AtkStateSet which is the state
	 *     set of the accessible
	 */
	public StateSet refStateSet()
	{
		auto __p = atk_object_ref_state_set(atkObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StateSet)(cast(AtkStateSet*) __p, true);
	}

	/**
	 * Removes a property change handler.
	 *
	 * Deprecated: See atk_object_connect_property_change_handler()
	 *
	 * Params:
	 *     handlerId = a guint which identifies the handler to be removed.
	 */
	public void removePropertyChangeHandler(uint handlerId)
	{
		atk_object_remove_property_change_handler(atkObject, handlerId);
	}

	/**
	 * Removes a relationship of the specified type with the specified target.
	 *
	 * Params:
	 *     relationship = The #AtkRelationType of the relation
	 *     target = The #AtkObject which is the target of the relation to be removed.
	 *
	 * Returns: TRUE if the relationship is removed.
	 */
	public bool removeRelationship(AtkRelationType relationship, ObjectAtk target)
	{
		return atk_object_remove_relationship(atkObject, relationship, (target is null) ? null : target.getObjectAtkStruct()) != 0;
	}

	/**
	 * Sets the accessible ID of the accessible.  This is not meant to be presented
	 * to the user, but to be an ID which is stable over application development.
	 * Typically, this is the gtkbuilder ID. Such an ID will be available for
	 * instance to identify a given well-known accessible object for tailored screen
	 * reading, or for automatic regression testing.
	 *
	 * Params:
	 *     name = a character string to be set as the accessible id
	 *
	 * Since: 2.34
	 */
	public void setAccessibleId(string name)
	{
		atk_object_set_accessible_id(atkObject, Str.toStringz(name));
	}

	/**
	 * Sets the accessible description of the accessible. You can't set
	 * the description to NULL. This is reserved for the initial value. In
	 * this aspect NULL is similar to ATK_ROLE_UNKNOWN. If you want to set
	 * the name to a empty value you can use "".
	 *
	 * Params:
	 *     description = a character string to be set as the accessible description
	 */
	public void setDescription(string description)
	{
		atk_object_set_description(atkObject, Str.toStringz(description));
	}

	/**
	 * Sets the accessible name of the accessible. You can't set the name
	 * to NULL. This is reserved for the initial value. In this aspect
	 * NULL is similar to ATK_ROLE_UNKNOWN. If you want to set the name to
	 * a empty value you can use "".
	 *
	 * Params:
	 *     name = a character string to be set as the accessible name
	 */
	public void setName(string name)
	{
		atk_object_set_name(atkObject, Str.toStringz(name));
	}

	/**
	 * Sets the accessible parent of the accessible. @parent can be NULL.
	 *
	 * Params:
	 *     parent = an #AtkObject to be set as the accessible parent
	 */
	public void setParent(ObjectAtk parent)
	{
		atk_object_set_parent(atkObject, (parent is null) ? null : parent.getObjectAtkStruct());
	}

	/**
	 * Sets the role of the accessible.
	 *
	 * Params:
	 *     role = an #AtkRole to be set as the role
	 */
	public void setRole(AtkRole role)
	{
		atk_object_set_role(atkObject, role);
	}

	/**
	 * The "active-descendant-changed" signal is emitted by an object
	 * which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
	 * object in the object changes. For instance, a table will emit the
	 * signal when the cell in the table which has focus changes.
	 *
	 * Params:
	 *     arg1 = the newly focused object.
	 */
	gulong addOnActiveDescendantChanged(void delegate(ObjectAtk, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "active-descendant-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal "children-changed" is emitted when a child is added or
	 * removed form an object. It supports two details: "add" and
	 * "remove"
	 *
	 * Params:
	 *     arg1 = The index of the added or removed child. The value can be
	 *         -1. This is used if the value is not known by the implementor
	 *         when the child is added/removed or irrelevant.
	 *     arg2 = A gpointer to the child AtkObject which was added or
	 *         removed. If the child was removed, it is possible that it is not
	 *         available for the implementor. In that case this pointer can be
	 *         NULL.
	 */
	gulong addOnChildrenChanged(void delegate(uint, ObjectAtk, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "children-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal "focus-event" is emitted when an object gained or lost
	 * focus.
	 *
	 * Deprecated: Use the #AtkObject::state-change signal instead.
	 *
	 * Params:
	 *     arg1 = a boolean value which indicates whether the object gained
	 *         or lost focus.
	 */
	gulong addOnFocus(void delegate(bool, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal "property-change" is emitted when an object's property
	 * value changes. @arg1 contains an #AtkPropertyValues with the name
	 * and the new value of the property whose value has changed. Note
	 * that, as with GObject notify, getting this signal does not
	 * guarantee that the value of the property has actually changed; it
	 * may also be emitted when the setter of the property is called to
	 * reinstate the previous value.
	 *
	 * Toolkit implementor note: ATK implementors should use
	 * g_object_notify() to emit property-changed
	 * notifications. #AtkObject::property-changed is needed by the
	 * implementation of atk_add_global_event_listener() because GObject
	 * notify doesn't support emission hooks.
	 *
	 * Params:
	 *     arg1 = an #AtkPropertyValues containing the new
	 *         value of the property which changed.
	 */
	gulong addOnPropertyChange(void delegate(void*, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "property-change", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "state-change" signal is emitted when an object's state
	 * changes.  The detail value identifies the state type which has
	 * changed.
	 *
	 * Params:
	 *     arg1 = The name of the state which has changed
	 *     arg2 = A boolean which indicates whether the state has been set or unset.
	 */
	gulong addOnStateChange(void delegate(string, bool, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "state-change", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "visible-data-changed" signal is emitted when the visual
	 * appearance of the object changed.
	 */
	gulong addOnVisibleDataChanged(void delegate(ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "visible-data-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Get the #AtkRole type corresponding to a rolew name.
	 *
	 * Params:
	 *     name = a string which is the (non-localized) name of an ATK role.
	 *
	 * Returns: the #AtkRole enumerated type corresponding to the specified name,
	 *     or #ATK_ROLE_INVALID if no matching role is found.
	 */
	public static AtkRole roleForName(string name)
	{
		return atk_role_for_name(Str.toStringz(name));
	}

	/**
	 * Gets the localized description string describing the #AtkRole @role.
	 *
	 * Params:
	 *     role = The #AtkRole whose localized name is required
	 *
	 * Returns: the localized string describing the AtkRole
	 */
	public static string roleGetLocalizedName(AtkRole role)
	{
		return Str.toString(atk_role_get_localized_name(role));
	}

	/**
	 * Gets the description string describing the #AtkRole @role.
	 *
	 * Params:
	 *     role = The #AtkRole whose name is required
	 *
	 * Returns: the string describing the AtkRole
	 */
	public static string roleGetName(AtkRole role)
	{
		return Str.toString(atk_role_get_name(role));
	}

	/**
	 * Registers the role specified by @name. @name must be a meaningful
	 * name. So it should not be empty, or consisting on whitespaces.
	 *
	 * Deprecated: Since 2.12. If your application/toolkit doesn't find a
	 * suitable role for a specific object defined at #AtkRole, please
	 * submit a bug in order to add a new role to the specification.
	 *
	 * Params:
	 *     name = a character string describing the new role.
	 *
	 * Returns: an #AtkRole for the new role if added
	 *     properly. ATK_ROLE_INVALID in case of error.
	 */
	public static AtkRole roleRegister(string name)
	{
		return atk_role_register(Str.toStringz(name));
	}
}
