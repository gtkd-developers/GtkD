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


module gtk.BitsetIter;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.Bitset;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * An opaque, stack-allocated struct for iterating
 * over the elements of a `GtkBitset`.
 * 
 * Before a `GtkBitsetIter` can be used, it needs to be initialized with
 * [func@Gtk.BitsetIter.init_first], [func@Gtk.BitsetIter.init_last]
 * or [func@Gtk.BitsetIter.init_at].
 */
public class BitsetIter
{
	/** the main Gtk struct */
	protected GtkBitsetIter* gtkBitsetIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkBitsetIter* getBitsetIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBitsetIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBitsetIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBitsetIter* gtkBitsetIter, bool ownedRef = false)
	{
		this.gtkBitsetIter = gtkBitsetIter;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gtk_bitset_iter_get_type();
	}

	/**
	 * Gets the current value that @iter points to.
	 *
	 * If @iter is not valid and [method@Gtk.BitsetIter.is_valid]
	 * returns %FALSE, this function returns 0.
	 *
	 * Returns: The current value pointer to by @iter
	 */
	public uint getValue()
	{
		return gtk_bitset_iter_get_value(gtkBitsetIter);
	}

	/**
	 * Checks if @iter points to a valid value.
	 *
	 * Returns: %TRUE if @iter points to a valid value
	 */
	public bool isValid()
	{
		return gtk_bitset_iter_is_valid(gtkBitsetIter) != 0;
	}

	/**
	 * Moves @iter to the next value in the set.
	 *
	 * If it was already pointing to the last value in the set,
	 * %FALSE is returned and @iter is invalidated.
	 *
	 * Params:
	 *     value = Set to the next value
	 *
	 * Returns: %TRUE if a next value existed
	 */
	public bool next(out uint value)
	{
		return gtk_bitset_iter_next(gtkBitsetIter, &value) != 0;
	}

	/**
	 * Moves @iter to the previous value in the set.
	 *
	 * If it was already pointing to the first value in the set,
	 * %FALSE is returned and @iter is invalidated.
	 *
	 * Params:
	 *     value = Set to the previous value
	 *
	 * Returns: %TRUE if a previous value existed
	 */
	public bool previous(out uint value)
	{
		return gtk_bitset_iter_previous(gtkBitsetIter, &value) != 0;
	}

	/**
	 * Initializes @iter to point to @target.
	 *
	 * If @target is not found, finds the next value after it.
	 * If no value >= @target exists in @set, this function returns %FALSE.
	 *
	 * Params:
	 *     iter = a pointer to an uninitialized `GtkBitsetIter`
	 *     set = a `GtkBitset`
	 *     target = target value to start iterating at
	 *     value = Set to the found value in @set
	 *
	 * Returns: %TRUE if a value was found.
	 */
	public static bool initAt(out BitsetIter iter, Bitset set, uint target, out uint value)
	{
		GtkBitsetIter* outiter = sliceNew!GtkBitsetIter();

		auto __p = gtk_bitset_iter_init_at(outiter, (set is null) ? null : set.getBitsetStruct(), target, &value) != 0;

		iter = ObjectG.getDObject!(BitsetIter)(outiter, true);

		return __p;
	}

	/**
	 * Initializes an iterator for @set and points it to the first
	 * value in @set.
	 *
	 * If @set is empty, %FALSE is returned and @value is set to %G_MAXUINT.
	 *
	 * Params:
	 *     iter = a pointer to an uninitialized `GtkBitsetIter`
	 *     set = a `GtkBitset`
	 *     value = Set to the first value in @set
	 *
	 * Returns: %TRUE if @set isn't empty.
	 */
	public static bool initFirst(out BitsetIter iter, Bitset set, out uint value)
	{
		GtkBitsetIter* outiter = sliceNew!GtkBitsetIter();

		auto __p = gtk_bitset_iter_init_first(outiter, (set is null) ? null : set.getBitsetStruct(), &value) != 0;

		iter = ObjectG.getDObject!(BitsetIter)(outiter, true);

		return __p;
	}

	/**
	 * Initializes an iterator for @set and points it to the last
	 * value in @set.
	 *
	 * If @set is empty, %FALSE is returned.
	 *
	 * Params:
	 *     iter = a pointer to an uninitialized `GtkBitsetIter`
	 *     set = a `GtkBitset`
	 *     value = Set to the last value in @set
	 *
	 * Returns: %TRUE if @set isn't empty.
	 */
	public static bool initLast(out BitsetIter iter, Bitset set, out uint value)
	{
		GtkBitsetIter* outiter = sliceNew!GtkBitsetIter();

		auto __p = gtk_bitset_iter_init_last(outiter, (set is null) ? null : set.getBitsetStruct(), &value) != 0;

		iter = ObjectG.getDObject!(BitsetIter)(outiter, true);

		return __p;
	}
}
