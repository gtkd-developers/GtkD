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
 * overrides:
 */

module pango.PgItem;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;






/**
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
			return;
		}
		this.pangoItem = pangoItem;
	}
	
	/**
	 */
}
