/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
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
 * omit signals:
 * imports:
 * structWrap:
 * 	- PangoItem* -> PgItem
 * module aliases:
 * local aliases:
 */

module pango.PgItem;

public  import gtkc.pangotypes;

private import gtkc.pango;






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
		if(pangoItem is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null pangoItem passed to constructor.");
			else return;
		}
		this.pangoItem = pangoItem;
	}
	
	/**
	 */
	
	/**
	 * Free a PangoItem and all associated memory.
	 */
	public void free()
	{
		// void pango_item_free (PangoItem *item);
		pango_item_free(pangoItem);
	}
	
	/**
	 * Copy an existing PangoItem structure.
	 * Returns: the newly allocated PangoItem, which should be freed with pango_item_free(), or NULL if item was NULL.
	 */
	public PgItem copy()
	{
		// PangoItem* pango_item_copy (PangoItem *item);
		auto p = pango_item_copy(pangoItem);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgItem(cast(PangoItem*) p);
	}
	
	/**
	 * Creates a new PangoItem structure initialized to default values.
	 */
	public this ()
	{
		// PangoItem* pango_item_new (void);
		auto p = pango_item_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(PangoItem*) p);
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
	 * Params:
	 * splitIndex =  byte index of position to split item, relative to the start of the item
	 * splitOffset =  number of chars between start of orig and split_index
	 * Returns: new item representing text before split_index, which should be freed with pango_item_free().
	 */
	public PgItem split(int splitIndex, int splitOffset)
	{
		// PangoItem* pango_item_split (PangoItem *orig,  int split_index,  int split_offset);
		auto p = pango_item_split(pangoItem, splitIndex, splitOffset);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgItem(cast(PangoItem*) p);
	}
}
