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
 * inFile  = 
 * outPack = glib
 * outFile = SequenceIter
 * strct   = GSequenceIter
 * realStrct=
 * ctorStrct=
 * clss    = SequenceIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_sequence_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Sequence
 * structWrap:
 * 	- GSequence* -> Sequence
 * 	- GSequenceIter* -> SequenceIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.SequenceIter;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Sequence;




/**
 * Description
 * The GSequence data structure has the API of a list, but is
 * implemented internally with a balanced binary tree. This means that
 * it is possible to maintain a sorted list of n elements in time O(n
 * log n). The data contained in each element can be either integer
 * values, by using of the Type Conversion Macros,
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
 * g_sequence_foreach_range() will call a user-specified function on
 * each element with the given range. The range is delimited by the
 * gaps represented by the passed-in iterators, so if you pass in the
 * begin and end iterators, the range in question is the entire
 * sequence.
 * The function g_sequence_get() is used with an iterator to access the
 * element immediately following the gap that the iterator represents.
 * The iterator is said to point to that element.
 * Iterators are stable across most operations on a GSequence. For
 * example an iterator pointing to some element of a sequence will
 * continue to point to that element even after the sequence is sorted.
 * Even moving an element to another sequence using for example
 * g_sequence_move_range() will not invalidate the iterators pointing
 * to it. The only operation that will invalidate an iterator is when
 * the element it points to is removed from any sequence.
 */
public class SequenceIter
{
	
	/** the main Gtk struct */
	protected GSequenceIter* gSequenceIter;
	
	
	public GSequenceIter* getSequenceIterStruct()
	{
		return gSequenceIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSequenceIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSequenceIter* gSequenceIter)
	{
		this.gSequenceIter = gSequenceIter;
	}
	
	/**
	 */
	
	/**
	 * Returns whether iter is the begin iterator
	 * Since 2.14
	 * Returns: whether iter is the begin iterator
	 */
	public int isBegin()
	{
		// gboolean g_sequence_iter_is_begin (GSequenceIter *iter);
		return g_sequence_iter_is_begin(gSequenceIter);
	}
	
	/**
	 * Returns whether iter is the end iterator
	 * Since 2.14
	 * Returns: Whether iter is the end iterator.
	 */
	public int isEnd()
	{
		// gboolean g_sequence_iter_is_end (GSequenceIter *iter);
		return g_sequence_iter_is_end(gSequenceIter);
	}
	
	/**
	 * Returns an iterator pointing to the next position after iter. If
	 * iter is the end iterator, the end iterator is returned.
	 * Since 2.14
	 * Returns: a GSequenceIter pointing to the next position after iter.
	 */
	public SequenceIter next()
	{
		// GSequenceIter * g_sequence_iter_next (GSequenceIter *iter);
		auto p = g_sequence_iter_next(gSequenceIter);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns an iterator pointing to the previous position before iter. If
	 * iter is the begin iterator, the begin iterator is returned.
	 * Since 2.14
	 * Returns: a GSequenceIter pointing to the previous position before iter.
	 */
	public SequenceIter prev()
	{
		// GSequenceIter * g_sequence_iter_prev (GSequenceIter *iter);
		auto p = g_sequence_iter_prev(gSequenceIter);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns the position of iter
	 * Since 2.14
	 * Returns: the position of iter
	 */
	public int getPosition()
	{
		// gint g_sequence_iter_get_position (GSequenceIter *iter);
		return g_sequence_iter_get_position(gSequenceIter);
	}
	
	/**
	 * Returns the GSequenceIter which is delta positions away from iter.
	 * If iter is closer than -delta positions to the beginning of the sequence,
	 * the begin iterator is returned. If iter is closer than delta positions
	 * to the end of the sequence, the end iterator is returned.
	 * Since 2.14
	 * Params:
	 * delta = A positive or negative number indicating how many positions away
	 * from iter the returned GSequenceIter will be.
	 * Returns: a GSequenceIter which is delta positions away from iter.
	 */
	public SequenceIter move(int delta)
	{
		// GSequenceIter * g_sequence_iter_move (GSequenceIter *iter,  gint delta);
		auto p = g_sequence_iter_move(gSequenceIter, delta);
		
		if(p is null)
		{
			return null;
		}
		
		return new SequenceIter(cast(GSequenceIter*) p);
	}
	
	/**
	 * Returns the GSequence that iter points into.
	 * Since 2.14
	 * Returns: the GSequence that iter points into.
	 */
	public Sequence getSequence()
	{
		// GSequence * g_sequence_iter_get_sequence (GSequenceIter *iter);
		auto p = g_sequence_iter_get_sequence(gSequenceIter);
		
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
	 * a = a GSequenceIter
	 * b = a GSequenceIter
	 * Returns: A negative number if a comes before b, 0 if they are equal, and a positive number if a comes after b.
	 */
	public int compare(SequenceIter b)
	{
		// gint g_sequence_iter_compare (GSequenceIter *a,  GSequenceIter *b);
		return g_sequence_iter_compare(gSequenceIter, (b is null) ? null : b.getSequenceIterStruct());
	}
}
