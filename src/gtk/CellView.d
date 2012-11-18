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
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_cell_view_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_cell_view_new_with_text
 * 	- gtk_cell_view_new_with_markup
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Color
 * 	- gdk.RGBA
 * 	- gdk.Pixbuf
 * 	- gtk.CellArea
 * 	- gtk.CellAreaContext
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GtkCellArea* -> CellArea
 * 	- GtkCellAreaContext* -> CellAreaContext
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
private import gdk.Color;
private import gdk.RGBA;
private import gdk.Pixbuf;
private import gtk.CellArea;
private import gtk.CellAreaContext;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Widget;

/**
 * Description
 * A GtkCellView displays a single row of a GtkTreeModel using a GtkCellArea
 * and GtkCellAreaContext. A GtkCellAreaContext can be provided to the
 * GtkCellView at construction time in order to keep the cellview in context
 * of a group of cell views, this ensures that the renderers displayed will
 * be properly aligned with eachother (like the aligned cells in the menus
 * of GtkComboBox).
 * GtkCellView is GtkOrientable in order to decide in which orientation
 * the underlying GtkCellAreaContext should be allocated. Taking the GtkComboBox
 * menu as an example, cellviews should be oriented horizontally if the menus are
 * listed top-to-bottom and thus all share the same width but may have separate
 * individual heights (left-to-right menus should be allocated vertically since
 * they all share the same height but may have variable widths).
 */
public class CellView : Widget, CellLayoutIF, OrientableIF
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
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkCellView);
	
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
	 * Creates a new GtkCellView widget with a specific GtkCellArea
	 * to layout cells and a specific GtkCellAreaContext.
	 * Specifying the same context for a handfull of cells lets
	 * the underlying area synchronize the geometry for those cells,
	 * in this way alignments with cellviews for other rows are
	 * possible.
	 * Since 2.6
	 * Params:
	 * area = the GtkCellArea to layout cells
	 * context = the GtkCellAreaContext in which to calculate cell geometry
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (CellArea area, CellAreaContext context)
	{
		// GtkWidget * gtk_cell_view_new_with_context (GtkCellArea *area,  GtkCellAreaContext *context);
		auto p = gtk_cell_view_new_with_context((area is null) ? null : area.getCellAreaStruct(), (context is null) ? null : context.getCellAreaContextStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_view_new_with_context((area is null) ? null : area.getCellAreaStruct(), (context is null) ? null : context.getCellAreaContextStruct())");
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
	 * Warning
	 * gtk_cell_view_get_size_of_row has been deprecated since version 3.0 and should not be used in newly-written code. Combo box formerly used this to calculate the
	 * sizes for cellviews, now you can achieve this by either using
	 * the "fit-model" property or by setting the currently
	 * displayed row of the GtkCellView and using gtk_widget_get_preferred_size().
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
	 * Warning
	 * gtk_cell_view_set_background_color has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_cell_view_set_background_rgba() instead.
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
	 * Sets the background color of cell_view.
	 * Params:
	 * rgba = the new background color
	 * Since 3.0
	 */
	public void setBackgroundRgba(RGBA rgba)
	{
		// void gtk_cell_view_set_background_rgba (GtkCellView *cell_view,  const GdkRGBA *rgba);
		gtk_cell_view_set_background_rgba(gtkCellView, (rgba is null) ? null : rgba.getRGBAStruct());
	}
	
	/**
	 * Sets whether cell_view should draw all of its
	 * cells in a sensitive state, this is used by GtkComboBox menus
	 * to ensure that rows with insensitive cells that contain
	 * children appear sensitive in the parent menu item.
	 * Params:
	 * drawSensitive = whether to draw all cells in a sensitive state.
	 * Since 3.0
	 */
	public void setDrawSensitive(int drawSensitive)
	{
		// void gtk_cell_view_set_draw_sensitive (GtkCellView *cell_view,  gboolean draw_sensitive);
		gtk_cell_view_set_draw_sensitive(gtkCellView, drawSensitive);
	}
	
	/**
	 * Gets whether cell_view is configured to draw all of its
	 * cells in a sensitive state.
	 * Returns: whether cell_view draws all of its cells in a sensitive state Since 3.0
	 */
	public int getDrawSensitive()
	{
		// gboolean gtk_cell_view_get_draw_sensitive (GtkCellView *cell_view);
		return gtk_cell_view_get_draw_sensitive(gtkCellView);
	}
	
	/**
	 * Sets whether cell_view should request space to fit the entire GtkTreeModel.
	 * This is used by GtkComboBox to ensure that the cell view displayed on
	 * the combo box's button always gets enough space and does not resize
	 * when selection changes.
	 * Params:
	 * fitModel = whether cell_view should request space for the whole model.
	 * Since 3.0
	 */
	public void setFitModel(int fitModel)
	{
		// void gtk_cell_view_set_fit_model (GtkCellView *cell_view,  gboolean fit_model);
		gtk_cell_view_set_fit_model(gtkCellView, fitModel);
	}
	
	/**
	 * Gets whether cell_view is configured to request space
	 * to fit the entire GtkTreeModel.
	 * Returns: whether cell_view requests space to fit the entire GtkTreeModel. Since 3.0
	 */
	public int getFitModel()
	{
		// gboolean gtk_cell_view_get_fit_model (GtkCellView *cell_view);
		return gtk_cell_view_get_fit_model(gtkCellView);
	}
}
