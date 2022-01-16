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


module pango.PgGlyphItemIter;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgGlyphItem;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoGlyphItemIter` is an iterator over the clusters in a
 * `PangoGlyphItem`.
 * 
 * The *forward direction* of the iterator is the logical direction of text.
 * That is, with increasing @start_index and @start_char values. If @glyph_item
 * is right-to-left (that is, if `glyph_item->item->analysis.level` is odd),
 * then @start_glyph decreases as the iterator moves forward.  Moreover,
 * in right-to-left cases, @start_glyph is greater than @end_glyph.
 * 
 * An iterator should be initialized using either
 * pango_glyph_item_iter_init_start() or
 * pango_glyph_item_iter_init_end(), for forward and backward iteration
 * respectively, and walked over using any desired mixture of
 * pango_glyph_item_iter_next_cluster() and
 * pango_glyph_item_iter_prev_cluster().
 * 
 * A common idiom for doing a forward iteration over the clusters is:
 * 
 * ```
 * PangoGlyphItemIter cluster_iter;
 * gboolean have_cluster;
 * 
 * for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
 * glyph_item, text);
 * have_cluster;
 * have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
 * {
 * ...
 * }
 * ```
 * 
 * Note that @text is the start of the text for layout, which is then
 * indexed by `glyph_item->item->offset` to get to the text of @glyph_item.
 * The @start_index and @end_index values can directly index into @text. The
 * @start_glyph, @end_glyph, @start_char, and @end_char values however are
 * zero-based for the @glyph_item.  For each cluster, the item pointed at by
 * the start variables is included in the cluster while the one pointed at by
 * end variables is not.
 * 
 * None of the members of a `PangoGlyphItemIter` should be modified manually.
 *
 * Since: 1.22
 */
public final class PgGlyphItemIter
{
	/** the main Gtk struct */
	protected PangoGlyphItemIter* pangoGlyphItemIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoGlyphItemIter* getPgGlyphItemIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoGlyphItemIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphItemIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoGlyphItemIter* pangoGlyphItemIter, bool ownedRef = false)
	{
		this.pangoGlyphItemIter = pangoGlyphItemIter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_glyph_item_iter_free(pangoGlyphItemIter);
	}


	/** */
	public @property PgGlyphItem glyphItem()
	{
		return ObjectG.getDObject!(PgGlyphItem)(pangoGlyphItemIter.glyphItem, false);
	}

	/** Ditto */
	public @property void glyphItem(PgGlyphItem value)
	{
		pangoGlyphItemIter.glyphItem = value.getPgGlyphItemStruct();
	}

	/** */
	public @property string text()
	{
		return Str.toString(pangoGlyphItemIter.text);
	}

	/** Ditto */
	public @property void text(string value)
	{
		pangoGlyphItemIter.text = Str.toStringz(value);
	}

	/** */
	public @property int startGlyph()
	{
		return pangoGlyphItemIter.startGlyph;
	}

	/** Ditto */
	public @property void startGlyph(int value)
	{
		pangoGlyphItemIter.startGlyph = value;
	}

	/** */
	public @property int startIndex()
	{
		return pangoGlyphItemIter.startIndex;
	}

	/** Ditto */
	public @property void startIndex(int value)
	{
		pangoGlyphItemIter.startIndex = value;
	}

	/** */
	public @property int startChar()
	{
		return pangoGlyphItemIter.startChar;
	}

	/** Ditto */
	public @property void startChar(int value)
	{
		pangoGlyphItemIter.startChar = value;
	}

	/** */
	public @property int endGlyph()
	{
		return pangoGlyphItemIter.endGlyph;
	}

	/** Ditto */
	public @property void endGlyph(int value)
	{
		pangoGlyphItemIter.endGlyph = value;
	}

	/** */
	public @property int endIndex()
	{
		return pangoGlyphItemIter.endIndex;
	}

	/** Ditto */
	public @property void endIndex(int value)
	{
		pangoGlyphItemIter.endIndex = value;
	}

	/** */
	public @property int endChar()
	{
		return pangoGlyphItemIter.endChar;
	}

	/** Ditto */
	public @property void endChar(int value)
	{
		pangoGlyphItemIter.endChar = value;
	}

	/** */
	public static GType getType()
	{
		return pango_glyph_item_iter_get_type();
	}

	/**
	 * Make a shallow copy of an existing `PangoGlyphItemIter` structure.
	 *
	 * Returns: the newly allocated `PangoGlyphItemIter`
	 *
	 * Since: 1.22
	 */
	public PgGlyphItemIter copy()
	{
		auto __p = pango_glyph_item_iter_copy(pangoGlyphItemIter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgGlyphItemIter)(cast(PangoGlyphItemIter*) __p, true);
	}

	/**
	 * Frees a `PangoGlyphItem`Iter.
	 *
	 * Since: 1.22
	 */
	public void free()
	{
		pango_glyph_item_iter_free(pangoGlyphItemIter);
		ownedRef = false;
	}

	/**
	 * Initializes a `PangoGlyphItemIter` structure to point to the
	 * last cluster in a glyph item.
	 *
	 * See `PangoGlyphItemIter` for details of cluster orders.
	 *
	 * Params:
	 *     glyphItem = the glyph item to iterate over
	 *     text = text corresponding to the glyph item
	 *
	 * Returns: %FALSE if there are no clusters in the glyph item
	 *
	 * Since: 1.22
	 */
	public bool initEnd(PgGlyphItem glyphItem, string text)
	{
		return pango_glyph_item_iter_init_end(pangoGlyphItemIter, (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct(), Str.toStringz(text)) != 0;
	}

	/**
	 * Initializes a `PangoGlyphItemIter` structure to point to the
	 * first cluster in a glyph item.
	 *
	 * See `PangoGlyphItemIter` for details of cluster orders.
	 *
	 * Params:
	 *     glyphItem = the glyph item to iterate over
	 *     text = text corresponding to the glyph item
	 *
	 * Returns: %FALSE if there are no clusters in the glyph item
	 *
	 * Since: 1.22
	 */
	public bool initStart(PgGlyphItem glyphItem, string text)
	{
		return pango_glyph_item_iter_init_start(pangoGlyphItemIter, (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct(), Str.toStringz(text)) != 0;
	}

	/**
	 * Advances the iterator to the next cluster in the glyph item.
	 *
	 * See `PangoGlyphItemIter` for details of cluster orders.
	 *
	 * Returns: %TRUE if the iterator was advanced,
	 *     %FALSE if we were already on the  last cluster.
	 *
	 * Since: 1.22
	 */
	public bool nextCluster()
	{
		return pango_glyph_item_iter_next_cluster(pangoGlyphItemIter) != 0;
	}

	/**
	 * Moves the iterator to the preceding cluster in the glyph item.
	 * See `PangoGlyphItemIter` for details of cluster orders.
	 *
	 * Returns: %TRUE if the iterator was moved,
	 *     %FALSE if we were already on the first cluster.
	 *
	 * Since: 1.22
	 */
	public bool prevCluster()
	{
		return pango_glyph_item_iter_prev_cluster(pangoGlyphItemIter) != 0;
	}
}
