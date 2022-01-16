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


module glib.ListSG;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import gobject.ObjectG;


/**
 * The #GSList struct is used for each element in the singly-linked
 * list.
 */
public class ListSG
{
	/** the main Gtk struct */
	protected GSList* gSList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSList* getListSGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSList* gSList, bool ownedRef = false)
	{
		this.gSList = gSList;
		this.ownedRef = ownedRef;
	}

	/** */
	@property void* data()
	{
		return gSList.data;
	}

	/**
	 * get the next element
	 * Returns: the next element, or NULL if there are no more elements.
	 */
	@property ListSG next()
	{
		if ( gSList.next is null )
		{
			return null;
		}

		return new ListSG(gSList.next);
	}

	/**
	 * Turn the list into a D array of the desiered type.
	 * Type T wraps should match the type of the data.
	 */
	public T[] toArray(T, TC = getCType!T)()
	if ( is(T == class) )
	{
		T[] arr = new T[length()];
		ListSG list = this;
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
		ListSG list = this;
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

		auto list = new ListSG(null);
		list = list.append(new Value(0).getValueStruct());
		list = list.append(new Value(1).getValueStruct());
		auto arr = list.toArray!Value();

		assert(arr[0].getInt() == 0);
		assert(arr[1].getInt() == 1);

		list = new ListSG(null);
		list = list.append(cast(void*)"test\0".ptr);
		list = list.append(cast(void*)"test2\0".ptr);

		assert(["test", "test2"] == list.toArray!string());
	}

	/**
	 */

	/**
	 * Allocates space for one #GSList element. It is called by the
	 * g_slist_append(), g_slist_prepend(), g_slist_insert() and
	 * g_slist_insert_sorted() functions and so is rarely used on its own.
	 *
	 * Returns: a pointer to the newly-allocated #GSList element.
	 */
	public static ListSG alloc()
	{
		auto __p = g_slist_alloc();

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Adds a new element on to the end of the list.
	 *
	 * The return value is the new start of the list, which may
	 * have changed, so make sure you store the new value.
	 *
	 * Note that g_slist_append() has to traverse the entire list
	 * to find the end, which is inefficient when adding multiple
	 * elements. A common idiom to avoid the inefficiency is to prepend
	 * the elements and reverse the list when all elements have been added.
	 *
	 * |[<!-- language="C" -->
	 * // Notice that these are initialized to the empty list.
	 * GSList *list = NULL, *number_list = NULL;
	 *
	 * // This is a list of strings.
	 * list = g_slist_append (list, "first");
	 * list = g_slist_append (list, "second");
	 *
	 * // This is a list of integers.
	 * number_list = g_slist_append (number_list, GINT_TO_POINTER (27));
	 * number_list = g_slist_append (number_list, GINT_TO_POINTER (14));
	 * ]|
	 *
	 * Params:
	 *     data = the data for the new element
	 *
	 * Returns: the new start of the #GSList
	 */
	public ListSG append(void* data)
	{
		auto __p = g_slist_append(gSList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Adds the second #GSList onto the end of the first #GSList.
	 * Note that the elements of the second #GSList are not copied.
	 * They are used directly.
	 *
	 * Params:
	 *     list2 = the #GSList to add to the end of the first #GSList
	 *
	 * Returns: the start of the new #GSList
	 */
	public ListSG concat(ListSG list2)
	{
		auto __p = g_slist_concat(gSList, (list2 is null) ? null : list2.getListSGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Copies a #GSList.
	 *
	 * Note that this is a "shallow" copy. If the list elements
	 * consist of pointers to data, the pointers are copied but
	 * the actual data isn't. See g_slist_copy_deep() if you need
	 * to copy the data as well.
	 *
	 * Returns: a copy of @list
	 */
	public ListSG copy()
	{
		auto __p = g_slist_copy(gSList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Makes a full (deep) copy of a #GSList.
	 *
	 * In contrast with g_slist_copy(), this function uses @func to make a copy of
	 * each list element, in addition to copying the list container itself.
	 *
	 * @func, as a #GCopyFunc, takes two arguments, the data to be copied
	 * and a @user_data pointer. On common processor architectures, it's safe to
	 * pass %NULL as @user_data if the copy function takes only one argument. You
	 * may get compiler warnings from this though if compiling with GCC’s
	 * `-Wcast-function-type` warning.
	 *
	 * For instance, if @list holds a list of GObjects, you can do:
	 * |[<!-- language="C" -->
	 * another_list = g_slist_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
	 * ]|
	 *
	 * And, to entirely free the new list, you could do:
	 * |[<!-- language="C" -->
	 * g_slist_free_full (another_list, g_object_unref);
	 * ]|
	 *
	 * Params:
	 *     func = a copy function used to copy every element in the list
	 *     userData = user data passed to the copy function @func, or #NULL
	 *
	 * Returns: a full copy of @list, use g_slist_free_full() to free it
	 *
	 * Since: 2.34
	 */
	public ListSG copyDeep(GCopyFunc func, void* userData)
	{
		auto __p = g_slist_copy_deep(gSList, func, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes the node link_ from the list and frees it.
	 * Compare this to g_slist_remove_link() which removes the node
	 * without freeing it.
	 *
	 * Removing arbitrary nodes from a singly-linked list requires time
	 * that is proportional to the length of the list (ie. O(n)). If you
	 * find yourself using g_slist_delete_link() frequently, you should
	 * consider a different data structure, such as the doubly-linked
	 * #GList.
	 *
	 * Params:
	 *     link = node to delete
	 *
	 * Returns: the new head of @list
	 */
	public ListSG deleteLink(ListSG link)
	{
		auto __p = g_slist_delete_link(gSList, (link is null) ? null : link.getListSGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Finds the element in a #GSList which
	 * contains the given data.
	 *
	 * Params:
	 *     data = the element data to find
	 *
	 * Returns: the found #GSList element,
	 *     or %NULL if it is not found
	 */
	public ListSG find(void* data)
	{
		auto __p = g_slist_find(gSList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Finds an element in a #GSList, using a supplied function to
	 * find the desired element. It iterates over the list, calling
	 * the given function which should return 0 when the desired
	 * element is found. The function takes two #gconstpointer arguments,
	 * the #GSList element's data as the first argument and the
	 * given user data.
	 *
	 * Params:
	 *     data = user data passed to the function
	 *     func = the function to call for each element.
	 *         It should return 0 when the desired element is found
	 *
	 * Returns: the found #GSList element, or %NULL if it is not found
	 */
	public ListSG findCustom(void* data, GCompareFunc func)
	{
		auto __p = g_slist_find_custom(gSList, data, func);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	alias foreac = foreach_;
	/**
	 * Calls a function for each element of a #GSList.
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
		g_slist_foreach(gSList, func, userData);
	}

	/**
	 * Frees all of the memory used by a #GSList.
	 * The freed elements are returned to the slice allocator.
	 *
	 * If list elements contain dynamically-allocated memory,
	 * you should either use g_slist_free_full() or free them manually
	 * first.
	 *
	 * It can be combined with g_steal_pointer() to ensure the list head pointer
	 * is not left dangling:
	 * |[<!-- language="C" -->
	 * GSList *list_of_borrowed_things = …;  /<!-- -->* (transfer container) *<!-- -->/
	 * g_slist_free (g_steal_pointer (&list_of_borrowed_things));
	 * ]|
	 */
	public void free()
	{
		g_slist_free(gSList);
	}

	/**
	 * Frees one #GSList element.
	 * It is usually used after g_slist_remove_link().
	 */
	public void free1()
	{
		g_slist_free_1(gSList);
	}

	/**
	 * Convenience method, which frees all the memory used by a #GSList, and
	 * calls the specified destroy function on every element's data.
	 *
	 * @free_func must not modify the list (eg, by removing the freed
	 * element from it).
	 *
	 * It can be combined with g_steal_pointer() to ensure the list head pointer
	 * is not left dangling ­— this also has the nice property that the head pointer
	 * is cleared before any of the list elements are freed, to prevent double frees
	 * from @free_func:
	 * |[<!-- language="C" -->
	 * GSList *list_of_owned_things = …;  /<!-- -->* (transfer full) (element-type GObject) *<!-- -->/
	 * g_slist_free_full (g_steal_pointer (&list_of_owned_things), g_object_unref);
	 * ]|
	 *
	 * Params:
	 *     freeFunc = the function to be called to free each element's data
	 *
	 * Since: 2.28
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		g_slist_free_full(gSList, freeFunc);
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
		return g_slist_index(gSList, data);
	}

	/**
	 * Inserts a new element into the list at the given position.
	 *
	 * Params:
	 *     data = the data for the new element
	 *     position = the position to insert the element.
	 *         If this is negative, or is larger than the number
	 *         of elements in the list, the new element is added on
	 *         to the end of the list.
	 *
	 * Returns: the new start of the #GSList
	 */
	public ListSG insert(void* data, int position)
	{
		auto __p = g_slist_insert(gSList, data, position);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Inserts a node before @sibling containing @data.
	 *
	 * Params:
	 *     sibling = node to insert @data before
	 *     data = data to put in the newly-inserted node
	 *
	 * Returns: the new head of the list.
	 */
	public ListSG insertBefore(ListSG sibling, void* data)
	{
		auto __p = g_slist_insert_before(gSList, (sibling is null) ? null : sibling.getListSGStruct(), data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Inserts a new element into the list, using the given
	 * comparison function to determine its position.
	 *
	 * Params:
	 *     data = the data for the new element
	 *     func = the function to compare elements in the list.
	 *         It should return a number > 0 if the first parameter
	 *         comes after the second parameter in the sort order.
	 *
	 * Returns: the new start of the #GSList
	 */
	public ListSG insertSorted(void* data, GCompareFunc func)
	{
		auto __p = g_slist_insert_sorted(gSList, data, func);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Inserts a new element into the list, using the given
	 * comparison function to determine its position.
	 *
	 * Params:
	 *     data = the data for the new element
	 *     func = the function to compare elements in the list.
	 *         It should return a number > 0 if the first parameter
	 *         comes after the second parameter in the sort order.
	 *     userData = data to pass to comparison function
	 *
	 * Returns: the new start of the #GSList
	 *
	 * Since: 2.10
	 */
	public ListSG insertSortedWithData(void* data, GCompareDataFunc func, void* userData)
	{
		auto __p = g_slist_insert_sorted_with_data(gSList, data, func, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Gets the last element in a #GSList.
	 *
	 * This function iterates over the whole list.
	 *
	 * Returns: the last element in the #GSList,
	 *     or %NULL if the #GSList has no elements
	 */
	public ListSG last()
	{
		auto __p = g_slist_last(gSList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Gets the number of elements in a #GSList.
	 *
	 * This function iterates over the whole list to
	 * count its elements. To check whether the list is non-empty, it is faster to
	 * check @list against %NULL.
	 *
	 * Returns: the number of elements in the #GSList
	 */
	public uint length()
	{
		return g_slist_length(gSList);
	}

	/**
	 * Gets the element at the given position in a #GSList.
	 *
	 * Params:
	 *     n = the position of the element, counting from 0
	 *
	 * Returns: the element, or %NULL if the position is off
	 *     the end of the #GSList
	 */
	public ListSG nth(uint n)
	{
		auto __p = g_slist_nth(gSList, n);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Gets the data of the element at the given position.
	 *
	 * Params:
	 *     n = the position of the element
	 *
	 * Returns: the element's data, or %NULL if the position
	 *     is off the end of the #GSList
	 */
	public void* nthData(uint n)
	{
		return g_slist_nth_data(gSList, n);
	}

	/**
	 * Gets the position of the given element
	 * in the #GSList (starting from 0).
	 *
	 * Params:
	 *     llink = an element in the #GSList
	 *
	 * Returns: the position of the element in the #GSList,
	 *     or -1 if the element is not found
	 */
	public int position(ListSG llink)
	{
		return g_slist_position(gSList, (llink is null) ? null : llink.getListSGStruct());
	}

	/**
	 * Adds a new element on to the start of the list.
	 *
	 * The return value is the new start of the list, which
	 * may have changed, so make sure you store the new value.
	 *
	 * |[<!-- language="C" -->
	 * // Notice that it is initialized to the empty list.
	 * GSList *list = NULL;
	 * list = g_slist_prepend (list, "last");
	 * list = g_slist_prepend (list, "first");
	 * ]|
	 *
	 * Params:
	 *     data = the data for the new element
	 *
	 * Returns: the new start of the #GSList
	 */
	public ListSG prepend(void* data)
	{
		auto __p = g_slist_prepend(gSList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes an element from a #GSList.
	 * If two elements contain the same data, only the first is removed.
	 * If none of the elements contain the data, the #GSList is unchanged.
	 *
	 * Params:
	 *     data = the data of the element to remove
	 *
	 * Returns: the new start of the #GSList
	 */
	public ListSG remove(void* data)
	{
		auto __p = g_slist_remove(gSList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes all list nodes with data equal to @data.
	 * Returns the new head of the list. Contrast with
	 * g_slist_remove() which removes only the first node
	 * matching the given data.
	 *
	 * Params:
	 *     data = data to remove
	 *
	 * Returns: new head of @list
	 */
	public ListSG removeAll(void* data)
	{
		auto __p = g_slist_remove_all(gSList, data);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Removes an element from a #GSList, without
	 * freeing the element. The removed element's next
	 * link is set to %NULL, so that it becomes a
	 * self-contained list with one element.
	 *
	 * Removing arbitrary nodes from a singly-linked list
	 * requires time that is proportional to the length of the list
	 * (ie. O(n)). If you find yourself using g_slist_remove_link()
	 * frequently, you should consider a different data structure,
	 * such as the doubly-linked #GList.
	 *
	 * Params:
	 *     link = an element in the #GSList
	 *
	 * Returns: the new start of the #GSList, without the element
	 */
	public ListSG removeLink(ListSG link)
	{
		auto __p = g_slist_remove_link(gSList, (link is null) ? null : link.getListSGStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Reverses a #GSList.
	 *
	 * Returns: the start of the reversed #GSList
	 */
	public ListSG reverse()
	{
		auto __p = g_slist_reverse(gSList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Sorts a #GSList using the given comparison function. The algorithm
	 * used is a stable sort.
	 *
	 * Params:
	 *     compareFunc = the comparison function used to sort the #GSList.
	 *         This function is passed the data from 2 elements of the #GSList
	 *         and should return 0 if they are equal, a negative value if the
	 *         first element comes before the second, or a positive value if
	 *         the first element comes after the second.
	 *
	 * Returns: the start of the sorted #GSList
	 */
	public ListSG sort(GCompareFunc compareFunc)
	{
		auto __p = g_slist_sort(gSList, compareFunc);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Like g_slist_sort(), but the sort function accepts a user data argument.
	 *
	 * Params:
	 *     compareFunc = comparison function
	 *     userData = data to pass to comparison function
	 *
	 * Returns: new head of the list
	 */
	public ListSG sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		auto __p = g_slist_sort_with_data(gSList, compareFunc, userData);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Clears a pointer to a #GSList, freeing it and, optionally, freeing its elements using @destroy.
	 *
	 * @slist_ptr must be a valid pointer. If @slist_ptr points to a null #GSList, this does nothing.
	 *
	 * Params:
	 *     slistPtr = a #GSList return location
	 *     destroy = the function to pass to g_slist_free_full() or %NULL to not free elements
	 *
	 * Since: 2.64
	 */
	public static void clearSlist(out ListSG slistPtr, GDestroyNotify destroy)
	{
		GSList* outslistPtr = null;

		g_clear_slist(&outslistPtr, destroy);

		slistPtr = new ListSG(outslistPtr);
	}
}
