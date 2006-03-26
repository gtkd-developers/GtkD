/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = CellView
 * strct   = GtkCellView
 * realStrct=
 * clss    = CellView
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_view_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_cell_view_new_with_text
 * 	- gtk_cell_view_new_with_markup
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.TreeModel
 * 	- gtk.TreePath
 * 	- gdk.Color
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkColor* -> Color
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkTreePath* -> TreePath
 * local aliases:
 */

module gtk.CellView;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gdk.Pixbuf;
private import gtk.TreeModel;
private import gtk.TreePath;
private import gdk.Color;
private import glib.ListG;

/**
 * Description
 * A GtkCellView displays a single row of a GtkTreeModel, using
 * cell renderers just like GtkTreeView. GtkCellView doesn't support
 * some of the more complex features of GtkTreeView, like cell editing
 * and drag and drop.
 */
private import gtk.Widget;
public class CellView : Widget
{
	
	/** the main Gtk struct */
	protected GtkCellView* gtkCellView;
	
	
	public GtkCellView* getCellViewStruct()
	{
		return gtkCellView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellView* gtkCellView)
	{
		super(cast(GtkWidget*)gtkCellView);
		this.gtkCellView = gtkCellView;
	}
	
	/**
	 * Creates a new GtkCellView widget, adds a GtkCellRendererText
	 * to it, and makes its show text.
	 * If markup is true the text can be marked up with the Pango text
	 * markup language.
	 * text:
	 *  the text to display in the cell view
	 * Returns:
	 *  A newly created GtkCellView widget.
	 * Since 2.6
	 */
	public this (char[] text, bit markup=true)
	{
		if ( markup )
		{
			// GtkWidget* gtk_cell_view_new_with_markup (const gchar *markup);
			this(cast(GtkCellView*)gtk_cell_view_new_with_markup(Str.toStringz(text)) );
		}
		else
		{
			// GtkWidget* gtk_cell_view_new_with_text (const gchar *text);
			this(cast(GtkCellView*)gtk_cell_view_new_with_text(Str.toStringz(text)) );
		}
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkCellView widget.
	 * Returns:
	 *  A newly created GtkCellView widget.
	 * Since 2.6
	 */
	public this ()
	{
		// GtkWidget* gtk_cell_view_new (void);
		this(cast(GtkCellView*)gtk_cell_view_new() );
	}
	
	
	
	/**
	 * Creates a new GtkCellView widget, adds a GtkCellRendererPixbuf
	 * to it, and makes its show pixbuf.
	 * pixbuf:
	 *  the image to display in the cell view
	 * Returns:
	 *  A newly created GtkCellView widget.
	 * Since 2.6
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkWidget* gtk_cell_view_new_with_pixbuf (GdkPixbuf *pixbuf);
		this(cast(GtkCellView*)gtk_cell_view_new_with_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct()) );
	}
	
	/**
	 * Sets the model for cell_view. If cell_view already has a model
	 * set, it will remove it before setting the new model. If model is
	 * NULL, then it will unset the old model.
	 * cell_view:
	 *  a GtkCellView
	 * model:
	 *  a GtkTreeModel
	 * Since 2.6
	 */
	public void setModel(TreeModel model)
	{
		// void gtk_cell_view_set_model (GtkCellView *cell_view,  GtkTreeModel *model);
		gtk_cell_view_set_model(gtkCellView, (model is null) ? null : model.getTreeModelStruct());
	}
	
	/**
	 * Sets the row of the model that is currently displayed
	 * by the GtkCellView. If the path is unset, then the
	 * contents of the cellview "stick" at their last value;
	 * this is not normally a desired result, but may be
	 * a needed intermediate state if say, the model for
	 * the GtkCellView becomes temporarily empty.
	 * cell_view:
	 *  a GtkCellView
	 * path:
	 *  a GtkTreePath or NULL to unset.
	 * Since 2.6
	 */
	public void setDisplayedRow(TreePath path)
	{
		// void gtk_cell_view_set_displayed_row (GtkCellView *cell_view,  GtkTreePath *path);
		gtk_cell_view_set_displayed_row(gtkCellView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Returns a GtkTreePath referring to the currently
	 * displayed row. If no row is currently displayed,
	 * NULL is returned.
	 * cell_view:
	 *  a GtkCellView
	 * Returns:
	 *  the currently displayed row or NULL
	 * Since 2.6
	 */
	public TreePath getDisplayedRow()
	{
		// GtkTreePath* gtk_cell_view_get_displayed_row  (GtkCellView *cell_view);
		return new TreePath( gtk_cell_view_get_displayed_row(gtkCellView) );
	}
	
	/**
	 * Sets requisition to the size needed by cell_view to display
	 * the model row pointed to by path.
	 * cell_view:
	 *  a GtkCellView
	 * path:
	 *  a GtkTreePath
	 * requisition:
	 *  return location for the size
	 * Returns:
	 *  TRUE
	 * Since 2.6
	 */
	public int getSizeOfRow(TreePath path, GtkRequisition* requisition)
	{
		// gboolean gtk_cell_view_get_size_of_row (GtkCellView *cell_view,  GtkTreePath *path,  GtkRequisition *requisition);
		return gtk_cell_view_get_size_of_row(gtkCellView, (path is null) ? null : path.getTreePathStruct(), requisition);
	}
	
	/**
	 * Sets the background color of view.
	 * cell_view:
	 *  a GtkCellView
	 * color:
	 *  the new background color
	 * Since 2.6
	 */
	public void setBackgroundColor(Color color)
	{
		// void gtk_cell_view_set_background_color  (GtkCellView *cell_view,  const GdkColor *color);
		gtk_cell_view_set_background_color(gtkCellView, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Returns the cell renderers which have been added to cell_view.
	 * cell_view:
	 *  a GtkCellView
	 * Returns:
	 *  a list of cell renderers. The list, but not the
	 *  renderers has been newly allocated and should be freed with
	 *  g_list_free() when no longer needed.
	 * Since 2.6
	 * Property Details
	 * The "background" property
	 *  "background" gchararray : Write
	 * Background color as a string.
	 * Default value: NULL
	 */
	public ListG getCellRenderers()
	{
		// GList* gtk_cell_view_get_cell_renderers  (GtkCellView *cell_view);
		return new ListG( gtk_cell_view_get_cell_renderers(gtkCellView) );
	}
	
	
}
