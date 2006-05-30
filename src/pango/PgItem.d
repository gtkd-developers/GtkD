/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = pango
 * outFile = PgItem
 * strct   = PangoItem
 * realStrct=
 * ctorStrct=
 * clss    = PgItem
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- pango.PgContext
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * structWrap:
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgItem;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;

/**
 * Description
 * The Pango rendering pipeline takes a string of
 * Unicode characters and converts it into glyphs.
 * The functions described in this section accomplish
 * various steps of this process.
 */
public class PgItem
{
	
	/** the main Gtk struct */
	protected PangoItem* pangoItem;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoItem* pangoItem)
	{
		this.pangoItem = pangoItem;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	/**
	 * Free a PangoItem and all associated memory.
	 * item:
	 *  a PangoItem
	 */
	public void free()
	{
		// void pango_item_free (PangoItem *item);
		pango_item_free(pangoItem);
	}
	
	/**
	 * Copy an existing PangoItem structure.
	 * item:
	 *  a PangoItem
	 * Returns:
	 *  the new PangoItem
	 */
	public PangoItem* copy()
	{
		// PangoItem* pango_item_copy (PangoItem *item);
		return pango_item_copy(pangoItem);
	}
	
	/**
	 * Creates a new PangoItem structure initialized to default values.
	 * Returns:
	 *  the new PangoItem
	 */
	public this ()
	{
		// PangoItem* pango_item_new (void);
		this(cast(PangoItem*)pango_item_new() );
	}
	
	/**
	 * Modifies orig to cover only the text after split_index, and
	 * returns a new item that covers the text before split_index that
	 * used to be in orig. You can think of split_index as the length of
	 * the returned item. split_index may not be 0, and it may not be
	 * greater than or equal to the length of orig (that is, there must
	 * be at least one byte assigned to each item, you can't create a
	 * zero-length item). split_offset is the length of the first item in
	 * chars, and must be provided because the text used to generate the
	 * item isn't available, so pango_item_split() can't count the char
	 * length of the split items itself.
	 * orig:
	 *  a PangoItem
	 * split_index:
	 *  byte index of position to split item, relative to the start of the item
	 * split_offset:
	 *  number of chars between start of orig and split_index
	 * Returns:
	 *  new item representing text before split_index
	 */
	public PangoItem* split(int splitIndex, int splitOffset)
	{
		// PangoItem* pango_item_split (PangoItem *orig,  int split_index,  int split_offset);
		return pango_item_split(pangoItem, splitIndex, splitOffset);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
