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
 * 	- GString* -> StringG
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgMiscellaneous;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


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
	 * str = a G_SEARCHPATH_SEPARATOR separated list of filenames
	 * Returns: a list of strings to be freed with g_strfreev(). [transfer full][array zero-terminated=1]
	 */
	public static string[] splitFileList(string str)
	{
		// char ** pango_split_file_list (const char *str);
		return Str.toStringArray(pango_split_file_list(Str.toStringz(str)));
	}
	
	/**
	 * Trims leading and trailing whitespace from a string.
	 * Params:
	 * str = a string
	 * Returns: A newly-allocated string that must be freed with g_free()
	 */
	public static string trimString(string str)
	{
		// char * pango_trim_string (const char *str);
		return Str.toString(pango_trim_string(Str.toStringz(str)));
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
	 * stream = a stdio stream
	 * str = GString buffer into which to write the result. [out]
	 * Returns: 0 if the stream was already at an EOF character, otherwise the number of lines read (this is useful for maintaining a line number counter which doesn't combine lines with '\')
	 */
	public static int readLine(FILE* stream, StringG str)
	{
		// gint pango_read_line (FILE *stream,  GString *str);
		return pango_read_line(cast(void*)stream, (str is null) ? null : str.getStringGStruct());
	}
	
	/**
	 * Skips 0 or more characters of white space.
	 * Params:
	 * pos = in/out string position. [inout]
	 * Returns: FALSE if skipping the white space leaves the position at a '\0' character.
	 */
	public static int skipSpace(ref string pos)
	{
		// gboolean pango_skip_space (const char **pos);
		char* outpos = Str.toStringz(pos);
		
		auto p = pango_skip_space(&outpos);
		
		pos = Str.toString(outpos);
		return p;
	}
	
	/**
	 * Scans a word into a GString buffer. A word consists
	 * of [A-Za-z_] followed by zero or more [A-Za-z_0-9]
	 * Leading white space is skipped.
	 * Params:
	 * pos = in/out string position. [inout]
	 * out = a GString into which to write the result. [out]
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanWord(ref string pos, StringG f_out)
	{
		// gboolean pango_scan_word (const char **pos,  GString *out);
		char* outpos = Str.toStringz(pos);
		
		auto p = pango_scan_word(&outpos, (f_out is null) ? null : f_out.getStringGStruct());
		
		pos = Str.toString(outpos);
		return p;
	}
	
	/**
	 * Scans a string into a GString buffer. The string may either
	 * be a sequence of non-white-space characters, or a quoted
	 * string with '"'. Instead a quoted string, '\"' represents
	 * a literal quote. Leading white space outside of quotes is skipped.
	 * Params:
	 * pos = in/out string position. [inout]
	 * out = a GString into which to write the result. [out]
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanString(ref string pos, StringG f_out)
	{
		// gboolean pango_scan_string (const char **pos,  GString *out);
		char* outpos = Str.toStringz(pos);
		
		auto p = pango_scan_string(&outpos, (f_out is null) ? null : f_out.getStringGStruct());
		
		pos = Str.toString(outpos);
		return p;
	}
	
	/**
	 * Scans an integer.
	 * Leading white space is skipped.
	 * Params:
	 * pos = in/out string position. [inout]
	 * out = an int into which to write the result. [out]
	 * Returns: FALSE if a parse error occurred.
	 */
	public static int scanInt(ref string pos, out int f_out)
	{
		// gboolean pango_scan_int (const char **pos,  int *out);
		char* outpos = Str.toStringz(pos);
		
		auto p = pango_scan_int(&outpos, &f_out);
		
		pos = Str.toString(outpos);
		return p;
	}
	
	/**
	 * Looks up a key in the Pango config database
	 * (pseudo-win.ini style, read from $sysconfdir/pango/pangorc,
	 *  $XDG_CONFIG_HOME/pango/pangorc, and getenv (PANGO_RC_FILE).)
	 * Params:
	 * key = Key to look up, in the form "SECTION/KEY".
	 * Returns: the value, if found, otherwise NULL. The value is a newly-allocated string and must be freed with g_free().
	 */
	public static string configKeyGet(string key)
	{
		// char * pango_config_key_get (const char *key);
		return Str.toString(pango_config_key_get(Str.toStringz(key)));
	}
	
	/**
	 * Looks up a key, consulting only the Pango system config database
	 * in $sysconfdir/pango/pangorc.
	 * Params:
	 * key = Key to look up, in the form "SECTION/KEY".
	 * Returns: the value, if found, otherwise NULL. The value is a newly-allocated string and must be freed with g_free().
	 */
	public static string configKeyGetSystem(string key)
	{
		// char * pango_config_key_get_system (const char *key);
		return Str.toString(pango_config_key_get_system(Str.toStringz(key)));
	}
	
	/**
	 * Warning
	 * pango_lookup_aliases has been deprecated since version 1.32 and should not be used in newly-written code. This function is not thread-safe.
	 * Look up all user defined aliases for the alias fontname.
	 * The resulting font family names will be stored in families,
	 * and the number of families in n_families.
	 * Params:
	 * fontname = an ascii string
	 * families = will be set to an array of font family names.
	 * this array is owned by pango and should not be freed. [out][array length=n_families]
	 */
	public static void lookupAliases(string fontname, out string[] families)
	{
		// void pango_lookup_aliases (const char *fontname,  char ***families,  int *n_families);
		char** outfamilies = null;
		int nFamilies;
		
		pango_lookup_aliases(Str.toStringz(fontname), &outfamilies, &nFamilies);
		
		families = null;
		foreach ( cstr; outfamilies[0 .. nFamilies] )
		{
			families ~= Str.toString(cstr);
		}
	}
	
	/**
	 * Parses an enum type and stores the result in value.
	 * If str does not match the nick name of any of the possible values for the
	 * enum and is not an integer, FALSE is returned, a warning is issued
	 * if warn is TRUE, and a
	 * string representing the list of possible values is stored in
	 * possible_values. The list is slash-separated, eg.
	 * "none/start/middle/end". If failed and possible_values is not NULL,
	 * returned string should be freed using g_free().
	 * Since 1.16
	 * Params:
	 * type = enum type to parse, eg. PANGO_TYPE_ELLIPSIZE_MODE.
	 * str = string to parse. May be NULL. [allow-none]
	 * value = integer to store the result in, or NULL. [out][allow-none]
	 * warn = if TRUE, issue a g_warning() on bad input.
	 * possibleValues = place to store list of possible values on failure, or NULL. [out][allow-none]
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseEnum(GType type, string str, out int value, int warn, out string possibleValues)
	{
		// gboolean pango_parse_enum (GType type,  const char *str,  int *value,  gboolean warn,  char **possible_values);
		char* outpossibleValues = null;
		
		auto p = pango_parse_enum(type, Str.toStringz(str), &value, warn, &outpossibleValues);
		
		possibleValues = Str.toString(outpossibleValues);
		return p;
	}
	
	/**
	 * Parses a font style. The allowed values are "normal",
	 * "italic" and "oblique", case variations being
	 * ignored.
	 * Params:
	 * str = a string to parse.
	 * style = a PangoStyle to store the result
	 * in. [out caller-allocates]
	 * warn = if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseStyle(string str, out PangoStyle style, int warn)
	{
		// gboolean pango_parse_style (const char *str,  PangoStyle *style,  gboolean warn);
		return pango_parse_style(Str.toStringz(str), &style, warn);
	}
	
	/**
	 * Parses a font variant. The allowed values are "normal"
	 * and "smallcaps" or "small_caps", case variations being
	 * ignored.
	 * Params:
	 * str = a string to parse.
	 * variant = a PangoVariant to store the
	 * result in. [out caller-allocates]
	 * warn = if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseVariant(string str, out PangoVariant variant, int warn)
	{
		// gboolean pango_parse_variant (const char *str,  PangoVariant *variant,  gboolean warn);
		return pango_parse_variant(Str.toStringz(str), &variant, warn);
	}
	
	/**
	 * Parses a font weight. The allowed values are "heavy",
	 * "ultrabold", "bold", "normal", "light", "ultraleight"
	 * and integers. Case variations are ignored.
	 * Params:
	 * str = a string to parse.
	 * weight = a PangoWeight to store the result
	 * in. [out caller-allocates]
	 * warn = if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseWeight(string str, out PangoWeight weight, int warn)
	{
		// gboolean pango_parse_weight (const char *str,  PangoWeight *weight,  gboolean warn);
		return pango_parse_weight(Str.toStringz(str), &weight, warn);
	}
	
	/**
	 * Parses a font stretch. The allowed values are
	 * "ultra_condensed", "extra_condensed", "condensed",
	 * "semi_condensed", "normal", "semi_expanded", "expanded",
	 * "extra_expanded" and "ultra_expanded". Case variations are
	 * ignored and the '_' characters may be omitted.
	 * Params:
	 * str = a string to parse.
	 * stretch = a PangoStretch to store the
	 * result in. [out caller-allocates]
	 * warn = if TRUE, issue a g_warning() on bad input.
	 * Returns: TRUE if str was successfully parsed.
	 */
	public static int parseStretch(string str, out PangoStretch stretch, int warn)
	{
		// gboolean pango_parse_stretch (const char *str,  PangoStretch *stretch,  gboolean warn);
		return pango_parse_stretch(Str.toStringz(str), &stretch, warn);
	}
	
	/**
	 * On Unix, returns the name of the "pango" subdirectory of SYSCONFDIR
	 * (which is set at compile time). On Windows, returns the etc\pango
	 * subdirectory of the Pango installation directory (which is deduced
	 * at run time from the DLL's location).
	 * Returns: the Pango sysconf directory. The returned string should not be freed.
	 */
	public static string getSysconfSubdirectory()
	{
		// const char * pango_get_sysconf_subdirectory (void);
		return Str.toString(pango_get_sysconf_subdirectory());
	}
	
	/**
	 * On Unix, returns the name of the "pango" subdirectory of LIBDIR
	 * (which is set at compile time). On Windows, returns the lib\pango
	 * subdirectory of the Pango installation directory (which is deduced
	 * at run time from the DLL's location).
	 * Returns: the Pango lib directory. The returned string should not be freed.
	 */
	public static string getLibSubdirectory()
	{
		// const char * pango_get_lib_subdirectory (void);
		return Str.toString(pango_get_lib_subdirectory());
	}
	
	/**
	 * This will return the bidirectional embedding levels of the input paragraph
	 * Since 1.4
	 * Params:
	 * text = the text to itemize.
	 * length = the number of bytes (not characters) to process, or -1
	 * if text is nul-terminated and the length should be calculated.
	 * pbaseDir = input base direction, and output resolved direction.
	 * Returns: a newly allocated array of embedding levels, one item per character (not byte), that should be freed using g_free.
	 */
	public static ubyte* log2visGetEmbeddingLevels(string text, int length, out PangoDirection pbaseDir)
	{
		// guint8 * pango_log2vis_get_embedding_levels (const gchar *text,  int length,  PangoDirection *pbase_dir);
		return pango_log2vis_get_embedding_levels(Str.toStringz(text), length, &pbaseDir);
	}
	
	/**
	 * Checks ch to see if it is a character that should not be
	 * normally rendered on the screen. This includes all Unicode characters
	 * with "ZERO WIDTH" in their name, as well as bidi formatting characters, and
	 * a few other ones. This is totally different from g_unichar_iszerowidth()
	 * and is at best misnamed.
	 * Since 1.10
	 * Params:
	 * ch = a Unicode character
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
	 * Care is taken to make sure thickness is at least one pixel when this
	 * function returns, but returned position may become zero as a result
	 * of rounding.
	 * Since 1.12
	 * Params:
	 * thickness = pointer to the thickness of a line, in Pango units. [inout]
	 * position = corresponding position. [inout]
	 */
	public static void quantizeLineGeometry(ref int thickness, ref int position)
	{
		// void pango_quantize_line_geometry (int *thickness,  int *position);
		pango_quantize_line_geometry(&thickness, &position);
	}
}
