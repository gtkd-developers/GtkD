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
 * inFile  = GtkSourceGutter.html
 * outPack = gsv
 * outFile = SourceGutter
 * strct   = GtkSourceGutter
 * realStrct=
 * ctorStrct=
 * clss    = SourceGutter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_gutter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- gsv.SourceGutterRenderer
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkSourceGutterRenderer* -> SourceGutterRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceGutter;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Window;
private import gsv.SourceGutterRenderer;



private import gobject.ObjectG;

/**
 * The GtkSourceGutter object represents the left and right gutters of the text
 * view. It is used by GtkSourceView to draw the line numbers and category
 * marks that might be present on a line. By packing additional GtkSourceGutterRenderer
 * objects in the gutter, you can extend the gutter with your own custom
 * drawings.
 *
 * The gutter works very much the same way as cells rendered in a GtkTreeView.
 * The concept is similar, with the exception that the gutter does not have an
 * underlying GtkTreeModel. The builtin line number renderer is at position
 * GTK_SOURCE_VIEW_GUTTER_POSITION_LINES (-30) and the marks renderer is at
 * GTK_SOURCE_VIEW_GUTTER_POSITION_MARKS (-20). You can use these values to
 * position custom renderers accordingly.
 */
public class SourceGutter : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceGutter* gtkSourceGutter;
	
	
	public GtkSourceGutter* getSourceGutterStruct()
	{
		return gtkSourceGutter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceGutter* gtkSourceGutter)
	{
		super(cast(GObject*)gtkSourceGutter);
		this.gtkSourceGutter = gtkSourceGutter;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceGutter = cast(GtkSourceGutter*)obj;
	}
	
	/**
	 */
	
	/**
	 * Get the GdkWindow of the gutter. The window will only be available when the
	 * gutter has at least one, non-zero width, cell renderer packed.
	 * Since 2.8
	 * Returns: the GdkWindow of the gutter, or NULL if the gutter has no window. [transfer none]
	 */
	public Window getWindow()
	{
		// GdkWindow * gtk_source_gutter_get_window (GtkSourceGutter *gutter);
		auto p = gtk_source_gutter_get_window(gtkSourceGutter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Insert renderer into the gutter. If renderer is yet unowned then gutter
	 * claims its ownership. Otherwise just increases renderer's reference count.
	 * renderer cannot be already inserted to another gutter.
	 * Params:
	 * renderer = a gutter renderer (must inherit from GtkSourceGutterRenderer).
	 * position = the renderer position.
	 * Returns: TRUE if operation succeeded. Otherwise FALSE. Since 3.0
	 */
	public int insert(SourceGutterRenderer renderer, int position)
	{
		// gboolean gtk_source_gutter_insert (GtkSourceGutter *gutter,  GtkSourceGutterRenderer *renderer,  gint position);
		return gtk_source_gutter_insert(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct(), position);
	}
	
	/**
	 * Reorders renderer in gutter to new position.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkCellRenderer.
	 * position = the new renderer position.
	 */
	public void reorder(SourceGutterRenderer renderer, int position)
	{
		// void gtk_source_gutter_reorder (GtkSourceGutter *gutter,  GtkSourceGutterRenderer *renderer,  gint position);
		gtk_source_gutter_reorder(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct(), position);
	}
	
	/**
	 * Removes renderer from gutter.
	 * Since 2.8
	 * Params:
	 * renderer = a GtkSourceGutterRenderer.
	 */
	public void remove(SourceGutterRenderer renderer)
	{
		// void gtk_source_gutter_remove (GtkSourceGutter *gutter,  GtkSourceGutterRenderer *renderer);
		gtk_source_gutter_remove(gtkSourceGutter, (renderer is null) ? null : renderer.getSourceGutterRendererStruct());
	}
	
	/**
	 * Invalidates the drawable area of the gutter. You can use this to force a
	 * redraw of the gutter if something has changed and needs to be redrawn.
	 * Since 2.8
	 */
	public void queueDraw()
	{
		// void gtk_source_gutter_queue_draw (GtkSourceGutter *gutter);
		gtk_source_gutter_queue_draw(gtkSourceGutter);
	}
	
	/**
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		// void gtk_source_gutter_get_padding (GtkSourceGutter *gutter,  gint *xpad,  gint *ypad);
		gtk_source_gutter_get_padding(gtkSourceGutter, &xpad, &ypad);
	}
	
	/**
	 */
	public void setPadding(int xpad, int ypad)
	{
		// void gtk_source_gutter_set_padding (GtkSourceGutter *gutter,  gint xpad,  gint ypad);
		gtk_source_gutter_set_padding(gtkSourceGutter, xpad, ypad);
	}
	
	/**
	 * Finds the GtkSourceGutterRenderer at (x, y).
	 * Params:
	 * x = The x position to get identified.
	 * y = The y position to get identified.
	 * Returns: the renderer at (x, y) or NULL. [transfer none]
	 */
	public SourceGutterRenderer getRendererAtPos(int x, int y)
	{
		// GtkSourceGutterRenderer * gtk_source_gutter_get_renderer_at_pos  (GtkSourceGutter *gutter,  gint x,  gint y);
		auto p = gtk_source_gutter_get_renderer_at_pos(gtkSourceGutter, x, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceGutterRenderer)(cast(GtkSourceGutterRenderer*) p);
	}
}
