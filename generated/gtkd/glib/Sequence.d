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


module glib.Sequence;

private import glib.ConstructionException;
private import glib.SequenceIter;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The #GSequence struct is an opaque data type representing a
 * [sequence][glib-Sequences] data type.
 */
public class Sequence
{
	/** the main Gtk struct */
	protected GSequence* gSequence;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSequence* getSequenceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSequence;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSequence;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSequence* gSequence, bool ownedRef = false)
	{
		this.gSequence = gSequence;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_sequence_free(gSequence);
	}


	/**
	 * Adds a new item to the end of @seq.
	 *
	 * Params:
	 *     data = the data for the new item
	 *
	 * Returns: an iterator pointing to the new item
	 *
	 * Since: 2.14
	 */
	public SequenceIter append(void* data)
	{
		auto __p = g_sequence_append(gSequence, data);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	alias foreac = foreach_;
	/**
	 * Calls @func for each item in the sequence passing @user_data
	 * to the function. @func must not modify the sequence itself.
	 *
	 * Params:
	 *     func = the function to call for each item in @seq
	 *     userData = user data passed to @func
	 *
	 * Since: 2.14
	 */
	public void foreach_(GFunc func, void* userData)
	{
		g_sequence_foreach(gSequence, func, userData);
	}

	/**
	 * Frees the memory allocated for @seq. If @seq has a data destroy
	 * function associated with it, that function is called on all items
	 * in @seq.
	 *
	 * Since: 2.14
	 */
	public void free()
	{
		g_sequence_free(gSequence);
		ownedRef = false;
	}

	/**
	 * Returns the begin iterator for @seq.
	 *
	 * Returns: the begin iterator for @seq.
	 *
	 * Since: 2.14
	 */
	public SequenceIter getBeginIter()
	{
		auto __p = g_sequence_get_begin_iter(gSequence);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Returns the end iterator for @seg
	 *
	 * Returns: the end iterator for @seq
	 *
	 * Since: 2.14
	 */
	public SequenceIter getEndIter()
	{
		auto __p = g_sequence_get_end_iter(gSequence);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Returns the iterator at position @pos. If @pos is negative or larger
	 * than the number of items in @seq, the end iterator is returned.
	 *
	 * Params:
	 *     pos = a position in @seq, or -1 for the end
	 *
	 * Returns: The #GSequenceIter at position @pos
	 *
	 * Since: 2.14
	 */
	public SequenceIter getIterAtPos(int pos)
	{
		auto __p = g_sequence_get_iter_at_pos(gSequence, pos);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Returns the positive length (>= 0) of @seq. Note that this method is
	 * O(h) where `h' is the height of the tree. It is thus more efficient
	 * to use g_sequence_is_empty() when comparing the length to zero.
	 *
	 * Returns: the length of @seq
	 *
	 * Since: 2.14
	 */
	public int getLength()
	{
		return g_sequence_get_length(gSequence);
	}

	/**
	 * Inserts @data into @seq using @cmp_func to determine the new
	 * position. The sequence must already be sorted according to @cmp_func;
	 * otherwise the new position of @data is undefined.
	 *
	 * @cmp_func is called with two items of the @seq, and @cmp_data.
	 * It should return 0 if the items are equal, a negative value
	 * if the first item comes before the second, and a positive value
	 * if the second item comes before the first.
	 *
	 * Note that when adding a large amount of data to a #GSequence,
	 * it is more efficient to do unsorted insertions and then call
	 * g_sequence_sort() or g_sequence_sort_iter().
	 *
	 * Params:
	 *     data = the data to insert
	 *     cmpFunc = the function used to compare items in the sequence
	 *     cmpData = user data passed to @cmp_func.
	 *
	 * Returns: a #GSequenceIter pointing to the new item.
	 *
	 * Since: 2.14
	 */
	public SequenceIter insertSorted(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		auto __p = g_sequence_insert_sorted(gSequence, data, cmpFunc, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Like g_sequence_insert_sorted(), but uses
	 * a #GSequenceIterCompareFunc instead of a #GCompareDataFunc as
	 * the compare function.
	 *
	 * @iter_cmp is called with two iterators pointing into @seq.
	 * It should return 0 if the iterators are equal, a negative
	 * value if the first iterator comes before the second, and a
	 * positive value if the second iterator comes before the first.
	 *
	 * Note that when adding a large amount of data to a #GSequence,
	 * it is more efficient to do unsorted insertions and then call
	 * g_sequence_sort() or g_sequence_sort_iter().
	 *
	 * Params:
	 *     data = data for the new item
	 *     iterCmp = the function used to compare iterators in the sequence
	 *     cmpData = user data passed to @iter_cmp
	 *
	 * Returns: a #GSequenceIter pointing to the new item
	 *
	 * Since: 2.14
	 */
	public SequenceIter insertSortedIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		auto __p = g_sequence_insert_sorted_iter(gSequence, data, iterCmp, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Returns %TRUE if the sequence contains zero items.
	 *
	 * This function is functionally identical to checking the result of
	 * g_sequence_get_length() being equal to zero. However this function is
	 * implemented in O(1) running time.
	 *
	 * Returns: %TRUE if the sequence is empty, otherwise %FALSE.
	 *
	 * Since: 2.48
	 */
	public bool isEmpty()
	{
		return g_sequence_is_empty(gSequence) != 0;
	}

	/**
	 * Returns an iterator pointing to the position of the first item found
	 * equal to @data according to @cmp_func and @cmp_data. If more than one
	 * item is equal, it is not guaranteed that it is the first which is
	 * returned. In that case, you can use g_sequence_iter_next() and
	 * g_sequence_iter_prev() to get others.
	 *
	 * @cmp_func is called with two items of the @seq, and @cmp_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 *
	 * This function will fail if the data contained in the sequence is
	 * unsorted.
	 *
	 * Params:
	 *     data = data to look up
	 *     cmpFunc = the function used to compare items in the sequence
	 *     cmpData = user data passed to @cmp_func
	 *
	 * Returns: an #GSequenceIter pointing to the position of the
	 *     first item found equal to @data according to @cmp_func and
	 *     @cmp_data, or %NULL if no such item exists
	 *
	 * Since: 2.28
	 */
	public SequenceIter lookup(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		auto __p = g_sequence_lookup(gSequence, data, cmpFunc, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Like g_sequence_lookup(), but uses a #GSequenceIterCompareFunc
	 * instead of a #GCompareDataFunc as the compare function.
	 *
	 * @iter_cmp is called with two iterators pointing into @seq.
	 * It should return 0 if the iterators are equal, a negative value
	 * if the first iterator comes before the second, and a positive
	 * value if the second iterator comes before the first.
	 *
	 * This function will fail if the data contained in the sequence is
	 * unsorted.
	 *
	 * Params:
	 *     data = data to look up
	 *     iterCmp = the function used to compare iterators in the sequence
	 *     cmpData = user data passed to @iter_cmp
	 *
	 * Returns: an #GSequenceIter pointing to the position of
	 *     the first item found equal to @data according to @iter_cmp
	 *     and @cmp_data, or %NULL if no such item exists
	 *
	 * Since: 2.28
	 */
	public SequenceIter lookupIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		auto __p = g_sequence_lookup_iter(gSequence, data, iterCmp, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Adds a new item to the front of @seq
	 *
	 * Params:
	 *     data = the data for the new item
	 *
	 * Returns: an iterator pointing to the new item
	 *
	 * Since: 2.14
	 */
	public SequenceIter prepend(void* data)
	{
		auto __p = g_sequence_prepend(gSequence, data);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Returns an iterator pointing to the position where @data would
	 * be inserted according to @cmp_func and @cmp_data.
	 *
	 * @cmp_func is called with two items of the @seq, and @cmp_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 *
	 * If you are simply searching for an existing element of the sequence,
	 * consider using g_sequence_lookup().
	 *
	 * This function will fail if the data contained in the sequence is
	 * unsorted.
	 *
	 * Params:
	 *     data = data for the new item
	 *     cmpFunc = the function used to compare items in the sequence
	 *     cmpData = user data passed to @cmp_func
	 *
	 * Returns: an #GSequenceIter pointing to the position where @data
	 *     would have been inserted according to @cmp_func and @cmp_data
	 *
	 * Since: 2.14
	 */
	public SequenceIter search(void* data, GCompareDataFunc cmpFunc, void* cmpData)
	{
		auto __p = g_sequence_search(gSequence, data, cmpFunc, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Like g_sequence_search(), but uses a #GSequenceIterCompareFunc
	 * instead of a #GCompareDataFunc as the compare function.
	 *
	 * @iter_cmp is called with two iterators pointing into @seq.
	 * It should return 0 if the iterators are equal, a negative value
	 * if the first iterator comes before the second, and a positive
	 * value if the second iterator comes before the first.
	 *
	 * If you are simply searching for an existing element of the sequence,
	 * consider using g_sequence_lookup_iter().
	 *
	 * This function will fail if the data contained in the sequence is
	 * unsorted.
	 *
	 * Params:
	 *     data = data for the new item
	 *     iterCmp = the function used to compare iterators in the sequence
	 *     cmpData = user data passed to @iter_cmp
	 *
	 * Returns: a #GSequenceIter pointing to the position in @seq
	 *     where @data would have been inserted according to @iter_cmp
	 *     and @cmp_data
	 *
	 * Since: 2.14
	 */
	public SequenceIter searchIter(void* data, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		auto __p = g_sequence_search_iter(gSequence, data, iterCmp, cmpData);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Sorts @seq using @cmp_func.
	 *
	 * @cmp_func is passed two items of @seq and should
	 * return 0 if they are equal, a negative value if the
	 * first comes before the second, and a positive value
	 * if the second comes before the first.
	 *
	 * Params:
	 *     cmpFunc = the function used to sort the sequence
	 *     cmpData = user data passed to @cmp_func
	 *
	 * Since: 2.14
	 */
	public void sort(GCompareDataFunc cmpFunc, void* cmpData)
	{
		g_sequence_sort(gSequence, cmpFunc, cmpData);
	}

	/**
	 * Like g_sequence_sort(), but uses a #GSequenceIterCompareFunc instead
	 * of a #GCompareDataFunc as the compare function
	 *
	 * @cmp_func is called with two iterators pointing into @seq. It should
	 * return 0 if the iterators are equal, a negative value if the first
	 * iterator comes before the second, and a positive value if the second
	 * iterator comes before the first.
	 *
	 * Params:
	 *     cmpFunc = the function used to compare iterators in the sequence
	 *     cmpData = user data passed to @cmp_func
	 *
	 * Since: 2.14
	 */
	public void sortIter(GSequenceIterCompareFunc cmpFunc, void* cmpData)
	{
		g_sequence_sort_iter(gSequence, cmpFunc, cmpData);
	}

	/**
	 * Calls @func for each item in the range (@begin, @end) passing
	 * @user_data to the function. @func must not modify the sequence
	 * itself.
	 *
	 * Params:
	 *     begin = a #GSequenceIter
	 *     end = a #GSequenceIter
	 *     func = a #GFunc
	 *     userData = user data passed to @func
	 *
	 * Since: 2.14
	 */
	public static void foreachRange(SequenceIter begin, SequenceIter end, GFunc func, void* userData)
	{
		g_sequence_foreach_range((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct(), func, userData);
	}

	/**
	 * Returns the data that @iter points to.
	 *
	 * Params:
	 *     iter = a #GSequenceIter
	 *
	 * Returns: the data that @iter points to
	 *
	 * Since: 2.14
	 */
	public static void* get(SequenceIter iter)
	{
		return g_sequence_get((iter is null) ? null : iter.getSequenceIterStruct());
	}

	/**
	 * Inserts a new item just before the item pointed to by @iter.
	 *
	 * Params:
	 *     iter = a #GSequenceIter
	 *     data = the data for the new item
	 *
	 * Returns: an iterator pointing to the new item
	 *
	 * Since: 2.14
	 */
	public static SequenceIter insertBefore(SequenceIter iter, void* data)
	{
		auto __p = g_sequence_insert_before((iter is null) ? null : iter.getSequenceIterStruct(), data);

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Moves the item pointed to by @src to the position indicated by @dest.
	 * After calling this function @dest will point to the position immediately
	 * after @src. It is allowed for @src and @dest to point into different
	 * sequences.
	 *
	 * Params:
	 *     src = a #GSequenceIter pointing to the item to move
	 *     dest = a #GSequenceIter pointing to the position to which
	 *         the item is moved
	 *
	 * Since: 2.14
	 */
	public static void move(SequenceIter src, SequenceIter dest)
	{
		g_sequence_move((src is null) ? null : src.getSequenceIterStruct(), (dest is null) ? null : dest.getSequenceIterStruct());
	}

	/**
	 * Inserts the (@begin, @end) range at the destination pointed to by @dest.
	 * The @begin and @end iters must point into the same sequence. It is
	 * allowed for @dest to point to a different sequence than the one pointed
	 * into by @begin and @end.
	 *
	 * If @dest is %NULL, the range indicated by @begin and @end is
	 * removed from the sequence. If @dest points to a place within
	 * the (@begin, @end) range, the range does not move.
	 *
	 * Params:
	 *     dest = a #GSequenceIter
	 *     begin = a #GSequenceIter
	 *     end = a #GSequenceIter
	 *
	 * Since: 2.14
	 */
	public static void moveRange(SequenceIter dest, SequenceIter begin, SequenceIter end)
	{
		g_sequence_move_range((dest is null) ? null : dest.getSequenceIterStruct(), (begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());
	}

	/**
	 * Creates a new GSequence. The @data_destroy function, if non-%NULL will
	 * be called on all items when the sequence is destroyed and on items that
	 * are removed from the sequence.
	 *
	 * Params:
	 *     dataDestroy = a #GDestroyNotify function, or %NULL
	 *
	 * Returns: a new #GSequence
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GDestroyNotify dataDestroy)
	{
		auto __p = g_sequence_new(dataDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSequence*) __p);
	}

	/**
	 * Finds an iterator somewhere in the range (@begin, @end). This
	 * iterator will be close to the middle of the range, but is not
	 * guaranteed to be exactly in the middle.
	 *
	 * The @begin and @end iterators must both point to the same sequence
	 * and @begin must come before or be equal to @end in the sequence.
	 *
	 * Params:
	 *     begin = a #GSequenceIter
	 *     end = a #GSequenceIter
	 *
	 * Returns: a #GSequenceIter pointing somewhere in the
	 *     (@begin, @end) range
	 *
	 * Since: 2.14
	 */
	public static SequenceIter rangeGetMidpoint(SequenceIter begin, SequenceIter end)
	{
		auto __p = g_sequence_range_get_midpoint((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());

		if(__p is null)
		{
			return null;
		}

		return new SequenceIter(cast(GSequenceIter*) __p);
	}

	/**
	 * Removes the item pointed to by @iter. It is an error to pass the
	 * end iterator to this function.
	 *
	 * If the sequence has a data destroy function associated with it, this
	 * function is called on the data for the removed item.
	 *
	 * Params:
	 *     iter = a #GSequenceIter
	 *
	 * Since: 2.14
	 */
	public static void remove(SequenceIter iter)
	{
		g_sequence_remove((iter is null) ? null : iter.getSequenceIterStruct());
	}

	/**
	 * Removes all items in the (@begin, @end) range.
	 *
	 * If the sequence has a data destroy function associated with it, this
	 * function is called on the data for the removed items.
	 *
	 * Params:
	 *     begin = a #GSequenceIter
	 *     end = a #GSequenceIter
	 *
	 * Since: 2.14
	 */
	public static void removeRange(SequenceIter begin, SequenceIter end)
	{
		g_sequence_remove_range((begin is null) ? null : begin.getSequenceIterStruct(), (end is null) ? null : end.getSequenceIterStruct());
	}

	/**
	 * Changes the data for the item pointed to by @iter to be @data. If
	 * the sequence has a data destroy function associated with it, that
	 * function is called on the existing data that @iter pointed to.
	 *
	 * Params:
	 *     iter = a #GSequenceIter
	 *     data = new data for the item
	 *
	 * Since: 2.14
	 */
	public static void set(SequenceIter iter, void* data)
	{
		g_sequence_set((iter is null) ? null : iter.getSequenceIterStruct(), data);
	}

	/**
	 * Moves the data pointed to by @iter to a new position as indicated by
	 * @cmp_func. This
	 * function should be called for items in a sequence already sorted according
	 * to @cmp_func whenever some aspect of an item changes so that @cmp_func
	 * may return different values for that item.
	 *
	 * @cmp_func is called with two items of the @seq, and @cmp_data.
	 * It should return 0 if the items are equal, a negative value if
	 * the first item comes before the second, and a positive value if
	 * the second item comes before the first.
	 *
	 * Params:
	 *     iter = A #GSequenceIter
	 *     cmpFunc = the function used to compare items in the sequence
	 *     cmpData = user data passed to @cmp_func.
	 *
	 * Since: 2.14
	 */
	public static void sortChanged(SequenceIter iter, GCompareDataFunc cmpFunc, void* cmpData)
	{
		g_sequence_sort_changed((iter is null) ? null : iter.getSequenceIterStruct(), cmpFunc, cmpData);
	}

	/**
	 * Like g_sequence_sort_changed(), but uses
	 * a #GSequenceIterCompareFunc instead of a #GCompareDataFunc as
	 * the compare function.
	 *
	 * @iter_cmp is called with two iterators pointing into the #GSequence that
	 * @iter points into. It should
	 * return 0 if the iterators are equal, a negative value if the first
	 * iterator comes before the second, and a positive value if the second
	 * iterator comes before the first.
	 *
	 * Params:
	 *     iter = a #GSequenceIter
	 *     iterCmp = the function used to compare iterators in the sequence
	 *     cmpData = user data passed to @cmp_func
	 *
	 * Since: 2.14
	 */
	public static void sortChangedIter(SequenceIter iter, GSequenceIterCompareFunc iterCmp, void* cmpData)
	{
		g_sequence_sort_changed_iter((iter is null) ? null : iter.getSequenceIterStruct(), iterCmp, cmpData);
	}

	/**
	 * Swaps the items pointed to by @a and @b. It is allowed for @a and @b
	 * to point into difference sequences.
	 *
	 * Params:
	 *     a = a #GSequenceIter
	 *     b = a #GSequenceIter
	 *
	 * Since: 2.14
	 */
	public static void swap(SequenceIter a, SequenceIter b)
	{
		g_sequence_swap((a is null) ? null : a.getSequenceIterStruct(), (b is null) ? null : b.getSequenceIterStruct());
	}
}
