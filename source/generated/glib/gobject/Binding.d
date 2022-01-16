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


module gobject.Binding;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.c.functions;
public  import gobject.c.types;


/**
 * #GBinding is the representation of a binding between a property on a
 * #GObject instance (or source) and another property on another #GObject
 * instance (or target).
 * 
 * Whenever the source property changes, the same value is applied to the
 * target property; for instance, the following binding:
 * 
 * |[<!-- language="C" -->
 * g_object_bind_property (object1, "property-a",
 * object2, "property-b",
 * G_BINDING_DEFAULT);
 * ]|
 * 
 * will cause the property named "property-b" of @object2 to be updated
 * every time g_object_set() or the specific accessor changes the value of
 * the property "property-a" of @object1.
 * 
 * It is possible to create a bidirectional binding between two properties
 * of two #GObject instances, so that if either property changes, the
 * other is updated as well, for instance:
 * 
 * |[<!-- language="C" -->
 * g_object_bind_property (object1, "property-a",
 * object2, "property-b",
 * G_BINDING_BIDIRECTIONAL);
 * ]|
 * 
 * will keep the two properties in sync.
 * 
 * It is also possible to set a custom transformation function (in both
 * directions, in case of a bidirectional binding) to apply a custom
 * transformation from the source value to the target value before
 * applying it; for instance, the following binding:
 * 
 * |[<!-- language="C" -->
 * g_object_bind_property_full (adjustment1, "value",
 * adjustment2, "value",
 * G_BINDING_BIDIRECTIONAL,
 * celsius_to_fahrenheit,
 * fahrenheit_to_celsius,
 * NULL, NULL);
 * ]|
 * 
 * will keep the "value" property of the two adjustments in sync; the
 * @celsius_to_fahrenheit function will be called whenever the "value"
 * property of @adjustment1 changes and will transform the current value
 * of the property before applying it to the "value" property of @adjustment2.
 * 
 * Vice versa, the @fahrenheit_to_celsius function will be called whenever
 * the "value" property of @adjustment2 changes, and will transform the
 * current value of the property before applying it to the "value" property
 * of @adjustment1.
 * 
 * Note that #GBinding does not resolve cycles by itself; a cycle like
 * 
 * |[
 * object1:propertyA -> object2:propertyB
 * object2:propertyB -> object3:propertyC
 * object3:propertyC -> object1:propertyA
 * ]|
 * 
 * might lead to an infinite loop. The loop, in this particular case,
 * can be avoided if the objects emit the #GObject::notify signal only
 * if the value has effectively been changed. A binding is implemented
 * using the #GObject::notify signal, so it is susceptible to all the
 * various ways of blocking a signal emission, like g_signal_stop_emission()
 * or g_signal_handler_block().
 * 
 * A binding will be severed, and the resources it allocates freed, whenever
 * either one of the #GObject instances it refers to are finalized, or when
 * the #GBinding instance loses its last reference.
 * 
 * Bindings for languages with garbage collection can use
 * g_binding_unbind() to explicitly release a binding between the source
 * and target properties, instead of relying on the last reference on the
 * binding, source, and target instances to drop.
 * 
 * #GBinding is available since GObject 2.26
 *
 * Since: 2.26
 */
public class Binding : ObjectG
{
	/** the main Gtk struct */
	protected GBinding* gBinding;

	/** Get the main Gtk struct */
	public GBinding* getBindingStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gBinding;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBinding;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GBinding* gBinding, bool ownedRef = false)
	{
		this.gBinding = gBinding;
		super(cast(GObject*)gBinding, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_binding_get_type();
	}

	/**
	 * Retrieves the #GObject instance used as the source of the binding.
	 *
	 * A #GBinding can outlive the source #GObject as the binding does not hold a
	 * strong reference to the source. If the source is destroyed before the
	 * binding then this function will return %NULL.
	 *
	 * Returns: the source #GObject, or %NULL if the
	 *     source does not exist any more.
	 *
	 * Since: 2.68
	 */
	public ObjectG dupSource()
	{
		auto __p = g_binding_dup_source(gBinding);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Retrieves the #GObject instance used as the target of the binding.
	 *
	 * A #GBinding can outlive the target #GObject as the binding does not hold a
	 * strong reference to the target. If the target is destroyed before the
	 * binding then this function will return %NULL.
	 *
	 * Returns: the target #GObject, or %NULL if the
	 *     target does not exist any more.
	 *
	 * Since: 2.68
	 */
	public ObjectG dupTarget()
	{
		auto __p = g_binding_dup_target(gBinding);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Retrieves the flags passed when constructing the #GBinding.
	 *
	 * Returns: the #GBindingFlags used by the #GBinding
	 *
	 * Since: 2.26
	 */
	public GBindingFlags getFlags()
	{
		return g_binding_get_flags(gBinding);
	}

	/**
	 * Retrieves the #GObject instance used as the source of the binding.
	 *
	 * A #GBinding can outlive the source #GObject as the binding does not hold a
	 * strong reference to the source. If the source is destroyed before the
	 * binding then this function will return %NULL.
	 *
	 * Use g_binding_dup_source() if the source or binding are used from different
	 * threads as otherwise the pointer returned from this function might become
	 * invalid if the source is finalized from another thread in the meantime.
	 *
	 * Deprecated: Use g_binding_dup_source() for a safer version of this
	 * function.
	 *
	 * Returns: the source #GObject, or %NULL if the
	 *     source does not exist any more.
	 *
	 * Since: 2.26
	 */
	public ObjectG getSource()
	{
		auto __p = g_binding_get_source(gBinding);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Retrieves the name of the property of #GBinding:source used as the source
	 * of the binding.
	 *
	 * Returns: the name of the source property
	 *
	 * Since: 2.26
	 */
	public string getSourceProperty()
	{
		return Str.toString(g_binding_get_source_property(gBinding));
	}

	/**
	 * Retrieves the #GObject instance used as the target of the binding.
	 *
	 * A #GBinding can outlive the target #GObject as the binding does not hold a
	 * strong reference to the target. If the target is destroyed before the
	 * binding then this function will return %NULL.
	 *
	 * Use g_binding_dup_target() if the target or binding are used from different
	 * threads as otherwise the pointer returned from this function might become
	 * invalid if the target is finalized from another thread in the meantime.
	 *
	 * Deprecated: Use g_binding_dup_target() for a safer version of this
	 * function.
	 *
	 * Returns: the target #GObject, or %NULL if the
	 *     target does not exist any more.
	 *
	 * Since: 2.26
	 */
	public ObjectG getTarget()
	{
		auto __p = g_binding_get_target(gBinding);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Retrieves the name of the property of #GBinding:target used as the target
	 * of the binding.
	 *
	 * Returns: the name of the target property
	 *
	 * Since: 2.26
	 */
	public string getTargetProperty()
	{
		return Str.toString(g_binding_get_target_property(gBinding));
	}

	/**
	 * Explicitly releases the binding between the source and the target
	 * property expressed by @binding.
	 *
	 * This function will release the reference that is being held on
	 * the @binding instance if the binding is still bound; if you want to hold on
	 * to the #GBinding instance after calling g_binding_unbind(), you will need
	 * to hold a reference to it.
	 *
	 * Note however that this function does not take ownership of @binding, it
	 * only unrefs the reference that was initially created by
	 * g_object_bind_property() and is owned by the binding.
	 *
	 * Since: 2.38
	 */
	public void unbind()
	{
		g_binding_unbind(gBinding);
	}
}
