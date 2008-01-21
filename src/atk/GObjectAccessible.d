/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- atk_gobject_accessible
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 */

module atk.GObjectAccessible;

public  import gtkc.atktypes;

private import gtkc.atk;


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
	protected void* getStruct()
	{
		return cast(void*)atkGObjectAccessible;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkGObjectAccessible* atkGObjectAccessible)
	{
		if(atkGObjectAccessible is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null atkGObjectAccessible passed to constructor.");
			else return;
		}
		super(cast(AtkObject*)atkGObjectAccessible);
		this.atkGObjectAccessible = atkGObjectAccessible;
	}
	
	/**
	 */
	
	/**
	 * Gets the accessible object for the specified obj.
	 * Params:
	 * obj =  a GObject
	 * Returns: a AtkObject which is the accessible object for the obj
	 */
	public static AtkObject* _ForObject(ObjectG obj)
	{
		// AtkObject* atk_gobject_accessible_for_object (GObject *obj);
		return atk_gobject_accessible_for_object((obj is null) ? null : obj.getObjectGStruct());
	}
	
	/**
	 * Gets the GObject for which obj is the accessible object.
	 * Returns: a GObject which is the object for which obj is the accessible objedct
	 */
	public ObjectG _GetObject()
	{
		// GObject* atk_gobject_accessible_get_object (AtkGObjectAccessible *obj);
		auto p = atk_gobject_accessible_get_object(atkGObjectAccessible);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ObjectG(cast(GObject*) p);
	}
}
