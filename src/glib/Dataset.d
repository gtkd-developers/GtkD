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

/*
 * Conversion parameters:
 * inFile  = glib-Datasets.html
 * outPack = glib
 * outFile = Dataset
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Dataset
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dataset_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Dataset;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * Datasets associate groups of data elements with particular memory
 * locations. These are useful if you need to associate data with a
 * structure returned from an external library. Since you cannot modify
 * the structure, you use its location in memory as the key into a
 * dataset, where you can associate any number of data elements with it.
 *
 * There are two forms of most of the dataset functions. The first form
 * uses strings to identify the data elements associated with a
 * location. The second form uses GQuark identifiers, which are
 * created with a call to g_quark_from_string() or
 * g_quark_from_static_string(). The second form is quicker, since it
 * does not require looking up the string in the hash table of GQuark
 * identifiers.
 *
 * There is no function to create a dataset. It is automatically
 * created as soon as you add elements to it.
 *
 * To add data elements to a dataset use g_dataset_id_set_data(),
 * g_dataset_id_set_data_full(), g_dataset_set_data() and
 * g_dataset_set_data_full().
 *
 * To get data elements from a dataset use g_dataset_id_get_data() and
 * g_dataset_get_data().
 *
 * To iterate over all data elements in a dataset use
 * g_dataset_foreach() (not thread-safe).
 *
 * To remove data elements from a dataset use
 * g_dataset_id_remove_data() and g_dataset_remove_data().
 *
 * To destroy a dataset, use g_dataset_destroy().
 */
public class Dataset
{
	
	/**
	 */
	
	/**
	 * Sets the data element associated with the given GQuark id, and also
	 * the function to call when the data element is destroyed. Any
	 * previous data with the same key is removed, and its destroy function
	 * is called.
	 * Params:
	 * datasetLocation = the location identifying the dataset.
	 * keyId = the GQuark id to identify the data element.
	 * data = the data element.
	 * destroyFunc = the function to call when the data element is
	 * removed. This function will be called with the data
	 * element and can be used to free any memory allocated
	 * for it.
	 */
	public static void idSetDataFull(void* datasetLocation, GQuark keyId, void* data, GDestroyNotify destroyFunc)
	{
		// void g_dataset_id_set_data_full (gconstpointer dataset_location,  GQuark key_id,  gpointer data,  GDestroyNotify destroy_func);
		g_dataset_id_set_data_full(datasetLocation, keyId, data, destroyFunc);
	}
	
	/**
	 * Gets the data element corresponding to a GQuark.
	 * Params:
	 * datasetLocation = the location identifying the dataset.
	 * keyId = the GQuark id to identify the data element.
	 * Returns: the data element corresponding to the GQuark, or NULL if it is not found.
	 */
	public static void* idGetData(void* datasetLocation, GQuark keyId)
	{
		// gpointer g_dataset_id_get_data (gconstpointer dataset_location,  GQuark key_id);
		return g_dataset_id_get_data(datasetLocation, keyId);
	}
	
	/**
	 * Removes an element, without calling its destroy notification
	 * function.
	 * Params:
	 * datasetLocation = the location identifying the dataset.
	 * keyId = the GQuark ID identifying the data element.
	 * Returns: the data previously stored at key_id, or NULL if none.
	 */
	public static void* idRemoveNoNotify(void* datasetLocation, GQuark keyId)
	{
		// gpointer g_dataset_id_remove_no_notify (gconstpointer dataset_location,  GQuark key_id);
		return g_dataset_id_remove_no_notify(datasetLocation, keyId);
	}
	
	/**
	 * Calls the given function for each data element which is associated
	 * with the given location. Note that this function is NOT thread-safe.
	 * So unless datalist can be protected from any modifications during
	 * invocation of this function, it should not be called.
	 * Params:
	 * datasetLocation = the location identifying the dataset.
	 * func = the function to call for each data element.
	 * userData = user data to pass to the function.
	 */
	public static void foreac(void* datasetLocation, GDataForeachFunc func, void* userData)
	{
		// void g_dataset_foreach (gconstpointer dataset_location,  GDataForeachFunc func,  gpointer user_data);
		g_dataset_foreach(datasetLocation, func, userData);
	}
	
	/**
	 * Destroys the dataset, freeing all memory allocated, and calling any
	 * destroy functions set for data elements.
	 * Params:
	 * datasetLocation = the location identifying the dataset.
	 */
	public static void destroy(void* datasetLocation)
	{
		// void g_dataset_destroy (gconstpointer dataset_location);
		g_dataset_destroy(datasetLocation);
	}
}
