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

/*
 * Conversion parameters:
 * inFile  = GtkCellAreaBox.html
 * outPack = gtk
 * outFile = CellAreaBox
 * strct   = GtkCellAreaBox
 * realStrct=
 * ctorStrct=GtkCellArea
 * clss    = CellAreaBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_cell_area_box_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.CellRenderer
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellAreaBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.CellRenderer;
private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.CellArea;

/**
 * Description
 * The GtkCellAreaBox renders cell renderers into a row or a column
 * depending on its GtkOrientation.
 * GtkCellAreaBox uses a notion of packing. Packing
 * refers to adding cell renderers with reference to a particular position
 * in a GtkCellAreaBox. There are two reference positions: the
 * start and the end of the box.
 * When the GtkCellAreaBox is oriented in the GTK_ORIENTATION_VERTICAL
 * orientation, the start is defined as the top of the box and the end is
 * defined as the bottom. In the GTK_ORIENTATION_HORIZONTAL orientation
 * start is defined as the left side and the end is defined as the right
 * side.
 * Alignments of GtkCellRenderers rendered in adjacent rows can be
 * configured by configuring the "align" child cell property
 * with gtk_cell_area_cell_set_property() or by specifying the "align"
 * argument to gtk_cell_area_box_pack_start() and gtk_cell_area_box_pack_end().
 */
public class CellAreaBox : CellArea, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkCellAreaBox* gtkCellAreaBox;
	
	
	public GtkCellAreaBox* getCellAreaBoxStruct()
	{
		return gtkCellAreaBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellAreaBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellAreaBox* gtkCellAreaBox)
	{
		super(cast(GtkCellArea*)gtkCellAreaBox);
		this.gtkCellAreaBox = gtkCellAreaBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellAreaBox = cast(GtkCellAreaBox*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkCellAreaBox);
	
	/**
	 */
	
	/**
	 * Creates a new GtkCellAreaBox.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellArea * gtk_cell_area_box_new (void);
		auto p = gtk_cell_area_box_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_area_box_new()");
		}
		this(cast(GtkCellAreaBox*) p);
	}
	
	/**
	 * Adds renderer to box, packed with reference to the start of box.
	 * The renderer is packed after any other GtkCellRenderer packed
	 * with reference to the start of box.
	 * Params:
	 * renderer = the GtkCellRenderer to add
	 * expand = whether renderer should receive extra space when the area receives
	 * more than its natural size
	 * fixed = whether renderer should have the same size in all rows
	 * Since 3.0
	 */
	public void packStart(CellRenderer renderer, int expand, int alig, int fixed)
	{
		// void gtk_cell_area_box_pack_start (GtkCellAreaBox *box,  GtkCellRenderer *renderer,  gboolean expand,  gboolean align,  gboolean fixed);
		gtk_cell_area_box_pack_start(gtkCellAreaBox, (renderer is null) ? null : renderer.getCellRendererStruct(), expand, alig, fixed);
	}
	
	/**
	 * Adds renderer to box, packed with reference to the end of box.
	 * The renderer is packed after (away from end of) any other
	 * GtkCellRenderer packed with reference to the end of box.
	 * Params:
	 * renderer = the GtkCellRenderer to add
	 * expand = whether renderer should receive extra space when the area receives
	 * more than its natural size
	 * fixed = whether renderer should have the same size in all rows
	 * Since 3.0
	 */
	public void packEnd(CellRenderer renderer, int expand, int alig, int fixed)
	{
		// void gtk_cell_area_box_pack_end (GtkCellAreaBox *box,  GtkCellRenderer *renderer,  gboolean expand,  gboolean align,  gboolean fixed);
		gtk_cell_area_box_pack_end(gtkCellAreaBox, (renderer is null) ? null : renderer.getCellRendererStruct(), expand, alig, fixed);
	}
	
	/**
	 * Gets the spacing added between cell renderers.
	 * Returns: the space added between cell renderers in box. Since 3.0
	 */
	public int getSpacing()
	{
		// gint gtk_cell_area_box_get_spacing (GtkCellAreaBox *box);
		return gtk_cell_area_box_get_spacing(gtkCellAreaBox);
	}
	
	/**
	 * Sets the spacing to add between cell renderers in box.
	 * Params:
	 * spacing = the space to add between GtkCellRenderers
	 * Since 3.0
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_cell_area_box_set_spacing (GtkCellAreaBox *box,  gint spacing);
		gtk_cell_area_box_set_spacing(gtkCellAreaBox, spacing);
	}
}
