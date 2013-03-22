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
 * inFile  = cairo-cairo-font-face-t.html
 * outPack = cairo
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
 * omit signals:
 * imports:
 * structWrap:
 * 	- cairo_font_face_t* -> FontFace
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.FontFace;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;






/**
 * cairo_font_face_t represents a particular font at a particular weight,
 * slant, and other characteristic but no size, transformation, or size.
 *
 * Font faces are created using font-backend-specific
 * constructors, typically of the form
 * cairo_backend_font_face_create(),
 * or implicitly using the toy text API by way of
 * cairo_select_font_face(). The resulting face can be accessed using
 * cairo_get_font_face().
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
	 * The number of references to a cairo_font_face_t can be get using
	 * cairo_font_face_get_reference_count().
	 * Since 1.0
	 * Returns: the referenced cairo_font_face_t.
	 */
	public FontFace reference()
	{
		// cairo_font_face_t * cairo_font_face_reference (cairo_font_face_t *font_face);
		auto p = cairo_font_face_reference(cairo_font_face);
		
		if(p is null)
		{
			return null;
		}
		
		return new FontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Decreases the reference count on font_face by one. If the result
	 * is zero, then font_face and all associated resources are freed.
	 * See cairo_font_face_reference().
	 * Since 1.0
	 */
	public void destroy()
	{
		// void cairo_font_face_destroy (cairo_font_face_t *font_face);
		cairo_font_face_destroy(cairo_font_face);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * font face
	 * Since 1.0
	 * Returns: CAIRO_STATUS_SUCCESS or another error such as CAIRO_STATUS_NO_MEMORY.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_font_face_status (cairo_font_face_t *font_face);
		return cairo_font_face_status(cairo_font_face);
	}
	
	/**
	 * This function returns the type of the backend used to create
	 * a font face. See cairo_font_type_t for available types.
	 * Since 1.2
	 * Returns: The type of font_face.
	 */
	public cairo_font_type_t getType()
	{
		// cairo_font_type_t cairo_font_face_get_type (cairo_font_face_t *font_face);
		return cairo_font_face_get_type(cairo_font_face);
	}
	
	/**
	 * Returns the current reference count of font_face.
	 * Since 1.4
	 * Returns: the current reference count of font_face. If the object is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_font_face_get_reference_count (cairo_font_face_t *font_face);
		return cairo_font_face_get_reference_count(cairo_font_face);
	}
	
	/**
	 * Attach user data to font_face. To remove user data from a font face,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.0
	 * Params:
	 * key = the address of a cairo_user_data_key_t to attach the user data to
	 * userData = the user data to attach to the font face
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * font face is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_font_face_set_user_data (cairo_font_face_t *font_face,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_font_face_set_user_data(cairo_font_face, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to font_face using the specified
	 * key. If no user data has been attached with the given key this
	 * function returns NULL.
	 * Since 1.0
	 * Params:
	 * key = the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void * cairo_font_face_get_user_data (cairo_font_face_t *font_face,  const cairo_user_data_key_t *key);
		return cairo_font_face_get_user_data(cairo_font_face, key);
	}
}
