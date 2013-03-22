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
 * inFile  = cairo-cairo-scaled-font-t.html
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
 * overrides:
 */

module cairo.ScaledFont;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import cairo.FontFace;
private import cairo.FontOption;
private import cairo.Matrix;
private import glib.Str;




/**
 * cairo_scaled_font_t represents a realization of a font face at a particular
 * size and transformation and a certain set of font options.
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
	 * Since 1.0
	 * Params:
	 * fontFace = a cairo_font_face_t
	 * fontMatrix = font space to user space transformation matrix for the
	 * font. In the simplest case of a N point font, this matrix is
	 * just a scale by N, but it can also be used to shear the font
	 * or stretch it unequally along the two axes. See
	 * cairo_set_font_matrix().
	 * ctm = user to device transformation matrix with which the font will
	 * be used.
	 * options = options to use when getting metrics for the font and
	 * rendering with it.
	 * Returns: a newly created cairo_scaled_font_t. Destroy with cairo_scaled_font_destroy()
	 */
	public static ScaledFont create(FontFace fontFace, Matrix fontMatrix, Matrix ctm, FontOption options)
	{
		// cairo_scaled_font_t * cairo_scaled_font_create (cairo_font_face_t *font_face,  const cairo_matrix_t *font_matrix,  const cairo_matrix_t *ctm,  const cairo_font_options_t *options);
		auto p = cairo_scaled_font_create((fontFace is null) ? null : fontFace.getFontFaceStruct(), (fontMatrix is null) ? null : fontMatrix.getMatrixStruct(), (ctm is null) ? null : ctm.getMatrixStruct(), (options is null) ? null : options.getFontOptionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ScaledFont(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * Increases the reference count on scaled_font by one. This prevents
	 * scaled_font from being destroyed until a matching call to
	 * cairo_scaled_font_destroy() is made.
	 * The number of references to a cairo_scaled_font_t can be get using
	 * cairo_scaled_font_get_reference_count().
	 * Since 1.0
	 * Returns: the referenced cairo_scaled_font_t
	 */
	public ScaledFont reference()
	{
		// cairo_scaled_font_t * cairo_scaled_font_reference (cairo_scaled_font_t *scaled_font);
		auto p = cairo_scaled_font_reference(cairo_scaled_font);
		
		if(p is null)
		{
			return null;
		}
		
		return new ScaledFont(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * Decreases the reference count on font by one. If the result
	 * is zero, then font and all associated resources are freed.
	 * See cairo_scaled_font_reference().
	 * Since 1.0
	 */
	public void destroy()
	{
		// void cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);
		cairo_scaled_font_destroy(cairo_scaled_font);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * scaled_font.
	 * Since 1.0
	 * Returns: CAIRO_STATUS_SUCCESS or another error such as CAIRO_STATUS_NO_MEMORY.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);
		return cairo_scaled_font_status(cairo_scaled_font);
	}
	
	/**
	 * Gets the metrics for a cairo_scaled_font_t.
	 * Since 1.0
	 * Params:
	 * extents = a cairo_font_extents_t which to store the retrieved extents.
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
	 * utf8 = a NUL-terminated string of text, encoded in UTF-8
	 * extents = a cairo_text_extents_t which to store the retrieved extents.
	 */
	public void textExtents(string utf8, cairo_text_extents_t* extents)
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
	 * Since 1.0
	 * Params:
	 * glyphs = an array of glyph IDs with X and Y offsets.
	 * numGlyphs = the number of glyphs in the glyphs array
	 * extents = a cairo_text_extents_t which to store the retrieved extents.
	 */
	public void glyphExtents(cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)
	{
		// void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font,  const cairo_glyph_t *glyphs,  int num_glyphs,  cairo_text_extents_t *extents);
		cairo_scaled_font_glyph_extents(cairo_scaled_font, glyphs, numGlyphs, extents);
	}
	
	/**
	 * Converts UTF-8 text to an array of glyphs, optionally with cluster
	 * mapping, that can be used to render later using scaled_font.
	 * If glyphs initially points to a non-NULL value, that array is used
	 * as a glyph buffer, and num_glyphs should point to the number of glyph
	 * entries available there. If the provided glyph array is too short for
	 * the conversion, a new glyph array is allocated using cairo_glyph_allocate()
	 * and placed in glyphs. Upon return, num_glyphs always contains the
	 * number of generated glyphs. If the value glyphs points to has changed
	 * after the call, the user is responsible for freeing the allocated glyph
	 * array using cairo_glyph_free(). This may happen even if the provided
	 * array was large enough.
	 * If clusters is not NULL, num_clusters and cluster_flags should not be NULL,
	 * and cluster mapping will be computed.
	 * The semantics of how cluster array allocation works is similar to the glyph
	 * array. That is,
	 * if clusters initially points to a non-NULL value, that array is used
	 * as a cluster buffer, and num_clusters should point to the number of cluster
	 * entries available there. If the provided cluster array is too short for
	 * the conversion, a new cluster array is allocated using cairo_text_cluster_allocate()
	 * and placed in clusters. Upon return, num_clusters always contains the
	 * number of generated clusters. If the value clusters points at has changed
	 * after the call, the user is responsible for freeing the allocated cluster
	 * array using cairo_text_cluster_free(). This may happen even if the provided
	 * array was large enough.
	 * In the simplest case, glyphs and clusters can point to NULL initially
	 * Since 1.8
	 * Params:
	 * x = X position to place first glyph
	 * y = Y position to place first glyph
	 * utf8 = a string of text encoded in UTF-8
	 * utf8_Len = length of utf8 in bytes, or -1 if it is NUL-terminated
	 * glyphs = pointer to array of glyphs to fill
	 * clusters = pointer to array of cluster mapping information to fill, or NULL
	 * clusterFlags = pointer to location to store cluster flags corresponding to the
	 * output clusters, or NULL
	 * Returns: CAIRO_STATUS_SUCCESS upon success, or an error status if the input values are wrong or if conversion failed. If the input values are correct but the conversion failed, the error status is also set on scaled_font.
	 */
	public cairo_status_t textToGlyphs(double x, double y, string utf8, int utf8_Len, out cairo_glyph_t[] glyphs, out cairo_text_cluster_t[] clusters, out cairo_text_cluster_flags_t clusterFlags)
	{
		// cairo_status_t cairo_scaled_font_text_to_glyphs (cairo_scaled_font_t *scaled_font,  double x,  double y,  const char *utf8,  int utf8_len,  cairo_glyph_t **glyphs,  int *num_glyphs,  cairo_text_cluster_t **clusters,  int *num_clusters,  cairo_text_cluster_flags_t *cluster_flags);
		cairo_glyph_t* outglyphs = null;
		int numGlyphs;
		cairo_text_cluster_t* outclusters = null;
		int numClusters;
		
		auto p = cairo_scaled_font_text_to_glyphs(cairo_scaled_font, x, y, Str.toStringz(utf8), utf8_Len, &outglyphs, &numGlyphs, &outclusters, &numClusters, &clusterFlags);
		
		glyphs = outglyphs[0 .. numGlyphs];
		clusters = outclusters[0 .. numClusters];
		return p;
	}
	
	/**
	 * Gets the font face that this scaled font uses. This might be the
	 * font face passed to cairo_scaled_font_create(), but this does not
	 * hold true for all possible cases.
	 * Since 1.2
	 * Returns: The cairo_font_face_t with which scaled_font was created.
	 */
	public FontFace getFontFace()
	{
		// cairo_font_face_t * cairo_scaled_font_get_font_face (cairo_scaled_font_t *scaled_font);
		auto p = cairo_scaled_font_get_font_face(cairo_scaled_font);
		
		if(p is null)
		{
			return null;
		}
		
		return new FontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Stores the font options with which scaled_font was created into
	 * options.
	 * Since 1.2
	 * Params:
	 * options = return value for the font options
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
	 * fontMatrix = return value for the matrix
	 */
	public void getFontMatrix(Matrix fontMatrix)
	{
		// void cairo_scaled_font_get_font_matrix (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *font_matrix);
		cairo_scaled_font_get_font_matrix(cairo_scaled_font, (fontMatrix is null) ? null : fontMatrix.getMatrixStruct());
	}
	
	/**
	 * Stores the CTM with which scaled_font was created into ctm.
	 * Note that the translation offsets (x0, y0) of the CTM are ignored
	 * by cairo_scaled_font_create(). So, the matrix this
	 * function returns always has 0,0 as x0,y0.
	 * Since 1.2
	 * Params:
	 * ctm = return value for the CTM
	 */
	public void getCtm(Matrix ctm)
	{
		// void cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *ctm);
		cairo_scaled_font_get_ctm(cairo_scaled_font, (ctm is null) ? null : ctm.getMatrixStruct());
	}
	
	/**
	 * Stores the scale matrix of scaled_font into matrix.
	 * The scale matrix is product of the font matrix and the ctm
	 * associated with the scaled font, and hence is the matrix mapping from
	 * font space to device space.
	 * Since 1.8
	 * Params:
	 * scaleMatrix = return value for the matrix
	 */
	public void getScaleMatrix(Matrix scaleMatrix)
	{
		// void cairo_scaled_font_get_scale_matrix (cairo_scaled_font_t *scaled_font,  cairo_matrix_t *scale_matrix);
		cairo_scaled_font_get_scale_matrix(cairo_scaled_font, (scaleMatrix is null) ? null : scaleMatrix.getMatrixStruct());
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a scaled font. See cairo_font_type_t for available types.
	 * However, this function never returns CAIRO_FONT_TYPE_TOY.
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
	 * Returns: the current reference count of scaled_font. If the object is a nil object, 0 will be returned.
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
	 * key = the address of a cairo_user_data_key_t to attach the user data to
	 * userData = the user data to attach to the cairo_scaled_font_t
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * cairo_t is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
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
	 * key = the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void * cairo_scaled_font_get_user_data (cairo_scaled_font_t *scaled_font,  const cairo_user_data_key_t *key);
		return cairo_scaled_font_get_user_data(cairo_scaled_font, key);
	}
}
