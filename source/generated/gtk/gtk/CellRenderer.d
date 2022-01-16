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

private import gdk.Event;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellEditableIF;
private import gtk.Requisition;
private import gtk.Snapshot;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * An object for rendering a single cell
 * 
 * The `GtkCellRenderer` is a base class of a set of objects used for
 * rendering a cell to a `cairo_t`.  These objects are used primarily by
 * the `GtkTreeView` widget, though they aren’t tied to them in any
 * specific way.  It is worth noting that `GtkCellRenderer` is not a
 * `GtkWidget` and cannot be treated as such.
 * 
 * The primary use of a `GtkCellRenderer` is for drawing a certain graphical
 * elements on a `cairo_t`. Typically, one cell renderer is used to
 * draw many cells on the screen.  To this extent, it isn’t expected that a
 * CellRenderer keep any permanent state around.  Instead, any state is set
 * just prior to use using `GObject`s property system.  Then, the
 * cell is measured using gtk_cell_renderer_get_preferred_size(). Finally, the cell
 * is rendered in the correct location using gtk_cell_renderer_snapshot().
 * 
 * There are a number of rules that must be followed when writing a new
 * `GtkCellRenderer`.  First and foremost, it’s important that a certain set
 * of properties will always yield a cell renderer of the same size,
 * barring a style change. The `GtkCellRenderer` also has a number of
 * generic properties that are expected to be honored by all children.
 * 
 * Beyond merely rendering a cell, cell renderers can optionally
 * provide active user interface elements. A cell renderer can be
 * “activatable” like `GtkCellRenderer`Toggle,
 * which toggles when it gets activated by a mouse click, or it can be
 * “editable” like `GtkCellRenderer`Text, which
 * allows the user to edit the text using a widget implementing the
 * `GtkCellEditable` interface, e.g. `GtkEntry`.
 * To make a cell renderer activatable or editable, you have to
 * implement the `GtkCellRenderer`Class.activate or
 * `GtkCellRenderer`Class.start_editing virtual functions, respectively.
 * 
 * Many properties of `GtkCellRenderer` and its subclasses have a
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
	 * Some cell renderers may use events; for example, `GtkCellRendererToggle`
	 * toggles when it gets a mouse click.
	 *
	 * Params:
	 *     event = a `GdkEvent`
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for `GtkTreeView`, a string representation of `GtkTreePath`
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
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     flags = render flags
	 *     cellArea = cell area which would be passed to gtk_cell_renderer_render()
	 *     alignedArea = the return location for the space inside @cell_area
	 *         that would actually be used to render.
	 */
	public void getAlignedArea(Widget widget, GtkCellRendererState flags, GdkRectangle* cellArea, out GdkRectangle alignedArea)
	{
		gtk_cell_renderer_get_aligned_area(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), flags, cellArea, &alignedArea);
	}

	/**
	 * Fills in @xalign and @yalign with the appropriate values of @cell.
	 *
	 * Params:
	 *     xalign = location to fill in with the x alignment of the cell
	 *     yalign = location to fill in with the y alignment of the cell
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		gtk_cell_renderer_get_alignment(gtkCellRenderer, &xalign, &yalign);
	}

	/**
	 * Fills in @width and @height with the appropriate size of @cell.
	 *
	 * Params:
	 *     width = location to fill in with the fixed width of the cell
	 *     height = location to fill in with the fixed height of the cell
	 */
	public void getFixedSize(out int width, out int height)
	{
		gtk_cell_renderer_get_fixed_size(gtkCellRenderer, &width, &height);
	}

	/**
	 * Checks whether the given `GtkCellRenderer` is expanded.
	 *
	 * Returns: %TRUE if the cell renderer is expanded
	 */
	public bool getIsExpanded()
	{
		return gtk_cell_renderer_get_is_expanded(gtkCellRenderer) != 0;
	}

	/**
	 * Checks whether the given `GtkCellRenderer` is an expander.
	 *
	 * Returns: %TRUE if @cell is an expander, and %FALSE otherwise
	 */
	public bool getIsExpander()
	{
		return gtk_cell_renderer_get_is_expander(gtkCellRenderer) != 0;
	}

	/**
	 * Fills in @xpad and @ypad with the appropriate values of @cell.
	 *
	 * Params:
	 *     xpad = location to fill in with the x padding of the cell
	 *     ypad = location to fill in with the y padding of the cell
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		gtk_cell_renderer_get_padding(gtkCellRenderer, &xpad, &ypad);
	}

	/**
	 * Retrieves a renderer’s natural size when rendered to @widget.
	 *
	 * Params:
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     minimumSize = location to store the minimum size
	 *     naturalSize = location to store the natural size
	 */
	public void getPreferredHeight(Widget widget, out int minimumSize, out int naturalSize)
	{
		gtk_cell_renderer_get_preferred_height(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), &minimumSize, &naturalSize);
	}

	/**
	 * Retrieves a cell renderers’s minimum and natural height if it were rendered to
	 * @widget with the specified @width.
	 *
	 * Params:
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     width = the size which is available for allocation
	 *     minimumHeight = location for storing the minimum size
	 *     naturalHeight = location for storing the preferred size
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
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     minimumSize = location for storing the minimum size
	 *     naturalSize = location for storing the natural size
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
	 * Retrieves a renderer’s natural size when rendered to @widget.
	 *
	 * Params:
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     minimumSize = location to store the minimum size
	 *     naturalSize = location to store the natural size
	 */
	public void getPreferredWidth(Widget widget, out int minimumSize, out int naturalSize)
	{
		gtk_cell_renderer_get_preferred_width(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), &minimumSize, &naturalSize);
	}

	/**
	 * Retrieves a cell renderers’s minimum and natural width if it were rendered to
	 * @widget with the specified @height.
	 *
	 * Params:
	 *     widget = the `GtkWidget` this cell will be rendering to
	 *     height = the size which is available for allocation
	 *     minimumWidth = location for storing the minimum size
	 *     naturalWidth = location for storing the preferred size
	 */
	public void getPreferredWidthForHeight(Widget widget, int height, out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_renderer_get_preferred_width_for_height(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), height, &minimumWidth, &naturalWidth);
	}

	/**
	 * Gets whether the cell renderer prefers a height-for-width layout
	 * or a width-for-height layout.
	 *
	 * Returns: The `GtkSizeRequestMode` preferred by this renderer.
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		return gtk_cell_renderer_get_request_mode(gtkCellRenderer);
	}

	/**
	 * Returns the cell renderer’s sensitivity.
	 *
	 * Returns: %TRUE if the cell renderer is sensitive
	 */
	public bool getSensitive()
	{
		return gtk_cell_renderer_get_sensitive(gtkCellRenderer) != 0;
	}

	/**
	 * Translates the cell renderer state to `GtkStateFlags`,
	 * based on the cell renderer and widget sensitivity, and
	 * the given `GtkCellRenderer`State.
	 *
	 * Params:
	 *     widget = a `GtkWidget`
	 *     cellState = cell renderer state
	 *
	 * Returns: the widget state flags applying to @cell
	 */
	public GtkStateFlags getState(Widget widget, GtkCellRendererState cellState)
	{
		return gtk_cell_renderer_get_state(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), cellState);
	}

	/**
	 * Returns the cell renderer’s visibility.
	 *
	 * Returns: %TRUE if the cell renderer is visible
	 */
	public bool getVisible()
	{
		return gtk_cell_renderer_get_visible(gtkCellRenderer) != 0;
	}

	/**
	 * Checks whether the cell renderer can do something when activated.
	 *
	 * Returns: %TRUE if the cell renderer can do anything when activated
	 */
	public bool isActivatable()
	{
		return gtk_cell_renderer_is_activatable(gtkCellRenderer) != 0;
	}

	/**
	 * Sets the renderer’s alignment within its available space.
	 *
	 * Params:
	 *     xalign = the x alignment of the cell renderer
	 *     yalign = the y alignment of the cell renderer
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
	 * Sets whether the given `GtkCellRenderer` is expanded.
	 *
	 * Params:
	 *     isExpanded = whether @cell should be expanded
	 */
	public void setIsExpanded(bool isExpanded)
	{
		gtk_cell_renderer_set_is_expanded(gtkCellRenderer, isExpanded);
	}

	/**
	 * Sets whether the given `GtkCellRenderer` is an expander.
	 *
	 * Params:
	 *     isExpander = whether @cell is an expander
	 */
	public void setIsExpander(bool isExpander)
	{
		gtk_cell_renderer_set_is_expander(gtkCellRenderer, isExpander);
	}

	/**
	 * Sets the renderer’s padding.
	 *
	 * Params:
	 *     xpad = the x padding of the cell renderer
	 *     ypad = the y padding of the cell renderer
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
	 */
	public void setVisible(bool visible)
	{
		gtk_cell_renderer_set_visible(gtkCellRenderer, visible);
	}

	/**
	 * Invokes the virtual render function of the `GtkCellRenderer`. The three
	 * passed-in rectangles are areas in @cr. Most renderers will draw within
	 * @cell_area; the xalign, yalign, xpad, and ypad fields of the `GtkCellRenderer`
	 * should be honored with respect to @cell_area. @background_area includes the
	 * blank space around the cell, and also the area containing the tree expander;
	 * so the @background_area rectangles for all cells tile to cover the entire
	 * @window.
	 *
	 * Params:
	 *     snapshot = a `GtkSnapshot` to draw to
	 *     widget = the widget owning @window
	 *     backgroundArea = entire cell area (including tree expanders and maybe
	 *         padding on the sides)
	 *     cellArea = area normally rendered by a cell renderer
	 *     flags = flags that affect rendering
	 */
	public void snapshot(Snapshot snapshot, Widget widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		gtk_cell_renderer_snapshot(gtkCellRenderer, (snapshot is null) ? null : snapshot.getGtkSnapshotStruct(), (widget is null) ? null : widget.getWidgetStruct(), backgroundArea, cellArea, flags);
	}

	/**
	 * Starts editing the contents of this @cell, through a new `GtkCellEditable`
	 * widget created by the `GtkCellRenderer`Class.start_editing virtual function.
	 *
	 * Params:
	 *     event = a `GdkEvent`
	 *     widget = widget that received the event
	 *     path = widget-dependent string representation of the event location;
	 *         e.g. for `GtkTreeView`, a string representation of `GtkTreePath`
	 *     backgroundArea = background area as passed to gtk_cell_renderer_render()
	 *     cellArea = cell area as passed to gtk_cell_renderer_render()
	 *     flags = render flags
	 *
	 * Returns: A new `GtkCellEditable` for editing this
	 *     @cell, or %NULL if editing is not possible
	 */
	public CellEditableIF startEditing(Event event, Widget widget, string path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		auto __p = gtk_cell_renderer_start_editing(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(path), backgroundArea, cellArea, flags);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellEditableIF)(cast(GtkCellEditable*) __p);
	}

	/**
	 * Informs the cell renderer that the editing is stopped.
	 * If @canceled is %TRUE, the cell renderer will emit the
	 * `GtkCellRenderer`::editing-canceled signal.
	 *
	 * This function should be called by cell renderer implementations
	 * in response to the `GtkCellEditable::editing-done` signal of
	 * `GtkCellEditable`.
	 *
	 * Params:
	 *     canceled = %TRUE if the editing has been canceled
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
	 */
	gulong addOnEditingCanceled(void delegate(CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "editing-canceled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal gets emitted when a cell starts to be edited.
	 * The intended use of this signal is to do special setup
	 * on @editable, e.g. adding a `GtkEntryCompletion` or setting
	 * up additional columns in a `GtkComboBox`.
	 *
	 * See gtk_cell_editable_start_editing() for information on the lifecycle of
	 * the @editable and a way to do setup that doesn’t depend on the @renderer.
	 *
	 * Note that GTK doesn't guarantee that cell renderers will
	 * continue to use the same kind of widget for editing in future
	 * releases, therefore you should check the type of @editable
	 * before doing any specific setup, as in the following example:
	 * |[<!-- language="C" -->
	 * static void
	 * text_editing_started (GtkCellRenderer *cell,
	 * GtkCellEditable *editable,
	 * const char      *path,
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
	 *     editable = the `GtkCellEditable`
	 *     path = the path identifying the edited cell
	 */
	gulong addOnEditingStarted(void delegate(CellEditableIF, string, CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "editing-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
