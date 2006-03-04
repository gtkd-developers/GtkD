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
 * outPack = cairoLib
 * outFile = ScaledFont
 * strct   = cairo_scaled_font_t
 * clss    = ScaledFont
 * prefixes:
 * 	- cairo_scaled_font_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module cairoLib.ScaledFont;

private import cairoLib.typedefs;

private import lib.cairoLib;


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
	 * cairo_font_glyph_extents() gets the overall metrics for a string of
	 * glyphs. The X and Y offsets in glyphs are taken from an origin of 0,0.
	 * scaled_font:
	 *  a cairo_scaled_font_t
	 * glyphs:
	 *  an array of glyph IDs with X and Y offsets.
	 * num_glyphs:
	 *  the number of glyphs in the glyphs array
	 * extents:
	 *  a cairo_text_extents_t which to store the retrieved extents.
	 * <<cairo_font_face_t
	 * Font Options>>
	 */
	public void glyphExtents(cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)
	{
		// void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font,  cairo_glyph_t *glyphs,  int num_glyphs,  cairo_text_extents_t *extents);
		cairo_scaled_font_glyph_extents(cairo_scaled_font, glyphs, numGlyphs, extents);
	}
}
