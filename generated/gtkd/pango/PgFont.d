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


module pango.PgFont;

private import gobject.ObjectG;
private import harfbuzz.feature_t;
private import pango.PgCoverage;
private import pango.PgEngineShape;
private import pango.PgFontDescription;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontMetrics;
private import pango.PgLanguage;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The #PangoFont structure is used to represent
 * a font in a rendering-system-independent matter.
 * To create an implementation of a #PangoFont,
 * the rendering-system specific code should allocate
 * a larger structure that contains a nested
 * #PangoFont, fill in the <structfield>klass</structfield> member of
 * the nested #PangoFont with a pointer to
 * a appropriate #PangoFontClass, then call
 * pango_font_init() on the structure.
 * 
 * The #PangoFont structure contains one member
 * which the implementation fills in.
 */
public class PgFont : ObjectG
{
	/** the main Gtk struct */
	protected PangoFont* pangoFont;

	/** Get the main Gtk struct */
	public PangoFont* getPgFontStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoFont;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFont;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoFont* pangoFont, bool ownedRef = false)
	{
		this.pangoFont = pangoFont;
		super(cast(GObject*)pangoFont, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_font_get_type();
	}

	/**
	 * Frees an array of font descriptions.
	 *
	 * Params:
	 *     descs = a pointer
	 *         to an array of #PangoFontDescription, may be %NULL
	 */
	public static void descriptionsFree(PgFontDescription[] descs)
	{
		PangoFontDescription*[] descsArray = new PangoFontDescription*[descs.length];
		for ( int i = 0; i < descs.length; i++ )
		{
			descsArray[i] = descs[i].getPgFontDescriptionStruct();
		}

		pango_font_descriptions_free(descsArray.ptr, cast(int)descs.length);
	}

	/**
	 * Returns a description of the font, with font size set in points.
	 * Use pango_font_describe_with_absolute_size() if you want the font
	 * size in device units.
	 *
	 * Returns: a newly-allocated #PangoFontDescription object.
	 */
	public PgFontDescription describe()
	{
		auto __p = pango_font_describe(pangoFont);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Returns a description of the font, with absolute font size set
	 * (in device units). Use pango_font_describe() if you want the font
	 * size in points.
	 *
	 * Returns: a newly-allocated #PangoFontDescription object.
	 *
	 * Since: 1.14
	 */
	public PgFontDescription describeWithAbsoluteSize()
	{
		auto __p = pango_font_describe_with_absolute_size(pangoFont);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Finds the best matching shaper for a font for a particular
	 * language tag and character point.
	 *
	 * Deprecated: Shape engines are no longer used
	 *
	 * Params:
	 *     language = the language tag
	 *     ch = a Unicode character.
	 *
	 * Returns: the best matching shaper.
	 */
	public PgEngineShape findShaper(PgLanguage language, uint ch)
	{
		auto __p = pango_font_find_shaper(pangoFont, (language is null) ? null : language.getPgLanguageStruct(), ch);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgEngineShape)(cast(PangoEngineShape*) __p);
	}

	/**
	 * Computes the coverage map for a given font and language tag.
	 *
	 * Params:
	 *     language = the language tag
	 *
	 * Returns: a newly-allocated #PangoCoverage
	 *     object.
	 */
	public PgCoverage getCoverage(PgLanguage language)
	{
		auto __p = pango_font_get_coverage(pangoFont, (language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgCoverage)(cast(PangoCoverage*) __p, true);
	}

	/**
	 * Gets the #PangoFontFace to which @font belongs.
	 *
	 * Returns: the #PangoFontFace
	 *
	 * Since: 1.46
	 */
	public PgFontFace getFace()
	{
		auto __p = pango_font_get_face(pangoFont);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) __p);
	}

	/**
	 * Obtain the OpenType features that are provided by the font.
	 * These are passed to the rendering system, together with features
	 * that have been explicitly set via attributes.
	 *
	 * Note that this does not include OpenType features which the
	 * rendering system enables by default.
	 *
	 * Params:
	 *     features = Array to features in
	 *     numFeatures = the number of used items in @features
	 *
	 * Since: 1.44
	 */
	public void getFeatures(out feature_t[] features, ref uint numFeatures)
	{
		hb_feature_t* outfeatures = null;

		pango_font_get_features(pangoFont, outfeatures, cast(uint)features.length, &numFeatures);

		features = new feature_t[cast(uint)features.length];
		for(size_t i = 0; i < cast(uint)features.length; i++)
		{
			features[i] = ObjectG.getDObject!(feature_t)(cast(hb_feature_t*) &outfeatures[i]);
		}
	}

	/**
	 * Gets the font map for which the font was created.
	 *
	 * Note that the font maintains a <firstterm>weak</firstterm> reference
	 * to the font map, so if all references to font map are dropped, the font
	 * map will be finalized even if there are fonts created with the font
	 * map that are still alive.  In that case this function will return %NULL.
	 * It is the responsibility of the user to ensure that the font map is kept
	 * alive.  In most uses this is not an issue as a #PangoContext holds
	 * a reference to the font map.
	 *
	 * Returns: the #PangoFontMap for the
	 *     font, or %NULL if @font is %NULL.
	 *
	 * Since: 1.10
	 */
	public PgFontMap getFontMap()
	{
		auto __p = pango_font_get_font_map(pangoFont);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) __p);
	}

	/**
	 * Gets the logical and ink extents of a glyph within a font. The
	 * coordinate system for each rectangle has its origin at the
	 * base line and horizontal origin of the character with increasing
	 * coordinates extending to the right and down. The macros PANGO_ASCENT(),
	 * PANGO_DESCENT(), PANGO_LBEARING(), and PANGO_RBEARING() can be used to convert
	 * from the extents rectangle to more traditional font metrics. The units
	 * of the rectangles are in 1/PANGO_SCALE of a device unit.
	 *
	 * If @font is %NULL, this function gracefully sets some sane values in the
	 * output variables and returns.
	 *
	 * Params:
	 *     glyph = the glyph index
	 *     inkRect = rectangle used to store the extents of the glyph
	 *         as drawn or %NULL to indicate that the result is not needed.
	 *     logicalRect = rectangle used to store the logical extents of
	 *         the glyph or %NULL to indicate that the result is not needed.
	 */
	public void getGlyphExtents(PangoGlyph glyph, out PangoRectangle inkRect, out PangoRectangle logicalRect)
	{
		pango_font_get_glyph_extents(pangoFont, glyph, &inkRect, &logicalRect);
	}

	/**
	 * Get a hb_font_t object backing this font.
	 *
	 * Note that the objects returned by this function
	 * are cached and immutable. If you need to make
	 * changes to the hb_font_t, use hb_font_create_sub_font().
	 *
	 * Returns: the hb_font_t object backing the
	 *     font, or %NULL if the font does not have one
	 *
	 * Since: 1.44
	 */
	public hb_font_t* getHbFont()
	{
		return pango_font_get_hb_font(pangoFont);
	}

	/**
	 * Gets overall metric information for a font. Since the metrics may be
	 * substantially different for different scripts, a language tag can
	 * be provided to indicate that the metrics should be retrieved that
	 * correspond to the script(s) used by that language.
	 *
	 * If @font is %NULL, this function gracefully sets some sane values in the
	 * output variables and returns.
	 *
	 * Params:
	 *     language = language tag used to determine which script to get the metrics
	 *         for, or %NULL to indicate to get the metrics for the entire font.
	 *
	 * Returns: a #PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *     when finished using the object.
	 */
	public PgFontMetrics getMetrics(PgLanguage language)
	{
		auto __p = pango_font_get_metrics(pangoFont, (language is null) ? null : language.getPgLanguageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMetrics)(cast(PangoFontMetrics*) __p, true);
	}

	/**
	 * Returns whether the font provides a glyph for this character.
	 *
	 * Returns %TRUE if @font can render @wc
	 *
	 * Params:
	 *     wc = a Unicode character
	 *
	 * Since: 1.44
	 */
	public bool hasChar(dchar wc)
	{
		return pango_font_has_char(pangoFont, wc) != 0;
	}
}
