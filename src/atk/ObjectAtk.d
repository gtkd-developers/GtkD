/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- atk.StateSet
 * structWrap:
 * 	- AtkStateSet* -> StateSet
 * module aliases:
 * local aliases:
 */

module atk.ObjectAtk;

private import gtkc.atktypes;

private import gtkc.atk;


private import glib.Str;
private import atk.StateSet;



private import gobject.ObjectG;

/**
 * Description
 * This class is the primary class for accessibility support via
 * the Accessibility ToolKit (ATK). Objects which are instances
 * of AtkObject (or instances of AtkObject-derived types) are
 * queried for properties which relate basic (and generic) properties of a
 * UI component such as name and description. Instances of AtkObject
 * may also be queried as to whether they implement other ATK interfaces
 * (e.g. AtkAction, AtkComponent, etc.), as appropriate to the role
 * which a given UI component plays in a user interface.
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
	protected void* getStruct()
	{
		return cast(void*)atkObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkObject* atkObject)
	{
		if(atkObject is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null atkObject passed to constructor.");
			else return;
		}
		super(cast(GObject*)atkObject);
		this.atkObject = atkObject;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gpointer, ObjectAtk)[] onActiveDescendantChangedListeners;
	void addOnActiveDescendantChanged(void delegate(gpointer, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackActiveDescendantChanged(AtkObject* atkobjectStruct, gpointer arg1, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(gpointer, ObjectAtk) dlg ; objectAtk.onActiveDescendantChangedListeners )
		{
			dlg(arg1, objectAtk);
		}
		
		return consumed;
	}
	
	void delegate(guint, gpointer, ObjectAtk)[] onChildrenChangedListeners;
	void addOnChildrenChanged(void delegate(guint, gpointer, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackChildrenChanged(AtkObject* atkobjectStruct, guint arg1, gpointer arg2, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(guint, gpointer, ObjectAtk) dlg ; objectAtk.onChildrenChangedListeners )
		{
			dlg(arg1, arg2, objectAtk);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, ObjectAtk)[] onFocusListeners;
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
	extern(C) static void callBackFocus(AtkObject* atkobjectStruct, gboolean arg1, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(gboolean, ObjectAtk) dlg ; objectAtk.onFocusListeners )
		{
			dlg(arg1, objectAtk);
		}
		
		return consumed;
	}
	
	void delegate(gpointer, ObjectAtk)[] onPropertyChangeListeners;
	void addOnPropertyChange(void delegate(gpointer, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackPropertyChange(AtkObject* atkobjectStruct, gpointer arg1, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(gpointer, ObjectAtk) dlg ; objectAtk.onPropertyChangeListeners )
		{
			dlg(arg1, objectAtk);
		}
		
		return consumed;
	}
	
	void delegate(char[], gboolean, ObjectAtk)[] onStateChangeListeners;
	void addOnStateChange(void delegate(char[], gboolean, ObjectAtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackStateChange(AtkObject* atkobjectStruct, gchar* arg1, gboolean arg2, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(char[], gboolean, ObjectAtk) dlg ; objectAtk.onStateChangeListeners )
		{
			dlg(Str.toString(arg1), arg2, objectAtk);
		}
		
		return consumed;
	}
	
	void delegate(ObjectAtk)[] onVisibleDataChangedListeners;
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
	extern(C) static void callBackVisibleDataChanged(AtkObject* atkobjectStruct, ObjectAtk objectAtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(ObjectAtk) dlg ; objectAtk.onVisibleDataChangedListeners )
		{
			dlg(objectAtk);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Registers the role specified by name.
	 * Params:
	 * name =  a character string describing the new role.
	 * Returns: an AtkRole for the new role.
	 */
	public static AtkRole atkRoleRegister(char[] name)
	{
		// AtkRole atk_role_register (const gchar *name);
		return atk_role_register(Str.toStringz(name));
	}
	
	
	
	
	
	
	/**
	 * Gets a reference to an object's AtkObject implementation, if
	 * the object implements AtkObjectIface
	 * Params:
	 * implementor =  The GObject instance which should implement AtkImplementorIface
	 * if a non-null return value is required.
	 * Returns: a reference to an object's AtkObject implementation
	 */
	public static AtkObject* atkImplementorRefAccessible(AtkImplementor* implementor)
	{
		// AtkObject* atk_implementor_ref_accessible (AtkImplementor *implementor);
		return atk_implementor_ref_accessible(implementor);
	}
	
	/**
	 * Gets the accessible name of the accessible.
	 * Returns: a character string representing the accessible name of the object.
	 */
	public char[] getName()
	{
		// const gchar* atk_object_get_name (AtkObject *accessible);
		return Str.toString(atk_object_get_name(atkObject) );
	}
	
	/**
	 * Gets the accessible description of the accessible.
	 * Returns: a character string representing the accessible descriptionof the accessible.
	 */
	public char[] getDescription()
	{
		// const gchar* atk_object_get_description (AtkObject *accessible);
		return Str.toString(atk_object_get_description(atkObject) );
	}
	
	/**
	 * Gets the accessible parent of the accessible.
	 * Returns: a AtkObject representing the accessible parent of the accessible
	 */
	public AtkObject* getParent()
	{
		// AtkObject* atk_object_get_parent (AtkObject *accessible);
		return atk_object_get_parent(atkObject);
	}
	
	/**
	 * Gets the number of accessible children of the accessible.
	 * Returns: an integer representing the number of accessible childrenof the accessible.
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
	 * i =  a gint representing the position of the child, starting from 0
	 * Returns: an AtkObject representing the specified accessible childof the accessible.
	 */
	public AtkObject* refAccessibleChild(int i)
	{
		// AtkObject* atk_object_ref_accessible_child (AtkObject *accessible,  gint i);
		return atk_object_ref_accessible_child(atkObject, i);
	}
	
	/**
	 * Gets the AtkRelationSet associated with the object.
	 * Returns: an AtkRelationSet representing the relation set of the object.
	 */
	public AtkRelationSet* refRelationSet()
	{
		// AtkRelationSet* atk_object_ref_relation_set (AtkObject *accessible);
		return atk_object_ref_relation_set(atkObject);
	}
	
	/**
	 * Warning
	 * atk_object_get_layer is deprecated and should not be used in newly-written code. Use atk_component_get_layer instead.
	 * Gets the layer of the accessible.
	 * Returns:Returns: an AtkLayer which is the layer of the accessible
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
	 * Returns:Returns: a gint which is the zorder of the accessible, i.e. the depth at which the component is shown in relation to other components in the same container.
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
	 * Returns: a reference to an AtkStateSet which is the stateset of the accessible
	 */
	public StateSet refStateSet()
	{
		// AtkStateSet* atk_object_ref_state_set (AtkObject *accessible);
		return new StateSet( atk_object_ref_state_set(atkObject) );
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
	 * Sets the accessible name of the accessible.
	 * Params:
	 * name =  a character string to be set as the accessible name
	 */
	public void setName(char[] name)
	{
		// void atk_object_set_name (AtkObject *accessible,  const gchar *name);
		atk_object_set_name(atkObject, Str.toStringz(name));
	}
	
	/**
	 * Sets the accessible description of the accessible.
	 * Params:
	 * description =  a character string to be set as the accessible description
	 */
	public void setDescription(char[] description)
	{
		// void atk_object_set_description (AtkObject *accessible,  const gchar *description);
		atk_object_set_description(atkObject, Str.toStringz(description));
	}
	
	/**
	 * Sets the accessible parent of the accessible.
	 * Params:
	 * parent =  an AtkObject to be set as the accessible parent
	 */
	public void setParent(AtkObject* parent)
	{
		// void atk_object_set_parent (AtkObject *accessible,  AtkObject *parent);
		atk_object_set_parent(atkObject, parent);
	}
	
	/**
	 * Sets the role of the accessible.
	 * Params:
	 * role =  an AtkRole to be set as the role
	 */
	public void setRole(AtkRole role)
	{
		// void atk_object_set_role (AtkObject *accessible,  AtkRole role);
		atk_object_set_role(atkObject, role);
	}
	
	/**
	 * Specifies a function to be called when a property changes value.
	 * Params:
	 * handler =  a function to be called when a property changes its value
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
	 * handlerId =  a guint which identifies the handler to be removed.
	 */
	public void removePropertyChangeHandler(uint handlerId)
	{
		// void atk_object_remove_property_change_handler  (AtkObject *accessible,  guint handler_id);
		atk_object_remove_property_change_handler(atkObject, handlerId);
	}
	
	/**
	 * Emits a state-change signal for the specified state.
	 * Params:
	 * state =  an AtkState whose state is changed
	 * value =  a gboolean which indicates whether the state is being set on or off
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
	 * data =  a gpointer which identifies the object for which the AtkObject was created.
	 */
	public void initialize(void* data)
	{
		// void atk_object_initialize (AtkObject *accessible,  gpointer data);
		atk_object_initialize(atkObject, data);
	}
	
	/**
	 * Adds a relationship of the specified type with the specified target.
	 * Params:
	 * relationship =  The AtkRelationType of the relation
	 * target =  The AtkObject which is to be the target of the relation.
	 * Returns:TRUE if the relationship is added.
	 */
	public int addRelationship(AtkRelationType relationship, AtkObject* target)
	{
		// gboolean atk_object_add_relationship (AtkObject *object,  AtkRelationType relationship,  AtkObject *target);
		return atk_object_add_relationship(atkObject, relationship, target);
	}
	
	/**
	 * Removes a relationship of the specified type with the specified target.
	 * Params:
	 * relationship =  The AtkRelationType of the relation
	 * target =  The AtkObject which is the target of the relation to be removed.
	 * Returns:TRUE if the relationship is removed.
	 */
	public int removeRelationship(AtkRelationType relationship, AtkObject* target)
	{
		// gboolean atk_object_remove_relationship (AtkObject *object,  AtkRelationType relationship,  AtkObject *target);
		return atk_object_remove_relationship(atkObject, relationship, target);
	}
	
	/**
	 * Get a list of properties applied to this object as a whole, as an AtkAttributeSet consisting of
	 * name-value pairs. As such these attributes may be considered weakly-typed properties or annotations,
	 * as distinct from strongly-typed object data available via other get/set methods.
	 * Not all objects have explicit "name-value pair" AtkAttributeSet properties.
	 * Returns:Returns: an AtkAttributeSet consisting of all explicit properties/annotations applied to the object, or an empty set if the object has no name-value pair attributes assigned to it.Since ATK 1.12
	 */
	public AtkAttributeSet* getAttributes()
	{
		// AtkAttributeSet* atk_object_get_attributes (AtkObject *accessible);
		return atk_object_get_attributes(atkObject);
	}
	
	/**
	 * Gets the description string describing the AtkRole role.
	 * Params:
	 * role =  The AtkRole whose name is required
	 * Returns: the string describing the AtkRole
	 */
	public static char[] atkRoleGetName(AtkRole role)
	{
		// const gchar* atk_role_get_name (AtkRole role);
		return Str.toString(atk_role_get_name(role) );
	}
	
	/**
	 * Gets the localized description string describing the AtkRole role.
	 * Params:
	 * role =  The AtkRole whose localized name is required
	 * Returns: the localized string describing the AtkRole
	 */
	public static char[] atkRoleGetLocalizedName(AtkRole role)
	{
		// const gchar* atk_role_get_localized_name (AtkRole role);
		return Str.toString(atk_role_get_localized_name(role) );
	}
	
	/**
	 * Get the AtkRole type corresponding to a rolew name.
	 * Params:
	 * name =  a string which is the (non-localized) name of an ATK role.
	 * Returns: the AtkRole enumerated type corresponding to the specifiedname, or ATK_ROLE_INVALID if no matching role is found.
	 */
	public static AtkRole atkRoleForName(char[] name)
	{
		// AtkRole atk_role_for_name (const gchar *name);
		return atk_role_for_name(Str.toStringz(name));
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
