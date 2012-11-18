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
 * outFile = PgFontDescription
 * strct   = PangoFontDescription
 * realStrct=
 * ctorStrct=
 * clss    = PgFontDescription
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_font_description_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- PangoFontDescription* -> PgFontDescription
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module pango.PgFontDescription;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gobject.Boxed;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontDescription : Boxed
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
	 * Params:
	 *  family = Family
	 *  size = Size
	 */
	public this(string family, int size)
	{
		this();
		setFamily(family);
		setSize(size * PANGO_SCALE);
	}
	
	/**
	 */
	
	/**
	 * Creates a new font description structure with all fields unset.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// PangoFontDescription * pango_font_description_new (void);
		auto p = pango_font_description_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by pango_font_description_new()");
		}
		this(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Make a copy of a PangoFontDescription.
	 * Returns: the newly allocated PangoFontDescription, which should be freed with pango_font_description_free(), or NULL if desc was NULL.
	 */
	public PgFontDescription copy()
	{
		// PangoFontDescription * pango_font_description_copy (const PangoFontDescription *desc);
		auto p = pango_font_description_copy(pangoFontDescription);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Like pango_font_description_copy(), but only a shallow copy is made
	 * of the family name and other allocated fields. The result can only
	 * be used until desc is modified or freed. This is meant to be used
	 * when the copy is only needed temporarily.
	 * Returns: the newly allocated PangoFontDescription, which should be freed with pango_font_description_free(), or NULL if desc was NULL.
	 */
	public PgFontDescription copyStatic()
	{
		// PangoFontDescription * pango_font_description_copy_static  (const PangoFontDescription *desc);
		auto p = pango_font_description_copy_static(pangoFontDescription);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Computes a hash of a PangoFontDescription structure suitable
	 * to be used, for example, as an argument to g_hash_table_new().
	 * The hash value is independent of desc->mask.
	 * Returns: the hash value.
	 */
	public uint hash()
	{
		// guint pango_font_description_hash (const PangoFontDescription *desc);
		return pango_font_description_hash(pangoFontDescription);
	}
	
	/**
	 * Compares two font descriptions for equality. Two font descriptions
	 * are considered equal if the fonts they describe are provably identical.
	 * This means that their masks do not have to match, as long as other fields
	 * are all the same. (Two font descriptions may result in identical fonts
	 * being loaded, but still compare FALSE.)
	 * Params:
	 * desc2 = another PangoFontDescription
	 * Returns: TRUE if the two font descriptions are identical, FALSE otherwise.
	 */
	public int equal(PgFontDescription desc2)
	{
		// gboolean pango_font_description_equal (const PangoFontDescription *desc1,  const PangoFontDescription *desc2);
		return pango_font_description_equal(pangoFontDescription, (desc2 is null) ? null : desc2.getPgFontDescriptionStruct());
	}
	
	/**
	 * Frees a font description.
	 */
	public void free()
	{
		// void pango_font_description_free (PangoFontDescription *desc);
		pango_font_description_free(pangoFontDescription);
	}
	
	/**
	 * Sets the family name field of a font description. The family
	 * name represents a family of related font styles, and will
	 * resolve to a particular PangoFontFamily. In some uses of
	 * PangoFontDescription, it is also possible to use a comma
	 * separated list of family names for this field.
	 * Params:
	 * family = a string representing the family name.
	 */
	public void setFamily(string family)
	{
		// void pango_font_description_set_family (PangoFontDescription *desc,  const char *family);
		pango_font_description_set_family(pangoFontDescription, Str.toStringz(family));
	}
	
	/**
	 * Like pango_font_description_set_family(), except that no
	 * copy of family is made. The caller must make sure that the
	 * string passed in stays around until desc has been freed
	 * or the name is set again. This function can be used if
	 * family is a static string such as a C string literal, or
	 * if desc is only needed temporarily.
	 * Params:
	 * family = a string representing the family name.
	 */
	public void setFamilyStatic(string family)
	{
		// void pango_font_description_set_family_static  (PangoFontDescription *desc,  const char *family);
		pango_font_description_set_family_static(pangoFontDescription, Str.toStringz(family));
	}
	
	/**
	 * Gets the family name field of a font description. See
	 * pango_font_description_set_family().
	 * Returns: the family name field for the font description, or NULL if not previously set. This has the same life-time as the font description itself and should not be freed.
	 */
	public string getFamily()
	{
		// const char * pango_font_description_get_family (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_get_family(pangoFontDescription));
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
	 * Params:
	 * style = the style for the font description
	 */
	public void setStyle(PangoStyle style)
	{
		// void pango_font_description_set_style (PangoFontDescription *desc,  PangoStyle style);
		pango_font_description_set_style(pangoFontDescription, style);
	}
	
	/**
	 * Gets the style field of a PangoFontDescription. See
	 * pango_font_description_set_style().
	 * Returns: the style field for the font description. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public PangoStyle getStyle()
	{
		// PangoStyle pango_font_description_get_style (const PangoFontDescription *desc);
		return pango_font_description_get_style(pangoFontDescription);
	}
	
	/**
	 * Sets the variant field of a font description. The PangoVariant
	 * can either be PANGO_VARIANT_NORMAL or PANGO_VARIANT_SMALL_CAPS.
	 * Params:
	 * variant = the variant type for the font description.
	 */
	public void setVariant(PangoVariant variant)
	{
		// void pango_font_description_set_variant (PangoFontDescription *desc,  PangoVariant variant);
		pango_font_description_set_variant(pangoFontDescription, variant);
	}
	
	/**
	 * Gets the variant field of a PangoFontDescription. See
	 * pango_font_description_set_variant().
	 * Returns: the variant field for the font description. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public PangoVariant getVariant()
	{
		// PangoVariant pango_font_description_get_variant (const PangoFontDescription *desc);
		return pango_font_description_get_variant(pangoFontDescription);
	}
	
	/**
	 * Sets the weight field of a font description. The weight field
	 * specifies how bold or light the font should be. In addition
	 * to the values of the PangoWeight enumeration, other intermediate
	 * numeric values are possible.
	 * Params:
	 * weight = the weight for the font description.
	 */
	public void setWeight(PangoWeight weight)
	{
		// void pango_font_description_set_weight (PangoFontDescription *desc,  PangoWeight weight);
		pango_font_description_set_weight(pangoFontDescription, weight);
	}
	
	/**
	 * Gets the weight field of a font description. See
	 * pango_font_description_set_weight().
	 * Returns: the weight field for the font description. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public PangoWeight getWeight()
	{
		// PangoWeight pango_font_description_get_weight (const PangoFontDescription *desc);
		return pango_font_description_get_weight(pangoFontDescription);
	}
	
	/**
	 * Sets the stretch field of a font description. The stretch field
	 * specifies how narrow or wide the font should be.
	 * Params:
	 * stretch = the stretch for the font description
	 */
	public void setStretch(PangoStretch stretch)
	{
		// void pango_font_description_set_stretch (PangoFontDescription *desc,  PangoStretch stretch);
		pango_font_description_set_stretch(pangoFontDescription, stretch);
	}
	
	/**
	 * Gets the stretch field of a font description.
	 * See pango_font_description_set_stretch().
	 * Returns: the stretch field for the font description. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public PangoStretch getStretch()
	{
		// PangoStretch pango_font_description_get_stretch (const PangoFontDescription *desc);
		return pango_font_description_get_stretch(pangoFontDescription);
	}
	
	/**
	 * Sets the size field of a font description in fractional points. This is mutually
	 * exclusive with pango_font_description_set_absolute_size().
	 * Params:
	 * size = the size of the font in points, scaled by PANGO_SCALE. (That is,
	 * a size value of 10 * PANGO_SCALE is a 10 point font. The conversion
	 * factor between points and device units depends on system configuration
	 * and the output device. For screen display, a logical DPI of 96 is
	 * common, in which case a 10 point font corresponds to a 10 * (96 / 72) = 13.3
	 * pixel font. Use pango_font_description_set_absolute_size() if you need
	 * a particular size in device units.
	 */
	public void setSize(int size)
	{
		// void pango_font_description_set_size (PangoFontDescription *desc,  gint size);
		pango_font_description_set_size(pangoFontDescription, size);
	}
	
	/**
	 * Gets the size field of a font description.
	 * See pango_font_description_set_size().
	 * Returns: the size field for the font description in points or device units. You must call pango_font_description_get_size_is_absolute() to find out which is the case. Returns 0 if the size field has not previously been set or it has been set to 0 explicitly. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public int getSize()
	{
		// gint pango_font_description_get_size (const PangoFontDescription *desc);
		return pango_font_description_get_size(pangoFontDescription);
	}
	
	/**
	 * Sets the size field of a font description, in device units. This is mutually
	 * exclusive with pango_font_description_set_size() which sets the font size
	 * in points.
	 * Since 1.8
	 * Params:
	 * size = the new size, in Pango units. There are PANGO_SCALE Pango units in one
	 * device unit. For an output backend where a device unit is a pixel, a size
	 * value of 10 * PANGO_SCALE gives a 10 pixel font.
	 */
	public void setAbsoluteSize(double size)
	{
		// void pango_font_description_set_absolute_size  (PangoFontDescription *desc,  double size);
		pango_font_description_set_absolute_size(pangoFontDescription, size);
	}
	
	/**
	 * Determines whether the size of the font is in points (not absolute) or device units (absolute).
	 * See pango_font_description_set_size() and pango_font_description_set_absolute_size().
	 * Since 1.8
	 * Returns: whether the size for the font description is in points or device units. Use pango_font_description_get_set_fields() to find out if the size field of the font description was explicitly set or not.
	 */
	public int getSizeIsAbsolute()
	{
		// gboolean pango_font_description_get_size_is_absolute  (const PangoFontDescription *desc);
		return pango_font_description_get_size_is_absolute(pangoFontDescription);
	}
	
	/**
	 * Sets the gravity field of a font description. The gravity field
	 * specifies how the glyphs should be rotated. If gravity is
	 * PANGO_GRAVITY_AUTO, this actually unsets the gravity mask on
	 * the font description.
	 * This function is seldom useful to the user. Gravity should normally
	 * be set on a PangoContext.
	 * Since 1.16
	 * Params:
	 * gravity = the gravity for the font description.
	 */
	public void setGravity(PangoGravity gravity)
	{
		// void pango_font_description_set_gravity (PangoFontDescription *desc,  PangoGravity gravity);
		pango_font_description_set_gravity(pangoFontDescription, gravity);
	}
	
	/**
	 * Gets the gravity field of a font description. See
	 * pango_font_description_set_gravity().
	 * Since 1.16
	 * Returns: the gravity field for the font description. Use pango_font_description_get_set_fields() to find out if the field was explicitly set or not.
	 */
	public PangoGravity getGravity()
	{
		// PangoGravity pango_font_description_get_gravity (const PangoFontDescription *desc);
		return pango_font_description_get_gravity(pangoFontDescription);
	}
	
	/**
	 * Determines which fields in a font description have been set.
	 * Returns: a bitmask with bits set corresponding to the fields in desc that have been set.
	 */
	public PangoFontMask getSetFields()
	{
		// PangoFontMask pango_font_description_get_set_fields  (const PangoFontDescription *desc);
		return pango_font_description_get_set_fields(pangoFontDescription);
	}
	
	/**
	 * Unsets some of the fields in a PangoFontDescription. The unset
	 * fields will get back to their default values.
	 * Params:
	 * toUnset = bitmask of fields in the desc to unset.
	 */
	public void unsetFields(PangoFontMask toUnset)
	{
		// void pango_font_description_unset_fields (PangoFontDescription *desc,  PangoFontMask to_unset);
		pango_font_description_unset_fields(pangoFontDescription, toUnset);
	}
	
	/**
	 * Merges the fields that are set in desc_to_merge into the fields in
	 * desc. If replace_existing is FALSE, only fields in desc that
	 * are not already set are affected. If TRUE, then fields that are
	 * already set will be replaced as well.
	 * If desc_to_merge is NULL, this function performs nothing.
	 * Params:
	 * desc = a PangoFontDescription
	 * descToMerge = the PangoFontDescription to merge from, or NULL. [allow-none]
	 * replaceExisting = if TRUE, replace fields in desc with the
	 * corresponding values from desc_to_merge, even if they
	 * are already exist.
	 */
	public void merge(PgFontDescription descToMerge, int replaceExisting)
	{
		// void pango_font_description_merge (PangoFontDescription *desc,  const PangoFontDescription *desc_to_merge,  gboolean replace_existing);
		pango_font_description_merge(pangoFontDescription, (descToMerge is null) ? null : descToMerge.getPgFontDescriptionStruct(), replaceExisting);
	}
	
	/**
	 * Like pango_font_description_merge(), but only a shallow copy is made
	 * of the family name and other allocated fields. desc can only be
	 * used until desc_to_merge is modified or freed. This is meant
	 * to be used when the merged font description is only needed temporarily.
	 * Params:
	 * desc = a PangoFontDescription
	 * descToMerge = the PangoFontDescription to merge from
	 * replaceExisting = if TRUE, replace fields in desc with the
	 * corresponding values from desc_to_merge, even if they
	 * are already exist.
	 */
	public void mergeStatic(PgFontDescription descToMerge, int replaceExisting)
	{
		// void pango_font_description_merge_static (PangoFontDescription *desc,  const PangoFontDescription *desc_to_merge,  gboolean replace_existing);
		pango_font_description_merge_static(pangoFontDescription, (descToMerge is null) ? null : descToMerge.getPgFontDescriptionStruct(), replaceExisting);
	}
	
	/**
	 * Determines if the style attributes of new_match are a closer match
	 * for desc than those of old_match are, or if old_match is NULL,
	 * determines if new_match is a match at all.
	 * Approximate matching is done for
	 * weight and style; other style attributes must match exactly.
	 * Style attributes are all attributes other than family and size-related
	 * attributes. Approximate matching for style considers PANGO_STYLE_OBLIQUE
	 * and PANGO_STYLE_ITALIC as matches, but not as good a match as when the
	 * styles are equal.
	 * Note that old_match must match desc.
	 * Params:
	 * oldMatch = a PangoFontDescription, or NULL. [allow-none]
	 * newMatch = a PangoFontDescription
	 * Returns: TRUE if new_match is a better match
	 */
	public int betterMatch(PgFontDescription oldMatch, PgFontDescription newMatch)
	{
		// gboolean pango_font_description_better_match (const PangoFontDescription *desc,  const PangoFontDescription *old_match,  const PangoFontDescription *new_match);
		return pango_font_description_better_match(pangoFontDescription, (oldMatch is null) ? null : oldMatch.getPgFontDescriptionStruct(), (newMatch is null) ? null : newMatch.getPgFontDescriptionStruct());
	}
	
	/**
	 * Creates a new font description from a string representation in the
	 * form "[FAMILY-LIST] [STYLE-OPTIONS] [SIZE]", where FAMILY-LIST is a
	 * comma separated list of families optionally terminated by a comma,
	 * STYLE_OPTIONS is a whitespace separated list of words where each WORD
	 * describes one of style, variant, weight, stretch, or gravity, and SIZE
	 * is a decimal number (size in points) or optionally followed by the
	 * unit modifier "px" for absolute size. Any one of the options may
	 * be absent. If FAMILY-LIST is absent, then the family_name field of
	 * the resulting font description will be initialized to NULL. If
	 * STYLE-OPTIONS is missing, then all style options will be set to the
	 * default values. If SIZE is missing, the size in the resulting font
	 * description will be set to 0.
	 * Params:
	 * str = string representation of a font description.
	 * Returns: a new PangoFontDescription.
	 */
	public static PgFontDescription fromString(string str)
	{
		// PangoFontDescription * pango_font_description_from_string  (const char *str);
		auto p = pango_font_description_from_string(Str.toStringz(str));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Creates a string representation of a font description. See
	 * pango_font_description_from_string() for a description of the
	 * format of the string representation. The family list in the
	 * string description will only have a terminating comma if the
	 * last word of the list is a valid style option.
	 * Returns: a new string that must be freed with g_free().
	 */
	public override string toString()
	{
		// char * pango_font_description_to_string (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_to_string(pangoFontDescription));
	}
	
	/**
	 * Creates a filename representation of a font description. The
	 * filename is identical to the result from calling
	 * pango_font_description_to_string(), but with underscores instead of
	 * characters that are untypical in filenames, and in lower case only.
	 * Returns: a new string that must be freed with g_free().
	 */
	public string toFilename()
	{
		// char * pango_font_description_to_filename (const PangoFontDescription *desc);
		return Str.toString(pango_font_description_to_filename(pangoFontDescription));
	}
}
