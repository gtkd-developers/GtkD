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
 * inFile  = 
 * outPack = pango
 * outFile = PgLanguage
 * strct   = PangoLanguage
 * realStrct=
 * ctorStrct=
 * clss    = PgLanguage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_language_
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
 * 	- pango.PgFontFace
 * 	- pango.PgFontMap
 * 	- pango.PgFontsetSimple
 * 	- pango.PgAttribute
 * 	- pango.PgAttributeList
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
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * 	- PangoFontMap* -> PgFontMap
 * 	- PangoFontMetrics* -> PgFontMetrics
 * 	- PangoFontsetSimple* -> PgFontsetSimple
 * 	- PangoItem* -> PgItem
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoScriptIter* -> PgScriptIter
 * 	- PangoTabArray* -> PgTabArray
 * module aliases:
 * local aliases:
 */

module pango.PgLanguage;

private import gtkc.pangotypes;

private import gtkc.pango;


private import pango.PgContext;
private import pango.PgItem;
private import pango.PgLayout;
private import pango.PgFontDescription;
private import pango.PgFontMetrics;
private import pango.PgFontFamily;
private import pango.PgFontFace;
private import pango.PgFontMap;
private import pango.PgFontsetSimple;
private import pango.PgAttribute;
private import pango.PgAttributeList;
private import pango.PgTabArray;
private import pango.PgLayout;
private import pango.PgLayoutIter;
private import pango.PgScriptIter;
private import glib.Str;




/**
 * Description
 * Attributed text is used in a number of places in Pango. It
 * is used as the input to the itemization process and also when
 * creating a PangoLayout. The data types and functions in
 * this section are used to represent and manipulate sets
 * of attributes applied to a portion of text.
 */
public class PgLanguage
{
	
	/** the main Gtk struct */
	protected PangoLanguage* pangoLanguage;
	
	
	public PangoLanguage* getPgLanguageStruct()
	{
		return pangoLanguage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoLanguage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoLanguage* pangoLanguage)
	{
		assert(pangoLanguage !is null, "struct pangoLanguage is null on constructor");
		this.pangoLanguage = pangoLanguage;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Take a RFC-3066 format language tag as a string and convert it to a
	 * PangoLanguage pointer that can be efficiently copied (copy the
	 * pointer) and compared with other language tags (compare the
	 * pointer.)
	 * This function first canonicalizes the string by converting it to
	 * lowercase, mapping '_' to '-', and stripping all characters other
	 * than letters and '-'.
	 * Use pango_language_get_default() if you want to get the PangoLanguage for
	 * the current locale of the process.
	 * language:
	 *  a string representing a language tag
	 * Returns:
	 *  an opaque pointer to a PangoLanguage structure.
	 *  this will be valid forever after.
	 */
	public static PangoLanguage* fromString(char[] language)
	{
		// PangoLanguage* pango_language_from_string (const char *language);
		return pango_language_from_string(Str.toStringz(language));
	}
	
	
	/**
	 * Checks if a language tag matches one of the elements in a list of
	 * language ranges. A language tag is considered to match a range
	 * in the list if the range is '*', the range is exactly the tag,
	 * or the range is a prefix of the tag, and the character after it
	 * in the tag is '-'.
	 * language:
	 *  a language tag (see pango_language_from_string()),
	 *  NULL is allowed and matches nothing but '*'
	 * range_list:
	 *  a list of language ranges, separated by ';', ':',
	 *  ',', or space characters.
	 *  Each element must either be '*', or a RFC 3066 language range
	 *  canonicalized as by pango_language_from_string()
	 * Returns:
	 *  TRUE if a match was found.
	 */
	public int matches(char[] rangeList)
	{
		// gboolean pango_language_matches (PangoLanguage *language,  const char *range_list);
		return pango_language_matches(pangoLanguage, Str.toStringz(rangeList));
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
