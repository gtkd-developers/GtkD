/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = PtrArray
 * strct   = GPtrArray
 * realStrct=
 * ctorStrct=
 * clss    = PtrArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_ptr_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GPtrArray* -> PtrArray
 * local aliases:
 */

module glib.PtrArray;

private import glib.typedefs;

private import lib.glib;

private import glib.ListG;

/**
 * Description
 * Pointer Arrays are similar to Arrays but are used only for storing pointers.
 * Note
 * If you remove elements from the array, elements at the end of the array
 * are moved into the space previously occupied by the removed element.
 * This means that you should not rely on the index of particular elements
 * remaining the same. You should also be careful when deleting elements while
 * iterating over the array.
 * To create a pointer array, use g_ptr_array_new().
 * To add elements to a pointer array, use g_ptr_array_add().
 * To remove elements from a pointer array, use g_ptr_array_remove(),
 * g_ptr_array_remove_index() or g_ptr_array_remove_index_fast().
 * To access an element of a pointer array, use g_ptr_array_index().
 * To set the size of a pointer array, use g_ptr_array_set_size().
 * To free a pointer array, use g_ptr_array_free().
 * Example7.Using a GPtrArray
 *  GPtrArray *gparray;
 *  gchar *string1 = "one", *string2 = "two", *string3 = "three";
 *  gparray = g_ptr_array_new ();
 *  g_ptr_array_add (gparray, (gpointer) string1);
 *  g_ptr_array_add (gparray, (gpointer) string2);
 *  g_ptr_array_add (gparray, (gpointer) string3);
 *  if (g_ptr_array_index (gparray, 0) != (gpointer) string1)
 *  g_print ("ERROR: got %p instead of %p\n",
 *  g_ptr_array_index (gparray, 0), string1);
 *  g_ptr_array_free (gparray, TRUE);
 */
public class PtrArray
{
	
	/** the main Gtk struct */
	protected GPtrArray* gPtrArray;
	
	
	public GPtrArray* getPtrArrayStruct()
	{
		return gPtrArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPtrArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GPtrArray* gPtrArray)
	{
		this.gPtrArray = gPtrArray;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GPtrArray.
	 * Returns:
	 * the new GPtrArray.
	 */
	public this ()
	{
		// GPtrArray* g_ptr_array_new (void);
		this(cast(GPtrArray*)g_ptr_array_new() );
	}
	
	/**
	 * Creates a new GPtrArray with reserved_size pointers
	 * preallocated. This avoids frequent reallocation, if you are going to
	 * add many pointers to the array. Note however that the size of the
	 * array is still 0.
	 * reserved_size:
	 * number of pointers preallocated.
	 * Returns:
	 * the new GPtrArray.
	 */
	public static PtrArray sizedNew(uint reservedSize)
	{
		// GPtrArray* g_ptr_array_sized_new (guint reserved_size);
		return new PtrArray( g_ptr_array_sized_new(reservedSize) );
	}
	
	/**
	 * Adds a pointer to the end of the pointer array.
	 * The array will grow in size automatically if necessary.
	 * array:
	 * a GPtrArray.
	 * data:
	 * the pointer to add.
	 */
	public void add(void* data)
	{
		// void g_ptr_array_add (GPtrArray *array,  gpointer data);
		g_ptr_array_add(gPtrArray, data);
	}
	
	/**
	 * Removes the first occurrence of the given pointer from the pointer array.
	 * The following elements are moved down one place.
	 * It returns TRUE if the pointer was removed, or FALSE if the pointer
	 * was not found.
	 * array:
	 * a GPtrArray.
	 * data:
	 * the pointer to remove.
	 * Returns:
	 * TRUE if the pointer is removed. FALSE if the pointer is not found
	 * in the array.
	 */
	public int remove(void* data)
	{
		// gboolean g_ptr_array_remove (GPtrArray *array,  gpointer data);
		return g_ptr_array_remove(gPtrArray, data);
	}
	
	/**
	 * Removes the pointer at the given index from the pointer array.
	 * The following elements are moved down one place.
	 * array:
	 * a GPtrArray.
	 * index_:
	 * the index of the pointer to remove.
	 * Returns:
	 * the pointer which was removed.
	 */
	public void* removeIndex(uint index)
	{
		// gpointer g_ptr_array_remove_index (GPtrArray *array,  guint index_);
		return g_ptr_array_remove_index(gPtrArray, index);
	}
	
	/**
	 * Removes the first occurrence of the given pointer from the pointer array.
	 * The last element in the array is used to fill in the space, so this function
	 * does not preserve the order of the array. But it is faster than
	 * g_ptr_array_remove().
	 * It returns TRUE if the pointer was removed, or FALSE if the pointer
	 * was not found.
	 * array:
	 * a GPtrArray.
	 * data:
	 * the pointer to remove.
	 * Returns:
	 * TRUE if the pointer was found in the array.
	 */
	public int removeFast(void* data)
	{
		// gboolean g_ptr_array_remove_fast (GPtrArray *array,  gpointer data);
		return g_ptr_array_remove_fast(gPtrArray, data);
	}
	
	/**
	 * Removes the pointer at the given index from the pointer array.
	 * The last element in the array is used to fill in the space, so this function
	 * does not preserve the order of the array. But it is faster than
	 * g_ptr_array_remove_index().
	 * array:
	 * a GPtrArray.
	 * index_:
	 * the index of the pointer to remove.
	 * Returns:
	 * the pointer which was removed.
	 */
	public void* removeIndexFast(uint index)
	{
		// gpointer g_ptr_array_remove_index_fast (GPtrArray *array,  guint index_);
		return g_ptr_array_remove_index_fast(gPtrArray, index);
	}
	
	/**
	 * Removes the given number of pointers starting at the given index from a
	 * GPtrArray. The following elements are moved to close the gap.
	 * array:
	 * a GPtrArray.
	 * index_:
	 * the index of the first pointer to remove.
	 * length:
	 * the number of pointers to remove.
	 * Since 2.4
	 */
	public void removeRange(uint index, uint length)
	{
		// void g_ptr_array_remove_range (GPtrArray *array,  guint index_,  guint length);
		g_ptr_array_remove_range(gPtrArray, index, length);
	}
	
	/**
	 * Sorts the array, using compare_func which should be a qsort()-style comparison
	 * function (returns less than zero for first arg is less than second arg,
	 * zero for equal, greater than zero if irst arg is greater than second arg).
	 * If two array elements compare equal, their order in the sorted array is
	 * undefined.
	 * Note
	 * The comparison function for g_ptr_array_sort() doesn't take the pointers
	 * from the array as arguments, it takes pointers to the pointers in the array.
	 * array:
	 * a GPtrArray.
	 * compare_func:
	 * comparison function.
	 */
	public void sort(GCompareFunc compareFunc)
	{
		// void g_ptr_array_sort (GPtrArray *array,  GCompareFunc compare_func);
		g_ptr_array_sort(gPtrArray, compareFunc);
	}
	
	/**
	 * Like g_ptr_array_sort(), but the comparison function has an extra user data
	 * argument.
	 * Note
	 * The comparison function for g_ptr_array_sort_with_data() doesn't take the
	 * pointers from the array as arguments, it takes pointers to the pointers in
	 * the array.
	 * array:
	 * a GPtrArray.
	 * compare_func:
	 * comparison function.
	 * user_data:
	 * data to pass to compare_func.
	 */
	public void sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_ptr_array_sort_with_data (GPtrArray *array,  GCompareDataFunc compare_func,  gpointer user_data);
		g_ptr_array_sort_with_data(gPtrArray, compareFunc, userData);
	}
	
	/**
	 * Sets the size of the array, expanding it if necessary.
	 * New elements are set to NULL.
	 * array:
	 * a GPtrArray.
	 * length:
	 * the new length of the pointer array.
	 */
	public void setSize(int length)
	{
		// void g_ptr_array_set_size (GPtrArray *array,  gint length);
		g_ptr_array_set_size(gPtrArray, length);
	}
	
	
	/**
	 * Frees all of the memory allocated for the pointer array.
	 * array:
	 * a GPtrArray.
	 * free_seg:
	 * if TRUE the array of pointers (pdata) is freed.
	 * Returns:
	 * NULL if free_seg is TRUE, otherwise the array of
	 * pointers (pdata) is returned.
	 */
	public void** free(int freeSeg)
	{
		// gpointer* g_ptr_array_free (GPtrArray *array,  gboolean free_seg);
		return g_ptr_array_free(gPtrArray, freeSeg);
	}
	
	/**
	 * Calls a function for each element of a GPtrArray.
	 * array:
	 *  a GPtrArray
	 * func:
	 *  the function to call for each array element
	 * user_data:
	 *  user data to pass to the function
	 * Since 2.4
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_ptr_array_foreach (GPtrArray *array,  GFunc func,  gpointer user_data);
		g_ptr_array_foreach(gPtrArray, func, userData);
	}
}
