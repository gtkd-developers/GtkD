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
 * outPack = glib
 * outFile = MatchInfo
 * strct   = GMatchInfo
 * realStrct=
 * ctorStrct=
 * clss    = MatchInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_match_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Regex
 * structWrap:
 * 	- GRegex* -> Regex
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.MatchInfo;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Regex;




/**
 * Description
 * The g_regex_*() functions implement regular
 * expression pattern matching using syntax and semantics similar to
 * Perl regular expression.
 * Some functions accept a start_position argument,
 * setting it differs from just passing over a shortened string and setting
 * G_REGEX_MATCH_NOTBOL in the case of a pattern that begins with any kind
 * of lookbehind assertion.
 * For example, consider the pattern "\Biss\B" which finds occurrences of "iss"
 * in the middle of words. ("\B" matches only if the current position in the
 * subject is not a word boundary.) When applied to the string "Mississipi"
 * from the fourth byte, namely "issipi", it does not match, because "\B" is
 * always false at the start of the subject, which is deemed to be a word
 * boundary. However, if the entire string is passed , but with
 * start_position set to 4, it finds the second
 * occurrence of "iss" because it is able to look behind the starting point
 * to discover that it is preceded by a letter.
 * Note that, unless you set the G_REGEX_RAW flag, all the strings passed
 * to these functions must be encoded in UTF-8. The lengths and the positions
 * inside the strings are in bytes and not in characters, so, for instance,
 * "\xc3\xa0" (i.e. "  ") is two bytes long but it is treated as a single
 * character. If you set G_REGEX_RAW the strings can be non-valid UTF-8
 * strings and a byte is treated as a character, so "\xc3\xa0" is two bytes
 * and two characters long.
 * When matching a pattern, "\n" matches only against a "\n" character in the
 * string, and "\r" matches only a "\r" character. To match any newline sequence
 * use "\R". This particular group matches either the two-character sequence
 * CR + LF ("\r\n"), or one of the single characters LF (linefeed, U+000A, "\n"), VT
 * (vertical tab, U+000B, "\v"), FF (formfeed, U+000C, "\f"), CR (carriage return,
 * U+000D, "\r"), NEL (next line, U+0085), LS (line separator, U+2028), or PS
 * (paragraph separator, U+2029).
 * The behaviour of the dot, circumflex, and dollar metacharacters are affected by
 * newline characters, the default is to recognize any newline character (the same
 * characters recognized by "\R"). This can be changed with G_REGEX_NEWLINE_CR,
 * G_REGEX_NEWLINE_LF and G_REGEX_NEWLINE_CRLF compile options,
 * and with G_REGEX_MATCH_NEWLINE_ANY, G_REGEX_MATCH_NEWLINE_CR,
 * G_REGEX_MATCH_NEWLINE_LF and G_REGEX_MATCH_NEWLINE_CRLF match options.
 * These settings are also relevant when compiling a pattern if
 * G_REGEX_EXTENDED is set, and an unescaped "#" outside a character class is
 * encountered. This indicates a comment that lasts until after the next
 * newline.
 * Creating and manipulating the same GRegex structure from different
 * threads is not a problem as GRegex does not modify its internal
 * state between creation and destruction, on the other hand GMatchInfo is
 * not threadsafe.
 * The regular expressions low level functionalities are obtained through
 * the excellent PCRE library
 * written by Philip Hazel.
 */
public class MatchInfo
{
	
	/** the main Gtk struct */
	protected GMatchInfo* gMatchInfo;
	
	
	public GMatchInfo* getMatchInfoStruct()
	{
		return gMatchInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMatchInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMatchInfo* gMatchInfo)
	{
		if(gMatchInfo is null)
		{
			this = null;
			return;
		}
		this.gMatchInfo = gMatchInfo;
	}
	
	/**
	 */
	
	/**
	 * Returns GRegex object used in match_info. It belongs to Glib
	 * and must not be freed. Use g_regex_ref() if you need to keep it
	 * after you free match_info object.
	 * Since 2.14
	 */
	public Regex getRegex()
	{
		// GRegex * g_match_info_get_regex (const GMatchInfo *match_info);
		auto p = g_match_info_get_regex(gMatchInfo);
		if(p is null)
		{
			return null;
		}
		return new Regex(cast(GRegex*) p);
	}
	
	/**
	 * Returns the string searched with match_info. This is the
	 * string passed to g_regex_match() or g_regex_replace() so
	 * you may not free it before calling this function.
	 * Since 2.14
	 */
	public string getString()
	{
		// const gchar * g_match_info_get_string (const GMatchInfo *match_info);
		return Str.toString(g_match_info_get_string(gMatchInfo));
	}
	
	/**
	 * Frees all the memory associated with the GMatchInfo structure.
	 * Since 2.14
	 */
	public void free()
	{
		// void g_match_info_free (GMatchInfo *match_info);
		g_match_info_free(gMatchInfo);
	}
	
	/**
	 * Returns whether the previous match operation succeeded.
	 * Since 2.14
	 */
	public int matches()
	{
		// gboolean g_match_info_matches (const GMatchInfo *match_info);
		return g_match_info_matches(gMatchInfo);
	}
	
	/**
	 * Scans for the next match using the same parameters of the previous
	 * call to g_regex_match_full() or g_regex_match() that returned
	 * match_info.
	 * The match is done on the string passed to the match function, so you
	 * cannot free it before calling this function.
	 * Since 2.14
	 * Throws: GException on failure.
	 */
	public int next()
	{
		// gboolean g_match_info_next (GMatchInfo *match_info,  GError **error);
		GError* err = null;
		
		auto p = g_match_info_next(gMatchInfo, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Retrieves the number of matched substrings (including substring 0,
	 * that is the whole matched text), so 1 is returned if the pattern
	 * has no substrings in it and 0 is returned if the match failed.
	 * If the last match was obtained using the DFA algorithm, that is
	 * using g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * count is not that of the number of capturing parentheses but that of
	 * the number of matched substrings.
	 * Since 2.14
	 */
	public int getMatchCount()
	{
		// gint g_match_info_get_match_count (const GMatchInfo *match_info);
		return g_match_info_get_match_count(gMatchInfo);
	}
	
	/**
	 * Usually if the string passed to g_regex_match*() matches as far as
	 * it goes, but is too short to match the entire pattern, FALSE is
	 * returned. There are circumstances where it might be helpful to
	 * distinguish this case from other cases in which there is no match.
	 * Consider, for example, an application where a human is required to
	 * type in data for a field with specific formatting requirements. An
	 * example might be a date in the form ddmmmyy, defined by the pattern
	 * "^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\d\d$".
	 * If the application sees the user’s keystrokes one by one, and can
	 * check that what has been typed so far is potentially valid, it is
	 * able to raise an error as soon as a mistake is made.
	 * GRegex supports the concept of partial matching by means of the
	 * G_REGEX_MATCH_PARTIAL flag. When this is set the return code for
	 * g_regex_match() or g_regex_match_full() is, as usual, TRUE
	 * for a complete match, FALSE otherwise. But, when these functions
	 * return FALSE, you can check if the match was partial calling
	 * g_match_info_is_partial_match().
	 * When using partial matching you cannot use g_match_info_fetch*().
	 * Because of the way certain internal optimizations are implemented
	 * the partial matching algorithm cannot be used with all patterns.
	 * So repeated single characters such as "a{2,4}" and repeated single
	 * meta-sequences such as "\d+" are not permitted if the maximum number
	 * of occurrences is greater than one. Optional items such as "\d?"
	 * (where the maximum is one) are permitted. Quantifiers with any values
	 * are permitted after parentheses, so the invalid examples above can be
	 * coded thus "(a){2,4}" and "(\d)+". If G_REGEX_MATCH_PARTIAL is set
	 * for a pattern that does not conform to the restrictions, matching
	 * functions return an error.
	 * Since 2.14
	 */
	public int isPartialMatch()
	{
		// gboolean g_match_info_is_partial_match (const GMatchInfo *match_info);
		return g_match_info_is_partial_match(gMatchInfo);
	}
	
	/**
	 * Returns a new string containing the text in string_to_expand with
	 * references and escape sequences expanded. References refer to the last
	 * match done with string against regex and have the same syntax used by
	 * g_regex_replace().
	 * The string_to_expand must be UTF-8 encoded even if G_REGEX_RAW was
	 * passed to g_regex_new().
	 * The backreferences are extracted from the string passed to the match
	 * function, so you cannot call this function after freeing the string.
	 * match_info may be NULL in which case string_to_expand must not
	 * contain references. For instance "foo\n" does not refer to an actual
	 * pattern and '\n' merely will be replaced with \n character,
	 * while to expand "\0" (whole match) one needs the result of a match.
	 * Use g_regex_check_replacement() to find out whether string_to_expand
	 * contains references.
	 * Since 2.14
	 * Throws: GException on failure.
	 */
	public string expandReferences(string stringToExpand)
	{
		// gchar * g_match_info_expand_references (const GMatchInfo *match_info,  const gchar *string_to_expand,  GError **error);
		GError* err = null;
		
		auto p = Str.toString(g_match_info_expand_references(gMatchInfo, Str.toStringz(stringToExpand), &err));
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Retrieves the text matching the match_num'th capturing
	 * parentheses. 0 is the full text of the match, 1 is the first paren
	 * set, 2 the second, and so on.
	 * If match_num is a valid sub pattern but it didn't match anything
	 * (e.g. sub pattern 1, matching "b" against "(a)?b") then an empty
	 * string is returned.
	 * If the match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * string is not that of a set of parentheses but that of a matched
	 * substring. Substrings are matched in reverse order of length, so
	 * 0 is the longest match.
	 * The string is fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 * Since 2.14
	 */
	public string fetch(int matchNum)
	{
		// gchar * g_match_info_fetch (const GMatchInfo *match_info,  gint match_num);
		return Str.toString(g_match_info_fetch(gMatchInfo, matchNum));
	}
	
	/**
	 * Retrieves the position in bytes of the match_num'th capturing
	 * parentheses. 0 is the full text of the match, 1 is the first
	 * paren set, 2 the second, and so on.
	 * If match_num is a valid sub pattern but it didn't match anything
	 * (e.g. sub pattern 1, matching "b" against "(a)?b") then start_pos
	 * and end_pos are set to -1 and TRUE is returned.
	 * If the match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * position is not that of a set of parentheses but that of a matched
	 * substring. Substrings are matched in reverse order of length, so
	 * 0 is the longest match.
	 * Since 2.14
	 */
	public int fetchPos(int matchNum, out int startPos, out int endPos)
	{
		// gboolean g_match_info_fetch_pos (const GMatchInfo *match_info,  gint match_num,  gint *start_pos,  gint *end_pos);
		return g_match_info_fetch_pos(gMatchInfo, matchNum, &startPos, &endPos);
	}
	
	/**
	 * Retrieves the text matching the capturing parentheses named name.
	 * If name is a valid sub pattern name but it didn't match anything
	 * (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
	 * then an empty string is returned.
	 * The string is fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 * Since 2.14
	 */
	public string fetchNamed(string name)
	{
		// gchar * g_match_info_fetch_named (const GMatchInfo *match_info,  const gchar *name);
		return Str.toString(g_match_info_fetch_named(gMatchInfo, Str.toStringz(name)));
	}
	
	/**
	 * Retrieves the position in bytes of the capturing parentheses named name.
	 * If name is a valid sub pattern name but it didn't match anything
	 * (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
	 * then start_pos and end_pos are set to -1 and TRUE is returned.
	 * Since 2.14
	 */
	public int fetchNamedPos(string name, out int startPos, out int endPos)
	{
		// gboolean g_match_info_fetch_named_pos (const GMatchInfo *match_info,  const gchar *name,  gint *start_pos,  gint *end_pos);
		return g_match_info_fetch_named_pos(gMatchInfo, Str.toStringz(name), &startPos, &endPos);
	}
	
	/**
	 * Bundles up pointers to each of the matching substrings from a match
	 * and stores them in an array of gchar pointers. The first element in
	 * the returned array is the match number 0, i.e. the entire matched
	 * text.
	 * If a sub pattern didn't match anything (e.g. sub pattern 1, matching
	 * "b" against "(a)?b") then an empty string is inserted.
	 * If the last match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * strings are not that matched by sets of parentheses but that of the
	 * matched substring. Substrings are matched in reverse order of length,
	 * so the first one is the longest match.
	 * The strings are fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 * Since 2.14
	 */
	public string[] fetchAll()
	{
		// gchar ** g_match_info_fetch_all (const GMatchInfo *match_info);
		return Str.toStringArray(g_match_info_fetch_all(gMatchInfo));
	}
}
