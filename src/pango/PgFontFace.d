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
 * inFile  = 
 * outPack = pango
 * outFile = PgFontFace
 * strct   = PangoFontFace
 * realStrct=
 * ctorStrct=
 * clss    = PgFontFace
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- pango_font_face_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgFontDescription
 * structWrap:
 * 	- PangoFontDescription* -> PgFontDescription
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFontFace;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgFontDescription;



private import gobject.ObjectG;

/**
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontFace : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoFontFace* pangoFontFace;
	
	
	public PangoFontFace* getPgFontFaceStruct()
	{
		return pangoFontFace;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontFace;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontFace* pangoFontFace)
	{
		super(cast(GObject*)pangoFontFace);
		this.pangoFontFace = pangoFontFace;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoFontFace = cast(PangoFontFace*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets a name representing the style of this face among the
	 * different faces in the PangoFontFamily for the face. This
	 * name is unique among all faces in the family and is suitable
	 * for displaying to users.
	 * Returns: the face name for the face. This string is owned by the face object and must not be modified or freed.
	 */
	public string getFaceName()
	{
		// const char * pango_font_face_get_face_name (PangoFontFace *face);
		return Str.toString(pango_font_face_get_face_name(pangoFontFace));
	}
	
	/**
	 * List the available sizes for a font. This is only applicable to bitmap
	 * fonts. For scalable fonts, stores NULL at the location pointed to by
	 * sizes and 0 at the location pointed to by n_sizes. The sizes returned
	 * are in Pango units and are sorted in ascending order.
	 * Since 1.4
	 * Params:
	 * sizes = location to store a pointer
	 * to an array of int. This array should be freed with
	 * g_free(). [out][array length=n_sizes]
	 */
	public void listSizes(out int[] sizes)
	{
		// void pango_font_face_list_sizes (PangoFontFace *face,  int **sizes,  int *n_sizes);
		int* outsizes = null;
		int nSizes;
		
		pango_font_face_list_sizes(pangoFontFace, &outsizes, &nSizes);
		
		sizes = outsizes[0 .. nSizes];
	}
	
	/**
	 * Returns the family, style, variant, weight and stretch of
	 * a PangoFontFace. The size field of the resulting font description
	 * will be unset.
	 * Returns: a newly-created PangoFontDescription structure holding the description of the face. Use pango_font_description_free() to free the result.
	 */
	public PgFontDescription describe()
	{
		// PangoFontDescription * pango_font_face_describe (PangoFontFace *face);
		auto p = pango_font_face_describe(pangoFontFace);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Returns whether a PangoFontFace is synthesized by the underlying
	 * font rendering engine from another face, perhaps by shearing, emboldening,
	 * or lightening it.
	 * Since 1.18
	 * Returns: whether face is synthesized.
	 */
	public int isSynthesized()
	{
		// gboolean pango_font_face_is_synthesized (PangoFontFace *face);
		return pango_font_face_is_synthesized(pangoFontFace);
	}
}
