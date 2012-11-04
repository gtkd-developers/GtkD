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
 * inFile  = GtkCellRendererPixbuf.html
 * outPack = gtk
 * outFile = CellRendererPixbuf
 * strct   = GtkCellRendererPixbuf
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererPixbuf
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_pixbuf_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererPixbuf;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.CellRenderer;

/**
 * Description
 * A GtkCellRendererPixbuf can be used to render an image in a cell. It allows
 * to render either a given GdkPixbuf (set via the
 * "pixbuf" property) or a stock icon (set via the
 * "stock-id" property).
 * To support the tree view, GtkCellRendererPixbuf also supports rendering two
 * alternative pixbufs, when the "is-expander" property is TRUE.
 * If the "is-expanded" property is TRUE and the
 * "pixbuf-expander-open" property is set to a pixbuf, it
 * renders that pixbuf, if the "is-expanded" property is FALSE
 * and the "pixbuf-expander-closed" property is set to a
 * pixbuf, it renders that one.
 */
public class CellRendererPixbuf : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererPixbuf* gtkCellRendererPixbuf;
	
	
	public GtkCellRendererPixbuf* getCellRendererPixbufStruct()
	{
		return gtkCellRendererPixbuf;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererPixbuf = cast(GtkCellRendererPixbuf*)obj;
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_pixbuf_new (void);
		auto p = gtk_cell_renderer_pixbuf_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_pixbuf_new()");
		}
		this(cast(GtkCellRendererPixbuf*) p);
	}
}
