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
 * inFile  = cairo-Scaled-Fonts.html
 * outPack = cairoLib
 * outFile = ScaledFont
 * strct   = cairo_scaled_font_t
 * realStrct=
 * ctorStrct=
 * clss    = ScaledFont
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_scaled_font_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module cairoLib.ScaledFont;

private import gtkc.cairoLibtypes;

private import gtkc.cairoLib;


private import glib.Str;




/**
 * Description
 */
public class ScaledFont
{
	
	/** the main Gtk struct */
	protected cairo_scaled_font_t* cairo_scaled_font;
	
	
	public cairo_scaled_font_t* getScaledFontStruct()
	{
		return cairo_scaled_font;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_scaled_font;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_scaled_font_t* cairo_scaled_font)
	{
		assert(cairo_scaled_font !is null, "struct cairo_scaled_font is null on constructor");
		this.cairo_scaled_font = cairo_scaled_font;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a cairo_scaled_font_t object from a font face and matrices that
	 * describe the size of the font and the environment in which it will
	 * be used.
	 * font_face:
	 *  a cairo_font_face_t
	 * font_matrix:
	 *  font space to user space transformation matrix for the
	 *  font. In the simplest case of a N point font, this matrix is
	 *  just a scale by N, but it can also be used to shear the font
	 *  or stretch it unequally along the two axes. See
	 *  cairo_set_font_matrix().
	 * ctm:
	 *  user to device transformation matrix with which the font will
	 *  be used.
	 * options:
	 *  options to use when getting metrics for the font and
	 *  rendering with it.
	 * Returns:
	 *  a newly created cairo_scaled_font_t. Destroy with
	 *  cairo_scaled_font_destroy()
	 */
	public static cairo_scaled_font_t* create(cairo_font_face_t* fontFace, cairo_matrix_t* fontMatrix, cairo_matrix_t* ctm, cairo_font_options_t* options)
	{
		// cairo_scaled_font_t* cairo_scaled_font_create  (cairo_font_face_t *font_face,  const cairo_matrix_t *font_matrix,  const cairo_matrix_t *ctm,  const cairo_font_options_t *options);
		return cairo_scaled_font_create(fontFace, fontMatrix, ctm, options);
	}
	
	/**
	 * Increases the reference count on scaled_font by one. This prevents
	 * scaled_font from being destroyed until a matching call to
	 * cairo_scaled_font_destroy() is made.
	 * scaled_font:
	 *  a cairo_scaled_font_t, (may be NULL in which case
	 * this function does nothing)
	 * Returns:
	 *  the referenced cairo_scaled_font_t
	 */
	public cairo_scaled_font_t* reference()
	{
		// cairo_scaled_font_t* cairo_scaled_font_reference  (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_reference(cairo_scaled_font);
	}
	
	/**
	 * Decreases the reference count on font by one. If the result
	 * is zero, then font and all associated resources are freed.
	 * See cairo_scaled_font_reference().
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 */
	public void destroy()
	{
		// void cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);
		cairo_scaled_font_destroy(cairo_scaled_font);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * scaled_font.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS or another error such as
	 *  CAIRO_STATUS_NO_MEMORY.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_status(cairo_scaled_font);
	}
	
	
	/**
	 * Gets the metrics for a cairo_scaled_font_t.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * extents:
	 *  a cairo_font_extents_t which to store the retrieved extents.
	 */
	public void extents(cairo_font_extents_t* extents)
	{
		// void cairo_scaled_font_extents (cairo_scaled_font_t *scaled_font,  cairo_font_extents_t *extents);
		cairo_scaled_font_extents(cairo_scaled_font, extents);
	}
	
	
	/**
	 * Gets the extents for a string of text. The extents describe a
	 * user-space rectangle that encloses the "inked" portion of the text
	 * drawn at the origin (0,0) (as it would be drawn by cairo_show_text()
	 * if the cairo graphics state were set to the same font_face,
	 * font_matrix, ctm, and font_options as scaled_font). Additionally,
	 * the x_advance and y_advance values indicate the amount by which the
	 * current point would be advanced by cairo_show_text().
	 * Note that whitespace characters do not directly contribute to the
	 * size of the rectangle (extents.width and extents.height). They do
	 * contribute indirectly by changing the position of non-whitespace
	 * characters. In particular, trailing whitespace characters are
	 * likely to not affect the size of the rectangle, though they will
	 * affect the x_advance and y_advance values.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * utf8:
	 *  a string of text, encoded in UTF-8
	 * extents:
	 *  a cairo_text_extents_t which to store the retrieved extents.
	 * Since 1.2
	 */
	public void textExtents(char[] utf8, cairo_text_extents_t* extents)
	{
		// void cairo_scaled_font_text_extents (cairo_scaled_font_t *scaled_font,  const char *utf8,  cairo_text_extents_t *extents);
		cairo_scaled_font_text_extents(cairo_scaled_font, Str.toStringz(utf8), extents);
	}
	
	/**
	 * Gets the extents for an array of glyphs. The extents describe a
	 * user-space rectangle that encloses the "inked" portion of the
	 * glyphs, (as they would be drawn by cairo_show_glyphs() if the cairo
	 * graphics state were set to the same font_face, font_matrix, ctm,
	 * and font_options as scaled_font). Additionally, the x_advance and
	 * y_advance values indicate the amount by which the current point
	 * would be advanced by cairo_show_glyphs.
	 * Note that whitespace glyphs do not contribute to the size of the
	 * rectangle (extents.width and extents.height).
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * glyphs:
	 *  an array of glyph IDs with X and Y offsets.
	 * num_glyphs:
	 *  the number of glyphs in the glyphs array
	 * extents:
	 *  a cairo_text_extents_t which to store the retrieved extents.
	 */
	public void glyphExtents(cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)
	{
		// void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font,  cairo_glyph_t *glyphs,  int num_glyphs,  cairo_text_extents_t *extents);
		cairo_scaled_font_glyph_extents(cairo_scaled_font, glyphs, numGlyphs, extents);
	}
	
	/**
	 * Gets the font face that this scaled font was created for.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * Returns:
	 *  The cairo_font_face_t with which scaled_font was
	 * created.
	 * Since 1.2
	 */
	public cairo_font_face_t* getFontFace()
	{
		// cairo_font_face_t* cairo_scaled_font_get_font_face  (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_get_font_face(cairo_scaled_font);
	}
	
	/**
	 * Stores the font options with which scaled_font was created into
	 * options.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * options:
	 *  return value for the font options
	 * Since 1.2
	 */
	public void getFontOptions(cairo_font_options_t* options)
	{
		// void cairo_scaled_font_get_font_options  (cairo_scaled_font_t *scaled_font,  cairo_font_options_t *options);
		cairo_scaled_font_get_font_options(cairo_scaled_font, options);
	}
	
	/**
	 * Stores the font matrix with which scaled_font was created into
	 * matrix.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * font_matrix:
	 *  return value for the matrix
	 * Since 1.2
	 */
	public void getFontMatrix(cairo_matrix_t* fontMatrix)
	{
		// void cairo_scaled_font_get_font_matrix  (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *font_matrix);
		cairo_scaled_font_get_font_matrix(cairo_scaled_font, fontMatrix);
	}
	
	/**
	 * Stores the CTM with which scaled_font was created into ctm.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * ctm:
	 *  return value for the CTM
	 * Since 1.2
	 */
	public void getCtm(cairo_matrix_t* ctm)
	{
		// void cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *ctm);
		cairo_scaled_font_get_ctm(cairo_scaled_font, ctm);
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a scaled font. See cairo_font_type_t for available types.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * Returns:
	 *  The type of scaled_font.
	 * Since 1.2
	 */
	public cairo_font_type_t getType()
	{
		// cairo_font_type_t cairo_scaled_font_get_type  (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_get_type(cairo_scaled_font);
	}
}
