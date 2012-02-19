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
 * inFile  = gdk-Fonts.html
 * outPack = gdk
 * outFile = Font
 * strct   = GdkFont
 * realStrct=
 * ctorStrct=
 * clss    = Font
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_font_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * 	- pango.PgFontDescription
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkFont* -> Font
 * 	- PangoFontDescription* -> PgFontDescription
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Font;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Display;
private import pango.PgFontDescription;




/**
 * Description
 * The GdkFont data type represents a font for drawing on
 * the screen. These functions provide support for
 * loading fonts, and also for determining the dimensions
 * of characters and strings when drawn with a particular
 * font.
 * Fonts in X are specified by a
 * X Logical Font Description.
 * The following description is considerably simplified.
 * For definitive information about XLFD's see the
 * X reference documentation. A X Logical Font Description (XLFD)
 * consists of a sequence of fields separated (and surrounded by) '-'
 * characters. For example, Adobe Helvetica Bold 12 pt, has the
 * full description:
 * $(DDOC_COMMENT example)
 * The fields in the XLFD are:
 * Foundry
 * the company or organization where the font originated.
 * Family
 * the font family (a group of related font designs).
 * Weight
 * A name for the font's typographic weight
 * For example, 'bold' or 'medium').
 * Slant
 * The slant of the font. Common values are 'R' for Roman,
 * 'I' for italoc, and 'O' for oblique.
 * Set Width
 * A name for the width of the font. For example,
 * 'normal' or 'condensed'.
 * Add Style
 * Additional information to distinguish a font from
 * other fonts of the same family.
 * Pixel Size
 * The body size of the font in pixels.
 * Point Size
 * The body size of the font in 10ths of a point.
 * (A point is 1/72.27 inch)
 * Resolution X
 * The horizontal resolution that the font was designed for.
 * Resolution Y
 * The vertical resolution that the font was designed for .
 * Spacing
 * The type of spacing for the font - can be 'p' for proportional,
 * 'm' for monospaced or 'c' for charcell.
 * Average Width
 * The average width of a glyph in the font. For monospaced
 * and charcell fonts, all glyphs in the font have this width
 * Charset Registry
 * The registration authority that owns the encoding for
 * the font. Together with the Charset Encoding field, this
 * defines the character set for the font.
 * Charset Encoding
 * An identifier for the particular character set encoding.
 * When specifying a font via a X logical Font Description,
 * '*' can be used as a wildcard to match any portion of
 * the XLFD. For instance, the above example could
 * also be specified as
 * $(DDOC_COMMENT example)
 * It is generally a good idea to use wildcards for any
 * portion of the XLFD that your program does not care
 * about specifically, since that will improve the
 * chances of finding a matching font.
 * A fontset is a list of fonts
 * that is used for drawing international text that may
 * contain characters from a number of different character
 * sets. It is represented by a list of XLFD's.
 * The font for a given character set is determined by going
 * through the list of XLFD's in order. For each one, if
 * the registry and and encoding fields match the desired
 * character set, then that font is used, otherwise if
 * the XLFD contains wild-cards for the registry and encoding
 * fields, the registry and encoding for the desired character
 * set are substituted in and a lookup is done. If a match is found
 * that font is used. Otherwise, processing continues
 * on to the next font in the list.
 * The functions for determining the metrics of a string
 * come in several varieties that can take a number
 * of forms of string input:
 * 8-bit string
 *  When using functions like gdk_string_width() that
 *  take a gchar *, if the font is of type
 *  GDK_FONT_FONT and is an 8-bit font, then each
 *  gchar indexes the glyphs in the font directly.
 * 16-bit string
 *  For functions taking a gchar *, if the
 *  font is of type GDK_FONT_FONT, and is a 16-bit
 *  font, then the gchar * argument is
 *  interpreted as a guint16 * cast to
 *  a gchar * and each guint16
 *  indexes the glyphs in the font directly.
 * Multibyte string
 *  For functions taking a gchar *, if the
 *  font is of type GDK_FONT_FONTSET, then the input
 *  string is interpreted as a multibyte
 *  encoded according to the current locale. (A multibyte
 *  string is one in which each character may consist
 *  of one or more bytes, with different lengths for different
 *  characters in the string). They can be converted to and
 *  from wide character strings (see below) using
 *  gdk_wcstombs() and gdk_mbstowcs().) The string will
 *  be rendered using one or more different fonts from
 *  the fontset.
 * Wide character string
 *  For a number of the text-measuring functions, GDK
 *  provides a variant (such as gdk_text_width_wc()) which
 *  takes a GdkWChar * instead of a
 *  gchar *. The input is then taken to
 *  be a wide character string in the encoding of the
 *  current locale. (A wide character string is a string
 *  in which each character consists of several bytes,
 *  and the width of each character in the string is
 *  constant.)
 * GDK provides functions to determine a number of different
 * measurements (metrics) for a given string. (Need diagram
 * here).
 * ascent
 *  The vertical distance from the origin of the drawing
 *  opereration to the top of the drawn character.
 * descent
 *  The vertical distance from the origin of the drawing
 *  opereration to the bottom of the drawn character.
 * left bearing
 *  The horizontal distance from the origin of the drawing
 *  operation to the left-most part of the drawn character.
 * right bearing
 *  The horizontal distance from the origin of the drawing
 *  operation to the right-most part of the drawn character.
 * width bearing
 *  The horizontal distance from the origin of the drawing
 *  operation to the correct origin for drawing another
 *  string to follow the current one. Depending on the
 *  font, this could be greater than or less than the
 *  right bearing.
 */
public class Font
{
	
	/** the main Gtk struct */
	protected GdkFont* gdkFont;
	
	
	public GdkFont* getFontStruct()
	{
		return gdkFont;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkFont;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkFont* gdkFont)
	{
		if(gdkFont is null)
		{
			this = null;
			return;
		}
		this.gdkFont = gdkFont;
	}
	
	/**
	 * Create and loads a font
	 */
	public this(string fontName)
	{
		this(gdk_font_load(Str.toStringz(fontName)));
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_font_load is deprecated and should not be used in newly-written code.
	 * Loads a font.
	 * The font may be newly loaded or looked up the font in a cache.
	 * You should make no assumptions about the initial reference count.
	 * Params:
	 * fontName = a XLFD describing the font to load.
	 * Returns: a GdkFont, or NULL if the font could not be loaded.
	 */
	public static Font load(string fontName)
	{
		// GdkFont* gdk_font_load (const gchar *font_name);
		auto p = gdk_font_load(Str.toStringz(fontName));
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_load_for_display is deprecated and should not be used in newly-written code.
	 * Loads a font for use on display.
	 * The font may be newly loaded or looked up the font in a cache.
	 * You should make no assumptions about the initial reference count.
	 * Since 2.2
	 * Params:
	 * display = a GdkDisplay
	 * fontName = a XLFD describing the font to load.
	 * Returns: a GdkFont, or NULL if the font could not be loaded.
	 */
	public static Font loadForDisplay(Display display, string fontName)
	{
		// GdkFont * gdk_font_load_for_display (GdkDisplay *display,  const gchar *font_name);
		auto p = gdk_font_load_for_display((display is null) ? null : display.getDisplayStruct(), Str.toStringz(fontName));
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_fontset_load is deprecated and should not be used in newly-written code.
	 * Loads a fontset.
	 * The fontset may be newly loaded or looked up in a cache.
	 * You should make no assumptions about the initial reference count.
	 * Params:
	 * fontsetName = a comma-separated list of XLFDs describing
	 *  the component fonts of the fontset to load.
	 * Returns: a GdkFont, or NULL if the fontset could not be loaded.
	 */
	public static Font fontsetLoad(string fontsetName)
	{
		// GdkFont* gdk_fontset_load (const gchar *fontset_name);
		auto p = gdk_fontset_load(Str.toStringz(fontsetName));
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_fontset_load_for_display is deprecated and should not be used in newly-written code.
	 * Loads a fontset for use on display.
	 * The fontset may be newly loaded or looked up in a cache.
	 * You should make no assumptions about the initial reference count.
	 * Since 2.2
	 * Params:
	 * display = a GdkDisplay
	 * fontsetName = a comma-separated list of XLFDs describing
	 *  the component fonts of the fontset to load.
	 * Returns: a GdkFont, or NULL if the fontset could not be loaded.
	 */
	public static Font fontsetLoadForDisplay(Display display, string fontsetName)
	{
		// GdkFont * gdk_fontset_load_for_display (GdkDisplay *display,  const gchar *fontset_name);
		auto p = gdk_fontset_load_for_display((display is null) ? null : display.getDisplayStruct(), Str.toStringz(fontsetName));
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_from_description is deprecated and should not be used in newly-written code.
	 * Load a GdkFont based on a Pango font description. This font will
	 * only be an approximation of the Pango font, and
	 * internationalization will not be handled correctly. This function
	 * should only be used for legacy code that cannot be easily converted
	 * to use Pango. Using Pango directly will produce better results.
	 * Params:
	 * fontDesc = a PangoFontDescription.
	 * Returns: the newly loaded font, or NULL if the font cannot be loaded.
	 */
	public static Font fromDescription(PgFontDescription fontDesc)
	{
		// GdkFont* gdk_font_from_description (PangoFontDescription *font_desc);
		auto p = gdk_font_from_description((fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_from_description_for_display is deprecated and should not be used in newly-written code.
	 * Loads a GdkFont based on a Pango font description for use on display.
	 * This font will only be an approximation of the Pango font, and
	 * internationalization will not be handled correctly. This function
	 * should only be used for legacy code that cannot be easily converted
	 * to use Pango. Using Pango directly will produce better results.
	 * Since 2.2
	 * Params:
	 * display = a GdkDisplay
	 * fontDesc = a PangoFontDescription.
	 * Returns: the newly loaded font, or NULL if the font cannot be loaded.
	 */
	public static Font fromDescriptionForDisplay(Display display, PgFontDescription fontDesc)
	{
		// GdkFont * gdk_font_from_description_for_display  (GdkDisplay *display,  PangoFontDescription *font_desc);
		auto p = gdk_font_from_description_for_display((display is null) ? null : display.getDisplayStruct(), (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_get_display is deprecated and should not be used in newly-written code.
	 * Returns the GdkDisplay for font.
	 * Since 2.2
	 * Returns: the corresponding GdkDisplay.
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gdk_font_get_display (GdkFont *font);
		auto p = gdk_font_get_display(gdkFont);
		if(p is null)
		{
			return null;
		}
		return new Display(cast(GdkDisplay*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_ref is deprecated and should not be used in newly-written code.
	 * Increases the reference count of a font by one.
	 * Returns: font
	 */
	public Font doref()
	{
		// GdkFont* gdk_font_ref (GdkFont *font);
		auto p = gdk_font_ref(gdkFont);
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gdk_font_unref is deprecated and should not be used in newly-written code.
	 * Decreases the reference count of a font by one.
	 * If the result is zero, destroys the font.
	 */
	public void unref()
	{
		// void gdk_font_unref (GdkFont *font);
		gdk_font_unref(gdkFont);
	}
	
	/**
	 * Warning
	 * gdk_font_id is deprecated and should not be used in newly-written code.
	 * Returns the X Font ID for the given font.
	 * Returns: the numeric X Font ID
	 */
	public int id()
	{
		// gint gdk_font_id (const GdkFont *font);
		return gdk_font_id(gdkFont);
	}
	
	/**
	 * Warning
	 * gdk_font_equal is deprecated and should not be used in newly-written code.
	 * Compares two fonts for equality. Single fonts compare equal
	 * if they have the same X font ID. This operation does
	 * not currently work correctly for fontsets.
	 * Params:
	 * fontb = another GdkFont.
	 * Returns: TRUE if the fonts are equal.
	 */
	public int equal(Font fontb)
	{
		// gboolean gdk_font_equal (const GdkFont *fonta,  const GdkFont *fontb);
		return gdk_font_equal(gdkFont, (fontb is null) ? null : fontb.getFontStruct());
	}
	
	/**
	 * Warning
	 * gdk_string_extents is deprecated and should not be used in newly-written code.
	 * Gets the metrics of a nul-terminated string.
	 * Params:
	 * string = the nul-terminated string to measure.
	 * lbearing = the left bearing of the string.
	 * rbearing = the right bearing of the string.
	 * width = the width of the string.
	 * ascent = the ascent of the string.
	 * descent = the descent of the string.
	 */
	public void stringExtents(string string, out int lbearing, out int rbearing, out int width, out int ascent, out int descent)
	{
		// void gdk_string_extents (GdkFont *font,  const gchar *string,  gint *lbearing,  gint *rbearing,  gint *width,  gint *ascent,  gint *descent);
		gdk_string_extents(gdkFont, Str.toStringz(string), &lbearing, &rbearing, &width, &ascent, &descent);
	}
	
	/**
	 * Warning
	 * gdk_text_extents is deprecated and should not be used in newly-written code.
	 * Gets the metrics of a string.
	 * Params:
	 * text = the text to measure
	 * textLength = the length of the text in bytes. (If the
	 *  font is a 16-bit font, this is twice the length
	 *  of the text in characters.)
	 * lbearing = the left bearing of the string.
	 * rbearing = the right bearing of the string.
	 * width = the width of the string.
	 * ascent = the ascent of the string.
	 * descent = the descent of the string.
	 */
	public void textExtents(string text, int textLength, out int lbearing, out int rbearing, out int width, out int ascent, out int descent)
	{
		// void gdk_text_extents (GdkFont *font,  const gchar *text,  gint text_length,  gint *lbearing,  gint *rbearing,  gint *width,  gint *ascent,  gint *descent);
		gdk_text_extents(gdkFont, Str.toStringz(text), textLength, &lbearing, &rbearing, &width, &ascent, &descent);
	}
	
	/**
	 * Warning
	 * gdk_text_extents_wc is deprecated and should not be used in newly-written code.
	 * Gets the metrics of a string of wide characters.
	 * Params:
	 * text = the text to measure.
	 * lbearing = the left bearing of the string.
	 * rbearing = the right bearing of the string.
	 * width = the width of the string.
	 * ascent = the ascent of the string.
	 * descent = the descent of the string.
	 */
	public void textExtentsWc(GdkWChar[] text, out int lbearing, out int rbearing, out int width, out int ascent, out int descent)
	{
		// void gdk_text_extents_wc (GdkFont *font,  const GdkWChar *text,  gint text_length,  gint *lbearing,  gint *rbearing,  gint *width,  gint *ascent,  gint *descent);
		gdk_text_extents_wc(gdkFont, text.ptr, cast(int) text.length, &lbearing, &rbearing, &width, &ascent, &descent);
	}
	
	/**
	 * Warning
	 * gdk_string_width is deprecated and should not be used in newly-written code.
	 * Determines the width of a nul-terminated string.
	 * (The distance from the origin of the string to the
	 * point where the next string in a sequence of strings
	 * should be drawn)
	 * Params:
	 * string = the nul-terminated string to measure
	 * Returns: the width of the string in pixels.
	 */
	public int stringWidth(string string)
	{
		// gint gdk_string_width (GdkFont *font,  const gchar *string);
		return gdk_string_width(gdkFont, Str.toStringz(string));
	}
	
	/**
	 * Warning
	 * gdk_text_width is deprecated and should not be used in newly-written code.
	 * Determines the width of a given string.
	 * Params:
	 * text = the text to measure.
	 * textLength = the length of the text in bytes.
	 * Returns: the width of the string in pixels.
	 */
	public int textWidth(string text, int textLength)
	{
		// gint gdk_text_width (GdkFont *font,  const gchar *text,  gint text_length);
		return gdk_text_width(gdkFont, Str.toStringz(text), textLength);
	}
	
	/**
	 * Warning
	 * gdk_text_width_wc is deprecated and should not be used in newly-written code.
	 * Determines the width of a given wide-character string.
	 * Params:
	 * text = the text to measure.
	 * Returns: the width of the string in pixels.
	 */
	public int textWidthWc(GdkWChar[] text)
	{
		// gint gdk_text_width_wc (GdkFont *font,  const GdkWChar *text,  gint text_length);
		return gdk_text_width_wc(gdkFont, text.ptr, cast(int) text.length);
	}
	
	/**
	 * Warning
	 * gdk_char_width has been deprecated since version 2.2 and should not be used in newly-written code. Use gdk_text_extents() instead.
	 * Determines the width of a given character.
	 * Params:
	 * character = the character to measure.
	 * Returns: the width of the character in pixels.
	 */
	public int charWidth(char character)
	{
		// gint gdk_char_width (GdkFont *font,  gchar character);
		return gdk_char_width(gdkFont, character);
	}
	
	/**
	 * Warning
	 * gdk_char_width_wc is deprecated and should not be used in newly-written code.
	 * Determines the width of a given wide character. (Encoded
	 * in the wide-character encoding of the current locale).
	 * Params:
	 * character = the character to measure.
	 * Returns: the width of the character in pixels.
	 */
	public int charWidthWc(GdkWChar character)
	{
		// gint gdk_char_width_wc (GdkFont *font,  GdkWChar character);
		return gdk_char_width_wc(gdkFont, character);
	}
	
	/**
	 * Warning
	 * gdk_string_measure is deprecated and should not be used in newly-written code.
	 * Determines the distance from the origin to the rightmost
	 * portion of a nul-terminated string when drawn. This is not the
	 * correct value for determining the origin of the next
	 * portion when drawing text in multiple pieces.
	 * See gdk_string_width().
	 * Params:
	 * string = the nul-terminated string to measure.
	 * Returns: the right bearing of the string in pixels.
	 */
	public int stringMeasure(string string)
	{
		// gint gdk_string_measure (GdkFont *font,  const gchar *string);
		return gdk_string_measure(gdkFont, Str.toStringz(string));
	}
	
	/**
	 * Warning
	 * gdk_text_measure is deprecated and should not be used in newly-written code.
	 * Determines the distance from the origin to the rightmost
	 * portion of a string when drawn. This is not the
	 * correct value for determining the origin of the next
	 * portion when drawing text in multiple pieces.
	 * See gdk_text_width().
	 * Params:
	 * text = the text to measure.
	 * textLength = the length of the text in bytes.
	 * Returns: the right bearing of the string in pixels.
	 */
	public int textMeasure(string text, int textLength)
	{
		// gint gdk_text_measure (GdkFont *font,  const gchar *text,  gint text_length);
		return gdk_text_measure(gdkFont, Str.toStringz(text), textLength);
	}
	
	/**
	 * Warning
	 * gdk_char_measure is deprecated and should not be used in newly-written code.
	 * Determines the distance from the origin to the rightmost
	 * portion of a character when drawn. This is not the
	 * correct value for determining the origin of the next
	 * portion when drawing text in multiple pieces.
	 * Params:
	 * character = the character to measure.
	 * Returns: the right bearing of the character in pixels.
	 */
	public int charMeasure(char character)
	{
		// gint gdk_char_measure (GdkFont *font,  gchar character);
		return gdk_char_measure(gdkFont, character);
	}
	
	/**
	 * Warning
	 * gdk_string_height is deprecated and should not be used in newly-written code.
	 * Determines the total height of a given nul-terminated
	 * string. This value is not generally useful, because you
	 * cannot determine how this total height will be drawn in
	 * relation to the baseline. See gdk_string_extents().
	 * Params:
	 * string = the nul-terminated string to measure.
	 * Returns: the height of the string in pixels.
	 */
	public int stringHeight(string string)
	{
		// gint gdk_string_height (GdkFont *font,  const gchar *string);
		return gdk_string_height(gdkFont, Str.toStringz(string));
	}
	
	/**
	 * Warning
	 * gdk_text_height is deprecated and should not be used in newly-written code.
	 * Determines the total height of a given string.
	 * This value is not generally useful, because you cannot
	 * determine how this total height will be drawn in
	 * relation to the baseline. See gdk_text_extents().
	 * Params:
	 * text = the text to measure.
	 * textLength = the length of the text in bytes.
	 * Returns: the height of the string in pixels.
	 */
	public int textHeight(string text, int textLength)
	{
		// gint gdk_text_height (GdkFont *font,  const gchar *text,  gint text_length);
		return gdk_text_height(gdkFont, Str.toStringz(text), textLength);
	}
	
	/**
	 * Warning
	 * gdk_char_height has been deprecated since version 2.2 and should not be used in newly-written code. Use gdk_text_extents() instead.
	 * Determines the total height of a given character.
	 * This value is not generally useful, because you cannot
	 * determine how this total height will be drawn in
	 * relation to the baseline. See gdk_text_extents().
	 * Params:
	 * character = the character to measure.
	 * Returns: the height of the character in pixels.
	 */
	public int charHeight(char character)
	{
		// gint gdk_char_height (GdkFont *font,  gchar character);
		return gdk_char_height(gdkFont, character);
	}
	
	/**
	 * Warning
	 * gdk_wcstombs is deprecated and should not be used in newly-written code.
	 * Converts a wide character string to a multi-byte string.
	 * (The function name comes from an acronym of 'Wide Character String TO
	 * Multi-Byte String').
	 * Params:
	 * src = a wide character string.
	 * Returns: the multi-byte string corresponding to src, or NULL if the conversion failed. The returned string should be freed with g_free() when no longer needed.
	 */
	public static string wcstombs(GdkWChar* src)
	{
		// gchar * gdk_wcstombs (const GdkWChar *src);
		return Str.toString(gdk_wcstombs(src));
	}
	
	/**
	 * Warning
	 * gdk_mbstowcs is deprecated and should not be used in newly-written code.
	 * Converts a multi-byte string to a wide character string.
	 * (The function name comes from an acronym of 'Multi-Byte String TO Wide
	 * Character String').
	 * Params:
	 * dest = the space to place the converted wide character string into.
	 * src = the multi-byte string to convert, which must be nul-terminated.
	 * destMax = the maximum number of wide characters to place in dest.
	 * Returns: the number of wide characters written into dest, or -1 if the conversion failed.
	 */
	public static int mbstowcs(GdkWChar* dest, string src, int destMax)
	{
		// gint gdk_mbstowcs (GdkWChar *dest,  const gchar *src,  gint dest_max);
		return gdk_mbstowcs(dest, Str.toStringz(src), destMax);
	}
}
