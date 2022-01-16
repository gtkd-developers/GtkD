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

private import gio.DBusAnnotationInfo;
private import gio.DBusArgInfo;
private import gio.c.functions;
public  import gio.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * Information about a method on an D-Bus interface.
 *
 * Since: 2.26
 */
public final class DBusMethodInfo
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
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_dbus_method_info_unref(gDBusMethodInfo);
	}


	/**
	 * The reference count or -1 if statically allocated.
	 */
	public @property int refCount()
	{
		return gDBusMethodInfo.refCount;
	}

	/** Ditto */
	public @property void refCount(int value)
	{
		gDBusMethodInfo.refCount = value;
	}

	/**
	 * The name of the D-Bus method, e.g. @RequestName.
	 */
	public @property string name()
	{
		return Str.toString(gDBusMethodInfo.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		gDBusMethodInfo.name = Str.toStringz(value);
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusArgInfo structures or %NULL if there are no in arguments.
	 */
	public @property DBusArgInfo[] inArgs()
	{
		DBusArgInfo[] arr = new DBusArgInfo[getArrayLength(gDBusMethodInfo.inArgs)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusArgInfo)(gDBusMethodInfo.inArgs[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void inArgs(DBusArgInfo[] value)
	{
		GDBusArgInfo*[] arr = new GDBusArgInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusArgInfoStruct();
		}
		arr[value.length] = null;

		gDBusMethodInfo.inArgs = arr.ptr;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusArgInfo structures or %NULL if there are no out arguments.
	 */
	public @property DBusArgInfo[] outArgs()
	{
		DBusArgInfo[] arr = new DBusArgInfo[getArrayLength(gDBusMethodInfo.outArgs)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusArgInfo)(gDBusMethodInfo.outArgs[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void outArgs(DBusArgInfo[] value)
	{
		GDBusArgInfo*[] arr = new GDBusArgInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusArgInfoStruct();
		}
		arr[value.length] = null;

		gDBusMethodInfo.outArgs = arr.ptr;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	public @property DBusAnnotationInfo[] annotations()
	{
		DBusAnnotationInfo[] arr = new DBusAnnotationInfo[getArrayLength(gDBusMethodInfo.annotations)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusAnnotationInfo)(gDBusMethodInfo.annotations[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void annotations(DBusAnnotationInfo[] value)
	{
		GDBusAnnotationInfo*[] arr = new GDBusAnnotationInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusAnnotationInfoStruct();
		}
		arr[value.length] = null;

		gDBusMethodInfo.annotations = arr.ptr;
	}

	/** */
	public static GType getType()
	{
		return g_dbus_method_info_get_type();
	}

	alias doref = ref_;
	/**
	 * If @info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 *
	 * Returns: The same @info.
	 *
	 * Since: 2.26
	 */
	public DBusMethodInfo ref_()
	{
		auto __p = g_dbus_method_info_ref(gDBusMethodInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) __p, true);
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
