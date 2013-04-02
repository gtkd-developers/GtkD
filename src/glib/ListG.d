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
 * inFile  = glib-Doubly-Linked-Lists.html
 * outPack = glib
 * outFile = ListG
 * strct   = GList
 * realStrct=
 * ctorStrct=
 * clss    = ListG
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.ListG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * The GList structure and its associated functions provide a standard
 * doubly-linked list data structure.
 *
 * Each element in the list contains a piece of data, together with
 * pointers which link to the previous and next elements in the list.
 * Using these pointers it is possible to move through the list in both
 * directions (unlike the Singly-Linked Lists which
 * only allows movement through the list in the forward direction).
 *
 * The data contained in each element can be either integer values, by
 * using one of the Type
 * Conversion Macros, or simply pointers to any type of data.
 *
 * List elements are allocated from the slice allocator, which is more
 * efficient than allocating elements individually.
 *
 * Note that most of the GList functions expect to be passed a pointer
 * to the first element in the list. The functions which insert
 * elements return the new start of the list, which may have changed.
 *
 * There is no function to create a GList. NULL is considered to be
 * the empty list so you simply set a GList* to NULL.
 *
 * To add elements, use g_list_append(), g_list_prepend(),
 * g_list_insert() and g_list_insert_sorted().
 *
 * To remove elements, use g_list_remove().
 *
 * To find elements in the list use g_list_first(), g_list_last(),
 * g_list_next(), g_list_previous(), g_list_nth(), g_list_nth_data(),
 * g_list_find() and g_list_find_custom().
 *
 * To find the index of an element use g_list_position() and
 * g_list_index().
 *
 * To call a function for each element in the list use g_list_foreach().
 *
 * To free the entire list, use g_list_free().
 */
public class ListG
{
	
	/** the main Gtk struct */
	protected GList* gList;
	
	
	public GList* getListGStruct()
	{
		return gList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GList* gList)
	{
		this.gList = gList;
	}
	
	/** */
	void* data()
	{
		return gList.data;
	}
	
	/**
	 * get the next element
	 * Returns: the next element, or NULL if there are no more elements.
	 */
	ListG next()
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
	ListG previous()
	{
		if ( gList.prev is null )
		{
			return null;
		}
		
		return new ListG(gList.prev);
	}
	
	/**
	 */
	
	/**
	 * Adds a new element on to the end of the list.
	 * Note
	 * The return value is the new start of the list, which
	 * may have changed, so make sure you store the new value.
	 * Note
	 * Note that g_list_append() has to traverse the entire list
	 * to find the end, which is inefficient when adding multiple
	 * elements. A common idiom to avoid the inefficiency is to prepend
	 * the elements and reverse the list when all elements have been added.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * data = the data for the new element
	 * Returns: the new start of the GList
	 */
	public ListG append(void* data)
	{
		// GList * g_list_append (GList *list,  gpointer data);
		auto p = g_list_append(gList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Adds a new element on to the start of the list.
	 * Note
	 * The return value is the new start of the list, which
	 * may have changed, so make sure you store the new value.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * data = the data for the new element
	 * Returns: the new start of the GList
	 */
	public ListG prepend(void* data)
	{
		// GList * g_list_prepend (GList *list,  gpointer data);
		auto p = g_list_prepend(gList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Inserts a new element into the list at the given position.
	 * Params:
	 * data = the data for the new element
	 * position = the position to insert the element. If this is
	 * negative, or is larger than the number of elements in the
	 * list, the new element is added on to the end of the list.
	 * Returns: the new start of the GList
	 */
	public ListG insert(void* data, int position)
	{
		// GList * g_list_insert (GList *list,  gpointer data,  gint position);
		auto p = g_list_insert(gList, data, position);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Inserts a new element into the list before the given position.
	 * Params:
	 * sibling = the list element before which the new element
	 * is inserted or NULL to insert at the end of the list
	 * data = the data for the new element
	 * Returns: the new start of the GList
	 */
	public ListG insertBefore(ListG sibling, void* data)
	{
		// GList * g_list_insert_before (GList *list,  GList *sibling,  gpointer data);
		auto p = g_list_insert_before(gList, (sibling is null) ? null : sibling.getListGStruct(), data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Inserts a new element into the list, using the given comparison
	 * function to determine its position.
	 * Params:
	 * data = the data for the new element
	 * func = the function to compare elements in the list. It should
	 * return a number > 0 if the first parameter comes after the
	 * second parameter in the sort order.
	 * Returns: the new start of the GList
	 */
	public ListG insertSorted(void* data, GCompareFunc func)
	{
		// GList * g_list_insert_sorted (GList *list,  gpointer data,  GCompareFunc func);
		auto p = g_list_insert_sorted(gList, data, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes an element from a GList.
	 * If two elements contain the same data, only the first is removed.
	 * If none of the elements contain the data, the GList is unchanged.
	 * Params:
	 * data = the data of the element to remove
	 * Returns: the new start of the GList
	 */
	public ListG remove(void* data)
	{
		// GList * g_list_remove (GList *list,  gconstpointer data);
		auto p = g_list_remove(gList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes an element from a GList, without freeing the element.
	 * The removed element's prev and next links are set to NULL, so
	 * that it becomes a self-contained list with one element.
	 * Params:
	 * llink = an element in the GList
	 * Returns: the new start of the GList, without the element
	 */
	public ListG removeLink(ListG llink)
	{
		// GList * g_list_remove_link (GList *list,  GList *llink);
		auto p = g_list_remove_link(gList, (llink is null) ? null : llink.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes the node link_ from the list and frees it.
	 * Compare this to g_list_remove_link() which removes the node
	 * without freeing it.
	 * Params:
	 * link = node to delete from list
	 * Returns: the new head of list
	 */
	public ListG deleteLink(ListG link)
	{
		// GList * g_list_delete_link (GList *list,  GList *link_);
		auto p = g_list_delete_link(gList, (link is null) ? null : link.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Removes all list nodes with data equal to data.
	 * Returns the new head of the list. Contrast with
	 * g_list_remove() which removes only the first node
	 * matching the given data.
	 * Params:
	 * data = data to remove
	 * Returns: new head of list
	 */
	public ListG removeAll(void* data)
	{
		// GList * g_list_remove_all (GList *list,  gconstpointer data);
		auto p = g_list_remove_all(gList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Frees all of the memory used by a GList.
	 * The freed elements are returned to the slice allocator.
	 * Note
	 * If list elements contain dynamically-allocated memory,
	 * you should either use g_list_free_full() or free them manually
	 * first.
	 */
	public void free()
	{
		// void g_list_free (GList *list);
		g_list_free(gList);
	}
	
	/**
	 * Convenience method, which frees all the memory used by a GList, and
	 * calls the specified destroy function on every element's data.
	 * Since 2.28
	 * Params:
	 * freeFunc = the function to be called to free each element's data
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		// void g_list_free_full (GList *list,  GDestroyNotify free_func);
		g_list_free_full(gList, freeFunc);
	}
	
	/**
	 * Allocates space for one GList element. It is called by
	 * g_list_append(), g_list_prepend(), g_list_insert() and
	 * g_list_insert_sorted() and so is rarely used on its own.
	 * Returns: a pointer to the newly-allocated GList element.
	 */
	public static ListG alloc()
	{
		// GList * g_list_alloc (void);
		auto p = g_list_alloc();
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Frees one GList element.
	 * It is usually used after g_list_remove_link().
	 */
	public void free1()
	{
		// void g_list_free_1 (GList *list);
		g_list_free_1(gList);
	}
	
	/**
	 * Gets the number of elements in a GList.
	 * Note
	 * This function iterates over the whole list to
	 * count its elements.
	 * Returns: the number of elements in the GList
	 */
	public uint length()
	{
		// guint g_list_length (GList *list);
		return g_list_length(gList);
	}
	
	/**
	 * Copies a GList.
	 * Note
	 * Note that this is a "shallow" copy. If the list elements
	 * consist of pointers to data, the pointers are copied but
	 * the actual data is not. See g_list_copy_deep() if you need
	 * to copy the data as well.
	 * Returns: a copy of list
	 */
	public ListG copy()
	{
		// GList * g_list_copy (GList *list);
		auto p = g_list_copy(gList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Makes a full (deep) copy of a GList.
	 * In contrast with g_list_copy(), this function uses func to make a copy of
	 * each list element, in addition to copying the list container itself.
	 * func, as a GCopyFunc, takes two arguments, the data to be copied and a user
	 * pointer. It's safe to pass NULL as user_data, if the copy function takes only
	 * one argument.
	 * Since 2.34
	 * Params:
	 * func = a copy function used to copy every element in the list
	 * userData = user data passed to the copy function func, or NULL
	 * Returns: a full copy of list, use g_list_free_full to free it
	 */
	public ListG copyDeep(GCopyFunc func, void* userData)
	{
		// GList * g_list_copy_deep (GList *list,  GCopyFunc func,  gpointer user_data);
		auto p = g_list_copy_deep(gList, func, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Reverses a GList.
	 * It simply switches the next and prev pointers of each element.
	 * Returns: the start of the reversed GList
	 */
	public ListG reverse()
	{
		// GList * g_list_reverse (GList *list);
		auto p = g_list_reverse(gList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Sorts a GList using the given comparison function. The algorithm
	 * used is a stable sort.
	 * Params:
	 * compareFunc = the comparison function used to sort the GList.
	 * This function is passed the data from 2 elements of the GList
	 * and should return 0 if they are equal, a negative value if the
	 * first element comes before the second, or a positive value if
	 * the first element comes after the second.
	 * Returns: the start of the sorted GList
	 */
	public ListG sort(GCompareFunc compareFunc)
	{
		// GList * g_list_sort (GList *list,  GCompareFunc compare_func);
		auto p = g_list_sort(gList, compareFunc);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Inserts a new element into the list, using the given comparison
	 * function to determine its position.
	 * Since 2.10
	 * Params:
	 * data = the data for the new element
	 * func = the function to compare elements in the list.
	 * It should return a number > 0 if the first parameter
	 * comes after the second parameter in the sort order.
	 * userData = user data to pass to comparison function.
	 * Returns: the new start of the GList
	 */
	public ListG insertSortedWithData(void* data, GCompareDataFunc func, void* userData)
	{
		// GList * g_list_insert_sorted_with_data (GList *list,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		auto p = g_list_insert_sorted_with_data(gList, data, func, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Like g_list_sort(), but the comparison function accepts
	 * a user data argument.
	 * Params:
	 * compareFunc = comparison function
	 * userData = user data to pass to comparison function
	 * Returns: the new head of list
	 */
	public ListG sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// GList * g_list_sort_with_data (GList *list,  GCompareDataFunc compare_func,  gpointer user_data);
		auto p = g_list_sort_with_data(gList, compareFunc, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Adds the second GList onto the end of the first GList.
	 * Note that the elements of the second GList are not copied.
	 * They are used directly.
	 * Params:
	 * list2 = the GList to add to the end of the first GList
	 * Returns: the start of the new GList
	 */
	public ListG concat(ListG list2)
	{
		// GList * g_list_concat (GList *list1,  GList *list2);
		auto p = g_list_concat(gList, (list2 is null) ? null : list2.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Calls a function for each element of a GList.
	 * Params:
	 * func = the function to call with each element's data
	 * userData = user data to pass to the function
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_list_foreach (GList *list,  GFunc func,  gpointer user_data);
		g_list_foreach(gList, func, userData);
	}
	
	/**
	 * Gets the first element in a GList.
	 * Returns: the first element in the GList, or NULL if the GList has no elements
	 */
	public ListG first()
	{
		// GList * g_list_first (GList *list);
		auto p = g_list_first(gList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the last element in a GList.
	 * Returns: the last element in the GList, or NULL if the GList has no elements
	 */
	public ListG last()
	{
		// GList * g_list_last (GList *list);
		auto p = g_list_last(gList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the element at the given position in a GList.
	 * Params:
	 * n = the position of the element, counting from 0
	 * Returns: the element, or NULL if the position is off the end of the GList
	 */
	public ListG nth(uint n)
	{
		// GList * g_list_nth (GList *list,  guint n);
		auto p = g_list_nth(gList, n);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the data of the element at the given position.
	 * Params:
	 * n = the position of the element
	 * Returns: the element's data, or NULL if the position is off the end of the GList
	 */
	public void* nthData(uint n)
	{
		// gpointer g_list_nth_data (GList *list,  guint n);
		return g_list_nth_data(gList, n);
	}
	
	/**
	 * Gets the element n places before list.
	 * Params:
	 * n = the position of the element, counting from 0
	 * Returns: the element, or NULL if the position is off the end of the GList
	 */
	public ListG nthPrev(uint n)
	{
		// GList * g_list_nth_prev (GList *list,  guint n);
		auto p = g_list_nth_prev(gList, n);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Finds the element in a GList which
	 * contains the given data.
	 * Params:
	 * data = the element data to find
	 * Returns: the found GList element, or NULL if it is not found
	 */
	public ListG find(void* data)
	{
		// GList * g_list_find (GList *list,  gconstpointer data);
		auto p = g_list_find(gList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Finds an element in a GList, using a supplied function to
	 * find the desired element. It iterates over the list, calling
	 * the given function which should return 0 when the desired
	 * element is found. The function takes two gconstpointer arguments,
	 * the GList element's data as the first argument and the
	 * given user data.
	 * Params:
	 * data = user data passed to the function
	 * func = the function to call for each element.
	 * It should return 0 when the desired element is found
	 * Returns: the found GList element, or NULL if it is not found
	 */
	public ListG findCustom(void* data, GCompareFunc func)
	{
		// GList * g_list_find_custom (GList *list,  gconstpointer data,  GCompareFunc func);
		auto p = g_list_find_custom(gList, data, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the position of the given element
	 * in the GList (starting from 0).
	 * Params:
	 * llink = an element in the GList
	 * Returns: the position of the element in the GList, or -1 if the element is not found
	 */
	public int position(ListG llink)
	{
		// gint g_list_position (GList *list,  GList *llink);
		return g_list_position(gList, (llink is null) ? null : llink.getListGStruct());
	}
	
	/**
	 * Gets the position of the element containing
	 * the given data (starting from 0).
	 * Params:
	 * data = the data to find
	 * Returns: the index of the element containing the data, or -1 if the data is not found
	 */
	public int index(void* data)
	{
		// gint g_list_index (GList *list,  gconstpointer data);
		return g_list_index(gList, data);
	}
}
