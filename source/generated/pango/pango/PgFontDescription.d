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


module pango.PgFontDescription;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoFontDescription` describes a font in an implementation-independent
 * manner.
 * 
 * `PangoFontDescription` structures are used both to list what fonts are
 * available on the system and also for specifying the characteristics of
 * a font to load.
 */
public class PgFontDescription
{
	/** the main Gtk struct */
	protected PangoFontDescription* pangoFontDescription;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoFontDescription* getPgFontDescriptionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoFontDescription;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontDescription;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoFontDescription* pangoFontDescription, bool ownedRef = false)
	{
		this.pangoFontDescription = pangoFontDescription;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_font_description_free(pangoFontDescription);
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

	/** */
	public static GType getType()
	{
		return pango_font_description_get_type();
	}

	/**
	 * Creates a new font description structure with all fields unset.
	 *
	 * Returns: the newly allocated `PangoFontDescription`, which
	 *     should be freed using [method@Pango.FontDescription.free].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_font_description_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoFontDescription*) __p);
	}

	/**
	 * Determines if the style attributes of @new_match are a closer match
	 * for @desc than those of @old_match are, or if @old_match is %NULL,
	 * determines if @new_match is a match at all.
	 *
	 * Approximate matching is done for weight and style; other style attributes
	 * must match exactly. Style attributes are all attributes other than family
	 * and size-related attributes. Approximate matching for style considers
	 * %PANGO_STYLE_OBLIQUE and %PANGO_STYLE_ITALIC as matches, but not as good
	 * a match as when the styles are equal.
	 *
	 * Note that @old_match must match @desc.
	 *
	 * Params:
	 *     oldMatch = a `PangoFontDescription`, or %NULL
	 *     newMatch = a `PangoFontDescription`
	 *
	 * Returns: %TRUE if @new_match is a better match
	 */
	public bool betterMatch(PgFontDescription oldMatch, PgFontDescription newMatch)
	{
		return pango_font_description_better_match(pangoFontDescription, (oldMatch is null) ? null : oldMatch.getPgFontDescriptionStruct(), (newMatch is null) ? null : newMatch.getPgFontDescriptionStruct()) != 0;
	}

	/**
	 * Make a copy of a `PangoFontDescription`.
	 *
	 * Returns: the newly allocated `PangoFontDescription`,
	 *     which should be freed with [method@Pango.FontDescription.free],
	 *     or %NULL if @desc was %NULL.
	 */
	public PgFontDescription copy()
	{
		auto __p = pango_font_description_copy(pangoFontDescription);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Make a copy of a `PangoFontDescription`, but don't duplicate
	 * allocated fields.
	 *
	 * This is like [method@Pango.FontDescription.copy], but only a shallow
	 * copy is made of the family name and other allocated fields. The result
	 * can only be used until @desc is modified or freed. This is meant
	 * to be used when the copy is only needed temporarily.
	 *
	 * Returns: the newly allocated `PangoFontDescription`,
	 *     which should be freed with [method@Pango.FontDescription.free],
	 *     or %NULL if @desc was %NULL.
	 */
	public PgFontDescription copyStatic()
	{
		auto __p = pango_font_description_copy_static(pangoFontDescription);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Compares two font descriptions for equality.
	 *
	 * Two font descriptions are considered equal if the fonts they describe
	 * are provably identical. This means that their masks do not have to match,
	 * as long as other fields are all the same. (Two font descriptions may
	 * result in identical fonts being loaded, but still compare %FALSE.)
	 *
	 * Params:
	 *     desc2 = another `PangoFontDescription`
	 *
	 * Returns: %TRUE if the two font descriptions are identical,
	 *     %FALSE otherwise.
	 */
	public bool equal(PgFontDescription desc2)
	{
		return pango_font_description_equal(pangoFontDescription, (desc2 is null) ? null : desc2.getPgFontDescriptionStruct()) != 0;
	}

	/**
	 * Frees a font description.
	 */
	public void free()
	{
		pango_font_description_free(pangoFontDescription);
		ownedRef = false;
	}

	/**
	 * Gets the family name field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_family].
	 *
	 * Returns: the family name field for the font
	 *     description, or %NULL if not previously set. This has the same
	 *     life-time as the font description itself and should not be freed.
	 */
	public string getFamily()
	{
		return Str.toString(pango_font_description_get_family(pangoFontDescription));
	}

	/**
	 * Gets the gravity field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_gravity].
	 *
	 * Returns: the gravity field for the font description.
	 *     Use [method@Pango.FontDescription.get_set_fields] to find out
	 *     if the field was explicitly set or not.
	 *
	 * Since: 1.16
	 */
	public PangoGravity getGravity()
	{
		return pango_font_description_get_gravity(pangoFontDescription);
	}

	/**
	 * Determines which fields in a font description have been set.
	 *
	 * Returns: a bitmask with bits set corresponding to the
	 *     fields in @desc that have been set.
	 */
	public PangoFontMask getSetFields()
	{
		return pango_font_description_get_set_fields(pangoFontDescription);
	}

	/**
	 * Gets the size field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_size].
	 *
	 * Returns: the size field for the font description in points
	 *     or device units. You must call
	 *     [method@Pango.FontDescription.get_size_is_absolute] to find out
	 *     which is the case. Returns 0 if the size field has not previously
	 *     been set or it has been set to 0 explicitly.
	 *     Use [method@Pango.FontDescription.get_set_fields] to find out
	 *     if the field was explicitly set or not.
	 */
	public int getSize()
	{
		return pango_font_description_get_size(pangoFontDescription);
	}

	/**
	 * Determines whether the size of the font is in points (not absolute)
	 * or device units (absolute).
	 *
	 * See [method@Pango.FontDescription.set_size]
	 * and [method@Pango.FontDescription.set_absolute_size].
	 *
	 * Returns: whether the size for the font description is in
	 *     points or device units. Use [method@Pango.FontDescription.get_set_fields]
	 *     to find out if the size field of the font description was explicitly
	 *     set or not.
	 *
	 * Since: 1.8
	 */
	public bool getSizeIsAbsolute()
	{
		return pango_font_description_get_size_is_absolute(pangoFontDescription) != 0;
	}

	/**
	 * Gets the stretch field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_stretch].
	 *
	 * Returns: the stretch field for the font description.
	 *     Use [method@Pango.FontDescription.get_set_fields] to find
	 *     out if the field was explicitly set or not.
	 */
	public PangoStretch getStretch()
	{
		return pango_font_description_get_stretch(pangoFontDescription);
	}

	/**
	 * Gets the style field of a `PangoFontDescription`.
	 *
	 * See [method@Pango.FontDescription.set_style].
	 *
	 * Returns: the style field for the font description.
	 *     Use [method@Pango.FontDescription.get_set_fields] to
	 *     find out if the field was explicitly set or not.
	 */
	public PangoStyle getStyle()
	{
		return pango_font_description_get_style(pangoFontDescription);
	}

	/**
	 * Gets the variant field of a `PangoFontDescription`.
	 *
	 * See [method@Pango.FontDescription.set_variant].
	 *
	 * Returns: the variant field for the font description.
	 *     Use [method@Pango.FontDescription.get_set_fields] to find
	 *     out if the field was explicitly set or not.
	 */
	public PangoVariant getVariant()
	{
		return pango_font_description_get_variant(pangoFontDescription);
	}

	/**
	 * Gets the variations field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_variations].
	 *
	 * Returns: the variations field for the font
	 *     description, or %NULL if not previously set. This has the same
	 *     life-time as the font description itself and should not be freed.
	 *
	 * Since: 1.42
	 */
	public string getVariations()
	{
		return Str.toString(pango_font_description_get_variations(pangoFontDescription));
	}

	/**
	 * Gets the weight field of a font description.
	 *
	 * See [method@Pango.FontDescription.set_weight].
	 *
	 * Returns: the weight field for the font description.
	 *     Use [method@Pango.FontDescription.get_set_fields] to find
	 *     out if the field was explicitly set or not.
	 */
	public PangoWeight getWeight()
	{
		return pango_font_description_get_weight(pangoFontDescription);
	}

	/**
	 * Computes a hash of a `PangoFontDescription` structure.
	 *
	 * This is suitable to be used, for example, as an argument
	 * to g_hash_table_new(). The hash value is independent of @desc->mask.
	 *
	 * Returns: the hash value.
	 */
	public uint hash()
	{
		return pango_font_description_hash(pangoFontDescription);
	}

	/**
	 * Merges the fields that are set in @desc_to_merge into the fields in
	 * @desc.
	 *
	 * If @replace_existing is %FALSE, only fields in @desc that
	 * are not already set are affected. If %TRUE, then fields that are
	 * already set will be replaced as well.
	 *
	 * If @desc_to_merge is %NULL, this function performs nothing.
	 *
	 * Params:
	 *     descToMerge = the `PangoFontDescription` to merge from,
	 *         or %NULL
	 *     replaceExisting = if %TRUE, replace fields in @desc with the
	 *         corresponding values from @desc_to_merge, even if they
	 *         are already exist.
	 */
	public void merge(PgFontDescription descToMerge, bool replaceExisting)
	{
		pango_font_description_merge(pangoFontDescription, (descToMerge is null) ? null : descToMerge.getPgFontDescriptionStruct(), replaceExisting);
	}

	/**
	 * Merges the fields that are set in @desc_to_merge into the fields in
	 * @desc, without copying allocated fields.
	 *
	 * This is like [method@Pango.FontDescription.merge], but only a shallow copy
	 * is made of the family name and other allocated fields. @desc can only
	 * be used until @desc_to_merge is modified or freed. This is meant to
	 * be used when the merged font description is only needed temporarily.
	 *
	 * Params:
	 *     descToMerge = the `PangoFontDescription` to merge from
	 *     replaceExisting = if %TRUE, replace fields in @desc with the
	 *         corresponding values from @desc_to_merge, even if they
	 *         are already exist.
	 */
	public void mergeStatic(PgFontDescription descToMerge, bool replaceExisting)
	{
		pango_font_description_merge_static(pangoFontDescription, (descToMerge is null) ? null : descToMerge.getPgFontDescriptionStruct(), replaceExisting);
	}

	/**
	 * Sets the size field of a font description, in device units.
	 *
	 * This is mutually exclusive with [method@Pango.FontDescription.set_size]
	 * which sets the font size in points.
	 *
	 * Params:
	 *     size = the new size, in Pango units. There are %PANGO_SCALE Pango units
	 *         in one device unit. For an output backend where a device unit is a pixel,
	 *         a @size value of 10 * PANGO_SCALE gives a 10 pixel font.
	 *
	 * Since: 1.8
	 */
	public void setAbsoluteSize(double size)
	{
		pango_font_description_set_absolute_size(pangoFontDescription, size);
	}

	/**
	 * Sets the family name field of a font description.
	 *
	 * The family
	 * name represents a family of related font styles, and will
	 * resolve to a particular `PangoFontFamily`. In some uses of
	 * `PangoFontDescription`, it is also possible to use a comma
	 * separated list of family names for this field.
	 *
	 * Params:
	 *     family = a string representing the family name.
	 */
	public void setFamily(string family)
	{
		pango_font_description_set_family(pangoFontDescription, Str.toStringz(family));
	}

	/**
	 * Sets the family name field of a font description, without copying the string.
	 *
	 * This is like [method@Pango.FontDescription.set_family], except that no
	 * copy of @family is made. The caller must make sure that the
	 * string passed in stays around until @desc has been freed or the
	 * name is set again. This function can be used if @family is a static
	 * string such as a C string literal, or if @desc is only needed temporarily.
	 *
	 * Params:
	 *     family = a string representing the family name
	 */
	public void setFamilyStatic(string family)
	{
		pango_font_description_set_family_static(pangoFontDescription, Str.toStringz(family));
	}

	/**
	 * Sets the gravity field of a font description.
	 *
	 * The gravity field
	 * specifies how the glyphs should be rotated. If @gravity is
	 * %PANGO_GRAVITY_AUTO, this actually unsets the gravity mask on
	 * the font description.
	 *
	 * This function is seldom useful to the user. Gravity should normally
	 * be set on a `PangoContext`.
	 *
	 * Params:
	 *     gravity = the gravity for the font description.
	 *
	 * Since: 1.16
	 */
	public void setGravity(PangoGravity gravity)
	{
		pango_font_description_set_gravity(pangoFontDescription, gravity);
	}

	/**
	 * Sets the size field of a font description in fractional points.
	 *
	 * This is mutually exclusive with
	 * [method@Pango.FontDescription.set_absolute_size].
	 *
	 * Params:
	 *     size = the size of the font in points, scaled by %PANGO_SCALE.
	 *         (That is, a @size value of 10 * PANGO_SCALE is a 10 point font.
	 *         The conversion factor between points and device units depends on
	 *         system configuration and the output device. For screen display, a
	 *         logical DPI of 96 is common, in which case a 10 point font corresponds
	 *         to a 10 * (96 / 72) = 13.3 pixel font.
	 *         Use [method@Pango.FontDescription.set_absolute_size] if you need
	 *         a particular size in device units.
	 */
	public void setSize(int size)
	{
		pango_font_description_set_size(pangoFontDescription, size);
	}

	/**
	 * Sets the stretch field of a font description.
	 *
	 * The [enum@Pango.Stretch] field specifies how narrow or
	 * wide the font should be.
	 *
	 * Params:
	 *     stretch = the stretch for the font description
	 */
	public void setStretch(PangoStretch stretch)
	{
		pango_font_description_set_stretch(pangoFontDescription, stretch);
	}

	/**
	 * Sets the style field of a `PangoFontDescription`.
	 *
	 * The [enum@Pango.Style] enumeration describes whether the font is
	 * slanted and the manner in which it is slanted; it can be either
	 * %PANGO_STYLE_NORMAL, %PANGO_STYLE_ITALIC, or %PANGO_STYLE_OBLIQUE.
	 *
	 * Most fonts will either have a italic style or an oblique style,
	 * but not both, and font matching in Pango will match italic
	 * specifications with oblique fonts and vice-versa if an exact
	 * match is not found.
	 *
	 * Params:
	 *     style = the style for the font description
	 */
	public void setStyle(PangoStyle style)
	{
		pango_font_description_set_style(pangoFontDescription, style);
	}

	/**
	 * Sets the variant field of a font description.
	 *
	 * The [enum@Pango.Variant] can either be %PANGO_VARIANT_NORMAL
	 * or %PANGO_VARIANT_SMALL_CAPS.
	 *
	 * Params:
	 *     variant = the variant type for the font description.
	 */
	public void setVariant(PangoVariant variant)
	{
		pango_font_description_set_variant(pangoFontDescription, variant);
	}

	/**
	 * Sets the variations field of a font description.
	 *
	 * OpenType font variations allow to select a font instance by
	 * specifying values for a number of axes, such as width or weight.
	 *
	 * The format of the variations string is
	 *
	 * AXIS1=VALUE,AXIS2=VALUE...
	 *
	 * with each AXIS a 4 character tag that identifies a font axis,
	 * and each VALUE a floating point number. Unknown axes are ignored,
	 * and values are clamped to their allowed range.
	 *
	 * Pango does not currently have a way to find supported axes of
	 * a font. Both harfbuzz and freetype have API for this. See
	 * for example [hb_ot_var_get_axis_infos](https://harfbuzz.github.io/harfbuzz-hb-ot-var.html#hb-ot-var-get-axis-infos).
	 *
	 * Params:
	 *     variations = a string representing the variations
	 *
	 * Since: 1.42
	 */
	public void setVariations(string variations)
	{
		pango_font_description_set_variations(pangoFontDescription, Str.toStringz(variations));
	}

	/**
	 * Sets the variations field of a font description.
	 *
	 * This is like [method@Pango.FontDescription.set_variations], except
	 * that no copy of @variations is made. The caller must make sure that
	 * the string passed in stays around until @desc has been freed
	 * or the name is set again. This function can be used if
	 * @variations is a static string such as a C string literal,
	 * or if @desc is only needed temporarily.
	 *
	 * Params:
	 *     variations = a string representing the variations
	 *
	 * Since: 1.42
	 */
	public void setVariationsStatic(string variations)
	{
		pango_font_description_set_variations_static(pangoFontDescription, Str.toStringz(variations));
	}

	/**
	 * Sets the weight field of a font description.
	 *
	 * The weight field
	 * specifies how bold or light the font should be. In addition
	 * to the values of the [enum@Pango.Weight] enumeration, other
	 * intermediate numeric values are possible.
	 *
	 * Params:
	 *     weight = the weight for the font description.
	 */
	public void setWeight(PangoWeight weight)
	{
		pango_font_description_set_weight(pangoFontDescription, weight);
	}

	/**
	 * Creates a filename representation of a font description.
	 *
	 * The filename is identical to the result from calling
	 * [method@Pango.FontDescription.to_string], but with underscores
	 * instead of characters that are untypical in filenames, and in
	 * lower case only.
	 *
	 * Returns: a new string that must be freed with g_free().
	 */
	public string toFilename()
	{
		auto retStr = pango_font_description_to_filename(pangoFontDescription);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a string representation of a font description.
	 *
	 * See [func@Pango.FontDescription.from_string] for a description
	 * of the format of the string representation. The family list in
	 * the string description will only have a terminating comma if
	 * the last word of the list is a valid style option.
	 *
	 * Returns: a new string that must be freed with g_free().
	 */
	public override string toString()
	{
		auto retStr = pango_font_description_to_string(pangoFontDescription);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Unsets some of the fields in a `PangoFontDescription`.
	 *
	 * The unset fields will get back to their default values.
	 *
	 * Params:
	 *     toUnset = bitmask of fields in the @desc to unset.
	 */
	public void unsetFields(PangoFontMask toUnset)
	{
		pango_font_description_unset_fields(pangoFontDescription, toUnset);
	}

	/**
	 * Creates a new font description from a string representation.
	 *
	 * The string must have the form
	 *
	 * "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
	 *
	 * where FAMILY-LIST is a comma-separated list of families optionally
	 * terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
	 * of words where each word describes one of style, variant, weight,
	 * stretch, or gravity, and SIZE is a decimal number (size in points)
	 * or optionally followed by the unit modifier "px" for absolute size.
	 * VARIATIONS is a comma-separated list of font variation
	 * specifications of the form "\@axis=value" (the = sign is optional).
	 *
	 * The following words are understood as styles:
	 * "Normal", "Roman", "Oblique", "Italic".
	 *
	 * The following words are understood as variants:
	 * "Small-Caps", "All-Small-Caps", "Petite-Caps", "All-Petite-Caps",
	 * "Unicase", "Title-Caps".
	 *
	 * The following words are understood as weights:
	 * "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
	 * "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
	 * "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
	 * "Extra-Black".
	 *
	 * The following words are understood as stretch values:
	 * "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
	 * "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
	 *
	 * The following words are understood as gravity values:
	 * "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
	 * "East", "Rotated-Right", "West".
	 *
	 * Any one of the options may be absent. If FAMILY-LIST is absent, then
	 * the family_name field of the resulting font description will be
	 * initialized to %NULL. If STYLE-OPTIONS is missing, then all style
	 * options will be set to the default values. If SIZE is missing, the
	 * size in the resulting font description will be set to 0.
	 *
	 * A typical example:
	 *
	 * "Cantarell Italic Light 15 \@wght=200"
	 *
	 * Params:
	 *     str = string representation of a font description.
	 *
	 * Returns: a new `PangoFontDescription`.
	 */
	public static PgFontDescription fromString(string str)
	{
		auto __p = pango_font_description_from_string(Str.toStringz(str));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}
}
