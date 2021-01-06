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


module glib.ListG;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import gobject.ObjectG;


/**
 * The #GList struct is used for each element in a doubly-linked list.
 */
public class ListG
{
	/** the main Gtk struct */
	protected GList* gList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GList* getListGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GList* gList, bool ownedRef = false)
	{
		this.gList = gList;
		this.ownedRef = ownedRef;
	}

	/** */
	@property void* data()
	{
		return gList.data;
	}

	/**
	 * get the next element
	 * Returns: the next element, or NULL if there are no more elements.
	 */
	@property ListG next()
	{
		if ( gList.next is null )
		{
			return null;
		}

		return new ListG(gList.next);
	}

	/**
	 * get the previous element
	 * Returns: the previous element, or NULL if there are no more elements.
	 */
	@property ListG previous()
	{
		if ( gList.prev is null )
		{
			return null;
		}

		return new ListG(gList.prev);
	}

	/**
	 * Turn the list into a D array of the desiered type.
	 * Type T wraps should match the type of the data.
	 */
	public T[] toArray(T, TC = getCType!T)()
	if ( is(T == class) )
	{
		T[] arr = new T[length()];
		ListG list = this;
		size_t count;

		while(list !is null && count < arr.length)
		{
			arr[count] = ObjectG.getDObject!(T)(cast(TC)list.data);
			list = list.next();
			count++;
		}

		return arr;
	}

	/** Ditto */
	public T[] toArray(T)()
	if ( is ( T == string ) )
	{
		T[] arr = new T[length()];
		ListG list = this;
		size_t count;

		while(list !is null && count < arr.length)
		{
			arr[count] = Str.toString(cast(char*)list.data);
			list = list.next();
			count++;
		}

		return arr;
	}

	private template getCType(T)
	{
		static if ( is(T == class) )
			alias getCType = typeof(T.tupleof[0]);
		else
			alias getCType = void*;
	}

	unittest
	{
		import gobject.Value;

		auto list = new ListG(null);
		list = list.append(new Value(0).getValueStruct());
		list = list.append(new Value(1).getValueStruct());
		auto arr = list.toArray!Value();

		assert(arr[0].getInt() == 0);
		assert(arr[1].getInt() == 1);

		list = new ListG(null);
		list = list.append(cast(void*)"test\0".ptr);
		list = list.append(cast(void*)"test2\0".ptr);

		assert(["test", "test2"] == list.toArray!string());
	}

	/**
	 */

	/**
	 * Allocates space for one #GList element. It is called by
	 * g_list_append(), g_list_prepend(), g_list_insert() and
	 * g_list_insert_sorted() and so is rarely used on its own.
	 *
	 * Returns: a pointer to the newly-allocated #GList element
	 */
	public static ListG alloc()
	{
		auto __p = g_list_alloc();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Adds a new element on to the end of the list.
	 *
	 * Note that the return value is the new start of the list,
	 * if @list was empty; make sure you store the new value.
	 *
	 * g_list_append() has to traverse the entire list to find the end,
	 * which is inefficient when adding multiple elements. A common idiom
	 * to avoid the inefficiency is to use g_list_prepend() and reverse
	 * the list with g_list_reverse() when all elements have been added.
	 *
	 * |[<!-- language="C" -->
	 * // Notice that these are initialized to the empty list.
	 * GList *string_list = NULL, *number_list = NULL;
	 *
	 * // This is a list of strings.
	 * string_list = g_list_append (string_list, "first");
	 * string_list = g_list_append (string_list, "second");
	 *
	 * // This is a list of integers.
	 * number_list = g_list_append (number_list, GINT_TO_POINTER (27));
	 * number_list = g_list_append (number_list, GINT_TO_POINTER (14));
	 * ]|
	 *
	 * Params:
	 *     data = the data for the new element
	 *
	 * Returns: either @list or the new start of the #GList if @list was %NULL
	 */
	public ListG append(void* data)
	{
		auto __p = g_list_append(gList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Adds the second #GList onto the end of the first #GList.
	 * Note that the elements of the second #GList are not copied.
	 * They are used directly.
	 *
	 * This function is for example used to move an element in the list.
	 * The following example moves an element to the top of the list:
	 * |[<!-- language="C" -->
	 * list = g_list_remove_link (list, llink);
	 * list = g_list_concat (llink, list);
	 * ]|
	 *
	 * Params:
	 *     list2 = the #GList to add to the end of the first #GList,
	 *         this must point  to the top of the list
	 *
	 * Returns: the start of the new #GList, which equals @list1 if not %NULL
	 */
	public ListG concat(ListG list2)
	{
		auto __p = g_list_concat(gList, (list2 is null) ? null : list2.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Copies a #GList.
	 *
	 * Note that this is a "shallow" copy. If the list elements
	 * consist of pointers to data, the pointers are copied but
	 * the actual data is not. See g_list_copy_deep() if you need
	 * to copy the data as well.
	 *
	 * Returns: the start of the new list that holds the same data as @list
	 */
	public ListG copy()
	{
		auto __p = g_list_copy(gList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Makes a full (deep) copy of a #GList.
	 *
	 * In contrast with g_list_copy(), this function uses @func to make
	 * a copy of each list element, in addition to copying the list
	 * container itself.
	 *
	 * @func, as a #GCopyFunc, takes two arguments, the data to be copied
	 * and a @user_data pointer. On common processor architectures, it's safe to
	 * pass %NULL as @user_data if the copy function takes only one argument. You
	 * may get compiler warnings from this though if compiling with GCC’s
	 * `-Wcast-function-type` warning.
	 *
	 * For instance, if @list holds a list of GObjects, you can do:
	 * |[<!-- language="C" -->
	 * another_list = g_list_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
	 * ]|
	 *
	 * And, to entirely free the new list, you could do:
	 * |[<!-- language="C" -->
	 * g_list_free_full (another_list, g_object_unref);
	 * ]|
	 *
	 * Params:
	 *     func = a copy function used to copy every element in the list
	 *     userData = user data passed to the copy function @func, or %NULL
	 *
	 * Returns: the start of the new list that holds a full copy of @list,
	 *     use g_list_free_full() to free it
	 *
	 * Since: 2.34
	 */
	public ListG copyDeep(GCopyFunc func, void* userData)
	{
		auto __p = g_list_copy_deep(gList, func, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes the node link_ from the list and frees it.
	 * Compare this to g_list_remove_link() which removes the node
	 * without freeing it.
	 *
	 * Params:
	 *     link = node to delete from @list
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG deleteLink(ListG link)
	{
		auto __p = g_list_delete_link(gList, (link is null) ? null : link.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Finds the element in a #GList which contains the given data.
	 *
	 * Params:
	 *     data = the element data to find
	 *
	 * Returns: the found #GList element, or %NULL if it is not found
	 */
	public ListG find(void* data)
	{
		auto __p = g_list_find(gList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Finds an element in a #GList, using a supplied function to
	 * find the desired element. It iterates over the list, calling
	 * the given function which should return 0 when the desired
	 * element is found. The function takes two #gconstpointer arguments,
	 * the #GList element's data as the first argument and the
	 * given user data.
	 *
	 * Params:
	 *     data = user data passed to the function
	 *     func = the function to call for each element.
	 *         It should return 0 when the desired element is found
	 *
	 * Returns: the found #GList element, or %NULL if it is not found
	 */
	public ListG findCustom(void* data, GCompareFunc func)
	{
		auto __p = g_list_find_custom(gList, data, func);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the first element in a #GList.
	 *
	 * Returns: the first element in the #GList,
	 *     or %NULL if the #GList has no elements
	 */
	public ListG first()
	{
		auto __p = g_list_first(gList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	alias foreac = foreach_;
	/**
	 * Calls a function for each element of a #GList.
	 *
	 * It is safe for @func to remove the element from @list, but it must
	 * not modify any part of the list after that element.
	 *
	 * Params:
	 *     func = the function to call with each element's data
	 *     userData = user data to pass to the function
	 */
	public void foreach_(GFunc func, void* userData)
	{
		g_list_foreach(gList, func, userData);
	}

	/**
	 * Frees all of the memory used by a #GList.
	 * The freed elements are returned to the slice allocator.
	 *
	 * If list elements contain dynamically-allocated memory, you should
	 * either use g_list_free_full() or free them manually first.
	 *
	 * It can be combined with g_steal_pointer() to ensure the list head pointer
	 * is not left dangling:
	 * |[<!-- language="C" -->
	 * GList *list_of_borrowed_things = …;  /<!-- -->* (transfer container) *<!-- -->/
	 * g_list_free (g_steal_pointer (&list_of_borrowed_things));
	 * ]|
	 */
	public void free()
	{
		g_list_free(gList);
	}

	/**
	 * Frees one #GList element, but does not update links from the next and
	 * previous elements in the list, so you should not call this function on an
	 * element that is currently part of a list.
	 *
	 * It is usually used after g_list_remove_link().
	 */
	public void free1()
	{
		g_list_free_1(gList);
	}

	/**
	 * Convenience method, which frees all the memory used by a #GList,
	 * and calls @free_func on every element's data.
	 *
	 * @free_func must not modify the list (eg, by removing the freed
	 * element from it).
	 *
	 * It can be combined with g_steal_pointer() to ensure the list head pointer
	 * is not left dangling ­— this also has the nice property that the head pointer
	 * is cleared before any of the list elements are freed, to prevent double frees
	 * from @free_func:
	 * |[<!-- language="C" -->
	 * GList *list_of_owned_things = …;  /<!-- -->* (transfer full) (element-type GObject) *<!-- -->/
	 * g_list_free_full (g_steal_pointer (&list_of_owned_things), g_object_unref);
	 * ]|
	 *
	 * Params:
	 *     freeFunc = the function to be called to free each element's data
	 *
	 * Since: 2.28
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		g_list_free_full(gList, freeFunc);
	}

	/**
	 * Gets the position of the element containing
	 * the given data (starting from 0).
	 *
	 * Params:
	 *     data = the data to find
	 *
	 * Returns: the index of the element containing the data,
	 *     or -1 if the data is not found
	 */
	public int index(void* data)
	{
		return g_list_index(gList, data);
	}

	/**
	 * Inserts a new element into the list at the given position.
	 *
	 * Params:
	 *     data = the data for the new element
	 *     position = the position to insert the element. If this is
	 *         negative, or is larger than the number of elements in the
	 *         list, the new element is added on to the end of the list.
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG insert(void* data, int position)
	{
		auto __p = g_list_insert(gList, data, position);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Inserts a new element into the list before the given position.
	 *
	 * Params:
	 *     sibling = the list element before which the new element
	 *         is inserted or %NULL to insert at the end of the list
	 *     data = the data for the new element
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG insertBefore(ListG sibling, void* data)
	{
		auto __p = g_list_insert_before(gList, (sibling is null) ? null : sibling.getListGStruct(), data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Inserts @link_ into the list before the given position.
	 *
	 * Params:
	 *     sibling = the list element before which the new element
	 *         is inserted or %NULL to insert at the end of the list
	 *     link = the list element to be added, which must not be part of
	 *         any other list
	 *
	 * Returns: the (possibly changed) start of the #GList
	 *
	 * Since: 2.62
	 */
	public ListG insertBeforeLink(ListG sibling, ListG link)
	{
		auto __p = g_list_insert_before_link(gList, (sibling is null) ? null : sibling.getListGStruct(), (link is null) ? null : link.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Inserts a new element into the list, using the given comparison
	 * function to determine its position.
	 *
	 * If you are adding many new elements to a list, and the number of
	 * new elements is much larger than the length of the list, use
	 * g_list_prepend() to add the new items and sort the list afterwards
	 * with g_list_sort().
	 *
	 * Params:
	 *     data = the data for the new element
	 *     func = the function to compare elements in the list. It should
	 *         return a number > 0 if the first parameter comes after the
	 *         second parameter in the sort order.
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG insertSorted(void* data, GCompareFunc func)
	{
		auto __p = g_list_insert_sorted(gList, data, func);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Inserts a new element into the list, using the given comparison
	 * function to determine its position.
	 *
	 * If you are adding many new elements to a list, and the number of
	 * new elements is much larger than the length of the list, use
	 * g_list_prepend() to add the new items and sort the list afterwards
	 * with g_list_sort().
	 *
	 * Params:
	 *     data = the data for the new element
	 *     func = the function to compare elements in the list. It should
	 *         return a number > 0 if the first parameter  comes after the
	 *         second parameter in the sort order.
	 *     userData = user data to pass to comparison function
	 *
	 * Returns: the (possibly changed) start of the #GList
	 *
	 * Since: 2.10
	 */
	public ListG insertSortedWithData(void* data, GCompareDataFunc func, void* userData)
	{
		auto __p = g_list_insert_sorted_with_data(gList, data, func, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the last element in a #GList.
	 *
	 * Returns: the last element in the #GList,
	 *     or %NULL if the #GList has no elements
	 */
	public ListG last()
	{
		auto __p = g_list_last(gList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the number of elements in a #GList.
	 *
	 * This function iterates over the whole list to count its elements.
	 * Use a #GQueue instead of a GList if you regularly need the number
	 * of items. To check whether the list is non-empty, it is faster to check
	 * @list against %NULL.
	 *
	 * Returns: the number of elements in the #GList
	 */
	public uint length()
	{
		return g_list_length(gList);
	}

	/**
	 * Gets the element at the given position in a #GList.
	 *
	 * This iterates over the list until it reaches the @n-th position. If you
	 * intend to iterate over every element, it is better to use a for-loop as
	 * described in the #GList introduction.
	 *
	 * Params:
	 *     n = the position of the element, counting from 0
	 *
	 * Returns: the element, or %NULL if the position is off
	 *     the end of the #GList
	 */
	public ListG nth(uint n)
	{
		auto __p = g_list_nth(gList, n);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the data of the element at the given position.
	 *
	 * This iterates over the list until it reaches the @n-th position. If you
	 * intend to iterate over every element, it is better to use a for-loop as
	 * described in the #GList introduction.
	 *
	 * Params:
	 *     n = the position of the element
	 *
	 * Returns: the element's data, or %NULL if the position
	 *     is off the end of the #GList
	 */
	public void* nthData(uint n)
	{
		return g_list_nth_data(gList, n);
	}

	/**
	 * Gets the element @n places before @list.
	 *
	 * Params:
	 *     n = the position of the element, counting from 0
	 *
	 * Returns: the element, or %NULL if the position is
	 *     off the end of the #GList
	 */
	public ListG nthPrev(uint n)
	{
		auto __p = g_list_nth_prev(gList, n);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the position of the given element
	 * in the #GList (starting from 0).
	 *
	 * Params:
	 *     llink = an element in the #GList
	 *
	 * Returns: the position of the element in the #GList,
	 *     or -1 if the element is not found
	 */
	public int position(ListG llink)
	{
		return g_list_position(gList, (llink is null) ? null : llink.getListGStruct());
	}

	/**
	 * Prepends a new element on to the start of the list.
	 *
	 * Note that the return value is the new start of the list,
	 * which will have changed, so make sure you store the new value.
	 *
	 * |[<!-- language="C" -->
	 * // Notice that it is initialized to the empty list.
	 * GList *list = NULL;
	 *
	 * list = g_list_prepend (list, "last");
	 * list = g_list_prepend (list, "first");
	 * ]|
	 *
	 * Do not use this function to prepend a new element to a different
	 * element than the start of the list. Use g_list_insert_before() instead.
	 *
	 * Params:
	 *     data = the data for the new element
	 *
	 * Returns: a pointer to the newly prepended element, which is the new
	 *     start of the #GList
	 */
	public ListG prepend(void* data)
	{
		auto __p = g_list_prepend(gList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes an element from a #GList.
	 * If two elements contain the same data, only the first is removed.
	 * If none of the elements contain the data, the #GList is unchanged.
	 *
	 * Params:
	 *     data = the data of the element to remove
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG remove(void* data)
	{
		auto __p = g_list_remove(gList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes all list nodes with data equal to @data.
	 * Returns the new head of the list. Contrast with
	 * g_list_remove() which removes only the first node
	 * matching the given data.
	 *
	 * Params:
	 *     data = data to remove
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG removeAll(void* data)
	{
		auto __p = g_list_remove_all(gList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Removes an element from a #GList, without freeing the element.
	 * The removed element's prev and next links are set to %NULL, so
	 * that it becomes a self-contained list with one element.
	 *
	 * This function is for example used to move an element in the list
	 * (see the example for g_list_concat()) or to remove an element in
	 * the list before freeing its data:
	 * |[<!-- language="C" -->
	 * list = g_list_remove_link (list, llink);
	 * free_some_data_that_may_access_the_list_again (llink->data);
	 * g_list_free (llink);
	 * ]|
	 *
	 * Params:
	 *     llink = an element in the #GList
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG removeLink(ListG llink)
	{
		auto __p = g_list_remove_link(gList, (llink is null) ? null : llink.getListGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Reverses a #GList.
	 * It simply switches the next and prev pointers of each element.
	 *
	 * Returns: the start of the reversed #GList
	 */
	public ListG reverse()
	{
		auto __p = g_list_reverse(gList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Sorts a #GList using the given comparison function. The algorithm
	 * used is a stable sort.
	 *
	 * Params:
	 *     compareFunc = the comparison function used to sort the #GList.
	 *         This function is passed the data from 2 elements of the #GList
	 *         and should return 0 if they are equal, a negative value if the
	 *         first element comes before the second, or a positive value if
	 *         the first element comes after the second.
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG sort(GCompareFunc compareFunc)
	{
		auto __p = g_list_sort(gList, compareFunc);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Like g_list_sort(), but the comparison function accepts
	 * a user data argument.
	 *
	 * Params:
	 *     compareFunc = comparison function
	 *     userData = user data to pass to comparison function
	 *
	 * Returns: the (possibly changed) start of the #GList
	 */
	public ListG sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		auto __p = g_list_sort_with_data(gList, compareFunc, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Clears a pointer to a #GList, freeing it and, optionally, freeing its elements using @destroy.
	 *
	 * @list_ptr must be a valid pointer. If @list_ptr points to a null #GList, this does nothing.
	 *
	 * Params:
	 *     listPtr = a #GList return location
	 *     destroy = the function to pass to g_list_free_full() or %NULL to not free elements
	 *
	 * Since: 2.64
	 */
	public static void clearList(out ListG listPtr, GDestroyNotify destroy)
	{
		GList* outlistPtr = null;

		g_clear_list(&outlistPtr, destroy);

		listPtr = new ListG(outlistPtr);
	}
}
