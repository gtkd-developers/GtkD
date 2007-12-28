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
 * inFile  = pango-Text-Attributes.html
 * outPack = pango
 * outFile = PgAttribute
 * strct   = PangoAttribute
 * realStrct=
 * ctorStrct=
 * clss    = PgAttribute
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_attr_
 * omit structs:
 * omit prefixes:
 * 	- pango_language_
 * omit code:
 * imports:
 * 	- glib.ListSG
 * 	- glib.Str
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
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
 * module aliases:
 * local aliases:
 */

module pango.PgAttribute;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.pangotypes;

private import gtkc.pango;


private import glib.ListSG;
private import glib.Str;
private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;




/**
 * Description
 * Attributed text is used in a number of places in Pango. It
 * is used as the input to the itemization process and also when
 * creating a PangoLayout. The data types and functions in
 * this section are used to represent and manipulate sets
 * of attributes applied to a portion of text.
 */
public class PgAttribute
{
	
	/** the main Gtk struct */
	protected PangoAttribute* pangoAttribute;
	
	
	public PangoAttribute* getPgAttributeStruct()
	{
		return pangoAttribute;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoAttribute;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoAttribute* pangoAttribute)
	{
		version(noAssert)
		{
			if ( pangoAttribute is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct pangoAttribute is null on constructor").newline;
				}
				else
				{
					printf("struct pangoAttribute is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(pangoAttribute !is null, "struct pangoAttribute is null on constructor");
		}
		this.pangoAttribute = pangoAttribute;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Parses marked-up text (see
	 * markup format) to create
	 * a plain-text string and an attribute list.
	 * If accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in accel_char.
	 * Two accel_marker characters following each other produce a single
	 * literal accel_marker character.
	 * If any error happens, none of the output arguments are touched except
	 * for error.
	 * Params:
	 * markupText =  markup to parse (see markup format)
	 * length =  length of markup_text, or -1 if nul-terminated
	 * accelMarker =  character that precedes an accelerator, or 0 for none
	 * attrList =  address of return location for a PangoAttrList, or NULL
	 * text =  address of return location for text with tags stripped, or NULL
	 * accelChar =  address of return location for accelerator char, or NULL
	 * error =  address of return location for errors, or NULL
	 * Returns: FALSE if error is set, otherwise TRUE
	 */
	public static int pangoParseMarkup(char[] markupText, int length, gunichar accelMarker, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error)
	{
		// gboolean pango_parse_markup (const char *markup_text,  int length,  gunichar accel_marker,  PangoAttrList **attr_list,  char **text,  gunichar *accel_char,  GError **error);
		return pango_parse_markup(Str.toStringz(markupText), length, accelMarker, attrList, text, accelChar, error);
	}
	
	/**
	 * Allocate a new attribute type ID.
	 * Params:
	 * name =  an identifier for the type (currently unused.)
	 * Returns: the new type ID.
	 */
	public static PangoAttrType typeRegister(char[] name)
	{
		// PangoAttrType pango_attr_type_register (const gchar *name);
		return pango_attr_type_register(Str.toStringz(name));
	}
	
	/**
	 * Make a copy of an attribute.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public PangoAttribute* pangoAttributeCopy()
	{
		// PangoAttribute* pango_attribute_copy (const PangoAttribute *attr);
		return pango_attribute_copy(pangoAttribute);
	}
	
	/**
	 * Compare two attributes for equality. This compares only the
	 * actual value of the two attributes and not the ranges that the
	 * attributes apply to.
	 * Params:
	 * attr2 =  another PangoAttribute
	 * Returns: TRUE if the two attributes have the same value.
	 */
	public int pangoAttributeEqual(PangoAttribute* attr2)
	{
		// gboolean pango_attribute_equal (const PangoAttribute *attr1,  const PangoAttribute *attr2);
		return pango_attribute_equal(pangoAttribute, attr2);
	}
	
	/**
	 * Destroy a PangoAttribute and free all associated memory.
	 */
	public void pangoAttributeDestroy()
	{
		// void pango_attribute_destroy (PangoAttribute *attr);
		pango_attribute_destroy(pangoAttribute);
	}
	
	/**
	 * Create a new language tag attribute.
	 * Params:
	 * language =  language tag
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* languageNew(PgLanguage language)
	{
		// PangoAttribute* pango_attr_language_new (PangoLanguage *language);
		return pango_attr_language_new((language is null) ? null : language.getPgLanguageStruct());
	}
	
	/**
	 * Create a new font family attribute.
	 * Params:
	 * family =  the family or comma separated list of families
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* familyNew(char[] family)
	{
		// PangoAttribute* pango_attr_family_new (const char *family);
		return pango_attr_family_new(Str.toStringz(family));
	}
	
	/**
	 * Create a new font slant style attribute.
	 * Params:
	 * style =  the slant style
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* styleNew(PangoStyle style)
	{
		// PangoAttribute* pango_attr_style_new (PangoStyle style);
		return pango_attr_style_new(style);
	}
	
	/**
	 * Create a new font variant attribute (normal or small caps)
	 * Params:
	 * variant =  the variant
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* variantNew(PangoVariant variant)
	{
		// PangoAttribute* pango_attr_variant_new (PangoVariant variant);
		return pango_attr_variant_new(variant);
	}
	
	/**
	 * Create a new font stretch attribute
	 * Params:
	 * stretch =  the stretch
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* stretchNew(PangoStretch stretch)
	{
		// PangoAttribute* pango_attr_stretch_new (PangoStretch stretch);
		return pango_attr_stretch_new(stretch);
	}
	
	/**
	 * Create a new font weight attribute.
	 * Params:
	 * weight =  the weight
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* weightNew(PangoWeight weight)
	{
		// PangoAttribute* pango_attr_weight_new (PangoWeight weight);
		return pango_attr_weight_new(weight);
	}
	
	/**
	 * Create a new font-size attribute in fractional points.
	 * Params:
	 * size =  the font size, in PANGO_SCALEths of a point.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* sizeNew(int size)
	{
		// PangoAttribute* pango_attr_size_new (int size);
		return pango_attr_size_new(size);
	}
	
	/**
	 * Create a new font-size attribute in device units.
	 * Params:
	 * size =  the font size, in PANGO_SCALEths of a device unit.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.8
	 */
	public static PangoAttribute* sizeNewAbsolute(int size)
	{
		// PangoAttribute* pango_attr_size_new_absolute (int size);
		return pango_attr_size_new_absolute(size);
	}
	
	/**
	 * Create a new font description attribute. This attribute
	 * allows setting family, style, weight, variant, stretch,
	 * and size simultaneously.
	 * Params:
	 * desc =  the font description
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* fontDescNew(PgFontDescription desc)
	{
		// PangoAttribute* pango_attr_font_desc_new (const PangoFontDescription *desc);
		return pango_attr_font_desc_new((desc is null) ? null : desc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Create a new foreground color attribute.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* foregroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_foreground_new (guint16 red,  guint16 green,  guint16 blue);
		return pango_attr_foreground_new(red, green, blue);
	}
	
	/**
	 * Create a new background color attribute.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* backgroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_background_new (guint16 red,  guint16 green,  guint16 blue);
		return pango_attr_background_new(red, green, blue);
	}
	
	/**
	 * Create a new strike-through attribute.
	 * Params:
	 * strikethrough =  TRUE if the text should be struck-through.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* strikethroughNew(int strikethrough)
	{
		// PangoAttribute* pango_attr_strikethrough_new (gboolean strikethrough);
		return pango_attr_strikethrough_new(strikethrough);
	}
	
	/**
	 * Create a new strikethrough color attribute. This attribute
	 * modifies the color of strikethrough lines. If not set, strikethrough
	 * lines will use the foreground color.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.8
	 */
	public static PangoAttribute* strikethroughColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_strikethrough_color_new (guint16 red,  guint16 green,  guint16 blue);
		return pango_attr_strikethrough_color_new(red, green, blue);
	}
	
	/**
	 * Create a new underline-style attribute.
	 * Params:
	 * underline =  the underline style.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* underlineNew(PangoUnderline underline)
	{
		// PangoAttribute* pango_attr_underline_new (PangoUnderline underline);
		return pango_attr_underline_new(underline);
	}
	
	/**
	 * Create a new underline color attribute. This attribute
	 * modifies the color of underlines. If not set, underlines
	 * will use the foreground color.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.8
	 */
	public static PangoAttribute* underlineColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_underline_color_new (guint16 red,  guint16 green,  guint16 blue);
		return pango_attr_underline_color_new(red, green, blue);
	}
	
	
	
	/**
	 * Create a new shape attribute. A shape is used to impose a
	 * particular ink and logical rectangle on the result of shaping a
	 * particular glyph. This might be used, for instance, for
	 * embedding a picture or a widget inside a PangoLayout.
	 * Params:
	 * inkRect =  ink rectangle to assign to each character
	 * logicalRect =  logical rectangle to assign to each character
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* shapeNew(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// PangoAttribute* pango_attr_shape_new (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect);
		return pango_attr_shape_new(inkRect, logicalRect);
	}
	
	/**
	 * Like pango_attr_shape_new(), but a user data pointer is also
	 * provided; this pointer can be accessed when later
	 * rendering the glyph.
	 * Params:
	 * inkRect =  ink rectangle to assign to each character
	 * logicalRect =  logical rectangle to assign to each character
	 * data =  user data pointer
	 * copyFunc =  function to copy data when the attribute
	 *  is copied. If NULL, data is simply copied
	 *  as a pointer.
	 * destroyFunc =  function to free data when the attribute
	 *  is freed, or NULL
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.8
	 */
	public static PangoAttribute* shapeNewWithData(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc)
	{
		// PangoAttribute* pango_attr_shape_new_with_data (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect,  gpointer data,  PangoAttrDataCopyFunc copy_func,  GDestroyNotify destroy_func);
		return pango_attr_shape_new_with_data(inkRect, logicalRect, data, copyFunc, destroyFunc);
	}
	
	
	/**
	 * Create a new font size scale attribute. The base font for the
	 * affected text will have its size multiplied by scale_factor.
	 * Params:
	 * scaleFactor =  factor to scale the font
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* scaleNew(double scaleFactor)
	{
		// PangoAttribute* pango_attr_scale_new (double scale_factor);
		return pango_attr_scale_new(scaleFactor);
	}
	
	
	
	
	
	
	
	
	/**
	 * Create a new baseline displacement attribute.
	 * Params:
	 * rise =  the amount that the text should be displaced vertically,
	 *  in Pango units. Positive values displace the text upwards.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PangoAttribute* riseNew(int rise)
	{
		// PangoAttribute* pango_attr_rise_new (int rise);
		return pango_attr_rise_new(rise);
	}
	
	/**
	 * Create a new letter-spacing attribute.
	 * Params:
	 * letterSpacing =  amount of extra space to add between graphemes
	 *  of the text, in Pango units.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.6
	 */
	public static PangoAttribute* letterSpacingNew(int letterSpacing)
	{
		// PangoAttribute* pango_attr_letter_spacing_new (int letter_spacing);
		return pango_attr_letter_spacing_new(letterSpacing);
	}
	
	/**
	 * Create a new font fallback attribute.
	 * If fallback is disabled, characters will only be used from the
	 * closest matching font on the system. No fallback will be done to
	 * other fonts on the system that might contain the characters in the
	 * text.
	 * Params:
	 * enableFallback =  TRUE if we should fall back on other fonts
	 *  for characters the active font is missing.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.4
	 */
	public static PangoAttribute* fallbackNew(int enableFallback)
	{
		// PangoAttribute* pango_attr_fallback_new (gboolean enable_fallback);
		return pango_attr_fallback_new(enableFallback);
	}
	
	/**
	 * Create a new gravity attribute.
	 * Params:
	 * gravity =  the gravity value; should not be PANGO_GRAVITY_AUTO.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.16
	 */
	public static PangoAttribute* gravityNew(PangoGravity gravity)
	{
		// PangoAttribute* pango_attr_gravity_new (PangoGravity gravity);
		return pango_attr_gravity_new(gravity);
	}
	
	/**
	 * Create a new gravity hint attribute.
	 * Params:
	 * hint =  the gravity hint value.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().Since 1.16
	 */
	public static PangoAttribute* gravityHintNew(PangoGravityHint hint)
	{
		// PangoAttribute* pango_attr_gravity_hint_new (PangoGravityHint hint);
		return pango_attr_gravity_hint_new(hint);
	}
	
	
	
	/**
	 * Fill in the fields of a color from a string specification. The
	 * string can either one of a large set of standard names. (Taken
	 * from the X11 rgb.txt file), or it can be a hex value in the
	 * form '#rgb' '#rrggbb' '#rrrgggbbb' or '#rrrrggggbbbb' where
	 * 'r', 'g' and 'b' are hex digits of the red, green, and blue
	 * components of the color, respectively. (White in the four
	 * forms is '#fff' '#ffffff' '#fffffffff' and '#ffffffffffff')
	 * Params:
	 * color =  a PangoColor structure in which to store the result
	 * spec =  a string specifying the new color
	 * Returns: TRUE if parsing of the specifier succeeded, otherwise false.
	 */
	public static int pangoColorParse(PangoColor* color, char[] spec)
	{
		// gboolean pango_color_parse (PangoColor *color,  const char *spec);
		return pango_color_parse(color, Str.toStringz(spec));
	}
	
	/**
	 * Creates a copy of src, which should be freed with
	 * pango_color_free(). Primarily used by language bindings,
	 * not that useful otherwise (since colors can just be copied
	 * by assignment in C).
	 * Params:
	 * src =  color to copy
	 * Returns: the newly allocated PangoColor, which should be freed with pango_color_free().
	 */
	public static PangoColor* pangoColorCopy(PangoColor* src)
	{
		// PangoColor* pango_color_copy (const PangoColor *src);
		return pango_color_copy(src);
	}
	
	/**
	 * Frees a color allocated by pango_color_copy().
	 * Params:
	 * color =  an allocated PangoColor
	 */
	public static void pangoColorFree(PangoColor* color)
	{
		// void pango_color_free (PangoColor *color);
		pango_color_free(color);
	}
	
	/**
	 * Returns a textual specification of color in the hexadecimal form
	 * #rrrrggggbbbb, where r,
	 * g and b are hex digits representing
	 * the red, green, and blue components respectively.
	 * Params:
	 * color =  a PangoColor
	 * Returns: a newly-allocated text string that must be freed with g_free().Since 1.16
	 */
	public static char[] pangoColorToString(PangoColor* color)
	{
		// gchar* pango_color_to_string (const PangoColor *color);
		return Str.toString(pango_color_to_string(color) );
	}
	
	
	
	
	
	
	
	
	/**
	 * Create a new empty attribute list with a reference count of one.
	 * Returns: the newly allocated PangoAttrList, which should be freed with pango_attr_list_unref().
	 */
	public static PangoAttrList* listNew()
	{
		// PangoAttrList* pango_attr_list_new (void);
		return pango_attr_list_new();
	}
	
	/**
	 * Increase the reference count of the given attribute list by one.
	 * Params:
	 * list =  a PangoAttrList
	 * Returns: The attribute list passed inSince 1.10
	 */
	public static PangoAttrList* listRef(PangoAttrList* list)
	{
		// PangoAttrList* pango_attr_list_ref (PangoAttrList *list);
		return pango_attr_list_ref(list);
	}
	
	/**
	 * Decrease the reference count of the given attribute list by one.
	 * If the result is zero, free the attribute list and the attributes
	 * it contains.
	 * Params:
	 * list =  a PangoAttrList
	 */
	public static void listUnref(PangoAttrList* list)
	{
		// void pango_attr_list_unref (PangoAttrList *list);
		pango_attr_list_unref(list);
	}
	
	/**
	 * Copy list and return an identical new list.
	 * Params:
	 * list =  a PangoAttrList
	 * Returns: the newly allocated PangoAttrList, with a reference count of one, which should be freed with pango_attr_list_unref().
	 */
	public static PangoAttrList* listCopy(PangoAttrList* list)
	{
		// PangoAttrList* pango_attr_list_copy (PangoAttrList *list);
		return pango_attr_list_copy(list);
	}
	
	/**
	 * Insert the given attribute into the PangoAttrList. It will
	 * be inserted after all other attributes with a matching
	 * start_index.
	 * Params:
	 * list =  a PangoAttrList
	 * attr =  the attribute to insert. Ownership of this value is
	 *  assumed by the list.
	 */
	public static void listInsert(PangoAttrList* list, PangoAttribute* attr)
	{
		// void pango_attr_list_insert (PangoAttrList *list,  PangoAttribute *attr);
		pango_attr_list_insert(list, attr);
	}
	
	/**
	 * Insert the given attribute into the PangoAttrList. It will
	 * be inserted before all other attributes with a matching
	 * start_index.
	 * Params:
	 * list =  a PangoAttrList
	 * attr =  the attribute to insert. Ownership of this value is
	 *  assumed by the list.
	 */
	public static void listInsertBefore(PangoAttrList* list, PangoAttribute* attr)
	{
		// void pango_attr_list_insert_before (PangoAttrList *list,  PangoAttribute *attr);
		pango_attr_list_insert_before(list, attr);
	}
	
	/**
	 * Insert the given attribute into the PangoAttrList. It will
	 * replace any attributes of the same type on that segment
	 * and be merged with any adjoining attributes that are identical.
	 * This function is slower than pango_attr_list_insert() for
	 * creating a attribute list in order (potentially much slower
	 * for large lists). However, pango_attr_list_insert() is not
	 * suitable for continually changing a set of attributes
	 * since it never removes or combines existing attributes.
	 * Params:
	 * list =  a PangoAttrList
	 * attr =  the attribute to insert. Ownership of this value is
	 *  assumed by the list.
	 */
	public static void listChange(PangoAttrList* list, PangoAttribute* attr)
	{
		// void pango_attr_list_change (PangoAttrList *list,  PangoAttribute *attr);
		pango_attr_list_change(list, attr);
	}
	
	/**
	 * This function opens up a hole in list, fills it in with attributes from
	 * the left, and then merges other on top of the hole.
	 * This operation is equivalent to stretching every attribute
	 * that applies at position pos in list by an amount len,
	 * and then calling pango_attr_list_change() with a copy
	 * of each attribute in other in sequence (offset in position by pos).
	 * This operation proves useful for, for instance, inserting
	 * a pre-edit string in the middle of an edit buffer.
	 * Params:
	 * list =  a PangoAttrList
	 * other =  another PangoAttrList
	 * pos =  the position in list at which to insert other
	 * len =  the length of the spliced segment. (Note that this
	 *  must be specified since the attributes in other
	 *  may only be present at some subsection of this range)
	 */
	public static void listSplice(PangoAttrList* list, PangoAttrList* other, int pos, int len)
	{
		// void pango_attr_list_splice (PangoAttrList *list,  PangoAttrList *other,  gint pos,  gint len);
		pango_attr_list_splice(list, other, pos, len);
	}
	
	/**
	 * Given a PangoAttrList and callback function, removes any elements
	 * of list for which func returns TRUE and inserts them into
	 * a new list.
	 * Params:
	 * list =  a PangoAttrList
	 * func =  callback function; returns TRUE if an attribute
	 *  should be filtered out.
	 * data =  Data to be passed to func
	 * Returns: the new PangoAttrList or NULL if no attributes of the given types were found.Since 1.2
	 */
	public static PangoAttrList* listFilter(PangoAttrList* list, PangoAttrFilterFunc func, void* data)
	{
		// PangoAttrList* pango_attr_list_filter (PangoAttrList *list,  PangoAttrFilterFunc func,  gpointer data);
		return pango_attr_list_filter(list, func, data);
	}
	
	
	/**
	 * Create a iterator initialized to the beginning of the list.
	 * list must not be modified until this iterator is freed.
	 * Params:
	 * list =  a PangoAttrList
	 * Returns: the newly allocated PangoAttrIterator, which should be freed with pango_attr_iterator_destroy().
	 */
	public static PangoAttrIterator* listGetIterator(PangoAttrList* list)
	{
		// PangoAttrIterator* pango_attr_list_get_iterator (PangoAttrList *list);
		return pango_attr_list_get_iterator(list);
	}
	
	
	/**
	 * Copy a PangoAttrIterator
	 * Params:
	 * iterator =  a PangoAttrIterator.
	 * Returns: the newly allocated PangoAttrIterator, which should be freed with pango_attr_iterator_destroy().
	 */
	public static PangoAttrIterator* iteratorCopy(PangoAttrIterator* iterator)
	{
		// PangoAttrIterator* pango_attr_iterator_copy (PangoAttrIterator *iterator);
		return pango_attr_iterator_copy(iterator);
	}
	
	/**
	 * Advance the iterator until the next change of style.
	 * Params:
	 * iterator =  a PangoAttrIterator
	 * Returns: FALSE if the iterator is at the end of the list, otherwise TRUE
	 */
	public static int iteratorNext(PangoAttrIterator* iterator)
	{
		// gboolean pango_attr_iterator_next (PangoAttrIterator *iterator);
		return pango_attr_iterator_next(iterator);
	}
	
	/**
	 * Get the range of the current segment. Note that the
	 * stored return values are signed, not unsigned like
	 * the values in PangoAttribute. To deal with this API
	 * oversight, stored return values that wouldn't fit into
	 * a signed integer are clamped to G_MAXINT.
	 * Params:
	 * iterator =  a PangoAttrIterator
	 * start =  location to store the start of the range
	 * end =  location to store the end of the range
	 */
	public static void iteratorRange(PangoAttrIterator* iterator, int* start, int* end)
	{
		// void pango_attr_iterator_range (PangoAttrIterator *iterator,  gint *start,  gint *end);
		pango_attr_iterator_range(iterator, start, end);
	}
	
	/**
	 * Find the current attribute of a particular type at the iterator
	 * location. When multiple attributes of the same type overlap,
	 * the attribute whose range starts closest to the current location
	 * is used.
	 * Params:
	 * iterator =  a PangoAttrIterator
	 * type =  the type of attribute to find.
	 * Returns: the current attribute of the given type, or NULL if no attribute of that type applies to the current location.
	 */
	public static PangoAttribute* iteratorGet(PangoAttrIterator* iterator, PangoAttrType type)
	{
		// PangoAttribute* pango_attr_iterator_get (PangoAttrIterator *iterator,  PangoAttrType type);
		return pango_attr_iterator_get(iterator, type);
	}
	
	/**
	 * Get the font and other attributes at the current iterator position.
	 * Params:
	 * iterator =  a PangoAttrIterator
	 * desc =  a PangoFontDescription to fill in with the current values.
	 *  The family name in this structure will be set using
	 *  pango_font_description_set_family_static() using values from
	 *  an attribute in the PangoAttrList associated with the iterator,
	 * language =  if non-NULL, location to store language tag for item, or NULL
	 *  if none is found.
	 * extraAttrs =  if non-NULL, location in which to store a list of non-font
	 *  attributes at the the current position; only the highest priority
	 *  value of each attribute will be added to this list. In order
	 *  to free this value, you must call pango_attribute_destroy() on
	 *  each member.
	 */
	public static void iteratorGetFont(PangoAttrIterator* iterator, PgFontDescription desc, PangoLanguage** language, GSList** extraAttrs)
	{
		// void pango_attr_iterator_get_font (PangoAttrIterator *iterator,  PangoFontDescription *desc,  PangoLanguage **language,  GSList **extra_attrs);
		pango_attr_iterator_get_font(iterator, (desc is null) ? null : desc.getPgFontDescriptionStruct(), language, extraAttrs);
	}
	
	/**
	 * Gets a list of all attributes at the current position of the
	 * iterator.
	 * Params:
	 * iterator =  a PangoAttrIterator
	 * Returns: a list of all attributes for the current range. To free this value, call pango_attribute_destroy() on each value and g_slist_free() on the list.Since 1.2
	 */
	public static ListSG iteratorGetAttrs(PangoAttrIterator* iterator)
	{
		// GSList* pango_attr_iterator_get_attrs (PangoAttrIterator *iterator);
		return new ListSG( pango_attr_iterator_get_attrs(iterator) );
	}
	
	/**
	 * Destroy a PangoAttrIterator and free all associated memory.
	 * Params:
	 * iterator =  a PangoAttrIterator.
	 */
	public static void iteratorDestroy(PangoAttrIterator* iterator)
	{
		// void pango_attr_iterator_destroy (PangoAttrIterator *iterator);
		pango_attr_iterator_destroy(iterator);
	}
}
