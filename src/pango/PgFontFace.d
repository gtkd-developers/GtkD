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
 * outPack = pango
 * outFile = PgFontFace
 * strct   = PangoFontFace
 * realStrct=
 * clss    = PgFontFace
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_font_face_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- pango.PgContext
 * 	- pango.PgItem
 * 	- pango.PgLayout
 * 	- pango.PgFontDescription
 * 	- pango.PgFontMetrics
 * 	- pango.PgFontFamily
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
 * 	- pango.PgScriptIter
 * 	- glib.Str
 * structWrap:
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoAttributeList* -> PgAttributeList
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgFontFace;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgLanguage;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-indepent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontFace
{
	
	/** the main Gtk struct */
	protected PangoFontFace* pangoFontFace;
	
	
	public PangoFontFace* getPgFontFaceStruct()
	{
		return pangoFontFace;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoFontFace;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontFace* pangoFontFace)
	{
		this.pangoFontFace = pangoFontFace;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Gets a name representing the style of this face among the
	 * different faces in the PangoFontFamily for the face. This
	 * name is unique among all faces in the family and is suitable
	 * for displaying to users.
	 * face:
	 *  a PangoFontFace.
	 * Returns:
	 *  the face name for the face. This string is
	 *  owned by the face object and must not be modified or freed.
	 */
	public char[] getFaceName()
	{
		// const char* pango_font_face_get_face_name (PangoFontFace *face);
		return Str.toString(pango_font_face_get_face_name(pangoFontFace) );
	}
	
	/**
	 * List the available sizes for a font. This is only applicable to bitmap
	 * fonts. For scalable fonts, stores NULL at the location pointed to by
	 * sizes and 0 at the location pointed to by n_sizes. The sizes returned
	 * are in Pango units and are sorted in ascending order.
	 * face:
	 *  a PangoFontFace.
	 * sizes:
	 *  location to store a pointer to an array of int. This array
	 *  should be freed with g_free().
	 * n_sizes:
	 *  location to store the number of elements in sizes
	 * Since 1.4
	 */
	public void listSizes(int** sizes, int* nSizes)
	{
		// void pango_font_face_list_sizes (PangoFontFace *face,  int **sizes,  int *n_sizes);
		pango_font_face_list_sizes(pangoFontFace, sizes, nSizes);
	}
	
	/**
	 * Returns the family, style, variant, weight and stretch of
	 * a PangoFontFace. The size field of the resulting font description
	 * will be unset.
	 * face:
	 *  a PangoFontFace
	 * Returns:
	 *  a newly-created PangoFontDescription structure
	 *  holding the description of the face. Use pango_font_description_free()
	 *  to free the result.
	 */
	public PgFontDescription describe()
	{
		// PangoFontDescription* pango_font_face_describe  (PangoFontFace *face);
		return new PgFontDescription( pango_font_face_describe(pangoFontFace) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
