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


module gtk.Bitset;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * A `GtkBitset` represents a set of unsigned integers.
 * 
 * Another name for this data structure is "bitmap".
 * 
 * The current implementation is based on [roaring bitmaps](https://roaringbitmap.org/).
 * 
 * A bitset allows adding a set of integers and provides support for set operations
 * like unions, intersections and checks for equality or if a value is contained
 * in the set. `GtkBitset` also contains various functions to query metadata about
 * the bitset, such as the minimum or maximum values or its size.
 * 
 * The fastest way to iterate values in a bitset is [struct@Gtk.BitsetIter].
 * 
 * The main use case for `GtkBitset` is implementing complex selections for
 * [iface@Gtk.SelectionModel].
 */
public class Bitset
{
	/** the main Gtk struct */
	protected GtkBitset* gtkBitset;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkBitset* getBitsetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBitset;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBitset;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBitset* gtkBitset, bool ownedRef = false)
	{
		this.gtkBitset = gtkBitset;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_bitset_unref(gtkBitset);
	}


	/** */
	public static GType getType()
	{
		return gtk_bitset_get_type();
	}

	/**
	 * Creates a new empty bitset.
	 *
	 * Returns: A new empty bitset
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_bitset_new_empty();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty");
		}

		this(cast(GtkBitset*) __p);
	}

	/**
	 * Creates a bitset with the given range set.
	 *
	 * Params:
	 *     start = first value to add
	 *     nItems = number of consecutive values to add
	 *
	 * Returns: A new bitset
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint start, uint nItems)
	{
		auto __p = gtk_bitset_new_range(start, nItems);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_range");
		}

		this(cast(GtkBitset*) __p);
	}

	/**
	 * Adds @value to @self if it wasn't part of it before.
	 *
	 * Params:
	 *     value = value to add
	 *
	 * Returns: %TRUE if @value was not part of @self and @self
	 *     was changed
	 */
	public bool add(uint value)
	{
		return gtk_bitset_add(gtkBitset, value) != 0;
	}

	/**
	 * Adds all values from @start (inclusive) to @start + @n_items
	 * (exclusive) in @self.
	 *
	 * Params:
	 *     start = first value to add
	 *     nItems = number of consecutive values to add
	 */
	public void addRange(uint start, uint nItems)
	{
		gtk_bitset_add_range(gtkBitset, start, nItems);
	}

	/**
	 * Adds the closed range [@first, @last], so @first, @last and all
	 * values in between. @first must be smaller than @last.
	 *
	 * Params:
	 *     first = first value to add
	 *     last = last value to add
	 */
	public void addRangeClosed(uint first, uint last)
	{
		gtk_bitset_add_range_closed(gtkBitset, first, last);
	}

	/**
	 * Interprets the values as a 2-dimensional boolean grid with the given @stride
	 * and inside that grid, adds a rectangle with the given @width and @height.
	 *
	 * Params:
	 *     start = first value to add
	 *     width = width of the rectangle
	 *     height = height of the rectangle
	 *     stride = row stride of the grid
	 */
	public void addRectangle(uint start, uint width, uint height, uint stride)
	{
		gtk_bitset_add_rectangle(gtkBitset, start, width, height, stride);
	}

	/**
	 * Checks if the given @value has been added to @self
	 *
	 * Params:
	 *     value = the value to check
	 *
	 * Returns: %TRUE if @self contains @value
	 */
	public bool contains(uint value)
	{
		return gtk_bitset_contains(gtkBitset, value) != 0;
	}

	/**
	 * Creates a copy of @self.
	 *
	 * Returns: A new bitset that contains the same
	 *     values as @self
	 */
	public Bitset copy()
	{
		auto __p = gtk_bitset_copy(gtkBitset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bitset)(cast(GtkBitset*) __p, true);
	}

	/**
	 * Sets @self to be the symmetric difference of @self and @other.
	 *
	 * The symmetric difference is set @self to contain all values that
	 * were either contained in @self or in @other, but not in both.
	 * This operation is also called an XOR.
	 *
	 * It is allowed for @self and @other to be the same bitset. The bitset
	 * will be emptied in that case.
	 *
	 * Params:
	 *     other = the `GtkBitset` to compute the difference from
	 */
	public void difference(Bitset other)
	{
		gtk_bitset_difference(gtkBitset, (other is null) ? null : other.getBitsetStruct());
	}

	/**
	 * Returns %TRUE if @self and @other contain the same values.
	 *
	 * Params:
	 *     other = another `GtkBitset`
	 *
	 * Returns: %TRUE if @self and @other contain the same values
	 */
	public bool equals(Bitset other)
	{
		return gtk_bitset_equals(gtkBitset, (other is null) ? null : other.getBitsetStruct()) != 0;
	}

	/**
	 * Returns the largest value in @self.
	 *
	 * If @self is empty, 0 is returned.
	 *
	 * Returns: The largest value in @self
	 */
	public uint getMaximum()
	{
		return gtk_bitset_get_maximum(gtkBitset);
	}

	/**
	 * Returns the smallest value in @self.
	 *
	 * If @self is empty, `G_MAXUINT` is returned.
	 *
	 * Returns: The smallest value in @self
	 */
	public uint getMinimum()
	{
		return gtk_bitset_get_minimum(gtkBitset);
	}

	/**
	 * Returns the value of the @nth item in self.
	 *
	 * If @nth is >= the size of @self, 0 is returned.
	 *
	 * Params:
	 *     nth = index of the item to get
	 *
	 * Returns: the value of the @nth item in @self
	 */
	public uint getNth(uint nth)
	{
		return gtk_bitset_get_nth(gtkBitset, nth);
	}

	/**
	 * Gets the number of values that were added to the set.
	 *
	 * For example, if the set is empty, 0 is returned.
	 *
	 * Note that this function returns a `guint64`, because when all
	 * values are set, the return value is `G_MAXUINT + 1`. Unless you
	 * are sure this cannot happen (it can't with `GListModel`), be sure
	 * to use a 64bit type.
	 *
	 * Returns: The number of values in the set.
	 */
	public ulong getSize()
	{
		return gtk_bitset_get_size(gtkBitset);
	}

	/**
	 * Gets the number of values that are part of the set from @first to @last
	 * (inclusive).
	 *
	 * Note that this function returns a `guint64`, because when all values are
	 * set, the return value is `G_MAXUINT + 1`. Unless you are sure this cannot
	 * happen (it can't with `GListModel`), be sure to use a 64bit type.
	 *
	 * Params:
	 *     first = the first element to include
	 *     last = the last element to include
	 *
	 * Returns: The number of values in the set from @first to @last.
	 */
	public ulong getSizeInRange(uint first, uint last)
	{
		return gtk_bitset_get_size_in_range(gtkBitset, first, last);
	}

	/**
	 * Sets @self to be the intersection of @self and @other.
	 *
	 * In other words, remove all values from @self that are not part of @other.
	 *
	 * It is allowed for @self and @other to be the same bitset. Nothing will
	 * happen in that case.
	 *
	 * Params:
	 *     other = the `GtkBitset` to intersect with
	 */
	public void intersect(Bitset other)
	{
		gtk_bitset_intersect(gtkBitset, (other is null) ? null : other.getBitsetStruct());
	}

	/**
	 * Check if no value is contained in bitset.
	 *
	 * Returns: %TRUE if @self is empty
	 */
	public bool isEmpty()
	{
		return gtk_bitset_is_empty(gtkBitset) != 0;
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given `GtkBitset`.
	 *
	 * Returns: the `GtkBitset` with an additional reference
	 */
	public Bitset ref_()
	{
		auto __p = gtk_bitset_ref(gtkBitset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bitset)(cast(GtkBitset*) __p);
	}

	/**
	 * Removes @value from @self if it was part of it before.
	 *
	 * Params:
	 *     value = value to add
	 *
	 * Returns: %TRUE if @value was part of @self and @self
	 *     was changed
	 */
	public bool remove(uint value)
	{
		return gtk_bitset_remove(gtkBitset, value) != 0;
	}

	/**
	 * Removes all values from the bitset so that it is empty again.
	 */
	public void removeAll()
	{
		gtk_bitset_remove_all(gtkBitset);
	}

	/**
	 * Removes all values from @start (inclusive) to @start + @n_items (exclusive)
	 * in @self.
	 *
	 * Params:
	 *     start = first value to remove
	 *     nItems = number of consecutive values to remove
	 */
	public void removeRange(uint start, uint nItems)
	{
		gtk_bitset_remove_range(gtkBitset, start, nItems);
	}

	/**
	 * Removes the closed range [@first, @last], so @first, @last and all
	 * values in between. @first must be smaller than @last.
	 *
	 * Params:
	 *     first = first value to remove
	 *     last = last value to remove
	 */
	public void removeRangeClosed(uint first, uint last)
	{
		gtk_bitset_remove_range_closed(gtkBitset, first, last);
	}

	/**
	 * Interprets the values as a 2-dimensional boolean grid with the given @stride
	 * and inside that grid, removes a rectangle with the given @width and @height.
	 *
	 * Params:
	 *     start = first value to remove
	 *     width = width of the rectangle
	 *     height = height of the rectangle
	 *     stride = row stride of the grid
	 */
	public void removeRectangle(uint start, uint width, uint height, uint stride)
	{
		gtk_bitset_remove_rectangle(gtkBitset, start, width, height, stride);
	}

	/**
	 * Shifts all values in @self to the left by @amount.
	 *
	 * Values smaller than @amount are discarded.
	 *
	 * Params:
	 *     amount = amount to shift all values to the left
	 */
	public void shiftLeft(uint amount)
	{
		gtk_bitset_shift_left(gtkBitset, amount);
	}

	/**
	 * Shifts all values in @self to the right by @amount.
	 *
	 * Values that end up too large to be held in a #guint are discarded.
	 *
	 * Params:
	 *     amount = amount to shift all values to the right
	 */
	public void shiftRight(uint amount)
	{
		gtk_bitset_shift_right(gtkBitset, amount);
	}

	/**
	 * This is a support function for `GListModel` handling, by mirroring
	 * the `GlistModel::items-changed` signal.
	 *
	 * First, it "cuts" the values from @position to @removed from
	 * the bitset. That is, it removes all those values and shifts
	 * all larger values to the left by @removed places.
	 *
	 * Then, it "pastes" new room into the bitset by shifting all values
	 * larger than @position by @added spaces to the right. This frees
	 * up space that can then be filled.
	 *
	 * Params:
	 *     position = position at which to slice
	 *     removed = number of values to remove
	 *     added = number of values to add
	 */
	public void splice(uint position, uint removed, uint added)
	{
		gtk_bitset_splice(gtkBitset, position, removed, added);
	}

	/**
	 * Sets @self to be the subtraction of @other from @self.
	 *
	 * In other words, remove all values from @self that are part of @other.
	 *
	 * It is allowed for @self and @other to be the same bitset. The bitset
	 * will be emptied in that case.
	 *
	 * Params:
	 *     other = the `GtkBitset` to subtract
	 */
	public void subtract(Bitset other)
	{
		gtk_bitset_subtract(gtkBitset, (other is null) ? null : other.getBitsetStruct());
	}

	alias unio = union_;
	/**
	 * Sets @self to be the union of @self and @other.
	 *
	 * That is, add all values from @other into @self that weren't part of it.
	 *
	 * It is allowed for @self and @other to be the same bitset. Nothing will
	 * happen in that case.
	 *
	 * Params:
	 *     other = the `GtkBitset` to union with
	 */
	public void union_(Bitset other)
	{
		gtk_bitset_union(gtkBitset, (other is null) ? null : other.getBitsetStruct());
	}

	/**
	 * Releases a reference on the given `GtkBitset`.
	 *
	 * If the reference was the last, the resources associated to the @self are
	 * freed.
	 */
	public void unref()
	{
		gtk_bitset_unref(gtkBitset);
	}
}
