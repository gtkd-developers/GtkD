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
 * 	- pango_
 * omit structs:
 * omit prefixes:
 * 	- pango_color_
 * 	- pango_language_
 * 	- pango_attr_list_
 * 	- pango_attr_iterator_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.SimpleXML
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgFontDescription
 * structWrap:
 * 	- GMarkupParseContext* -> SimpleXML
 * 	- PangoAttrList* -> PgAttributeList
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgAttribute;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.SimpleXML;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgFontDescription;




/**
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
	 * To parse a stream of pango markup incrementally, use pango_markup_parser_new().
	 * If any error happens, none of the output arguments are touched except
	 * for error.
	 * Params:
	 * markupText = markup to parse (see markup format)
	 * length = length of markup_text, or -1 if nul-terminated
	 * accelMarker = character that precedes an accelerator, or 0 for none
	 * attrList = address of return location for a PangoAttrList, or NULL. [out][allow-none]
	 * text = address of return location for text with tags stripped, or NULL. [out][allow-none]
	 * accelChar = address of return location for accelerator char, or NULL. [out][allow-none]
	 * Returns: FALSE if error is set, otherwise TRUE
	 * Throws: GException on failure.
	 */
	public static int parseMarkup(string markupText, int length, gunichar accelMarker, out PgAttributeList attrList, out string text, gunichar* accelChar)
	{
		// gboolean pango_parse_markup (const char *markup_text,  int length,  gunichar accel_marker,  PangoAttrList **attr_list,  char **text,  gunichar *accel_char,  GError **error);
		PangoAttrList* outattrList = null;
		char* outtext = null;
		GError* err = null;
		
		auto p = pango_parse_markup(Str.toStringz(markupText), length, accelMarker, &outattrList, &outtext, accelChar, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		attrList = ObjectG.getDObject!(PgAttributeList)(outattrList);
		text = Str.toString(outtext);
		return p;
	}
	
	/**
	 * Parses marked-up text (see
	 * markup format) to create
	 * a plain-text string and an attribute list.
	 * If accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in accel_char,
	 * when calling finish(). Two accel_marker characters following each
	 * other produce a single literal accel_marker character.
	 * To feed markup to the parser, use g_markup_parse_context_parse()
	 * on the returned GMarkupParseContext. When done with feeding markup
	 * to the parser, use pango_markup_parser_finish() to get the data out
	 * of it, and then use g_markup_parse_context_free() to free it.
	 * This function is designed for applications that read pango markup
	 * from streams. To simply parse a string containing pango markup,
	 * the simpler pango_parse_markup() API is recommended instead.
	 * Since 1.31.0
	 * Params:
	 * accelMarker = character that precedes an accelerator, or 0 for none
	 * Returns: a GMarkupParseContext that should be destroyed with g_markup_parse_context_free(). [transfer none]
	 */
	public static SimpleXML markupParserNew(gunichar accelMarker)
	{
		// GMarkupParseContext * pango_markup_parser_new (gunichar accel_marker);
		auto p = pango_markup_parser_new(accelMarker);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SimpleXML)(cast(GMarkupParseContext*) p);
	}
	
	/**
	 * After feeding a pango markup parser some data with g_markup_parse_context_parse(),
	 * use this function to get the list of pango attributes and text out of the
	 * markup. This function will not free context, use g_markup_parse_context_free()
	 * to do so.
	 * Since 1.31.0
	 * Params:
	 * context = A valid parse context that was returned from pango_markup_parser_new()
	 * attrList = address of return location for a PangoAttrList, or NULL. [out][allow-none]
	 * text = address of return location for text with tags stripped, or NULL. [out][allow-none]
	 * accelChar = address of return location for accelerator char, or NULL. [out][allow-none]
	 * Returns: FALSE if error is set, otherwise TRUE
	 * Throws: GException on failure.
	 */
	public static int markupParserFinish(SimpleXML context, out PgAttributeList attrList, out string text, out gunichar accelChar)
	{
		// gboolean pango_markup_parser_finish (GMarkupParseContext *context,  PangoAttrList **attr_list,  char **text,  gunichar *accel_char,  GError **error);
		PangoAttrList* outattrList = null;
		char* outtext = null;
		GError* err = null;
		
		auto p = pango_markup_parser_finish((context is null) ? null : context.getSimpleXMLStruct(), &outattrList, &outtext, &accelChar, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		attrList = ObjectG.getDObject!(PgAttributeList)(outattrList);
		text = Str.toString(outtext);
		return p;
	}
	
	/**
	 * Allocate a new attribute type ID. The attribute type name can be accessed
	 * later by using pango_attr_type_get_name().
	 * Params:
	 * name = an identifier for the type
	 * Returns: the new type ID.
	 */
	public static PangoAttrType typeRegister(string name)
	{
		// PangoAttrType pango_attr_type_register (const gchar *name);
		return pango_attr_type_register(Str.toStringz(name));
	}
	
	/**
	 * Fetches the attribute type name passed in when registering the type using
	 * pango_attr_type_register().
	 * The returned value is an interned string (see g_intern_string() for what
	 * that means) that should not be modified or freed.
	 * Since 1.22
	 * Params:
	 * type = an attribute type ID to fetch the name for
	 * Returns: the type ID name (which may be NULL), or NULL if type is a built-in Pango attribute type or invalid.
	 */
	public static string typeGetName(PangoAttrType type)
	{
		// const char * pango_attr_type_get_name (PangoAttrType type);
		return Str.toString(pango_attr_type_get_name(type));
	}
	
	/**
	 * Initializes attr's klass to klass,
	 * it's start_index to PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING
	 * and end_index to PANGO_ATTR_INDEX_TO_TEXT_END
	 * such that the attribute applies
	 * to the entire text by default.
	 * Since 1.20
	 * Params:
	 * attr = a PangoAttribute
	 * klass = a PangoAttributeClass
	 */
	public void attributeInit(PangoAttrClass* klass)
	{
		// void pango_attribute_init (PangoAttribute *attr,  const PangoAttrClass *klass);
		pango_attribute_init(pangoAttribute, klass);
	}
	
	/**
	 * Make a copy of an attribute.
	 * Params:
	 * attr = a PangoAttribute
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public PgAttribute attributeCopy()
	{
		// PangoAttribute * pango_attribute_copy (const PangoAttribute *attr);
		auto p = pango_attribute_copy(pangoAttribute);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Compare two attributes for equality. This compares only the
	 * actual value of the two attributes and not the ranges that the
	 * attributes apply to.
	 * Params:
	 * attr2 = another PangoAttribute
	 * Returns: TRUE if the two attributes have the same value.
	 */
	public int attributeEqual(PgAttribute attr2)
	{
		// gboolean pango_attribute_equal (const PangoAttribute *attr1,  const PangoAttribute *attr2);
		return pango_attribute_equal(pangoAttribute, (attr2 is null) ? null : attr2.getPgAttributeStruct());
	}
	
	/**
	 * Destroy a PangoAttribute and free all associated memory.
	 * Params:
	 * attr = a PangoAttribute.
	 */
	public void attributeDestroy()
	{
		// void pango_attribute_destroy (PangoAttribute *attr);
		pango_attribute_destroy(pangoAttribute);
	}
	
	/**
	 * Create a new language tag attribute.
	 * Params:
	 * language = language tag
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute languageNew(PgLanguage language)
	{
		// PangoAttribute * pango_attr_language_new (PangoLanguage *language);
		auto p = pango_attr_language_new((language is null) ? null : language.getPgLanguageStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font family attribute.
	 * Params:
	 * family = the family or comma separated list of families
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute familyNew(string family)
	{
		// PangoAttribute * pango_attr_family_new (const char *family);
		auto p = pango_attr_family_new(Str.toStringz(family));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font slant style attribute.
	 * Params:
	 * style = the slant style
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute styleNew(PangoStyle style)
	{
		// PangoAttribute * pango_attr_style_new (PangoStyle style);
		auto p = pango_attr_style_new(style);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font variant attribute (normal or small caps)
	 * Params:
	 * variant = the variant
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute variantNew(PangoVariant variant)
	{
		// PangoAttribute * pango_attr_variant_new (PangoVariant variant);
		auto p = pango_attr_variant_new(variant);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font stretch attribute
	 * Params:
	 * stretch = the stretch
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute stretchNew(PangoStretch stretch)
	{
		// PangoAttribute * pango_attr_stretch_new (PangoStretch stretch);
		auto p = pango_attr_stretch_new(stretch);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font weight attribute.
	 * Params:
	 * weight = the weight
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute weightNew(PangoWeight weight)
	{
		// PangoAttribute * pango_attr_weight_new (PangoWeight weight);
		auto p = pango_attr_weight_new(weight);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font-size attribute in fractional points.
	 * Params:
	 * size = the font size, in PANGO_SCALEths of a point.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute sizeNew(int size)
	{
		// PangoAttribute * pango_attr_size_new (int size);
		auto p = pango_attr_size_new(size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font-size attribute in device units.
	 * Since 1.8
	 * Params:
	 * size = the font size, in PANGO_SCALEths of a device unit.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute sizeNewAbsolute(int size)
	{
		// PangoAttribute * pango_attr_size_new_absolute (int size);
		auto p = pango_attr_size_new_absolute(size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font description attribute. This attribute
	 * allows setting family, style, weight, variant, stretch,
	 * and size simultaneously.
	 * Params:
	 * desc = the font description
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute fontDescNew(PgFontDescription desc)
	{
		// PangoAttribute * pango_attr_font_desc_new (const PangoFontDescription *desc);
		auto p = pango_attr_font_desc_new((desc is null) ? null : desc.getPgFontDescriptionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new foreground color attribute.
	 * Params:
	 * red = the red value (ranging from 0 to 65535)
	 * green = the green value
	 * blue = the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute foregroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute * pango_attr_foreground_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_foreground_new(red, green, blue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new background color attribute.
	 * Params:
	 * red = the red value (ranging from 0 to 65535)
	 * green = the green value
	 * blue = the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute backgroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute * pango_attr_background_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_background_new(red, green, blue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new strike-through attribute.
	 * Params:
	 * strikethrough = TRUE if the text should be struck-through.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute strikethroughNew(int strikethrough)
	{
		// PangoAttribute * pango_attr_strikethrough_new (gboolean strikethrough);
		auto p = pango_attr_strikethrough_new(strikethrough);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new strikethrough color attribute. This attribute
	 * modifies the color of strikethrough lines. If not set, strikethrough
	 * lines will use the foreground color.
	 * Since 1.8
	 * Params:
	 * red = the red value (ranging from 0 to 65535)
	 * green = the green value
	 * blue = the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute strikethroughColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute * pango_attr_strikethrough_color_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_strikethrough_color_new(red, green, blue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new underline-style attribute.
	 * Params:
	 * underline = the underline style.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute underlineNew(PangoUnderline underline)
	{
		// PangoAttribute * pango_attr_underline_new (PangoUnderline underline);
		auto p = pango_attr_underline_new(underline);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new underline color attribute. This attribute
	 * modifies the color of underlines. If not set, underlines
	 * will use the foreground color.
	 * Since 1.8
	 * Params:
	 * red = the red value (ranging from 0 to 65535)
	 * green = the green value
	 * blue = the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute underlineColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute * pango_attr_underline_color_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_underline_color_new(red, green, blue);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new shape attribute. A shape is used to impose a
	 * particular ink and logical rectangle on the result of shaping a
	 * particular glyph. This might be used, for instance, for
	 * embedding a picture or a widget inside a PangoLayout.
	 * Params:
	 * inkRect = ink rectangle to assign to each character
	 * logicalRect = logical rectangle to assign to each character
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute shapeNew(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// PangoAttribute * pango_attr_shape_new (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect);
		auto p = pango_attr_shape_new(inkRect, logicalRect);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Like pango_attr_shape_new(), but a user data pointer is also
	 * provided; this pointer can be accessed when later
	 * rendering the glyph.
	 * Since 1.8
	 * Params:
	 * inkRect = ink rectangle to assign to each character
	 * logicalRect = logical rectangle to assign to each character
	 * data = user data pointer
	 * copyFunc = function to copy data when the
	 * attribute is copied. If NULL, data is simply
	 * copied as a pointer. [allow-none]
	 * destroyFunc = function to free data when the
	 * attribute is freed, or NULL. [allow-none]
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute shapeNewWithData(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc)
	{
		// PangoAttribute * pango_attr_shape_new_with_data (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect,  gpointer data,  PangoAttrDataCopyFunc copy_func,  GDestroyNotify destroy_func);
		auto p = pango_attr_shape_new_with_data(inkRect, logicalRect, data, copyFunc, destroyFunc);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font size scale attribute. The base font for the
	 * affected text will have its size multiplied by scale_factor.
	 * Params:
	 * scaleFactor = factor to scale the font
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute scaleNew(double scaleFactor)
	{
		// PangoAttribute * pango_attr_scale_new (double scale_factor);
		auto p = pango_attr_scale_new(scaleFactor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new baseline displacement attribute.
	 * Params:
	 * rise = the amount that the text should be displaced vertically,
	 * in Pango units. Positive values displace the text upwards.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute riseNew(int rise)
	{
		// PangoAttribute * pango_attr_rise_new (int rise);
		auto p = pango_attr_rise_new(rise);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new letter-spacing attribute.
	 * Since 1.6
	 * Params:
	 * letterSpacing = amount of extra space to add between graphemes
	 * of the text, in Pango units.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute letterSpacingNew(int letterSpacing)
	{
		// PangoAttribute * pango_attr_letter_spacing_new (int letter_spacing);
		auto p = pango_attr_letter_spacing_new(letterSpacing);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font fallback attribute.
	 * If fallback is disabled, characters will only be used from the
	 * closest matching font on the system. No fallback will be done to
	 * other fonts on the system that might contain the characters in the
	 * text.
	 * Since 1.4
	 * Params:
	 * enableFallback = TRUE if we should fall back on other fonts
	 * for characters the active font is missing.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute fallbackNew(int enableFallback)
	{
		// PangoAttribute * pango_attr_fallback_new (gboolean enable_fallback);
		auto p = pango_attr_fallback_new(enableFallback);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new gravity attribute.
	 * Since 1.16
	 * Params:
	 * gravity = the gravity value; should not be PANGO_GRAVITY_AUTO.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute gravityNew(PangoGravity gravity)
	{
		// PangoAttribute * pango_attr_gravity_new (PangoGravity gravity);
		auto p = pango_attr_gravity_new(gravity);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new gravity hint attribute.
	 * Since 1.16
	 * Params:
	 * hint = the gravity hint value.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy(). [transfer full]
	 */
	public static PgAttribute gravityHintNew(PangoGravityHint hint)
	{
		// PangoAttribute * pango_attr_gravity_hint_new (PangoGravityHint hint);
		auto p = pango_attr_gravity_hint_new(hint);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
}
