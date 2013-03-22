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
 * inFile  = GSimplePermission.html
 * outPack = gio
 * outFile = SimplePermission
 * strct   = GSimplePermission
 * realStrct=
 * ctorStrct=GPermission
 * clss    = SimplePermission
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_simple_permission_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimplePermission;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gio.Permission;

/**
 * GSimplePermission is a trivial implementation of GPermission that
 * represents a permission that is either always or never allowed. The
 * value is given at construction and doesn't change.
 *
 * Calling request or release will result in errors.
 */
public class SimplePermission : Permission
{
	
	/** the main Gtk struct */
	protected GSimplePermission* gSimplePermission;
	
	
	public GSimplePermission* getSimplePermissionStruct()
	{
		return gSimplePermission;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimplePermission;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimplePermission* gSimplePermission)
	{
		super(cast(GPermission*)gSimplePermission);
		this.gSimplePermission = gSimplePermission;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSimplePermission = cast(GSimplePermission*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GPermission instance that represents an action that is
	 * either always or never allowed.
	 * Since 2.26
	 * Params:
	 * allowed = TRUE if the action is allowed
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int allowed)
	{
		// GPermission * g_simple_permission_new (gboolean allowed);
		auto p = g_simple_permission_new(allowed);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_permission_new(allowed)");
		}
		this(cast(GSimplePermission*) p);
	}
}
