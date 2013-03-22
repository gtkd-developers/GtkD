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
 * outPack = pango
 * outFile = PgGlyphItemIter
 * strct   = PangoGlyphItemIter
 * realStrct=
 * ctorStrct=
 * clss    = PgGlyphItemIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_glyph_item_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgGlyphItem
 * structWrap:
 * 	- PangoGlyphItem* -> PgGlyphItem
 * 	- PangoGlyphItemIter* -> PgGlyphItemIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgGlyphItemIter;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgGlyphItem;




/**
 * pango_shape() produces a string of glyphs which
 * can be measured or drawn to the screen. The following
 * structures are used to store information about
 * glyphs.
 */
public class PgGlyphItemIter
{
	
	/** the main Gtk struct */
	protected PangoGlyphItemIter* pangoGlyphItemIter;
	
	
	public PangoGlyphItemIter* getPgGlyphItemIterStruct()
	{
		return pangoGlyphItemIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphItemIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoGlyphItemIter* pangoGlyphItemIter)
	{
		this.pangoGlyphItemIter = pangoGlyphItemIter;
	}
	
	/**
	 */
	
	/**
	 * Make a shallow copy of an existing PangoGlyphItemIter structure.
	 * Since 1.22
	 * Returns: the newly allocated PangoGlyphItemIter, which should be freed with pango_glyph_item_iter_free(), or NULL if orig was NULL.
	 */
	public PgGlyphItemIter copy()
	{
		// PangoGlyphItemIter * pango_glyph_item_iter_copy (PangoGlyphItemIter *orig);
		auto p = pango_glyph_item_iter_copy(pangoGlyphItemIter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgGlyphItemIter)(cast(PangoGlyphItemIter*) p);
	}
	
	/**
	 * Frees a PangoGlyphItemIter created by pango_glyph_item_iter_copy().
	 * Since 1.22
	 */
	public void free()
	{
		// void pango_glyph_item_iter_free (PangoGlyphItemIter *iter);
		pango_glyph_item_iter_free(pangoGlyphItemIter);
	}
	
	/**
	 * Initializes a PangoGlyphItemIter structure to point to the
	 * first cluster in a glyph item.
	 * See PangoGlyphItemIter for details of cluster orders.
	 * Since 1.22
	 * Params:
	 * glyphItem = the glyph item to iterate over
	 * text = text corresponding to the glyph item
	 * Returns: FALSE if there are no clusters in the glyph item
	 */
	public int initStart(PgGlyphItem glyphItem, string text)
	{
		// gboolean pango_glyph_item_iter_init_start (PangoGlyphItemIter *iter,  PangoGlyphItem *glyph_item,  const char *text);
		return pango_glyph_item_iter_init_start(pangoGlyphItemIter, (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct(), Str.toStringz(text));
	}
	
	/**
	 * Initializes a PangoGlyphItemIter structure to point to the
	 * last cluster in a glyph item.
	 * See PangoGlyphItemIter for details of cluster orders.
	 * Since 1.22
	 * Params:
	 * glyphItem = the glyph item to iterate over
	 * text = text corresponding to the glyph item
	 * Returns: FALSE if there are no clusters in the glyph item
	 */
	public int initEnd(PgGlyphItem glyphItem, string text)
	{
		// gboolean pango_glyph_item_iter_init_end (PangoGlyphItemIter *iter,  PangoGlyphItem *glyph_item,  const char *text);
		return pango_glyph_item_iter_init_end(pangoGlyphItemIter, (glyphItem is null) ? null : glyphItem.getPgGlyphItemStruct(), Str.toStringz(text));
	}
	
	/**
	 * Advances the iterator to the next cluster in the glyph item.
	 * See PangoGlyphItemIter for details of cluster orders.
	 * Since 1.22
	 * Returns: TRUE if the iterator was advanced, FALSE if we were already on the last cluster.
	 */
	public int nextCluster()
	{
		// gboolean pango_glyph_item_iter_next_cluster (PangoGlyphItemIter *iter);
		return pango_glyph_item_iter_next_cluster(pangoGlyphItemIter);
	}
	
	/**
	 * Moves the iterator to the preceding cluster in the glyph item.
	 * See PangoGlyphItemIter for details of cluster orders.
	 * Since 1.22
	 * Returns: TRUE if the iterator was moved, FALSE if we were already on the first cluster.
	 */
	public int prevCluster()
	{
		// gboolean pango_glyph_item_iter_prev_cluster (PangoGlyphItemIter *iter);
		return pango_glyph_item_iter_prev_cluster(pangoGlyphItemIter);
	}
}
