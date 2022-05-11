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


module atk.ObjectFactory;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import gobject.ObjectG;


/**
 * This class is the base object class for a factory used to create an
 * accessible object for a specific GType. The function
 * atk_registry_set_factory_type() is normally called to store in the
 * registry the factory type to be used to create an accessible of a
 * particular GType.
 */
public class ObjectFactory : ObjectG
{
	/** the main Gtk struct */
	protected AtkObjectFactory* atkObjectFactory;

	/** Get the main Gtk struct */
	public AtkObjectFactory* getObjectFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkObjectFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkObjectFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkObjectFactory* atkObjectFactory, bool ownedRef = false)
	{
		this.atkObjectFactory = atkObjectFactory;
		super(cast(GObject*)atkObjectFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_object_factory_get_type();
	}

	/**
	 * Provides an #AtkObject that implements an accessibility interface
	 * on behalf of @obj
	 *
	 * Params:
	 *     obj = a #GObject
	 *
	 * Returns: an #AtkObject that implements an accessibility
	 *     interface on behalf of @obj
	 */
	public ObjectAtk createAccessible(ObjectG obj)
	{
		auto __p = atk_object_factory_create_accessible(atkObjectFactory, (obj is null) ? null : obj.getObjectGStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p, true);
	}

	/**
	 * Gets the GType of the accessible which is created by the factory.
	 *
	 * Returns: the type of the accessible which is created by the @factory.
	 *     The value G_TYPE_INVALID is returned if no type if found.
	 */
	public GType getAccessibleType()
	{
		return atk_object_factory_get_accessible_type(atkObjectFactory);
	}

	/**
	 * Inform @factory that it is no longer being used to create
	 * accessibles. When called, @factory may need to inform
	 * #AtkObjects which it has created that they need to be re-instantiated.
	 * Note: primarily used for runtime replacement of #AtkObjectFactorys
	 * in object registries.
	 */
	public void invalidate()
	{
		atk_object_factory_invalidate(atkObjectFactory);
	}
}
