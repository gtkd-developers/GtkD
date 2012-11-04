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
 * outFile = SocketConnectable
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = SocketConnectable
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = ObjectG
 * implements:
 * 	- SocketConnectableIF
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- gio.SocketConnectableT
 * 	- gio.SocketConnectableIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketConnectable;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.ObjectG;
private import gio.SocketConnectableT;
private import gio.SocketConnectableIF;




/**
 */
public class SocketConnectable : ObjectG, SocketConnectableIF
{
	
	// Minimal implementation.
	mixin SocketConnectableT!(GSocketConnectable);
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketConnectable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketConnectable* gSocketConnectable)
	{
		super(cast(GObject*)gSocketConnectable);
		this.gSocketConnectable = gSocketConnectable;
	}
	
	/**
	 */
}
