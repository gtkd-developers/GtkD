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


module gtk.SocketAccessible;

private import glib.Str;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class SocketAccessible : ContainerAccessible
{
	/** the main Gtk struct */
	protected GtkSocketAccessible* gtkSocketAccessible;

	/** Get the main Gtk struct */
	public GtkSocketAccessible* getSocketAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSocketAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSocketAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSocketAccessible* gtkSocketAccessible, bool ownedRef = false)
	{
		this.gtkSocketAccessible = gtkSocketAccessible;
		super(cast(GtkContainerAccessible*)gtkSocketAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_socket_accessible_get_type();
	}

	/** */
	public void embed(string path)
	{
		gtk_socket_accessible_embed(gtkSocketAccessible, Str.toStringz(path));
	}
}
