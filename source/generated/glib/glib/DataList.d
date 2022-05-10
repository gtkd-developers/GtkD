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


module glib.DataList;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct DataList
{

	/**
	 * Frees all the data elements of the datalist.
	 * The data elements' destroy functions are called
	 * if they have been set.
	 *
	 * Params:
	 *     datalist = a datalist.
	 */
	public static void clear(GData** datalist)
	{
		g_datalist_clear(datalist);
	}

	alias foreac = foreach_;
	/**
	 * Calls the given function for each data element of the datalist. The
	 * function is called with each data element's #GQuark id and data,
	 * together with the given @user_data parameter. Note that this
	 * function is NOT thread-safe. So unless @datalist can be protected
	 * from any modifications during invocation of this function, it should
	 * not be called.
	 *
	 * @func can make changes to @datalist, but the iteration will not
	 * reflect changes made during the g_datalist_foreach() call, other
	 * than skipping over elements that are removed.
	 *
	 * Params:
	 *     datalist = a datalist.
	 *     func = the function to call for each data element.
	 *     userData = user data to pass to the function.
	 */
	public static void foreach_(GData** datalist, GDataForeachFunc func, void* userData)
	{
		g_datalist_foreach(datalist, func, userData);
	}

	/**
	 * Gets a data element, using its string identifier. This is slower than
	 * g_datalist_id_get_data() because it compares strings.
	 *
	 * Params:
	 *     datalist = a datalist.
	 *     key = the string identifying a data element.
	 *
	 * Returns: the data element, or %NULL if it
	 *     is not found.
	 */
	public static void* getData(GData** datalist, string key)
	{
		return g_datalist_get_data(datalist, Str.toStringz(key));
	}

	/**
	 * Gets flags values packed in together with the datalist.
	 * See g_datalist_set_flags().
	 *
	 * Params:
	 *     datalist = pointer to the location that holds a list
	 *
	 * Returns: the flags of the datalist
	 *
	 * Since: 2.8
	 */
	public static uint getFlags(GData** datalist)
	{
		return g_datalist_get_flags(datalist);
	}

	/**
	 * This is a variant of g_datalist_id_get_data() which
	 * returns a 'duplicate' of the value. @dup_func defines the
	 * meaning of 'duplicate' in this context, it could e.g.
	 * take a reference on a ref-counted object.
	 *
	 * If the @key_id is not set in the datalist then @dup_func
	 * will be called with a %NULL argument.
	 *
	 * Note that @dup_func is called while the datalist is locked, so it
	 * is not allowed to read or modify the datalist.
	 *
	 * This function can be useful to avoid races when multiple
	 * threads are using the same datalist and the same key.
	 *
	 * Params:
	 *     datalist = location of a datalist
	 *     keyId = the #GQuark identifying a data element
	 *     dupFunc = function to duplicate the old value
	 *     userData = passed as user_data to @dup_func
	 *
	 * Returns: the result of calling @dup_func on the value
	 *     associated with @key_id in @datalist, or %NULL if not set.
	 *     If @dup_func is %NULL, the value is returned unmodified.
	 *
	 * Since: 2.34
	 */
	public static void* idDupData(GData** datalist, GQuark keyId, GDuplicateFunc dupFunc, void* userData)
	{
		return g_datalist_id_dup_data(datalist, keyId, dupFunc, userData);
	}

	/**
	 * Retrieves the data element corresponding to @key_id.
	 *
	 * Params:
	 *     datalist = a datalist.
	 *     keyId = the #GQuark identifying a data element.
	 *
	 * Returns: the data element, or %NULL if
	 *     it is not found.
	 */
	public static void* idGetData(GData** datalist, GQuark keyId)
	{
		return g_datalist_id_get_data(datalist, keyId);
	}

	/**
	 * Removes an element, without calling its destroy notification
	 * function.
	 *
	 * Params:
	 *     datalist = a datalist.
	 *     keyId = the #GQuark identifying a data element.
	 *
	 * Returns: the data previously stored at @key_id,
	 *     or %NULL if none.
	 */
	public static void* idRemoveNoNotify(GData** datalist, GQuark keyId)
	{
		return g_datalist_id_remove_no_notify(datalist, keyId);
	}

	/**
	 * Compares the member that is associated with @key_id in
	 * @datalist to @oldval, and if they are the same, replace
	 * @oldval with @newval.
	 *
	 * This is like a typical atomic compare-and-exchange
	 * operation, for a member of @datalist.
	 *
	 * If the previous value was replaced then ownership of the
	 * old value (@oldval) is passed to the caller, including
	 * the registered destroy notify for it (passed out in @old_destroy).
	 * Its up to the caller to free this as they wish, which may
	 * or may not include using @old_destroy as sometimes replacement
	 * should not destroy the object in the normal way.
	 *
	 * Params:
	 *     datalist = location of a datalist
	 *     keyId = the #GQuark identifying a data element
	 *     oldval = the old value to compare against
	 *     newval = the new value to replace it with
	 *     destroy = destroy notify for the new value
	 *     oldDestroy = destroy notify for the existing value
	 *
	 * Returns: %TRUE if the existing value for @key_id was replaced
	 *     by @newval, %FALSE otherwise.
	 *
	 * Since: 2.34
	 */
	public static bool idReplaceData(GData** datalist, GQuark keyId, void* oldval, void* newval, GDestroyNotify destroy, out GDestroyNotify oldDestroy)
	{
		return g_datalist_id_replace_data(datalist, keyId, oldval, newval, destroy, &oldDestroy) != 0;
	}

	/**
	 * Sets the data corresponding to the given #GQuark id, and the
	 * function to be called when the element is removed from the datalist.
	 * Any previous data with the same key is removed, and its destroy
	 * function is called.
	 *
	 * Params:
	 *     datalist = a datalist.
	 *     keyId = the #GQuark to identify the data element.
	 *     data = the data element or %NULL to remove any previous element
	 *         corresponding to @key_id.
	 *     destroyFunc = the function to call when the data element is
	 *         removed. This function will be called with the data
	 *         element and can be used to free any memory allocated
	 *         for it. If @data is %NULL, then @destroy_func must
	 *         also be %NULL.
	 */
	public static void idSetDataFull(GData** datalist, GQuark keyId, void* data, GDestroyNotify destroyFunc)
	{
		g_datalist_id_set_data_full(datalist, keyId, data, destroyFunc);
	}

	/**
	 * Resets the datalist to %NULL. It does not free any memory or call
	 * any destroy functions.
	 *
	 * Params:
	 *     datalist = a pointer to a pointer to a datalist.
	 */
	public static void init(GData** datalist)
	{
		g_datalist_init(datalist);
	}

	/**
	 * Turns on flag values for a data list. This function is used
	 * to keep a small number of boolean flags in an object with
	 * a data list without using any additional space. It is
	 * not generally useful except in circumstances where space
	 * is very tight. (It is used in the base #GObject type, for
	 * example.)
	 *
	 * Params:
	 *     datalist = pointer to the location that holds a list
	 *     flags = the flags to turn on. The values of the flags are
	 *         restricted by %G_DATALIST_FLAGS_MASK (currently
	 *         3; giving two possible boolean flags).
	 *         A value for @flags that doesn't fit within the mask is
	 *         an error.
	 *
	 * Since: 2.8
	 */
	public static void setFlags(GData** datalist, uint flags)
	{
		g_datalist_set_flags(datalist, flags);
	}

	/**
	 * Turns off flag values for a data list. See g_datalist_unset_flags()
	 *
	 * Params:
	 *     datalist = pointer to the location that holds a list
	 *     flags = the flags to turn off. The values of the flags are
	 *         restricted by %G_DATALIST_FLAGS_MASK (currently
	 *         3: giving two possible boolean flags).
	 *         A value for @flags that doesn't fit within the mask is
	 *         an error.
	 *
	 * Since: 2.8
	 */
	public static void unsetFlags(GData** datalist, uint flags)
	{
		g_datalist_unset_flags(datalist, flags);
	}
}
