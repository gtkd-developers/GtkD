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
 * inFile  = GtkCellView.html
 * outPack = gtk
 * outFile = CellView
 * strct   = GtkCellView
 * realStrct=
 * ctorStrct=
 * clss    = CellView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- CellLayoutIF
 * prefixes:
 * 	- gtk_cell_view_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_cell_view_new_with_text
 * 	- gtk_cell_view_new_with_markup
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gdk.Color
 * 	- glib.ListG
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkColor* -> Color
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellView;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gdk.Color;
private import glib.ListG;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;



private import gtk.Widget;

/**
 * Description
 * A GtkCellView displays a single row of a GtkTreeModel, using
 * cell renderers just like GtkTreeView. GtkCellView doesn't support
 * some of the more complex features of GtkTreeView, like cell editing
 * and drag and drop.
 */
public class CellView : Widget, CellLayoutIF
{
	
	/** the main Gtk struct */
	protected GtkCellView* gtkCellView;
	
	
	public GtkCellView* getCellViewStruct()
	{
		return gtkCellView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellView = cast(GtkCellView*)obj;
	}
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkCellView);
	
	/**
	 * Creates a new GtkCellView widget, adds a GtkCellRendererText
	 * to it, and makes its show text.
	 * If markup is true the text can be marked up with the Pango text
	 * markup language.
	 * Since 2.6
	 * Params:
	 *  text = the text to display in the cell view
	 * Returns:
	 *  A newly created GtkCellView widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string text, bool markup=true)
	{
		GtkCellView* p;
		
		if ( markup )
		{
			// GtkWidget* gtk_cell_view_new_with_markup (const gchar *markup);
			p = cast(GtkCellView*)gtk_cell_view_new_with_markup(Str.toStringz(text));
		}
		else
		{
			// GtkWidget* gtk_cell_view_new_with_text (const gchar *text);
			p = cast(GtkCellView*)gtk_cell_view_new_with_text(Str.toStringz(text));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_view_new_with_");
		}
		
		this(p);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkCellView widget.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_cell_view_new (void);
		auto p = gtk_cell_view_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_view_new()");
		}
		this(cast(GtkCellView*) p);
	}
	
	/**
	 * Creates a new GtkCellView widget, adds a GtkCellRendererPixbuf
	 * to it, and makes its show pixbuf.
	 * Since 2.6
	 * Params:
	 * pixbuf = the image to display in the cell view
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkWidget * gtk_cell_view_new_with_pixbuf (GdkPixbuf *pixbuf);
		auto p = gtk_cell_view_new_with_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_view_new_with_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkCellView*) p);
	}
	
	/**
	 * Sets the model for cell_view. If cell_view already has a model
	 * set, it will remove it before setting the new model. If model is
	 * NULL, then it will unset the old model.
	 * Since 2.6
	 * Params:
	 * model = a GtkTreeModel. [allow-none]
	 */
	public void setModel(TreeModelIF model)
	{
		// void gtk_cell_view_set_model (GtkCellView *cell_view,  GtkTreeModel *model);
		gtk_cell_view_set_model(gtkCellView, (model is null) ? null : model.getTreeModelTStruct());
	}
	
	/**
	 * Returns the model for cell_view. If no model is used NULL is
	 * returned.
	 * Since 2.16
	 * Returns: a GtkTreeModel used or NULL. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_cell_view_get_model (GtkCellView *cell_view);
		auto p = gtk_cell_view_get_model(gtkCellView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the row of the model that is currently displayed
	 * by the GtkCellView. If the path is unset, then the
	 * contents of the cellview "stick" at their last value;
	 * this is not normally a desired result, but may be
	 * a needed intermediate state if say, the model for
	 * the GtkCellView becomes temporarily empty.
	 * Since 2.6
	 * Params:
	 * path = a GtkTreePath or NULL to unset. [allow-none]
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
	 * Since 2.6
	 * Returns: the currently displayed row or NULL
	 */
	public TreePath getDisplayedRow()
	{
		// GtkTreePath * gtk_cell_view_get_displayed_row (GtkCellView *cell_view);
		auto p = gtk_cell_view_get_displayed_row(gtkCellView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) p);
	}
	
	/**
	 * Sets requisition to the size needed by cell_view to display
	 * the model row pointed to by path.
	 * Since 2.6
	 * Params:
	 * path = a GtkTreePath
	 * requisition = return location for the size. [out]
	 * Returns: TRUE
	 */
	public int getSizeOfRow(TreePath path, out GtkRequisition requisition)
	{
		// gboolean gtk_cell_view_get_size_of_row (GtkCellView *cell_view,  GtkTreePath *path,  GtkRequisition *requisition);
		return gtk_cell_view_get_size_of_row(gtkCellView, (path is null) ? null : path.getTreePathStruct(), &requisition);
	}
	
	/**
	 * Sets the background color of view.
	 * Since 2.6
	 * Params:
	 * color = the new background color
	 */
	public void setBackgroundColor(Color color)
	{
		// void gtk_cell_view_set_background_color (GtkCellView *cell_view,  const GdkColor *color);
		gtk_cell_view_set_background_color(gtkCellView, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_cell_view_get_cell_renderers has been deprecated since version 2.18 and should not be used in newly-written code. use gtk_cell_layout_get_cells() instead.
	 * Returns the cell renderers which have been added to cell_view.
	 * Since 2.6
	 * Returns: a list of cell renderers. The list, but not the renderers has been newly allocated and should be freed with g_list_free() when no longer needed.
	 */
	public ListG getCellRenderers()
	{
		// GList * gtk_cell_view_get_cell_renderers (GtkCellView *cell_view);
		auto p = gtk_cell_view_get_cell_renderers(gtkCellView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
