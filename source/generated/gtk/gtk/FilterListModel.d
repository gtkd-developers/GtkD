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


module gtk.FilterListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Filter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFilterListModel` is a list model that filters the elements of
 * the underlying model according to a `GtkFilter`.
 * 
 * It hides some elements from the other model according to
 * criteria given by a `GtkFilter`.
 * 
 * The model can be set up to do incremental searching, so that
 * filtering long lists doesn't block the UI. See
 * [method@Gtk.FilterListModel.set_incremental] for details.
 */
public class FilterListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkFilterListModel* gtkFilterListModel;

	/** Get the main Gtk struct */
	public GtkFilterListModel* getFilterListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFilterListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFilterListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFilterListModel* gtkFilterListModel, bool ownedRef = false)
	{
		this.gtkFilterListModel = gtkFilterListModel;
		super(cast(GObject*)gtkFilterListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkFilterListModel);


	/** */
	public static GType getType()
	{
		return gtk_filter_list_model_get_type();
	}

	/**
	 * Creates a new `GtkFilterListModel` that will filter @model using the given
	 * @filter.
	 *
	 * Params:
	 *     model = the model to sort
	 *     filter = filter
	 *
	 * Returns: a new `GtkFilterListModel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, Filter filter)
	{
		auto __p = gtk_filter_list_model_new((model is null) ? null : model.getListModelStruct(), (filter is null) ? null : filter.getFilterStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFilterListModel*) __p, true);
	}

	/**
	 * Gets the `GtkFilter` currently set on @self.
	 *
	 * Returns: The filter currently in use
	 */
	public Filter getFilter()
	{
		auto __p = gtk_filter_list_model_get_filter(gtkFilterListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Filter)(cast(GtkFilter*) __p);
	}

	/**
	 * Returns whether incremental filtering is enabled.
	 *
	 * See [method@Gtk.FilterListModel.set_incremental].
	 *
	 * Returns: %TRUE if incremental filtering is enabled
	 */
	public bool getIncremental()
	{
		return gtk_filter_list_model_get_incremental(gtkFilterListModel) != 0;
	}

	/**
	 * Gets the model currently filtered or %NULL if none.
	 *
	 * Returns: The model that gets filtered
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_filter_list_model_get_model(gtkFilterListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Returns the number of items that have not been filtered yet.
	 *
	 * You can use this value to check if @self is busy filtering by
	 * comparing the return value to 0 or you can compute the percentage
	 * of the filter remaining by dividing the return value by the total
	 * number of items in the underlying model:
	 *
	 * ```c
	 * pending = gtk_filter_list_model_get_pending (self);
	 * model = gtk_filter_list_model_get_model (self);
	 * percentage = pending / (double) g_list_model_get_n_items (model);
	 * ```
	 *
	 * If no filter operation is ongoing - in particular when
	 * [property@Gtk.FilterListModel:incremental] is %FALSE - this
	 * function returns 0.
	 *
	 * Returns: The number of items not yet filtered
	 */
	public uint getPending()
	{
		return gtk_filter_list_model_get_pending(gtkFilterListModel);
	}

	/**
	 * Sets the filter used to filter items.
	 *
	 * Params:
	 *     filter = filter to use
	 */
	public void setFilter(Filter filter)
	{
		gtk_filter_list_model_set_filter(gtkFilterListModel, (filter is null) ? null : filter.getFilterStruct());
	}

	/**
	 * Sets the filter model to do an incremental sort.
	 *
	 * When incremental filtering is enabled, the `GtkFilterListModel` will not
	 * run filters immediately, but will instead queue an idle handler that
	 * incrementally filters the items and adds them to the list. This of course
	 * means that items are not instantly added to the list, but only appear
	 * incrementally.
	 *
	 * When your filter blocks the UI while filtering, you might consider
	 * turning this on. Depending on your model and filters, this may become
	 * interesting around 10,000 to 100,000 items.
	 *
	 * By default, incremental filtering is disabled.
	 *
	 * See [method@Gtk.FilterListModel.get_pending] for progress information
	 * about an ongoing incremental filtering operation.
	 *
	 * Params:
	 *     incremental = %TRUE to enable incremental filtering
	 */
	public void setIncremental(bool incremental)
	{
		gtk_filter_list_model_set_incremental(gtkFilterListModel, incremental);
	}

	/**
	 * Sets the model to be filtered.
	 *
	 * Note that GTK makes no effort to ensure that @model conforms to
	 * the item type of @self. It assumes that the caller knows what they
	 * are doing and have set up an appropriate filter to ensure that item
	 * types match.
	 *
	 * Params:
	 *     model = The model to be filtered
	 */
	public void setModel(ListModelIF model)
	{
		gtk_filter_list_model_set_model(gtkFilterListModel, (model is null) ? null : model.getListModelStruct());
	}
}
