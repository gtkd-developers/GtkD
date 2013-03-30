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
 * inFile  = glib-Sequences.html
 * outPack = glib
 * outFile = Sequence
 * strct   = GSequence
 * realStrct=
 * ctorStrct=
 * clss    = Sequence
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_sequence_
 * omit structs:
 * omit prefixes:
 * 	- g_sequence_iter_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.SequenceIter
 * structWrap:
 * 	- GSequence* -> Sequence
 * 	- GSequenceIter* -> SequenceIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Sequence;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.SequenceIter;




/**
 * The GSequence data structure has the API of a list, but is
 * implemented internally with a balanced binary tree. This means that
 * it is possible to maintain a sorted list of n elements in time O(n
 * log n). The data contained in each element can be either integer
 * values, by using of the Type Conversion Macros,
 * or simply pointers to any type of data.
 *
 * A GSequence is accessed through iterators,
 * represented by a GSequenceIter. An iterator represents a position
 * between two elements of the sequence. For example, the
 * begin iterator represents the gap immediately
 * before the first element of the sequence, and the
 * end iterator represents the gap immediately
 * after the last element. In an empty sequence, the begin and end
 * iterators are the same.
 *
 * Some methods on GSequence operate on ranges of items. For example
 * g_sequence_foreach_range() will call a user-specified function on
 * each element with the given range. The range is delimited by the
 * gaps represented by the passed-in iterators, so if you pass in the
 * begin and end iterators, the range in question is the entire
 * sequence.
 *
 * The function g_sequence_get() is used with an iterator to access the
 * element immediately following the gap that the iterator represents.
 * The iterator is said to point to that element.
 *
 * Iterators are stable across most operations on a GSequence. For
 * example an iterator pointing to some element of a sequence will
 * continue to point to that element even after the sequence is sorted.
 * Even moving an element to another sequence using for example
 * g_sequence_move_range() will not invalidate the iterators pointing
 * to it. The only operation that will invalidate an iterator is when
 * the element it points to is removed from any sequence.
 */
public class Sequence
{
	
	/** the main Gtk struct */
	protected GSequence* gSequence;
	
	
	public GSequence* getSequenceStruct()
	{
		return gSequence;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSequence;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSequence* gSequence)
	{
		this.gSequence = gSequence;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GSequence. The data_destroy function, if non-NULL will
	 * be called on all items when the sequence is destroyed and on items that
	 * are removed from the sequence.
	 * Since 2.14
	 * Params:
	 * dataDestroy = a GDestroyNotify function, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GDestroyNotify dataDestroy)
	{
		// GSequence * g_sequence_new (GDestroyNotify data_destroy);
		auto p = g_sequence_new(dataDestroy);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_sequence_new(dataDestroy)");
		}
		this(cast(GSequence*) p);
	}
	
	/**
	 * Frees the memory allocated for seq. If seq has a data destroy
	 * function associated with it, that function is called on all items in
	 * seq.
	 * Since 2.14
	 */
	public void free()
	{
		// void g_sequence_free (GSequence *seq);
		g_sequence_free(gSequence);
	}
	
	/**
	 * Returns the length of seq
	 * Since 2.14
	 * Returns: the length of seq
	 */
	public int getLength()
	{
		// gint g_sequence_get_length (GSequence *seq);
		return g_sequence_get_length(gSequence);
	}
	
	/**
	 * Calls func for each item in the sequence passing user_data
	 * to the function.
	 * Since 2.14
	 * Params:
	 * func = the function to call for each item in seq
	 * userData = user data passed to func
	 */
	public void foreac(GFunc func, void* userData)
	{
		// void g_sequence_foreach (GSequence *seq,  GFunc func,  gpointer user_data);
		g_sequence_foreach(gSequence, func, userData);
	}
	
	/**
	 * Calls func for each item in the range (begin, end) passing
	 * user_data to the function.
	 * Since 2.14
	 * Params:
	 * begin = a GSequenceIter
	 * end = a GSequenceIter
	 * func = a GFunc
	 * userData = user data passed to func
	 */
	public static void foreachRange(SequenceIter begin, SequenceIter end, GFunc func, void* userData)
	{
		// void g_sequence_foreach_range (GSequenceIter *begin,  GSequenceIter *end,  GFunc func,  gpointer user_data);
		g_sequence_foreach_range((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct(), func, userData);
	}
	
	/**
	 * Sorts seq using cmp_func.
	 * cmp_func is passed two items of seq and should
	 * return 0 if they are equal, a negative value if the
	 * first comes before the second, and a positive value
	 * if the second comes before the first.
	 * Since 2.14
	 * Params:
	 * cmpFunc = the function used to sort the sequence
	 * cmpData = user data passed to cmp_func
	 */
	public void sort(GCompareDataFunc cmpFunc, void* cmpData)
	{
		// void g_sequence_sort (GSequence *seq,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		g_sequence_sort(gSequence, cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_sort(), but uses a GSequenceIterCompareFunc instead
	 * of a GCompareDataFunc as the compare function
	 * cmp_func is called with two iterators pointing into seq. It should
	 * return 0 if the iterators are equal, a negative value if the first
	 * iterator comes before the second, and a positive value if the second
	 * iterator comes before the first.
	 * Since 2.14
	 * Params:
	 * cmpFunc = the function used to compare iterators in the sequence
	 * cmpData = user data passed to cmp_func
	 */
	public void sortIter(GSequenceIterCompareFunc cmpFunc, void* cmpData)
	{
		// void g_sequence_sort_iter (GSequence *seq,  GSequenceIterCompareFunc cmp_func,  gpointer cmp_data);
		g_sequence_sort_iter(gSequence, cmpFunc, cmpData);
	}
	
	/**
	 * Returns the begin iterator for seq.
	 * Since 2.14
	 * Returns: the begin iterator for seq.
	 */
	public SequenceIter getBeginIter()
	{
		// GSequenceIter * g_sequence_get_begin_iter (GSequence *seq);
		auto p = g_sequence_get_begin_iter(gSequence);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns the end iterator for seg
	 * Since 2.14
	 * Returns: the end iterator for seq
	 */
	public SequenceIter getEndIter()
	{
		// GSequenceIter * g_sequence_get_end_iter (GSequence *seq);
		auto p = g_sequence_get_end_iter(gSequence);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns the iterator at position pos. If pos is negative or larger
	 * than the number of items in seq, the end iterator is returned.
	 * Since 2.14
	 * Params:
	 * pos = a position in seq, or -1 for the end.
	 * Returns: The GSequenceIter at position pos
	 */
	public SequenceIter getIterAtPos(int pos)
	{
		// GSequenceIter * g_sequence_get_iter_at_pos (GSequence *seq,  gint pos);
		auto p = g_sequence_get_iter_at_pos(gSequence, pos);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Adds a new item to the end of seq.
	 * Since 2.14
	 * Params:
	 * data = the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public SequenceIter append(void* data)
	{
		// GSequenceIter * g_sequence_append (GSequence *seq,  gpointer data);
		auto p = g_sequence_append(gSequence, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Adds a new item to the front of seq
	 * Since 2.14
	 * Params:
	 * data = the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public SequenceIter prepend(void* data)
	{
		// GSequenceIter * g_sequence_prepend (GSequence *seq,  gpointer data);
		auto p = g_sequence_prepend(gSequence, data);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Inserts a new item just before the item pointed to by iter.
	 * Since 2.14
	 * Params:
	 * iter = a GSequenceIter
	 * data = the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public static SequenceIter insertBefore(SequenceIter iter, void* data)
	{
		// GSequenceIter * g_sequence_insert_before (GSequenceIter *iter,  gpointer data);
		auto p = g_sequence_insert_before((iter is null) ? null : iter.getSequenceIterStruct(), data);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Moves the item pointed to by src to the position indicated by dest.
	 * After calling this function dest will point to the position immediately
	 * after src. It is allowed for src and dest to point into different
	 * sequences.
	 * Since 2.14
	 * Params:
	 * src = a GSequenceIter pointing to the item to move
	 * dest = a GSequenceIter pointing to the position to which
	 * the item is moved.
	 */
	public static void move(SequenceIter src, SequenceIter dest)
	{
		// void g_sequence_move (GSequenceIter *src,  GSequenceIter *dest);
		g_sequence_move((src is null) ? null : src.getSequenceIterStruct(), (dest is null) ? null : dest.getSequenceIterStruct());
	}
	
	/**
	 * Swaps the items pointed to by a and b. It is allowed for a and b
	 * to point into difference sequences.
	 * Since 2.14
	 * Params:
	 * a = a GSequenceIter
	 * b = a GSequenceIter
	 */
	public static void swap(SequenceIter a, SequenceIter b)
	{
		// void g_sequence_swap (GSequenceIter *a,  GSequenceIter *b);
		g_sequence_swap((a is null) ? null : a.getSequenceIterStruct(), (b is null) ? null : b.getSequenceIterStruct());
	}
	
	/**
	 * Inserts data into sequence using func to determine the new
	 * position. The sequence must already be sorted according to cmp_func;
	 * otherwise the new position of data is undefined.
	 * cmp_func is called with two items of the seq and user_data.
	 * It should return 0 if the items are equal, a negative value
	 * if the first item comes before the second, and a positive value
	 * if the second item comes before the first.
	 * Since 2.14
	 * Params:
	 * data = the data to insert
	 * cmpFunc = the function used to compare items in the sequence
	 * cmpData = user data passed to cmp_func.
	 * Returns: a GSequenceIter pointing to the new item.
	 */
	public SequenceIter insertSorted(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// GSequenceIter * g_sequence_insert_sorted (GSequence *seq,  gpointer data,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		auto p = g_sequence_insert_sorted(gSequence, data, cmpFunc, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Like g_sequence_insert_sorted(), but uses
	 * a GSequenceIterCompareFunc instead of a GCompareDataFunc as
	 * the compare function.
	 * iter_cmp is called with two iterators pointing into seq.
	 * It should return 0 if the iterators are equal, a negative
	 * value if the first iterator comes before the second, and a
	 * positive value if the second iterator comes before the first.
	 * It is called with two iterators pointing into seq. It should
	 * return 0 if the iterators are equal, a negative value if the
	 * first iterator comes before the second, and a positive value
	 * if the second iterator comes before the first.
	 * Since 2.14
	 * Params:
	 * data = data for the new item
	 * iterCmp = the function used to compare iterators in the sequence
	 * cmpData = user data passed to cmp_func
	 * Returns: a GSequenceIter pointing to the new item
	 */
	public SequenceIter insertSortedIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// GSequenceIter * g_sequence_insert_sorted_iter (GSequence *seq,  gpointer data,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		auto p = g_sequence_insert_sorted_iter(gSequence, data, iterCmp, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Moves the data pointed to a new position as indicated by cmp_func. This
	 * function should be called for items in a sequence already sorted according
	 * to cmp_func whenever some aspect of an item changes so that cmp_func
	 * may return different values for that item.
	 * cmp_func is called with two items of the seq and user_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 * Since 2.14
	 * Params:
	 * iter = A GSequenceIter
	 * cmpFunc = the function used to compare items in the sequence
	 * cmpData = user data passed to cmp_func.
	 */
	public static void sortChanged(SequenceIter iter, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// void g_sequence_sort_changed (GSequenceIter *iter,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		g_sequence_sort_changed((iter is null) ? null : iter.getSequenceIterStruct(), cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_sort_changed(), but uses
	 * a GSequenceIterCompareFunc instead of a GCompareDataFunc as
	 * the compare function.
	 * iter_cmp is called with two iterators pointing into seq. It should
	 * return 0 if the iterators are equal, a negative value if the first
	 * iterator comes before the second, and a positive value if the second
	 * iterator comes before the first.
	 * Since 2.14
	 * Params:
	 * iter = a GSequenceIter
	 * iterCmp = the function used to compare iterators in the sequence
	 * cmpData = user data passed to cmp_func
	 */
	public static void sortChangedIter(SequenceIter iter, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// void g_sequence_sort_changed_iter (GSequenceIter *iter,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		g_sequence_sort_changed_iter((iter is null) ? null : iter.getSequenceIterStruct(), iterCmp, cmpData);
	}
	
	/**
	 * Removes the item pointed to by iter. It is an error to pass the
	 * end iterator to this function.
	 * If the sequence has a data destroy function associated with it, this
	 * function is called on the data for the removed item.
	 * Since 2.14
	 * Params:
	 * iter = a GSequenceIter
	 */
	public static void remove(SequenceIter iter)
	{
		// void g_sequence_remove (GSequenceIter *iter);
		g_sequence_remove((iter is null) ? null : iter.getSequenceIterStruct());
	}
	
	/**
	 * Removes all items in the (begin, end) range.
	 * If the sequence has a data destroy function associated with it, this
	 * function is called on the data for the removed items.
	 * Since 2.14
	 * Params:
	 * begin = a GSequenceIter
	 * end = a GSequenceIter
	 */
	public static void removeRange(SequenceIter begin, SequenceIter end)
	{
		// void g_sequence_remove_range (GSequenceIter *begin,  GSequenceIter *end);
		g_sequence_remove_range((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());
	}
	
	/**
	 * Inserts the (begin, end) range at the destination pointed to by ptr.
	 * The begin and end iters must point into the same sequence. It is
	 * allowed for dest to point to a different sequence than the one pointed
	 * into by begin and end.
	 * If dest is NULL, the range indicated by begin and end is
	 * removed from the sequence. If dest iter points to a place within
	 * the (begin, end) range, the range does not move.
	 * Since 2.14
	 * Params:
	 * dest = a GSequenceIter
	 * begin = a GSequenceIter
	 * end = a GSequenceIter
	 */
	public static void moveRange(SequenceIter dest, SequenceIter begin, SequenceIter end)
	{
		// void g_sequence_move_range (GSequenceIter *dest,  GSequenceIter *begin,  GSequenceIter *end);
		g_sequence_move_range((dest is null) ? null : dest.getSequenceIterStruct(), (begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());
	}
	
	/**
	 * Returns an iterator pointing to the position where data would
	 * be inserted according to cmp_func and cmp_data.
	 * cmp_func is called with two items of the seq and user_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 * If you are simply searching for an existing element of the sequence,
	 * consider using g_sequence_lookup().
	 * Note
	 * This function will fail if the data contained in the sequence is
	 * unsorted. Use g_sequence_insert_sorted() or
	 * g_sequence_insert_sorted_iter() to add data to your sequence or, if
	 * you want to add a large amount of data, call g_sequence_sort() after
	 * doing unsorted insertions.
	 * Since 2.14
	 * Params:
	 * data = data for the new item
	 * cmpFunc = the function used to compare items in the sequence
	 * cmpData = user data passed to cmp_func.
	 * Returns: an GSequenceIter pointing to the position where data would have been inserted according to cmp_func and cmp_data.
	 */
	public SequenceIter search(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// GSequenceIter * g_sequence_search (GSequence *seq,  gpointer data,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		auto p = g_sequence_search(gSequence, data, cmpFunc, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Like g_sequence_search(), but uses a GSequenceIterCompareFunc
	 * instead of a GCompareDataFunc as the compare function.
	 * iter_cmp is called with two iterators pointing into seq.
	 * It should return 0 if the iterators are equal, a negative value
	 * if the first iterator comes before the second, and a positive
	 * value if the second iterator comes before the first.
	 * If you are simply searching for an existing element of the sequence,
	 * consider using g_sequence_lookup_iter().
	 * Note
	 * This function will fail if the data contained in the sequence is
	 * unsorted. Use g_sequence_insert_sorted() or
	 * g_sequence_insert_sorted_iter() to add data to your sequence or, if
	 * you want to add a large amount of data, call g_sequence_sort() after
	 * doing unsorted insertions.
	 * Since 2.14
	 * Params:
	 * data = data for the new item
	 * iterCmp = the function used to compare iterators in the sequence
	 * cmpData = user data passed to iter_cmp
	 * Returns: a GSequenceIter pointing to the position in seq where data would have been inserted according to iter_cmp and cmp_data.
	 */
	public SequenceIter searchIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// GSequenceIter * g_sequence_search_iter (GSequence *seq,  gpointer data,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		auto p = g_sequence_search_iter(gSequence, data, iterCmp, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns an iterator pointing to the position of the first item found
	 * equal to data according to cmp_func and cmp_data. If more than one
	 * item is equal, it is not guaranteed that it is the first which is
	 * returned. In that case, you can use g_sequence_iter_next() and
	 * g_sequence_iter_prev() to get others.
	 * cmp_func is called with two items of the seq and user_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 * Note
	 * This function will fail if the data contained in the sequence is
	 * unsorted. Use g_sequence_insert_sorted() or
	 * g_sequence_insert_sorted_iter() to add data to your sequence or, if
	 * you want to add a large amount of data, call g_sequence_sort() after
	 * doing unsorted insertions.
	 * Since 2.28
	 * Params:
	 * data = data to lookup
	 * cmpFunc = the function used to compare items in the sequence
	 * cmpData = user data passed to cmp_func.
	 * Returns: an GSequenceIter pointing to the position of the first item found equal to data according to cmp_func and cmp_data, or NULL if no such item exists.
	 */
	public SequenceIter lookup(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// GSequenceIter * g_sequence_lookup (GSequence *seq,  gpointer data,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		auto p = g_sequence_lookup(gSequence, data, cmpFunc, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Like g_sequence_lookup(), but uses a GSequenceIterCompareFunc
	 * instead of a GCompareDataFunc as the compare function.
	 * iter_cmp is called with two iterators pointing into seq.
	 * It should return 0 if the iterators are equal, a negative value
	 * if the first iterator comes before the second, and a positive
	 * value if the second iterator comes before the first.
	 * Note
	 * This function will fail if the data contained in the sequence is
	 * unsorted. Use g_sequence_insert_sorted() or
	 * g_sequence_insert_sorted_iter() to add data to your sequence or, if
	 * you want to add a large amount of data, call g_sequence_sort() after
	 * doing unsorted insertions.
	 * Since 2.28
	 * Params:
	 * data = data to lookup
	 * iterCmp = the function used to compare iterators in the sequence
	 * cmpData = user data passed to iter_cmp
	 * Returns: an GSequenceIter pointing to the position of the first item found equal to data according to cmp_func and cmp_data, or NULL if no such item exists.
	 */
	public SequenceIter lookupIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// GSequenceIter * g_sequence_lookup_iter (GSequence *seq,  gpointer data,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		auto p = g_sequence_lookup_iter(gSequence, data, iterCmp, cmpData);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns the data that iter points to.
	 * Since 2.14
	 * Params:
	 * iter = a GSequenceIter
	 * Returns: the data that iter points to
	 */
	public static void* get(SequenceIter iter)
	{
		// gpointer g_sequence_get (GSequenceIter *iter);
		return g_sequence_get((iter is null) ? null : iter.getSequenceIterStruct());
	}
	
	/**
	 * Changes the data for the item pointed to by iter to be data. If
	 * the sequence has a data destroy function associated with it, that
	 * function is called on the existing data that iter pointed to.
	 * Since 2.14
	 * Params:
	 * iter = a GSequenceIter
	 * data = new data for the item
	 */
	public static void set(SequenceIter iter, void* data)
	{
		// void g_sequence_set (GSequenceIter *iter,  gpointer data);
		g_sequence_set((iter is null) ? null : iter.getSequenceIterStruct(), data);
	}
	
	/**
	 * Finds an iterator somewhere in the range (begin, end). This
	 * iterator will be close to the middle of the range, but is not
	 * guaranteed to be exactly in the middle.
	 * The begin and end iterators must both point to the same sequence and
	 * begin must come before or be equal to end in the sequence.
	 * Since 2.14
	 * Params:
	 * begin = a GSequenceIter
	 * end = a GSequenceIter
	 * Returns: A GSequenceIter pointing somewhere in the (begin, end) range.
	 */
	public static SequenceIter rangeGetMidpoint(SequenceIter begin, SequenceIter end)
	{
		// GSequenceIter * g_sequence_range_get_midpoint (GSequenceIter *begin,  GSequenceIter *end);
		auto p = g_sequence_range_get_midpoint((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
}
