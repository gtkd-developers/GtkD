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


module gtk.CellView;

private import gdk.Color;
private import gdk.RGBA;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.CellArea;
private import gtk.CellAreaContext;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Requisition;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkCellView displays a single row of a #GtkTreeModel using a #GtkCellArea
 * and #GtkCellAreaContext. A #GtkCellAreaContext can be provided to the
 * #GtkCellView at construction time in order to keep the cellview in context
 * of a group of cell views, this ensures that the renderers displayed will
 * be properly aligned with eachother (like the aligned cells in the menus
 * of #GtkComboBox).
 * 
 * #GtkCellView is #GtkOrientable in order to decide in which orientation
 * the underlying #GtkCellAreaContext should be allocated. Taking the #GtkComboBox
 * menu as an example, cellviews should be oriented horizontally if the menus are
 * listed top-to-bottom and thus all share the same width but may have separate
 * individual heights (left-to-right menus should be allocated vertically since
 * they all share the same height but may have variable widths).
 * 
 * # CSS nodes
 * 
 * GtkCellView has a single CSS node with name cellview.
 */
public class CellView : Widget, CellLayoutIF, OrientableIF
{
	/** the main Gtk struct */
	protected GtkCellView* gtkCellView;

	/** Get the main Gtk struct */
	public GtkCellView* getCellViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellView* gtkCellView, bool ownedRef = false)
	{
		this.gtkCellView = gtkCellView;
		super(cast(GtkWidget*)gtkCellView, ownedRef);
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
	 * Since: 2.6
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

	/** */
	public static GType getType()
	{
		return gtk_cell_view_get_type();
	}

	/**
	 * Creates a new #GtkCellView widget.
	 *
	 * Returns: A newly created #GtkCellView widget.
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_cell_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCellView*) __p);
	}

	/**
	 * Creates a new #GtkCellView widget with a specific #GtkCellArea
	 * to layout cells and a specific #GtkCellAreaContext.
	 *
	 * Specifying the same context for a handfull of cells lets
	 * the underlying area synchronize the geometry for those cells,
	 * in this way alignments with cellviews for other rows are
	 * possible.
	 *
	 * Params:
	 *     area = the #GtkCellArea to layout cells
	 *     context = the #GtkCellAreaContext in which to calculate cell geometry
	 *
	 * Returns: A newly created #GtkCellView widget.
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CellArea area, CellAreaContext context)
	{
		auto __p = gtk_cell_view_new_with_context((area is null) ? null : area.getCellAreaStruct(), (context is null) ? null : context.getCellAreaContextStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_context");
		}

		this(cast(GtkCellView*) __p);
	}

	/**
	 * Creates a new #GtkCellView widget, adds a #GtkCellRendererPixbuf
	 * to it, and makes it show @pixbuf.
	 *
	 * Params:
	 *     pixbuf = the image to display in the cell view
	 *
	 * Returns: A newly created #GtkCellView widget.
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto __p = gtk_cell_view_new_with_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_pixbuf");
		}

		this(cast(GtkCellView*) __p);
	}

	/**
	 * Returns a #GtkTreePath referring to the currently
	 * displayed row. If no row is currently displayed,
	 * %NULL is returned.
	 *
	 * Returns: the currently displayed row or %NULL
	 *
	 * Since: 2.6
	 */
	public TreePath getDisplayedRow()
	{
		auto __p = gtk_cell_view_get_displayed_row(gtkCellView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Gets whether @cell_view is configured to draw all of its
	 * cells in a sensitive state.
	 *
	 * Returns: whether @cell_view draws all of its
	 *     cells in a sensitive state
	 *
	 * Since: 3.0
	 */
	public bool getDrawSensitive()
	{
		return gtk_cell_view_get_draw_sensitive(gtkCellView) != 0;
	}

	/**
	 * Gets whether @cell_view is configured to request space
	 * to fit the entire #GtkTreeModel.
	 *
	 * Returns: whether @cell_view requests space to fit
	 *     the entire #GtkTreeModel.
	 *
	 * Since: 3.0
	 */
	public bool getFitModel()
	{
		return gtk_cell_view_get_fit_model(gtkCellView) != 0;
	}

	/**
	 * Returns the model for @cell_view. If no model is used %NULL is
	 * returned.
	 *
	 * Returns: a #GtkTreeModel used or %NULL
	 *
	 * Since: 2.16
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_cell_view_get_model(gtkCellView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Sets @requisition to the size needed by @cell_view to display
	 * the model row pointed to by @path.
	 *
	 * Deprecated: Combo box formerly used this to calculate the
	 * sizes for cellviews, now you can achieve this by either using
	 * the #GtkCellView:fit-model property or by setting the currently
	 * displayed row of the #GtkCellView and using gtk_widget_get_preferred_size().
	 *
	 * Params:
	 *     path = a #GtkTreePath
	 *     requisition = return location for the size
	 *
	 * Returns: %TRUE
	 *
	 * Since: 2.6
	 */
	public bool getSizeOfRow(TreePath path, out Requisition requisition)
	{
		GtkRequisition* outrequisition = sliceNew!GtkRequisition();

		auto __p = gtk_cell_view_get_size_of_row(gtkCellView, (path is null) ? null : path.getTreePathStruct(), outrequisition) != 0;

		requisition = ObjectG.getDObject!(Requisition)(outrequisition, true);

		return __p;
	}

	/**
	 * Sets the background color of @view.
	 *
	 * Deprecated: Use gtk_cell_view_set_background_rgba() instead.
	 *
	 * Params:
	 *     color = the new background color
	 *
	 * Since: 2.6
	 */
	public void setBackgroundColor(Color color)
	{
		gtk_cell_view_set_background_color(gtkCellView, (color is null) ? null : color.getColorStruct());
	}

	/**
	 * Sets the background color of @cell_view.
	 *
	 * Params:
	 *     rgba = the new background color
	 *
	 * Since: 3.0
	 */
	public void setBackgroundRgba(RGBA rgba)
	{
		gtk_cell_view_set_background_rgba(gtkCellView, (rgba is null) ? null : rgba.getRGBAStruct());
	}

	/**
	 * Sets the row of the model that is currently displayed
	 * by the #GtkCellView. If the path is unset, then the
	 * contents of the cellview “stick” at their last value;
	 * this is not normally a desired result, but may be
	 * a needed intermediate state if say, the model for
	 * the #GtkCellView becomes temporarily empty.
	 *
	 * Params:
	 *     path = a #GtkTreePath or %NULL to unset.
	 *
	 * Since: 2.6
	 */
	public void setDisplayedRow(TreePath path)
	{
		gtk_cell_view_set_displayed_row(gtkCellView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Sets whether @cell_view should draw all of its
	 * cells in a sensitive state, this is used by #GtkComboBox menus
	 * to ensure that rows with insensitive cells that contain
	 * children appear sensitive in the parent menu item.
	 *
	 * Params:
	 *     drawSensitive = whether to draw all cells in a sensitive state.
	 *
	 * Since: 3.0
	 */
	public void setDrawSensitive(bool drawSensitive)
	{
		gtk_cell_view_set_draw_sensitive(gtkCellView, drawSensitive);
	}

	/**
	 * Sets whether @cell_view should request space to fit the entire #GtkTreeModel.
	 *
	 * This is used by #GtkComboBox to ensure that the cell view displayed on
	 * the combo box’s button always gets enough space and does not resize
	 * when selection changes.
	 *
	 * Params:
	 *     fitModel = whether @cell_view should request space for the whole model.
	 *
	 * Since: 3.0
	 */
	public void setFitModel(bool fitModel)
	{
		gtk_cell_view_set_fit_model(gtkCellView, fitModel);
	}

	/**
	 * Sets the model for @cell_view.  If @cell_view already has a model
	 * set, it will remove it before setting the new model.  If @model is
	 * %NULL, then it will unset the old model.
	 *
	 * Params:
	 *     model = a #GtkTreeModel
	 *
	 * Since: 2.6
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_cell_view_set_model(gtkCellView, (model is null) ? null : model.getTreeModelStruct());
	}
}
