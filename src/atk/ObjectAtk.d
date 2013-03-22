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
 * inFile  = AtkObject.html
 * outPack = atk
 * outFile = ObjectAtk
 * strct   = AtkObject
 * realStrct=
 * ctorStrct=
 * clss    = ObjectAtk
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_object_
 * 	- atk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- atk.RelationSet
 * 	- atk.StateSet
 * 	- glib.Str
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- AtkRelationSet* -> RelationSet
 * 	- AtkStateSet* -> StateSet
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.ObjectAtk;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;
private import atk.RelationSet;
private import atk.StateSet;
private import glib.Str;



private import gobject.ObjectG;

/**
 * This class is the primary class for accessibility support via
 * the Accessibility ToolKit (ATK). Objects which are instances
 * of AtkObject (or instances of AtkObject-derived types) are
 * queried for properties which relate basic (and generic) properties of a
 * UI component such as name and description. Instances of AtkObject
 * may also be queried as to whether they implement other ATK interfaces
 * (e.g. AtkAction, AtkComponent, etc.), as appropriate to the role
 * which a given UI component plays in a user interface.
 *
 * All UI components in an application which provide useful
 * information or services to the user must provide corresponding
 * AtkObject instances on request (in GTK+, for instance, usually
 * on a call to #gtk_widget_get_accessible()), either via ATK support
 * built into the toolkit for the widget class or ancestor class, or in
 * the case of custom widgets, if the inherited AtkObject implementation
 * is insufficient, via instances of a new AtkObject subclass.
 */
public class ObjectAtk : ObjectG
{
	
	/** the main Gtk struct */
	protected AtkObject* atkObject;
	
	
	public AtkObject* getObjectAtkStruct()
	{
		return atkObject;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkObject* atkObject)
	{
		super(cast(GObject*)atkObject);
		this.atkObject = atkObject;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		atkObject = cast(AtkObject*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(void*, ObjectAtk)[] onActiveDescendantChangedListeners;
	/**
	 * The "active-descendant-changed" signal is emitted by an object which has
	 * the state ATK_STATE_MANAGES_DESCENDANTS when the focus object in the
	 * object changes. For instance, a table will emit the signal when the cell
	 * in the table which has focus changes.
	 */
	void addOnActiveDescendantChanged(void delegate(void*, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("active-descendant-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"active-descendant-changed",
			cast(GCallback)&callBackActiveDescendantChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["active-descendant-changed"] = 1;
		}
		onActiveDescendantChangedListeners ~= dlg;
	}
	extern(C) static void callBackActiveDescendantChanged(AtkObject* atkobjectStruct, void* arg1, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(void*, ObjectAtk) dlg ; _objectAtk.onActiveDescendantChangedListeners )
		{
			dlg(arg1, _objectAtk);
		}
	}
	
	void delegate(guint, void*, ObjectAtk)[] onChildrenChangedListeners;
	/**
	 * The signal "children-changed" is emitted when a child is added or
	 * removed form an object. It supports two details: "add" and "remove"
	 */
	void addOnChildrenChanged(void delegate(guint, void*, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("children-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"children-changed",
			cast(GCallback)&callBackChildrenChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["children-changed"] = 1;
		}
		onChildrenChangedListeners ~= dlg;
	}
	extern(C) static void callBackChildrenChanged(AtkObject* atkobjectStruct, guint arg1, void* arg2, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(guint, void*, ObjectAtk) dlg ; _objectAtk.onChildrenChangedListeners )
		{
			dlg(arg1, arg2, _objectAtk);
		}
	}
	
	void delegate(gboolean, ObjectAtk)[] onFocusListeners;
	/**
	 * The signal "focus-event" is emitted when an object gains or loses focus.
	 */
	void addOnFocus(void delegate(gboolean, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-event",
			cast(GCallback)&callBackFocus,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-event"] = 1;
		}
		onFocusListeners ~= dlg;
	}
	extern(C) static void callBackFocus(AtkObject* atkobjectStruct, gboolean arg1, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(gboolean, ObjectAtk) dlg ; _objectAtk.onFocusListeners )
		{
			dlg(arg1, _objectAtk);
		}
	}
	
	void delegate(void*, ObjectAtk)[] onPropertyChangeListeners;
	/**
	 * The signal "property-change" is emitted when an object's property
	 * value changes. The detail identifies the name of the property whose
	 * value has changed.
	 */
	void addOnPropertyChange(void delegate(void*, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("property-change" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"property-change",
			cast(GCallback)&callBackPropertyChange,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["property-change"] = 1;
		}
		onPropertyChangeListeners ~= dlg;
	}
	extern(C) static void callBackPropertyChange(AtkObject* atkobjectStruct, void* arg1, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(void*, ObjectAtk) dlg ; _objectAtk.onPropertyChangeListeners )
		{
			dlg(arg1, _objectAtk);
		}
	}
	
	void delegate(string, gboolean, ObjectAtk)[] onStateChangeListeners;
	/**
	 * The "state-change" signal is emitted when an object's state changes.
	 * The detail value identifies the state type which has changed.
	 */
	void addOnStateChange(void delegate(string, gboolean, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("state-change" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"state-change",
			cast(GCallback)&callBackStateChange,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["state-change"] = 1;
		}
		onStateChangeListeners ~= dlg;
	}
	extern(C) static void callBackStateChange(AtkObject* atkobjectStruct, gchar* arg1, gboolean arg2, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(string, gboolean, ObjectAtk) dlg ; _objectAtk.onStateChangeListeners )
		{
			dlg(Str.toString(arg1), arg2, _objectAtk);
		}
	}
	
	void delegate(ObjectAtk)[] onVisibleDataChangedListeners;
	/**
	 * The "visible-data-changed" signal is emitted when the visual appearance of
	 * the object changed.
	 * See Also
	 * See also: AtkObjectFactory, AtkRegistry.
	 * ( GTK+ users see also GtkAccessible).
	 */
	void addOnVisibleDataChanged(void delegate(ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("visible-data-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"visible-data-changed",
			cast(GCallback)&callBackVisibleDataChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["visible-data-changed"] = 1;
		}
		onVisibleDataChangedListeners ~= dlg;
	}
	extern(C) static void callBackVisibleDataChanged(AtkObject* atkobjectStruct, ObjectAtk _objectAtk)
	{
		foreach ( void delegate(ObjectAtk) dlg ; _objectAtk.onVisibleDataChangedListeners )
		{
			dlg(_objectAtk);
		}
	}
	
	
	/**
	 * Registers the role specified by name.
	 * Params:
	 * name = a character string describing the new role.
	 * Returns: an AtkRole for the new role.
	 */
	public static AtkRole roleRegister(string name)
	{
		// AtkRole atk_role_register (const gchar *name);
		return atk_role_register(Str.toStringz(name));
	}
	
	/**
	 * Gets a reference to an object's AtkObject implementation, if
	 * the object implements AtkObjectIface
	 * Params:
	 * implementor = The GObject instance which should implement AtkImplementorIface
	 * if a non-null return value is required.
	 * Returns: a reference to an object's AtkObject implementation. [transfer full]
	 */
	public static ObjectAtk implementorRefAccessible(AtkImplementor* implementor)
	{
		// AtkObject * atk_implementor_ref_accessible (AtkImplementor *implementor);
		auto p = atk_implementor_ref_accessible(implementor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the accessible name of the accessible.
	 * Returns: a character string representing the accessible name of the object.
	 */
	public string getName()
	{
		// const gchar * atk_object_get_name (AtkObject *accessible);
		return Str.toString(atk_object_get_name(atkObject));
	}
	
	/**
	 * Gets the accessible description of the accessible.
	 * Returns: a character string representing the accessible description of the accessible.
	 */
	public string getDescription()
	{
		// const gchar * atk_object_get_description (AtkObject *accessible);
		return Str.toString(atk_object_get_description(atkObject));
	}
	
	/**
	 * Gets the accessible parent of the accessible.
	 * Returns: a AtkObject representing the accessible parent of the accessible. [transfer none]
	 */
	public ObjectAtk getParent()
	{
		// AtkObject * atk_object_get_parent (AtkObject *accessible);
		auto p = atk_object_get_parent(atkObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the number of accessible children of the accessible.
	 * Returns: an integer representing the number of accessible children of the accessible.
	 */
	public int getNAccessibleChildren()
	{
		// gint atk_object_get_n_accessible_children  (AtkObject *accessible);
		return atk_object_get_n_accessible_children(atkObject);
	}
	
	/**
	 * Gets a reference to the specified accessible child of the object.
	 * The accessible children are 0-based so the first accessible child is
	 * at index 0, the second at index 1 and so on.
	 * Params:
	 * i = a gint representing the position of the child, starting from 0
	 * Returns: an AtkObject representing the specified accessible child of the accessible. [transfer full]
	 */
	public ObjectAtk refAccessibleChild(int i)
	{
		// AtkObject * atk_object_ref_accessible_child (AtkObject *accessible,  gint i);
		auto p = atk_object_ref_accessible_child(atkObject, i);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the AtkRelationSet associated with the object.
	 * Returns: an AtkRelationSet representing the relation set of the object. [transfer full]
	 */
	public RelationSet refRelationSet()
	{
		// AtkRelationSet * atk_object_ref_relation_set (AtkObject *accessible);
		auto p = atk_object_ref_relation_set(atkObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(RelationSet)(cast(AtkRelationSet*) p);
	}
	
	/**
	 * Warning
	 * atk_object_get_layer is deprecated and should not be used in newly-written code. Use atk_component_get_layer instead.
	 * Gets the layer of the accessible.
	 * Returns: an AtkLayer which is the layer of the accessible
	 */
	public AtkLayer getLayer()
	{
		// AtkLayer atk_object_get_layer (AtkObject *accessible);
		return atk_object_get_layer(atkObject);
	}
	
	/**
	 * Warning
	 * atk_object_get_mdi_zorder is deprecated and should not be used in newly-written code. Use atk_component_get_mdi_zorder instead.
	 * Gets the zorder of the accessible. The value G_MININT will be returned
	 * if the layer of the accessible is not ATK_LAYER_MDI.
	 * Returns: a gint which is the zorder of the accessible, i.e. the depth at which the component is shown in relation to other components in the same container.
	 */
	public int getMdiZorder()
	{
		// gint atk_object_get_mdi_zorder (AtkObject *accessible);
		return atk_object_get_mdi_zorder(atkObject);
	}
	
	/**
	 * Gets the role of the accessible.
	 * Returns: an AtkRole which is the role of the accessible
	 */
	public AtkRole getRole()
	{
		// AtkRole atk_object_get_role (AtkObject *accessible);
		return atk_object_get_role(atkObject);
	}
	
	/**
	 * Gets a reference to the state set of the accessible; the caller must
	 * unreference it when it is no longer needed.
	 * Returns: a reference to an AtkStateSet which is the state set of the accessible. [transfer full]
	 */
	public StateSet refStateSet()
	{
		// AtkStateSet * atk_object_ref_state_set (AtkObject *accessible);
		auto p = atk_object_ref_state_set(atkObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(StateSet)(cast(AtkStateSet*) p);
	}
	
	/**
	 * Gets the 0-based index of this accessible in its parent; returns -1 if the
	 * accessible does not have an accessible parent.
	 * Returns: an integer which is the index of the accessible in its parent
	 */
	public int getIndexInParent()
	{
		// gint atk_object_get_index_in_parent (AtkObject *accessible);
		return atk_object_get_index_in_parent(atkObject);
	}
	
	/**
	 * Sets the accessible name of the accessible. You can't set the name
	 * to NULL. This is reserved for the initial value. In this aspect
	 * NULL is similar to ATK_ROLE_UNKNOWN. If you want to set the name to
	 * a empty value you can use "".
	 * Params:
	 * name = a character string to be set as the accessible name
	 */
	public void setName(string name)
	{
		// void atk_object_set_name (AtkObject *accessible,  const gchar *name);
		atk_object_set_name(atkObject, Str.toStringz(name));
	}
	
	/**
	 * Sets the accessible description of the accessible. You can't set
	 * the description to NULL. This is reserved for the initial value. In
	 * this aspect NULL is similar to ATK_ROLE_UNKNOWN. If you want to set
	 * the name to a empty value you can use "".
	 * Params:
	 * description = a character string to be set as the accessible description
	 */
	public void setDescription(string description)
	{
		// void atk_object_set_description (AtkObject *accessible,  const gchar *description);
		atk_object_set_description(atkObject, Str.toStringz(description));
	}
	
	/**
	 * Sets the accessible parent of the accessible.
	 * Params:
	 * parent = an AtkObject to be set as the accessible parent
	 */
	public void setParent(ObjectAtk parent)
	{
		// void atk_object_set_parent (AtkObject *accessible,  AtkObject *parent);
		atk_object_set_parent(atkObject, (parent is null) ? null : parent.getObjectAtkStruct());
	}
	
	/**
	 * Sets the role of the accessible.
	 * Params:
	 * role = an AtkRole to be set as the role
	 */
	public void setRole(AtkRole role)
	{
		// void atk_object_set_role (AtkObject *accessible,  AtkRole role);
		atk_object_set_role(atkObject, role);
	}
	
	/**
	 * Specifies a function to be called when a property changes value.
	 * Params:
	 * handler = a function to be called when a property changes its value
	 * Returns: a guint which is the handler id used in atk_object_remove_property_change_handler()
	 */
	public uint connectPropertyChangeHandler(AtkPropertyChangeHandler* handler)
	{
		// guint atk_object_connect_property_change_handler  (AtkObject *accessible,  AtkPropertyChangeHandler *handler);
		return atk_object_connect_property_change_handler(atkObject, handler);
	}
	
	/**
	 * Removes a property change handler.
	 * Params:
	 * handlerId = a guint which identifies the handler to be removed.
	 */
	public void removePropertyChangeHandler(uint handlerId)
	{
		// void atk_object_remove_property_change_handler  (AtkObject *accessible,  guint handler_id);
		atk_object_remove_property_change_handler(atkObject, handlerId);
	}
	
	/**
	 * Emits a state-change signal for the specified state.
	 * Params:
	 * state = an AtkState whose state is changed
	 * value = a gboolean which indicates whether the state is being set on or off
	 */
	public void notifyStateChange(AtkState state, int value)
	{
		// void atk_object_notify_state_change (AtkObject *accessible,  AtkState state,  gboolean value);
		atk_object_notify_state_change(atkObject, state, value);
	}
	
	/**
	 * This function is called when implementing subclasses of AtkObject.
	 * It does initialization required for the new object. It is intended
	 * that this function should called only in the ..._new() functions used
	 * to create an instance of a subclass of AtkObject
	 * Params:
	 * data = a gpointer which identifies the object for which the AtkObject was created.
	 */
	public void initialize(void* data)
	{
		// void atk_object_initialize (AtkObject *accessible,  gpointer data);
		atk_object_initialize(atkObject, data);
	}
	
	/**
	 * Adds a relationship of the specified type with the specified target.
	 * Params:
	 * relationship = The AtkRelationType of the relation
	 * target = The AtkObject which is to be the target of the relation.
	 * Returns: TRUE if the relationship is added.
	 */
	public int addRelationship(AtkRelationType relationship, ObjectAtk target)
	{
		// gboolean atk_object_add_relationship (AtkObject *object,  AtkRelationType relationship,  AtkObject *target);
		return atk_object_add_relationship(atkObject, relationship, (target is null) ? null : target.getObjectAtkStruct());
	}
	
	/**
	 * Removes a relationship of the specified type with the specified target.
	 * Params:
	 * relationship = The AtkRelationType of the relation
	 * target = The AtkObject which is the target of the relation to be removed.
	 * Returns: TRUE if the relationship is removed.
	 */
	public int removeRelationship(AtkRelationType relationship, ObjectAtk target)
	{
		// gboolean atk_object_remove_relationship (AtkObject *object,  AtkRelationType relationship,  AtkObject *target);
		return atk_object_remove_relationship(atkObject, relationship, (target is null) ? null : target.getObjectAtkStruct());
	}
	
	/**
	 * Get a list of properties applied to this object as a whole, as an AtkAttributeSet consisting of
	 * name-value pairs. As such these attributes may be considered weakly-typed properties or annotations,
	 * as distinct from strongly-typed object data available via other get/set methods.
	 * Not all objects have explicit "name-value pair" AtkAttributeSet properties.
	 * Since 1.12
	 * Returns: an AtkAttributeSet consisting of all explicit properties/annotations applied to the object, or an empty set if the object has no name-value pair attributes assigned to it. [transfer none]
	 */
	public AtkAttributeSet* getAttributes()
	{
		// AtkAttributeSet * atk_object_get_attributes (AtkObject *accessible);
		return atk_object_get_attributes(atkObject);
	}
	
	/**
	 * Gets the description string describing the AtkRole role.
	 * Params:
	 * role = The AtkRole whose name is required
	 * Returns: the string describing the AtkRole
	 */
	public static string roleGetName(AtkRole role)
	{
		// const gchar * atk_role_get_name (AtkRole role);
		return Str.toString(atk_role_get_name(role));
	}
	
	/**
	 * Gets the localized description string describing the AtkRole role.
	 * Params:
	 * role = The AtkRole whose localized name is required
	 * Returns: the localized string describing the AtkRole
	 */
	public static string roleGetLocalizedName(AtkRole role)
	{
		// const gchar * atk_role_get_localized_name (AtkRole role);
		return Str.toString(atk_role_get_localized_name(role));
	}
	
	/**
	 * Get the AtkRole type corresponding to a rolew name.
	 * Params:
	 * name = a string which is the (non-localized) name of an ATK role.
	 * Returns: the AtkRole enumerated type corresponding to the specified name, or ATK_ROLE_INVALID if no matching role is found.
	 */
	public static AtkRole roleForName(string name)
	{
		// AtkRole atk_role_for_name (const gchar *name);
		return atk_role_for_name(Str.toStringz(name));
	}
}
