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


module gio.TlsFileDatabaseT;

public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ConstructionException;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import gobject.ObjectG;


/**
 * #GTlsFileDatabase is implemented by #GTlsDatabase objects which load
 * their certificate information from a file. It is an interface which
 * TLS library specific subtypes implement.
 *
 * Since: 2.30
 */
public template TlsFileDatabaseT(TStruct)
{
	/** Get the main Gtk struct */
	public GTlsFileDatabase* getTlsFileDatabaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GTlsFileDatabase*)getStruct();
	}

}
