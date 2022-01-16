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


module pango.PgGlyphItem;

private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgAttributeList;
private import pango.PgGlyphString;
private import pango.PgItem;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
 * resulting from shaping the items text.
 * 
 * As an example of the usage of `PangoGlyphItem`, the results
 * of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
 * each of which contains a list of `PangoGlyphItem`.
 */
public final class PgGlyphItem
{
	/** the main Gtk struct */
	protected PangoGlyphItem* pangoGlyphItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoGlyphItem* getPgGlyphItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoGlyphItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoGlyphItem* pangoGlyphItem, bool ownedRef = false)
	{
		this.pangoGlyphItem = pangoGlyphItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_glyph_item_free(pangoGlyphItem);
	}


	/**
	 * corresponding `PangoItem`
	 */
	public @property PgItem item()
	{
		return ObjectG.getDObject!(PgItem)(pangoGlyphItem.item, false);
	}

	/** Ditto */
	public @property void item(PgItem value)
	{
		pangoGlyphItem.item = value.getPgItemStruct();
	}

	/**
	 * corresponding `PangoGlyphString`
	 */
	public @property PgGlyphString glyphs()
	{
		return ObjectG.getDObject!(PgGlyphString)(pangoGlyphItem.glyphs, false);
	}

	/** Ditto */
	public @property void glyphs(PgGlyphString value)
	{
		pangoGlyphItem.glyphs = value.getPgGlyphStringStruct();
	}

	/**
	 * shift of the baseline, relative to the baseline
	 * of the containing line. Positive values shift upwards
	 */
	public @property int yOffset()
	{
		return pangoGlyphItem.yOffset;
	}

	/** Ditto */
	public @property void yOffset(int value)
	{
		pangoGlyphItem.yOffset = value;
	}

	/**
	 * horizontal displacement to apply before the
	 * glyph item. Positive values shift right
	 */
	public @property int startXOffset()
	{
		return pangoGlyphItem.startXOffset;
	}

	/** Ditto */
	public @property void startXOffset(int value)
	{
		pangoGlyphItem.startXOffset = value;
	}

	/**
	 * horizontal displacement to apply after th
	 * glyph item. Positive values shift right
	 */
	public @property int endXOffset()
	{
		return pangoGlyphItem.endXOffset;
	}

	/** Ditto */
	public @property void endXOffset(int value)
	{
		pangoGlyphItem.endXOffset = value;
	}

	/** */
	public static GType getType()
	{
		return pango_glyph_item_get_type();
	}

	/**
	 * Splits a shaped item (`PangoGlyphItem`) into multiple items based
	 * on an attribute list.
	 *
	 * The idea is that if you have attributes that don't affect shaping,
	 * such as color or underline, to avoid affecting shaping, you filter
	 * them out ([method@Pango.AttrList.filter]), apply the shaping process
	 * and then reapply them to the result using this function.
	 *
	 * All attributes that start or end inside a cluster are applied
	 * to that cluster; for instance, if half of a cluster is underlined
	 * and the other-half strikethrough, then the cluster will end
	 * up with both underline and strikethrough attributes. In these
	 * cases, it may happen that @item->extra_attrs for some of the
	 * result items can have multiple attributes of the same type.
	 *
	 * This function takes ownership of @glyph_item; it will be reused
	 * as one of the elements in the list.
	 *
	 * Params:
	 *     text = text that @list applies to
	 *     list = a `PangoAttrList`
	 *
	 * Returns: a
	 *     list of glyph items resulting from splitting @glyph_item. Free
	 *     the elements using [method@Pango.GlyphItem.free], the list using
	 *     g_slist_free().
	 *
	 * Since: 1.2
	 */
	public ListSG applyAttrs(string text, PgAttributeList list)
	{
		auto __p = pango_glyph_item_apply_attrs(pangoGlyphItem, Str.toStringz(text), (list is null) ? null : list.getPgAttributeListStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Make a deep copy of an existing `PangoGlyphItem` structure.
	 *
	 * Returns: the newly allocated `PangoGlyphItem`
	 *
	 * Since: 1.20
	 */
	public PgGlyphItem copy()
	{
		auto __p = pango_glyph_item_copy(pangoGlyphItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgGlyphItem)(cast(PangoGlyphItem*) __p, true);
	}

	/**
	 * Frees a `PangoGlyphItem` and resources to which it points.
	 *
	 * Since: 1.6
	 */
	public void free()
	{
		pango_glyph_item_free(pangoGlyphItem);
		ownedRef = false;
	}

	/**
	 * Given a `PangoGlyphItem` and the corresponding text, determine the
	 * width corresponding to each character.
	 *
	 * When multiple characters compose a single cluster, the width of the
	 * entire cluster is divided equally among the characters.
	 *
	 * See also [method@Pango.GlyphString.get_logical_widths].
	 *
	 * Params:
	 *     text = text that @glyph_item corresponds to
	 *         (glyph_item->item->offset is an offset from the
	 *         start of @text)
	 *     logicalWidths = an array whose length is the number of
	 *         characters in glyph_item (equal to glyph_item->item->num_chars)
	 *         to be filled in with the resulting character widths.
	 *
	 * Since: 1.26
	 */
	public void getLogicalWidths(string text, int[] logicalWidths)
	{
		pango_glyph_item_get_logical_widths(pangoGlyphItem, Str.toStringz(text), logicalWidths.ptr);
	}

	/**
	 * Adds spacing between the graphemes of @glyph_item to
	 * give the effect of typographic letter spacing.
	 *
	 * Params:
	 *     text = text that @glyph_item corresponds to
	 *         (glyph_item->item->offset is an offset from the
	 *         start of @text)
	 *     logAttrs = logical attributes for the item
	 *         (the first logical attribute refers to the position
	 *         before the first character in the item)
	 *     letterSpacing = amount of letter spacing to add
	 *         in Pango units. May be negative, though too large
	 *         negative values will give ugly results.
	 *
	 * Since: 1.6
	 */
	public void letterSpace(string text, PangoLogAttr[] logAttrs, int letterSpacing)
	{
		pango_glyph_item_letter_space(pangoGlyphItem, Str.toStringz(text), logAttrs.ptr, letterSpacing);
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
	 *
	 * This function is similar in function to pango_item_split() (and uses
	 * it internally.)
	 *
	 * Params:
	 *     text = text to which positions in @orig apply
	 *     splitIndex = byte index of position to split item, relative to the
	 *         start of the item
	 *
	 * Returns: the newly allocated item representing text before
	 *     @split_index, which should be freed
	 *     with pango_glyph_item_free().
	 *
	 * Since: 1.2
	 */
	public PgGlyphItem split(string text, int splitIndex)
	{
		auto __p = pango_glyph_item_split(pangoGlyphItem, Str.toStringz(text), splitIndex);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgGlyphItem)(cast(PangoGlyphItem*) __p, true);
	}
}
