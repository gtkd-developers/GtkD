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
 * inFile  = GstChildProxy.html
 * outPack = gstreamer
 * outFile = ChildProxyT
 * strct   = GstChildProxy
 * realStrct=
 * ctorStrct=
 * clss    = ChildProxyT
 * interf  = ChildProxyIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_child_proxy_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ChildProxyT;

public  import gstreamerc.gstreamertypes;

public import gstreamerc.gstreamer;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import gobject.ObjectG;
public import gobject.ParamSpec;
public import gobject.Value;




/**
 * This interface abstracts handling of property sets for elements with
 * children. Imagine elements such as mixers or polyphonic generators. They all
 * have multiple GstPad or some kind of voice objects. Another use case are
 * container elements like GstBin.
 * The element implementing the interface acts as a parent for those child
 * objects.
 *
 * By implementing this interface the child properties can be accessed from the
 * parent element by using gst_child_proxy_get() and gst_child_proxy_set().
 *
 * Property names are written as "child-name::property-name". The whole naming
 * scheme is recursive. Thus "child1::child2::property" is valid too, if
 * "child1" and "child2" implement the GstChildProxy interface.
 */
public template ChildProxyT(TStruct)
{
	
	/** the main Gtk struct */
	protected GstChildProxy* gstChildProxy;
	
	
	public GstChildProxy* getChildProxyTStruct()
	{
		return cast(GstChildProxy*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ObjectG, string, ChildProxyIF)[] _onChildAddedListeners;
	void delegate(ObjectG, string, ChildProxyIF)[] onChildAddedListeners()
	{
		return  _onChildAddedListeners;
	}
	/**
	 * Will be emitted after the object was added to the child_proxy.
	 */
	void addOnChildAdded(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-added",
			cast(GCallback)&callBackChildAdded,
			cast(void*)cast(ChildProxyIF)this,
			null,
			connectFlags);
			connectedSignals["child-added"] = 1;
		}
		_onChildAddedListeners ~= dlg;
	}
	extern(C) static void callBackChildAdded(GstChildProxy* childProxyStruct, GObject* object, gchar* name, ChildProxyIF _childProxyIF)
	{
		foreach ( void delegate(ObjectG, string, ChildProxyIF) dlg ; _childProxyIF.onChildAddedListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(object), Str.toString(name), _childProxyIF);
		}
	}
	
	void delegate(ObjectG, string, ChildProxyIF)[] _onChildRemovedListeners;
	void delegate(ObjectG, string, ChildProxyIF)[] onChildRemovedListeners()
	{
		return  _onChildRemovedListeners;
	}
	/**
	 * Will be emitted after the object was removed from the child_proxy.
	 * See Also
	 * GstBin
	 */
	void addOnChildRemoved(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("child-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-removed",
			cast(GCallback)&callBackChildRemoved,
			cast(void*)cast(ChildProxyIF)this,
			null,
			connectFlags);
			connectedSignals["child-removed"] = 1;
		}
		_onChildRemovedListeners ~= dlg;
	}
	extern(C) static void callBackChildRemoved(GstChildProxy* childProxyStruct, GObject* object, gchar* name, ChildProxyIF _childProxyIF)
	{
		foreach ( void delegate(ObjectG, string, ChildProxyIF) dlg ; _childProxyIF.onChildRemovedListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(object), Str.toString(name), _childProxyIF);
		}
	}
	
	
	/**
	 * Gets the number of child objects this parent contains.
	 * Returns: the number of child objects MT safe.
	 */
	public uint getChildrenCount()
	{
		// guint gst_child_proxy_get_children_count (GstChildProxy *parent);
		return gst_child_proxy_get_children_count(getChildProxyTStruct());
	}
	
	/**
	 * Looks up a child element by the given name.
	 * This virtual method has a default implementation that uses GstObject
	 * together with gst_object_get_name(). If the interface is to be used with
	 * GObjects, this methods needs to be overridden.
	 * Params:
	 * name = the childs name
	 * Returns: the child object or NULL if not found. Unref after usage. MT safe. [transfer full]
	 */
	public ObjectG getChildByName(string name)
	{
		// GObject * gst_child_proxy_get_child_by_name (GstChildProxy *parent,  const gchar *name);
		auto p = gst_child_proxy_get_child_by_name(getChildProxyTStruct(), Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Fetches a child by its number.
	 * Params:
	 * index = the childs position in the child list
	 * Returns: the child object or NULL if not found (index too high). Unref after usage. MT safe. [transfer full]
	 */
	public ObjectG getChildByIndex(uint index)
	{
		// GObject * gst_child_proxy_get_child_by_index (GstChildProxy *parent,  guint index);
		auto p = gst_child_proxy_get_child_by_index(getChildProxyTStruct(), index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Looks up which object and GParamSpec would be effected by the given name.
	 * MT safe.
	 * Params:
	 * name = name of the property to look up
	 * target = pointer to a GObject that
	 * takes the real object to set property on. [out][allow-none][transfer full]
	 * pspec = pointer to take the GParamSpec
	 * describing the property. [out][allow-none][transfer none]
	 * Returns: TRUE if target and pspec could be found. FALSE otherwise. In that case the values for pspec and target are not modified. Unref target after usage. For plain GObjects target is the same as object.
	 */
	public int lookup(string name, out ObjectG target, out ParamSpec pspec)
	{
		// gboolean gst_child_proxy_lookup (GstChildProxy *object,  const gchar *name,  GObject **target,  GParamSpec **pspec);
		GObject* outtarget = null;
		GParamSpec* outpspec = null;
		
		auto p = gst_child_proxy_lookup(getChildProxyTStruct(), Str.toStringz(name), &outtarget, &outpspec);
		
		target = ObjectG.getDObject!(ObjectG)(outtarget);
		pspec = ObjectG.getDObject!(ParamSpec)(outpspec);
		return p;
	}
	
	/**
	 * Gets a single property using the GstChildProxy mechanism.
	 * You are responsible for freeing it by calling g_value_unset()
	 * Params:
	 * name = name of the property
	 * value = a GValue that should take the result. [out caller-allocates]
	 */
	public void getProperty(string name, Value value)
	{
		// void gst_child_proxy_get_property (GstChildProxy *object,  const gchar *name,  GValue *value);
		gst_child_proxy_get_property(getChildProxyTStruct(), Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets properties of the parent object and its children.
	 * Params:
	 * firstPropertyName = name of the first property to get
	 * varArgs = return location for the first property, followed optionally by more name/return location pairs, followed by NULL
	 */
	public void getValist(string firstPropertyName, void* varArgs)
	{
		// void gst_child_proxy_get_valist (GstChildProxy *object,  const gchar *first_property_name,  va_list var_args);
		gst_child_proxy_get_valist(getChildProxyTStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Sets a single property using the GstChildProxy mechanism.
	 * Params:
	 * name = name of the property to set
	 * value = new GValue for the property
	 */
	public void setProperty(string name, Value value)
	{
		// void gst_child_proxy_set_property (GstChildProxy *object,  const gchar *name,  const GValue *value);
		gst_child_proxy_set_property(getChildProxyTStruct(), Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets properties of the parent object and its children.
	 * Params:
	 * firstPropertyName = name of the first property to set
	 * varArgs = value for the first property, followed optionally by more name/value pairs, followed by NULL
	 */
	public void setValist(string firstPropertyName, void* varArgs)
	{
		// void gst_child_proxy_set_valist (GstChildProxy *object,  const gchar *first_property_name,  va_list var_args);
		gst_child_proxy_set_valist(getChildProxyTStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Emits the "child-added" signal.
	 * Params:
	 * child = the newly added child
	 * name = the name of the new child
	 */
	public void childAdded(ObjectG child, string name)
	{
		// void gst_child_proxy_child_added (GstChildProxy *parent,  GObject *child,  const gchar *name);
		gst_child_proxy_child_added(getChildProxyTStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(name));
	}
	
	/**
	 * Emits the "child-removed" signal.
	 * Params:
	 * child = the removed child
	 * name = the name of the old child
	 * Signal Details
	 * The "child-added" signal
	 * void user_function (GstChildProxy *child_proxy,
	 *  GObject *object,
	 *  gchar *name,
	 *  gpointer user_data) : Run First
	 * Will be emitted after the object was added to the child_proxy.
	 * name = the name of the new child
	 */
	public void childRemoved(ObjectG child, string name)
	{
		// void gst_child_proxy_child_removed (GstChildProxy *parent,  GObject *child,  const gchar *name);
		gst_child_proxy_child_removed(getChildProxyTStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(name));
	}
}
