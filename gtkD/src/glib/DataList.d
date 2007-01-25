/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Keyed-Data-Lists.html
 * outPack = glib
 * outFile = DataList
 * strct   = GData
 * realStrct=
 * ctorStrct=
 * clss    = DataList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_datalist_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Quark
 * 	- glib.Dataset
 * structWrap:
 * 	- GDataset* -> Dataset
 * local aliases:
 */

module glib.DataList;

private import gtkc.glibtypes;

private import gtkc.glib;

private import glib.Quark;
private import glib.Dataset;

/**
 * Description
 * Keyed data lists provide lists of arbitrary data elements which can be accessed
 * either with a string or with a GQuark corresponding to the
 * string.
 * The GQuark methods are quicker, since the strings have to be converted to
 * GQuarks anyway.
 * Data lists are used for associating arbitrary data with
 * GObjects, using g_object_set_data() and related functions.
 * To create a datalist, use g_datalist_init().
 * To add data elements to a datalist use g_datalist_id_set_data(),
 * g_datalist_id_set_data_full(), g_datalist_set_data()
 * and g_datalist_set_data_full().
 * To get data elements from a datalist use g_datalist_id_get_data() and
 * g_datalist_get_data().
 * To iterate over all data elements in a datalist use g_datalist_foreach() (not thread-safe).
 * To remove data elements from a datalist use g_datalist_id_remove_data() and
 * g_datalist_remove_data().
 * To remove all data elements from a datalist, use g_datalist_clear().
 */
public class DataList
{
	
	/** the main Gtk struct */
	protected GData* gData;
	
	
	public GData* getDataListStruct()
	{
		return gData;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gData;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GData* gData)
	{
		this.gData = gData;
	}
	
	/**
	 */
	
	
	/**
	 * Resets the datalist to NULL.
	 * It does not free any memory or call any destroy functions.
	 * datalist:
	 * a pointer to a pointer to a datalist.
	 */
	public static void init(GData** datalist)
	{
		// void g_datalist_init (GData **datalist);
		g_datalist_init(datalist);
	}
	
	
	/**
	 * Sets the data corresponding to the given GQuark id, and the function to
	 * be called when the element is removed from the datalist.
	 * Any previous data with the same key is removed, and its
	 * destroy function is called.
	 * datalist:
	 * a datalist.
	 * key_id:
	 * the GQuark to identify the data element.
	 * data:
	 * the data element or NULL to remove any previous element
	 * corresponding to key_id.
	 * destroy_func:
	 * the function to call when the data element is removed. This
	 * function will be called with the data element and can be used to free any
	 * memory allocated for it. If data is NULL, then destroy_func must
	 * also be NULL.
	 */
	public static void idSetDataFull(GData** datalist, GQuark keyId, void* data, GDestroyNotify destroyFunc)
	{
		// void g_datalist_id_set_data_full (GData **datalist,  GQuark key_id,  gpointer data,  GDestroyNotify destroy_func);
		g_datalist_id_set_data_full(datalist, keyId, data, destroyFunc);
	}
	
	/**
	 * Retrieves the data element corresponding to key_id.
	 * datalist:
	 * a datalist.
	 * key_id:
	 * the GQuark identifying a data element.
	 * Returns:
	 * the data element, or NULL if it is not found.
	 */
	public static void* idGetData(GData** datalist, GQuark keyId)
	{
		// gpointer g_datalist_id_get_data (GData **datalist,  GQuark key_id);
		return g_datalist_id_get_data(datalist, keyId);
	}
	
	
	/**
	 * Removes an element, without calling its destroy notification function.
	 * datalist:
	 * a datalist.
	 * key_id:
	 * the GQuark identifying a data element.
	 * Returns:
	 * the data previously stored at key_id, or NULL if none.
	 */
	public static void* idRemoveNoNotify(GData** datalist, GQuark keyId)
	{
		// gpointer g_datalist_id_remove_no_notify (GData **datalist,  GQuark key_id);
		return g_datalist_id_remove_no_notify(datalist, keyId);
	}
	
	
	
	
	
	
	/**
	 * Calls the given function for each data element of the datalist.
	 * The function is called with each data element's GQuark id and data,
	 * together with the given user_data parameter.
	 * Note that this function is NOT thread-safe. So unless datalist
	 * can be protected from any modifications during invocation of this
	 * function, it should not be called.
	 * datalist:
	 * a datalist.
	 * func:
	 * the function to call for each data element.
	 * user_data:
	 * user data to pass to the function.
	 */
	public static void foreac(GData** datalist, GDataForeachFunc func, void* userData)
	{
		// void g_datalist_foreach (GData **datalist,  GDataForeachFunc func,  gpointer user_data);
		g_datalist_foreach(datalist, func, userData);
	}
	
	/**
	 * Frees all the data elements of the datalist.
	 * The data elements' destroy functions are called if they have been set.
	 * datalist:
	 * a datalist.
	 */
	public static void clear(GData** datalist)
	{
		// void g_datalist_clear (GData **datalist);
		g_datalist_clear(datalist);
	}
	
	/**
	 * Turns on flag values for a data list. This function is used
	 * to keep a small number of boolean flags in an object with
	 * a data list without using any additional space. It is
	 * not generally useful except in circumstances where space
	 * is very tight. (It is used in the base GObject type, for
	 * example.)
	 * datalist:
	 *  pointer to the location that holds a list
	 * flags:
	 *  the flags to turn on. The values of the flags are
	 *  restricted by G_DATALIST_FLAGS_MASK (currently
	 *  3; giving two possible boolean flags).
	 *  A value for flags that doesn't fit within the mask is
	 *  an error.
	 * Since 2.8
	 */
	public static void setFlags(GData** datalist, uint flags)
	{
		// void g_datalist_set_flags (GData **datalist,  guint flags);
		g_datalist_set_flags(datalist, flags);
	}
	
	/**
	 * Turns off flag values for a data list. See g_datalist_unset_flags()
	 * datalist:
	 *  pointer to the location that holds a list
	 * flags:
	 *  the flags to turn off. The values of the flags are
	 *  restricted by G_DATALIST_FLAGS_MASK (currently
	 *  3: giving two possible boolean flags).
	 *  A value for flags that doesn't fit within the mask is
	 *  an error.
	 * Since 2.8
	 */
	public static void unsetFlags(GData** datalist, uint flags)
	{
		// void g_datalist_unset_flags (GData **datalist,  guint flags);
		g_datalist_unset_flags(datalist, flags);
	}
	
	/**
	 * Gets flags values packed in together with the datalist.
	 * See g_datalist_set_flags().
	 * datalist:
	 *  pointer to the location that holds a list
	 * Returns:
	 *  the flags of the datalist
	 * Since 2.8
	 */
	public static uint getFlags(GData** datalist)
	{
		// guint g_datalist_get_flags (GData **datalist);
		return g_datalist_get_flags(datalist);
	}
	
}
