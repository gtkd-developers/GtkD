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


module gtk.SliceListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkSliceListModel` is a list model that presents a slice of another model.
 * 
 * This is useful when implementing paging by setting the size to the number
 * of elements per page and updating the offset whenever a different page is
 * opened.
 */
public class SliceListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkSliceListModel* gtkSliceListModel;

	/** Get the main Gtk struct */
	public GtkSliceListModel* getSliceListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSliceListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSliceListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSliceListModel* gtkSliceListModel, bool ownedRef = false)
	{
		this.gtkSliceListModel = gtkSliceListModel;
		super(cast(GObject*)gtkSliceListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkSliceListModel);


	/** */
	public static GType getType()
	{
		return gtk_slice_list_model_get_type();
	}

	/**
	 * Creates a new slice model.
	 *
	 * It presents the slice from @offset to offset + @size
	 * of the given @model.
	 *
	 * Params:
	 *     model = The model to use
	 *     offset = the offset of the slice
	 *     size = maximum size of the slice
	 *
	 * Returns: A new `GtkSliceListModel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, uint offset, uint size)
	{
		auto __p = gtk_slice_list_model_new((model is null) ? null : model.getListModelStruct(), offset, size);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSliceListModel*) __p, true);
	}

	/**
	 * Gets the model that is currently being used or %NULL if none.
	 *
	 * Returns: The model in use
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_slice_list_model_get_model(gtkSliceListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Gets the offset set via gtk_slice_list_model_set_offset().
	 *
	 * Returns: The offset
	 */
	public uint getOffset()
	{
		return gtk_slice_list_model_get_offset(gtkSliceListModel);
	}

	/**
	 * Gets the size set via gtk_slice_list_model_set_size().
	 *
	 * Returns: The size
	 */
	public uint getSize()
	{
		return gtk_slice_list_model_get_size(gtkSliceListModel);
	}

	/**
	 * Sets the model to show a slice of.
	 *
	 * The model's item type must conform to @self's item type.
	 *
	 * Params:
	 *     model = The model to be sliced
	 */
	public void setModel(ListModelIF model)
	{
		gtk_slice_list_model_set_model(gtkSliceListModel, (model is null) ? null : model.getListModelStruct());
	}

	/**
	 * Sets the offset into the original model for this slice.
	 *
	 * If the offset is too large for the sliced model,
	 * @self will end up empty.
	 *
	 * Params:
	 *     offset = the new offset to use
	 */
	public void setOffset(uint offset)
	{
		gtk_slice_list_model_set_offset(gtkSliceListModel, offset);
	}

	/**
	 * Sets the maximum size. @self will never have more items
	 * than @size.
	 *
	 * It can however have fewer items if the offset is too large
	 * or the model sliced from doesn't have enough items.
	 *
	 * Params:
	 *     size = the maximum size
	 */
	public void setSize(uint size)
	{
		gtk_slice_list_model_set_size(gtkSliceListModel, size);
	}
}
