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


module gstreamer.ChildProxyT;

public  import glib.MemorySlice;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.ParamSpec;
public  import gobject.Signals;
public  import gobject.Value;
public  import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
public  import std.algorithm;


/**
 * This interface abstracts handling of property sets for elements with
 * children. Imagine elements such as mixers or polyphonic generators. They all
 * have multiple #GstPad or some kind of voice objects. Another use case are
 * container elements like #GstBin.
 * The element implementing the interface acts as a parent for those child
 * objects.
 * 
 * By implementing this interface the child properties can be accessed from the
 * parent element by using gst_child_proxy_get() and gst_child_proxy_set().
 * 
 * Property names are written as "child-name::property-name". The whole naming
 * scheme is recursive. Thus "child1::child2::property" is valid too, if
 * "child1" and "child2" implement the #GstChildProxy interface.
 */
public template ChildProxyT(TStruct)
{
	/** Get the main Gtk struct */
	public GstChildProxy* getChildProxyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GstChildProxy*)getStruct();
	}


	/**
	 * Emits the "child-added" signal.
	 *
	 * Params:
	 *     child = the newly added child
	 *     name = the name of the new child
	 */
	public void childAdded(ObjectG child, string name)
	{
		gst_child_proxy_child_added(getChildProxyStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(name));
	}

	/**
	 * Emits the "child-removed" signal.
	 *
	 * Params:
	 *     child = the removed child
	 *     name = the name of the old child
	 */
	public void childRemoved(ObjectG child, string name)
	{
		gst_child_proxy_child_removed(getChildProxyStruct(), (child is null) ? null : child.getObjectGStruct(), Str.toStringz(name));
	}

	/**
	 * Fetches a child by its number.
	 *
	 * Params:
	 *     index = the child's position in the child list
	 *
	 * Returns: the child object or %NULL if
	 *     not found (index too high). Unref after usage.
	 *
	 *     MT safe.
	 */
	public ObjectG getChildByIndex(uint index)
	{
		auto p = gst_child_proxy_get_child_by_index(getChildProxyStruct(), index);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p, true);
	}

	/**
	 * Looks up a child element by the given name.
	 *
	 * This virtual method has a default implementation that uses #GstObject
	 * together with gst_object_get_name(). If the interface is to be used with
	 * #GObjects, this methods needs to be overridden.
	 *
	 * Params:
	 *     name = the child's name
	 *
	 * Returns: the child object or %NULL if
	 *     not found. Unref after usage.
	 *
	 *     MT safe.
	 */
	public ObjectG getChildByName(string name)
	{
		auto p = gst_child_proxy_get_child_by_name(getChildProxyStruct(), Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p, true);
	}

	/**
	 * Gets the number of child objects this parent contains.
	 *
	 * Returns: the number of child objects
	 *
	 *     MT safe.
	 */
	public uint getChildrenCount()
	{
		return gst_child_proxy_get_children_count(getChildProxyStruct());
	}

	/**
	 * Gets a single property using the GstChildProxy mechanism.
	 * You are responsible for freeing it by calling g_value_unset()
	 *
	 * Params:
	 *     name = name of the property
	 *     value = a #GValue that should take the result.
	 */
	public void childGetProperty(string name, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		gst_child_proxy_get_property(getChildProxyStruct(), Str.toStringz(name), outvalue);

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Gets properties of the parent object and its children.
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to get
	 *     varArgs = return location for the first property, followed optionally by more name/return location pairs, followed by %NULL
	 */
	public void childGetValist(string firstPropertyName, void* varArgs)
	{
		gst_child_proxy_get_valist(getChildProxyStruct(), Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Looks up which object and #GParamSpec would be effected by the given @name.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     name = name of the property to look up
	 *     target = pointer to a #GObject that
	 *         takes the real object to set property on
	 *     pspec = pointer to take the #GParamSpec
	 *         describing the property
	 *
	 * Returns: %TRUE if @target and @pspec could be found. %FALSE otherwise. In that
	 *     case the values for @pspec and @target are not modified. Unref @target after
	 *     usage. For plain GObjects @target is the same as @object.
	 */
	public bool lookup(string name, out ObjectG target, out ParamSpec pspec)
	{
		GObject* outtarget = null;
		GParamSpec* outpspec = null;

		auto p = gst_child_proxy_lookup(getChildProxyStruct(), Str.toStringz(name), &outtarget, &outpspec) != 0;

		target = ObjectG.getDObject!(ObjectG)(outtarget);
		pspec = ObjectG.getDObject!(ParamSpec)(outpspec);

		return p;
	}

	/**
	 * Sets a single property using the GstChildProxy mechanism.
	 *
	 * Params:
	 *     name = name of the property to set
	 *     value = new #GValue for the property
	 */
	public void childSetProperty(string name, Value value)
	{
		gst_child_proxy_set_property(getChildProxyStruct(), Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets properties of the parent object and its children.
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to set
	 *     varArgs = value for the first property, followed optionally by more name/value pairs, followed by %NULL
	 */
	public void childSetValist(string firstPropertyName, void* varArgs)
	{
		gst_child_proxy_set_valist(getChildProxyStruct(), Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Will be emitted after the @object was added to the @child_proxy.
	 *
	 * Params:
	 *     object = the #GObject that was added
	 *     name = the name of the new child
	 */
	gulong addOnChildAdded(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "child-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Will be emitted after the @object was removed from the @child_proxy.
	 *
	 * Params:
	 *     object = the #GObject that was removed
	 *     name = the name of the old child
	 */
	gulong addOnChildRemoved(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "child-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
