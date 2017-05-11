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


module gio.DBusMethodInfo;

private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;
private import gtkd.Loader;


/**
 * Information about a method on an D-Bus interface.
 *
 * Since: 2.26
 */
public class DBusMethodInfo
{
	/** the main Gtk struct */
	protected GDBusMethodInfo* gDBusMethodInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusMethodInfo* getDBusMethodInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusMethodInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusMethodInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusMethodInfo* gDBusMethodInfo, bool ownedRef = false)
	{
		this.gDBusMethodInfo = gDBusMethodInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if (  Linker.isLoaded(LIBRARY_GIO) && ownedRef )
			g_dbus_method_info_unref(gDBusMethodInfo);
	}


	/** */
	public static GType getType()
	{
		return g_dbus_method_info_get_type();
	}

	/**
	 * If @info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 *
	 * Returns: The same @info.
	 *
	 * Since: 2.26
	 */
	public DBusMethodInfo doref()
	{
		auto p = g_dbus_method_info_ref(gDBusMethodInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) p, true);
	}

	/**
	 * If @info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of @info. When its reference count drops to 0,
	 * the memory used is freed.
	 *
	 * Since: 2.26
	 */
	public void unref()
	{
		g_dbus_method_info_unref(gDBusMethodInfo);
	}
}
