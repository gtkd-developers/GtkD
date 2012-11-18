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
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module pango.PgLanguage;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * The functions in this section are used to identify the writing
 * system, or script of individual characters
 * and of ranges within a larger text string.
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
	 * Params:
	 * language = a string representing a language tag, or NULL. [allow-none]
	 * Returns: an opaque pointer to a PangoLanguage structure, or NULL if language was NULL. The returned pointer will be valid forever after, and should not be freed. [transfer none]
	 */
	public static PgLanguage fromString(string language)
	{
		// PangoLanguage * pango_language_from_string (const char *language);
		auto p = pango_language_from_string(Str.toStringz(language));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) p);
	}
	
	/**
	 * Gets the RFC-3066 format string representing the given language tag.
	 * Returns: a string representing the language tag. This is owned by Pango and should not be freed.
	 */
	public override string toString()
	{
		// const char * pango_language_to_string (PangoLanguage *language);
		return Str.toString(pango_language_to_string(pangoLanguage));
	}
	
	/**
	 * Checks if a language tag matches one of the elements in a list of
	 * language ranges. A language tag is considered to match a range
	 * in the list if the range is '*', the range is exactly the tag,
	 * or the range is a prefix of the tag, and the character after it
	 * in the tag is '-'.
	 * Params:
	 * rangeList = a list of language ranges, separated by ';', ':',
	 * ',', or space characters.
	 * Each element must either be '*', or a RFC 3066 language range
	 * canonicalized as by pango_language_from_string()
	 * Returns: TRUE if a match was found.
	 */
	public int matches(string rangeList)
	{
		// gboolean pango_language_matches (PangoLanguage *language,  const char *range_list);
		return pango_language_matches(pangoLanguage, Str.toStringz(rangeList));
	}
	
	/**
	 * Determines if script is one of the scripts used to
	 * write language. The returned value is conservative;
	 * if nothing is known about the language tag language,
	 * TRUE will be returned, since, as far as Pango knows,
	 * script might be used to write language.
	 * This routine is used in Pango's itemization process when
	 * determining if a supplied language tag is relevant to
	 * a particular section of text. It probably is not useful for
	 * applications in most circumstances.
	 * This function uses pango_language_get_scripts() internally.
	 * Since 1.4
	 * Params:
	 * script = a PangoScript
	 * Returns: TRUE if script is one of the scripts used to write language or if nothing is known about language (including the case that language is NULL), FALSE otherwise.
	 */
	public int includesScript(PangoScript script)
	{
		// gboolean pango_language_includes_script (PangoLanguage *language,  PangoScript script);
		return pango_language_includes_script(pangoLanguage, script);
	}
	
	/**
	 * Determines the scripts used to to write language.
	 * If nothing is known about the language tag language,
	 * or if language is NULL, then NULL is returned.
	 * The list of scripts returned starts with the script that the
	 * language uses most and continues to the one it uses least.
	 * The value num_script points at will be set to the number
	 * of scripts in the returned array (or zero if NULL is returned).
	 * Most languages use only one script for writing, but there are
	 * some that use two (Latin and Cyrillic for example), and a few
	 * use three (Japanese for example). Applications should not make
	 * any assumptions on the maximum number of scripts returned
	 * though, except that it is positive if the return value is not
	 * NULL, and it is a small number.
	 * The pango_language_includes_script() function uses this function
	 * internally.
	 * Since 1.22
	 * Params:
	 * numScripts = location to return number of scripts,
	 * or NULL. [out caller-allocates][allow-none]
	 * Returns: An array of PangoScript values, with the number of entries in the array stored in num_scripts, or NULL if Pango does not have any information about this particular language tag (also the case if language is NULL). The returned array is owned by Pango and should not be modified or freed. [array length=num_scripts]
	 */
	public PangoScript* getScripts(int* numScripts)
	{
		// const PangoScript * pango_language_get_scripts (PangoLanguage *language,  int *num_scripts);
		return pango_language_get_scripts(pangoLanguage, numScripts);
	}
	
	/**
	 * Returns the PangoLanguage for the current locale of the process.
	 * Note that this can change over the life of an application.
	 * On Unix systems, this is the return value is derived from
	 * setlocale(LC_CTYPE, NULL), and the user can
	 * affect this through the environment variables LC_ALL, LC_CTYPE or
	 * LANG (checked in that order). The locale string typically is in
	 * the form lang_COUNTRY, where lang is an ISO-639 language code, and
	 * COUNTRY is an ISO-3166 country code. For instance, sv_FI for
	 * Swedish as written in Finland or pt_BR for Portuguese as written in
	 * Brazil.
	 * On Windows, the C library does not use any such environment
	 * variables, and setting them won't affect the behavior of functions
	 * like ctime(). The user sets the locale through the Regional Options
	 * in the Control Panel. The C library (in the setlocale() function)
	 * does not use country and language codes, but country and language
	 * names spelled out in English.
	 * However, this function does check the above environment
	 * variables, and does return a Unix-style locale string based on
	 * either said environment variables or the thread's current locale.
	 * Your application should call setlocale(LC_ALL, "");
	 * for the user settings to take effect. Gtk+ does this in its initialization
	 * functions automatically (by calling gtk_set_locale()).
	 * See man setlocale for more details.
	 * Since 1.16
	 * Returns: the default language as a PangoLanguage, must not be freed. [transfer none]
	 */
	public static PgLanguage getDefault()
	{
		// PangoLanguage * pango_language_get_default (void);
		auto p = pango_language_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgLanguage)(cast(PangoLanguage*) p);
	}
	
	/**
	 * Get a string that is representative of the characters needed to
	 * render a particular language.
	 * The sample text may be a pangram, but is not necessarily. It is chosen to
	 * be demonstrative of normal text in the language, as well as exposing font
	 * feature requirements unique to the language. It is suitable for use
	 * as sample text in a font selection dialog.
	 * If language is NULL, the default language as found by
	 * pango_language_get_default() is used.
	 * If Pango does not have a sample string for language, the classic
	 * "The quick brown fox..." is returned. This can be detected by
	 * comparing the returned pointer value to that returned for (non-existent)
	 * Returns: the sample string. This value is owned by Pango and should not be freed.
	 */
	public string getSampleString()
	{
		// const char * pango_language_get_sample_string (PangoLanguage *language);
		return Str.toString(pango_language_get_sample_string(pangoLanguage));
	}
}
