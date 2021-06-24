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


module gio.DBusArgInfo;

private import gio.DBusAnnotationInfo;
private import gio.c.functions;
public  import gio.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Information about an argument for a method or a signal.
 *
 * Since: 2.26
 */
public final class DBusArgInfo
{
	/** the main Gtk struct */
	protected GDBusArgInfo* gDBusArgInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusArgInfo* getDBusArgInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusArgInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusArgInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusArgInfo* gDBusArgInfo, bool ownedRef = false)
	{
		this.gDBusArgInfo = gDBusArgInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_dbus_arg_info_unref(gDBusArgInfo);
	}


	/**
	 * The reference count or -1 if statically allocated.
	 */
	public @property int refCount()
	{
		return gDBusArgInfo.refCount;
	}

	/** Ditto */
	public @property void refCount(int value)
	{
		gDBusArgInfo.refCount = value;
	}

	/**
	 * Name of the argument, e.g. @unix_user_id.
	 */
	public @property string name()
	{
		return Str.toString(gDBusArgInfo.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		gDBusArgInfo.name = Str.toStringz(value);
	}

	/**
	 * D-Bus signature of the argument (a single complete type).
	 */
	public @property string signature()
	{
		return Str.toString(gDBusArgInfo.signature);
	}

	/** Ditto */
	public @property void signature(string value)
	{
		gDBusArgInfo.signature = Str.toStringz(value);
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	public @property DBusAnnotationInfo[] annotations()
	{
		DBusAnnotationInfo[] arr = new DBusAnnotationInfo[getArrayLength(gDBusArgInfo.annotations)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusAnnotationInfo)(gDBusArgInfo.annotations[i], false);
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

		gDBusArgInfo.annotations = arr.ptr;
	}

	/** */
	public static GType getType()
	{
		return g_dbus_arg_info_get_type();
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
	public DBusArgInfo ref_()
	{
		auto __p = g_dbus_arg_info_ref(gDBusArgInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusArgInfo)(cast(GDBusArgInfo*) __p, true);
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
		g_dbus_arg_info_unref(gDBusArgInfo);
	}
}
