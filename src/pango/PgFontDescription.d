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
 * outFile = PgFontDescription
 * strct   = PangoFontDescription
 * realStrct=
 * clss    = PgFontDescription
 * template for:
 * extend  = 
 * prefixes:
 * 	- pango_font_description_
 * omit structs:
 * omit prefixes:
 * 	- pango_font_metrics_
 * 	- pango_font_family_
 * 	- pango_font_face_
 * 	- pango_font_map_
 * 	- pango_fontset_simple_
 * omit code:
 * imports:
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
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
 * 	- glib.Str
 * structWrap:
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
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

module pango.PgFontDescription;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
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
public class PgFontDescription
{
	
	/** the main Gtk struct */
	protected PangoFontDescription* pangoFontDescription;
	
	
	public PangoFontDescription* getPgFontDescriptionStruct()
	{
		return pangoFontDescription;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontDescription;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontDescription* pangoFontDescription)
	{
		this.pangoFontDescription = pangoFontDescription;
	}
	
	/**
	 * Creates a nwe font description and set the family nd the size
	 * param: family Family
	 * param: size Size
	 */
	public this(char[] family, int size)
	{
		this();
		setFamily("Sans");
		setSize(size * PANGO_SCALE);
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new font description structure with all fields unset.
	 * Returns:
	 *  the newly-created PangoFontDescription. Use
	 * pango_font_description_free() to free the result.
	 */
	public this ()
	{
		// PangoFontDescription* pango_font_description_new  (void);
		this(cast(PangoFontDescription*)pango_font_description_new() );
	}
	
	/**
	 * Make a copy of a PangoFontDescription.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  a newly-allocated PangoFontDescription. This value
	 *  must be freed using pango_font_description_free().
	 */
	public PangoFontDescription* copy()
	{
		// PangoFontDescription* pango_font_description_copy  (const PangoFontDescription *desc);
		return pango_font_description_copy(pangoFontDescription);
	}
	
	/**
	 * Like pango_font_description_copy(), but only a shallow copy is made
	 * of the family name and other allocated fields. The result can only
	 * be used until desc is modififed or freed. This is meant to be used
	 * when the copy is only needed temporarily.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  a newly-allocated PangoFontDescription. This value
	 *  must be freed using pango_font_description_free().
	 */
	public PangoFontDescription* copyStatic()
	{
		// PangoFontDescription* pango_font_description_copy_static  (const PangoFontDescription *desc);
		return pango_font_description_copy_static(pangoFontDescription);
	}
	
	/**
	 * Computes a hash of a PangoFontDescription structure suitable
	 * to be used, for example, as an argument to g_hash_table_new().
	 * The hash value is independent of desc->mask.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  the hash value.
	 */
	public uint hash()
	{
		// guint pango_font_description_hash (const PangoFontDescription *desc);
		return pango_font_description_hash(pangoFontDescription);
	}
	
	/**
	 * Compares two font descriptions for equality. Two font descriptions
	 * are considered equal if the fonts they describe are provably identical.
	 * This means that their maskd do not have to match, as long as other fields
	 * are all the same. (Two font descrptions may result in identical fonts
	 * being loaded, but still compare FALSE.)
	 * desc1:
	 *  a PangoFontDescription
	 * desc2:
	 *  another PangoFontDescription
	 * Returns:
	 *  TRUE if the two font descriptions are identical,
	 * 		 FALSE otherwise.
	 */
	public int equal(PangoFontDescription* desc2)
	{
		// gboolean pango_font_description_equal (const PangoFontDescription *desc1,  const PangoFontDescription *desc2);
		return pango_font_description_equal(pangoFontDescription, desc2);
	}
	
	/**
	 * Frees a font description.
	 * desc:
	 *  a PangoFontDescription
	 */
	public void free()
	{
		// void pango_font_description_free (PangoFontDescription *desc);
		pango_font_description_free(pangoFontDescription);
	}
	
	/**
	 * Frees a list of font descriptions from pango_font_map_list_fonts()
	 * descs:
	 *  a pointer to an array of PangoFontDescription
	 * n_descs:
	 *  number of font descriptions in descs
	 */
	public static void pangoFontDescriptionsFree(PangoFontDescription** descs, int nDescs)
	{
		// void pango_font_descriptions_free (PangoFontDescription **descs,  int n_descs);
		pango_font_descriptions_free(descs, nDescs);
	}
	
	/**
	 * Sets the family name field of a font description. The family
	 * name represents a family of related font styles, and will
	 * resolve to a particular PangoFontFamily. In some uses of
	 * PangoFontDescription, it is also possible to use a comma
	 * separated list of family names for this field.
	 * desc:
	 *  a PangoFontDescription.
	 * family:
	 *  a string representing the family name.
	 */
	public void setFamily(char[] family)
	{
		// void pango_font_description_set_family  (PangoFontDescription *desc,  const char *family);
		pango_font_description_set_family(pangoFontDescription, Str.toStringz(family));
	}
	
	/**
	 * Like pango_font_description_set_family(), except that no
	 * copy of family is made. The caller must make sure that the
	 * string passed in stays around until desc has been freed
	 * or the name is set again. This function can be used if
	 * family is a static string such as a C string literal, or
	 * if desc is only needed temporarily.
	 * desc:
	 *  a PangoFontDescription
	 * family:
	 *  a string representing the family name.
	 */
	public void setFamilyStatic(char[] family)
	{
		// void pango_font_description_set_family_static  (PangoFontDescription *desc,  const char *family);
		pango_font_description_set_family_static(pangoFontDescription, Str.toStringz(family));
	}
	
	/**
	 * Gets the family name field of a font description. See
	 * pango_font_description_set_family().
	 * desc:
	 *  a PangoFontDescription.
	 * Returns:
	 *  The family name field. (Will be NULL if not previously set.)
	 */
	public char[] getFamily()
	{
		// const char* pango_font_description_get_family  (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_get_family(pangoFontDescription) );
	}
	
	/**
	 * Sets the style field of a PangoFontDescription. The
	 * PangoStyle enumeration describes whether the font is slanted and
	 * the manner in which it is slanted; it can be either
	 * PANGO_STYLE_NORMAL, PANGO_STYLE_ITALIC, or PANGO_STYLE_OBLIQUE.
	 * Most fonts will either have a italic style or an oblique
	 * style, but not both, and font matching in Pango will
	 * match italic specifications with oblique fonts and vice-versa
	 * if an exact match is not found.
	 * desc:
	 *  a PangoFontDescription
	 * style:
	 *  the style for the font description
	 */
	public void setStyle(PangoStyle style)
	{
		// void pango_font_description_set_style  (PangoFontDescription *desc,  PangoStyle style);
		pango_font_description_set_style(pangoFontDescription, style);
	}
	
	/**
	 * Gets the style field of a PangoFontDescription. See
	 * pango_font_description_set_style().
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  the style field for the font description.
	 *  Use pango_font_description_get_set_fields() to find out if
	 *  the field was explicitely set or not.
	 */
	public PangoStyle getStyle()
	{
		// PangoStyle pango_font_description_get_style  (const PangoFontDescription *desc);
		return pango_font_description_get_style(pangoFontDescription);
	}
	
	/**
	 * Sets the variant field of a font description. The PangoVariant
	 * can either be PANGO_VARIANT_NORMAL or PANGO_VARIANT_SMALL_CAPS.
	 * desc:
	 *  a PangoFontDescription
	 * variant:
	 *  the variant type for the font description.
	 */
	public void setVariant(PangoVariant variant)
	{
		// void pango_font_description_set_variant  (PangoFontDescription *desc,  PangoVariant variant);
		pango_font_description_set_variant(pangoFontDescription, variant);
	}
	
	/**
	 * Gets the variant field of a PangoFontDescription. See
	 * pango_font_description_set_variant().
	 * desc:
	 *  a PangoFontDescription.
	 * Returns:
	 *  the variant field for the font description. Use
	 *  pango_font_description_get_set_fields() to find out if
	 *  the field was explicitely set or not.
	 */
	public PangoVariant getVariant()
	{
		// PangoVariant pango_font_description_get_variant  (const PangoFontDescription *desc);
		return pango_font_description_get_variant(pangoFontDescription);
	}
	
	/**
	 * Sets the weight field of a font description. The weight field
	 * specifies how bold or light the font should be. In addition
	 * to the values of the PangoWeight enumeration, other intermediate
	 * numeric values are possible.
	 * desc:
	 *  a PangoFontDescription
	 * weight:
	 *  the weight for the font description.
	 */
	public void setWeight(PangoWeight weight)
	{
		// void pango_font_description_set_weight  (PangoFontDescription *desc,  PangoWeight weight);
		pango_font_description_set_weight(pangoFontDescription, weight);
	}
	
	/**
	 * Gets the weight field of a font description. See
	 * pango_font_description_set_weight().
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  the weight field for the font description. Use
	 *  pango_font_description_get_set_fields() to find out if
	 *  the field was explicitely set or not.
	 */
	public PangoWeight getWeight()
	{
		// PangoWeight pango_font_description_get_weight  (const PangoFontDescription *desc);
		return pango_font_description_get_weight(pangoFontDescription);
	}
	
	/**
	 * Sets the stretch field of a font description. The stretch field
	 * specifies how narrow or wide the font should be.
	 * desc:
	 *  a PangoFontDescription
	 * stretch:
	 *  the stretch for the font description
	 */
	public void setStretch(PangoStretch stretch)
	{
		// void pango_font_description_set_stretch  (PangoFontDescription *desc,  PangoStretch stretch);
		pango_font_description_set_stretch(pangoFontDescription, stretch);
	}
	
	/**
	 * Gets the stretch field of a font description.
	 * See pango_font_description_set_stretch().
	 * desc:
	 *  a PangoFontDescription.
	 * Returns:
	 *  the stretch field for the font description. Use
	 *  pango_font_description_get_set_fields() to find out if
	 *  the field was explicitely set or not.
	 */
	public PangoStretch getStretch()
	{
		// PangoStretch pango_font_description_get_stretch  (const PangoFontDescription *desc);
		return pango_font_description_get_stretch(pangoFontDescription);
	}
	
	/**
	 * Sets the size field of a font description in fractional points. This is mutually
	 * exclusive with pango_font_description_set_absolute_size().
	 * desc:
	 *  a PangoFontDescription
	 * size:
	 *  the size of the font in points, scaled by PANGO_SCALE. (That is,
	 *  a size value of 10 * PANGO_SCALE is a 10 point font. The conversion
	 *  factor between points and device units depends on system configuration
	 *  and the output device. For screen display, a logical DPI of 96 is
	 *  common, in which case a 10 point font corresponds to a 10 * (96 / 72) = 13.3
	 *  pixel font. Use pango_font_description_set_absolute_size() if you need
	 *  a particular size in device units.
	 */
	public void setSize(int size)
	{
		// void pango_font_description_set_size (PangoFontDescription *desc,  gint size);
		pango_font_description_set_size(pangoFontDescription, size);
	}
	
	/**
	 * Gets the size field of a font description.
	 * See pango_font_description_get_size().
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  the size field for the font description in points or device units.
	 *  You must call pango_font_description_get_size_is_absolute()
	 *  to find out which is the case. Returns 0 if the size field has not
	 *  previously been set. pango_font_description_get_set_fields() to
	 *  find out if the field was explicitely set or not.
	 */
	public int getSize()
	{
		// gint pango_font_description_get_size (const PangoFontDescription *desc);
		return pango_font_description_get_size(pangoFontDescription);
	}
	
	/**
	 * Sets the size field of a font description, in device units. This is mutually
	 * exclusive with pango_font_description_set_size().
	 * desc:
	 *  a PangoFontDescription
	 * size:
	 *  the new size, in Pango units. There are PANGO_SCALE Pango units in one
	 *  device unit. For an output backend where a device unit is a pixel, a size
	 *  value of 10 * PANGO_SCALE gives a 10 pixel font.
	 * Since 1.8
	 */
	public void setAbsoluteSize(double size)
	{
		// void pango_font_description_set_absolute_size  (PangoFontDescription *desc,  double size);
		pango_font_description_set_absolute_size(pangoFontDescription, size);
	}
	
	/**
	 * Determines whether the size of the font is in points or device units.
	 * See pango_font_description_set_size() and pango_font_description_set_absolute_size().
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  whether the size for the font description is in
	 *  points or device units. Use pango_font_description_get_set_fields() to
	 *  find out if the size field of the font description was explicitely set or not.
	 * Since 1.8
	 */
	public int getSizeIsAbsolute()
	{
		// gboolean pango_font_description_get_size_is_absolute  (const PangoFontDescription *desc);
		return pango_font_description_get_size_is_absolute(pangoFontDescription);
	}
	
	/**
	 * Determines which fields in a font description have been set.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  a bitmask with bits set corresponding to the
	 *  fields in desc that have been set.
	 */
	public PangoFontMask getSetFields()
	{
		// PangoFontMask pango_font_description_get_set_fields  (const PangoFontDescription *desc);
		return pango_font_description_get_set_fields(pangoFontDescription);
	}
	
	/**
	 * Unsets some of the fields in a PangoFontDescription. The unset
	 * fields will get back to their default values.
	 * desc:
	 *  a PangoFontDescription
	 * to_unset:
	 *  bitmask of fields in the desc to unset.
	 */
	public void unsetFields(PangoFontMask toUnset)
	{
		// void pango_font_description_unset_fields  (PangoFontDescription *desc,  PangoFontMask to_unset);
		pango_font_description_unset_fields(pangoFontDescription, toUnset);
	}
	
	/**
	 * Merges the fields that are set in desc_to_merge into the fields in
	 * desc. If replace_existing is FALSE, only fields in desc that
	 * are not already set are affected. If TRUE, then fields that are
	 * already set will be replaced as well.
	 * desc:
	 *  a PangoFontDescription
	 * desc_to_merge:
	 *  the PangoFontDescription to merge from
	 * replace_existing:
	 *  if TRUE, replace fields in desc with the
	 *  corresponding values from desc_to_merge, even if they
	 *  are already exist.
	 */
	public void merge(PangoFontDescription* descToMerge, int replaceExisting)
	{
		// void pango_font_description_merge (PangoFontDescription *desc,  const PangoFontDescription *desc_to_merge,  gboolean replace_existing);
		pango_font_description_merge(pangoFontDescription, descToMerge, replaceExisting);
	}
	
	/**
	 * Like pango_font_description_merge(), but only a shallow copy is made
	 * of the family name and other allocated fields. desc can only be
	 * used until desc_to_merge is modified or freed. This is meant
	 * to be used when the merged font description is only needed temporarily.
	 * desc:
	 *  a PangoFontDescription
	 * desc_to_merge:
	 *  the PangoFontDescription to merge from
	 * replace_existing:
	 *  if TRUE, replace fields in desc with the
	 *  corresponding values from desc_to_merge, even if they
	 *  are already exist.
	 */
	public void mergeStatic(PangoFontDescription* descToMerge, int replaceExisting)
	{
		// void pango_font_description_merge_static  (PangoFontDescription *desc,  const PangoFontDescription *desc_to_merge,  gboolean replace_existing);
		pango_font_description_merge_static(pangoFontDescription, descToMerge, replaceExisting);
	}
	
	/**
	 * Determines if the style attributes of new_match are a closer match
	 * for desc than old_match, or if old_match is NULL, determines if
	 * new_match is a match at all. Approximate matching is done for
	 * weight and style; other attributes must match exactly.
	 * desc:
	 *  a PangoFontDescription
	 * old_match:
	 *  a PangoFontDescription, or NULL
	 * new_match:
	 *  a PangoFontDescription
	 * Returns:
	 *  TRUE if new_match is a better match
	 */
	public int betterMatch(PangoFontDescription* oldMatch, PangoFontDescription* newMatch)
	{
		// gboolean pango_font_description_better_match  (const PangoFontDescription *desc,  const PangoFontDescription *old_match,  const PangoFontDescription *new_match);
		return pango_font_description_better_match(pangoFontDescription, oldMatch, newMatch);
	}
	
	/**
	 * Creates a new font description from a string representation in the
	 * form "[FAMILY-LIST] [STYLE-OPTIONS] [SIZE]", where FAMILY-LIST is a
	 * comma separated list of families optionally terminated by a comma,
	 * STYLE_OPTIONS is a whitespace separated list of words where each
	 * WORD describes one of style, variant, weight, or stretch, and SIZE
	 * is an decimal number (size in points). Any one of the options may
	 * be absent. If FAMILY-LIST is absent, then the family_name field of
	 * the resulting font description will be initialized to NULL. If
	 * STYLE-OPTIONS is missing, then all style options will be set to the
	 * default values. If SIZE is missing, the size in the resulting font
	 * description will be set to 0.
	 * str:
	 *  string representation of a font description.
	 * Returns:
	 *  a new PangoFontDescription.
	 */
	public static PangoFontDescription* fromString(char[] str)
	{
		// PangoFontDescription* pango_font_description_from_string  (const char *str);
		return pango_font_description_from_string(Str.toStringz(str));
	}
	
	/**
	 * Creates a string representation of a font description. See
	 * pango_font_description_from_string() for a description of the
	 * format of the string representation. The family list in the
	 * string description will only have a terminating comma if the
	 * last word of the list is a valid style option.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  a new string that must be freed with g_free().
	 */
	public char[] toString()
	{
		// char* pango_font_description_to_string  (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_to_string(pangoFontDescription) );
	}
	
	/**
	 * Creates a filename representation of a font description. The
	 * filename is identical to the result from calling
	 * pango_font_description_to_string(), but with underscores instead of
	 * characters that are untypical in filenames, and in lower case only.
	 * desc:
	 *  a PangoFontDescription
	 * Returns:
	 *  a new string that must be freed with g_free().
	 */
	public char[] toFilename()
	{
		// char* pango_font_description_to_filename  (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_to_filename(pangoFontDescription) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Finds the best matching shaper for a font for a particular
	 * language tag and character point.
	 * font:
	 *  a PangoFont
	 * language:
	 *  the language tag
	 * ch:
	 *  a Unicode character.
	 * Returns:
	 *  the best matching shaper.
	 */
	public static PangoEngineShape* pangoFontFindShaper(PangoFont* font, PgLanguage language, uint ch)
	{
		// PangoEngineShape* pango_font_find_shaper (PangoFont *font,  PangoLanguage *language,  guint32 ch);
		return pango_font_find_shaper(font, (language is null) ? null : language.getPgLanguageStruct(), ch);
	}
	
	/**
	 * Returns a description of the font.
	 * font:
	 *  a PangoFont
	 * Returns:
	 *  a newly-allocated PangoFontDescription object.
	 */
	public static PangoFontDescription* pangoFontDescribe(PangoFont* font)
	{
		// PangoFontDescription* pango_font_describe (PangoFont *font);
		return pango_font_describe(font);
	}
	
	/**
	 * Computes the coverage map for a given font and language tag.
	 * font:
	 *  a PangoFont
	 * language:
	 *  the language tag
	 * Returns:
	 *  a newly-allocated PangoCoverage object.
	 */
	public static PangoCoverage* pangoFontGetCoverage(PangoFont* font, PgLanguage language)
	{
		// PangoCoverage* pango_font_get_coverage (PangoFont *font,  PangoLanguage *language);
		return pango_font_get_coverage(font, (language is null) ? null : language.getPgLanguageStruct());
	}
	
	/**
	 * Gets the logical and ink extents of a glyph within a font. The
	 * coordinate system for each rectangle has its origin at the
	 * base line and horizontal origin of the character with increasing
	 * coordinates extending to the right and down. The macros PANGO_ASCENT(),
	 * PANGO_DESCENT(), PANGO_LBEARING(), and PANGO_RBEARING() can be used to convert
	 * from the extents rectangle to more traditional font metrics. The units
	 * of the rectangles are in 1/PANGO_SCALE of a device unit.
	 * font:
	 *  a PangoFont
	 * glyph:
	 *  the glyph index
	 * ink_rect:
	 *  rectangle used to store the extents of the glyph as drawn
	 *  or NULL to indicate that the result is not needed.
	 * logical_rect:
	 *  rectangle used to store the logical extents of the glyph
	 *  or NULL to indicate that the result is not needed.
	 */
	public static void pangoFontGetGlyphExtents(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// void pango_font_get_glyph_extents (PangoFont *font,  PangoGlyph glyph,  PangoRectangle *ink_rect,  PangoRectangle *logical_rect);
		pango_font_get_glyph_extents(font, glyph, inkRect, logicalRect);
	}
	
	/**
	 * Gets overall metric information for a font. Since the metrics may be
	 * substantially different for different scripts, a language tag can
	 * be provided to indicate that the metrics should be retrieved that
	 * correspond to the script(s) used by that language.
	 * font:
	 *  a PangoFont
	 * language:
	 *  language tag used to determine which script to get the metrics
	 *  for, or NULL to indicate to get the metrics for the entire
	 *  font.
	 * Returns:
	 *  a PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *  when finished using the object.
	 */
	public static PgFontMetrics pangoFontGetMetrics(PangoFont* font, PgLanguage language)
	{
		// PangoFontMetrics* pango_font_get_metrics (PangoFont *font,  PangoLanguage *language);
		return new PgFontMetrics( pango_font_get_metrics(font, (language is null) ? null : language.getPgLanguageStruct()) );
	}
	
	/**
	 * Gets the font map for which the font was created.
	 * font:
	 *  a PangoFont
	 * Returns:
	 *  the PangoFontMap for the font
	 * Since 1.10
	 */
	public static PgFontMap pangoFontGetFontMap(PangoFont* font)
	{
		// PangoFontMap* pango_font_get_font_map (PangoFont *font);
		return new PgFontMap( pango_font_get_font_map(font) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Returns the font in the fontset that contains the best glyph for the
	 * Unicode character wc.
	 * fontset:
	 *  a PangoFontset
	 * wc:
	 *  a Unicode character
	 * Returns:
	 *  a PangoFont. The caller must call g_object_unref when finished
	 *  with the font.
	 */
	public static PangoFont* pangoFontsetGetFont(PangoFontset* fontset, uint wc)
	{
		// PangoFont* pango_fontset_get_font (PangoFontset *fontset,  guint wc);
		return pango_fontset_get_font(fontset, wc);
	}
	
	/**
	 * Get overall metric information for the fonts in the fontset.
	 * fontset:
	 *  a PangoFontset
	 * Returns:
	 *  a PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *  when finished using the object.
	 */
	public static PgFontMetrics pangoFontsetGetMetrics(PangoFontset* fontset)
	{
		// PangoFontMetrics* pango_fontset_get_metrics (PangoFontset *fontset);
		return new PgFontMetrics( pango_fontset_get_metrics(fontset) );
	}
	
	
	/**
	 * Iterates through all the fonts in a fontset, calling func for
	 * each one. If func returns TRUE, that stops the iteration.
	 * fontset:
	 *  a PangoFontset
	 * func:
	 *  Callback function
	 * data:
	 *  data to pass to the callback function
	 * Since 1.4
	 */
	public static void pangoFontsetForeach(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data)
	{
		// void pango_fontset_foreach (PangoFontset *fontset,  PangoFontsetForeachFunc func,  gpointer data);
		pango_fontset_foreach(fontset, func, data);
	}
	
	
	
	
	
}
