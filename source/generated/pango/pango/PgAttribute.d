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


module pango.PgAttribute;

private import glib.ErrorG;
private import glib.GException;
private import glib.SimpleXML;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import pango.PgAttributeFontDesc;
private import pango.PgAttributeLanguage;
private import pango.PgAttributeList;
private import pango.PgAttributeShape;
private import pango.PgAttributeSize;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The `PangoAttribute` structure represents the common portions of all
 * attributes.
 * 
 * Particular types of attributes include this structure as their initial
 * portion. The common portion of the attribute holds the range to which
 * the value in the type-specific part of the attribute applies and should
 * be initialized using [method@Pango.Attribute.init]. By default, an attribute
 * will have an all-inclusive range of [0,%G_MAXUINT].
 */
public class PgAttribute
{
	/** the main Gtk struct */
	protected PangoAttribute* pangoAttribute;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoAttribute* getPgAttributeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoAttribute;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoAttribute;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttribute* pangoAttribute, bool ownedRef = false)
	{
		this.pangoAttribute = pangoAttribute;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return pango_attribute_get_type();
	}

	/**
	 * Returns the attribute cast to `PangoAttrColor`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrColor`,
	 *     or %NULL if it's not a color attribute
	 *
	 * Since: 1.50
	 */
	public PangoAttrColor* asColor()
	{
		return pango_attribute_as_color(pangoAttribute);
	}

	/**
	 * Returns the attribute cast to `PangoAttrFloat`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrFloat`,
	 *     or %NULL if it's not a floating point attribute
	 *
	 * Since: 1.50
	 */
	public PangoAttrFloat* asFloat()
	{
		return pango_attribute_as_float(pangoAttribute);
	}

	/**
	 * Returns the attribute cast to `PangoAttrFontDesc`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrFontDesc`,
	 *     or %NULL if it's not a font description attribute
	 *
	 * Since: 1.50
	 */
	public PgAttributeFontDesc asFontDesc()
	{
		auto __p = pango_attribute_as_font_desc(pangoAttribute);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeFontDesc)(cast(PangoAttrFontDesc*) __p);
	}

	/**
	 * Returns the attribute cast to `PangoAttrFontFeatures`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrFontFeatures`,
	 *     or %NULL if it's not a font features attribute
	 *
	 * Since: 1.50
	 */
	public PangoAttrFontFeatures* asFontFeatures()
	{
		return pango_attribute_as_font_features(pangoAttribute);
	}

	/**
	 * Returns the attribute cast to `PangoAttrInt`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrInt`,
	 *     or %NULL if it's not an integer attribute
	 *
	 * Since: 1.50
	 */
	public PangoAttrInt* asInt()
	{
		return pango_attribute_as_int(pangoAttribute);
	}

	/**
	 * Returns the attribute cast to `PangoAttrLanguage`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrLanguage`,
	 *     or %NULL if it's not a language attribute
	 *
	 * Since: 1.50
	 */
	public PgAttributeLanguage asLanguage()
	{
		auto __p = pango_attribute_as_language(pangoAttribute);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeLanguage)(cast(PangoAttrLanguage*) __p);
	}

	/**
	 * Returns the attribute cast to `PangoAttrShape`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrShape`,
	 *     or %NULL if it's not a shape attribute
	 *
	 * Since: 1.50
	 */
	public PgAttributeShape asShape()
	{
		auto __p = pango_attribute_as_shape(pangoAttribute);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeShape)(cast(PangoAttrShape*) __p);
	}

	/**
	 * Returns the attribute cast to `PangoAttrSize`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrSize`,
	 *     or NULL if it's not a size attribute
	 *
	 * Since: 1.50
	 */
	public PgAttributeSize asSize()
	{
		auto __p = pango_attribute_as_size(pangoAttribute);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeSize)(cast(PangoAttrSize*) __p);
	}

	/**
	 * Returns the attribute cast to `PangoAttrString`.
	 *
	 * This is mainly useful for language bindings.
	 *
	 * Returns: The attribute as `PangoAttrString`,
	 *     or %NULL if it's not a string attribute
	 *
	 * Since: 1.50
	 */
	public PangoAttrString* asString()
	{
		return pango_attribute_as_string(pangoAttribute);
	}

	/**
	 * Make a copy of an attribute.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy].
	 */
	public PgAttribute copy()
	{
		auto __p = pango_attribute_copy(pangoAttribute);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Destroy a `PangoAttribute` and free all associated memory.
	 */
	public void destroy()
	{
		pango_attribute_destroy(pangoAttribute);
	}

	/**
	 * Compare two attributes for equality.
	 *
	 * This compares only the actual value of the two
	 * attributes and not the ranges that the attributes
	 * apply to.
	 *
	 * Params:
	 *     attr2 = another `PangoAttribute`
	 *
	 * Returns: %TRUE if the two attributes have the same value
	 */
	public bool equal(PgAttribute attr2)
	{
		return pango_attribute_equal(pangoAttribute, (attr2 is null) ? null : attr2.getPgAttributeStruct()) != 0;
	}

	/**
	 * Initializes @attr's klass to @klass, it's start_index to
	 * %PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING and end_index to
	 * %PANGO_ATTR_INDEX_TO_TEXT_END such that the attribute applies
	 * to the entire text by default.
	 *
	 * Params:
	 *     klass = a `PangoAttrClass`
	 *
	 * Since: 1.20
	 */
	public void init(PangoAttrClass* klass)
	{
		pango_attribute_init(pangoAttribute, klass);
	}

	/**
	 * Create a new background color attribute.
	 *
	 * Params:
	 *     red = the red value (ranging from 0 to 65535)
	 *     green = the green value
	 *     blue = the blue value
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute backgroundNew(ushort red, ushort green, ushort blue)
	{
		auto __p = pango_attr_background_new(red, green, blue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new background alpha attribute.
	 *
	 * Params:
	 *     alpha = the alpha value, between 1 and 65536
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.38
	 */
	public static PgAttribute backgroundAlphaNew(ushort alpha)
	{
		auto __p = pango_attr_background_alpha_new(alpha);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font fallback attribute.
	 *
	 * If fallback is disabled, characters will only be
	 * used from the closest matching font on the system.
	 * No fallback will be done to other fonts on the system
	 * that might contain the characters in the text.
	 *
	 * Params:
	 *     enableFallback = %TRUE if we should fall back on other fonts
	 *         for characters the active font is missing
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.4
	 */
	public static PgAttribute fallbackNew(bool enableFallback)
	{
		auto __p = pango_attr_fallback_new(enableFallback);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font family attribute.
	 *
	 * Params:
	 *     family = the family or comma-separated list of families
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute familyNew(string family)
	{
		auto __p = pango_attr_family_new(Str.toStringz(family));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new foreground color attribute.
	 *
	 * Params:
	 *     red = the red value (ranging from 0 to 65535)
	 *     green = the green value
	 *     blue = the blue value
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute foregroundNew(ushort red, ushort green, ushort blue)
	{
		auto __p = pango_attr_foreground_new(red, green, blue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new foreground alpha attribute.
	 *
	 * Params:
	 *     alpha = the alpha value, between 1 and 65536
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.38
	 */
	public static PgAttribute foregroundAlphaNew(ushort alpha)
	{
		auto __p = pango_attr_foreground_alpha_new(alpha);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new gravity hint attribute.
	 *
	 * Params:
	 *     hint = the gravity hint value
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.16
	 */
	public static PgAttribute gravityHintNew(PangoGravityHint hint)
	{
		auto __p = pango_attr_gravity_hint_new(hint);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new gravity attribute.
	 *
	 * Params:
	 *     gravity = the gravity value; should not be %PANGO_GRAVITY_AUTO
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.16
	 */
	public static PgAttribute gravityNew(PangoGravity gravity)
	{
		auto __p = pango_attr_gravity_new(gravity);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new letter-spacing attribute.
	 *
	 * Params:
	 *     letterSpacing = amount of extra space to add between
	 *         graphemes of the text, in Pango units
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.6
	 */
	public static PgAttribute letterSpacingNew(int letterSpacing)
	{
		auto __p = pango_attr_letter_spacing_new(letterSpacing);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new baseline displacement attribute.
	 *
	 * Params:
	 *     rise = the amount that the text should be displaced vertically,
	 *         in Pango units. Positive values displace the text upwards.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute riseNew(int rise)
	{
		auto __p = pango_attr_rise_new(rise);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font size scale attribute.
	 *
	 * The base font for the affected text will have
	 * its size multiplied by @scale_factor.
	 *
	 * Params:
	 *     scaleFactor = factor to scale the font
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute scaleNew(double scaleFactor)
	{
		auto __p = pango_attr_scale_new(scaleFactor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font stretch attribute.
	 *
	 * Params:
	 *     stretch = the stretch
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute stretchNew(PangoStretch stretch)
	{
		auto __p = pango_attr_stretch_new(stretch);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new strikethrough color attribute.
	 *
	 * This attribute modifies the color of strikethrough lines.
	 * If not set, strikethrough lines will use the foreground color.
	 *
	 * Params:
	 *     red = the red value (ranging from 0 to 65535)
	 *     green = the green value
	 *     blue = the blue value
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.8
	 */
	public static PgAttribute strikethroughColorNew(ushort red, ushort green, ushort blue)
	{
		auto __p = pango_attr_strikethrough_color_new(red, green, blue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new strike-through attribute.
	 *
	 * Params:
	 *     strikethrough = %TRUE if the text should be struck-through
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute strikethroughNew(bool strikethrough)
	{
		auto __p = pango_attr_strikethrough_new(strikethrough);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font slant style attribute.
	 *
	 * Params:
	 *     style = the slant style
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute styleNew(PangoStyle style)
	{
		auto __p = pango_attr_style_new(style);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Fetches the attribute type name.
	 *
	 * The attribute type name is the string passed in
	 * when registering the type using
	 * [func@Pango.AttrType.register].
	 *
	 * The returned value is an interned string (see
	 * g_intern_string() for what that means) that should
	 * not be modified or freed.
	 *
	 * Params:
	 *     type = an attribute type ID to fetch the name for
	 *
	 * Returns: the type ID name (which
	 *     may be %NULL), or %NULL if @type is a built-in Pango
	 *     attribute type or invalid.
	 *
	 * Since: 1.22
	 */
	public static string typeGetName(PangoAttrType type)
	{
		return Str.toString(pango_attr_type_get_name(type));
	}

	/**
	 * Allocate a new attribute type ID.
	 *
	 * The attribute type name can be accessed later
	 * by using [func@Pango.AttrType.get_name].
	 *
	 * Params:
	 *     name = an identifier for the type
	 *
	 * Returns: the new type ID.
	 */
	public static PangoAttrType typeRegister(string name)
	{
		return pango_attr_type_register(Str.toStringz(name));
	}

	/**
	 * Create a new underline color attribute.
	 *
	 * This attribute modifies the color of underlines.
	 * If not set, underlines will use the foreground color.
	 *
	 * Params:
	 *     red = the red value (ranging from 0 to 65535)
	 *     green = the green value
	 *     blue = the blue value
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 *
	 * Since: 1.8
	 */
	public static PgAttribute underlineColorNew(ushort red, ushort green, ushort blue)
	{
		auto __p = pango_attr_underline_color_new(red, green, blue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new underline-style attribute.
	 *
	 * Params:
	 *     underline = the underline style
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute underlineNew(PangoUnderline underline)
	{
		auto __p = pango_attr_underline_new(underline);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font variant attribute (normal or small caps).
	 *
	 * Params:
	 *     variant = the variant
	 *
	 * Returns: the newly allocated `PangoAttribute`,
	 *     which should be freed with [method@Pango.Attribute.destroy].
	 */
	public static PgAttribute variantNew(PangoVariant variant)
	{
		auto __p = pango_attr_variant_new(variant);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Create a new font weight attribute.
	 *
	 * Params:
	 *     weight = the weight
	 *
	 * Returns: the newly allocated
	 *     `PangoAttribute`, which should be freed with
	 *     [method@Pango.Attribute.destroy]
	 */
	public static PgAttribute weightNew(PangoWeight weight)
	{
		auto __p = pango_attr_weight_new(weight);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p, true);
	}

	/**
	 * Finishes parsing markup.
	 *
	 * After feeding a Pango markup parser some data with [method@GLib.MarkupParseContext.parse],
	 * use this function to get the list of attributes and text out of the
	 * markup. This function will not free @context, use [method@GLib.MarkupParseContext.free]
	 * to do so.
	 *
	 * Params:
	 *     context = A valid parse context that was returned from [func@markup_parser_new]
	 *     attrList = address of return location for a `PangoAttrList`
	 *     text = address of return location for text with tags stripped
	 *     accelChar = address of return location for accelerator char
	 *
	 * Returns: %FALSE if @error is set, otherwise %TRUE
	 *
	 * Since: 1.31.0
	 *
	 * Throws: GException on failure.
	 */
	public static bool markupParserFinish(SimpleXML context, out PgAttributeList attrList, out string text, out dchar accelChar)
	{
		PangoAttrList* outattrList = null;
		char* outtext = null;
		GError* err = null;

		auto __p = pango_markup_parser_finish((context is null) ? null : context.getSimpleXMLStruct(), &outattrList, &outtext, &accelChar, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		attrList = ObjectG.getDObject!(PgAttributeList)(outattrList);
		text = Str.toString(outtext);

		return __p;
	}

	/**
	 * Incrementally parses marked-up text to create a plain-text string
	 * and an attribute list.
	 *
	 * See the [Pango Markup](pango_markup.html) docs for details about the
	 * supported markup.
	 *
	 * If @accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, @accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a %PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in @accel_char,
	 * when calling [func@markup_parser_finish]. Two @accel_marker characters
	 * following each other produce a single literal @accel_marker character.
	 *
	 * To feed markup to the parser, use [method@GLib.MarkupParseContext.parse]
	 * on the returned [struct@GLib.MarkupParseContext]. When done with feeding markup
	 * to the parser, use [func@markup_parser_finish] to get the data out
	 * of it, and then use [method@GLib.MarkupParseContext.free] to free it.
	 *
	 * This function is designed for applications that read Pango markup
	 * from streams. To simply parse a string containing Pango markup,
	 * the [func@Pango.parse_markup] API is recommended instead.
	 *
	 * Params:
	 *     accelMarker = character that precedes an accelerator, or 0 for none
	 *
	 * Returns: a `GMarkupParseContext` that should be
	 *     destroyed with [method@GLib.MarkupParseContext.free].
	 *
	 * Since: 1.31.0
	 */
	public static SimpleXML markupParserNew(dchar accelMarker)
	{
		auto __p = pango_markup_parser_new(accelMarker);

		if(__p is null)
		{
			return null;
		}

		return new SimpleXML(cast(GMarkupParseContext*) __p);
	}

	/**
	 * Parses marked-up text to create a plain-text string and an attribute list.
	 *
	 * See the [Pango Markup](pango_markup.html) docs for details about the
	 * supported markup.
	 *
	 * If @accel_marker is nonzero, the given character will mark the
	 * character following it as an accelerator. For example, @accel_marker
	 * might be an ampersand or underscore. All characters marked
	 * as an accelerator will receive a %PANGO_UNDERLINE_LOW attribute,
	 * and the first character so marked will be returned in @accel_char.
	 * Two @accel_marker characters following each other produce a single
	 * literal @accel_marker character.
	 *
	 * To parse a stream of pango markup incrementally, use [func@markup_parser_new].
	 *
	 * If any error happens, none of the output arguments are touched except
	 * for @error.
	 *
	 * Params:
	 *     markupText = markup to parse (see the [Pango Markup](pango_markup.html) docs)
	 *     length = length of @markup_text, or -1 if nul-terminated
	 *     accelMarker = character that precedes an accelerator, or 0 for none
	 *     attrList = address of return location for a `PangoAttrList`
	 *     text = address of return location for text with tags stripped
	 *     accelChar = address of return location for accelerator char
	 *
	 * Returns: %FALSE if @error is set, otherwise %TRUE
	 *
	 * Throws: GException on failure.
	 */
	public static bool parseMarkup(string markupText, int length, dchar accelMarker, out PgAttributeList attrList, out string text, out dchar accelChar)
	{
		PangoAttrList* outattrList = null;
		char* outtext = null;
		GError* err = null;

		auto __p = pango_parse_markup(Str.toStringz(markupText), length, accelMarker, &outattrList, &outtext, &accelChar, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		attrList = ObjectG.getDObject!(PgAttributeList)(outattrList);
		text = Str.toString(outtext);

		return __p;
	}
}
