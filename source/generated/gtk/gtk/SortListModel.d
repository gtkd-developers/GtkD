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


module gtk.SortListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GListModel` that sorts the elements of an underlying model
 * according to a `GtkSorter`.
 * 
 * The model is a stable sort. If two items compare equal according
 * to the sorter, the one that appears first in the original model will
 * also appear first after sorting.
 * Note that if you change the sorter, the previous order will have no
 * influence on the new order. If you want that, consider using a
 * `GtkMultiSorter` and appending the previous sorter to it.
 * 
 * The model can be set up to do incremental sorting, so that
 * sorting long lists doesn't block the UI. See
 * [method@Gtk.SortListModel.set_incremental] for details.
 * 
 * `GtkSortListModel` is a generic model and because of that it
 * cannot take advantage of any external knowledge when sorting.
 * If you run into performance issues with `GtkSortListModel`,
 * it is strongly recommended that you write your own sorting list
 * model.
 */
public class SortListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkSortListModel* gtkSortListModel;

	/** Get the main Gtk struct */
	public GtkSortListModel* getSortListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSortListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSortListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSortListModel* gtkSortListModel, bool ownedRef = false)
	{
		this.gtkSortListModel = gtkSortListModel;
		super(cast(GObject*)gtkSortListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkSortListModel);


	/** */
	public static GType getType()
	{
		return gtk_sort_list_model_get_type();
	}

	/**
	 * Creates a new sort list model that uses the @sorter to sort @model.
	 *
	 * Params:
	 *     model = the model to sort
	 *     sorter = the `GtkSorter` to sort @model with,
	 *
	 * Returns: a new `GtkSortListModel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, Sorter sorter)
	{
		auto __p = gtk_sort_list_model_new((model is null) ? null : model.getListModelStruct(), (sorter is null) ? null : sorter.getSorterStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSortListModel*) __p, true);
	}

	/**
	 * Returns whether incremental sorting is enabled.
	 *
	 * See [method@Gtk.SortListModel.set_incremental].
	 *
	 * Returns: %TRUE if incremental sorting is enabled
	 */
	public bool getIncremental()
	{
		return gtk_sort_list_model_get_incremental(gtkSortListModel) != 0;
	}

	/**
	 * Gets the model currently sorted or %NULL if none.
	 *
	 * Returns: The model that gets sorted
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_sort_list_model_get_model(gtkSortListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Estimates progress of an ongoing sorting operation.
	 *
	 * The estimate is the number of items that would still need to be
	 * sorted to finish the sorting operation if this was a linear
	 * algorithm. So this number is not related to how many items are
	 * already correctly sorted.
	 *
	 * If you want to estimate the progress, you can use code like this:
	 * ```c
	 * pending = gtk_sort_list_model_get_pending (self);
	 * model = gtk_sort_list_model_get_model (self);
	 * progress = 1.0 - pending / (double) MAX (1, g_list_model_get_n_items (model));
	 * ```
	 *
	 * If no sort operation is ongoing - in particular when
	 * [property@Gtk.SortListModel:incremental] is %FALSE - this
	 * function returns 0.
	 *
	 * Returns: a progress estimate of remaining items to sort
	 */
	public uint getPending()
	{
		return gtk_sort_list_model_get_pending(gtkSortListModel);
	}

	/**
	 * Gets the sorter that is used to sort @self.
	 *
	 * Returns: the sorter of #self
	 */
	public Sorter getSorter()
	{
		auto __p = gtk_sort_list_model_get_sorter(gtkSortListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sorter)(cast(GtkSorter*) __p);
	}

	/**
	 * Sets the sort model to do an incremental sort.
	 *
	 * When incremental sorting is enabled, the `GtkSortListModel` will not do
	 * a complete sort immediately, but will instead queue an idle handler that
	 * incrementally sorts the items towards their correct position. This of
	 * course means that items do not instantly appear in the right place. It
	 * also means that the total sorting time is a lot slower.
	 *
	 * When your filter blocks the UI while sorting, you might consider
	 * turning this on. Depending on your model and sorters, this may become
	 * interesting around 10,000 to 100,000 items.
	 *
	 * By default, incremental sorting is disabled.
	 *
	 * See [method@Gtk.SortListModel.get_pending] for progress information
	 * about an ongoing incremental sorting operation.
	 *
	 * Params:
	 *     incremental = %TRUE to sort incrementally
	 */
	public void setIncremental(bool incremental)
	{
		gtk_sort_list_model_set_incremental(gtkSortListModel, incremental);
	}

	/**
	 * Sets the model to be sorted.
	 *
	 * The @model's item type must conform to the item type of @self.
	 *
	 * Params:
	 *     model = The model to be sorted
	 */
	public void setModel(ListModelIF model)
	{
		gtk_sort_list_model_set_model(gtkSortListModel, (model is null) ? null : model.getListModelStruct());
	}

	/**
	 * Sets a new sorter on @self.
	 *
	 * Params:
	 *     sorter = the `GtkSorter` to sort @model with
	 */
	public void setSorter(Sorter sorter)
	{
		gtk_sort_list_model_set_sorter(gtkSortListModel, (sorter is null) ? null : sorter.getSorterStruct());
	}
}
