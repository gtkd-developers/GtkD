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


module atk.NoOpObjectFactory;

private import atk.ObjectFactory;
private import atk.c.functions;
public  import atk.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * The AtkObjectFactory which creates an AtkNoOpObject. An instance of
 * this is created by an AtkRegistry if no factory type has not been
 * specified to create an accessible object of a particular type.
 */
public class NoOpObjectFactory : ObjectFactory
{
	/** the main Gtk struct */
	protected AtkNoOpObjectFactory* atkNoOpObjectFactory;

	/** Get the main Gtk struct */
	public AtkNoOpObjectFactory* getNoOpObjectFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkNoOpObjectFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkNoOpObjectFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkNoOpObjectFactory* atkNoOpObjectFactory, bool ownedRef = false)
	{
		this.atkNoOpObjectFactory = atkNoOpObjectFactory;
		super(cast(AtkObjectFactory*)atkNoOpObjectFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_no_op_object_factory_get_type();
	}

	/**
	 * Creates an instance of an #AtkObjectFactory which generates primitive
	 * (non-functioning) #AtkObjects.
	 *
	 * Returns: an instance of an #AtkObjectFactory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = atk_no_op_object_factory_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AtkNoOpObjectFactory*) __p, true);
	}
}
