/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkCellRendererPixbuf.html
 * outPack = gtk
 * outFile = CellRendererPixbuf
 * strct   = GtkCellRenderer
 * realStrct=GtkCellRendererPixbuf
 * ctorStrct=
 * clss    = CellRendererPixbuf
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_pixbuf_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * local aliases:
 */

module gtk.CellRendererPixbuf;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.CellRenderer;

/**
 * Description
 * A GtkCellRendererPixbuf can be used to render an image in a cell. It allows to render
 * either a given GdkPixbuf (set via the
 * pixbuf property) or a stock icon
 * (set via the stock-id property).
 * To support the tree view, GtkCellRendererPixbuf also supports rendering two alternative
 * pixbufs, when the is-expander property
 * is TRUE. If the is-expanded property
 * is TRUE and the
 * pixbuf-expander-open
 * property is set to a pixbuf, it renders that pixbuf, if the
 * is-expanded property is FALSE and
 * the
 * pixbuf-expander-closed
 * property is set to a pixbuf, it renders that one.
 */
private import gtk.CellRenderer;
public class CellRendererPixbuf : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererPixbuf* gtkCellRendererPixbuf;
	
	
	public GtkCellRendererPixbuf* getCellRendererPixbufStruct()
	{
		return gtkCellRendererPixbuf;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellRendererPixbuf;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererPixbuf* gtkCellRendererPixbuf)
	{
		super(cast(GtkCellRenderer*)gtkCellRendererPixbuf);
		this.gtkCellRendererPixbuf = gtkCellRendererPixbuf;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkCellRendererPixbuf. Adjust rendering
	 * parameters using object properties. Object properties can be set
	 * globally (with g_object_set()). Also, with GtkTreeViewColumn, you
	 * can bind a property to a value in a GtkTreeModel. For example, you
	 * can bind the "pixbuf" property on the cell renderer to a pixbuf value
	 * in the model, thus rendering a different image in each row of the
	 * GtkTreeView.
	 * Returns:
	 *  the new cell renderer
	 * Property Details
	 * The "follow-state" property
	 *  "follow-state" gboolean : Read / Write
	 * Specifies whether the rendered pixbuf should be colorized
	 * according to the GtkCellRendererState.
	 * Default value: FALSE
	 * Since 2.8
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_pixbuf_new  (void);
		this(cast(GtkCellRendererPixbuf*)gtk_cell_renderer_pixbuf_new() );
	}
	
	
	
	
	
	
	
}
