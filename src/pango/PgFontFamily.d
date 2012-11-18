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
 * outFile = PgFontFamily
 * strct   = PangoFontFamily
 * realStrct=
 * ctorStrct=
 * clss    = PgFontFamily
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- pango_font_family_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgFontFace
 * structWrap:
 * 	- PangoFontFace* -> PgFontFace
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgFontFamily;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import pango.PgFontFace;



private import gobject.ObjectG;

/**
 * Description
 * Pango supports a flexible architecture where a
 * particular rendering architecture can supply an
 * implementation of fonts. The PangoFont structure
 * represents an abstract rendering-system-independent font.
 * Pango provides routines to list available fonts, and
 * to load a font of a given description.
 */
public class PgFontFamily : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoFontFamily* pangoFontFamily;
	
	
	public PangoFontFamily* getPgFontFamilyStruct()
	{
		return pangoFontFamily;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontFamily;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoFontFamily* pangoFontFamily)
	{
		super(cast(GObject*)pangoFontFamily);
		this.pangoFontFamily = pangoFontFamily;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoFontFamily = cast(PangoFontFamily*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the name of the family. The name is unique among all
	 * fonts for the font backend and can be used in a PangoFontDescription
	 * to specify that a face from this family is desired.
	 * Returns: the name of the family. This string is owned by the family object and must not be modified or freed.
	 */
	public string getName()
	{
		// const char * pango_font_family_get_name (PangoFontFamily *family);
		return Str.toString(pango_font_family_get_name(pangoFontFamily));
	}
	
	/**
	 * A monospace font is a font designed for text display where the the
	 * characters form a regular grid. For Western languages this would
	 * mean that the advance width of all characters are the same, but
	 * this categorization also includes Asian fonts which include
	 * double-width characters: characters that occupy two grid cells.
	 * g_unichar_iswide() returns a result that indicates whether a
	 * character is typically double-width in a monospace font.
	 * The best way to find out the grid-cell size is to call
	 * pango_font_metrics_get_approximate_digit_width(), since the results
	 * of pango_font_metrics_get_approximate_char_width() may be affected
	 * by double-width characters.
	 * Since 1.4
	 * Returns: TRUE if the family is monospace.
	 */
	public int isMonospace()
	{
		// gboolean pango_font_family_is_monospace (PangoFontFamily *family);
		return pango_font_family_is_monospace(pangoFontFamily);
	}
	
	/**
	 * Lists the different font faces that make up family. The faces
	 * in a family share a common design, but differ in slant, weight,
	 * width and other aspects.
	 * Params:
	 * faces = location to store an array of pointers to PangoFontFace objects,
	 * or NULL. This array should be freed with g_free() when it is no
	 * longer needed. [out][allow-none][array length=n_faces][transfer container]
	 */
	public void listFaces(out PgFontFace[] faces)
	{
		// void pango_font_family_list_faces (PangoFontFamily *family,  PangoFontFace ***faces,  int *n_faces);
		PangoFontFace** outfaces = null;
		int nFaces;
		
		pango_font_family_list_faces(pangoFontFamily, &outfaces, &nFaces);
		
		
		faces = new PgFontFace[nFaces];
		for(int i = 0; i < nFaces; i++)
		{
			faces[i] = ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) outfaces[i]);
		}
	}
}
