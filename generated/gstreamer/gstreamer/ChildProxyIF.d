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


module gstreamer.ChildProxyIF;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.Value;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import std.algorithm;


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
public interface ChildProxyIF{
	/** Get the main Gtk struct */
	public GstChildProxy* getChildProxyStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gst_child_proxy_get_type();
	}

	/**
	 * Emits the "child-added" signal.
	 *
	 * Params:
	 *     child = the newly added child
	 *     name = the name of the new child
	 */
	public void childAdded(ObjectG child, string name);

	/**
	 * Emits the "child-removed" signal.
	 *
	 * Params:
	 *     child = the removed child
	 *     name = the name of the old child
	 */
	public void childRemoved(ObjectG child, string name);

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
	public ObjectG getChildByIndex(uint index);

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
	public ObjectG getChildByName(string name);

	/**
	 * Gets the number of child objects this parent contains.
	 *
	 * Returns: the number of child objects
	 *
	 *     MT safe.
	 */
	public uint getChildrenCount();

	/**
	 * Gets a single property using the GstChildProxy mechanism.
	 * You are responsible for freeing it by calling g_value_unset()
	 *
	 * Params:
	 *     name = name of the property
	 *     value = a #GValue that should take the result.
	 */
	public void childGetProperty(string name, out Value value);

	/**
	 * Gets properties of the parent object and its children.
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to get
	 *     varArgs = return location for the first property, followed optionally by more name/return location pairs, followed by %NULL
	 */
	public void childGetValist(string firstPropertyName, void* varArgs);

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
	public bool lookup(string name, out ObjectG target, out ParamSpec pspec);

	/**
	 * Sets a single property using the GstChildProxy mechanism.
	 *
	 * Params:
	 *     name = name of the property to set
	 *     value = new #GValue for the property
	 */
	public void childSetProperty(string name, Value value);

	/**
	 * Sets properties of the parent object and its children.
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to set
	 *     varArgs = value for the first property, followed optionally by more name/value pairs, followed by %NULL
	 */
	public void childSetValist(string firstPropertyName, void* varArgs);

	/**
	 * Will be emitted after the @object was added to the @child_proxy.
	 *
	 * Params:
	 *     object = the #GObject that was added
	 *     name = the name of the new child
	 */
	gulong addOnChildAdded(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * Will be emitted after the @object was removed from the @child_proxy.
	 *
	 * Params:
	 *     object = the #GObject that was removed
	 *     name = the name of the old child
	 */
	gulong addOnChildRemoved(void delegate(ObjectG, string, ChildProxyIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
