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


module gtk.SelectionFilterModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.SelectionModelIF;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSelectionFilterModel` is a list model that presents the selection from
 * a `GtkSelectionModel`.
 */
public class SelectionFilterModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkSelectionFilterModel* gtkSelectionFilterModel;

	/** Get the main Gtk struct */
	public GtkSelectionFilterModel* getSelectionFilterModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSelectionFilterModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSelectionFilterModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSelectionFilterModel* gtkSelectionFilterModel, bool ownedRef = false)
	{
		this.gtkSelectionFilterModel = gtkSelectionFilterModel;
		super(cast(GObject*)gtkSelectionFilterModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkSelectionFilterModel);


	/** */
	public static GType getType()
	{
		return gtk_selection_filter_model_get_type();
	}

	/**
	 * Creates a new `GtkSelectionFilterModel` that will include the
	 * selected items from the underlying selection model.
	 *
	 * Params:
	 *     model = the selection model to filter
	 *
	 * Returns: a new `GtkSelectionFilterModel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SelectionModelIF model)
	{
		auto __p = gtk_selection_filter_model_new((model is null) ? null : model.getSelectionModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSelectionFilterModel*) __p, true);
	}

	/**
	 * Gets the model currently filtered or %NULL if none.
	 *
	 * Returns: The model that gets filtered
	 */
	public SelectionModelIF getModel()
	{
		auto __p = gtk_selection_filter_model_get_model(gtkSelectionFilterModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p);
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
	public void setModel(SelectionModelIF model)
	{
		gtk_selection_filter_model_set_model(gtkSelectionFilterModel, (model is null) ? null : model.getSelectionModelStruct());
	}
}
