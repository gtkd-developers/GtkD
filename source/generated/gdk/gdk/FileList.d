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


module gdk.FileList;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListSG;


/**
 * An opaque type representing a list of files.
 *
 * Since: 4.6
 */
public class FileList
{
	/** the main Gtk struct */
	protected GdkFileList* gdkFileList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkFileList* getFileListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkFileList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkFileList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkFileList* gdkFileList, bool ownedRef = false)
	{
		this.gdkFileList = gdkFileList;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gdk_file_list_get_type();
	}

	/**
	 * Retrieves the list of files inside a `GdkFileList`.
	 *
	 * This function is meant for language bindings.
	 *
	 * Returns: the files inside the list
	 *
	 * Since: 4.6
	 */
	public ListSG getFiles()
	{
		auto __p = gdk_file_list_get_files(gdkFileList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}
}
