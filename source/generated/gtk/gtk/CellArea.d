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


module gtk.CellArea;

private import gdk.Event;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellAreaContext;
private import gtk.CellEditableIF;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.CellRenderer;
private import gtk.Snapshot;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * An abstract class for laying out `GtkCellRenderer`s
 * 
 * The `GtkCellArea` is an abstract class for [iface@Gtk.CellLayout]
 * widgets (also referred to as "layouting widgets") to interface with
 * an arbitrary number of [class@Gtk.CellRenderer]s and interact with the user
 * for a given [iface@Gtk.TreeModel] row.
 * 
 * The cell area handles events, focus navigation, drawing and
 * size requests and allocations for a given row of data.
 * 
 * Usually users dont have to interact with the `GtkCellArea` directly
 * unless they are implementing a cell-layouting widget themselves.
 * 
 * # Requesting area sizes
 * 
 * As outlined in
 * [GtkWidget’s geometry management section](class.Widget.html#height-for-width-geometry-management),
 * GTK uses a height-for-width
 * geometry management system to compute the sizes of widgets and user
 * interfaces. `GtkCellArea` uses the same semantics to calculate the
 * size of an area for an arbitrary number of `GtkTreeModel` rows.
 * 
 * When requesting the size of a cell area one needs to calculate
 * the size for a handful of rows, and this will be done differently by
 * different layouting widgets. For instance a [class@Gtk.TreeViewColumn]
 * always lines up the areas from top to bottom while a [class@Gtk.IconView]
 * on the other hand might enforce that all areas received the same
 * width and wrap the areas around, requesting height for more cell
 * areas when allocated less width.
 * 
 * It’s also important for areas to maintain some cell
 * alignments with areas rendered for adjacent rows (cells can
 * appear “columnized” inside an area even when the size of
 * cells are different in each row). For this reason the `GtkCellArea`
 * uses a [class@Gtk.CellAreaContext] object to store the alignments
 * and sizes along the way (as well as the overall largest minimum
 * and natural size for all the rows which have been calculated
 * with the said context).
 * 
 * The [class@Gtk.CellAreaContext] is an opaque object specific to the
 * `GtkCellArea` which created it (see [method@Gtk.CellArea.create_context]).
 * 
 * The owning cell-layouting widget can create as many contexts as
 * it wishes to calculate sizes of rows which should receive the
 * same size in at least one orientation (horizontally or vertically),
 * However, it’s important that the same [class@Gtk.CellAreaContext] which
 * was used to request the sizes for a given `GtkTreeModel` row be
 * used when rendering or processing events for that row.
 * 
 * In order to request the width of all the rows at the root level
 * of a `GtkTreeModel` one would do the following:
 * 
 * ```c
 * GtkTreeIter iter;
 * int minimum_width;
 * int natural_width;
 * 
 * valid = gtk_tree_model_get_iter_first (model, &iter);
 * while (valid)
 * {
 * gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
 * gtk_cell_area_get_preferred_width (area, context, widget, NULL, NULL);
 * 
 * valid = gtk_tree_model_iter_next (model, &iter);
 * }
 * 
 * gtk_cell_area_context_get_preferred_width (context, &minimum_width, &natural_width);
 * ```
 * 
 * Note that in this example it’s not important to observe the
 * returned minimum and natural width of the area for each row
 * unless the cell-layouting object is actually interested in the
 * widths of individual rows. The overall width is however stored
 * in the accompanying `GtkCellAreaContext` object and can be consulted
 * at any time.
 * 
 * This can be useful since `GtkCellLayout` widgets usually have to
 * support requesting and rendering rows in treemodels with an
 * exceedingly large amount of rows. The `GtkCellLayout` widget in
 * that case would calculate the required width of the rows in an
 * idle or timeout source (see [func@GLib.timeout_add]) and when the widget
 * is requested its actual width in [vfunc@Gtk.Widget.measure]
 * it can simply consult the width accumulated so far in the
 * `GtkCellAreaContext` object.
 * 
 * A simple example where rows are rendered from top to bottom and
 * take up the full width of the layouting widget would look like:
 * 
 * ```c
 * static void
 * foo_get_preferred_width (GtkWidget *widget,
 * int       *minimum_size,
 * int       *natural_size)
 * {
 * Foo *self = FOO (widget);
 * FooPrivate *priv = foo_get_instance_private (self);
 * 
 * foo_ensure_at_least_one_handfull_of_rows_have_been_requested (self);
 * 
 * gtk_cell_area_context_get_preferred_width (priv->context, minimum_size, natural_size);
 * }
 * ```
 * 
 * In the above example the `Foo` widget has to make sure that some
 * row sizes have been calculated (the amount of rows that `Foo` judged
 * was appropriate to request space for in a single timeout iteration)
 * before simply returning the amount of space required by the area via
 * the `GtkCellAreaContext`.
 * 
 * Requesting the height for width (or width for height) of an area is
 * a similar task except in this case the `GtkCellAreaContext` does not
 * store the data (actually, it does not know how much space the layouting
 * widget plans to allocate it for every row. It’s up to the layouting
 * widget to render each row of data with the appropriate height and
 * width which was requested by the `GtkCellArea`).
 * 
 * In order to request the height for width of all the rows at the
 * root level of a `GtkTreeModel` one would do the following:
 * 
 * ```c
 * GtkTreeIter iter;
 * int minimum_height;
 * int natural_height;
 * int full_minimum_height = 0;
 * int full_natural_height = 0;
 * 
 * valid = gtk_tree_model_get_iter_first (model, &iter);
 * while (valid)
 * {
 * gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
 * gtk_cell_area_get_preferred_height_for_width (area, context, widget,
 * width, &minimum_height, &natural_height);
 * 
 * if (width_is_for_allocation)
 * cache_row_height (&iter, minimum_height, natural_height);
 * 
 * full_minimum_height += minimum_height;
 * full_natural_height += natural_height;
 * 
 * valid = gtk_tree_model_iter_next (model, &iter);
 * }
 * ```
 * 
 * Note that in the above example we would need to cache the heights
 * returned for each row so that we would know what sizes to render the
 * areas for each row. However we would only want to really cache the
 * heights if the request is intended for the layouting widgets real
 * allocation.
 * 
 * In some cases the layouting widget is requested the height for an
 * arbitrary for_width, this is a special case for layouting widgets
 * who need to request size for tens of thousands  of rows. For this
 * case it’s only important that the layouting widget calculate
 * one reasonably sized chunk of rows and return that height
 * synchronously. The reasoning here is that any layouting widget is
 * at least capable of synchronously calculating enough height to fill
 * the screen height (or scrolled window height) in response to a single
 * call to [vfunc@Gtk.Widget.measure]. Returning
 * a perfect height for width that is larger than the screen area is
 * inconsequential since after the layouting receives an allocation
 * from a scrolled window it simply continues to drive the scrollbar
 * values while more and more height is required for the row heights
 * that are calculated in the background.
 * 
 * # Rendering Areas
 * 
 * Once area sizes have been acquired at least for the rows in the
 * visible area of the layouting widget they can be rendered at
 * [vfunc@Gtk.Widget.snapshot] time.
 * 
 * A crude example of how to render all the rows at the root level
 * runs as follows:
 * 
 * ```c
 * GtkAllocation allocation;
 * GdkRectangle cell_area = { 0, };
 * GtkTreeIter iter;
 * int minimum_width;
 * int natural_width;
 * 
 * gtk_widget_get_allocation (widget, &allocation);
 * cell_area.width = allocation.width;
 * 
 * valid = gtk_tree_model_get_iter_first (model, &iter);
 * while (valid)
 * {
 * cell_area.height = get_cached_height_for_row (&iter);
 * 
 * gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
 * gtk_cell_area_render (area, context, widget, cr,
 * &cell_area, &cell_area, state_flags, FALSE);
 * 
 * cell_area.y += cell_area.height;
 * 
 * valid = gtk_tree_model_iter_next (model, &iter);
 * }
 * ```
 * 
 * Note that the cached height in this example really depends on how
 * the layouting widget works. The layouting widget might decide to
 * give every row its minimum or natural height or, if the model content
 * is expected to fit inside the layouting widget without scrolling, it
 * would make sense to calculate the allocation for each row at
 * the time the widget is allocated using [func@Gtk.distribute_natural_allocation].
 * 
 * # Handling Events and Driving Keyboard Focus
 * 
 * Passing events to the area is as simple as handling events on any
 * normal widget and then passing them to the [method@Gtk.CellArea.event]
 * API as they come in. Usually `GtkCellArea` is only interested in
 * button events, however some customized derived areas can be implemented
 * who are interested in handling other events. Handling an event can
 * trigger the [`signal@Gtk.CellArea::focus-changed`] signal to fire; as well
 * as [`signal@GtkCellArea::add-editable`] in the case that an editable cell
 * was clicked and needs to start editing. You can call
 * [method@Gtk.CellArea.stop_editing] at any time to cancel any cell editing
 * that is currently in progress.
 * 
 * The `GtkCellArea` drives keyboard focus from cell to cell in a way
 * similar to `GtkWidget`. For layouting widgets that support giving
 * focus to cells it’s important to remember to pass `GTK_CELL_RENDERER_FOCUSED`
 * to the area functions for the row that has focus and to tell the
 * area to paint the focus at render time.
 * 
 * Layouting widgets that accept focus on cells should implement the
 * [vfunc@Gtk.Widget.focus] virtual method. The layouting widget is always
 * responsible for knowing where `GtkTreeModel` rows are rendered inside
 * the widget, so at [vfunc@Gtk.Widget.focus] time the layouting widget
 * should use the `GtkCellArea` methods to navigate focus inside the area
 * and then observe the [enum@Gtk.DirectionType] to pass the focus to adjacent
 * rows and areas.
 * 
 * A basic example of how the [vfunc@Gtk.Widget.focus] virtual method
 * should be implemented:
 * 
 * ```
 * static gboolean
 * foo_focus (GtkWidget       *widget,
 * GtkDirectionType direction)
 * {
 * Foo *self = FOO (widget);
 * FooPrivate *priv = foo_get_instance_private (self);
 * int focus_row = priv->focus_row;
 * gboolean have_focus = FALSE;
 * 
 * if (!gtk_widget_has_focus (widget))
 * gtk_widget_grab_focus (widget);
 * 
 * valid = gtk_tree_model_iter_nth_child (priv->model, &iter, NULL, priv->focus_row);
 * while (valid)
 * {
 * gtk_cell_area_apply_attributes (priv->area, priv->model, &iter, FALSE, FALSE);
 * 
 * if (gtk_cell_area_focus (priv->area, direction))
 * {
 * priv->focus_row = focus_row;
 * have_focus = TRUE;
 * break;
 * }
 * else
 * {
 * if (direction == GTK_DIR_RIGHT ||
 * direction == GTK_DIR_LEFT)
 * break;
 * else if (direction == GTK_DIR_UP ||
 * direction == GTK_DIR_TAB_BACKWARD)
 * {
 * if (focus_row == 0)
 * break;
 * else
 * {
 * focus_row--;
 * valid = gtk_tree_model_iter_nth_child (priv->model, &iter, NULL, focus_row);
 * }
 * }
 * else
 * {
 * if (focus_row == last_row)
 * break;
 * else
 * {
 * focus_row++;
 * valid = gtk_tree_model_iter_next (priv->model, &iter);
 * }
 * }
 * }
 * }
 * return have_focus;
 * }
 * ```
 * 
 * Note that the layouting widget is responsible for matching the
 * `GtkDirectionType` values to the way it lays out its cells.
 * 
 * # Cell Properties
 * 
 * The `GtkCellArea` introduces cell properties for `GtkCellRenderer`s.
 * This provides some general interfaces for defining the relationship
 * cell areas have with their cells. For instance in a [class@Gtk.CellAreaBox]
 * a cell might “expand” and receive extra space when the area is allocated
 * more than its full natural request, or a cell might be configured to “align”
 * with adjacent rows which were requested and rendered with the same
 * `GtkCellAreaContext`.
 * 
 * Use [method@Gtk.CellAreaClass.install_cell_property] to install cell
 * properties for a cell area class and [method@Gtk.CellAreaClass.find_cell_property]
 * or [method@Gtk.CellAreaClass.list_cell_properties] to get information about
 * existing cell properties.
 * 
 * To set the value of a cell property, use [method@Gtk.CellArea.cell_set_property],
 * [method@Gtk.CellArea.cell_set] or [method@Gtk.CellArea.cell_set_valist]. To obtain
 * the value of a cell property, use [method@Gtk.CellArea.cell_get_property]
 * [method@Gtk.CellArea.cell_get] or [method@Gtk.CellArea.cell_get_valist].
 */
public class CellArea : ObjectG, BuildableIF, CellLayoutIF
{
	/** the main Gtk struct */
	protected GtkCellArea* gtkCellArea;

	/** Get the main Gtk struct */
	public GtkCellArea* getCellAreaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCellArea;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellArea;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellArea* gtkCellArea, bool ownedRef = false)
	{
		this.gtkCellArea = gtkCellArea;
		super(cast(GObject*)gtkCellArea, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkCellArea);

	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkCellArea);


	/** */
	public static GType getType()
	{
		return gtk_cell_area_get_type();
	}

	/**
	 * Activates @area, usually by activating the currently focused
	 * cell, however some subclasses which embed widgets in the area
	 * can also activate a widget if it currently has the focus.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context in context with the current row data
	 *     widget = the `GtkWidget` that @area is rendering on
	 *     cellArea = the size and location of @area relative to @widget’s allocation
	 *     flags = the `GtkCellRenderer`State flags for @area for this row of data.
	 *     editOnly = if %TRUE then only cell renderers that are %GTK_CELL_RENDERER_MODE_EDITABLE
	 *         will be activated.
	 *
	 * Returns: Whether @area was successfully activated.
	 */
	public bool activate(CellAreaContext context, Widget widget, GdkRectangle* cellArea, GtkCellRendererState flags, bool editOnly)
	{
		return gtk_cell_area_activate(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), cellArea, flags, editOnly) != 0;
	}

	/**
	 * This is used by `GtkCellArea` subclasses when handling events
	 * to activate cells, the base `GtkCellArea` class activates cells
	 * for keyboard events for free in its own GtkCellArea->activate()
	 * implementation.
	 *
	 * Params:
	 *     widget = the `GtkWidget` that @area is rendering onto
	 *     renderer = the `GtkCellRenderer` in @area to activate
	 *     event = the `GdkEvent` for which cell activation should occur
	 *     cellArea = the `GdkRectangle` in @widget relative coordinates
	 *         of @renderer for the current row.
	 *     flags = the `GtkCellRenderer`State for @renderer
	 *
	 * Returns: whether cell activation was successful
	 */
	public bool activateCell(Widget widget, CellRenderer renderer, Event event, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		return gtk_cell_area_activate_cell(gtkCellArea, (widget is null) ? null : widget.getWidgetStruct(), (renderer is null) ? null : renderer.getCellRendererStruct(), (event is null) ? null : event.getEventStruct(), cellArea, flags) != 0;
	}

	/**
	 * Adds @renderer to @area with the default child cell properties.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to add to @area
	 */
	public void add(CellRenderer renderer)
	{
		gtk_cell_area_add(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}

	/**
	 * Adds @sibling to @renderer’s focusable area, focus will be drawn
	 * around @renderer and all of its siblings if @renderer can
	 * focus for a given row.
	 *
	 * Events handled by focus siblings can also activate the given
	 * focusable @renderer.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` expected to have focus
	 *     sibling = the `GtkCellRenderer` to add to @renderer’s focus area
	 */
	public void addFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		gtk_cell_area_add_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct());
	}

	/**
	 * Applies any connected attributes to the renderers in
	 * @area by pulling the values from @tree_model.
	 *
	 * Params:
	 *     treeModel = the `GtkTreeModel` to pull values from
	 *     iter = the `GtkTreeIter` in @tree_model to apply values for
	 *     isExpander = whether @iter has children
	 *     isExpanded = whether @iter is expanded in the view and
	 *         children are visible
	 */
	public void applyAttributes(TreeModelIF treeModel, TreeIter iter, bool isExpander, bool isExpanded)
	{
		gtk_cell_area_apply_attributes(gtkCellArea, (treeModel is null) ? null : treeModel.getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct(), isExpander, isExpanded);
	}

	/**
	 * Connects an @attribute to apply values from @column for the
	 * `GtkTreeModel` in use.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to connect an attribute for
	 *     attribute = the attribute name
	 *     column = the `GtkTreeModel` column to fetch attribute values from
	 */
	public void attributeConnect(CellRenderer renderer, string attribute, int column)
	{
		gtk_cell_area_attribute_connect(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(attribute), column);
	}

	/**
	 * Disconnects @attribute for the @renderer in @area so that
	 * attribute will no longer be updated with values from the
	 * model.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to disconnect an attribute for
	 *     attribute = the attribute name
	 */
	public void attributeDisconnect(CellRenderer renderer, string attribute)
	{
		gtk_cell_area_attribute_disconnect(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(attribute));
	}

	/**
	 * Returns the model column that an attribute has been mapped to,
	 * or -1 if the attribute is not mapped.
	 *
	 * Params:
	 *     renderer = a `GtkCellRenderer`
	 *     attribute = an attribute on the renderer
	 *
	 * Returns: the model column, or -1
	 */
	public int attributeGetColumn(CellRenderer renderer, string attribute)
	{
		return gtk_cell_area_attribute_get_column(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(attribute));
	}

	/**
	 * Gets the value of a cell property for @renderer in @area.
	 *
	 * Params:
	 *     renderer = a `GtkCellRenderer` inside @area
	 *     propertyName = the name of the property to get
	 *     value = a location to return the value
	 */
	public void cellGetProperty(CellRenderer renderer, string propertyName, Value value)
	{
		gtk_cell_area_cell_get_property(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the values of one or more cell properties for @renderer in @area.
	 *
	 * Params:
	 *     renderer = a `GtkCellRenderer` inside @area
	 *     firstPropertyName = the name of the first property to get
	 *     varArgs = return location for the first property, followed
	 *         optionally by more name/return location pairs, followed by %NULL
	 */
	public void cellGetValist(CellRenderer renderer, string firstPropertyName, void* varArgs)
	{
		gtk_cell_area_cell_get_valist(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Sets a cell property for @renderer in @area.
	 *
	 * Params:
	 *     renderer = a `GtkCellRenderer` inside @area
	 *     propertyName = the name of the cell property to set
	 *     value = the value to set the cell property to
	 */
	public void cellSetProperty(CellRenderer renderer, string propertyName, Value value)
	{
		gtk_cell_area_cell_set_property(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets one or more cell properties for @renderer in @area.
	 *
	 * Params:
	 *     renderer = a `GtkCellRenderer` which inside @area
	 *     firstPropertyName = the name of the first cell property to set
	 *     varArgs = a %NULL-terminated list of property names and values, starting
	 *         with @first_prop_name
	 */
	public void cellSetValist(CellRenderer renderer, string firstPropertyName, void* varArgs)
	{
		gtk_cell_area_cell_set_valist(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * This is sometimes needed for cases where rows need to share
	 * alignments in one orientation but may be separately grouped
	 * in the opposing orientation.
	 *
	 * For instance, `GtkIconView` creates all icons (rows) to have
	 * the same width and the cells theirin to have the same
	 * horizontal alignments. However each row of icons may have
	 * a separate collective height. `GtkIconView` uses this to
	 * request the heights of each row based on a context which
	 * was already used to request all the row widths that are
	 * to be displayed.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context to copy
	 *
	 * Returns: a newly created `GtkCellArea`Context copy of @context.
	 */
	public CellAreaContext copyContext(CellAreaContext context)
	{
		auto __p = gtk_cell_area_copy_context(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellAreaContext)(cast(GtkCellAreaContext*) __p, true);
	}

	/**
	 * Creates a `GtkCellArea`Context to be used with @area for
	 * all purposes. `GtkCellArea`Context stores geometry information
	 * for rows for which it was operated on, it is important to use
	 * the same context for the same row of data at all times (i.e.
	 * one should render and handle events with the same `GtkCellArea`Context
	 * which was used to request the size of those rows of data).
	 *
	 * Returns: a newly created `GtkCellArea`Context which can be used with @area.
	 */
	public CellAreaContext createContext()
	{
		auto __p = gtk_cell_area_create_context(gtkCellArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellAreaContext)(cast(GtkCellAreaContext*) __p, true);
	}

	/**
	 * Delegates event handling to a `GtkCellArea`.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context for this row of data.
	 *     widget = the `GtkWidget` that @area is rendering to
	 *     event = the `GdkEvent` to handle
	 *     cellArea = the @widget relative coordinates for @area
	 *     flags = the `GtkCellRenderer`State for @area in this row.
	 *
	 * Returns: %TRUE if the event was handled by @area.
	 */
	public int event(CellAreaContext context, Widget widget, Event event, GdkRectangle* cellArea, GtkCellRendererState flags)
	{
		return gtk_cell_area_event(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (event is null) ? null : event.getEventStruct(), cellArea, flags);
	}

	/**
	 * This should be called by the @area’s owning layout widget
	 * when focus is to be passed to @area, or moved within @area
	 * for a given @direction and row data.
	 *
	 * Implementing `GtkCellArea` classes should implement this
	 * method to receive and navigate focus in its own way particular
	 * to how it lays out cells.
	 *
	 * Params:
	 *     direction = the `GtkDirectionType`
	 *
	 * Returns: %TRUE if focus remains inside @area as a result of this call.
	 */
	public bool focus(GtkDirectionType direction)
	{
		return gtk_cell_area_focus(gtkCellArea, direction) != 0;
	}

	alias foreac = foreach_;
	/**
	 * Calls @callback for every `GtkCellRenderer` in @area.
	 *
	 * Params:
	 *     callback = the `GtkCellCallback` to call
	 *     callbackData = user provided data pointer
	 */
	public void foreach_(GtkCellCallback callback, void* callbackData)
	{
		gtk_cell_area_foreach(gtkCellArea, callback, callbackData);
	}

	/**
	 * Calls @callback for every `GtkCellRenderer` in @area with the
	 * allocated rectangle inside @cell_area.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context for this row of data.
	 *     widget = the `GtkWidget` that @area is rendering to
	 *     cellArea = the @widget relative coordinates and size for @area
	 *     backgroundArea = the @widget relative coordinates of the background area
	 *     callback = the `GtkCellAllocCallback` to call
	 *     callbackData = user provided data pointer
	 */
	public void foreachAlloc(CellAreaContext context, Widget widget, GdkRectangle* cellArea, GdkRectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData)
	{
		gtk_cell_area_foreach_alloc(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), cellArea, backgroundArea, callback, callbackData);
	}

	/**
	 * Derives the allocation of @renderer inside @area if @area
	 * were to be renderered in @cell_area.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context used to hold sizes for @area.
	 *     widget = the `GtkWidget` that @area is rendering on
	 *     renderer = the `GtkCellRenderer` to get the allocation for
	 *     cellArea = the whole allocated area for @area in @widget
	 *         for this row
	 *     allocation = where to store the allocation for @renderer
	 */
	public void getCellAllocation(CellAreaContext context, Widget widget, CellRenderer renderer, GdkRectangle* cellArea, out GdkRectangle allocation)
	{
		gtk_cell_area_get_cell_allocation(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (renderer is null) ? null : renderer.getCellRendererStruct(), cellArea, &allocation);
	}

	/**
	 * Gets the `GtkCellRenderer` at @x and @y coordinates inside @area and optionally
	 * returns the full cell allocation for it inside @cell_area.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context used to hold sizes for @area.
	 *     widget = the `GtkWidget` that @area is rendering on
	 *     cellArea = the whole allocated area for @area in @widget
	 *         for this row
	 *     x = the x position
	 *     y = the y position
	 *     allocArea = where to store the inner allocated area of the
	 *         returned cell renderer
	 *
	 * Returns: the `GtkCellRenderer` at @x and @y.
	 */
	public CellRenderer getCellAtPosition(CellAreaContext context, Widget widget, GdkRectangle* cellArea, int x, int y, out GdkRectangle allocArea)
	{
		auto __p = gtk_cell_area_get_cell_at_position(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), cellArea, x, y, &allocArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) __p);
	}

	/**
	 * Gets the current `GtkTreePath` string for the currently
	 * applied `GtkTreeIter`, this is implicitly updated when
	 * gtk_cell_area_apply_attributes() is called and can be
	 * used to interact with renderers from `GtkCellArea`
	 * subclasses.
	 *
	 * Returns: The current `GtkTreePath` string for the current
	 *     attributes applied to @area. This string belongs to the area and
	 *     should not be freed.
	 */
	public string getCurrentPathString()
	{
		return Str.toString(gtk_cell_area_get_current_path_string(gtkCellArea));
	}

	/**
	 * Gets the `GtkCellEditable` widget currently used
	 * to edit the currently edited cell.
	 *
	 * Returns: The currently active `GtkCellEditable` widget
	 */
	public CellEditableIF getEditWidget()
	{
		auto __p = gtk_cell_area_get_edit_widget(gtkCellArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellEditableIF)(cast(GtkCellEditable*) __p);
	}

	/**
	 * Gets the `GtkCellRenderer` in @area that is currently
	 * being edited.
	 *
	 * Returns: The currently edited `GtkCellRenderer`
	 */
	public CellRenderer getEditedCell()
	{
		auto __p = gtk_cell_area_get_edited_cell(gtkCellArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) __p);
	}

	/**
	 * Retrieves the currently focused cell for @area
	 *
	 * Returns: the currently focused cell in @area.
	 */
	public CellRenderer getFocusCell()
	{
		auto __p = gtk_cell_area_get_focus_cell(gtkCellArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) __p);
	}

	/**
	 * Gets the `GtkCellRenderer` which is expected to be focusable
	 * for which @renderer is, or may be a sibling.
	 *
	 * This is handy for `GtkCellArea` subclasses when handling events,
	 * after determining the renderer at the event location it can
	 * then chose to activate the focus cell for which the event
	 * cell may have been a sibling.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer`
	 *
	 * Returns: the `GtkCellRenderer`
	 *     for which @renderer is a sibling
	 */
	public CellRenderer getFocusFromSibling(CellRenderer renderer)
	{
		auto __p = gtk_cell_area_get_focus_from_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) __p);
	}

	/**
	 * Gets the focus sibling cell renderers for @renderer.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` expected to have focus
	 *
	 * Returns: A `GList` of `GtkCellRenderer`s.
	 *     The returned list is internal and should not be freed.
	 */
	public ListG getFocusSiblings(CellRenderer renderer)
	{
		auto __p = gtk_cell_area_get_focus_siblings(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Retrieves a cell area’s initial minimum and natural height.
	 *
	 * @area will store some geometrical information in @context along the way;
	 * when requesting sizes over an arbitrary number of rows, it’s not important
	 * to check the @minimum_height and @natural_height of this call but rather to
	 * consult gtk_cell_area_context_get_preferred_height() after a series of
	 * requests.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context to perform this request with
	 *     widget = the `GtkWidget` where @area will be rendering
	 *     minimumHeight = location to store the minimum height
	 *     naturalHeight = location to store the natural height
	 */
	public void getPreferredHeight(CellAreaContext context, Widget widget, out int minimumHeight, out int naturalHeight)
	{
		gtk_cell_area_get_preferred_height(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &minimumHeight, &naturalHeight);
	}

	/**
	 * Retrieves a cell area’s minimum and natural height if it would be given
	 * the specified @width.
	 *
	 * @area stores some geometrical information in @context along the way
	 * while calling gtk_cell_area_get_preferred_width(). It’s important to
	 * perform a series of gtk_cell_area_get_preferred_width() requests with
	 * @context first and then call gtk_cell_area_get_preferred_height_for_width()
	 * on each cell area individually to get the height for width of each
	 * fully requested row.
	 *
	 * If at some point, the width of a single row changes, it should be
	 * requested with gtk_cell_area_get_preferred_width() again and then
	 * the full width of the requested rows checked again with
	 * gtk_cell_area_context_get_preferred_width().
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context which has already been requested for widths.
	 *     widget = the `GtkWidget` where @area will be rendering
	 *     width = the width for which to check the height of this area
	 *     minimumHeight = location to store the minimum height
	 *     naturalHeight = location to store the natural height
	 */
	public void getPreferredHeightForWidth(CellAreaContext context, Widget widget, int width, out int minimumHeight, out int naturalHeight)
	{
		gtk_cell_area_get_preferred_height_for_width(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), width, &minimumHeight, &naturalHeight);
	}

	/**
	 * Retrieves a cell area’s initial minimum and natural width.
	 *
	 * @area will store some geometrical information in @context along the way;
	 * when requesting sizes over an arbitrary number of rows, it’s not important
	 * to check the @minimum_width and @natural_width of this call but rather to
	 * consult gtk_cell_area_context_get_preferred_width() after a series of
	 * requests.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context to perform this request with
	 *     widget = the `GtkWidget` where @area will be rendering
	 *     minimumWidth = location to store the minimum width
	 *     naturalWidth = location to store the natural width
	 */
	public void getPreferredWidth(CellAreaContext context, Widget widget, out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_area_get_preferred_width(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &minimumWidth, &naturalWidth);
	}

	/**
	 * Retrieves a cell area’s minimum and natural width if it would be given
	 * the specified @height.
	 *
	 * @area stores some geometrical information in @context along the way
	 * while calling gtk_cell_area_get_preferred_height(). It’s important to
	 * perform a series of gtk_cell_area_get_preferred_height() requests with
	 * @context first and then call gtk_cell_area_get_preferred_width_for_height()
	 * on each cell area individually to get the height for width of each
	 * fully requested row.
	 *
	 * If at some point, the height of a single row changes, it should be
	 * requested with gtk_cell_area_get_preferred_height() again and then
	 * the full height of the requested rows checked again with
	 * gtk_cell_area_context_get_preferred_height().
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context which has already been requested for widths.
	 *     widget = the `GtkWidget` where @area will be rendering
	 *     height = the height for which to check the width of this area
	 *     minimumWidth = location to store the minimum width
	 *     naturalWidth = location to store the natural width
	 */
	public void getPreferredWidthForHeight(CellAreaContext context, Widget widget, int height, out int minimumWidth, out int naturalWidth)
	{
		gtk_cell_area_get_preferred_width_for_height(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), height, &minimumWidth, &naturalWidth);
	}

	/**
	 * Gets whether the area prefers a height-for-width layout
	 * or a width-for-height layout.
	 *
	 * Returns: The `GtkSizeRequestMode` preferred by @area.
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		return gtk_cell_area_get_request_mode(gtkCellArea);
	}

	/**
	 * Checks if @area contains @renderer.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to check
	 *
	 * Returns: %TRUE if @renderer is in the @area.
	 */
	public bool hasRenderer(CellRenderer renderer)
	{
		return gtk_cell_area_has_renderer(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct()) != 0;
	}

	/**
	 * This is a convenience function for `GtkCellArea` implementations
	 * to get the inner area where a given `GtkCellRenderer` will be
	 * rendered. It removes any padding previously added by gtk_cell_area_request_renderer().
	 *
	 * Params:
	 *     widget = the `GtkWidget` that @area is rendering onto
	 *     cellArea = the @widget relative coordinates where one of @area’s cells
	 *         is to be placed
	 *     innerArea = the return location for the inner cell area
	 */
	public void innerCellArea(Widget widget, GdkRectangle* cellArea, out GdkRectangle innerArea)
	{
		gtk_cell_area_inner_cell_area(gtkCellArea, (widget is null) ? null : widget.getWidgetStruct(), cellArea, &innerArea);
	}

	/**
	 * Returns whether the area can do anything when activated,
	 * after applying new attributes to @area.
	 *
	 * Returns: whether @area can do anything when activated.
	 */
	public bool isActivatable()
	{
		return gtk_cell_area_is_activatable(gtkCellArea) != 0;
	}

	/**
	 * Returns whether @sibling is one of @renderer’s focus siblings
	 * (see gtk_cell_area_add_focus_sibling()).
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` expected to have focus
	 *     sibling = the `GtkCellRenderer` to check against @renderer’s sibling list
	 *
	 * Returns: %TRUE if @sibling is a focus sibling of @renderer
	 */
	public bool isFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		return gtk_cell_area_is_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct()) != 0;
	}

	/**
	 * Removes @renderer from @area.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to remove from @area
	 */
	public void remove(CellRenderer renderer)
	{
		gtk_cell_area_remove(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}

	/**
	 * Removes @sibling from @renderer’s focus sibling list
	 * (see gtk_cell_area_add_focus_sibling()).
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` expected to have focus
	 *     sibling = the `GtkCellRenderer` to remove from @renderer’s focus area
	 */
	public void removeFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		gtk_cell_area_remove_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct());
	}

	/**
	 * This is a convenience function for `GtkCellArea` implementations
	 * to request size for cell renderers. It’s important to use this
	 * function to request size and then use gtk_cell_area_inner_cell_area()
	 * at render and event time since this function will add padding
	 * around the cell for focus painting.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to request size for
	 *     orientation = the `GtkOrientation` in which to request size
	 *     widget = the `GtkWidget` that @area is rendering onto
	 *     forSize = the allocation contextual size to request for, or -1 if
	 *         the base request for the orientation is to be returned.
	 *     minimumSize = location to store the minimum size
	 *     naturalSize = location to store the natural size
	 */
	public void requestRenderer(CellRenderer renderer, GtkOrientation orientation, Widget widget, int forSize, out int minimumSize, out int naturalSize)
	{
		gtk_cell_area_request_renderer(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), orientation, (widget is null) ? null : widget.getWidgetStruct(), forSize, &minimumSize, &naturalSize);
	}

	/**
	 * Explicitly sets the currently focused cell to @renderer.
	 *
	 * This is generally called by implementations of
	 * `GtkCellAreaClass.focus()` or `GtkCellAreaClass.event()`,
	 * however it can also be used to implement functions such
	 * as gtk_tree_view_set_cursor_on_cell().
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` to give focus to
	 */
	public void setFocusCell(CellRenderer renderer)
	{
		gtk_cell_area_set_focus_cell(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}

	/**
	 * Snapshots @area’s cells according to @area’s layout onto at
	 * the given coordinates.
	 *
	 * Params:
	 *     context = the `GtkCellArea`Context for this row of data.
	 *     widget = the `GtkWidget` that @area is rendering to
	 *     snapshot = the `GtkSnapshot` to draw to
	 *     backgroundArea = the @widget relative coordinates for @area’s background
	 *     cellArea = the @widget relative coordinates for @area
	 *     flags = the `GtkCellRenderer`State for @area in this row.
	 *     paintFocus = whether @area should paint focus on focused cells for focused rows or not.
	 */
	public void snapshot(CellAreaContext context, Widget widget, Snapshot snapshot, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, bool paintFocus)
	{
		gtk_cell_area_snapshot(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (snapshot is null) ? null : snapshot.getGtkSnapshotStruct(), backgroundArea, cellArea, flags, paintFocus);
	}

	/**
	 * Explicitly stops the editing of the currently edited cell.
	 *
	 * If @canceled is %TRUE, the currently edited cell renderer
	 * will emit the ::editing-canceled signal, otherwise the
	 * the ::editing-done signal will be emitted on the current
	 * edit widget.
	 *
	 * See gtk_cell_area_get_edited_cell() and gtk_cell_area_get_edit_widget().
	 *
	 * Params:
	 *     canceled = whether editing was canceled.
	 */
	public void stopEditing(bool canceled)
	{
		gtk_cell_area_stop_editing(gtkCellArea, canceled);
	}

	/**
	 * Indicates that editing has started on @renderer and that @editable
	 * should be added to the owning cell-layouting widget at @cell_area.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` that started the edited
	 *     editable = the `GtkCellEditable` widget to add
	 *     cellArea = the `GtkWidget` relative `GdkRectangle` coordinates
	 *         where @editable should be added
	 *     path = the `GtkTreePath` string this edit was initiated for
	 */
	gulong addOnAddEditable(void delegate(CellRenderer, CellEditableIF, GdkRectangle*, string, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "add-editable", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever applying attributes to @area from @model
	 *
	 * Params:
	 *     model = the `GtkTreeModel` to apply the attributes from
	 *     iter = the `GtkTreeIter` indicating which row to apply the attributes of
	 *     isExpander = whether the view shows children for this row
	 *     isExpanded = whether the view is currently showing the children of this row
	 */
	gulong addOnApplyAttributes(void delegate(TreeModelIF, TreeIter, bool, bool, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply-attributes", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Indicates that focus changed on this @area. This signal
	 * is emitted either as a result of focus handling or event
	 * handling.
	 *
	 * It's possible that the signal is emitted even if the
	 * currently focused renderer did not change, this is
	 * because focus may change to the same renderer in the
	 * same cell area for a different row of data.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` that has focus
	 *     path = the current `GtkTreePath` string set for @area
	 */
	gulong addOnFocusChanged(void delegate(CellRenderer, string, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Indicates that editing finished on @renderer and that @editable
	 * should be removed from the owning cell-layouting widget.
	 *
	 * Params:
	 *     renderer = the `GtkCellRenderer` that finished editeding
	 *     editable = the `GtkCellEditable` widget to remove
	 */
	gulong addOnRemoveEditable(void delegate(CellRenderer, CellEditableIF, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "remove-editable", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
