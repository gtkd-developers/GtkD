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


module gio.DBusInterface;

private import gio.DBusInterfaceIF;
private import gio.DBusInterfaceT;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/** */
public class DBusInterface : ObjectG, DBusInterfaceIF
{
	/** the main Gtk struct */
	protected GDBusInterface* gDBusInterface;

	/** Get the main Gtk struct */
	public GDBusInterface* getDBusInterfaceStruct()
	{
		return gDBusInterface;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusInterface;
	}

	protected override void setStruct(GObject* obj)
	{
		gDBusInterface = cast(GDBusInterface*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusInterface* gDBusInterface, bool ownedRef = false)
	{
		this.gDBusInterface = gDBusInterface;
		super(cast(GObject*)gDBusInterface, ownedRef);
	}

	// add the DBusInterface capabilities
	mixin DBusInterfaceT!(GDBusInterface);

}
