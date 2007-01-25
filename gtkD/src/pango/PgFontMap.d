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
 * outFile = PgFontMap
 * strct   = PangoFontMap
 * realStrct=
 * ctorStrct=
 * clss    = PgFontMap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_font_map_
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
 * 	- pango.PgFontsetSimple
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
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgFontMap;

private import gtkc.pangotypes;

private import gtkc.pango;

private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontsetSimple;
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
public class PgFontMap
{
	
	/** the main Gtk struct */
	protected PangoFontMap* pangoFontMap;
	
	
	public PangoFontMap* getPgFontMapStruct()
	{
		return pangoFontMap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontMap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontMap* pangoFontMap)
	{
		this.pangoFontMap = pangoFontMap;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Load the font in the fontmap that is the closest match for desc.
	 * fontmap:
	 *  a PangoFontMap
	 * context:
	 *  the PangoContext the font will be used with
	 * desc:
	 *  a PangoFontDescription describing the font to load
	 * Returns:
	 * the font loaded, or NULL if no font matched.
	 */
	public PangoFont* loadFont(PgContext context, PgFontDescription desc)
	{
		// PangoFont* pango_font_map_load_font (PangoFontMap *fontmap,  PangoContext *context,  const PangoFontDescription *desc);
		return pango_font_map_load_font(pangoFontMap, (context is null) ? null : context.getPgContextStruct(), (desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Load a set of fonts in the fontmap that can be used to render
	 * a font matching desc.
	 * fontmap:
	 *  a PangoFontMap
	 * context:
	 *  the PangoContext the font will be used with
	 * desc:
	 *  a PangoFontDescription describing the font to load
	 * language:
	 *  a PangoLanguage the fonts will be used for
	 * Returns:
	 * the fontset, or NULL if no font matched.
	 */
	public PangoFontset* loadFontset(PgContext context, PgFontDescription desc, PgLanguage language)
	{
		// PangoFontset* pango_font_map_load_fontset (PangoFontMap *fontmap,  PangoContext *context,  const PangoFontDescription *desc,  PangoLanguage *language);
		return pango_font_map_load_fontset(pangoFontMap, (context is null) ? null : context.getPgContextStruct(), (desc is null) ? null : desc.getPgFontDescriptionStruct(), (language is null) ? null : language.getPgLanguageStruct());
	}
	
	/**
	 * List all families for a fontmap.
	 * fontmap:
	 *  a PangoFontMap
	 * families:
	 *  location to store a pointer to an array of PangoFontFamily *.
	 *  This array should be freed with g_free().
	 * n_families:
	 *  location to store the number of elements in families
	 */
	public void listFamilies(PangoFontFamily*** families, int* nFamilies)
	{
		// void pango_font_map_list_families (PangoFontMap *fontmap,  PangoFontFamily ***families,  int *n_families);
		pango_font_map_list_families(pangoFontMap, families, nFamilies);
	}
	
	/**
	 * Returns the render ID for shape engines for this fontmap.
	 * See the render_type field of
	 * PangoEngineInfo.
	 * fontmap:
	 *  a PangoFontMap
	 * Returns:
	 *  the ID string for shape engines for
	 *  this fontmap. Owned by Pango, should not be modified
	 *  or freed.
	 * Since 1.4
	 */
	public char[] getShapeEngineType()
	{
		// const char* pango_font_map_get_shape_engine_type  (PangoFontMap *fontmap);
		return Str.toString(pango_font_map_get_shape_engine_type(pangoFontMap) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
