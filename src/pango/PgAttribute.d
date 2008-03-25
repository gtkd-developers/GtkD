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
 * 	- pango.PgLanguage
 * 	- pango.PgFontDescription
 * structWrap:
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


private import glib.Str;
private import pango.PgLanguage;
private import pango.PgFontDescription;




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
		if(pangoAttribute is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null pangoAttribute passed to constructor.");
			else return;
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
	public static int parseMarkup(string markupText, int length, gunichar accelMarker, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error)
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
	public static PangoAttrType typeRegister(string name)
	{
		// PangoAttrType pango_attr_type_register (const gchar *name);
		return pango_attr_type_register(Str.toStringz(name));
	}
	
	/**
	 * Initializes attr's klass to klass, it's start_index to zero,
	 * and end_index to G_MAXUINT such that the attribute applies
	 * to the entire text by default.
	 * Since 1.20
	 * Params:
	 * attr =  a PangoAttribute
	 * klass =  a PangoAttributeClass
	 */
	public void attributeInit(PangoAttrClass* klass)
	{
		// void pango_attribute_init (PangoAttribute *attr,  const PangoAttrClass *klass);
		pango_attribute_init(pangoAttribute, klass);
	}
	
	/**
	 * Make a copy of an attribute.
	 * Params:
	 * attr =  a PangoAttribute
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public PgAttribute attributeCopy()
	{
		// PangoAttribute* pango_attribute_copy (const PangoAttribute *attr);
		auto p = pango_attribute_copy(pangoAttribute);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Compare two attributes for equality. This compares only the
	 * actual value of the two attributes and not the ranges that the
	 * attributes apply to.
	 * Params:
	 * attr2 =  another PangoAttribute
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
	 * attr =  a PangoAttribute.
	 */
	public void attributeDestroy()
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
	public static PgAttribute languageNew(PgLanguage language)
	{
		// PangoAttribute* pango_attr_language_new (PangoLanguage *language);
		auto p = pango_attr_language_new((language is null) ? null : language.getPgLanguageStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font family attribute.
	 * Params:
	 * family =  the family or comma separated list of families
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute familyNew(string family)
	{
		// PangoAttribute* pango_attr_family_new (const char *family);
		auto p = pango_attr_family_new(Str.toStringz(family));
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font slant style attribute.
	 * Params:
	 * style =  the slant style
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute styleNew(PangoStyle style)
	{
		// PangoAttribute* pango_attr_style_new (PangoStyle style);
		auto p = pango_attr_style_new(style);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font variant attribute (normal or small caps)
	 * Params:
	 * variant =  the variant
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute variantNew(PangoVariant variant)
	{
		// PangoAttribute* pango_attr_variant_new (PangoVariant variant);
		auto p = pango_attr_variant_new(variant);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font stretch attribute
	 * Params:
	 * stretch =  the stretch
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute stretchNew(PangoStretch stretch)
	{
		// PangoAttribute* pango_attr_stretch_new (PangoStretch stretch);
		auto p = pango_attr_stretch_new(stretch);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font weight attribute.
	 * Params:
	 * weight =  the weight
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute weightNew(PangoWeight weight)
	{
		// PangoAttribute* pango_attr_weight_new (PangoWeight weight);
		auto p = pango_attr_weight_new(weight);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font-size attribute in fractional points.
	 * Params:
	 * size =  the font size, in PANGO_SCALEths of a point.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute sizeNew(int size)
	{
		// PangoAttribute* pango_attr_size_new (int size);
		auto p = pango_attr_size_new(size);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font-size attribute in device units.
	 * Since 1.8
	 * Params:
	 * size =  the font size, in PANGO_SCALEths of a device unit.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute sizeNewAbsolute(int size)
	{
		// PangoAttribute* pango_attr_size_new_absolute (int size);
		auto p = pango_attr_size_new_absolute(size);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font description attribute. This attribute
	 * allows setting family, style, weight, variant, stretch,
	 * and size simultaneously.
	 * Params:
	 * desc =  the font description
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute fontDescNew(PgFontDescription desc)
	{
		// PangoAttribute* pango_attr_font_desc_new (const PangoFontDescription *desc);
		auto p = pango_attr_font_desc_new((desc is null) ? null : desc.getPgFontDescriptionStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new foreground color attribute.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute foregroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_foreground_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_foreground_new(red, green, blue);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new background color attribute.
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute backgroundNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_background_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_background_new(red, green, blue);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new strike-through attribute.
	 * Params:
	 * strikethrough =  TRUE if the text should be struck-through.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute strikethroughNew(int strikethrough)
	{
		// PangoAttribute* pango_attr_strikethrough_new (gboolean strikethrough);
		auto p = pango_attr_strikethrough_new(strikethrough);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new strikethrough color attribute. This attribute
	 * modifies the color of strikethrough lines. If not set, strikethrough
	 * lines will use the foreground color.
	 * Since 1.8
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute strikethroughColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_strikethrough_color_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_strikethrough_color_new(red, green, blue);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new underline-style attribute.
	 * Params:
	 * underline =  the underline style.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute underlineNew(PangoUnderline underline)
	{
		// PangoAttribute* pango_attr_underline_new (PangoUnderline underline);
		auto p = pango_attr_underline_new(underline);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new underline color attribute. This attribute
	 * modifies the color of underlines. If not set, underlines
	 * will use the foreground color.
	 * Since 1.8
	 * Params:
	 * red =  the red value (ranging from 0 to 65535)
	 * green =  the green value
	 * blue =  the blue value
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute underlineColorNew(ushort red, ushort green, ushort blue)
	{
		// PangoAttribute* pango_attr_underline_color_new (guint16 red,  guint16 green,  guint16 blue);
		auto p = pango_attr_underline_color_new(red, green, blue);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
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
	public static PgAttribute shapeNew(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		// PangoAttribute* pango_attr_shape_new (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect);
		auto p = pango_attr_shape_new(inkRect, logicalRect);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Like pango_attr_shape_new(), but a user data pointer is also
	 * provided; this pointer can be accessed when later
	 * rendering the glyph.
	 * Since 1.8
	 * Params:
	 * inkRect =  ink rectangle to assign to each character
	 * logicalRect =  logical rectangle to assign to each character
	 * data =  user data pointer
	 * copyFunc =  function to copy data when the attribute
	 *  is copied. If NULL, data is simply copied
	 *  as a pointer.
	 * destroyFunc =  function to free data when the attribute
	 *  is freed, or NULL
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute shapeNewWithData(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc)
	{
		// PangoAttribute* pango_attr_shape_new_with_data (const PangoRectangle *ink_rect,  const PangoRectangle *logical_rect,  gpointer data,  PangoAttrDataCopyFunc copy_func,  GDestroyNotify destroy_func);
		auto p = pango_attr_shape_new_with_data(inkRect, logicalRect, data, copyFunc, destroyFunc);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font size scale attribute. The base font for the
	 * affected text will have its size multiplied by scale_factor.
	 * Params:
	 * scaleFactor =  factor to scale the font
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute scaleNew(double scaleFactor)
	{
		// PangoAttribute* pango_attr_scale_new (double scale_factor);
		auto p = pango_attr_scale_new(scaleFactor);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new baseline displacement attribute.
	 * Params:
	 * rise =  the amount that the text should be displaced vertically,
	 *  in Pango units. Positive values displace the text upwards.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute riseNew(int rise)
	{
		// PangoAttribute* pango_attr_rise_new (int rise);
		auto p = pango_attr_rise_new(rise);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new letter-spacing attribute.
	 * Since 1.6
	 * Params:
	 * letterSpacing =  amount of extra space to add between graphemes
	 *  of the text, in Pango units.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute letterSpacingNew(int letterSpacing)
	{
		// PangoAttribute* pango_attr_letter_spacing_new (int letter_spacing);
		auto p = pango_attr_letter_spacing_new(letterSpacing);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new font fallback attribute.
	 * If fallback is disabled, characters will only be used from the
	 * closest matching font on the system. No fallback will be done to
	 * other fonts on the system that might contain the characters in the
	 * text.
	 * Since 1.4
	 * Params:
	 * enableFallback =  TRUE if we should fall back on other fonts
	 *  for characters the active font is missing.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute fallbackNew(int enableFallback)
	{
		// PangoAttribute* pango_attr_fallback_new (gboolean enable_fallback);
		auto p = pango_attr_fallback_new(enableFallback);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new gravity attribute.
	 * Since 1.16
	 * Params:
	 * gravity =  the gravity value; should not be PANGO_GRAVITY_AUTO.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute gravityNew(PangoGravity gravity)
	{
		// PangoAttribute* pango_attr_gravity_new (PangoGravity gravity);
		auto p = pango_attr_gravity_new(gravity);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
	
	/**
	 * Create a new gravity hint attribute.
	 * Since 1.16
	 * Params:
	 * hint =  the gravity hint value.
	 * Returns: the newly allocated PangoAttribute, which should be freed with pango_attribute_destroy().
	 */
	public static PgAttribute gravityHintNew(PangoGravityHint hint)
	{
		// PangoAttribute* pango_attr_gravity_hint_new (PangoGravityHint hint);
		auto p = pango_attr_gravity_hint_new(hint);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgAttribute(cast(PangoAttribute*) p);
	}
}
