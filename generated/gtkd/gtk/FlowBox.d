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


module gtk.FlowBox;

private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Container;
private import gtk.FlowBoxChild;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkFlowBox positions child widgets in sequence according to its
 * orientation.
 * 
 * For instance, with the horizontal orientation, the widgets will be
 * arranged from left to right, starting a new row under the previous
 * row when necessary. Reducing the width in this case will require more
 * rows, so a larger height will be requested.
 * 
 * Likewise, with the vertical orientation, the widgets will be arranged
 * from top to bottom, starting a new column to the right when necessary.
 * Reducing the height will require more columns, so a larger width will
 * be requested.
 * 
 * The size request of a GtkFlowBox alone may not be what you expect; if you
 * need to be able to shrink it along both axes and dynamically reflow its
 * children, you may have to wrap it in a #GtkScrolledWindow to enable that.
 * 
 * The children of a GtkFlowBox can be dynamically sorted and filtered.
 * 
 * Although a GtkFlowBox must have only #GtkFlowBoxChild children,
 * you can add any kind of widget to it via gtk_container_add(), and
 * a GtkFlowBoxChild widget will automatically be inserted between
 * the box and the widget.
 * 
 * Also see #GtkListBox.
 * 
 * GtkFlowBox was added in GTK+ 3.12.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * flowbox
 * ├── flowboxchild
 * │   ╰── <child>
 * ├── flowboxchild
 * │   ╰── <child>
 * ┊
 * ╰── [rubberband]
 * ]|
 * 
 * GtkFlowBox uses a single CSS node with name flowbox. GtkFlowBoxChild
 * uses a single CSS node with name flowboxchild.
 * For rubberband selection, a subnode with name rubberband is used.
 */
public class FlowBox : Container, OrientableIF
{
	/** the main Gtk struct */
	protected GtkFlowBox* gtkFlowBox;

	/** Get the main Gtk struct */
	public GtkFlowBox* getFlowBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFlowBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFlowBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFlowBox* gtkFlowBox, bool ownedRef = false)
	{
		this.gtkFlowBox = gtkFlowBox;
		super(cast(GtkContainer*)gtkFlowBox, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkFlowBox);


	/** */
	public static GType getType()
	{
		return gtk_flow_box_get_type();
	}

	/**
	 * Creates a GtkFlowBox.
	 *
	 * Returns: a new #GtkFlowBox container
	 *
	 * Since: 3.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_flow_box_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFlowBox*) p);
	}

	/**
	 * Binds @model to @box.
	 *
	 * If @box was already bound to a model, that previous binding is
	 * destroyed.
	 *
	 * The contents of @box are cleared and then filled with widgets that
	 * represent items from @model. @box is updated whenever @model changes.
	 * If @model is %NULL, @box is left empty.
	 *
	 * It is undefined to add or remove widgets directly (for example, with
	 * gtk_flow_box_insert() or gtk_container_add()) while @box is bound to a
	 * model.
	 *
	 * Note that using a model is incompatible with the filtering and sorting
	 * functionality in GtkFlowBox. When using a model, filtering and sorting
	 * should be implemented by the model.
	 *
	 * Params:
	 *     model = the #GListModel to be bound to @box
	 *     createWidgetFunc = a function that creates widgets for items
	 *     userData = user data passed to @create_widget_func
	 *     userDataFreeFunc = function for freeing @user_data
	 *
	 * Since: 3.18
	 */
	public void bindModel(ListModelIF model, GtkFlowBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc)
	{
		gtk_flow_box_bind_model(gtkFlowBox, (model is null) ? null : model.getListModelStruct(), createWidgetFunc, userData, userDataFreeFunc);
	}

	/**
	 * Returns whether children activate on single clicks.
	 *
	 * Returns: %TRUE if children are activated on single click,
	 *     %FALSE otherwise
	 *
	 * Since: 3.12
	 */
	public bool getActivateOnSingleClick()
	{
		return gtk_flow_box_get_activate_on_single_click(gtkFlowBox) != 0;
	}

	/**
	 * Gets the nth child in the @box.
	 *
	 * Params:
	 *     idx = the position of the child
	 *
	 * Returns: the child widget, which will
	 *     always be a #GtkFlowBoxChild or %NULL in case no child widget
	 *     with the given index exists.
	 *
	 * Since: 3.12
	 */
	public FlowBoxChild getChildAtIndex(int idx)
	{
		auto p = gtk_flow_box_get_child_at_index(gtkFlowBox, idx);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FlowBoxChild)(cast(GtkFlowBoxChild*) p);
	}

	/**
	 * Gets the child in the (@x, @y) position.
	 *
	 * Params:
	 *     x = the x coordinate of the child
	 *     y = the y coordinate of the child
	 *
	 * Returns: the child widget, which will
	 *     always be a #GtkFlowBoxChild or %NULL in case no child widget
	 *     exists for the given x and y coordinates.
	 *
	 * Since: 3.22.6
	 */
	public FlowBoxChild getChildAtPos(int x, int y)
	{
		auto p = gtk_flow_box_get_child_at_pos(gtkFlowBox, x, y);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FlowBoxChild)(cast(GtkFlowBoxChild*) p);
	}

	/**
	 * Gets the horizontal spacing.
	 *
	 * Returns: the horizontal spacing
	 *
	 * Since: 3.12
	 */
	public uint getColumnSpacing()
	{
		return gtk_flow_box_get_column_spacing(gtkFlowBox);
	}

	/**
	 * Returns whether the box is homogeneous (all children are the
	 * same size). See gtk_box_set_homogeneous().
	 *
	 * Returns: %TRUE if the box is homogeneous.
	 *
	 * Since: 3.12
	 */
	public bool getHomogeneous()
	{
		return gtk_flow_box_get_homogeneous(gtkFlowBox) != 0;
	}

	/**
	 * Gets the maximum number of children per line.
	 *
	 * Returns: the maximum number of children per line
	 *
	 * Since: 3.12
	 */
	public uint getMaxChildrenPerLine()
	{
		return gtk_flow_box_get_max_children_per_line(gtkFlowBox);
	}

	/**
	 * Gets the minimum number of children per line.
	 *
	 * Returns: the minimum number of children per line
	 *
	 * Since: 3.12
	 */
	public uint getMinChildrenPerLine()
	{
		return gtk_flow_box_get_min_children_per_line(gtkFlowBox);
	}

	/**
	 * Gets the vertical spacing.
	 *
	 * Returns: the vertical spacing
	 *
	 * Since: 3.12
	 */
	public uint getRowSpacing()
	{
		return gtk_flow_box_get_row_spacing(gtkFlowBox);
	}

	/**
	 * Creates a list of all selected children.
	 *
	 * Returns: A #GList containing the #GtkWidget for each selected child.
	 *     Free with g_list_free() when done.
	 *
	 * Since: 3.12
	 */
	public ListG getSelectedChildren()
	{
		auto p = gtk_flow_box_get_selected_children(gtkFlowBox);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the selection mode of @box.
	 *
	 * Returns: the #GtkSelectionMode
	 *
	 * Since: 3.12
	 */
	public GtkSelectionMode getSelectionMode()
	{
		return gtk_flow_box_get_selection_mode(gtkFlowBox);
	}

	/**
	 * Inserts the @widget into @box at @position.
	 *
	 * If a sort function is set, the widget will actually be inserted
	 * at the calculated position and this function has the same effect
	 * as gtk_container_add().
	 *
	 * If @position is -1, or larger than the total number of children
	 * in the @box, then the @widget will be appended to the end.
	 *
	 * Params:
	 *     widget = the #GtkWidget to add
	 *     position = the position to insert @child in
	 *
	 * Since: 3.12
	 */
	public void insert(Widget widget, int position)
	{
		gtk_flow_box_insert(gtkFlowBox, (widget is null) ? null : widget.getWidgetStruct(), position);
	}

	/**
	 * Updates the filtering for all children.
	 *
	 * Call this function when the result of the filter
	 * function on the @box is changed due ot an external
	 * factor. For instance, this would be used if the
	 * filter function just looked for a specific search
	 * term, and the entry with the string has changed.
	 *
	 * Since: 3.12
	 */
	public void invalidateFilter()
	{
		gtk_flow_box_invalidate_filter(gtkFlowBox);
	}

	/**
	 * Updates the sorting for all children.
	 *
	 * Call this when the result of the sort function on
	 * @box is changed due to an external factor.
	 *
	 * Since: 3.12
	 */
	public void invalidateSort()
	{
		gtk_flow_box_invalidate_sort(gtkFlowBox);
	}

	/**
	 * Select all children of @box, if the selection
	 * mode allows it.
	 *
	 * Since: 3.12
	 */
	public void selectAll()
	{
		gtk_flow_box_select_all(gtkFlowBox);
	}

	/**
	 * Selects a single child of @box, if the selection
	 * mode allows it.
	 *
	 * Params:
	 *     child = a child of @box
	 *
	 * Since: 3.12
	 */
	public void selectChild(FlowBoxChild child)
	{
		gtk_flow_box_select_child(gtkFlowBox, (child is null) ? null : child.getFlowBoxChildStruct());
	}

	/**
	 * Calls a function for each selected child.
	 *
	 * Note that the selection cannot be modified from within
	 * this function.
	 *
	 * Params:
	 *     func = the function to call for each selected child
	 *     data = user data to pass to the function
	 *
	 * Since: 3.12
	 */
	public void selectedForeach(GtkFlowBoxForeachFunc func, void* data)
	{
		gtk_flow_box_selected_foreach(gtkFlowBox, func, data);
	}

	/**
	 * If @single is %TRUE, children will be activated when you click
	 * on them, otherwise you need to double-click.
	 *
	 * Params:
	 *     single = %TRUE to emit child-activated on a single click
	 *
	 * Since: 3.12
	 */
	public void setActivateOnSingleClick(bool single)
	{
		gtk_flow_box_set_activate_on_single_click(gtkFlowBox, single);
	}

	/**
	 * Sets the horizontal space to add between children.
	 * See the #GtkFlowBox:column-spacing property.
	 *
	 * Params:
	 *     spacing = the spacing to use
	 *
	 * Since: 3.12
	 */
	public void setColumnSpacing(uint spacing)
	{
		gtk_flow_box_set_column_spacing(gtkFlowBox, spacing);
	}

	/**
	 * By setting a filter function on the @box one can decide dynamically
	 * which of the children to show. For instance, to implement a search
	 * function that only shows the children matching the search terms.
	 *
	 * The @filter_func will be called for each child after the call, and
	 * it will continue to be called each time a child changes (via
	 * gtk_flow_box_child_changed()) or when gtk_flow_box_invalidate_filter()
	 * is called.
	 *
	 * Note that using a filter function is incompatible with using a model
	 * (see gtk_flow_box_bind_model()).
	 *
	 * Params:
	 *     filterFunc = callback that
	 *         lets you filter which children to show
	 *     userData = user data passed to @filter_func
	 *     destroy = destroy notifier for @user_data
	 *
	 * Since: 3.12
	 */
	public void setFilterFunc(GtkFlowBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_flow_box_set_filter_func(gtkFlowBox, filterFunc, userData, destroy);
	}

	/**
	 * Hooks up an adjustment to focus handling in @box.
	 * The adjustment is also used for autoscrolling during
	 * rubberband selection. See gtk_scrolled_window_get_hadjustment()
	 * for a typical way of obtaining the adjustment, and
	 * gtk_flow_box_set_vadjustment()for setting the vertical
	 * adjustment.
	 *
	 * The adjustments have to be in pixel units and in the same
	 * coordinate system as the allocation for immediate children
	 * of the box.
	 *
	 * Params:
	 *     adjustment = an adjustment which should be adjusted
	 *         when the focus is moved among the descendents of @container
	 *
	 * Since: 3.12
	 */
	public void setHadjustment(Adjustment adjustment)
	{
		gtk_flow_box_set_hadjustment(gtkFlowBox, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Sets the #GtkFlowBox:homogeneous property of @box, controlling
	 * whether or not all children of @box are given equal space
	 * in the box.
	 *
	 * Params:
	 *     homogeneous = %TRUE to create equal allotments,
	 *         %FALSE for variable allotments
	 *
	 * Since: 3.12
	 */
	public void setHomogeneous(bool homogeneous)
	{
		gtk_flow_box_set_homogeneous(gtkFlowBox, homogeneous);
	}

	/**
	 * Sets the maximum number of children to request and
	 * allocate space for in @box’s orientation.
	 *
	 * Setting the maximum number of children per line
	 * limits the overall natural size request to be no more
	 * than @n_children children long in the given orientation.
	 *
	 * Params:
	 *     nChildren = the maximum number of children per line
	 *
	 * Since: 3.12
	 */
	public void setMaxChildrenPerLine(uint nChildren)
	{
		gtk_flow_box_set_max_children_per_line(gtkFlowBox, nChildren);
	}

	/**
	 * Sets the minimum number of children to line up
	 * in @box’s orientation before flowing.
	 *
	 * Params:
	 *     nChildren = the minimum number of children per line
	 *
	 * Since: 3.12
	 */
	public void setMinChildrenPerLine(uint nChildren)
	{
		gtk_flow_box_set_min_children_per_line(gtkFlowBox, nChildren);
	}

	/**
	 * Sets the vertical space to add between children.
	 * See the #GtkFlowBox:row-spacing property.
	 *
	 * Params:
	 *     spacing = the spacing to use
	 *
	 * Since: 3.12
	 */
	public void setRowSpacing(uint spacing)
	{
		gtk_flow_box_set_row_spacing(gtkFlowBox, spacing);
	}

	/**
	 * Sets how selection works in @box.
	 * See #GtkSelectionMode for details.
	 *
	 * Params:
	 *     mode = the new selection mode
	 *
	 * Since: 3.12
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		gtk_flow_box_set_selection_mode(gtkFlowBox, mode);
	}

	/**
	 * By setting a sort function on the @box, one can dynamically
	 * reorder the children of the box, based on the contents of
	 * the children.
	 *
	 * The @sort_func will be called for each child after the call,
	 * and will continue to be called each time a child changes (via
	 * gtk_flow_box_child_changed()) and when gtk_flow_box_invalidate_sort()
	 * is called.
	 *
	 * Note that using a sort function is incompatible with using a model
	 * (see gtk_flow_box_bind_model()).
	 *
	 * Params:
	 *     sortFunc = the sort function
	 *     userData = user data passed to @sort_func
	 *     destroy = destroy notifier for @user_data
	 *
	 * Since: 3.12
	 */
	public void setSortFunc(GtkFlowBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_flow_box_set_sort_func(gtkFlowBox, sortFunc, userData, destroy);
	}

	/**
	 * Hooks up an adjustment to focus handling in @box.
	 * The adjustment is also used for autoscrolling during
	 * rubberband selection. See gtk_scrolled_window_get_vadjustment()
	 * for a typical way of obtaining the adjustment, and
	 * gtk_flow_box_set_hadjustment()for setting the horizontal
	 * adjustment.
	 *
	 * The adjustments have to be in pixel units and in the same
	 * coordinate system as the allocation for immediate children
	 * of the box.
	 *
	 * Params:
	 *     adjustment = an adjustment which should be adjusted
	 *         when the focus is moved among the descendents of @container
	 *
	 * Since: 3.12
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		gtk_flow_box_set_vadjustment(gtkFlowBox, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Unselect all children of @box, if the selection
	 * mode allows it.
	 *
	 * Since: 3.12
	 */
	public void unselectAll()
	{
		gtk_flow_box_unselect_all(gtkFlowBox);
	}

	/**
	 * Unselects a single child of @box, if the selection
	 * mode allows it.
	 *
	 * Params:
	 *     child = a child of @box
	 *
	 * Since: 3.12
	 */
	public void unselectChild(FlowBoxChild child)
	{
		gtk_flow_box_unselect_child(gtkFlowBox, (child is null) ? null : child.getFlowBoxChildStruct());
	}

	/**
	 * The ::activate-cursor-child signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user activates the @box.
	 */
	gulong addOnActivateCursorChild(void delegate(FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-cursor-child", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::child-activated signal is emitted when a child has been
	 * activated by the user.
	 *
	 * Params:
	 *     child = the child that is activated
	 */
	gulong addOnChildActivated(void delegate(FlowBoxChild, FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "child-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-cursor signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a cursor movement.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal come in two variants,
	 * the variant with the Shift modifier extends the selection,
	 * the variant without the Shift modifer does not.
	 * There are too many key combinations to list them all here.
	 * - Arrow keys move by individual children
	 * - Home/End keys move to the ends of the box
	 * - PageUp/PageDown keys move vertically by pages
	 *
	 * Params:
	 *     step = the granularity fo the move, as a #GtkMovementStep
	 *     count = the number of @step units to move
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnMoveCursor(bool delegate(GtkMovementStep, int, FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::select-all signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to select all children of the box, if
	 * the selection mode permits it.
	 *
	 * The default bindings for this signal is Ctrl-a.
	 */
	gulong addOnSelectAll(void delegate(FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::selected-children-changed signal is emitted when the
	 * set of selected children changes.
	 *
	 * Use gtk_flow_box_selected_foreach() or
	 * gtk_flow_box_get_selected_children() to obtain the
	 * selected children.
	 */
	gulong addOnSelectedChildrenChanged(void delegate(FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selected-children-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::toggle-cursor-child signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which toggles the selection of the child that has the focus.
	 *
	 * The default binding for this signal is Ctrl-Space.
	 */
	gulong addOnToggleCursorChild(void delegate(FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-child", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::unselect-all signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted to unselect all children of the box, if
	 * the selection mode permits it.
	 *
	 * The default bindings for this signal is Ctrl-Shift-a.
	 */
	gulong addOnUnselectAll(void delegate(FlowBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unselect-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
