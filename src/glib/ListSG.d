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
 * inFile  = glib-Singly-Linked-Lists.html
 * outPack = glib
 * outFile = ListSG
 * strct   = GSList
 * realStrct=
 * ctorStrct=
 * clss    = ListSG
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_slist_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GSList* -> ListSG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.ListSG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * Description
 * The GSList structure and its associated functions provide a
 * standard singly-linked list data structure.
 * Each element in the list contains a piece of data, together with a
 * pointer which links to the next element in the list. Using this
 * pointer it is possible to move through the list in one direction
 * only (unlike the Doubly-Linked Lists which
 * allow movement in both directions).
 * The data contained in each element can be either integer values, by
 * using one of the Type
 * Conversion Macros, or simply pointers to any type of data.
 * List elements are allocated from the slice allocator, which is more
 * efficient than allocating elements individually.
 * Note that most of the GSList functions expect to be passed a
 * pointer to the first element in the list. The functions which insert
 * elements return the new start of the list, which may have changed.
 * There is no function to create a GSList. NULL is considered to be
 * the empty list so you simply set a GSList* to NULL.
 * To add elements, use g_slist_append(), g_slist_prepend(),
 * g_slist_insert() and g_slist_insert_sorted().
 * To remove elements, use g_slist_remove().
 * To find elements in the list use g_slist_last(), g_slist_next(),
 * g_slist_nth(), g_slist_nth_data(), g_slist_find() and
 * g_slist_find_custom().
 * To find the index of an element use g_slist_position() and
 * g_slist_index().
 * To call a function for each element in the list use
 * g_slist_foreach().
 * To free the entire list, use g_slist_free().
 */
public class ListSG
{
	
	/** the main Gtk struct */
	protected GSList* gSList;
	
	
	public GSList* getListSGStruct()
	{
		return gSList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSList* gSList)
	{
		this.gSList = gSList;
	}
	
	/** */
	void* data()
	{
		return getListSGStruct().data;
	}
	
	/**
	 * get the next element
	 * Returns: the next element, or NULL if there are no more elements.
	 */
	ListSG next()
	{
		return new ListSG(getListSGStruct().next);
	}
	
	/**
	 */
	
	/**
	 * Allocates space for one GSList element. It is called by the
	 * g_slist_append(), g_slist_prepend(), g_slist_insert() and
	 * g_slist_insert_sorted() functions and so is rarely used on its own.
	 * Returns: a pointer to the newly-allocated GSList element.
	 */
	public static ListSG alloc()
	{
		// GSList * g_slist_alloc (void);
		auto p = g_slist_alloc();
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Adds a new element on to the end of the list.
	 * Note
	 * The return value is the new start of the list, which may
	 * have changed, so make sure you store the new value.
	 * Note
	 * Note that g_slist_append() has to traverse the entire list
	 * to find the end, which is inefficient when adding multiple
	 * elements. A common idiom to avoid the inefficiency is to prepend
	 * the elements and reverse the list when all elements have been added.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * data = the data for the new element
	 * Returns: the new start of the GSList
	 */
	public ListSG append(void* data)
	{
		// GSList * g_slist_append (GSList *list,  gpointer data);
		auto p = g_slist_append(gSList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Adds a new element on to the start of the list.
	 * Note
	 * The return value is the new start of the list, which
	 * may have changed, so make sure you store the new value.
	 * $(DDOC_COMMENT example)
	 * Params:
	 * data = the data for the new element
	 * Returns: the new start of the GSList
	 */
	public ListSG prepend(void* data)
	{
		// GSList * g_slist_prepend (GSList *list,  gpointer data);
		auto p = g_slist_prepend(gSList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Inserts a new element into the list at the given position.
	 * Params:
	 * data = the data for the new element
	 * position = the position to insert the element.
	 * If this is negative, or is larger than the number
	 * of elements in the list, the new element is added on
	 * to the end of the list.
	 * Returns: the new start of the GSList
	 */
	public ListSG insert(void* data, int position)
	{
		// GSList * g_slist_insert (GSList *list,  gpointer data,  gint position);
		auto p = g_slist_insert(gSList, data, position);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Inserts a node before sibling containing data.
	 * Params:
	 * sibling = node to insert data before
	 * data = data to put in the newly-inserted node
	 * Returns: the new head of the list.
	 */
	public ListSG insertBefore(ListSG sibling, void* data)
	{
		// GSList * g_slist_insert_before (GSList *slist,  GSList *sibling,  gpointer data);
		auto p = g_slist_insert_before(gSList, (sibling is null) ? null : sibling.getListSGStruct(), data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Inserts a new element into the list, using the given
	 * comparison function to determine its position.
	 * Params:
	 * data = the data for the new element
	 * func = the function to compare elements in the list.
	 * It should return a number > 0 if the first parameter
	 * comes after the second parameter in the sort order.
	 * Returns: the new start of the GSList
	 */
	public ListSG insertSorted(void* data, GCompareFunc func)
	{
		// GSList * g_slist_insert_sorted (GSList *list,  gpointer data,  GCompareFunc func);
		auto p = g_slist_insert_sorted(gSList, data, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Removes an element from a GSList.
	 * If two elements contain the same data, only the first is removed.
	 * If none of the elements contain the data, the GSList is unchanged.
	 * Params:
	 * data = the data of the element to remove
	 * Returns: the new start of the GSList
	 */
	public ListSG remove(void* data)
	{
		// GSList * g_slist_remove (GSList *list,  gconstpointer data);
		auto p = g_slist_remove(gSList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Removes an element from a GSList, without
	 * freeing the element. The removed element's next
	 * link is set to NULL, so that it becomes a
	 * self-contained list with one element.
	 * Note
	 * Removing arbitrary nodes from a singly-linked list
	 * requires time that is proportional to the length of the list
	 * (ie. O(n)). If you find yourself using g_slist_remove_link()
	 * frequently, you should consider a different data structure, such
	 * as the doubly-linked GList.
	 * Params:
	 * link = an element in the GSList
	 * Returns: the new start of the GSList, without the element
	 */
	public ListSG removeLink(ListSG link)
	{
		// GSList * g_slist_remove_link (GSList *list,  GSList *link_);
		auto p = g_slist_remove_link(gSList, (link is null) ? null : link.getListSGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Removes the node link_ from the list and frees it.
	 * Compare this to g_slist_remove_link() which removes the node
	 * without freeing it.
	 * Note
	 * Removing arbitrary nodes from a singly-linked list
	 * requires time that is proportional to the length of the list
	 * (ie. O(n)). If you find yourself using g_slist_delete_link()
	 * frequently, you should consider a different data structure, such
	 * as the doubly-linked GList.
	 * Params:
	 * link = node to delete
	 * Returns: the new head of list
	 */
	public ListSG deleteLink(ListSG link)
	{
		// GSList * g_slist_delete_link (GSList *list,  GSList *link_);
		auto p = g_slist_delete_link(gSList, (link is null) ? null : link.getListSGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Removes all list nodes with data equal to data.
	 * Returns the new head of the list. Contrast with
	 * g_slist_remove() which removes only the first node
	 * matching the given data.
	 * Params:
	 * data = data to remove
	 * Returns: new head of list
	 */
	public ListSG removeAll(void* data)
	{
		// GSList * g_slist_remove_all (GSList *list,  gconstpointer data);
		auto p = g_slist_remove_all(gSList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Frees all of the memory used by a GSList.
	 * The freed elements are returned to the slice allocator.
	 * Note
	 * If list elements contain dynamically-allocated memory,
	 * you should either use g_slist_free_full() or free them manually
	 * first.
	 */
	public void free()
	{
		// void g_slist_free (GSList *list);
		g_slist_free(gSList);
	}
	
	/**
	 * Convenience method, which frees all the memory used by a GSList, and
	 * calls the specified destroy function on every element's data.
	 * Since 2.28
	 * Params:
	 * freeFunc = the function to be called to free each element's data
	 */
	public void freeFull(GDestroyNotify freeFunc)
	{
		// void g_slist_free_full (GSList *list,  GDestroyNotify free_func);
		g_slist_free_full(gSList, freeFunc);
	}
	
	/**
	 * Frees one GSList element.
	 * It is usually used after g_slist_remove_link().
	 */
	public void free1()
	{
		// void g_slist_free_1 (GSList *list);
		g_slist_free_1(gSList);
	}
	
	/**
	 * Gets the number of elements in a GSList.
	 * Note
	 * This function iterates over the whole list to
	 * count its elements.
	 * Returns: the number of elements in the GSList
	 */
	public uint length()
	{
		// guint g_slist_length (GSList *list);
		return g_slist_length(gSList);
	}
	
	/**
	 * Copies a GSList.
	 * Note
	 * Note that this is a "shallow" copy. If the list elements
	 * consist of pointers to data, the pointers are copied but
	 * the actual data isn't. See g_slist_copy_deep() if you need
	 * to copy the data as well.
	 * Returns: a copy of list
	 */
	public ListSG copy()
	{
		// GSList * g_slist_copy (GSList *list);
		auto p = g_slist_copy(gSList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Makes a full (deep) copy of a GSList.
	 * In contrast with g_slist_copy(), this function uses func to make a copy of
	 * each list element, in addition to copying the list container itself.
	 * func, as a GCopyFunc, takes two arguments, the data to be copied and a user
	 * pointer. It's safe to pass NULL as user_data, if the copy function takes only
	 * one argument.
	 * Since 2.34
	 * Params:
	 * func = a copy function used to copy every element in the list
	 * userData = user data passed to the copy function func, or NULL
	 * Returns: a full copy of list, use g_slist_free_full to free it
	 */
	public ListSG copyDeep(GCopyFunc func, void* userData)
	{
		// GSList * g_slist_copy_deep (GSList *list,  GCopyFunc func,  gpointer user_data);
		auto p = g_slist_copy_deep(gSList, func, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Reverses a GSList.
	 * Returns: the start of the reversed GSList
	 */
	public ListSG reverse()
	{
		// GSList * g_slist_reverse (GSList *list);
		auto p = g_slist_reverse(gSList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Inserts a new element into the list, using the given
	 * comparison function to determine its position.
	 * Since 2.10
	 * Params:
	 * data = the data for the new element
	 * func = the function to compare elements in the list.
	 * It should return a number > 0 if the first parameter
	 * comes after the second parameter in the sort order.
	 * userData = data to pass to comparison function
	 * Returns: the new start of the GSList
	 */
	public ListSG insertSortedWithData(void* data, GCompareDataFunc func, void* userData)
	{
		// GSList * g_slist_insert_sorted_with_data (GSList *list,  gpointer data,  GCompareDataFunc func,  gpointer user_data);
		auto p = g_slist_insert_sorted_with_data(gSList, data, func, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Sorts a GSList using the given comparison function.
	 * Params:
	 * compareFunc = the comparison function used to sort the GSList.
	 * This function is passed the data from 2 elements of the GSList
	 * and should return 0 if they are equal, a negative value if the
	 * first element comes before the second, or a positive value if
	 * the first element comes after the second.
	 * Returns: the start of the sorted GSList
	 */
	public ListSG sort(GCompareFunc compareFunc)
	{
		// GSList * g_slist_sort (GSList *list,  GCompareFunc compare_func);
		auto p = g_slist_sort(gSList, compareFunc);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Like g_slist_sort(), but the sort function accepts a user data argument.
	 * Params:
	 * compareFunc = comparison function
	 * userData = data to pass to comparison function
	 * Returns: new head of the list
	 */
	public ListSG sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// GSList * g_slist_sort_with_data (GSList *list,  GCompareDataFunc compare_func,  gpointer user_data);
		auto p = g_slist_sort_with_data(gSList, compareFunc, userData);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Adds the second GSList onto the end of the first GSList.
	 * Note that the elements of the second GSList are not copied.
	 * They are used directly.
	 * Params:
	 * list2 = the GSList to add to the end of the first GSList
	 * Returns: the start of the new GSList
	 */
	public ListSG concat(ListSG list2)
	{
		// GSList * g_slist_concat (GSList *list1,  GSList *list2);
		auto p = g_slist_concat(gSList, (list2 is null) ? null : list2.getListSGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Calls a function for each element of a GSList.
	 * Params:
	 * func = the function to call with each element's data
	 * userData = user data to pass to the function
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_slist_foreach (GSList *list,  GFunc func,  gpointer user_data);
		g_slist_foreach(gSList, func, userData);
	}
	
	/**
	 * Gets the last element in a GSList.
	 * Note
	 * This function iterates over the whole list.
	 * Returns: the last element in the GSList, or NULL if the GSList has no elements
	 */
	public ListSG last()
	{
		// GSList * g_slist_last (GSList *list);
		auto p = g_slist_last(gSList);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Gets the element at the given position in a GSList.
	 * Params:
	 * n = the position of the element, counting from 0
	 * Returns: the element, or NULL if the position is off the end of the GSList
	 */
	public ListSG nth(uint n)
	{
		// GSList * g_slist_nth (GSList *list,  guint n);
		auto p = g_slist_nth(gSList, n);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Gets the data of the element at the given position.
	 * Params:
	 * n = the position of the element
	 * Returns: the element's data, or NULL if the position is off the end of the GSList
	 */
	public void* nthData(uint n)
	{
		// gpointer g_slist_nth_data (GSList *list,  guint n);
		return g_slist_nth_data(gSList, n);
	}
	
	/**
	 * Finds the element in a GSList which
	 * contains the given data.
	 * Params:
	 * data = the element data to find
	 * Returns: the found GSList element, or NULL if it is not found
	 */
	public ListSG find(void* data)
	{
		// GSList * g_slist_find (GSList *list,  gconstpointer data);
		auto p = g_slist_find(gSList, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Finds an element in a GSList, using a supplied function to
	 * find the desired element. It iterates over the list, calling
	 * the given function which should return 0 when the desired
	 * element is found. The function takes two gconstpointer arguments,
	 * the GSList element's data as the first argument and the
	 * given user data.
	 * Params:
	 * data = user data passed to the function
	 * func = the function to call for each element.
	 * It should return 0 when the desired element is found
	 * Returns: the found GSList element, or NULL if it is not found
	 */
	public ListSG findCustom(void* data, GCompareFunc func)
	{
		// GSList * g_slist_find_custom (GSList *list,  gconstpointer data,  GCompareFunc func);
		auto p = g_slist_find_custom(gSList, data, func);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Gets the position of the given element
	 * in the GSList (starting from 0).
	 * Params:
	 * llink = an element in the GSList
	 * Returns: the position of the element in the GSList, or -1 if the element is not found
	 */
	public int position(ListSG llink)
	{
		// gint g_slist_position (GSList *list,  GSList *llink);
		return g_slist_position(gSList, (llink is null) ? null : llink.getListSGStruct());
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
		// gint g_slist_index (GSList *list,  gconstpointer data);
		return g_slist_index(gSList, data);
	}
}
