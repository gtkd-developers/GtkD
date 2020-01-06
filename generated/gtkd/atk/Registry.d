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


module atk.Registry;

private import atk.ObjectFactory;
private import atk.c.functions;
public  import atk.c.types;
private import gobject.ObjectG;


/**
 * The AtkRegistry is normally used to create appropriate ATK "peers"
 * for user interface components.  Application developers usually need
 * only interact with the AtkRegistry by associating appropriate ATK
 * implementation classes with GObject classes via the
 * atk_registry_set_factory_type call, passing the appropriate GType
 * for application custom widget classes.
 */
public class Registry : ObjectG
{
	/** the main Gtk struct */
	protected AtkRegistry* atkRegistry;

	/** Get the main Gtk struct */
	public AtkRegistry* getRegistryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkRegistry;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkRegistry;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkRegistry* atkRegistry, bool ownedRef = false)
	{
		this.atkRegistry = atkRegistry;
		super(cast(GObject*)atkRegistry, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_registry_get_type();
	}

	/**
	 * Gets an #AtkObjectFactory appropriate for creating #AtkObjects
	 * appropriate for @type.
	 *
	 * Params:
	 *     type = a #GType with which to look up the associated #AtkObjectFactory
	 *
	 * Returns: an #AtkObjectFactory appropriate for creating
	 *     #AtkObjects appropriate for @type.
	 */
	public ObjectFactory getFactory(GType type)
	{
		auto __p = atk_registry_get_factory(atkRegistry, type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectFactory)(cast(AtkObjectFactory*) __p);
	}

	/**
	 * Provides a #GType indicating the #AtkObjectFactory subclass
	 * associated with @type.
	 *
	 * Params:
	 *     type = a #GType with which to look up the associated #AtkObjectFactory
	 *         subclass
	 *
	 * Returns: a #GType associated with type @type
	 */
	public GType getFactoryType(GType type)
	{
		return atk_registry_get_factory_type(atkRegistry, type);
	}

	/**
	 * Associate an #AtkObjectFactory subclass with a #GType. Note:
	 * The associated @factory_type will thereafter be responsible for
	 * the creation of new #AtkObject implementations for instances
	 * appropriate for @type.
	 *
	 * Params:
	 *     type = an #AtkObject type
	 *     factoryType = an #AtkObjectFactory type to associate with @type.  Must
	 *         implement AtkObject appropriate for @type.
	 */
	public void setFactoryType(GType type, GType factoryType)
	{
		atk_registry_set_factory_type(atkRegistry, type, factoryType);
	}

	/**
	 * Gets a default implementation of the #AtkObjectFactory/type
	 * registry.
	 * Note: For most toolkit maintainers, this will be the correct
	 * registry for registering new #AtkObject factories. Following
	 * a call to this function, maintainers may call atk_registry_set_factory_type()
	 * to associate an #AtkObjectFactory subclass with the GType of objects
	 * for whom accessibility information will be provided.
	 *
	 * Returns: a default implementation of the
	 *     #AtkObjectFactory/type registry
	 */
	public static Registry getDefaultRegistry()
	{
		auto __p = atk_get_default_registry();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Registry)(cast(AtkRegistry*) __p, true);
	}
}
