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


module glib.Regex;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MatchInfo;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * The g_regex_*() functions implement regular
 * expression pattern matching using syntax and semantics similar to
 * Perl regular expression.
 * 
 * Some functions accept a @start_position argument, setting it differs
 * from just passing over a shortened string and setting #G_REGEX_MATCH_NOTBOL
 * in the case of a pattern that begins with any kind of lookbehind assertion.
 * For example, consider the pattern "\Biss\B" which finds occurrences of "iss"
 * in the middle of words. ("\B" matches only if the current position in the
 * subject is not a word boundary.) When applied to the string "Mississipi"
 * from the fourth byte, namely "issipi", it does not match, because "\B" is
 * always false at the start of the subject, which is deemed to be a word
 * boundary. However, if the entire string is passed , but with
 * @start_position set to 4, it finds the second occurrence of "iss" because
 * it is able to look behind the starting point to discover that it is
 * preceded by a letter.
 * 
 * Note that, unless you set the #G_REGEX_RAW flag, all the strings passed
 * to these functions must be encoded in UTF-8. The lengths and the positions
 * inside the strings are in bytes and not in characters, so, for instance,
 * "\xc3\xa0" (i.e. "&agrave;") is two bytes long but it is treated as a
 * single character. If you set #G_REGEX_RAW the strings can be non-valid
 * UTF-8 strings and a byte is treated as a character, so "\xc3\xa0" is two
 * bytes and two characters long.
 * 
 * When matching a pattern, "\n" matches only against a "\n" character in
 * the string, and "\r" matches only a "\r" character. To match any newline
 * sequence use "\R". This particular group matches either the two-character
 * sequence CR + LF ("\r\n"), or one of the single characters LF (linefeed,
 * U+000A, "\n"), VT vertical tab, U+000B, "\v"), FF (formfeed, U+000C, "\f"),
 * CR (carriage return, U+000D, "\r"), NEL (next line, U+0085), LS (line
 * separator, U+2028), or PS (paragraph separator, U+2029).
 * 
 * The behaviour of the dot, circumflex, and dollar metacharacters are
 * affected by newline characters, the default is to recognize any newline
 * character (the same characters recognized by "\R"). This can be changed
 * with #G_REGEX_NEWLINE_CR, #G_REGEX_NEWLINE_LF and #G_REGEX_NEWLINE_CRLF
 * compile options, and with #G_REGEX_MATCH_NEWLINE_ANY,
 * #G_REGEX_MATCH_NEWLINE_CR, #G_REGEX_MATCH_NEWLINE_LF and
 * #G_REGEX_MATCH_NEWLINE_CRLF match options. These settings are also
 * relevant when compiling a pattern if #G_REGEX_EXTENDED is set, and an
 * unescaped "#" outside a character class is encountered. This indicates
 * a comment that lasts until after the next newline.
 * 
 * When setting the %G_REGEX_JAVASCRIPT_COMPAT flag, pattern syntax and pattern
 * matching is changed to be compatible with the way that regular expressions
 * work in JavaScript. More precisely, a lonely ']' character in the pattern
 * is a syntax error; the '\x' escape only allows 0 to 2 hexadecimal digits, and
 * you must use the '\u' escape sequence with 4 hex digits to specify a unicode
 * codepoint instead of '\x' or 'x{....}'. If '\x' or '\u' are not followed by
 * the specified number of hex digits, they match 'x' and 'u' literally; also
 * '\U' always matches 'U' instead of being an error in the pattern. Finally,
 * pattern matching is modified so that back references to an unset subpattern
 * group produces a match with the empty string instead of an error. See
 * pcreapi(3) for more information.
 * 
 * Creating and manipulating the same #GRegex structure from different
 * threads is not a problem as #GRegex does not modify its internal
 * state between creation and destruction, on the other hand #GMatchInfo
 * is not threadsafe.
 * 
 * The regular expressions low-level functionalities are obtained through
 * the excellent
 * [PCRE](http://www.pcre.org/)
 * library written by Philip Hazel.
 *
 * Since: 2.14
 */
public class Regex
{
	/** the main Gtk struct */
	protected GRegex* gRegex;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GRegex* getRegexStruct()
	{
		return gRegex;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRegex;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GRegex* gRegex, bool ownedRef = false)
	{
		this.gRegex = gRegex;
		this.ownedRef = ownedRef;
	}


	/**
	 * Compiles the regular expression to an internal form, and does
	 * the initial setup of the #GRegex structure.
	 *
	 * Params:
	 *     pattern = the regular expression
	 *     compileOptions = compile options for the regular expression, or 0
	 *     matchOptions = match options for the regular expression, or 0
	 *
	 * Return: a #GRegex structure or %NULL if an error occured. Call
	 *     g_regex_unref() when you are done with it
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions)
	{
		GError* err = null;
		
		auto p = g_regex_new(Str.toStringz(pattern), compileOptions, matchOptions, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GRegex*) p);
	}

	/**
	 * Returns the number of capturing subpatterns in the pattern.
	 *
	 * Return: the number of capturing subpatterns
	 *
	 * Since: 2.14
	 */
	public int getCaptureCount()
	{
		return g_regex_get_capture_count(gRegex);
	}

	/**
	 * Returns the compile options that @regex was created with.
	 *
	 * Return: flags from #GRegexCompileFlags
	 *
	 * Since: 2.26
	 */
	public GRegexCompileFlags getCompileFlags()
	{
		return g_regex_get_compile_flags(gRegex);
	}

	/**
	 * Checks whether the pattern contains explicit CR or LF references.
	 *
	 * Return: %TRUE if the pattern contains explicit CR or LF references
	 *
	 * Since: 2.34
	 */
	public bool getHasCrOrLf()
	{
		return g_regex_get_has_cr_or_lf(gRegex) != 0;
	}

	/**
	 * Returns the match options that @regex was created with.
	 *
	 * Return: flags from #GRegexMatchFlags
	 *
	 * Since: 2.26
	 */
	public GRegexMatchFlags getMatchFlags()
	{
		return g_regex_get_match_flags(gRegex);
	}

	/**
	 * Returns the number of the highest back reference
	 * in the pattern, or 0 if the pattern does not contain
	 * back references.
	 *
	 * Return: the number of the highest back reference
	 *
	 * Since: 2.14
	 */
	public int getMaxBackref()
	{
		return g_regex_get_max_backref(gRegex);
	}

	/**
	 * Gets the number of characters in the longest lookbehind assertion in the
	 * pattern. This information is useful when doing multi-segment matching using
	 * the partial matching facilities.
	 *
	 * Return: the number of characters in the longest lookbehind assertion.
	 *
	 * Since: 2.38
	 */
	public int getMaxLookbehind()
	{
		return g_regex_get_max_lookbehind(gRegex);
	}

	/**
	 * Gets the pattern string associated with @regex, i.e. a copy of
	 * the string passed to g_regex_new().
	 *
	 * Return: the pattern of @regex
	 *
	 * Since: 2.14
	 */
	public string getPattern()
	{
		return Str.toString(g_regex_get_pattern(gRegex));
	}

	/**
	 * Retrieves the number of the subexpression named @name.
	 *
	 * Params:
	 *     name = name of the subexpression
	 *
	 * Return: The number of the subexpression or -1 if @name
	 *     does not exists
	 *
	 * Since: 2.14
	 */
	public int getStringNumber(string name)
	{
		return g_regex_get_string_number(gRegex, Str.toStringz(name));
	}

	/**
	 * Scans for a match in string for the pattern in @regex.
	 * The @match_options are combined with the match options specified
	 * when the @regex structure was created, letting you have more
	 * flexibility in reusing #GRegex structures.
	 *
	 * A #GMatchInfo structure, used to get information on the match,
	 * is stored in @match_info if not %NULL. Note that if @match_info
	 * is not %NULL then it is created even if the function returns %FALSE,
	 * i.e. you must free it regardless if regular expression actually matched.
	 *
	 * To retrieve all the non-overlapping matches of the pattern in
	 * string you can use g_match_info_next().
	 *
	 * |[<!-- language="C" -->
	 * static void
	 * print_uppercase_words (const gchar *string)
	 * {
	 * // Print all uppercase-only words.
	 * GRegex *regex;
	 * GMatchInfo *match_info;
	 *
	 * regex = g_regex_new ("[A-Z]+", 0, 0, NULL);
	 * g_regex_match (regex, string, 0, &match_info);
	 * while (g_match_info_matches (match_info))
	 * {
	 * gchar *word = g_match_info_fetch (match_info, 0);
	 * g_print ("Found: %s\n", word);
	 * g_free (word);
	 * g_match_info_next (match_info, NULL);
	 * }
	 * g_match_info_free (match_info);
	 * g_regex_unref (regex);
	 * }
	 * ]|
	 *
	 * @string is not copied and is used in #GMatchInfo internally. If
	 * you use any #GMatchInfo method (except g_match_info_free()) after
	 * freeing or modifying @string then the behaviour is undefined.
	 *
	 * Params:
	 *     str = the string to scan for matches
	 *     matchOptions = match options
	 *     matchInfo = pointer to location where to store
	 *         the #GMatchInfo, or %NULL if you do not need it
	 *
	 * Return: %TRUE is the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public bool match(string str, GRegexMatchFlags matchOptions, out MatchInfo matchInfo)
	{
		GMatchInfo* outmatchInfo = null;
		
		auto p = g_regex_match(gRegex, Str.toStringz(str), matchOptions, &outmatchInfo) != 0;
		
		matchInfo = new MatchInfo(outmatchInfo);
		
		return p;
	}

	/**
	 * Using the standard algorithm for regular expression matching only
	 * the longest match in the string is retrieved. This function uses
	 * a different algorithm so it can retrieve all the possible matches.
	 * For more documentation see g_regex_match_all_full().
	 *
	 * A #GMatchInfo structure, used to get information on the match, is
	 * stored in @match_info if not %NULL. Note that if @match_info is
	 * not %NULL then it is created even if the function returns %FALSE,
	 * i.e. you must free it regardless if regular expression actually
	 * matched.
	 *
	 * @string is not copied and is used in #GMatchInfo internally. If
	 * you use any #GMatchInfo method (except g_match_info_free()) after
	 * freeing or modifying @string then the behaviour is undefined.
	 *
	 * Params:
	 *     str = the string to scan for matches
	 *     matchOptions = match options
	 *     matchInfo = pointer to location where to store
	 *         the #GMatchInfo, or %NULL if you do not need it
	 *
	 * Return: %TRUE is the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public bool matchAll(string str, GRegexMatchFlags matchOptions, out MatchInfo matchInfo)
	{
		GMatchInfo* outmatchInfo = null;
		
		auto p = g_regex_match_all(gRegex, Str.toStringz(str), matchOptions, &outmatchInfo) != 0;
		
		matchInfo = new MatchInfo(outmatchInfo);
		
		return p;
	}

	/**
	 * Using the standard algorithm for regular expression matching only
	 * the longest match in the string is retrieved, it is not possible
	 * to obtain all the available matches. For instance matching
	 * "<a> <b> <c>" against the pattern "<.*>"
	 * you get "<a> <b> <c>".
	 *
	 * This function uses a different algorithm (called DFA, i.e. deterministic
	 * finite automaton), so it can retrieve all the possible matches, all
	 * starting at the same point in the string. For instance matching
	 * "<a> <b> <c>" against the pattern "<.*>;"
	 * you would obtain three matches: "<a> <b> <c>",
	 * "<a> <b>" and "<a>".
	 *
	 * The number of matched strings is retrieved using
	 * g_match_info_get_match_count(). To obtain the matched strings and
	 * their position you can use, respectively, g_match_info_fetch() and
	 * g_match_info_fetch_pos(). Note that the strings are returned in
	 * reverse order of length; that is, the longest matching string is
	 * given first.
	 *
	 * Note that the DFA algorithm is slower than the standard one and it
	 * is not able to capture substrings, so backreferences do not work.
	 *
	 * Setting @start_position differs from just passing over a shortened
	 * string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
	 * that begins with any kind of lookbehind assertion, such as "\b".
	 *
	 * A #GMatchInfo structure, used to get information on the match, is
	 * stored in @match_info if not %NULL. Note that if @match_info is
	 * not %NULL then it is created even if the function returns %FALSE,
	 * i.e. you must free it regardless if regular expression actually
	 * matched.
	 *
	 * @string is not copied and is used in #GMatchInfo internally. If
	 * you use any #GMatchInfo method (except g_match_info_free()) after
	 * freeing or modifying @string then the behaviour is undefined.
	 *
	 * Params:
	 *     str = the string to scan for matches
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     matchOptions = match options
	 *     matchInfo = pointer to location where to store
	 *         the #GMatchInfo, or %NULL if you do not need it
	 *
	 * Return: %TRUE is the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool matchAllFull(string str, int startPosition, GRegexMatchFlags matchOptions, out MatchInfo matchInfo)
	{
		GMatchInfo* outmatchInfo = null;
		GError* err = null;
		
		auto p = g_regex_match_all_full(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, matchOptions, &outmatchInfo, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		matchInfo = new MatchInfo(outmatchInfo);
		
		return p;
	}

	/**
	 * Scans for a match in string for the pattern in @regex.
	 * The @match_options are combined with the match options specified
	 * when the @regex structure was created, letting you have more
	 * flexibility in reusing #GRegex structures.
	 *
	 * Setting @start_position differs from just passing over a shortened
	 * string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
	 * that begins with any kind of lookbehind assertion, such as "\b".
	 *
	 * A #GMatchInfo structure, used to get information on the match, is
	 * stored in @match_info if not %NULL. Note that if @match_info is
	 * not %NULL then it is created even if the function returns %FALSE,
	 * i.e. you must free it regardless if regular expression actually
	 * matched.
	 *
	 * @string is not copied and is used in #GMatchInfo internally. If
	 * you use any #GMatchInfo method (except g_match_info_free()) after
	 * freeing or modifying @string then the behaviour is undefined.
	 *
	 * To retrieve all the non-overlapping matches of the pattern in
	 * string you can use g_match_info_next().
	 *
	 * |[<!-- language="C" -->
	 * static void
	 * print_uppercase_words (const gchar *string)
	 * {
	 * // Print all uppercase-only words.
	 * GRegex *regex;
	 * GMatchInfo *match_info;
	 * GError *error = NULL;
	 *
	 * regex = g_regex_new ("[A-Z]+", 0, 0, NULL);
	 * g_regex_match_full (regex, string, -1, 0, 0, &match_info, &error);
	 * while (g_match_info_matches (match_info))
	 * {
	 * gchar *word = g_match_info_fetch (match_info, 0);
	 * g_print ("Found: %s\n", word);
	 * g_free (word);
	 * g_match_info_next (match_info, &error);
	 * }
	 * g_match_info_free (match_info);
	 * g_regex_unref (regex);
	 * if (error != NULL)
	 * {
	 * g_printerr ("Error while matching: %s\n", error->message);
	 * g_error_free (error);
	 * }
	 * }
	 * ]|
	 *
	 * Params:
	 *     str = the string to scan for matches
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     matchOptions = match options
	 *     matchInfo = pointer to location where to store
	 *         the #GMatchInfo, or %NULL if you do not need it
	 *
	 * Return: %TRUE is the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool matchFull(string str, int startPosition, GRegexMatchFlags matchOptions, out MatchInfo matchInfo)
	{
		GMatchInfo* outmatchInfo = null;
		GError* err = null;
		
		auto p = g_regex_match_full(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, matchOptions, &outmatchInfo, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		matchInfo = new MatchInfo(outmatchInfo);
		
		return p;
	}

	/**
	 * Increases reference count of @regex by 1.
	 *
	 * Return: @regex
	 *
	 * Since: 2.14
	 */
	public Regex doref()
	{
		auto p = g_regex_ref(gRegex);
		
		if(p is null)
		{
			return null;
		}
		
		return new Regex(cast(GRegex*) p, true);
	}

	/**
	 * Replaces all occurrences of the pattern in @regex with the
	 * replacement text. Backreferences of the form '\number' or
	 * '\g<number>' in the replacement text are interpolated by the
	 * number-th captured subexpression of the match, '\g<name>' refers
	 * to the captured subexpression with the given name. '\0' refers
	 * to the complete match, but '\0' followed by a number is the octal
	 * representation of a character. To include a literal '\' in the
	 * replacement, write '\\'.
	 *
	 * There are also escapes that changes the case of the following text:
	 *
	 * - \l: Convert to lower case the next character
	 * - \u: Convert to upper case the next character
	 * - \L: Convert to lower case till \E
	 * - \U: Convert to upper case till \E
	 * - \E: End case modification
	 *
	 * If you do not need to use backreferences use g_regex_replace_literal().
	 *
	 * The @replacement string must be UTF-8 encoded even if #G_REGEX_RAW was
	 * passed to g_regex_new(). If you want to use not UTF-8 encoded stings
	 * you can use g_regex_replace_literal().
	 *
	 * Setting @start_position differs from just passing over a shortened
	 * string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern that
	 * begins with any kind of lookbehind assertion, such as "\b".
	 *
	 * Params:
	 *     str = the string to perform matches against
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     replacement = text to replace each match with
	 *     matchOptions = options for the match
	 *
	 * Return: a newly allocated string containing the replacements
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public string replace(string str, int startPosition, string replacement, GRegexMatchFlags matchOptions)
	{
		GError* err = null;
		
		auto retStr = g_regex_replace(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, Str.toStringz(replacement), matchOptions, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Replaces occurrences of the pattern in regex with the output of
	 * @eval for that occurrence.
	 *
	 * Setting @start_position differs from just passing over a shortened
	 * string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
	 * that begins with any kind of lookbehind assertion, such as "\b".
	 *
	 * The following example uses g_regex_replace_eval() to replace multiple
	 * strings at once:
	 * |[<!-- language="C" -->
	 * static gboolean
	 * eval_cb (const GMatchInfo *info,
	 * GString          *res,
	 * gpointer          data)
	 * {
	 * gchar *match;
	 * gchar *r;
	 *
	 * match = g_match_info_fetch (info, 0);
	 * r = g_hash_table_lookup ((GHashTable *)data, match);
	 * g_string_append (res, r);
	 * g_free (match);
	 *
	 * return FALSE;
	 * }
	 *
	 * ...
	 *
	 * GRegex *reg;
	 * GHashTable *h;
	 * gchar *res;
	 *
	 * h = g_hash_table_new (g_str_hash, g_str_equal);
	 *
	 * g_hash_table_insert (h, "1", "ONE");
	 * g_hash_table_insert (h, "2", "TWO");
	 * g_hash_table_insert (h, "3", "THREE");
	 * g_hash_table_insert (h, "4", "FOUR");
	 *
	 * reg = g_regex_new ("1|2|3|4", 0, 0, NULL);
	 * res = g_regex_replace_eval (reg, text, -1, 0, 0, eval_cb, h, NULL);
	 * g_hash_table_destroy (h);
	 *
	 * ...
	 * ]|
	 *
	 * Params:
	 *     str = string to perform matches against
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     matchOptions = options for the match
	 *     eval = a function to call for each match
	 *     userData = user data to pass to the function
	 *
	 * Return: a newly allocated string containing the replacements
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public string replaceEval(string str, int startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, void* userData)
	{
		GError* err = null;
		
		auto retStr = g_regex_replace_eval(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, matchOptions, eval, userData, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Replaces all occurrences of the pattern in @regex with the
	 * replacement text. @replacement is replaced literally, to
	 * include backreferences use g_regex_replace().
	 *
	 * Setting @start_position differs from just passing over a
	 * shortened string and setting #G_REGEX_MATCH_NOTBOL in the
	 * case of a pattern that begins with any kind of lookbehind
	 * assertion, such as "\b".
	 *
	 * Params:
	 *     str = the string to perform matches against
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     replacement = text to replace each match with
	 *     matchOptions = options for the match
	 *
	 * Return: a newly allocated string containing the replacements
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public string replaceLiteral(string str, int startPosition, string replacement, GRegexMatchFlags matchOptions)
	{
		GError* err = null;
		
		auto retStr = g_regex_replace_literal(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, Str.toStringz(replacement), matchOptions, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Breaks the string on the pattern, and returns an array of the tokens.
	 * If the pattern contains capturing parentheses, then the text for each
	 * of the substrings will also be returned. If the pattern does not match
	 * anywhere in the string, then the whole string is returned as the first
	 * token.
	 *
	 * As a special case, the result of splitting the empty string "" is an
	 * empty vector, not a vector containing a single string. The reason for
	 * this special case is that being able to represent a empty vector is
	 * typically more useful than consistent handling of empty elements. If
	 * you do need to represent empty elements, you'll need to check for the
	 * empty string before calling this function.
	 *
	 * A pattern that can match empty strings splits @string into separate
	 * characters wherever it matches the empty string between characters.
	 * For example splitting "ab c" using as a separator "\s*", you will get
	 * "a", "b" and "c".
	 *
	 * Params:
	 *     str = the string to split with the pattern
	 *     matchOptions = match time option flags
	 *
	 * Return: a %NULL-terminated gchar ** array. Free
	 *     it using g_strfreev()
	 *
	 * Since: 2.14
	 */
	public string[] split(string str, GRegexMatchFlags matchOptions)
	{
		auto retStr = g_regex_split(gRegex, Str.toStringz(str), matchOptions);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Breaks the string on the pattern, and returns an array of the tokens.
	 * If the pattern contains capturing parentheses, then the text for each
	 * of the substrings will also be returned. If the pattern does not match
	 * anywhere in the string, then the whole string is returned as the first
	 * token.
	 *
	 * As a special case, the result of splitting the empty string "" is an
	 * empty vector, not a vector containing a single string. The reason for
	 * this special case is that being able to represent a empty vector is
	 * typically more useful than consistent handling of empty elements. If
	 * you do need to represent empty elements, you'll need to check for the
	 * empty string before calling this function.
	 *
	 * A pattern that can match empty strings splits @string into separate
	 * characters wherever it matches the empty string between characters.
	 * For example splitting "ab c" using as a separator "\s*", you will get
	 * "a", "b" and "c".
	 *
	 * Setting @start_position differs from just passing over a shortened
	 * string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
	 * that begins with any kind of lookbehind assertion, such as "\b".
	 *
	 * Params:
	 *     str = the string to split with the pattern
	 *     stringLen = the length of @string, or -1 if @string is nul-terminated
	 *     startPosition = starting index of the string to match, in bytes
	 *     matchOptions = match time option flags
	 *     maxTokens = the maximum number of tokens to split @string into.
	 *         If this is less than 1, the string is split completely
	 *
	 * Return: a %NULL-terminated gchar ** array. Free
	 *     it using g_strfreev()
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public string[] splitFull(string str, int startPosition, GRegexMatchFlags matchOptions, int maxTokens)
	{
		GError* err = null;
		
		auto retStr = g_regex_split_full(gRegex, Str.toStringz(str), cast(ptrdiff_t)str.length, startPosition, matchOptions, maxTokens, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Decreases reference count of @regex by 1. When reference count drops
	 * to zero, it frees all the memory associated with the regex structure.
	 *
	 * Since: 2.14
	 */
	public void unref()
	{
		g_regex_unref(gRegex);
	}

	/**
	 * Checks whether @replacement is a valid replacement string
	 * (see g_regex_replace()), i.e. that all escape sequences in
	 * it are valid.
	 *
	 * If @has_references is not %NULL then @replacement is checked
	 * for pattern references. For instance, replacement text 'foo\n'
	 * does not contain references and may be evaluated without information
	 * about actual match, but '\0\1' (whole match followed by first
	 * subpattern) requires valid #GMatchInfo object.
	 *
	 * Params:
	 *     replacement = the replacement string
	 *     hasReferences = location to store information about
	 *         references in @replacement or %NULL
	 *
	 * Return: whether @replacement is a valid replacement string
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public static bool checkReplacement(string replacement, out bool hasReferences)
	{
		int outhasReferences;
		GError* err = null;
		
		auto p = g_regex_check_replacement(Str.toStringz(replacement), &outhasReferences, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		hasReferences = (outhasReferences == 1);
		
		return p;
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_regex_error_quark();
	}

	/**
	 * Escapes the nul characters in @string to "\x00".  It can be used
	 * to compile a regex with embedded nul characters.
	 *
	 * For completeness, @length can be -1 for a nul-terminated string.
	 * In this case the output string will be of course equal to @string.
	 *
	 * Params:
	 *     str = the string to escape
	 *     length = the length of @string
	 *
	 * Return: a newly-allocated escaped string
	 *
	 * Since: 2.30
	 */
	public static string escapeNul(string str, int length)
	{
		auto retStr = g_regex_escape_nul(Str.toStringz(str), length);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Escapes the special characters used for regular expressions
	 * in @string, for instance "a.b*c" becomes "a\.b\*c". This
	 * function is useful to dynamically generate regular expressions.
	 *
	 * @string can contain nul characters that are replaced with "\0",
	 * in this case remember to specify the correct length of @string
	 * in @length.
	 *
	 * Params:
	 *     str = the string to escape
	 *     length = the length of @string, or -1 if @string is nul-terminated
	 *
	 * Return: a newly-allocated escaped string
	 *
	 * Since: 2.14
	 */
	public static string escapeString(string str)
	{
		auto retStr = g_regex_escape_string(Str.toStringz(str), cast(int)str.length);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Scans for a match in @string for @pattern.
	 *
	 * This function is equivalent to g_regex_match() but it does not
	 * require to compile the pattern with g_regex_new(), avoiding some
	 * lines of code when you need just to do a match without extracting
	 * substrings, capture counts, and so on.
	 *
	 * If this function is to be called on the same @pattern more than
	 * once, it's more efficient to compile the pattern once with
	 * g_regex_new() and then use g_regex_match().
	 *
	 * Params:
	 *     pattern = the regular expression
	 *     str = the string to scan for matches
	 *     compileOptions = compile options for the regular expression, or 0
	 *     matchOptions = match options, or 0
	 *
	 * Return: %TRUE if the string matched, %FALSE otherwise
	 *
	 * Since: 2.14
	 */
	public static bool matchSimple(string pattern, string str, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions)
	{
		return g_regex_match_simple(Str.toStringz(pattern), Str.toStringz(str), compileOptions, matchOptions) != 0;
	}

	/**
	 * Breaks the string on the pattern, and returns an array of
	 * the tokens. If the pattern contains capturing parentheses,
	 * then the text for each of the substrings will also be returned.
	 * If the pattern does not match anywhere in the string, then the
	 * whole string is returned as the first token.
	 *
	 * This function is equivalent to g_regex_split() but it does
	 * not require to compile the pattern with g_regex_new(), avoiding
	 * some lines of code when you need just to do a split without
	 * extracting substrings, capture counts, and so on.
	 *
	 * If this function is to be called on the same @pattern more than
	 * once, it's more efficient to compile the pattern once with
	 * g_regex_new() and then use g_regex_split().
	 *
	 * As a special case, the result of splitting the empty string ""
	 * is an empty vector, not a vector containing a single string.
	 * The reason for this special case is that being able to represent
	 * a empty vector is typically more useful than consistent handling
	 * of empty elements. If you do need to represent empty elements,
	 * you'll need to check for the empty string before calling this
	 * function.
	 *
	 * A pattern that can match empty strings splits @string into
	 * separate characters wherever it matches the empty string between
	 * characters. For example splitting "ab c" using as a separator
	 * "\s*", you will get "a", "b" and "c".
	 *
	 * Params:
	 *     pattern = the regular expression
	 *     str = the string to scan for matches
	 *     compileOptions = compile options for the regular expression, or 0
	 *     matchOptions = match options, or 0
	 *
	 * Return: a %NULL-terminated array of strings. Free
	 *     it using g_strfreev()
	 *
	 * Since: 2.14
	 */
	public static string[] splitSimple(string pattern, string str, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions)
	{
		auto retStr = g_regex_split_simple(Str.toStringz(pattern), Str.toStringz(str), compileOptions, matchOptions);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}
}
