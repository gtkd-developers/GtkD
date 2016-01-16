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
private import gobject.ObjectG;
private import gtkc.pango;
public  import gtkc.pangotypes;


/**
 * The #PangoItem structure stores information about a segment of text.
 */
public class PgItem
{
	/** the main Gtk struct */
	protected PangoItem* pangoItem;

	/** Get the main Gtk struct */
	public PangoItem* getPgItemStruct()
	{
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
	public this (PangoItem* pangoItem)
	{
		this.pangoItem = pangoItem;
	}


	/** */
	public static GType getType()
	{
		return pango_item_get_type();
	}

	/**
	 * Creates a new #PangoItem structure initialized to default values.
	 *
	 * Return: the newly allocated #PangoItem, which should
	 *     be freed with pango_item_free().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = pango_item_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(PangoItem*) p);
	}

	/**
	 * Copy an existing #PangoItem structure.
	 *
	 * Return: the newly allocated #PangoItem, which
	 *     should be freed with pango_item_free(), or %NULL if
	 *     @item was %NULL.
	 */
	public PgItem copy()
	{
		auto p = pango_item_copy(pangoItem);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgItem)(cast(PangoItem*) p);
	}

	/**
	 * Free a #PangoItem and all associated memory.
	 */
	public void free()
	{
		pango_item_free(pangoItem);
	}

	/**
	 * Modifies @orig to cover only the text after @split_index, and
	 * returns a new item that covers the text before @split_index that
	 * used to be in @orig. You can think of @split_index as the length of
	 * the returned item. @split_index may not be 0, and it may not be
	 * greater than or equal to the length of @orig (that is, there must
	 * be at least one byte assigned to each item, you can't create a
	 * zero-length item). @split_offset is the length of the first item in
	 * chars, and must be provided because the text used to generate the
	 * item isn't available, so pango_item_split() can't count the char
	 * length of the split items itself.
	 *
	 * Params:
	 *     splitIndex = byte index of position to split item, relative to the start of the item
	 *     splitOffset = number of chars between start of @orig and @split_index
	 *
	 * Return: new item representing text before @split_index, which
	 *     should be freed with pango_item_free().
	 */
	public PgItem split(int splitIndex, int splitOffset)
	{
		auto p = pango_item_split(pangoItem, splitIndex, splitOffset);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgItem)(cast(PangoItem*) p);
	}
}
