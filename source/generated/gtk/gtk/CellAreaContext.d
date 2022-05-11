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


module gtk.CellAreaContext;

private import gobject.ObjectG;
private import gtk.CellArea;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * Stores geometrical information for a series of rows in a GtkCellArea
 * 
 * The `GtkCellAreaContext` object is created by a given `GtkCellArea`
 * implementation via its `GtkCellAreaClass.create_context()` virtual
 * method and is used to store cell sizes and alignments for a series of
 * `GtkTreeModel` rows that are requested and rendered in the same context.
 * 
 * `GtkCellLayout` widgets can create any number of contexts in which to
 * request and render groups of data rows. However, it’s important that the
 * same context which was used to request sizes for a given `GtkTreeModel`
 * row also be used for the same row when calling other `GtkCellArea` APIs
 * such as gtk_cell_area_render() and gtk_cell_area_event().
 */
public class CellAreaContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkCellAreaContext* gtkCellAreaContext;

	/** Get the main Gtk struct */
	public GtkCellAreaContext* getCellAreaContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellAreaContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellAreaContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellAreaContext* gtkCellAreaContext, bool ownedRef = false)
	{
		this.gtkCellAreaContext = gtkCellAreaContext;
		super(cast(GObject*)gtkCellAreaContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_area_context_get_type();
	}

	/**
	 * Allocates a width and/or a height for all rows which are to be
	 * rendered with @context.
	 *
	 * Usually allocation is performed only horizontally or sometimes
	 * vertically since a group of rows are usually rendered side by
	 * side vertically or horizontally and share either the same width
	 * or the same height. Sometimes they are allocated in both horizontal
	 * and vertical orientations producing a homogeneous effect of the
	 * rows. This is generally the case for `GtkTreeView` when
	 * `GtkTreeView:fixed-height-mode` is enabled.
	 *
	 * Params:
	 *     width = the allocated width for all `GtkTreeModel` rows rendered
	 *         with @context, or -1
	 *     height = the allocated height for all `GtkTreeModel` rows rendered
	 *         with @context, or -1
	 */
	public void allocate(int width, int height)
	{
		gtk_cell_area_context_allocate(gtkCellAreaContext, width, height);
	}

	/**
	 * Fetches the current allocation size for @context.
	 *
	 * If the context was not allocated in width or height, or if the
	 * context was recently reset with gtk_cell_area_context_reset(),
	 * the returned value will be -1.
	 *
	 * Params:
	 *     width = location to store the allocated width
	 *     height = location to store the allocated height
	 */
	public void getAllocation(out int width, out int height)
	{
		gtk_cell_area_context_get_allocation(gtkCellAreaContext, &width, &height);
	}

	/**
	 * Fetches the `GtkCellArea` this @context was created by.
	 *
	 * This is generally unneeded by layouting widgets; however,
	 * it is important for the context implementation itself to
	 * fetch information about the area it is being used for.
	 *
	 * For instance at `GtkCellAreaContextClass.allocate()` time
	 * it’s important to know details about any cell spacing
	 * that the `GtkCellArea` is configured with in order to
	 * compute a proper allocation.
	 *
	 * Returns: the `GtkCellArea` this context was created by.
	 */
	public CellArea getArea()
	{
		auto __p = gtk_cell_area_context_get_area(gtkCellAreaContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellArea)(cast(GtkCellArea*) __p);
	}

	/**
	 * Gets the accumulative preferred height for all rows which have been
	 * requested with this context.
	 *
	 * After gtk_cell_area_context_reset() is called and/or before ever
	 * requesting the size of a `GtkCellArea`, the returned values are 0.
	 *
	 * Params:
	 *     minimumHeight = location to store the minimum height
	 *     naturalHeight = location to store the natural height
	 */
	public void getPreferredHeight(out int minimumHeight, out int naturalHeight)
	{
		gtk_cell_area_context_get_preferred_height(gtkCellAreaContext, &minimumHeight, &naturalHeight);
	}

	/**
	 * Gets the accumulative preferred height for @width for all rows
	 * which have been requested for the same said @width with this context.
	 *
	 * After gtk_cell_area_context_reset() is called and/or before ever
	 * requesting the size of a `GtkCellArea`, the returned values are -1.
	 *
	 * Params:
	 *     width = a proposed width for allocation
	 *     minimumHeight = location to store the minimum height
	 *     naturalHeight = location to store the natural height
	 */
	public void getPreferredHeightForWidth(int width, out int minimumHeight, out int naturalHeight)
	{
		gtk_cell_area_context_get_preferred_height_for_width(gtkCellAreaContext, width, &minimumHeight, &naturalHeight);
	}

	/**
	 * Gets the accumulative preferred width for all rows which have been
	 * requested with this context.
	 *
	 * After gtk_cell_area_context_reset() is called and/or before ever
	 * requesting the size of a `GtkCellArea`, the returned values are 0.
	 *
	 * Params:
	 *     minimumWidth = location to store the minimum width
	 *     naturalWidth = location to store the natural width
	 */
	public void getPreferredWidth(out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_area_context_get_preferred_width(gtkCellAreaContext, &minimumWidth, &naturalWidth);
	}

	/**
	 * Gets the accumulative preferred width for @height for all rows which
	 * have been requested for the same said @height with this context.
	 *
	 * After gtk_cell_area_context_reset() is called and/or before ever
	 * requesting the size of a `GtkCellArea`, the returned values are -1.
	 *
	 * Params:
	 *     height = a proposed height for allocation
	 *     minimumWidth = location to store the minimum width
	 *     naturalWidth = location to store the natural width
	 */
	public void getPreferredWidthForHeight(int height, out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_area_context_get_preferred_width_for_height(gtkCellAreaContext, height, &minimumWidth, &naturalWidth);
	}

	/**
	 * Causes the minimum and/or natural height to grow if the new
	 * proposed sizes exceed the current minimum and natural height.
	 *
	 * This is used by `GtkCellAreaContext` implementations during
	 * the request process over a series of `GtkTreeModel` rows to
	 * progressively push the requested height over a series of
	 * gtk_cell_area_get_preferred_height() requests.
	 *
	 * Params:
	 *     minimumHeight = the proposed new minimum height for @context
	 *     naturalHeight = the proposed new natural height for @context
	 */
	public void pushPreferredHeight(int minimumHeight, int naturalHeight)
	{
		gtk_cell_area_context_push_preferred_height(gtkCellAreaContext, minimumHeight, naturalHeight);
	}

	/**
	 * Causes the minimum and/or natural width to grow if the new
	 * proposed sizes exceed the current minimum and natural width.
	 *
	 * This is used by `GtkCellAreaContext` implementations during
	 * the request process over a series of `GtkTreeModel` rows to
	 * progressively push the requested width over a series of
	 * gtk_cell_area_get_preferred_width() requests.
	 *
	 * Params:
	 *     minimumWidth = the proposed new minimum width for @context
	 *     naturalWidth = the proposed new natural width for @context
	 */
	public void pushPreferredWidth(int minimumWidth, int naturalWidth)
	{
		gtk_cell_area_context_push_preferred_width(gtkCellAreaContext, minimumWidth, naturalWidth);
	}

	/**
	 * Resets any previously cached request and allocation
	 * data.
	 *
	 * When underlying `GtkTreeModel` data changes its
	 * important to reset the context if the content
	 * size is allowed to shrink. If the content size
	 * is only allowed to grow (this is usually an option
	 * for views rendering large data stores as a measure
	 * of optimization), then only the row that changed
	 * or was inserted needs to be (re)requested with
	 * gtk_cell_area_get_preferred_width().
	 *
	 * When the new overall size of the context requires
	 * that the allocated size changes (or whenever this
	 * allocation changes at all), the variable row
	 * sizes need to be re-requested for every row.
	 *
	 * For instance, if the rows are displayed all with
	 * the same width from top to bottom then a change
	 * in the allocated width necessitates a recalculation
	 * of all the displayed row heights using
	 * gtk_cell_area_get_preferred_height_for_width().
	 */
	public void reset()
	{
		gtk_cell_area_context_reset(gtkCellAreaContext);
	}
}
