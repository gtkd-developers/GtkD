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
 * outFile = PgFontsetSimple
 * strct   = PangoFontsetSimple
 * realStrct=
 * clss    = PgFontsetSimple
 * extend  = 
 * prefixes:
 * 	- pango_fontset_simple_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * 	- glib.Str
 * structWrap:
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgFontsetSimple;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-indepent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontsetSimple
{
	
	/** the main Gtk struct */
	protected PangoFontsetSimple* pangoFontsetSimple;
	
	
	public PangoFontsetSimple* getPgFontsetSimpleStruct()
	{
		return pangoFontsetSimple;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontsetSimple;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontsetSimple* pangoFontsetSimple)
	{
		this.pangoFontsetSimple = pangoFontsetSimple;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new PangoFontsetSimple for the given language.
	 * language:
	 *  a PangoLanguage tag
	 * Returns:
	 *  a newly-allocated PangoFontsetSimple.
	 */
	public this (PgLanguage language)
	{
		// PangoFontsetSimple* pango_fontset_simple_new  (PangoLanguage *language);
		this(cast(PangoFontsetSimple*)pango_fontset_simple_new((language is null) ? null : language.getPgLanguageStruct()) );
	}
	
	/**
	 * Adds a font to the fontset.
	 * fontset:
	 *  a PangoFontsetSimple.
	 * font:
	 *  a PangoFont.
	 */
	public void append(PangoFont* font)
	{
		// void pango_fontset_simple_append (PangoFontsetSimple *fontset,  PangoFont *font);
		pango_fontset_simple_append(pangoFontsetSimple, font);
	}
	
	/**
	 * Returns the number of fonts in the fontset.
	 * fontset:
	 *  a PangoFontsetSimple.
	 * Returns:
	 *  the size of fontset.
	 */
	public int size()
	{
		// int pango_fontset_simple_size (PangoFontsetSimple *fontset);
		return pango_fontset_simple_size(pangoFontsetSimple);
	}
}
