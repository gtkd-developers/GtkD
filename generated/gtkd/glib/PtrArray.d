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


module glib.PtrArray;

private import glib.ConstructionException;
private import glib.c.functions;
public  import glib.c.types;
public  import gtkc.glibtypes;


/**
 * Contains the public fields of a pointer array.
 */
public class PtrArray
{
	/** the main Gtk struct */
	protected GPtrArray* gPtrArray;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GPtrArray* getPtrArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gPtrArray;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPtrArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GPtrArray* gPtrArray, bool ownedRef = false)
	{
		this.gPtrArray = gPtrArray;
		this.ownedRef = ownedRef;
	}

	/**
	 * Number of pointers in the array
	 */
	public uint len() pure
	{
		return gPtrArray.len;
	}

	/**
	 * Returns the pointer at the given index of the pointer array.
	 *
	 * This does not perform bounds checking on the given index, so
	 * you are responsible for checking it against the array length.
	 */
	public void* index(uint idx)
	{
		return (gPtrArray.pdata)[idx];
	}

	/**
	 */

	/**
	 * Adds a pointer to the end of the pointer array. The array will grow
	 * in size automatically if necessary.
	 *
	 * Params:
	 *     data = the pointer to add
	 */
	public void add(void* data)
	{
		g_ptr_array_add(gPtrArray, data);
	}

	/**
	 * Checks whether @needle exists in @haystack. If the element is found, %TRUE is
	 * returned and the element’s index is returned in @index_ (if non-%NULL).
	 * Otherwise, %FALSE is returned and @index_ is undefined. If @needle exists
	 * multiple times in @haystack, the index of the first instance is returned.
	 *
	 * This does pointer comparisons only. If you want to use more complex equality
	 * checks, such as string comparisons, use g_ptr_array_find_with_equal_func().
	 *
	 * Params:
	 *     needle = pointer to look for
	 *     index = return location for the index of
	 *         the element, if found
	 *
	 * Returns: %TRUE if @needle is one of the elements of @haystack
	 *
	 * Since: 2.54
	 */
	public bool find(void* needle, out uint index)
	{
		return g_ptr_array_find(gPtrArray, needle, &index) != 0;
	}

	/**
	 * Checks whether @needle exists in @haystack, using the given @equal_func.
	 * If the element is found, %TRUE is returned and the element’s index is
	 * returned in @index_ (if non-%NULL). Otherwise, %FALSE is returned and @index_
	 * is undefined. If @needle exists multiple times in @haystack, the index of
	 * the first instance is returned.
	 *
	 * @equal_func is called with the element from the array as its first parameter,
	 * and @needle as its second parameter. If @equal_func is %NULL, pointer
	 * equality is used.
	 *
	 * Params:
	 *     needle = pointer to look for
	 *     equalFunc = the function to call for each element, which should
	 *         return %TRUE when the desired element is found; or %NULL to use pointer
	 *         equality
	 *     index = return location for the index of
	 *         the element, if found
	 *
	 * Returns: %TRUE if @needle is one of the elements of @haystack
	 *
	 * Since: 2.54
	 */
	public bool findWithEqualFunc(void* needle, GEqualFunc equalFunc, out uint index)
	{
		return g_ptr_array_find_with_equal_func(gPtrArray, needle, equalFunc, &index) != 0;
	}

	alias foreac = foreach_;
	/**
	 * Calls a function for each element of a #GPtrArray. @func must not
	 * add elements to or remove elements from the array.
	 *
	 * Params:
	 *     func = the function to call for each array element
	 *     userData = user data to pass to the function
	 *
	 * Since: 2.4
	 */
	public void foreach_(GFunc func, void* userData)
	{
		g_ptr_array_foreach(gPtrArray, func, userData);
	}

	/**
	 * Frees the memory allocated for the #GPtrArray. If @free_seg is %TRUE
	 * it frees the memory block holding the elements as well. Pass %FALSE
	 * if you want to free the #GPtrArray wrapper but preserve the
	 * underlying array for use elsewhere. If the reference count of @array
	 * is greater than one, the #GPtrArray wrapper is preserved but the
	 * size of @array will be set to zero.
	 *
	 * If array contents point to dynamically-allocated memory, they should
	 * be freed separately if @free_seg is %TRUE and no #GDestroyNotify
	 * function has been set for @array.
	 *
	 * This function is not thread-safe. If using a #GPtrArray from multiple
	 * threads, use only the atomic g_ptr_array_ref() and g_ptr_array_unref()
	 * functions.
	 *
	 * Params:
	 *     freeSeg = if %TRUE the actual pointer array is freed as well
	 *
	 * Returns: the pointer array if @free_seg is %FALSE, otherwise %NULL.
	 *     The pointer array should be freed using g_free().
	 */
	public void** free(bool freeSeg)
	{
		return g_ptr_array_free(gPtrArray, freeSeg);
	}

	/**
	 * Inserts an element into the pointer array at the given index. The
	 * array will grow in size automatically if necessary.
	 *
	 * Params:
	 *     index = the index to place the new element at, or -1 to append
	 *     data = the pointer to add.
	 *
	 * Since: 2.40
	 */
	public void insert(int index, void* data)
	{
		g_ptr_array_insert(gPtrArray, index, data);
	}

	/**
	 * Creates a new #GPtrArray with a reference count of 1.
	 *
	 * Returns: the new #GPtrArray
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_ptr_array_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GPtrArray*) p);
	}

	/**
	 * Creates a new #GPtrArray with @reserved_size pointers preallocated
	 * and a reference count of 1. This avoids frequent reallocation, if
	 * you are going to add many pointers to the array. Note however that
	 * the size of the array is still 0. It also set @element_free_func
	 * for freeing each element when the array is destroyed either via
	 * g_ptr_array_unref(), when g_ptr_array_free() is called with
	 * @free_segment set to %TRUE or when removing elements.
	 *
	 * Params:
	 *     reservedSize = number of pointers preallocated
	 *     elementFreeFunc = A function to free elements with
	 *         destroy @array or %NULL
	 *
	 * Returns: A new #GPtrArray
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint reservedSize, GDestroyNotify elementFreeFunc)
	{
		auto p = g_ptr_array_new_full(reservedSize, elementFreeFunc);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GPtrArray*) p);
	}

	/**
	 * Creates a new #GPtrArray with a reference count of 1 and use
	 * @element_free_func for freeing each element when the array is destroyed
	 * either via g_ptr_array_unref(), when g_ptr_array_free() is called with
	 * @free_segment set to %TRUE or when removing elements.
	 *
	 * Params:
	 *     elementFreeFunc = A function to free elements with
	 *         destroy @array or %NULL
	 *
	 * Returns: A new #GPtrArray
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GDestroyNotify elementFreeFunc)
	{
		auto p = g_ptr_array_new_with_free_func(elementFreeFunc);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_free_func");
		}

		this(cast(GPtrArray*) p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @array by one.
	 * This function is thread-safe and may be called from any thread.
	 *
	 * Returns: The passed in #GPtrArray
	 *
	 * Since: 2.22
	 */
	public PtrArray ref_()
	{
		auto p = g_ptr_array_ref(gPtrArray);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * Removes the first occurrence of the given pointer from the pointer
	 * array. The following elements are moved down one place. If @array
	 * has a non-%NULL #GDestroyNotify function it is called for the
	 * removed element.
	 *
	 * It returns %TRUE if the pointer was removed, or %FALSE if the
	 * pointer was not found.
	 *
	 * Params:
	 *     data = the pointer to remove
	 *
	 * Returns: %TRUE if the pointer is removed, %FALSE if the pointer
	 *     is not found in the array
	 */
	public bool remove(void* data)
	{
		return g_ptr_array_remove(gPtrArray, data) != 0;
	}

	/**
	 * Removes the first occurrence of the given pointer from the pointer
	 * array. The last element in the array is used to fill in the space,
	 * so this function does not preserve the order of the array. But it
	 * is faster than g_ptr_array_remove(). If @array has a non-%NULL
	 * #GDestroyNotify function it is called for the removed element.
	 *
	 * It returns %TRUE if the pointer was removed, or %FALSE if the
	 * pointer was not found.
	 *
	 * Params:
	 *     data = the pointer to remove
	 *
	 * Returns: %TRUE if the pointer was found in the array
	 */
	public bool removeFast(void* data)
	{
		return g_ptr_array_remove_fast(gPtrArray, data) != 0;
	}

	/**
	 * Removes the pointer at the given index from the pointer array.
	 * The following elements are moved down one place. If @array has
	 * a non-%NULL #GDestroyNotify function it is called for the removed
	 * element.
	 *
	 * Params:
	 *     index = the index of the pointer to remove
	 *
	 * Returns: the pointer which was removed
	 */
	public void* removeIndex(uint index)
	{
		return g_ptr_array_remove_index(gPtrArray, index);
	}

	/**
	 * Removes the pointer at the given index from the pointer array.
	 * The last element in the array is used to fill in the space, so
	 * this function does not preserve the order of the array. But it
	 * is faster than g_ptr_array_remove_index(). If @array has a non-%NULL
	 * #GDestroyNotify function it is called for the removed element.
	 *
	 * Params:
	 *     index = the index of the pointer to remove
	 *
	 * Returns: the pointer which was removed
	 */
	public void* removeIndexFast(uint index)
	{
		return g_ptr_array_remove_index_fast(gPtrArray, index);
	}

	/**
	 * Removes the given number of pointers starting at the given index
	 * from a #GPtrArray. The following elements are moved to close the
	 * gap. If @array has a non-%NULL #GDestroyNotify function it is
	 * called for the removed elements.
	 *
	 * Params:
	 *     index = the index of the first pointer to remove
	 *     length = the number of pointers to remove
	 *
	 * Returns: the @array
	 *
	 * Since: 2.4
	 */
	public PtrArray removeRange(uint index, uint length)
	{
		auto p = g_ptr_array_remove_range(gPtrArray, index, length);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * Sets a function for freeing each element when @array is destroyed
	 * either via g_ptr_array_unref(), when g_ptr_array_free() is called
	 * with @free_segment set to %TRUE or when removing elements.
	 *
	 * Params:
	 *     elementFreeFunc = A function to free elements with
	 *         destroy @array or %NULL
	 *
	 * Since: 2.22
	 */
	public void setFreeFunc(GDestroyNotify elementFreeFunc)
	{
		g_ptr_array_set_free_func(gPtrArray, elementFreeFunc);
	}

	/**
	 * Sets the size of the array. When making the array larger,
	 * newly-added elements will be set to %NULL. When making it smaller,
	 * if @array has a non-%NULL #GDestroyNotify function then it will be
	 * called for the removed elements.
	 *
	 * Params:
	 *     length = the new length of the pointer array
	 */
	public void setSize(int length)
	{
		g_ptr_array_set_size(gPtrArray, length);
	}

	/**
	 * Creates a new #GPtrArray with @reserved_size pointers preallocated
	 * and a reference count of 1. This avoids frequent reallocation, if
	 * you are going to add many pointers to the array. Note however that
	 * the size of the array is still 0.
	 *
	 * Params:
	 *     reservedSize = number of pointers preallocated
	 *
	 * Returns: the new #GPtrArray
	 */
	public static PtrArray sizedNew(uint reservedSize)
	{
		auto p = g_ptr_array_sized_new(reservedSize);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * Sorts the array, using @compare_func which should be a qsort()-style
	 * comparison function (returns less than zero for first arg is less
	 * than second arg, zero for equal, greater than zero if irst arg is
	 * greater than second arg).
	 *
	 * Note that the comparison function for g_ptr_array_sort() doesn't
	 * take the pointers from the array as arguments, it takes pointers to
	 * the pointers in the array.
	 *
	 * This is guaranteed to be a stable sort since version 2.32.
	 *
	 * Params:
	 *     compareFunc = comparison function
	 */
	public void sort(GCompareFunc compareFunc)
	{
		g_ptr_array_sort(gPtrArray, compareFunc);
	}

	/**
	 * Like g_ptr_array_sort(), but the comparison function has an extra
	 * user data argument.
	 *
	 * Note that the comparison function for g_ptr_array_sort_with_data()
	 * doesn't take the pointers from the array as arguments, it takes
	 * pointers to the pointers in the array.
	 *
	 * This is guaranteed to be a stable sort since version 2.32.
	 *
	 * Params:
	 *     compareFunc = comparison function
	 *     userData = data to pass to @compare_func
	 */
	public void sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		g_ptr_array_sort_with_data(gPtrArray, compareFunc, userData);
	}

	/**
	 * Atomically decrements the reference count of @array by one. If the
	 * reference count drops to 0, the effect is the same as calling
	 * g_ptr_array_free() with @free_segment set to %TRUE. This function
	 * is thread-safe and may be called from any thread.
	 *
	 * Since: 2.22
	 */
	public void unref()
	{
		g_ptr_array_unref(gPtrArray);
	}
}
