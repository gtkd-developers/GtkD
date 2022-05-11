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


module glib.MatchInfo;

private import glib.ErrorG;
private import glib.GException;
private import glib.Regex;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * A GMatchInfo is an opaque struct used to return information about
 * matches.
 */
public class MatchInfo
{
	/** the main Gtk struct */
	protected GMatchInfo* gMatchInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GMatchInfo* getMatchInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMatchInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMatchInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMatchInfo* gMatchInfo, bool ownedRef = false)
	{
		this.gMatchInfo = gMatchInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_match_info_unref(gMatchInfo);
	}


	/**
	 * Returns a new string containing the text in @string_to_expand with
	 * references and escape sequences expanded. References refer to the last
	 * match done with @string against @regex and have the same syntax used by
	 * g_regex_replace().
	 *
	 * The @string_to_expand must be UTF-8 encoded even if %G_REGEX_RAW was
	 * passed to g_regex_new().
	 *
	 * The backreferences are extracted from the string passed to the match
	 * function, so you cannot call this function after freeing the string.
	 *
	 * @match_info may be %NULL in which case @string_to_expand must not
	 * contain references. For instance "foo\n" does not refer to an actual
	 * pattern and '\n' merely will be replaced with \n character,
	 * while to expand "\0" (whole match) one needs the result of a match.
	 * Use g_regex_check_replacement() to find out whether @string_to_expand
	 * contains references.
	 *
	 * Params:
	 *     stringToExpand = the string to expand
	 *
	 * Returns: the expanded string, or %NULL if an error occurred
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public string expandReferences(string stringToExpand)
	{
		GError* err = null;

		auto retStr = g_match_info_expand_references(gMatchInfo, Str.toStringz(stringToExpand), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves the text matching the @match_num'th capturing
	 * parentheses. 0 is the full text of the match, 1 is the first paren
	 * set, 2 the second, and so on.
	 *
	 * If @match_num is a valid sub pattern but it didn't match anything
	 * (e.g. sub pattern 1, matching "b" against "(a)?b") then an empty
	 * string is returned.
	 *
	 * If the match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * string is not that of a set of parentheses but that of a matched
	 * substring. Substrings are matched in reverse order of length, so
	 * 0 is the longest match.
	 *
	 * The string is fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 *
	 * Params:
	 *     matchNum = number of the sub expression
	 *
	 * Returns: The matched substring, or %NULL if an error
	 *     occurred. You have to free the string yourself
	 *
	 * Since: 2.14
	 */
	public string fetch(int matchNum)
	{
		auto retStr = g_match_info_fetch(gMatchInfo, matchNum);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Bundles up pointers to each of the matching substrings from a match
	 * and stores them in an array of gchar pointers. The first element in
	 * the returned array is the match number 0, i.e. the entire matched
	 * text.
	 *
	 * If a sub pattern didn't match anything (e.g. sub pattern 1, matching
	 * "b" against "(a)?b") then an empty string is inserted.
	 *
	 * If the last match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * strings are not that matched by sets of parentheses but that of the
	 * matched substring. Substrings are matched in reverse order of length,
	 * so the first one is the longest match.
	 *
	 * The strings are fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 *
	 * Returns: a %NULL-terminated array of gchar *
	 *     pointers.  It must be freed using g_strfreev(). If the previous
	 *     match failed %NULL is returned
	 *
	 * Since: 2.14
	 */
	public string[] fetchAll()
	{
		auto retStr = g_match_info_fetch_all(gMatchInfo);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Retrieves the text matching the capturing parentheses named @name.
	 *
	 * If @name is a valid sub pattern name but it didn't match anything
	 * (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
	 * then an empty string is returned.
	 *
	 * The string is fetched from the string passed to the match function,
	 * so you cannot call this function after freeing the string.
	 *
	 * Params:
	 *     name = name of the subexpression
	 *
	 * Returns: The matched substring, or %NULL if an error
	 *     occurred. You have to free the string yourself
	 *
	 * Since: 2.14
	 */
	public string fetchNamed(string name)
	{
		auto retStr = g_match_info_fetch_named(gMatchInfo, Str.toStringz(name));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves the position in bytes of the capturing parentheses named @name.
	 *
	 * If @name is a valid sub pattern name but it didn't match anything
	 * (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
	 * then @start_pos and @end_pos are set to -1 and %TRUE is returned.
	 *
	 * Params:
	 *     name = name of the subexpression
	 *     startPos = pointer to location where to store
	 *         the start position, or %NULL
	 *     endPos = pointer to location where to store
	 *         the end position, or %NULL
	 *
	 * Returns: %TRUE if the position was fetched, %FALSE otherwise.
	 *     If the position cannot be fetched, @start_pos and @end_pos
	 *     are left unchanged.
	 *
	 * Since: 2.14
	 */
	public bool fetchNamedPos(string name, out int startPos, out int endPos)
	{
		return g_match_info_fetch_named_pos(gMatchInfo, Str.toStringz(name), &startPos, &endPos) != 0;
	}

	/**
	 * Retrieves the position in bytes of the @match_num'th capturing
	 * parentheses. 0 is the full text of the match, 1 is the first
	 * paren set, 2 the second, and so on.
	 *
	 * If @match_num is a valid sub pattern but it didn't match anything
	 * (e.g. sub pattern 1, matching "b" against "(a)?b") then @start_pos
	 * and @end_pos are set to -1 and %TRUE is returned.
	 *
	 * If the match was obtained using the DFA algorithm, that is using
	 * g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * position is not that of a set of parentheses but that of a matched
	 * substring. Substrings are matched in reverse order of length, so
	 * 0 is the longest match.
	 *
	 * Params:
	 *     matchNum = number of the sub expression
	 *     startPos = pointer to location where to store
	 *         the start position, or %NULL
	 *     endPos = pointer to location where to store
	 *         the end position, or %NULL
	 *
	 * Returns: %TRUE if the position was fetched, %FALSE otherwise. If
	 *     the position cannot be fetched, @start_pos and @end_pos are left
	 *     unchanged
	 *
	 * Since: 2.14
	 */
	public bool fetchPos(int matchNum, out int startPos, out int endPos)
	{
		return g_match_info_fetch_pos(gMatchInfo, matchNum, &startPos, &endPos) != 0;
	}

	/**
	 * If @match_info is not %NULL, calls g_match_info_unref(); otherwise does
	 * nothing.
	 *
	 * Since: 2.14
	 */
	public void free()
	{
		g_match_info_free(gMatchInfo);
		ownedRef = false;
	}

	/**
	 * Retrieves the number of matched substrings (including substring 0,
	 * that is the whole matched text), so 1 is returned if the pattern
	 * has no substrings in it and 0 is returned if the match failed.
	 *
	 * If the last match was obtained using the DFA algorithm, that is
	 * using g_regex_match_all() or g_regex_match_all_full(), the retrieved
	 * count is not that of the number of capturing parentheses but that of
	 * the number of matched substrings.
	 *
	 * Returns: Number of matched substrings, or -1 if an error occurred
	 *
	 * Since: 2.14
	 */
	public int getMatchCount()
	{
		return g_match_info_get_match_count(gMatchInfo);
	}

	/**
	 * Returns #GRegex object used in @match_info. It belongs to Glib
	 * and must not be freed. Use g_regex_ref() if you need to keep it
	 * after you free @match_info object.
	 *
	 * Returns: #GRegex object used in @match_info
	 *
	 * Since: 2.14
	 */
	public Regex getRegex()
	{
		auto __p = g_match_info_get_regex(gMatchInfo);

		if(__p is null)
		{
			return null;
		}

		return new Regex(cast(GRegex*) __p, true);
	}

	/**
	 * Returns the string searched with @match_info. This is the
	 * string passed to g_regex_match() or g_regex_replace() so
	 * you may not free it before calling this function.
	 *
	 * Returns: the string searched with @match_info
	 *
	 * Since: 2.14
	 */
	public string getString()
	{
		return Str.toString(g_match_info_get_string(gMatchInfo));
	}

	/**
	 * Usually if the string passed to g_regex_match*() matches as far as
	 * it goes, but is too short to match the entire pattern, %FALSE is
	 * returned. There are circumstances where it might be helpful to
	 * distinguish this case from other cases in which there is no match.
	 *
	 * Consider, for example, an application where a human is required to
	 * type in data for a field with specific formatting requirements. An
	 * example might be a date in the form ddmmmyy, defined by the pattern
	 * "^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\d\d$".
	 * If the application sees the user’s keystrokes one by one, and can
	 * check that what has been typed so far is potentially valid, it is
	 * able to raise an error as soon as a mistake is made.
	 *
	 * GRegex supports the concept of partial matching by means of the
	 * %G_REGEX_MATCH_PARTIAL_SOFT and %G_REGEX_MATCH_PARTIAL_HARD flags.
	 * When they are used, the return code for
	 * g_regex_match() or g_regex_match_full() is, as usual, %TRUE
	 * for a complete match, %FALSE otherwise. But, when these functions
	 * return %FALSE, you can check if the match was partial calling
	 * g_match_info_is_partial_match().
	 *
	 * The difference between %G_REGEX_MATCH_PARTIAL_SOFT and
	 * %G_REGEX_MATCH_PARTIAL_HARD is that when a partial match is encountered
	 * with %G_REGEX_MATCH_PARTIAL_SOFT, matching continues to search for a
	 * possible complete match, while with %G_REGEX_MATCH_PARTIAL_HARD matching
	 * stops at the partial match.
	 * When both %G_REGEX_MATCH_PARTIAL_SOFT and %G_REGEX_MATCH_PARTIAL_HARD
	 * are set, the latter takes precedence.
	 *
	 * There were formerly some restrictions on the pattern for partial matching.
	 * The restrictions no longer apply.
	 *
	 * See pcrepartial(3) for more information on partial matching.
	 *
	 * Returns: %TRUE if the match was partial, %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public bool isPartialMatch()
	{
		return g_match_info_is_partial_match(gMatchInfo) != 0;
	}

	/**
	 * Returns whether the previous match operation succeeded.
	 *
	 * Returns: %TRUE if the previous match operation succeeded,
	 *     %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public bool matches()
	{
		return g_match_info_matches(gMatchInfo) != 0;
	}

	/**
	 * Scans for the next match using the same parameters of the previous
	 * call to g_regex_match_full() or g_regex_match() that returned
	 * @match_info.
	 *
	 * The match is done on the string passed to the match function, so you
	 * cannot free it before calling this function.
	 *
	 * Returns: %TRUE is the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool next()
	{
		GError* err = null;

		auto __p = g_match_info_next(gMatchInfo, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	alias doref = ref_;
	/**
	 * Increases reference count of @match_info by 1.
	 *
	 * Returns: @match_info
	 *
	 * Since: 2.30
	 */
	public MatchInfo ref_()
	{
		auto __p = g_match_info_ref(gMatchInfo);

		if(__p is null)
		{
			return null;
		}

		return new MatchInfo(cast(GMatchInfo*) __p, true);
	}

	/**
	 * Decreases reference count of @match_info by 1. When reference count drops
	 * to zero, it frees all the memory associated with the match_info structure.
	 *
	 * Since: 2.30
	 */
	public void unref()
	{
		g_match_info_unref(gMatchInfo);
	}
}
