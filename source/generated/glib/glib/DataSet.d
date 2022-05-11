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


module glib.DataSet;

private import glib.c.functions;
public  import glib.c.types;


/** */
public struct DataSet
{

	/**
	 * Destroys the dataset, freeing all memory allocated, and calling any
	 * destroy functions set for data elements.
	 *
	 * Params:
	 *     datasetLocation = the location identifying the dataset.
	 */
	public static void destroy(void* datasetLocation)
	{
		g_dataset_destroy(datasetLocation);
	}

	alias foreac = foreach_;
	/**
	 * Calls the given function for each data element which is associated
	 * with the given location. Note that this function is NOT thread-safe.
	 * So unless @dataset_location can be protected from any modifications
	 * during invocation of this function, it should not be called.
	 *
	 * @func can make changes to the dataset, but the iteration will not
	 * reflect changes made during the g_dataset_foreach() call, other
	 * than skipping over elements that are removed.
	 *
	 * Params:
	 *     datasetLocation = the location identifying the dataset.
	 *     func = the function to call for each data element.
	 *     userData = user data to pass to the function.
	 */
	public static void foreach_(void* datasetLocation, GDataForeachFunc func, void* userData)
	{
		g_dataset_foreach(datasetLocation, func, userData);
	}

	/**
	 * Gets the data element corresponding to a #GQuark.
	 *
	 * Params:
	 *     datasetLocation = the location identifying the dataset.
	 *     keyId = the #GQuark id to identify the data element.
	 *
	 * Returns: the data element corresponding to
	 *     the #GQuark, or %NULL if it is not found.
	 */
	public static void* idGetData(void* datasetLocation, GQuark keyId)
	{
		return g_dataset_id_get_data(datasetLocation, keyId);
	}

	/**
	 * Removes an element, without calling its destroy notification
	 * function.
	 *
	 * Params:
	 *     datasetLocation = the location identifying the dataset.
	 *     keyId = the #GQuark ID identifying the data element.
	 *
	 * Returns: the data previously stored at @key_id,
	 *     or %NULL if none.
	 */
	public static void* idRemoveNoNotify(void* datasetLocation, GQuark keyId)
	{
		return g_dataset_id_remove_no_notify(datasetLocation, keyId);
	}

	/**
	 * Sets the data element associated with the given #GQuark id, and also
	 * the function to call when the data element is destroyed. Any
	 * previous data with the same key is removed, and its destroy function
	 * is called.
	 *
	 * Params:
	 *     datasetLocation = the location identifying the dataset.
	 *     keyId = the #GQuark id to identify the data element.
	 *     data = the data element.
	 *     destroyFunc = the function to call when the data element is
	 *         removed. This function will be called with the data
	 *         element and can be used to free any memory allocated
	 *         for it.
	 */
	public static void idSetDataFull(void* datasetLocation, GQuark keyId, void* data, GDestroyNotify destroyFunc)
	{
		g_dataset_id_set_data_full(datasetLocation, keyId, data, destroyFunc);
	}
}
