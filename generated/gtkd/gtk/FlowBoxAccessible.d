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


module gtk.FlowBoxAccessible;

private import atk.SelectionIF;
private import atk.SelectionT;
private import gtk.ContainerAccessible;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class FlowBoxAccessible : ContainerAccessible, SelectionIF
{
	/** the main Gtk struct */
	protected GtkFlowBoxAccessible* gtkFlowBoxAccessible;

	/** Get the main Gtk struct */
	public GtkFlowBoxAccessible* getFlowBoxAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFlowBoxAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFlowBoxAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFlowBoxAccessible* gtkFlowBoxAccessible, bool ownedRef = false)
	{
		this.gtkFlowBoxAccessible = gtkFlowBoxAccessible;
		super(cast(GtkContainerAccessible*)gtkFlowBoxAccessible, ownedRef);
	}

	// add the Selection capabilities
	mixin SelectionT!(GtkFlowBoxAccessible);


	/** */
	public static GType getType()
	{
		return gtk_flow_box_accessible_get_type();
	}
}
