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
 * inFile  = pango-Fonts.html
 * outPack = pango
 * outFile = PgFont
 * strct   = PangoFont
 * realStrct=
 * ctorStrct=
 * clss    = PgFont
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- pango_font_
 * omit structs:
 * omit prefixes:
 * 	- pango_font_description_
 * 	- pango_font_descriptions_
 * 	- pango_font_metrics_
 * 	- pango_font_family_
 * 	- pango_font_face_
 * 	- pango_font_map_
 * 	- pango_fontset_
 * 	- pango_fontset_simple_
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgEngineShape
 * 	- pango.PgFontDescription
 * 	- pango.PgCoverage
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontMap
 * 	- pango.PgLanguage
 * structWrap:
 * 	- PangoCoverage* -> PgCoverage
 * 	- PangoEngineShape* -> PgEngineShape
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFont;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgEngineShape;
private import pango.PgFontDescription;
private import pango.PgCoverage;
private import pango.PgFontMetrics;
private import pango.PgFontMap;
private import pango.PgLanguage;



private import gobject.ObjectG;

/**
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFont : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoFont* pangoFont;
	
	
	public PangoFont* getPgFontStruct()
	{
		return pangoFont;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFont;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFont* pangoFont)
	{
		super(cast(GObject*)pangoFont);
		this.pangoFont = pangoFont;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoFont = cast(PangoFont*)obj;
	}
	
	/**
	 */
	
	/**
	 * Finds the best matching shaper for a font for a particular
	 * language tag and character point.
	 * Params:
	 * language = the language tag
	 * ch = a Unicode character.
	 * Returns: the best matching shaper.
	 */
	public PgEngineShape findShaper(PgLanguage language, uint ch)
	{
		// PangoEngineShape * pango_font_find_shaper (PangoFont *font,  PangoLanguage *language,  guint32 ch);
		auto p = pango_font_find_shaper(pangoFont, (language is null) ? null : language.getPgLanguageStruct(), ch);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgEngineShape)(cast(PangoEngineShape*) p);
	}
	
	/**
	 * Returns a description of the font, with font size set in points.
	 * Use pango_font_describe_with_absolute_size() if you want the font
	 * size in device units.
	 * Returns: a newly-allocated PangoFontDescription object.
	 */
	public PgFontDescription describe()
	{
		// PangoFontDescription * pango_font_describe (PangoFont *font);
		auto p = pango_font_describe(pangoFont);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Returns a description of the font, with absolute font size set
	 * (in device units). Use pango_font_describe() if you want the font
	 * size in points.
	 * Since 1.14
	 * Returns: a newly-allocated PangoFontDescription object.
	 */
	public PgFontDescription describeWithAbsoluteSize()
	{
		// PangoFontDescription * pango_font_describe_with_absolute_size  (PangoFont *font);
		auto p = pango_font_describe_with_absolute_size(pangoFont);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Computes the coverage map for a given font and language tag.
	 * Params:
	 * language = the language tag
	 * Returns: a newly-allocated PangoCoverage object. [transfer full]
	 */
	public PgCoverage getCoverage(PgLanguage language)
	{
		// PangoCoverage * pango_font_get_coverage (PangoFont *font,  PangoLanguage *language);
		auto p = pango_font_get_coverage(pangoFont, (language is null) ? null : language.getPgLanguageStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) p);
	}
	
	/**
	 * Gets the logical and ink extents of a glyph within a font. The
	 * coordinate system for each rectangle has its origin at the
	 * base line and horizontal origin of the character with increasing
	 * coordinates extending to the right and down. The macros PANGO_ASCENT(),
	 * PANGO_DESCENT(), PANGO_LBEARING(), and PANGO_RBEARING() can be used to convert
	 * from the extents rectangle to more traditional font metrics. The units
	 * of the rectangles are in 1/PANGO_SCALE of a device unit.
	 * If font is NULL, this function gracefully sets some sane values in the
	 * output variables and returns.
	 * Params:
	 * glyph = the glyph index
	 * inkRect = rectangle used to store the extents of the glyph
	 * as drawn or NULL to indicate that the result is not needed. [out][allow-none]
	 * logicalRect = rectangle used to store the logical extents of
	 * the glyph or NULL to indicate that the result is not needed. [out][allow-none]
	 */
	public void getGlyphExtents(PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_font_get_glyph_extents (PangoFont *font,  PangoGlyph glyph,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_font_get_glyph_extents(pangoFont, glyph, inkRect, logicalRect);
	}
	
	/**
	 * Gets overall metric information for a font. Since the metrics may be
	 * substantially different for different scripts, a language tag can
	 * be provided to indicate that the metrics should be retrieved that
	 * correspond to the script(s) used by that language.
	 * If font is NULL, this function gracefully sets some sane values in the
	 * output variables and returns.
	 * Params:
	 * language = language tag used to determine which script to get the metrics
	 * for, or NULL to indicate to get the metrics for the entire font. [allow-none]
	 * Returns: a PangoFontMetrics object. The caller must call pango_font_metrics_unref() when finished using the object.
	 */
	public PgFontMetrics getMetrics(PgLanguage language)
	{
		// PangoFontMetrics * pango_font_get_metrics (PangoFont *font,  PangoLanguage *language);
		auto p = pango_font_get_metrics(pangoFont, (language is null) ? null : language.getPgLanguageStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) p);
	}
	
	/**
	 * Gets the font map for which the font was created.
	 * Note that the font maintains a weak reference
	 * to the font map, so if all references to font map are dropped, the font
	 * map will be finalized even if there are fonts created with the font
	 * map that are still alive. In that case this function will return NULL.
	 * It is the responsibility of the user to ensure that the font map is kept
	 * alive. In most uses this is not an issue as a PangoContext holds
	 * a reference to the font map.
	 * Since 1.10
	 * Returns: the PangoFontMap for the font, or NULL if font is NULL. [transfer none]
	 */
	public PgFontMap getFontMap()
	{
		// PangoFontMap * pango_font_get_font_map (PangoFont *font);
		auto p = pango_font_get_font_map(pangoFont);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) p);
	}
}
