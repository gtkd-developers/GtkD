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


module atk.ImplementorT;

public  import atk.ObjectAtk;
public  import atk.c.functions;
public  import atk.c.types;
public  import gobject.ObjectG;


/** */
public template ImplementorT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkImplementor* getImplementorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(AtkImplementor*)getStruct();
	}


	/**
	 * Gets a reference to an object's #AtkObject implementation, if
	 * the object implements #AtkObjectIface
	 *
	 * Returns: a reference to an object's #AtkObject
	 *     implementation
	 */
	public ObjectAtk refAccessible()
	{
		auto __p = atk_implementor_ref_accessible(getImplementorStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p, true);
	}
}
