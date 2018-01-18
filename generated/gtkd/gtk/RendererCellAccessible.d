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


module gtk.RendererCellAccessible;

private import atk.ObjectAtk;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.CellAccessible;
private import gtk.CellRenderer;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class RendererCellAccessible : CellAccessible
{
	/** the main Gtk struct */
	protected GtkRendererCellAccessible* gtkRendererCellAccessible;

	/** Get the main Gtk struct */
	public GtkRendererCellAccessible* getRendererCellAccessibleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRendererCellAccessible;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRendererCellAccessible;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRendererCellAccessible* gtkRendererCellAccessible, bool ownedRef = false)
	{
		this.gtkRendererCellAccessible = gtkRendererCellAccessible;
		super(cast(GtkCellAccessible*)gtkRendererCellAccessible, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_renderer_cell_accessible_get_type();
	}

	/** */
	public this(CellRenderer renderer)
	{
		auto p = gtk_renderer_cell_accessible_new((renderer is null) ? null : renderer.getCellRendererStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRendererCellAccessible*) p, true);
	}
}
