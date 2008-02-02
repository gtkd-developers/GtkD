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
 * outPack = cairo
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
 * omit signals:
 * imports:
 * 	- cairo.FontFace
 * 	- cairo.FontOption
 * 	- cairo.Matrix
 * 	- glib.Str
 * structWrap:
 * 	- cairo_font_face_t* -> FontFace
 * 	- cairo_font_options_t* -> FontOption
 * 	- cairo_matrix_t* -> Matrix
 * 	- cairo_scaled_font_t* -> ScaledFont
 * module aliases:
 * local aliases:
 */

module cairo.ScaledFont;

public  import gtkc.cairotypes;

private import gtkc.cairo;


private import cairo.FontFace;
private import cairo.FontOption;
private import cairo.Matrix;
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
		if(cairo_scaled_font is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null cairo_scaled_font passed to constructor.");
			else return;
		}
		this.cairo_scaled_font = cairo_scaled_font;
	}
	
	/**
	 */
	
	/**
	 * Creates a cairo_scaled_font_t object from a font face and matrices that
	 * describe the size of the font and the environment in which it will
	 * be used.
	 * Params:
	 * fontFace =  a cairo_font_face_t
	 * fontMatrix =  font space to user space transformation matrix for the
	 *  font. In the simplest case of a N point font, this matrix is
	 *  just a scale by N, but it can also be used to shear the font
	 *  or stretch it unequally along the two axes. See
	 *  cairo_set_font_matrix().
	 * ctm =  user to device transformation matrix with which the font will
	 *  be used.
	 * options =  options to use when getting metrics for the font and
	 *  rendering with it.
	 * Returns: a newly created cairo_scaled_font_t. Destroy with cairo_scaled_font_destroy()
	 */
	public static ScaledFont create(FontFace fontFace, Matrix fontMatrix, Matrix ctm, FontOption options)
	{
		// cairo_scaled_font_t* cairo_scaled_font_create (cairo_font_face_t *font_face,  const cairo_matrix_t *font_matrix,  const cairo_matrix_t *ctm,  const cairo_font_options_t *options);
		auto p = cairo_scaled_font_create((fontFace is null) ? null : fontFace.getFontFaceStruct(), (fontMatrix is null) ? null : fontMatrix.getMatrixStruct(), (ctm is null) ? null : ctm.getMatrixStruct(), (options is null) ? null : options.getFontOptionStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ScaledFont(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * Increases the reference count on scaled_font by one. This prevents
	 * scaled_font from being destroyed until a matching call to
	 * cairo_scaled_font_destroy() is made.
	 * The number of references to a cairo_scaled_font_t can be get using
	 * cairo_scaled_font_get_reference_count().
	 * Returns: the referenced cairo_scaled_font_t
	 */
	public ScaledFont reference()
	{
		// cairo_scaled_font_t* cairo_scaled_font_reference (cairo_scaled_font_t *scaled_font);
		auto p = cairo_scaled_font_reference(cairo_scaled_font);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ScaledFont(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * Decreases the reference count on font by one. If the result
	 * is zero, then font and all associated resources are freed.
	 * See cairo_scaled_font_reference().
	 */
	public void destroy()
	{
		// void cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);
		cairo_scaled_font_destroy(cairo_scaled_font);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * scaled_font.
	 * Returns: CAIRO_STATUS_SUCCESS or another error such as CAIRO_STATUS_NO_MEMORY.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_status(cairo_scaled_font);
	}
	
	/**
	 * Gets the metrics for a cairo_scaled_font_t.
	 * Params:
	 * extents =  a cairo_font_extents_t which to store the retrieved extents.
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
	 * Since 1.2
	 * Params:
	 * utf8 =  a string of text, encoded in UTF-8
	 * extents =  a cairo_text_extents_t which to store the retrieved extents.
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
	 * would be advanced by cairo_show_glyphs().
	 * Note that whitespace glyphs do not contribute to the size of the
	 * rectangle (extents.width and extents.height).
	 * Params:
	 * glyphs =  an array of glyph IDs with X and Y offsets.
	 * numGlyphs =  the number of glyphs in the glyphs array
	 * extents =  a cairo_text_extents_t which to store the retrieved extents.
	 */
	public void glyphExtents(cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)
	{
		// void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font,  const cairo_glyph_t *glyphs,  int num_glyphs,  cairo_text_extents_t *extents);
		cairo_scaled_font_glyph_extents(cairo_scaled_font, glyphs, numGlyphs, extents);
	}
	
	/**
	 * Gets the font face that this scaled font was created for.
	 * Since 1.2
	 * Returns: The cairo_font_face_t with which scaled_font wascreated.
	 */
	public FontFace getFontFace()
	{
		// cairo_font_face_t* cairo_scaled_font_get_font_face (cairo_scaled_font_t *scaled_font);
		auto p = cairo_scaled_font_get_font_face(cairo_scaled_font);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new FontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Stores the font options with which scaled_font was created into
	 * options.
	 * Since 1.2
	 * Params:
	 * options =  return value for the font options
	 */
	public void getFontOptions(FontOption options)
	{
		// void cairo_scaled_font_get_font_options (cairo_scaled_font_t *scaled_font,  cairo_font_options_t *options);
		cairo_scaled_font_get_font_options(cairo_scaled_font, (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * Stores the font matrix with which scaled_font was created into
	 * matrix.
	 * Since 1.2
	 * Params:
	 * fontMatrix =  return value for the matrix
	 */
	public void getFontMatrix(Matrix fontMatrix)
	{
		// void cairo_scaled_font_get_font_matrix (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *font_matrix);
		cairo_scaled_font_get_font_matrix(cairo_scaled_font, (fontMatrix is null) ? null : fontMatrix.getMatrixStruct());
	}
	
	/**
	 * Stores the CTM with which scaled_font was created into ctm.
	 * Since 1.2
	 * Params:
	 * ctm =  return value for the CTM
	 */
	public void getCtm(Matrix ctm)
	{
		// void cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *ctm);
		cairo_scaled_font_get_ctm(cairo_scaled_font, (ctm is null) ? null : ctm.getMatrixStruct());
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a scaled font. See cairo_font_type_t for available types.
	 * Since 1.2
	 * Returns: The type of scaled_font.
	 */
	public cairo_font_type_t getType()
	{
		// cairo_font_type_t cairo_scaled_font_get_type (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_get_type(cairo_scaled_font);
	}
	
	/**
	 * Returns the current reference count of scaled_font.
	 * Since 1.4
	 * Returns: the current reference count of scaled_font. If theobject is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_scaled_font_get_reference_count  (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_get_reference_count(cairo_scaled_font);
	}
	
	/**
	 * Attach user data to scaled_font. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.4
	 * Params:
	 * key =  the address of a cairo_user_data_key_t to attach the user data to
	 * userData =  the user data to attach to the cairo_scaled_font_t
	 * destroy =  a cairo_destroy_func_t which will be called when the
	 * cairo_t is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if aslot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_scaled_font_set_user_data (cairo_scaled_font_t *scaled_font,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_scaled_font_set_user_data(cairo_scaled_font, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to scaled_font using the
	 * specified key. If no user data has been attached with the given
	 * key this function returns NULL.
	 * Since 1.4
	 * Params:
	 * key =  the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void* cairo_scaled_font_get_user_data (cairo_scaled_font_t *scaled_font,  const cairo_user_data_key_t *key);
		return cairo_scaled_font_get_user_data(cairo_scaled_font, key);
	}
}
