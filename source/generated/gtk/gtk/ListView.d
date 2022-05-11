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


module gtk.ListView;

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
 * `GtkListView` presents a large dynamic list of items.
 * 
 * `GtkListView` uses its factory to generate one row widget for each visible
 * item and shows them in a linear display, either vertically or horizontally.
 * 
 * The [property@Gtk.ListView:show-separators] property offers a simple way to
 * display separators between the rows.
 * 
 * `GtkListView` allows the user to select items according to the selection
 * characteristics of the model. For models that allow multiple selected items,
 * it is possible to turn on _rubberband selection_, using
 * [property@Gtk.ListView:enable-rubberband].
 * 
 * If you need multiple columns with headers, see [class@Gtk.ColumnView].
 * 
 * To learn more about the list widget framework, see the
 * [overview](section-list-widget.html).
 * 
 * An example of using `GtkListView`:
 * ```c
 * static void
 * setup_listitem_cb (GtkListItemFactory *factory,
 * GtkListItem        *list_item)
 * {
 * GtkWidget *image;
 * 
 * image = gtk_image_new ();
 * gtk_image_set_icon_size (GTK_IMAGE (image), GTK_ICON_SIZE_LARGE);
 * gtk_list_item_set_child (list_item, image);
 * }
 * 
 * static void
 * bind_listitem_cb (GtkListItemFactory *factory,
 * GtkListItem        *list_item)
 * {
 * GtkWidget *image;
 * GAppInfo *app_info;
 * 
 * image = gtk_list_item_get_child (list_item);
 * app_info = gtk_list_item_get_item (list_item);
 * gtk_image_set_from_gicon (GTK_IMAGE (image), g_app_info_get_icon (app_info));
 * }
 * 
 * static void
 * activate_cb (GtkListView  *list,
 * guint         position,
 * gpointer      unused)
 * {
 * GAppInfo *app_info;
 * 
 * app_info = g_list_model_get_item (G_LIST_MODEL (gtk_list_view_get_model (list)), position);
 * g_app_info_launch (app_info, NULL, NULL, NULL);
 * g_object_unref (app_info);
 * }
 * 
 * ...
 * 
 * model = create_application_list ();
 * 
 * factory = gtk_signal_list_item_factory_new ();
 * g_signal_connect (factory, "setup", G_CALLBACK (setup_listitem_cb), NULL);
 * g_signal_connect (factory, "bind", G_CALLBACK (bind_listitem_cb), NULL);
 * 
 * list = gtk_list_view_new (GTK_SELECTION_MODEL (gtk_single_selection_new (model)), factory);
 * 
 * g_signal_connect (list, "activate", G_CALLBACK (activate_cb), NULL);
 * 
 * gtk_scrolled_window_set_child (GTK_SCROLLED_WINDOW (sw), list);
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * listview[.separators][.rich-list][.navigation-sidebar][.data-table]
 * ├── row[.activatable]
 * │
 * ├── row[.activatable]
 * │
 * ┊
 * ╰── [rubberband]
 * ```
 * 
 * `GtkListView` uses a single CSS node named `listview`. It may carry the
 * `.separators` style class, when [property@Gtk.ListView:show-separators]
 * property is set. Each child widget uses a single CSS node named `row`.
 * If the [property@Gtk.ListItem:activatable] property is set, the
 * corresponding row will have the `.activatable` style class. For
 * rubberband selection, a node with name `rubberband` is used.
 * 
 * The main listview node may also carry style classes to select
 * the style of [list presentation](ListContainers.html#list-styles):
 * .rich-list, .navigation-sidebar or .data-table.
 * 
 * # Accessibility
 * 
 * `GtkListView` uses the %GTK_ACCESSIBLE_ROLE_LIST role, and the list
 * items use the %GTK_ACCESSIBLE_ROLE_LIST_ITEM role.
 */
public class ListView : ListBase
{
	/** the main Gtk struct */
	protected GtkListView* gtkListView;

	/** Get the main Gtk struct */
	public GtkListView* getListViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListView* gtkListView, bool ownedRef = false)
	{
		this.gtkListView = gtkListView;
		super(cast(GtkListBase*)gtkListView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_list_view_get_type();
	}

	/**
	 * Creates a new `GtkListView` that uses the given @factory for
	 * mapping items to widgets.
	 *
	 * The function takes ownership of the
	 * arguments, so you can write code like
	 * ```c
	 * list_view = gtk_list_view_new (create_model (),
	 * gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
	 * ```
	 *
	 * Params:
	 *     model = the model to use
	 *     factory = The factory to populate items with
	 *
	 * Returns: a new `GtkListView` using the given @model and @factory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SelectionModelIF model, ListItemFactory factory)
	{
		auto __p = gtk_list_view_new((model is null) ? null : model.getSelectionModelStruct(), (factory is null) ? null : factory.getListItemFactoryStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkListView*) __p);
	}

	/**
	 * Returns whether rows can be selected by dragging with the mouse.
	 *
	 * Returns: %TRUE if rubberband selection is enabled
	 */
	public bool getEnableRubberband()
	{
		return gtk_list_view_get_enable_rubberband(gtkListView) != 0;
	}

	/**
	 * Gets the factory that's currently used to populate list items.
	 *
	 * Returns: The factory in use
	 */
	public ListItemFactory getFactory()
	{
		auto __p = gtk_list_view_get_factory(gtkListView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the model that's currently used to read the items displayed.
	 *
	 * Returns: The model in use
	 */
	public SelectionModelIF getModel()
	{
		auto __p = gtk_list_view_get_model(gtkListView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p);
	}

	/**
	 * Returns whether the list box should show separators
	 * between rows.
	 *
	 * Returns: %TRUE if the list box shows separators
	 */
	public bool getShowSeparators()
	{
		return gtk_list_view_get_show_separators(gtkListView) != 0;
	}

	/**
	 * Returns whether rows will be activated on single click and
	 * selected on hover.
	 *
	 * Returns: %TRUE if rows are activated on single click
	 */
	public bool getSingleClickActivate()
	{
		return gtk_list_view_get_single_click_activate(gtkListView) != 0;
	}

	/**
	 * Sets whether selections can be changed by dragging with the mouse.
	 *
	 * Params:
	 *     enableRubberband = %TRUE to enable rubberband selection
	 */
	public void setEnableRubberband(bool enableRubberband)
	{
		gtk_list_view_set_enable_rubberband(gtkListView, enableRubberband);
	}

	/**
	 * Sets the `GtkListItemFactory` to use for populating list items.
	 *
	 * Params:
	 *     factory = the factory to use
	 */
	public void setFactory(ListItemFactory factory)
	{
		gtk_list_view_set_factory(gtkListView, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the model to use.
	 *
	 * This must be a [iface@Gtk.SelectionModel] to use.
	 *
	 * Params:
	 *     model = the model to use
	 */
	public void setModel(SelectionModelIF model)
	{
		gtk_list_view_set_model(gtkListView, (model is null) ? null : model.getSelectionModelStruct());
	}

	/**
	 * Sets whether the list box should show separators
	 * between rows.
	 *
	 * Params:
	 *     showSeparators = %TRUE to show separators
	 */
	public void setShowSeparators(bool showSeparators)
	{
		gtk_list_view_set_show_separators(gtkListView, showSeparators);
	}

	/**
	 * Sets whether rows should be activated on single click and
	 * selected on hover.
	 *
	 * Params:
	 *     singleClickActivate = %TRUE to activate items on single click
	 */
	public void setSingleClickActivate(bool singleClickActivate)
	{
		gtk_list_view_set_single_click_activate(gtkListView, singleClickActivate);
	}

	/**
	 * Emitted when a row has been activated by the user,
	 * usually via activating the GtkListView|list.activate-item action.
	 *
	 * This allows for a convenient way to handle activation in a listview.
	 * See [method@Gtk.ListItem.set_activatable] for details on how to use
	 * this signal.
	 *
	 * Params:
	 *     position = position of item to activate
	 */
	gulong addOnActivate(void delegate(uint, ListView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
