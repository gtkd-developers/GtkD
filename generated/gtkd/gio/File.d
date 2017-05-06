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


module gio.File;

private import gio.FileIF;
private import gio.FileT;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/** */
public class File : ObjectG, FileIF
{
	/** the main Gtk struct */
	protected GFile* gFile;

	/** Get the main Gtk struct */
	public GFile* getFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gFile;
	}

	protected override void setStruct(GObject* obj)
	{
		gFile = cast(GFile*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GFile* gFile, bool ownedRef = false)
	{
		this.gFile = gFile;
		super(cast(GObject*)gFile, ownedRef);
	}

	// add the File capabilities
	mixin FileT!(GFile);

}
