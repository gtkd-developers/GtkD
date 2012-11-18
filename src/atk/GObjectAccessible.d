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
 * inFile  = AtkGObjectAccessible.html
 * outPack = atk
 * outFile = GObjectAccessible
 * strct   = AtkGObjectAccessible
 * realStrct=
 * ctorStrct=
 * clss    = GObjectAccessible
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_gobject_accessible_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * 	- gobject.ObjectG
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.GObjectAccessible;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import atk.ObjectAtk;
private import gobject.ObjectG;



private import atk.ObjectAtk;

/**
 * Description
 * This object class is derived from AtkObject. It can be used as a basis for
 * implementing accessible objects for GObjects which are not derived from
 * GtkWidget. One example of its use is in providing an accessible object
 * for GnomeCanvasItem in the GAIL library.
 */
public class GObjectAccessible : ObjectAtk
{
	
	/** the main Gtk struct */
	protected AtkGObjectAccessible* atkGObjectAccessible;
	
	
	public AtkGObjectAccessible* getGObjectAccessibleStruct()
	{
		return atkGObjectAccessible;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkGObjectAccessible;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkGObjectAccessible* atkGObjectAccessible)
	{
		super(cast(AtkObject*)atkGObjectAccessible);
		this.atkGObjectAccessible = atkGObjectAccessible;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		atkGObjectAccessible = cast(AtkGObjectAccessible*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the accessible object for the specified obj.
	 * Params:
	 * obj = a GObject
	 * Returns: a AtkObject which is the accessible object for the obj. [transfer none]
	 */
	public static ObjectAtk forObject(ObjectG obj)
	{
		// AtkObject * atk_gobject_accessible_for_object (GObject *obj);
		auto p = atk_gobject_accessible_for_object((obj is null) ? null : obj.getObjectGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Gets the GObject for which obj is the accessible object.
	 * Returns: a GObject which is the object for which obj is the accessible object. [transfer none]
	 */
	public ObjectG getObject()
	{
		// GObject * atk_gobject_accessible_get_object (AtkGObjectAccessible *obj);
		auto p = atk_gobject_accessible_get_object(atkGObjectAccessible);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
}
