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
 * inFile  = cairo-User-Fonts.html
 * outPack = cairo
 * outFile = UserFontFace
 * strct   = cairo_font_face_t
 * realStrct=
 * ctorStrct=
 * clss    = UserFontFace
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_user_font_face_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- cairo_font_face_t* -> UserFontFace
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.UserFontFace;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;






/**
 * Description
 * The user-font feature allows the cairo user to provide drawings for glyphs
 * in a font. This is most useful in implementing fonts in non-standard
 * formats, like SVG fonts and Flash fonts, but can also be used by games and
 * other application to draw "funky" fonts.
 */
public class UserFontFace
{
	
	/** the main Gtk struct */
	protected cairo_font_face_t* cairo_font_face;
	
	
	public cairo_font_face_t* getUserFontFaceStruct()
	{
		return cairo_font_face;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_font_face;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_font_face_t* cairo_font_face)
	{
		this.cairo_font_face = cairo_font_face;
	}
	
	/**
	 */
	
	/**
	 * Creates a new user font-face.
	 * Use the setter functions to associate callbacks with the returned
	 * user font. The only mandatory callback is render_glyph.
	 * After the font-face is created, the user can attach arbitrary data
	 * (the actual font data) to it using cairo_font_face_set_user_data()
	 * and access it from the user-font callbacks by using
	 * cairo_scaled_font_get_font_face() followed by
	 * cairo_font_face_get_user_data().
	 * Since 1.8
	 * Returns: a newly created cairo_font_face_t. Free with cairo_font_face_destroy() when you are done using it.
	 */
	public static UserFontFace create()
	{
		// cairo_font_face_t * cairo_user_font_face_create (void);
		auto p = cairo_user_font_face_create();
		
		if(p is null)
		{
			return null;
		}
		
		return new UserFontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Sets the scaled-font initialization function of a user-font.
	 * See cairo_user_scaled_font_init_func_t for details of how the callback
	 * works.
	 * The font-face should not be immutable or a CAIRO_STATUS_USER_FONT_IMMUTABLE
	 * error will occur. A user font-face is immutable as soon as a scaled-font
	 * is created from it.
	 * Since 1.8
	 * Params:
	 * initFunc = The init callback, or NULL
	 */
	public void setInitFunc(cairo_user_scaled_font_init_func_t initFunc)
	{
		// void cairo_user_font_face_set_init_func (cairo_font_face_t *font_face,  cairo_user_scaled_font_init_func_t init_func);
		cairo_user_font_face_set_init_func(cairo_font_face, initFunc);
	}
	
	/**
	 * Gets the scaled-font initialization function of a user-font.
	 * Since 1.8
	 * Returns: The init callback of font_face or NULL if none set or an error has occurred.
	 */
	public cairo_user_scaled_font_init_func_t getInitFunc()
	{
		// cairo_user_scaled_font_init_func_t cairo_user_font_face_get_init_func  (cairo_font_face_t *font_face);
		return cairo_user_font_face_get_init_func(cairo_font_face);
	}
	
	/**
	 * Sets the glyph rendering function of a user-font.
	 * See cairo_user_scaled_font_render_glyph_func_t for details of how the callback
	 * works.
	 * The font-face should not be immutable or a CAIRO_STATUS_USER_FONT_IMMUTABLE
	 * error will occur. A user font-face is immutable as soon as a scaled-font
	 * is created from it.
	 * The render_glyph callback is the only mandatory callback of a user-font.
	 * If the callback is NULL and a glyph is tried to be rendered using
	 * font_face, a CAIRO_STATUS_USER_FONT_ERROR will occur.
	 * Since 1.8
	 * Params:
	 * renderGlyphFunc = The render_glyph callback, or NULL
	 */
	public void setRenderGlyphFunc(cairo_user_scaled_font_render_glyph_func_t renderGlyphFunc)
	{
		// void cairo_user_font_face_set_render_glyph_func  (cairo_font_face_t *font_face,  cairo_user_scaled_font_render_glyph_func_t render_glyph_func);
		cairo_user_font_face_set_render_glyph_func(cairo_font_face, renderGlyphFunc);
	}
	
	/**
	 * Gets the glyph rendering function of a user-font.
	 * Since 1.8
	 * Returns: The render_glyph callback of font_face or NULL if none set or an error has occurred.
	 */
	public cairo_user_scaled_font_render_glyph_func_t getRenderGlyphFunc()
	{
		// cairo_user_scaled_font_render_glyph_func_t cairo_user_font_face_get_render_glyph_func  (cairo_font_face_t *font_face);
		return cairo_user_font_face_get_render_glyph_func(cairo_font_face);
	}
	
	/**
	 * Sets the unicode-to-glyph conversion function of a user-font.
	 * See cairo_user_scaled_font_unicode_to_glyph_func_t for details of how the callback
	 * works.
	 * The font-face should not be immutable or a CAIRO_STATUS_USER_FONT_IMMUTABLE
	 * error will occur. A user font-face is immutable as soon as a scaled-font
	 * is created from it.
	 * Since 1.8
	 * Params:
	 * unicodeToGlyphFunc = The unicode_to_glyph callback, or NULL
	 */
	public void setUnicodeToGlyphFunc(cairo_user_scaled_font_unicode_to_glyph_func_t unicodeToGlyphFunc)
	{
		// void cairo_user_font_face_set_unicode_to_glyph_func  (cairo_font_face_t *font_face,  cairo_user_scaled_font_unicode_to_glyph_func_t unicode_to_glyph_func);
		cairo_user_font_face_set_unicode_to_glyph_func(cairo_font_face, unicodeToGlyphFunc);
	}
	
	/**
	 * Gets the unicode-to-glyph conversion function of a user-font.
	 * Since 1.8
	 * Returns: The unicode_to_glyph callback of font_face or NULL if none set or an error occurred.
	 */
	public cairo_user_scaled_font_unicode_to_glyph_func_t getUnicodeToGlyphFunc()
	{
		// cairo_user_scaled_font_unicode_to_glyph_func_t cairo_user_font_face_get_unicode_to_glyph_func  (cairo_font_face_t *font_face);
		return cairo_user_font_face_get_unicode_to_glyph_func(cairo_font_face);
	}
	
	/**
	 * Sets th text-to-glyphs conversion function of a user-font.
	 * See cairo_user_scaled_font_text_to_glyphs_func_t for details of how the callback
	 * works.
	 * The font-face should not be immutable or a CAIRO_STATUS_USER_FONT_IMMUTABLE
	 * error will occur. A user font-face is immutable as soon as a scaled-font
	 * is created from it.
	 * Since 1.8
	 * Params:
	 * textToGlyphsFunc = The text_to_glyphs callback, or NULL
	 */
	public void setTextToGlyphsFunc(cairo_user_scaled_font_text_to_glyphs_func_t textToGlyphsFunc)
	{
		// void cairo_user_font_face_set_text_to_glyphs_func  (cairo_font_face_t *font_face,  cairo_user_scaled_font_text_to_glyphs_func_t text_to_glyphs_func);
		cairo_user_font_face_set_text_to_glyphs_func(cairo_font_face, textToGlyphsFunc);
	}
	
	/**
	 * Gets the text-to-glyphs conversion function of a user-font.
	 * Since 1.8
	 * Returns: The text_to_glyphs callback of font_face or NULL if none set or an error occurred.
	 */
	public cairo_user_scaled_font_text_to_glyphs_func_t getTextToGlyphsFunc()
	{
		// cairo_user_scaled_font_text_to_glyphs_func_t cairo_user_font_face_get_text_to_glyphs_func  (cairo_font_face_t *font_face);
		return cairo_user_font_face_get_text_to_glyphs_func(cairo_font_face);
	}
}
