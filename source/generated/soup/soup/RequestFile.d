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


module soup.RequestFile;

private import gio.FileIF;
private import gobject.ObjectG;
private import soup.Request;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class RequestFile : Request
{
	/** the main Gtk struct */
	protected SoupRequestFile* soupRequestFile;

	/** Get the main Gtk struct */
	public SoupRequestFile* getRequestFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequestFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequestFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequestFile* soupRequestFile, bool ownedRef = false)
	{
		this.soupRequestFile = soupRequestFile;
		super(cast(SoupRequest*)soupRequestFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_request_file_get_type();
	}

	/**
	 * Gets a #GFile corresponding to @file's URI
	 *
	 * Returns: a #GFile corresponding to @file
	 *
	 * Since: 2.40
	 */
	public FileIF getFile()
	{
		auto __p = soup_request_file_get_file(soupRequestFile);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}
}
