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


module gtk.GridView;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ListBase;
private import gtk.ListItemFactory;
private import gtk.SelectionModelIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGridView` presents a large dynamic grid of items.
 * 
 * `GtkGridView` uses its factory to generate one child widget for each
 * visible item and shows them in a grid. The orientation of the grid view
 * determines if the grid reflows vertically or horizontally.
 * 
 * `GtkGridView` allows the user to select items according to the selection
 * characteristics of the model. For models that allow multiple selected items,
 * it is possible to turn on _rubberband selection_, using
 * [property@Gtk.GridView:enable-rubberband].
 * 
 * To learn more about the list widget framework, see the
 * [overview](section-list-widget.html).
 * 
 * # CSS nodes
 * 
 * ```
 * gridview
 * ├── child[.activatable]
 * │
 * ├── child[.activatable]
 * │
 * ┊
 * ╰── [rubberband]
 * ```
 * 
 * `GtkGridView` uses a single CSS node with name `gridview`. Each child uses
 * a single CSS node with name `child`. If the [property@Gtk.ListItem:activatable]
 * property is set, the corresponding row will have the `.activatable` style
 * class. For rubberband selection, a subnode with name `rubberband` is used.
 * 
 * # Accessibility
 * 
 * `GtkGridView` uses the %GTK_ACCESSIBLE_ROLE_GRID role, and the items
 * use the %GTK_ACCESSIBLE_ROLE_GRID_CELL role.
 */
public class GridView : ListBase
{
	/** the main Gtk struct */
	protected GtkGridView* gtkGridView;

	/** Get the main Gtk struct */
	public GtkGridView* getGridViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGridView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGridView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGridView* gtkGridView, bool ownedRef = false)
	{
		this.gtkGridView = gtkGridView;
		super(cast(GtkListBase*)gtkGridView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_grid_view_get_type();
	}

	/**
	 * Creates a new `GtkGridView` that uses the given @factory for
	 * mapping items to widgets.
	 *
	 * The function takes ownership of the
	 * arguments, so you can write code like
	 * ```c
	 * grid_view = gtk_grid_view_new (create_model (),
	 * gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
	 * ```
	 *
	 * Params:
	 *     model = the model to use
	 *     factory = The factory to populate items with
	 *
	 * Returns: a new `GtkGridView` using the given @model and @factory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SelectionModelIF model, ListItemFactory factory)
	{
		auto __p = gtk_grid_view_new((model is null) ? null : model.getSelectionModelStruct(), (factory is null) ? null : factory.getListItemFactoryStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGridView*) __p);
	}

	/**
	 * Returns whether rows can be selected by dragging with the mouse.
	 *
	 * Returns: %TRUE if rubberband selection is enabled
	 */
	public bool getEnableRubberband()
	{
		return gtk_grid_view_get_enable_rubberband(gtkGridView) != 0;
	}

	/**
	 * Gets the factory that's currently used to populate list items.
	 *
	 * Returns: The factory in use
	 */
	public ListItemFactory getFactory()
	{
		auto __p = gtk_grid_view_get_factory(gtkGridView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the maximum number of columns that the grid will use.
	 *
	 * Returns: The maximum number of columns
	 */
	public uint getMaxColumns()
	{
		return gtk_grid_view_get_max_columns(gtkGridView);
	}

	/**
	 * Gets the minimum number of columns that the grid will use.
	 *
	 * Returns: The minimum number of columns
	 */
	public uint getMinColumns()
	{
		return gtk_grid_view_get_min_columns(gtkGridView);
	}

	/**
	 * Gets the model that's currently used to read the items displayed.
	 *
	 * Returns: The model in use
	 */
	public SelectionModelIF getModel()
	{
		auto __p = gtk_grid_view_get_model(gtkGridView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p);
	}

	/**
	 * Returns whether items will be activated on single click and
	 * selected on hover.
	 *
	 * Returns: %TRUE if items are activated on single click
	 */
	public bool getSingleClickActivate()
	{
		return gtk_grid_view_get_single_click_activate(gtkGridView) != 0;
	}

	/**
	 * Sets whether selections can be changed by dragging with the mouse.
	 *
	 * Params:
	 *     enableRubberband = %TRUE to enable rubberband selection
	 */
	public void setEnableRubberband(bool enableRubberband)
	{
		gtk_grid_view_set_enable_rubberband(gtkGridView, enableRubberband);
	}

	/**
	 * Sets the `GtkListItemFactory` to use for populating list items.
	 *
	 * Params:
	 *     factory = the factory to use
	 */
	public void setFactory(ListItemFactory factory)
	{
		gtk_grid_view_set_factory(gtkGridView, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the maximum number of columns to use.
	 *
	 * This number must be at least 1.
	 *
	 * If @max_columns is smaller than the minimum set via
	 * [method@Gtk.GridView.set_min_columns], that value is used instead.
	 *
	 * Params:
	 *     maxColumns = The maximum number of columns
	 */
	public void setMaxColumns(uint maxColumns)
	{
		gtk_grid_view_set_max_columns(gtkGridView, maxColumns);
	}

	/**
	 * Sets the minimum number of columns to use.
	 *
	 * This number must be at least 1.
	 *
	 * If @min_columns is smaller than the minimum set via
	 * [method@Gtk.GridView.set_max_columns], that value is ignored.
	 *
	 * Params:
	 *     minColumns = The minimum number of columns
	 */
	public void setMinColumns(uint minColumns)
	{
		gtk_grid_view_set_min_columns(gtkGridView, minColumns);
	}

	/**
	 * Sets the imodel to use.
	 *
	 * This must be a [iface@Gtk.SelectionModel].
	 *
	 * Params:
	 *     model = the model to use
	 */
	public void setModel(SelectionModelIF model)
	{
		gtk_grid_view_set_model(gtkGridView, (model is null) ? null : model.getSelectionModelStruct());
	}

	/**
	 * Sets whether items should be activated on single click and
	 * selected on hover.
	 *
	 * Params:
	 *     singleClickActivate = %TRUE to activate items on single click
	 */
	public void setSingleClickActivate(bool singleClickActivate)
	{
		gtk_grid_view_set_single_click_activate(gtkGridView, singleClickActivate);
	}

	/**
	 * Emitted when a cell has been activated by the user,
	 * usually via activating the GtkGridView|list.activate-item action.
	 *
	 * This allows for a convenient way to handle activation in a gridview.
	 * See [property@Gtk.ListItem:activatable] for details on how to use
	 * this signal.
	 *
	 * Params:
	 *     position = position of item to activate
	 */
	gulong addOnActivate(void delegate(uint, GridView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
