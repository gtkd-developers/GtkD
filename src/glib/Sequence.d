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
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GSequence* -> Sequence
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Sequence;

public  import gtkc.glibtypes;

private import gtkc.glib;






/**
 * Description
 * The GSequence data structure has the API of a list, but is
 * implemented internally with a balanced binary tree. This means that it
 * is possible to maintain a sorted list of n elements in time O(n log
 * n). The data contained in each element can be either integer values, by
 * using of the
 * Type Conversion Macros,
 * or simply pointers to any type of data.
 * A GSequence is accessed through iterators,
 * represented by a GSequenceIter. An iterator represents a position
 * between two elements of the sequence. For example, the
 * begin iterator represents the gap immediately
 * before the first element of the sequence, and the
 * end iterator represents the gap immediately
 * after the last element. In an empty sequence, the begin and end
 * iterators are the same.
 * Some methods on GSequence operate on ranges of items. For example
 * g_sequence_foreach_range() will call a user-specified function on each
 * element with the given range. The range is delimited by the gaps
 * represented by the passed-in iterators, so if you pass in the begin
 * and end iterators, the range in question is the entire sequence.
 * The function g_sequence_get() is used with an iterator to access the
 * element immediately following the gap that the iterator
 * represents. The iterator is said to point to
 * that element.
 * Iterators are stable across most operations on a GSequence. For
 * example an iterator pointing to some element of a sequence will
 * continue to point to that element even after the sequence is
 * sorted. Even moving an element to another sequence using for example
 * g_sequence_move_range() will not invalidate the iterators pointing to
 * it. The only operation that will invalidate an iterator is when the
 * element it points to is removed from any sequence.
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
		if(gSequence is null)
		{
			this = null;
			return;
		}
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
	 * dataDestroy =  a GDestroyNotify function, or NULL
	 */
	public this (GDestroyNotify dataDestroy)
	{
		// GSequence* g_sequence_new (GDestroyNotify data_destroy);
		auto p = g_sequence_new(dataDestroy);
		if(p is null)
		{
			throw new Exception("Construction failure.");
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
	 * func =  the function to call for each item in seq
	 * userData =  user data passed to func
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
	 * begin =  a GSequenceIter
	 * end =  a GSequenceIter
	 * func =  a GFunc
	 * userData =  user data passed to func
	 */
	public static void foreachRange(GSequenceIter* begin, GSequenceIter* end, GFunc func, void* userData)
	{
		// void g_sequence_foreach_range (GSequenceIter *begin,  GSequenceIter *end,  GFunc func,  gpointer user_data);
		g_sequence_foreach_range(begin, end, func, userData);
	}
	
	/**
	 * Sorts seq using cmp_func.
	 * Since 2.14
	 * Params:
	 * cmpFunc =  the GCompareDataFunc used to sort seq. This function is
	 *  passed two items of seq and should return 0 if they are equal,
	 *  a negative value fi the first comes before the second, and a
	 *  positive value if the second comes before the first.
	 * cmpData =  user data passed to cmp_func
	 */
	public void sort(GCompareDataFunc cmpFunc, void* cmpData)
	{
		// void g_sequence_sort (GSequence *seq,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		g_sequence_sort(gSequence, cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_sort(), but uses a GSequenceIterCompareFunc instead
	 * of a GCompareDataFunc as the compare function
	 * Since 2.14
	 * Params:
	 * cmpFunc =  the GSequenceItercompare used to compare iterators in the
	 *  sequence. It is called with two iterators pointing into seq. It should
	 *  return 0 if the iterators are equal, a negative value if the first
	 *  iterator comes before the second, and a positive value if the second
	 *  iterator comes before the first.
	 * cmpData =  user data passed to cmp_func
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
	public GSequenceIter* getBeginIter()
	{
		// GSequenceIter* g_sequence_get_begin_iter (GSequence *seq);
		return g_sequence_get_begin_iter(gSequence);
	}
	
	/**
	 * Returns the end iterator for seg
	 * Since 2.14
	 * Returns: the end iterator for seq
	 */
	public GSequenceIter* getEndIter()
	{
		// GSequenceIter* g_sequence_get_end_iter (GSequence *seq);
		return g_sequence_get_end_iter(gSequence);
	}
	
	/**
	 * Returns the iterator at position pos. If pos is negative or larger
	 * than the number of items in seq, the end iterator is returned.
	 * Since 2.14
	 * Params:
	 * pos =  a position in seq, or -1 for the end.
	 * Returns: The GSequenceIter at position pos
	 */
	public GSequenceIter* getIterAtPos(int pos)
	{
		// GSequenceIter* g_sequence_get_iter_at_pos (GSequence *seq,  gint pos);
		return g_sequence_get_iter_at_pos(gSequence, pos);
	}
	
	/**
	 * Adds a new item to the end of seq.
	 * Since 2.14
	 * Params:
	 * data =  the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public GSequenceIter* append(void* data)
	{
		// GSequenceIter* g_sequence_append (GSequence *seq,  gpointer data);
		return g_sequence_append(gSequence, data);
	}
	
	/**
	 * Adds a new item to the front of seq
	 * Since 2.14
	 * Params:
	 * data =  the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public GSequenceIter* prepend(void* data)
	{
		// GSequenceIter* g_sequence_prepend (GSequence *seq,  gpointer data);
		return g_sequence_prepend(gSequence, data);
	}
	
	/**
	 * Inserts a new item just before the item pointed to by iter.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * data =  the data for the new item
	 * Returns: an iterator pointing to the new item
	 */
	public static GSequenceIter* insertBefore(GSequenceIter* iter, void* data)
	{
		// GSequenceIter* g_sequence_insert_before (GSequenceIter *iter,  gpointer data);
		return g_sequence_insert_before(iter, data);
	}
	
	/**
	 * Moves the item pointed to by src to the position indicated by dest.
	 * After calling this function dest will point to the position immediately
	 * after src. It is allowed for src and dest to point into different
	 * sequences.
	 * Since 2.14
	 * Params:
	 * src =  a GSequenceIter pointing to the item to move
	 * dest =  a GSequenceIter pointing to the position to which
	 *  the item is moved.
	 */
	public static void move(GSequenceIter* src, GSequenceIter* dest)
	{
		// void g_sequence_move (GSequenceIter *src,  GSequenceIter *dest);
		g_sequence_move(src, dest);
	}
	
	/**
	 * Swaps the items pointed to by a and b. It is allowed for a and b
	 * to point into difference sequences.
	 * Since 2.14
	 * Params:
	 * a =  a GSequenceIter
	 * b =  a GSequenceIter
	 */
	public static void swap(GSequenceIter* a, GSequenceIter* b)
	{
		// void g_sequence_swap (GSequenceIter *a,  GSequenceIter *b);
		g_sequence_swap(a, b);
	}
	
	/**
	 * Inserts data into sequence using func to determine the new position.
	 * The sequence must already be sorted according to cmp_func; otherwise the
	 * new position of data is undefined.
	 * Since 2.14
	 * Params:
	 * data =  the data to insert
	 * cmpFunc =  the GCompareDataFunc used to compare items in the sequence. It
	 *  is called with two items of the seq and user_data. It should
	 *  return 0 if the items are equal, a negative value if the first
	 *  item comes before the second, and a positive value if the second
	 *  item comes before the first.
	 * cmpData =  user data passed to cmp_func.
	 * Returns: a GSequenceIter pointing to the new item.
	 */
	public GSequenceIter* insertSorted(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// GSequenceIter* g_sequence_insert_sorted (GSequence *seq,  gpointer data,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		return g_sequence_insert_sorted(gSequence, data, cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_insert_sorted(), but uses
	 * a GSequenceIterCompareFunc instead of a GCompareDataFunc as
	 * the compare function.
	 * Since 2.14
	 * Params:
	 * data =  data for the new item
	 * iterCmp =  the GSequenceItercompare used to compare iterators in the
	 *  sequence. It is called with two iterators pointing into seq. It should
	 *  return 0 if the iterators are equal, a negative value if the first
	 *  iterator comes before the second, and a positive value if the second
	 *  iterator comes before the first.
	 * cmpData =  user data passed to cmp_func
	 * Returns: a GSequenceIter pointing to the new item
	 */
	public GSequenceIter* insertSortedIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// GSequenceIter* g_sequence_insert_sorted_iter (GSequence *seq,  gpointer data,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		return g_sequence_insert_sorted_iter(gSequence, data, iterCmp, cmpData);
	}
	
	/**
	 * Moves the data pointed to a new position as indicated by cmp_func. This
	 * function should be called for items in a sequence already sorted according
	 * to cmp_func whenever some aspect of an item changes so that cmp_func
	 * may return different values for that item.
	 * Since 2.14
	 * Params:
	 * iter =  A GSequenceIter
	 * cmpFunc =  the GCompareDataFunc used to compare items in the sequence. It
	 *  is called with two items of the seq and user_data. It should
	 *  return 0 if the items are equal, a negative value if the first
	 *  item comes before the second, and a positive value if the second
	 *  item comes before the first.
	 * cmpData =  user data passed to cmp_func.
	 */
	public static void sortChanged(GSequenceIter* iter, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// void g_sequence_sort_changed (GSequenceIter *iter,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		g_sequence_sort_changed(iter, cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_sort_changed(), but uses
	 * a GSequenceIterCompareFunc instead of a GCompareDataFunc as
	 * the compare function.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * iterCmp =  the GSequenceItercompare used to compare iterators in the
	 *  sequence. It is called with two iterators pointing into seq. It should
	 *  return 0 if the iterators are equal, a negative value if the first
	 *  iterator comes before the second, and a positive value if the second
	 *  iterator comes before the first.
	 * cmpData =  user data passed to cmp_func
	 */
	public static void sortChangedIter(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// void g_sequence_sort_changed_iter (GSequenceIter *iter,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		g_sequence_sort_changed_iter(iter, iterCmp, cmpData);
	}
	
	/**
	 * Removes the item pointed to by iter. It is an error to pass the
	 * end iterator to this function.
	 * If the sequnce has a data destroy function associated with it, this
	 * function is called on the data for the removed item.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 */
	public static void remove(GSequenceIter* iter)
	{
		// void g_sequence_remove (GSequenceIter *iter);
		g_sequence_remove(iter);
	}
	
	/**
	 * Removes all items in the (begin, end) range.
	 * If the sequence has a data destroy function associated with it, this
	 * function is called on the data for the removed items.
	 * Since 2.14
	 * Params:
	 * begin =  a GSequenceIter
	 * end =  a GSequenceIter
	 */
	public static void removeRange(GSequenceIter* begin, GSequenceIter* end)
	{
		// void g_sequence_remove_range (GSequenceIter *begin,  GSequenceIter *end);
		g_sequence_remove_range(begin, end);
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
	 * dest =  a GSequenceIter
	 * begin =  a GSequenceIter
	 * end =  a GSequenceIter
	 */
	public static void moveRange(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end)
	{
		// void g_sequence_move_range (GSequenceIter *dest,  GSequenceIter *begin,  GSequenceIter *end);
		g_sequence_move_range(dest, begin, end);
	}
	
	/**
	 * Returns an iterator pointing to the position where data would
	 * be inserted according to cmp_func and cmp_data.
	 * Since 2.14
	 * Params:
	 * data =  data for the new item
	 * cmpFunc =  the GCompareDataFunc used to compare items in the sequence. It
	 *  is called with two items of the seq and user_data. It should
	 *  return 0 if the items are equal, a negative value if the first
	 *  item comes before the second, and a positive value if the second
	 *  item comes before the first.
	 * cmpData =  user data passed to cmp_func.
	 * Returns: an GSequenceIter pointing to the position where datawould have been inserted according to cmp_func and cmp_data.
	 */
	public GSequenceIter* search(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		// GSequenceIter* g_sequence_search (GSequence *seq,  gpointer data,  GCompareDataFunc cmp_func,  gpointer cmp_data);
		return g_sequence_search(gSequence, data, cmpFunc, cmpData);
	}
	
	/**
	 * Like g_sequence_search(), but uses
	 * a GSequenceIterCompareFunc instead of a GCompareDataFunc as
	 * the compare function.
	 * Since 2.14
	 * Params:
	 * data =  data for the new item
	 * iterCmp =  the GSequenceIterCompare function used to compare iterators
	 *  in the sequence. It is called with two iterators pointing into seq.
	 *  It should return 0 if the iterators are equal, a negative value if the
	 *  first iterator comes before the second, and a positive value if the
	 *  second iterator comes before the first.
	 * cmpData =  user data passed to iter_cmp
	 * Returns: a GSequenceIter pointing to the position in seqwhere data would have been inserted according to iter_cmp and cmp_data.
	 */
	public GSequenceIter* searchIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		// GSequenceIter* g_sequence_search_iter (GSequence *seq,  gpointer data,  GSequenceIterCompareFunc iter_cmp,  gpointer cmp_data);
		return g_sequence_search_iter(gSequence, data, iterCmp, cmpData);
	}
	
	/**
	 * Returns the data that iter points to.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: the data that iter points to
	 */
	public static void* get(GSequenceIter* iter)
	{
		// gpointer g_sequence_get (GSequenceIter *iter);
		return g_sequence_get(iter);
	}
	
	/**
	 * Changes the data for the item pointed to by iter to be data. If
	 * the sequence has a data destroy function associated with it, that
	 * function is called on the existing data that iter pointed to.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * data =  new data for the item
	 */
	public static void set(GSequenceIter* iter, void* data)
	{
		// void g_sequence_set (GSequenceIter *iter,  gpointer data);
		g_sequence_set(iter, data);
	}
	
	/**
	 * Returns whether iter is the begin iterator
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: whether iter is the begin iterator
	 */
	public static int iterIsBegin(GSequenceIter* iter)
	{
		// gboolean g_sequence_iter_is_begin (GSequenceIter *iter);
		return g_sequence_iter_is_begin(iter);
	}
	
	/**
	 * Returns whether iter is the end iterator
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: Whether iter is the end iterator.
	 */
	public static int iterIsEnd(GSequenceIter* iter)
	{
		// gboolean g_sequence_iter_is_end (GSequenceIter *iter);
		return g_sequence_iter_is_end(iter);
	}
	
	/**
	 * Returns an iterator pointing to the next position after iter. If
	 * iter is the end iterator, the end iterator is returned.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: a GSequenceIter pointing to the next position after iter.
	 */
	public static GSequenceIter* iterNext(GSequenceIter* iter)
	{
		// GSequenceIter* g_sequence_iter_next (GSequenceIter *iter);
		return g_sequence_iter_next(iter);
	}
	
	/**
	 * Returns an iterator pointing to the previous position before iter. If
	 * iter is the begin iterator, the begin iterator is returned.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: a GSequenceIter pointing to the previous position beforeiter.
	 */
	public static GSequenceIter* iterPrev(GSequenceIter* iter)
	{
		// GSequenceIter* g_sequence_iter_prev (GSequenceIter *iter);
		return g_sequence_iter_prev(iter);
	}
	
	/**
	 * Returns the position of iter
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: the position of iter
	 */
	public static int iterGetPosition(GSequenceIter* iter)
	{
		// gint g_sequence_iter_get_position (GSequenceIter *iter);
		return g_sequence_iter_get_position(iter);
	}
	
	/**
	 * Returns the GSequenceIter which is delta positions away from iter.
	 * If iter is closer than -delta positions to the beginning of the sequence,
	 * the begin iterator is returned. If iter is closer than delta positions
	 * to the end of the sequence, the end iterator is returned.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * delta =  A positive or negative number indicating how many positions away
	 *  from iter the returned GSequenceIter will be.
	 * Returns: a GSequenceIter which is delta positions away from iter.
	 */
	public static GSequenceIter* iterMove(GSequenceIter* iter, int delta)
	{
		// GSequenceIter* g_sequence_iter_move (GSequenceIter *iter,  gint delta);
		return g_sequence_iter_move(iter, delta);
	}
	
	/**
	 * Returns the GSequence that iter points into.
	 * Since 2.14
	 * Params:
	 * iter =  a GSequenceIter
	 * Returns: the GSequence that iter points into.
	 */
	public static Sequence iterGetSequence(GSequenceIter* iter)
	{
		// GSequence* g_sequence_iter_get_sequence (GSequenceIter *iter);
		auto p = g_sequence_iter_get_sequence(iter);
		if(p is null)
		{
			return null;
		}
		return new Sequence(cast(GSequence*) p);
	}
	
	/**
	 * Returns a negative number if a comes before b, 0 if they are equal,
	 * and a positive number if a comes after b.
	 * The a and b iterators must point into the same sequence.
	 * Since 2.14
	 * Params:
	 * a =  a GSequenceIter
	 * b =  a GSequenceIter
	 * Returns: A negative number if a comes before b, 0 if they areequal, and a positive number if a comes after b.
	 */
	public static int iterCompare(GSequenceIter* a, GSequenceIter* b)
	{
		// gint g_sequence_iter_compare (GSequenceIter *a,  GSequenceIter *b);
		return g_sequence_iter_compare(a, b);
	}
	
	/**
	 * Finds an iterator somewhere in the range (begin, end). This
	 * iterator will be close to the middle of the range, but is not
	 * guaranteed to be exactly in the middle.
	 * The begin and end iterators must both point to the same sequence and
	 * begin must come before or be equal to end in the sequence.
	 * Since 2.14
	 * Params:
	 * begin =  a GSequenceIter
	 * end =  a GSequenceIter
	 * Returns: A GSequenceIter pointing somewhere in the(begin, end) range.
	 */
	public static GSequenceIter* rangeGetMidpoint(GSequenceIter* begin, GSequenceIter* end)
	{
		// GSequenceIter* g_sequence_range_get_midpoint (GSequenceIter *begin,  GSequenceIter *end);
		return g_sequence_range_get_midpoint(begin, end);
	}
}
