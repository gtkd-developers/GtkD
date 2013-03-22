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
 * inFile  = pango-Scripts-and-Languages.html
 * outPack = pango
 * outFile = PgScript
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgScript
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_
 * 	- pango_script_
 * omit structs:
 * omit prefixes:
 * 	- pango_script_iter_
 * 	- pango_language_
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgLanguage
 * structWrap:
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgScript;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgLanguage;




/**
 * The functions in this section are used to identify the writing
 * system, or script of individual characters
 * and of ranges within a larger text string.
 */
public class PgScript
{
	
	/**
	 */
	
	/**
	 * Looks up the PangoScript for a particular character (as defined by
	 * Unicode Standard Annex 24). No check is made for ch being a
	 * valid Unicode character; if you pass in invalid character, the
	 * result is undefined.
	 * As of Pango 1.18, this function simply returns the return value of
	 * g_unichar_get_script().
	 * Since 1.4
	 * Params:
	 * ch = a Unicode character
	 * Returns: the PangoScript for the character.
	 */
	public static PangoScript scriptForUnichar(gunichar ch)
	{
		// PangoScript pango_script_for_unichar (gunichar ch);
		return pango_script_for_unichar(ch);
	}
	
	/**
	 * Given a script, finds a language tag that is reasonably
	 * representative of that script. This will usually be the
	 * Since 1.4
	 * Params:
	 * script = a PangoScript
	 * Returns: a PangoLanguage that is representative of the script, or NULL if no such language exists.
	 */
	public static PgLanguage scriptGetSampleLanguage(PangoScript script)
	{
		// PangoLanguage * pango_script_get_sample_language (PangoScript script);
		auto p = pango_script_get_sample_language(script);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) p);
	}
}
