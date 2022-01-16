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


module gobject.TypeInterface;

private import gobject.ObjectG;
private import gobject.TypeClass;
private import gobject.TypePluginIF;
private import gobject.c.functions;
public  import gobject.c.types;


/**
 * An opaque structure used as the base of all interface types.
 */
public class TypeInterface
{
	/** the main Gtk struct */
	protected GTypeInterface* gTypeInterface;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTypeInterface* getTypeInterfaceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTypeInterface;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTypeInterface;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTypeInterface* gTypeInterface, bool ownedRef = false)
	{
		this.gTypeInterface = gTypeInterface;
		this.ownedRef = ownedRef;
	}


	/**
	 * Returns the corresponding #GTypeInterface structure of the parent type
	 * of the instance type to which @g_iface belongs. This is useful when
	 * deriving the implementation of an interface from the parent type and
	 * then possibly overriding some methods.
	 *
	 * Returns: the
	 *     corresponding #GTypeInterface structure of the parent type of the
	 *     instance type to which @g_iface belongs, or %NULL if the parent
	 *     type doesn't conform to the interface
	 */
	public TypeInterface peekParent()
	{
		auto __p = g_type_interface_peek_parent(gTypeInterface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInterface)(cast(GTypeInterface*) __p);
	}

	/**
	 * Adds @prerequisite_type to the list of prerequisites of @interface_type.
	 * This means that any type implementing @interface_type must also implement
	 * @prerequisite_type. Prerequisites can be thought of as an alternative to
	 * interface derivation (which GType doesn't support). An interface can have
	 * at most one instantiatable prerequisite type.
	 *
	 * Params:
	 *     interfaceType = #GType value of an interface type
	 *     prerequisiteType = #GType value of an interface or instantiatable type
	 */
	public static void addPrerequisite(GType interfaceType, GType prerequisiteType)
	{
		g_type_interface_add_prerequisite(interfaceType, prerequisiteType);
	}

	/**
	 * Returns the #GTypePlugin structure for the dynamic interface
	 * @interface_type which has been added to @instance_type, or %NULL
	 * if @interface_type has not been added to @instance_type or does
	 * not have a #GTypePlugin structure. See g_type_add_interface_dynamic().
	 *
	 * Params:
	 *     instanceType = #GType of an instantiatable type
	 *     interfaceType = #GType of an interface type
	 *
	 * Returns: the #GTypePlugin for the dynamic
	 *     interface @interface_type of @instance_type
	 */
	public static TypePluginIF getPlugin(GType instanceType, GType interfaceType)
	{
		auto __p = g_type_interface_get_plugin(instanceType, interfaceType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypePluginIF)(cast(GTypePlugin*) __p);
	}

	/**
	 * Returns the most specific instantiatable prerequisite of an
	 * interface type. If the interface type has no instantiatable
	 * prerequisite, %G_TYPE_INVALID is returned.
	 *
	 * See g_type_interface_add_prerequisite() for more information
	 * about prerequisites.
	 *
	 * Params:
	 *     interfaceType = an interface type
	 *
	 * Returns: the instantiatable prerequisite type or %G_TYPE_INVALID if none
	 *
	 * Since: 2.68
	 */
	public static GType instantiatablePrerequisite(GType interfaceType)
	{
		return g_type_interface_instantiatable_prerequisite(interfaceType);
	}

	/**
	 * Returns the #GTypeInterface structure of an interface to which the
	 * passed in class conforms.
	 *
	 * Params:
	 *     instanceClass = a #GTypeClass structure
	 *     ifaceType = an interface ID which this class conforms to
	 *
	 * Returns: the #GTypeInterface
	 *     structure of @iface_type if implemented by @instance_class, %NULL
	 *     otherwise
	 */
	public static TypeInterface peek(TypeClass instanceClass, GType ifaceType)
	{
		auto __p = g_type_interface_peek((instanceClass is null) ? null : instanceClass.getTypeClassStruct(), ifaceType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TypeInterface)(cast(GTypeInterface*) __p);
	}

	/**
	 * Returns the prerequisites of an interfaces type.
	 *
	 * Params:
	 *     interfaceType = an interface type
	 *
	 * Returns: a
	 *     newly-allocated zero-terminated array of #GType containing
	 *     the prerequisites of @interface_type
	 *
	 * Since: 2.2
	 */
	public static GType[] prerequisites(GType interfaceType)
	{
		uint nPrerequisites;

		auto __p = g_type_interface_prerequisites(interfaceType, &nPrerequisites);

		return __p[0 .. nPrerequisites];
	}
}
