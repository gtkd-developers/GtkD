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


module gio.FileAttributeInfoList;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * Acts as a lightweight registry for possible valid file attributes.
 * The registry stores Key-Value pair formats as #GFileAttributeInfos.
 */
public final class FileAttributeInfoList
{
	/** the main Gtk struct */
	protected GFileAttributeInfoList* gFileAttributeInfoList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GFileAttributeInfoList* getFileAttributeInfoListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFileAttributeInfoList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gFileAttributeInfoList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFileAttributeInfoList* gFileAttributeInfoList, bool ownedRef = false)
	{
		this.gFileAttributeInfoList = gFileAttributeInfoList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_file_attribute_info_list_unref(gFileAttributeInfoList);
	}


	/**
	 * an array of #GFileAttributeInfos.
	 */
	public @property GFileAttributeInfo[] infos()
	{
		return gFileAttributeInfoList.infos[0..gFileAttributeInfoList.nInfos];
	}

	/** Ditto */
	public @property void infos(GFileAttributeInfo[] value)
	{
		gFileAttributeInfoList.infos = value.ptr;
		gFileAttributeInfoList.nInfos = cast(int)value.length;
	}


	/** */
	public static GType getType()
	{
		return g_file_attribute_info_list_get_type();
	}

	/**
	 * Creates a new file attribute info list.
	 *
	 * Returns: a #GFileAttributeInfoList.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_file_attribute_info_list_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GFileAttributeInfoList*) __p);
	}

	/**
	 * Adds a new attribute with @name to the @list, setting
	 * its @type and @flags.
	 *
	 * Params:
	 *     name = the name of the attribute to add.
	 *     type = the #GFileAttributeType for the attribute.
	 *     flags = #GFileAttributeInfoFlags for the attribute.
	 */
	public void add(string name, GFileAttributeType type, GFileAttributeInfoFlags flags)
	{
		g_file_attribute_info_list_add(gFileAttributeInfoList, Str.toStringz(name), type, flags);
	}

	/**
	 * Makes a duplicate of a file attribute info list.
	 *
	 * Returns: a copy of the given @list.
	 */
	public FileAttributeInfoList dup()
	{
		auto __p = g_file_attribute_info_list_dup(gFileAttributeInfoList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileAttributeInfoList)(cast(GFileAttributeInfoList*) __p, true);
	}

	/**
	 * Gets the file attribute with the name @name from @list.
	 *
	 * Params:
	 *     name = the name of the attribute to look up.
	 *
	 * Returns: a #GFileAttributeInfo for the @name, or %NULL if an
	 *     attribute isn't found.
	 */
	public GFileAttributeInfo* lookup(string name)
	{
		return g_file_attribute_info_list_lookup(gFileAttributeInfoList, Str.toStringz(name));
	}

	alias doref = ref_;
	/**
	 * References a file attribute info list.
	 *
	 * Returns: #GFileAttributeInfoList or %NULL on error.
	 */
	public FileAttributeInfoList ref_()
	{
		auto __p = g_file_attribute_info_list_ref(gFileAttributeInfoList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileAttributeInfoList)(cast(GFileAttributeInfoList*) __p, true);
	}

	/**
	 * Removes a reference from the given @list. If the reference count
	 * falls to zero, the @list is deleted.
	 */
	public void unref()
	{
		g_file_attribute_info_list_unref(gFileAttributeInfoList);
	}
}
