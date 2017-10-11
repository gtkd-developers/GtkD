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


module gtk.ExpanderAccessible;

private import atk.ActionIF;
private import atk.ActionT;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ExpanderAccessible : ContainerAccessible, ActionIF
{
	/** the main Gtk struct */
	protected GtkExpanderAccessible* gtkExpanderAccessible;

	/** Get the main Gtk struct */
	public GtkExpanderAccessible* getExpanderAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkExpanderAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkExpanderAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkExpanderAccessible* gtkExpanderAccessible, bool ownedRef = false)
	{
		this.gtkExpanderAccessible = gtkExpanderAccessible;
		super(cast(GtkContainerAccessible*)gtkExpanderAccessible, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(GtkExpanderAccessible);


	/** */
	public static GType getType()
	{
		return gtk_expander_accessible_get_type();
	}
}
