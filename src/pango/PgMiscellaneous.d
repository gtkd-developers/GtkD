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
 * inFile  = pango-Miscellaneous-Utilities.html
 * outPack = pango
 * outFile = PgMiscellaneous
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgMiscellaneous
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.c.stdio
 * 	- glib.Str
 * 	- glib.StringG
 * 	- pango.PgLanguage
 * structWrap:
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 */

module pango.PgMiscellaneous;

public  import gtkc.pangotypes;

private import gtkc.pango;


private import glib.Str;
private import glib.StringG;
private import pango.PgLanguage;


version(Tango) {
	private import tango.stdc.stdio;
} else {
	private import std.c.stdio;
}



/**
 * Description
 * The functions and utilities in this section are mostly used from Pango
 * backends and modules, but may be useful for other purposes too.
 */
public class PgMiscellaneous
{
	
	/**
	 */
	
	/**
	 * Splits a G_SEARCHPATH_SEPARATOR-separated list of files, stripping
	 * white space and substituting ~/ with $HOME/.
	 * Params:
	 * str =  a G_SEARCHPATH_SEPARATOR separated list of filenames
	 * Returns: a list of strings to be freed with g_strfreev()
	 */
	public static char** splitFileList(char[] str)
	{
		// char** pango_split_file_list (const char *str);
		return pango_split_file_list(Str.toStringz(str));
	}
	
	/**
	 * Trims leading and trailing whitespace from a string.
	 * Params:
	 * str =  a string
	 * Returns: A newly-allocated string that must be freed with g_free()
	 */
	public static char[] trimString(char[] str)
	{
		// char* pango_trim_string (const char *str);
		return Str.toString(pango_trim_string(Str.toStringz(str))).dup;
	}
	
	/**
	 * Reads an entire line from a file into a buffer. Lines may
	 * be delimited with '\n', '\r', '\n\r', or '\r\n'. The delimiter
	 * is not written into the buffer. Text after a '#' character is treated as
	 * a comment and skipped. '\' can be used to escape a # character.
	 * '\' proceeding a line delimiter combines adjacent lines. A '\' proceeding
	 * any other character is ignored and written into the output buffer
	 * unmodified.
	 * Params:
	 * stream =  a stdio stream
	 * str =  GString buffer into which to write the result
	 * Returns: 0 if the stream was already at an EOF character, otherwise the number of lines read (this is useful for maintaining a line number counter which doesn't combine lines with '\')
	 */
	public static int readLine(FILE* stream, GString* str)
	{
		// gint pango_read_line (FILE *stream,  GString *str);
		return pango_read_line(stream, str);
	}
	
	/**
	 * Skips 0 or more characters of white space.
	 * Params:
	 * pos =  in/out string position
	 * Returns: FALSE if skipping the white space leavesthe position at a '\0' character.
	 */
	public static int skipSpace(char** pos)
	{
		// gboolean pango_skip_space (const char **pos);
		return pango_skip_space(pos);
	}
	
	/**
	 * Scans a word into a GString buffer. A word consists
	 * of [A-Za-z_] followed by zero or more [A-Za-z_0-9]
	 * Leading white space is skipped.
	 * Params:
	 * pos =  in/out string position
	 * f_out =  a GString into which to write the result
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanWord(char** pos, GString* f_out)
	{
		// gboolean pango_scan_word (const char **pos,  GString *out);
		return pango_scan_word(pos, f_out);
	}
	
	/**
	 * Scans a string into a GString buffer. The string may either
	 * be a sequence of non-white-space characters, or a quoted
	 * string with '"'. Instead a quoted string, '\"' represents
	 * a literal quote. Leading white space outside of quotes is skipped.
	 * Params:
	 * pos =  in/out string position
	 * f_out =  a GString into which to write the result
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanString(char** pos, GString* f_out)
	{
		// gboolean pango_scan_string (const char **pos,  GString *out);
		return pango_scan_string(pos, f_out);
	}
	
	/**
	 * Scans an integer.
	 * Leading white space is skipped.
	 * Params:
	 * pos =  in/out string position
	 * f_out =  an int into which to write the result
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanInt(char** pos, int* f_out)
	{
		// gboolean pango_scan_int (const char **pos,  int *out);
		return pango_scan_int(pos, f_out);
	}
	
	/**
	 * Looks up a key in the Pango config database
	 * (pseudo-win.ini style, read from $sysconfdir/pango/pangorc,
	 *  ~/.pangorc, and getenv (PANGO_RC_FILE).)
	 * Params:
	 * key =  Key to look up, in the form "SECTION/KEY".
	 * Returns: the value, if found, otherwise NULL. The value is anewly-allocated string and must be freed with g_free().
	 */
	public static char[] configKeyGet(char[] key)
	{
		// char* pango_config_key_get (const char *key);
		return Str.toString(pango_config_key_get(Str.toStringz(key))).dup;
	}
	
	/**
	 * Look up all user defined aliases for the alias fontname.
	 * The resulting font family names will be stored in families,
	 * and the number of families in n_families.
	 * Params:
	 * fontname =  an ascii string
	 * families =  will be set to an array of font family names.
	 *  this array is owned by pango and should not be freed.
	 * nFamilies =  will be set to the length of the families array.
	 */
	public static void lookupAliases(char[] fontname, char*** families, int* nFamilies)
	{
		// void pango_lookup_aliases (const char *fontname,  char ***families,  int *n_families);
		pango_lookup_aliases(Str.toStringz(fontname), families, nFamilies);
	}
	
	/**
	 * Parses an enum type and stored the result in value.
	 * If str does not match the nick name of any of the possible values for the
	 * enum, FALSE is returned, a warning is issued if warn is TRUE, and a
	 * string representing the list of possible values is stored in
	 * possible_values. The list is slash-separated, eg.
	 * "none/start/middle/end". If failed and possible_values is not NULL,
	 * returned string should be freed using g_free().
	 * Since 1.16
	 * Params:
	 * type =  enum type to parse, eg. PANGO_TYPE_ELLIPSIZE_MODE.
	 * str =  string to parse. May be NULL.
	 * value =  integer to store the result in, or NULL.
	 * warn =  if TRUE, issue a g_warning() on bad input.
	 * possibleValues =  place to store list of possible values on failure, or NULL.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseEnum(GType type, char[] str, int* value, int warn, char** possibleValues)
	{
		// gboolean pango_parse_enum (GType type,  const char *str,  int *value,  gboolean warn,  char **possible_values);
		return pango_parse_enum(type, Str.toStringz(str), value, warn, possibleValues);
	}
	
	/**
	 * Parses a font style. The allowed values are "normal",
	 * "italic" and "oblique", case variations being
	 * ignored.
	 * Params:
	 * str =  a string to parse.
	 * style =  a PangoStyle to store the result in.
	 * warn =  if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseStyle(char[] str, PangoStyle* style, int warn)
	{
		// gboolean pango_parse_style (const char *str,  PangoStyle *style,  gboolean warn);
		return pango_parse_style(Str.toStringz(str), style, warn);
	}
	
	/**
	 * Parses a font variant. The allowed values are "normal"
	 * and "smallcaps" or "small_caps", case variations being
	 * ignored.
	 * Params:
	 * str =  a string to parse.
	 * variant =  a PangoVariant to store the result in.
	 * warn =  if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseVariant(char[] str, PangoVariant* variant, int warn)
	{
		// gboolean pango_parse_variant (const char *str,  PangoVariant *variant,  gboolean warn);
		return pango_parse_variant(Str.toStringz(str), variant, warn);
	}
	
	/**
	 * Parses a font weight. The allowed values are "heavy",
	 * "ultrabold", "bold", "normal", "light", "ultraleight"
	 * and integers. Case variations are ignored.
	 * Params:
	 * str =  a string to parse.
	 * weight =  a PangoWeight to store the result in.
	 * warn =  if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseWeight(char[] str, PangoWeight* weight, int warn)
	{
		// gboolean pango_parse_weight (const char *str,  PangoWeight *weight,  gboolean warn);
		return pango_parse_weight(Str.toStringz(str), weight, warn);
	}
	
	/**
	 * Parses a font stretch. The allowed values are
	 * "ultra_condensed", "extra_condensed", "condensed",
	 * "semi_condensed", "normal", "semi_expanded", "expanded",
	 * "extra_expanded" and "ultra_expanded". Case variations are
	 * ignored and the '_' characters may be omitted.
	 * Params:
	 * str =  a string to parse.
	 * stretch =  a PangoStretch to store the result in.
	 * warn =  if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseStretch(char[] str, PangoStretch* stretch, int warn)
	{
		// gboolean pango_parse_stretch (const char *str,  PangoStretch *stretch,  gboolean warn);
		return pango_parse_stretch(Str.toStringz(str), stretch, warn);
	}
	
	/**
	 * On Unix, returns the name of the "pango" subdirectory of SYSCONFDIR
	 * (which is set at compile time). On Win32, returns a subdirectory of
	 * the Pango installation directory (which is deduced at run time from
	 * the DLL's location, or stored in the Registry).
	 * Returns: the Pango sysconf directory. The returned string shouldnot be freed.
	 */
	public static char[] getSysconfSubdirectory()
	{
		// const char* pango_get_sysconf_subdirectory (void);
		return Str.toString(pango_get_sysconf_subdirectory()).dup;
	}
	
	/**
	 * On Unix, returns the name of the "pango" subdirectory of LIBDIR
	 * (which is set at compile time). On Win32, returns the Pango
	 * installation directory (which is deduced at run time from the DLL's
	 * location, or stored in the Registry). The returned string should
	 * not be freed.
	 * Returns: the Pango lib directory. The returned string shouldnot be freed.
	 */
	public static char[] getLibSubdirectory()
	{
		// const char* pango_get_lib_subdirectory (void);
		return Str.toString(pango_get_lib_subdirectory()).dup;
	}
	
	/**
	 * This will return the bidirectional embedding levels of the input paragraph
	 * Since 1.4
	 * Params:
	 * text =  the text to itemize.
	 * length =  the number of bytes (not characters) to process, or -1
	 *  if text is nul-terminated and the length should be calculated.
	 * pbaseDir =  input base direction, and output resolved direction.
	 * Returns: a newly allocated array of embedding levels, one item per character (not byte), that should be freed using g_free.
	 */
	public static byte* log2visGetEmbeddingLevels(char[] text, int length, PangoDirection* pbaseDir)
	{
		// guint8* pango_log2vis_get_embedding_levels (const gchar *text,  int length,  PangoDirection *pbase_dir);
		return pango_log2vis_get_embedding_levels(Str.toStringz(text), length, pbaseDir);
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
	 * Returns: the default language as a PangoLanguage, must not be freed.
	 */
	public static PgLanguage languageGetDefault()
	{
		// PangoLanguage* pango_language_get_default (void);
		auto p = pango_language_get_default();
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgLanguage(cast(PangoLanguage*) p);
	}
	
	/**
	 * Get a string that is representative of the characters needed to
	 * render a particular language. This function is a bad hack for
	 * internal use by renderers and Pango.
	 * Params:
	 * language =  a PangoLanguage
	 * Returns: the sample string. This value is owned by Pango and must not be freed.
	 */
	public static char[] languageGetSampleString(PgLanguage language)
	{
		// const char* pango_language_get_sample_string (PangoLanguage *language);
		return Str.toString(pango_language_get_sample_string((language is null) ? null : language.getPgLanguageStruct())).dup;
	}
	
	/**
	 * Checks ch to see if it is a character that should not be
	 * normally rendered on the screen. This includes all Unicode characters
	 * with "ZERO WIDTH" in their name, as well as bidi formatting characters, and
	 * a few other ones. This is totally different from g_unichar_iszerowidth()
	 * and is at best misnamed.
	 * Since 1.10
	 * Params:
	 * ch =  a Unicode character
	 * Returns: TRUE if ch is a zero-width character, FALSE otherwise
	 */
	public static int isZeroWidth(gunichar ch)
	{
		// gboolean pango_is_zero_width (gunichar ch);
		return pango_is_zero_width(ch);
	}
	
	/**
	 * Quantizes the thickness and position of a line, typically an
	 * underline or strikethrough, to whole device pixels, that is integer
	 * multiples of PANGO_SCALE. The purpose of this function is to avoid
	 * such lines looking blurry.
	 * Since 1.12
	 * Params:
	 * thickness =  pointer to the thickness of a line, in Pango scaled units
	 * position =  corresponding position
	 */
	public static void quantizeLineGeometry(int* thickness, int* position)
	{
		// void pango_quantize_line_geometry (int *thickness,  int *position);
		pango_quantize_line_geometry(thickness, position);
	}
}
