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


module gtk.CellAreaBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.CellArea;
private import gtk.CellRenderer;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A cell area that renders GtkCellRenderers into a row or a column
 * 
 * The `GtkCellAreaBox` renders cell renderers into a row or a column
 * depending on its `GtkOrientation`.
 * 
 * GtkCellAreaBox uses a notion of packing. Packing
 * refers to adding cell renderers with reference to a particular position
 * in a `GtkCellAreaBox`. There are two reference positions: the
 * start and the end of the box.
 * When the `GtkCellAreaBox` is oriented in the %GTK_ORIENTATION_VERTICAL
 * orientation, the start is defined as the top of the box and the end is
 * defined as the bottom. In the %GTK_ORIENTATION_HORIZONTAL orientation
 * start is defined as the left side and the end is defined as the right
 * side.
 * 
 * Alignments of `GtkCellRenderer`s rendered in adjacent rows can be
 * configured by configuring the `GtkCellAreaBox` align child cell property
 * with gtk_cell_area_cell_set_property() or by specifying the "align"
 * argument to gtk_cell_area_box_pack_start() and gtk_cell_area_box_pack_end().
 */
public class CellAreaBox : CellArea, OrientableIF
{
	/** the main Gtk struct */
	protected GtkCellAreaBox* gtkCellAreaBox;

	/** Get the main Gtk struct */
	public GtkCellAreaBox* getCellAreaBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellAreaBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellAreaBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellAreaBox* gtkCellAreaBox, bool ownedRef = false)
	{
		this.gtkCellAreaBox = gtkCellAreaBox;
		super(cast(GtkCellArea*)gtkCellAreaBox, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkCellAreaBox);


	/** */
	public static GType getType()
	{
		return gtk_cell_area_box_get_type();
	}

	/**
	 * Creates a new `GtkCellAreaBox`.
	 *
	 * Returns: a newly created `GtkCellAreaBox`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_area_box_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellAreaBox*) __p);
	}

	/**
	 * Gets the spacing added between cell renderers.
	 *
	 * Returns: the space added between cell renderers in @box.
	 */
	public int getSpacing()
	{
		return gtk_cell_area_box_get_spacing(gtkCellAreaBox);
	}

	/**
	 * Adds @renderer to @box, packed with reference to the end of @box.
	 *
	 * The @renderer is packed after (away from end of) any other
	 * `GtkCellRenderer` packed with reference to the end of @box.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to add
	 *     expand = whether @renderer should receive extra space when the area receives
	 *         more than its natural size
	 *     align_ = whether @renderer should be aligned in adjacent rows
	 *     fixed = whether @renderer should have the same size in all rows
	 */
	public void packEnd(CellRenderer renderer, bool expand, bool align_, bool fixed)
	{
		gtk_cell_area_box_pack_end(gtkCellAreaBox, (renderer is null) ? null : renderer.getCellRendererStruct(), expand, align_, fixed);
	}

	/**
	 * Adds @renderer to @box, packed with reference to the start of @box.
	 *
	 * The @renderer is packed after any other `GtkCellRenderer` packed
	 * with reference to the start of @box.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to add
	 *     expand = whether @renderer should receive extra space when the area receives
	 *         more than its natural size
	 *     align_ = whether @renderer should be aligned in adjacent rows
	 *     fixed = whether @renderer should have the same size in all rows
	 */
	public void packStart(CellRenderer renderer, bool expand, bool align_, bool fixed)
	{
		gtk_cell_area_box_pack_start(gtkCellAreaBox, (renderer is null) ? null : renderer.getCellRendererStruct(), expand, align_, fixed);
	}

	/**
	 * Sets the spacing to add between cell renderers in @box.
	 *
	 * Params:
	 *     spacing = the space to add between `GtkCellRenderer`s
	 */
	public void setSpacing(int spacing)
	{
		gtk_cell_area_box_set_spacing(gtkCellAreaBox, spacing);
	}
}
