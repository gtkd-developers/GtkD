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
 * inFile  = glib-Pointer-Arrays.html
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
 * omit signals:
 * imports:
 * structWrap:
 * 	- GPtrArray* -> PtrArray
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.PtrArray;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * Description
 * Pointer Arrays are similar to Arrays but are used only for storing
 * pointers.
 * Note
 * If you remove elements from the array, elements at the
 * end of the array are moved into the space previously occupied by the
 * removed element. This means that you should not rely on the index of
 * particular elements remaining the same. You should also be careful
 * when deleting elements while iterating over the array.
 * To create a pointer array, use g_ptr_array_new().
 * To add elements to a pointer array, use g_ptr_array_add().
 * To remove elements from a pointer array, use g_ptr_array_remove(),
 * g_ptr_array_remove_index() or g_ptr_array_remove_index_fast().
 * To access an element of a pointer array, use g_ptr_array_index().
 * To set the size of a pointer array, use g_ptr_array_set_size().
 * To free a pointer array, use g_ptr_array_free().
 * $(DDOC_COMMENT example)
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
	 * Creates a new GPtrArray with a reference count of 1.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GPtrArray * g_ptr_array_new (void);
		auto p = g_ptr_array_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_ptr_array_new()");
		}
		this(cast(GPtrArray*) p);
	}
	
	/**
	 * Creates a new GPtrArray with reserved_size pointers preallocated
	 * and a reference count of 1. This avoids frequent reallocation, if
	 * you are going to add many pointers to the array. Note however that
	 * the size of the array is still 0.
	 * Params:
	 * reservedSize = number of pointers preallocated.
	 * Returns: the new GPtrArray.
	 */
	public static PtrArray sizedNew(uint reservedSize)
	{
		// GPtrArray * g_ptr_array_sized_new (guint reserved_size);
		auto p = g_ptr_array_sized_new(reservedSize);
		
		if(p is null)
		{
			return null;
		}
		
		return new PtrArray(cast(GPtrArray*) p);
	}
	
	/**
	 * Creates a new GPtrArray with a reference count of 1 and use element_free_func
	 * for freeing each element when the array is destroyed either via
	 * g_ptr_array_unref(), when g_ptr_array_free() is called with free_segment
	 * set to TRUE or when removing elements.
	 * Since 2.22
	 * Params:
	 * elementFreeFunc = A function to free elements with destroy array or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GDestroyNotify elementFreeFunc)
	{
		// GPtrArray * g_ptr_array_new_with_free_func (GDestroyNotify element_free_func);
		auto p = g_ptr_array_new_with_free_func(elementFreeFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_ptr_array_new_with_free_func(elementFreeFunc)");
		}
		this(cast(GPtrArray*) p);
	}
	
	/**
	 * Creates a new GPtrArray with reserved_size pointers preallocated
	 * and a reference count of 1. This avoids frequent reallocation, if
	 * you are going to add many pointers to the array. Note however that
	 * the size of the array is still 0. It also set element_free_func
	 * for freeing each element when the array is destroyed either via
	 * g_ptr_array_unref(), when g_ptr_array_free() is called with free_segment
	 * set to TRUE or when removing elements.
	 * Since 2.30
	 * Params:
	 * reservedSize = number of pointers preallocated.
	 * elementFreeFunc = A function to free elements with destroy array or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (uint reservedSize, GDestroyNotify elementFreeFunc)
	{
		// GPtrArray * g_ptr_array_new_full (guint reserved_size,  GDestroyNotify element_free_func);
		auto p = g_ptr_array_new_full(reservedSize, elementFreeFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_ptr_array_new_full(reservedSize, elementFreeFunc)");
		}
		this(cast(GPtrArray*) p);
	}
	
	/**
	 * Sets a function for freeing each element when array is destroyed
	 * either via g_ptr_array_unref(), when g_ptr_array_free() is called
	 * with free_segment set to TRUE or when removing elements.
	 * Since 2.22
	 * Params:
	 * elementFreeFunc = A function to free elements with destroy array or NULL. [allow-none]
	 */
	public void setFreeFunc(GDestroyNotify elementFreeFunc)
	{
		// void g_ptr_array_set_free_func (GPtrArray *array,  GDestroyNotify element_free_func);
		g_ptr_array_set_free_func(gPtrArray, elementFreeFunc);
	}
	
	/**
	 * Atomically increments the reference count of array by one.
	 * This function is thread-safe and may be called from any thread.
	 * Since 2.22
	 * Returns: The passed in GPtrArray
	 */
	public PtrArray doref()
	{
		// GPtrArray * g_ptr_array_ref (GPtrArray *array);
		auto p = g_ptr_array_ref(gPtrArray);
		
		if(p is null)
		{
			return null;
		}
		
		return new PtrArray(cast(GPtrArray*) p);
	}
	
	/**
	 * Atomically decrements the reference count of array by one. If the
	 * reference count drops to 0, the effect is the same as calling
	 * g_ptr_array_free() with free_segment set to TRUE. This function
	 * is MT-safe and may be called from any thread.
	 * Since 2.22
	 */
	public void unref()
	{
		// void g_ptr_array_unref (GPtrArray *array);
		g_ptr_array_unref(gPtrArray);
	}
	
	/**
	 * Adds a pointer to the end of the pointer array. The array will grow
	 * in size automatically if necessary.
	 * Params:
	 * data = the pointer to add.
	 */
	public void add(void* data)
	{
		// void g_ptr_array_add (GPtrArray *array,  gpointer data);
		g_ptr_array_add(gPtrArray, data);
	}
	
	/**
	 * Removes the first occurrence of the given pointer from the pointer
	 * array. The following elements are moved down one place. If array
	 * has a non-NULL GDestroyNotify function it is called for the
	 * removed element.
	 * It returns TRUE if the pointer was removed, or FALSE if the
	 * pointer was not found.
	 * Params:
	 * data = the pointer to remove.
	 * Returns: TRUE if the pointer is removed. FALSE if the pointer is not found in the array.
	 */
	public int remove(void* data)
	{
		// gboolean g_ptr_array_remove (GPtrArray *array,  gpointer data);
		return g_ptr_array_remove(gPtrArray, data);
	}
	
	/**
	 * Removes the pointer at the given index from the pointer array. The
	 * following elements are moved down one place. If array has a
	 * non-NULL GDestroyNotify function it is called for the removed
	 * element.
	 * Params:
	 * index = the index of the pointer to remove.
	 * Returns: the pointer which was removed.
	 */
	public void* removeIndex(uint index)
	{
		// gpointer g_ptr_array_remove_index (GPtrArray *array,  guint index_);
		return g_ptr_array_remove_index(gPtrArray, index);
	}
	
	/**
	 * Removes the first occurrence of the given pointer from the pointer
	 * array. The last element in the array is used to fill in the space,
	 * so this function does not preserve the order of the array. But it is
	 * faster than g_ptr_array_remove(). If array has a non-NULL
	 * GDestroyNotify function it is called for the removed element.
	 * It returns TRUE if the pointer was removed, or FALSE if the
	 * pointer was not found.
	 * Params:
	 * data = the pointer to remove.
	 * Returns: TRUE if the pointer was found in the array.
	 */
	public int removeFast(void* data)
	{
		// gboolean g_ptr_array_remove_fast (GPtrArray *array,  gpointer data);
		return g_ptr_array_remove_fast(gPtrArray, data);
	}
	
	/**
	 * Removes the pointer at the given index from the pointer array. The
	 * last element in the array is used to fill in the space, so this
	 * function does not preserve the order of the array. But it is faster
	 * than g_ptr_array_remove_index(). If array has a non-NULL
	 * GDestroyNotify function it is called for the removed element.
	 * Params:
	 * index = the index of the pointer to remove.
	 * Returns: the pointer which was removed.
	 */
	public void* removeIndexFast(uint index)
	{
		// gpointer g_ptr_array_remove_index_fast (GPtrArray *array,  guint index_);
		return g_ptr_array_remove_index_fast(gPtrArray, index);
	}
	
	/**
	 * Removes the given number of pointers starting at the given index
	 * from a GPtrArray. The following elements are moved to close the
	 * gap. If array has a non-NULL GDestroyNotify function it is called
	 * for the removed elements.
	 * Since 2.4
	 * Params:
	 * index = the index of the first pointer to remove.
	 * length = the number of pointers to remove.
	 */
	public void removeRange(uint index, uint length)
	{
		// void g_ptr_array_remove_range (GPtrArray *array,  guint index_,  guint length);
		g_ptr_array_remove_range(gPtrArray, index, length);
	}
	
	/**
	 * Sorts the array, using compare_func which should be a qsort()-style
	 * comparison function (returns less than zero for first arg is less
	 * than second arg, zero for equal, greater than zero if irst arg is
	 * greater than second arg).
	 * Note
	 * The comparison function for g_ptr_array_sort() doesn't
	 * take the pointers from the array as arguments, it takes pointers to
	 * the pointers in the array.
	 * This is guaranteed to be a stable sort since version 2.32.
	 * Params:
	 * compareFunc = comparison function.
	 */
	public void sort(GCompareFunc compareFunc)
	{
		// void g_ptr_array_sort (GPtrArray *array,  GCompareFunc compare_func);
		g_ptr_array_sort(gPtrArray, compareFunc);
	}
	
	/**
	 * Like g_ptr_array_sort(), but the comparison function has an extra
	 * user data argument.
	 * Note
	 * The comparison function for g_ptr_array_sort_with_data()
	 * doesn't take the pointers from the array as arguments, it takes
	 * pointers to the pointers in the array.
	 * This is guaranteed to be a stable sort since version 2.32.
	 * Params:
	 * compareFunc = comparison function.
	 * userData = data to pass to compare_func.
	 */
	public void sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_ptr_array_sort_with_data (GPtrArray *array,  GCompareDataFunc compare_func,  gpointer user_data);
		g_ptr_array_sort_with_data(gPtrArray, compareFunc, userData);
	}
	
	/**
	 * Sets the size of the array. When making the array larger,
	 * newly-added elements will be set to NULL. When making it smaller,
	 * if array has a non-NULL GDestroyNotify function then it will be
	 * called for the removed elements.
	 * Params:
	 * length = the new length of the pointer array.
	 */
	public void setSize(int length)
	{
		// void g_ptr_array_set_size (GPtrArray *array,  gint length);
		g_ptr_array_set_size(gPtrArray, length);
	}
	
	/**
	 * Frees the memory allocated for the GPtrArray. If free_seg is TRUE
	 * it frees the memory block holding the elements as well. Pass FALSE
	 * if you want to free the GPtrArray wrapper but preserve the
	 * underlying array for use elsewhere. If the reference count of array
	 * is greater than one, the GPtrArray wrapper is preserved but the
	 * size of array will be set to zero.
	 * Note
	 * If array contents point to dynamically-allocated
	 * memory, they should be freed separately if free_seg is TRUE and no
	 * GDestroyNotify function has been set for array.
	 * Params:
	 * freeSeg = if TRUE the actual pointer array is freed as well.
	 * Returns: the pointer array if free_seg is FALSE, otherwise NULL. The pointer array should be freed using g_free().
	 */
	public void** free(int freeSeg)
	{
		// gpointer * g_ptr_array_free (GPtrArray *array,  gboolean free_seg);
		return g_ptr_array_free(gPtrArray, freeSeg);
	}
	
	/**
	 * Calls a function for each element of a GPtrArray.
	 * Since 2.4
	 * Params:
	 * func = the function to call for each array element
	 * userData = user data to pass to the function
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_ptr_array_foreach (GPtrArray *array,  GFunc func,  gpointer user_data);
		g_ptr_array_foreach(gPtrArray, func, userData);
	}
}
