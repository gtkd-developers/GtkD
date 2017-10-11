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


module gtk.PanedAccessible;

private import atk.ValueIF;
private import atk.ValueT;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class PanedAccessible : ContainerAccessible, ValueIF
{
	/** the main Gtk struct */
	protected GtkPanedAccessible* gtkPanedAccessible;

	/** Get the main Gtk struct */
	public GtkPanedAccessible* getPanedAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPanedAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPanedAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPanedAccessible* gtkPanedAccessible, bool ownedRef = false)
	{
		this.gtkPanedAccessible = gtkPanedAccessible;
		super(cast(GtkContainerAccessible*)gtkPanedAccessible, ownedRef);
	}

	// add the Value capabilities
	mixin ValueT!(GtkPanedAccessible);


	/** */
	public static GType getType()
	{
		return gtk_paned_accessible_get_type();
	}
}
