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


module gio.DBusAnnotationInfo;

private import gio.c.functions;
public  import gio.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * Information about an annotation.
 *
 * Since: 2.26
 */
public final class DBusAnnotationInfo
{
	/** the main Gtk struct */
	protected GDBusAnnotationInfo* gDBusAnnotationInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusAnnotationInfo* getDBusAnnotationInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusAnnotationInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusAnnotationInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusAnnotationInfo* gDBusAnnotationInfo, bool ownedRef = false)
	{
		this.gDBusAnnotationInfo = gDBusAnnotationInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_dbus_annotation_info_unref(gDBusAnnotationInfo);
	}

	/**
	 * Looks up the value of an annotation.
	 *
	 * The cost of this function is O(n) in number of annotations.
	 *
	 * Params:
	 *     annotations = A %NULL-terminated array of annotations or %NULL.
	 *     name = The name of the annotation to look up.
	 *
	 * Return: The value or %NULL if not found. Do not free, it is owned by @annotations.
	 *
	 * Since: 2.26
	 */
	public static string lookup(DBusAnnotationInfo[] annotations, string name)
	{
		GDBusAnnotationInfo*[] annotationsArray = new GDBusAnnotationInfo*[annotations.length+1];
		for ( int i = 0; i < annotations.length ; i++ )
		{
			annotationsArray[i] = annotations[i].getDBusAnnotationInfoStruct();
		}
		annotationsArray[$-1] = null;

		return Str.toString(g_dbus_annotation_info_lookup(annotationsArray.ptr, Str.toStringz(name)));
	}

	/**
	 */

	/**
	 * The reference count or -1 if statically allocated.
	 */
	public @property int refCount()
	{
		return gDBusAnnotationInfo.refCount;
	}

	/** Ditto */
	public @property void refCount(int value)
	{
		gDBusAnnotationInfo.refCount = value;
	}

	/**
	 * The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
	 */
	public @property string key()
	{
		return Str.toString(gDBusAnnotationInfo.key);
	}

	/** Ditto */
	public @property void key(string value)
	{
		gDBusAnnotationInfo.key = Str.toStringz(value);
	}

	/**
	 * The value of the annotation.
	 */
	public @property string value()
	{
		return Str.toString(gDBusAnnotationInfo.value);
	}

	/** Ditto */
	public @property void value(string value)
	{
		gDBusAnnotationInfo.value = Str.toStringz(value);
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	public @property DBusAnnotationInfo[] annotations()
	{
		DBusAnnotationInfo[] arr = new DBusAnnotationInfo[getArrayLength(gDBusAnnotationInfo.annotations)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusAnnotationInfo)(gDBusAnnotationInfo.annotations[i], false);
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

		gDBusAnnotationInfo.annotations = arr.ptr;
	}

	/** */
	public static GType getType()
	{
		return g_dbus_annotation_info_get_type();
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
	public DBusAnnotationInfo ref_()
	{
		auto __p = g_dbus_annotation_info_ref(gDBusAnnotationInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusAnnotationInfo)(cast(GDBusAnnotationInfo*) __p, true);
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
		g_dbus_annotation_info_unref(gDBusAnnotationInfo);
	}
}
