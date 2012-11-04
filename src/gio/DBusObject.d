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
 * inFile  = 
 * outPack = gio
 * outFile = DBusObject
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = DBusObject
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = ObjectG
 * implements:
 * 	- DBusObjectIF
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- gio.DBusObjectT
 * 	- gio.DBusObjectIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObject;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.ObjectG;
private import gio.DBusObjectT;
private import gio.DBusObjectIF;




/**
 */
public class DBusObject : ObjectG, DBusObjectIF
{
	
	// Minimal implementation.
	mixin DBusObjectT!(GDBusObject);
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusObject* gDBusObject)
	{
		super(cast(GObject*)gDBusObject);
		this.gDBusObject = gDBusObject;
	}
	
	/**
	 */
}
