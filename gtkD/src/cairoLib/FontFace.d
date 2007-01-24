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
 * inFile  = cairo-cairo-font-face-t.html
 * outPack = cairoLib
 * outFile = FontFace
 * strct   = cairo_font_face_t
 * realStrct=
 * ctorStrct=
 * clss    = FontFace
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_font_face_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module cairoLib.FontFace;

private import cairoLib.cairoLibtypes;

private import lib.cairoLib;


/**
 * Description
 */
public class FontFace
{
	
	/** the main Gtk struct */
	protected cairo_font_face_t* cairo_font_face;
	
	
	public cairo_font_face_t* getFontFaceStruct()
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
	 * Increases the reference count on font_face by one. This prevents
	 * font_face from being destroyed until a matching call to
	 * cairo_font_face_destroy() is made.
	 * font_face:
	 *  a cairo_font_face_t, (may be NULL in which case this
	 * function does nothing).
	 * Returns:
	 *  the referenced cairo_font_face_t.
	 */
	public cairo_font_face_t* reference()
	{
		// cairo_font_face_t* cairo_font_face_reference  (cairo_font_face_t *font_face);
		return cairo_font_face_reference(cairo_font_face);
	}
	
	/**
	 * Decreases the reference count on font_face by one. If the result
	 * is zero, then font_face and all associated resources are freed.
	 * See cairo_font_face_reference().
	 * font_face:
	 *  a cairo_font_face_t
	 */
	public void destroy()
	{
		// void cairo_font_face_destroy (cairo_font_face_t *font_face);
		cairo_font_face_destroy(cairo_font_face);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * font face
	 * font_face:
	 *  a cairo_font_face_t
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS or another error such as
	 *  CAIRO_STATUS_NO_MEMORY.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_font_face_status (cairo_font_face_t *font_face);
		return cairo_font_face_status(cairo_font_face);
	}
	
	/**
	 * Return user data previously attached to font_face using the specified
	 * key. If no user data has been attached with the given key this
	 * function returns NULL.
	 * font_face:
	 *  a cairo_font_face_t
	 * key:
	 *  the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns:
	 *  the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void* cairo_font_face_get_user_data (cairo_font_face_t *font_face,  const cairo_user_data_key_t *key);
		return cairo_font_face_get_user_data(cairo_font_face, key);
	}
	
	/**
	 * Attach user data to font_face. To remove user data from a font face,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * font_face:
	 *  a cairo_font_face_t
	 * key:
	 *  the address of a cairo_user_data_key_t to attach the user data to
	 * user_data:
	 *  the user data to attach to the font face
	 * destroy:
	 *  a cairo_destroy_func_t which will be called when the
	 * font face is destroyed or when new user data is attached using the
	 * same key.
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a
	 * slot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_font_face_set_user_data  (cairo_font_face_t *font_face,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_font_face_set_user_data(cairo_font_face, key, userData, destroy);
	}
	
	
	/**
	 * This function returns the type of the backend used to create
	 * a font face. See cairo_font_type_t for available types.
	 * font_face:
	 *  a cairo_font_face_t
	 * Returns:
	 *  The type of font_face.
	 * Since 1.2
	 */
	public cairo_font_type_t getType()
	{
		// cairo_font_type_t cairo_font_face_get_type (cairo_font_face_t *font_face);
		return cairo_font_face_get_type(cairo_font_face);
	}
}
