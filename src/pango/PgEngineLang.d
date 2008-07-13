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
 * inFile  = PangoEngineLang.html
 * outPack = pango
 * outFile = PgEngineLang
 * strct   = PangoEngineLang
 * realStrct=
 * ctorStrct=
 * clss    = PgEngineLang
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- script_engine_lang_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgEngineLang;

public  import gtkc.pangotypes;

private import gtkc.pango;





private import pango.PgEngine;

/**
 * Description
 * The language engines are rendering-system independent
 * engines that determine line, word, and character breaks for character strings.
 * These engines are used in pango_break().
 */
public class PgEngineLang : PgEngine
{
	
	/** the main Gtk struct */
	protected PangoEngineLang* pangoEngineLang;
	
	
	public PangoEngineLang* getPgEngineLangStruct()
	{
		return pangoEngineLang;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngineLang;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoEngineLang* pangoEngineLang)
	{
		if(pangoEngineLang is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)pangoEngineLang);
		if( ptr !is null )
		{
			this = cast(PgEngineLang)ptr;
			return;
		}
		super(cast(PangoEngine*)pangoEngineLang);
		this.pangoEngineLang = pangoEngineLang;
	}
	
	/**
	 */
}
