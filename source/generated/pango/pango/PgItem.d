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


module pango.PgItem;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgAttributeIterator;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The `PangoItem` structure stores information about a segment of text.
 * 
 * You typically obtain `PangoItems` by itemizing a piece of text
 * with [func@itemize].
 */
public final class PgItem
{
	/** the main Gtk struct */
	protected PangoItem* pangoItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoItem* getPgItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoItem* pangoItem, bool ownedRef = false)
	{
		this.pangoItem = pangoItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_item_free(pangoItem);
	}


	/**
	 * byte offset of the start of this item in text.
	 */
	public @property int offset()
	{
		return pangoItem.offset;
	}

	/** Ditto */
	public @property void offset(int value)
	{
		pangoItem.offset = value;
	}

	/**
	 * length of this item in bytes.
	 */
	public @property int length()
	{
		return pangoItem.length;
	}

	/** Ditto */
	public @property void length(int value)
	{
		pangoItem.length = value;
	}

	/**
	 * number of Unicode characters in the item.
	 */
	public @property int numChars()
	{
		return pangoItem.numChars;
	}

	/** Ditto */
	public @property void numChars(int value)
	{
		pangoItem.numChars = value;
	}

	/**
	 * analysis results for the item.
	 */
	public @property PangoAnalysis analysis()
	{
		return pangoItem.analysis;
	}

	/** Ditto */
	public @property void analysis(PangoAnalysis value)
	{
		pangoItem.analysis = value;
	}

	/** */
	public static GType getType()
	{
		return pango_item_get_type();
	}

	/**
	 * Creates a new `PangoItem` structure initialized to default values.
	 *
	 * Returns: the newly allocated `PangoItem`, which should
	 *     be freed with [method@Pango.Item.free].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_item_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoItem*) __p);
	}

	/**
	 * Add attributes to a `PangoItem`.
	 *
	 * The idea is that you have attributes that don't affect itemization,
	 * such as font features, so you filter them out using
	 * [method@Pango.AttrList.filter], itemize your text, then reapply the
	 * attributes to the resulting items using this function.
	 *
	 * The @iter should be positioned before the range of the item,
	 * and will be advanced past it. This function is meant to be called
	 * in a loop over the items resulting from itemization, while passing
	 * the iter to each call.
	 *
	 * Params:
	 *     iter = a `PangoAttrIterator`
	 *
	 * Since: 1.44
	 */
	public void applyAttrs(PgAttributeIterator iter)
	{
		pango_item_apply_attrs(pangoItem, (iter is null) ? null : iter.getPgAttributeIteratorStruct());
	}

	/**
	 * Copy an existing `PangoItem` structure.
	 *
	 * Returns: the newly allocated `PangoItem`
	 */
	public PgItem copy()
	{
		auto __p = pango_item_copy(pangoItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgItem)(cast(PangoItem*) __p, true);
	}

	/**
	 * Free a `PangoItem` and all associated memory.
	 */
	public void free()
	{
		pango_item_free(pangoItem);
		ownedRef = false;
	}

	/**
	 * Modifies @orig to cover only the text after @split_index, and
	 * returns a new item that covers the text before @split_index that
	 * used to be in @orig.
	 *
	 * You can think of @split_index as the length of the returned item.
	 * @split_index may not be 0, and it may not be greater than or equal
	 * to the length of @orig (that is, there must be at least one byte
	 * assigned to each item, you can't create a zero-length item).
	 * @split_offset is the length of the first item in chars, and must be
	 * provided because the text used to generate the item isn't available,
	 * so `pango_item_split()` can't count the char length of the split items
	 * itself.
	 *
	 * Params:
	 *     splitIndex = byte index of position to split item, relative to the
	 *         start of the item
	 *     splitOffset = number of chars between start of @orig and @split_index
	 *
	 * Returns: new item representing text before @split_index, which
	 *     should be freed with [method@Pango.Item.free].
	 */
	public PgItem split(int splitIndex, int splitOffset)
	{
		auto __p = pango_item_split(pangoItem, splitIndex, splitOffset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgItem)(cast(PangoItem*) __p, true);
	}
}
