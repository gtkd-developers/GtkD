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


module atk.GObjectAccessible;

private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import gobject.ObjectG;


/**
 * This object class is derived from AtkObject. It can be used as a
 * basis for implementing accessible objects for GObjects which are
 * not derived from GtkWidget. One example of its use is in providing
 * an accessible object for GnomeCanvasItem in the GAIL library.
 */
public class GObjectAccessible : ObjectAtk
{
	/** the main Gtk struct */
	protected AtkGObjectAccessible* atkGObjectAccessible;

	/** Get the main Gtk struct */
	public AtkGObjectAccessible* getGObjectAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkGObjectAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkGObjectAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkGObjectAccessible* atkGObjectAccessible, bool ownedRef = false)
	{
		this.atkGObjectAccessible = atkGObjectAccessible;
		super(cast(AtkObject*)atkGObjectAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return atk_gobject_accessible_get_type();
	}

	/**
	 * Gets the accessible object for the specified @obj.
	 *
	 * Params:
	 *     obj = a #GObject
	 *
	 * Returns: a #AtkObject which is the accessible object for
	 *     the @obj
	 */
	public static ObjectAtk forObject(ObjectG obj)
	{
		auto __p = atk_gobject_accessible_for_object((obj is null) ? null : obj.getObjectGStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) __p);
	}

	/**
	 * Gets the GObject for which @obj is the accessible object.
	 *
	 * Returns: a #GObject which is the object for which @obj is
	 *     the accessible object
	 */
	public ObjectG getObject()
	{
		auto __p = atk_gobject_accessible_get_object(atkGObjectAccessible);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}
}
