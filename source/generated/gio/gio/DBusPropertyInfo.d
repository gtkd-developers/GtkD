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


module gio.DBusPropertyInfo;

private import gio.DBusAnnotationInfo;
private import gio.c.functions;
public  import gio.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * Information about a D-Bus property on a D-Bus interface.
 *
 * Since: 2.26
 */
public final class DBusPropertyInfo
{
	/** the main Gtk struct */
	protected GDBusPropertyInfo* gDBusPropertyInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusPropertyInfo* getDBusPropertyInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusPropertyInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusPropertyInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusPropertyInfo* gDBusPropertyInfo, bool ownedRef = false)
	{
		this.gDBusPropertyInfo = gDBusPropertyInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_dbus_property_info_unref(gDBusPropertyInfo);
	}


	/**
	 * The reference count or -1 if statically allocated.
	 */
	public @property int refCount()
	{
		return gDBusPropertyInfo.refCount;
	}

	/** Ditto */
	public @property void refCount(int value)
	{
		gDBusPropertyInfo.refCount = value;
	}

	/**
	 * The name of the D-Bus property, e.g. "SupportedFilesystems".
	 */
	public @property string name()
	{
		return Str.toString(gDBusPropertyInfo.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		gDBusPropertyInfo.name = Str.toStringz(value);
	}

	/**
	 * The D-Bus signature of the property (a single complete type).
	 */
	public @property string signature()
	{
		return Str.toString(gDBusPropertyInfo.signature);
	}

	/** Ditto */
	public @property void signature(string value)
	{
		gDBusPropertyInfo.signature = Str.toStringz(value);
	}

	/**
	 * Access control flags for the property.
	 */
	public @property GDBusPropertyInfoFlags flags()
	{
		return gDBusPropertyInfo.flags;
	}

	/** Ditto */
	public @property void flags(GDBusPropertyInfoFlags value)
	{
		gDBusPropertyInfo.flags = value;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	public @property DBusAnnotationInfo[] annotations()
	{
		DBusAnnotationInfo[] arr = new DBusAnnotationInfo[getArrayLength(gDBusPropertyInfo.annotations)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusAnnotationInfo)(gDBusPropertyInfo.annotations[i], false);
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

		gDBusPropertyInfo.annotations = arr.ptr;
	}

	/** */
	public static GType getType()
	{
		return g_dbus_property_info_get_type();
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
	public DBusPropertyInfo ref_()
	{
		auto __p = g_dbus_property_info_ref(gDBusPropertyInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusPropertyInfo)(cast(GDBusPropertyInfo*) __p, true);
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
		g_dbus_property_info_unref(gDBusPropertyInfo);
	}
}
