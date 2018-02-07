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


module gtk.CellRenderer;

private import cairo.Context;
private import gdk.Event;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellEditableIF;
private import gtk.Requisition;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkCellRenderer is a base class of a set of objects used for
 * rendering a cell to a #cairo_t.  These objects are used primarily by
 * the #GtkTreeView widget, though they aren’t tied to them in any
 * specific way.  It is worth noting that #GtkCellRenderer is not a
 * #GtkWidget and cannot be treated as such.
 * 
 * The primary use of a #GtkCellRenderer is for drawing a certain graphical
 * elements on a #cairo_t. Typically, one cell renderer is used to
 * draw many cells on the screen.  To this extent, it isn’t expected that a
 * CellRenderer keep any permanent state around.  Instead, any state is set
 * just prior to use using #GObjects property system.  Then, the
 * cell is measured using gtk_cell_renderer_get_size(). Finally, the cell
 * is rendered in the correct location using gtk_cell_renderer_render().
 * 
 * There are a number of rules that must be followed when writing a new
 * #GtkCellRenderer.  First and foremost, it’s important that a certain set
 * of properties will always yield a cell renderer of the same size,
 * barring a #GtkStyle change.  The #GtkCellRenderer also has a number of
 * generic properties that are expected to be honored by all children.
 * 
 * Beyond merely rendering a cell, cell renderers can optionally
 * provide active user interface elements. A cell renderer can be
 * “activatable” like #GtkCellRendererToggle,
 * which toggles when it gets activated by a mouse click, or it can be
 * “editable” like #GtkCellRendererText, which
 * allows the user to edit the text using a #GtkEntry.
 * To make a cell renderer activatable or editable, you have to
 * implement the #GtkCellRendererClass.activate or
 * #GtkCellRendererClass.start_editing virtual functions, respectively.
 * 
 * Many properties of #GtkCellRenderer and its subclasses have a
 * corresponding “set” property, e.g. “cell-background-set” corresponds
 * to “cell-background”. These “set” properties reflect whether a property
 * has been set or not. You should not set them independently.
 */
public class CellRenderer : ObjectG
{
	/** the main Gtk struct */
	protected GtkCellRenderer* gtkCellRenderer;

	/** Get the main Gtk struct */
	public GtkCellRenderer* getCellRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRenderer* gtkCellRenderer, bool ownedRef = false)
	{
		this.gtkCellRenderer = gtkCellRenderer;
		super(cast(GObject*)gtkCellRenderer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_get_type();
	}

	/**
	 * Passes an activate event to the cell renderer for possible processing.
	 * Some cell renderers may use events; for example, #GtkCellRendererToggle
	 * toggles when it gets a mouse click.
	 *
	 * Params:
	 *     event = a #GdkEvent
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for #GtkTreeView, a string representation of #GtkTreePath
	 *     backgroundArea = background area as passed to gtk_cell_renderer_render()
	 *     cellArea = cell area as passed to gtk_cell_renderer_render()
	 *     flags = render flags
	 *
	 * Returns: %TRUE if the event was consumed/handled
	 */
	public bool activate(Event event, Widget widget, string path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		return gtk_cell_renderer_activate(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(path), backgroundArea, cellArea, flags) != 0;
	}

	/**
	 * Gets the aligned area used by @cell inside @cell_area. Used for finding
	 * the appropriate edit and focus rectangle.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     flags = render flags
	 *     cellArea = cell area which would be passed to gtk_cell_renderer_render()
	 *     alignedArea = the return location for the space inside @cell_area
	 *         that would acually be used to render.
	 *
	 * Since: 3.0
	 */
	public void getAlignedArea(Widget widget, GtkCellRendererState flags, GdkRectangle* cellArea, out GdkRectangle alignedArea)
	{
		gtk_cell_renderer_get_aligned_area(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), flags, cellArea, &alignedArea);
	}

	/**
	 * Fills in @xalign and @yalign with the appropriate values of @cell.
	 *
	 * Params:
	 *     xalign = location to fill in with the x alignment of the cell, or %NULL
	 *     yalign = location to fill in with the y alignment of the cell, or %NULL
	 *
	 * Since: 2.18
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		gtk_cell_renderer_get_alignment(gtkCellRenderer, &xalign, &yalign);
	}

	/**
	 * Fills in @width and @height with the appropriate size of @cell.
	 *
	 * Params:
	 *     width = location to fill in with the fixed width of the cell, or %NULL
	 *     height = location to fill in with the fixed height of the cell, or %NULL
	 */
	public void getFixedSize(out int width, out int height)
	{
		gtk_cell_renderer_get_fixed_size(gtkCellRenderer, &width, &height);
	}

	/**
	 * Fills in @xpad and @ypad with the appropriate values of @cell.
	 *
	 * Params:
	 *     xpad = location to fill in with the x padding of the cell, or %NULL
	 *     ypad = location to fill in with the y padding of the cell, or %NULL
	 *
	 * Since: 2.18
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		gtk_cell_renderer_get_padding(gtkCellRenderer, &xpad, &ypad);
	}

	/**
	 * Retreives a renderer’s natural size when rendered to @widget.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     minimumSize = location to store the minimum size, or %NULL
	 *     naturalSize = location to store the natural size, or %NULL
	 *
	 * Since: 3.0
	 */
	public void getPreferredHeight(Widget widget, out int minimumSize, out int naturalSize)
	{
		gtk_cell_renderer_get_preferred_height(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), &minimumSize, &naturalSize);
	}

	/**
	 * Retreives a cell renderers’s minimum and natural height if it were rendered to
	 * @widget with the specified @width.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     width = the size which is available for allocation
	 *     minimumHeight = location for storing the minimum size, or %NULL
	 *     naturalHeight = location for storing the preferred size, or %NULL
	 *
	 * Since: 3.0
	 */
	public void getPreferredHeightForWidth(Widget widget, int width, out int minimumHeight, out int naturalHeight)
	{
		gtk_cell_renderer_get_preferred_height_for_width(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), width, &minimumHeight, &naturalHeight);
	}

	/**
	 * Retrieves the minimum and natural size of a cell taking
	 * into account the widget’s preference for height-for-width management.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     minimumSize = location for storing the minimum size, or %NULL
	 *     naturalSize = location for storing the natural size, or %NULL
	 *
	 * Since: 3.0
	 */
	public void getPreferredSize(Widget widget, out Requisition minimumSize, out Requisition naturalSize)
	{
		GtkRequisition* outminimumSize = sliceNew!GtkRequisition();
		GtkRequisition* outnaturalSize = sliceNew!GtkRequisition();

		gtk_cell_renderer_get_preferred_size(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), outminimumSize, outnaturalSize);

		minimumSize = ObjectG.getDObject!(Requisition)(outminimumSize, true);
		naturalSize = ObjectG.getDObject!(Requisition)(outnaturalSize, true);
	}

	/**
	 * Retreives a renderer’s natural size when rendered to @widget.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     minimumSize = location to store the minimum size, or %NULL
	 *     naturalSize = location to store the natural size, or %NULL
	 *
	 * Since: 3.0
	 */
	public void getPreferredWidth(Widget widget, out int minimumSize, out int naturalSize)
	{
		gtk_cell_renderer_get_preferred_width(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), &minimumSize, &naturalSize);
	}

	/**
	 * Retreives a cell renderers’s minimum and natural width if it were rendered to
	 * @widget with the specified @height.
	 *
	 * Params:
	 *     widget = the #GtkWidget this cell will be rendering to
	 *     height = the size which is available for allocation
	 *     minimumWidth = location for storing the minimum size, or %NULL
	 *     naturalWidth = location for storing the preferred size, or %NULL
	 *
	 * Since: 3.0
	 */
	public void getPreferredWidthForHeight(Widget widget, int height, out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_renderer_get_preferred_width_for_height(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), height, &minimumWidth, &naturalWidth);
	}

	/**
	 * Gets whether the cell renderer prefers a height-for-width layout
	 * or a width-for-height layout.
	 *
	 * Returns: The #GtkSizeRequestMode preferred by this renderer.
	 *
	 * Since: 3.0
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		return gtk_cell_renderer_get_request_mode(gtkCellRenderer);
	}

	/**
	 * Returns the cell renderer’s sensitivity.
	 *
	 * Returns: %TRUE if the cell renderer is sensitive
	 *
	 * Since: 2.18
	 */
	public bool getSensitive()
	{
		return gtk_cell_renderer_get_sensitive(gtkCellRenderer) != 0;
	}

	/**
	 * Obtains the width and height needed to render the cell. Used by view
	 * widgets to determine the appropriate size for the cell_area passed to
	 * gtk_cell_renderer_render().  If @cell_area is not %NULL, fills in the
	 * x and y offsets (if set) of the cell relative to this location.
	 *
	 * Please note that the values set in @width and @height, as well as those
	 * in @x_offset and @y_offset are inclusive of the xpad and ypad properties.
	 *
	 * Deprecated: Use gtk_cell_renderer_get_preferred_size() instead.
	 *
	 * Params:
	 *     widget = the widget the renderer is rendering to
	 *     cellArea = The area a cell will be allocated, or %NULL
	 *     xOffset = location to return x offset of cell relative to @cell_area, or %NULL
	 *     yOffset = location to return y offset of cell relative to @cell_area, or %NULL
	 *     width = location to return width needed to render a cell, or %NULL
	 *     height = location to return height needed to render a cell, or %NULL
	 */
	public void getSize(Widget widget, GdkRectangle* cellArea, out int xOffset, out int yOffset, out int width, out int height)
	{
		gtk_cell_renderer_get_size(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), cellArea, &xOffset, &yOffset, &width, &height);
	}

	/**
	 * Translates the cell renderer state to #GtkStateFlags,
	 * based on the cell renderer and widget sensitivity, and
	 * the given #GtkCellRendererState.
	 *
	 * Params:
	 *     widget = a #GtkWidget, or %NULL
	 *     cellState = cell renderer state
	 *
	 * Returns: the widget state flags applying to @cell
	 *
	 * Since: 3.0
	 */
	public GtkStateFlags getState(Widget widget, GtkCellRendererState cellState)
	{
		return gtk_cell_renderer_get_state(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), cellState);
	}

	/**
	 * Returns the cell renderer’s visibility.
	 *
	 * Returns: %TRUE if the cell renderer is visible
	 *
	 * Since: 2.18
	 */
	public bool getVisible()
	{
		return gtk_cell_renderer_get_visible(gtkCellRenderer) != 0;
	}

	/**
	 * Checks whether the cell renderer can do something when activated.
	 *
	 * Returns: %TRUE if the cell renderer can do anything when activated
	 *
	 * Since: 3.0
	 */
	public bool isActivatable()
	{
		return gtk_cell_renderer_is_activatable(gtkCellRenderer) != 0;
	}

	/**
	 * Invokes the virtual render function of the #GtkCellRenderer. The three
	 * passed-in rectangles are areas in @cr. Most renderers will draw within
	 * @cell_area; the xalign, yalign, xpad, and ypad fields of the #GtkCellRenderer
	 * should be honored with respect to @cell_area. @background_area includes the
	 * blank space around the cell, and also the area containing the tree expander;
	 * so the @background_area rectangles for all cells tile to cover the entire
	 * @window.
	 *
	 * Params:
	 *     cr = a cairo context to draw to
	 *     widget = the widget owning @window
	 *     backgroundArea = entire cell area (including tree expanders and maybe
	 *         padding on the sides)
	 *     cellArea = area normally rendered by a cell renderer
	 *     flags = flags that affect rendering
	 */
	public void render(Context cr, Widget widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		gtk_cell_renderer_render(gtkCellRenderer, (cr is null) ? null : cr.getContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), backgroundArea, cellArea, flags);
	}

	/**
	 * Sets the renderer’s alignment within its available space.
	 *
	 * Params:
	 *     xalign = the x alignment of the cell renderer
	 *     yalign = the y alignment of the cell renderer
	 *
	 * Since: 2.18
	 */
	public void setAlignment(float xalign, float yalign)
	{
		gtk_cell_renderer_set_alignment(gtkCellRenderer, xalign, yalign);
	}

	/**
	 * Sets the renderer size to be explicit, independent of the properties set.
	 *
	 * Params:
	 *     width = the width of the cell renderer, or -1
	 *     height = the height of the cell renderer, or -1
	 */
	public void setFixedSize(int width, int height)
	{
		gtk_cell_renderer_set_fixed_size(gtkCellRenderer, width, height);
	}

	/**
	 * Sets the renderer’s padding.
	 *
	 * Params:
	 *     xpad = the x padding of the cell renderer
	 *     ypad = the y padding of the cell renderer
	 *
	 * Since: 2.18
	 */
	public void setPadding(int xpad, int ypad)
	{
		gtk_cell_renderer_set_padding(gtkCellRenderer, xpad, ypad);
	}

	/**
	 * Sets the cell renderer’s sensitivity.
	 *
	 * Params:
	 *     sensitive = the sensitivity of the cell
	 *
	 * Since: 2.18
	 */
	public void setSensitive(bool sensitive)
	{
		gtk_cell_renderer_set_sensitive(gtkCellRenderer, sensitive);
	}

	/**
	 * Sets the cell renderer’s visibility.
	 *
	 * Params:
	 *     visible = the visibility of the cell
	 *
	 * Since: 2.18
	 */
	public void setVisible(bool visible)
	{
		gtk_cell_renderer_set_visible(gtkCellRenderer, visible);
	}

	/**
	 * Passes an activate event to the cell renderer for possible processing.
	 *
	 * Params:
	 *     event = a #GdkEvent
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for #GtkTreeView, a string representation of #GtkTreePath
	 *     backgroundArea = background area as passed to gtk_cell_renderer_render()
	 *     cellArea = cell area as passed to gtk_cell_renderer_render()
	 *     flags = render flags
	 *
	 * Returns: A new #GtkCellEditable, or %NULL
	 */
	public CellEditableIF startEditing(Event event, Widget widget, string path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		auto p = gtk_cell_renderer_start_editing(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(path), backgroundArea, cellArea, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellEditableIF)(cast(GtkCellEditable*) p);
	}

	/**
	 * Informs the cell renderer that the editing is stopped.
	 * If @canceled is %TRUE, the cell renderer will emit the
	 * #GtkCellRenderer::editing-canceled signal.
	 *
	 * This function should be called by cell renderer implementations
	 * in response to the #GtkCellEditable::editing-done signal of
	 * #GtkCellEditable.
	 *
	 * Params:
	 *     canceled = %TRUE if the editing has been canceled
	 *
	 * Since: 2.6
	 */
	public void stopEditing(bool canceled)
	{
		gtk_cell_renderer_stop_editing(gtkCellRenderer, canceled);
	}

	/**
	 * This signal gets emitted when the user cancels the process of editing a
	 * cell.  For example, an editable cell renderer could be written to cancel
	 * editing when the user presses Escape.
	 *
	 * See also: gtk_cell_renderer_stop_editing().
	 *
	 * Since: 2.4
	 */
	gulong addOnEditingCanceled(void delegate(CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "editing-canceled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal gets emitted when a cell starts to be edited.
	 * The intended use of this signal is to do special setup
	 * on @editable, e.g. adding a #GtkEntryCompletion or setting
	 * up additional columns in a #GtkComboBox.
	 *
	 * Note that GTK+ doesn't guarantee that cell renderers will
	 * continue to use the same kind of widget for editing in future
	 * releases, therefore you should check the type of @editable
	 * before doing any specific setup, as in the following example:
	 * |[<!-- language="C" -->
	 * static void
	 * text_editing_started (GtkCellRenderer *cell,
	 * GtkCellEditable *editable,
	 * const gchar     *path,
	 * gpointer         data)
	 * {
	 * if (GTK_IS_ENTRY (editable))
	 * {
	 * GtkEntry *entry = GTK_ENTRY (editable);
	 *
	 * // ... create a GtkEntryCompletion
	 *
	 * gtk_entry_set_completion (entry, completion);
	 * }
	 * }
	 * ]|
	 *
	 * Params:
	 *     editable = the #GtkCellEditable
	 *     path = the path identifying the edited cell
	 *
	 * Since: 2.6
	 */
	gulong addOnEditingStarted(void delegate(CellEditableIF, string, CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "editing-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
