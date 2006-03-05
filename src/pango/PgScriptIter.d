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
 * outFile = PgScriptIter
 * strct   = PangoScriptIter
 * realStrct=
 * clss    = PgScriptIter
 * extend  = 
 * prefixes:
 * 	- pango_script_iter_
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
 * 	- pango.PgLanguage
 * 	- pango.PgTabArray
 * 	- pango.PgLayout
 * 	- pango.PgLayoutIter
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
 * 	- PangoLanguage* -> PgLanguage
 * 	- PangoLayout* -> PgLayout
 * 	- PangoLayoutIter* -> PgLayoutIter
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module pango.PgScriptIter;

private import pango.typedefs;

private import lib.pango;

private import pango.PgContext;private import pango.PgItem;private import pango.PgLayout;private import pango.PgFontDescription;private import pango.PgFontMetrics;private import pango.PgFontFamily;private import pango.PgFontFace;private import pango.PgFontMap;private import pango.PgFontsetSimple;private import pango.PgAttribute;private import pango.PgAttributeList;private import pango.PgLanguage;private import pango.PgTabArray;private import pango.PgLayout;private import pango.PgLayoutIter;
/**
 * Description
 * The functions in this section are used to identify the writing
 * system, or script of individual characters
 * and of ranges within a larger text string.
 */
public class PgScriptIter
{
	
	/** the main Gtk struct */
	protected PangoScriptIter* pangoScriptIter;
	
	
	public PangoScriptIter* getPgScriptIterStruct()
	{
		return pangoScriptIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoScriptIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoScriptIter* pangoScriptIter)
	{
		this.pangoScriptIter = pangoScriptIter;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Looks up the PangoScript for a particular character (as defined by
	 * Unicode Standard Annex 24). No check is made for ch being a
	 * valid Unicode character; if you pass in invalid character, the
	 * result is undefined.
	 * ch:
	 *  a Unicode character
	 * Returns:
	 *  the PangoScript for the character.
	 * Since 1.4
	 */
	public static PangoScript pangoScriptForUnichar(gunichar ch)
	{
		// PangoScript pango_script_for_unichar (gunichar ch);
		return pango_script_for_unichar(ch);
	}
	
	/**
	 * Given a script, finds a language tag that is reasonably
	 * representative of that script. This will usually be the
	 * most widely spoken or used language written in that script:
	 * for instance, the sample language for PANGO_SCRIPT_CYRILLIC
	 * is ru (Russian), the sample lanugage
	 * for PANGO_SCRIPT_ARABIC is ar.
	 * For some
	 * scripts, no sample language will be returned because there
	 * is no language that is sufficiently representative. The best
	 * example of this is PANGO_SCRIPT_HAN, where various different
	 * variants of written Chinese, Japanese, and Korean all use
	 * significantly different sets of Han characters and forms
	 * of shared characters. No sample language can be provided
	 * for many historical scripts as well.
	 * script:
	 *  a PangoScript
	 * Returns:
	 *  a PangoLanguage that is representative
	 * of the script, or NULL if no such language exists.
	 * Since 1.4
	 */
	public static PgLanguage pangoScriptGetSampleLanguage(PangoScript script)
	{
		// PangoLanguage* pango_script_get_sample_language  (PangoScript script);
		return new PgLanguage( pango_script_get_sample_language(script) );
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
	 * language:
	 *  a PangoLanguage
	 * script:
	 *  a PangoScript
	 * Returns:
	 *  TRUE if script is one of the scripts used
	 * to write language, or if nothing is known about language.
	 * Since 1.4
	 */
	public static int pangoLanguageIncludesScript(PgLanguage language, PangoScript script)
	{
		// gboolean pango_language_includes_script (PangoLanguage *language,  PangoScript script);
		return pango_language_includes_script(language.getPgLanguageStruct(), script);
	}
	
	/**
	 * Create a new PangoScriptIter, used to break a string of
	 * Unicode into runs by text. No copy is made of text, so
	 * the caller needs to make sure it remains valid until
	 * the iterator is freed with pango_script_iter_free().x
	 * text:
	 *  a UTF-8 string
	 * length:
	 *  length of text, or -1 if text is nul-terminated.
	 * Returns:
	 *  the new script iterator, initialized
	 *  to point at the first range in the text. If the string is
	 *  empty, it will point at an empty range.
	 * Since 1.4
	 */
	public this (char[] text, int length)
	{
		// PangoScriptIter* pango_script_iter_new (const char *text,  int length);
		this(cast(PangoScriptIter*)pango_script_iter_new(std.string.toStringz(text), length) );
	}
	
	/**
	 * Gets information about the range to which iter currently points.
	 * The range is the set of locations p where *start <= p < *end.
	 * (That is, it doesn't include the character stored at *end)
	 * iter:
	 *  a PangoScriptIter
	 * start:
	 *  location to store start position of the range, or NULL
	 * end:
	 *  location to store end position of the range, or NULL
	 * script:
	 *  location to store script for range, or NULL
	 * Since 1.4
	 */
	public void getRange(char** start, char** end, PangoScript* script)
	{
		// void pango_script_iter_get_range (PangoScriptIter *iter,  G_CONST_RETURN char **start,  G_CONST_RETURN char **end,  PangoScript *script);
		pango_script_iter_get_range(pangoScriptIter, start, end, script);
	}
	
	/**
	 * Advances a PangoScriptIter to the next range. If the iter
	 * is already at the end, it is left unchanged and FALSE
	 * is returned.
	 * iter:
	 *  a PangoScriptIter
	 * Returns:
	 *  TRUE if the iter was succesfully advanced.
	 * Since 1.4
	 */
	public int next()
	{
		// gboolean pango_script_iter_next (PangoScriptIter *iter);
		return pango_script_iter_next(pangoScriptIter);
	}
	
	/**
	 * Frees a PangoScriptIter created with pango_script_iter_new().
	 * iter:
	 *  a PangoScriptIter
	 * Since 1.4
	 */
	public void free()
	{
		// void pango_script_iter_free (PangoScriptIter *iter);
		pango_script_iter_free(pangoScriptIter);
	}
}
