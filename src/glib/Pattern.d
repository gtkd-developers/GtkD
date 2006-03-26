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
 * outPack = glib
 * outFile = Pattern
 * strct   = GPatternSpec
 * realStrct=
 * clss    = Pattern
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_pattern_spec_
 * 	- g_pattern_match_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GPatternSpec* -> Pattern
 * local aliases:
 */

module glib.Pattern;

private import glib.typedefs;

private import lib.glib;

private import glib.Str;

/**
 * Description
 * The g_pattern_match* functions match a string
 * against a pattern containing '*' and '?' wildcards with similar semantics
 * as the standard glob() function: '*' matches an arbitrary, possibly empty,
 * string, '?' matches an arbitrary character.
 * Note that in contrast to glob(), the '/' character
 * can be matched by the wildcards, there are no
 * '[...]' character ranges and '*' and '?' can not
 * be escaped to include them literally in a pattern.
 * When multiple strings must be matched against the same pattern, it
 * is better to compile the pattern to a GPatternSpec using
 * g_pattern_spec_new() and use g_pattern_match_string() instead of
 * g_pattern_match_simple(). This avoids the overhead of repeated
 * pattern compilation.
 */
public class Pattern
{
	
	/** the main Gtk struct */
	protected GPatternSpec* gPatternSpec;
	
	
	public GPatternSpec* getPatternStruct()
	{
		return gPatternSpec;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPatternSpec;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GPatternSpec* gPatternSpec)
	{
		this.gPatternSpec = gPatternSpec;
	}
	
	/**
	 */
	
	
	/**
	 * Compiles a pattern to a GPatternSpec.
	 * pattern:
	 * a zero-terminated UTF-8 encoded string.
	 * Returns:
	 * a newly-allocated GPatternSpec.
	 */
	public this (char[] pattern)
	{
		// GPatternSpec* g_pattern_spec_new (const gchar *pattern);
		this(cast(GPatternSpec*)g_pattern_spec_new(Str.toStringz(pattern)) );
	}
	
	/**
	 * Frees the memory allocated for the GPatternSpec.
	 * pspec:
	 * a GPatternSpec.
	 */
	public void free()
	{
		// void g_pattern_spec_free (GPatternSpec *pspec);
		g_pattern_spec_free(gPatternSpec);
	}
	
	/**
	 * Compares two compiled pattern specs and returns whether they
	 * will match the same set of strings.
	 * pspec1:
	 * a GPatternSpec.
	 * pspec2:
	 * another GPatternSpec.
	 * Returns:
	 * Whether the compiled patterns are equal.
	 */
	public int equal(Pattern pspec2)
	{
		// gboolean g_pattern_spec_equal (GPatternSpec *pspec1,  GPatternSpec *pspec2);
		return g_pattern_spec_equal(gPatternSpec, (pspec2 is null) ? null : pspec2.getPatternStruct());
	}
	
	/**
	 * Matches a string against a compiled pattern. Passing the correct length of the
	 * string given is mandatory. The reversed string can be omitted by passing NULL,
	 * this is more efficient if the reversed version of the string to be matched is
	 * not at hand, as g_pattern_match() will only construct it if the compiled pattern
	 * requires reverse matches.
	 * Note that, if the user code will (possibly) match a string against a multitude
	 * of patterns containing wildcards, chances are high that some patterns will
	 * require a reversed string. In this case, it's more efficient to provide the
	 * reversed string to avoid multiple constructions thereof in the various calls to
	 * g_pattern_match().
	 * Note also that the reverse of a UTF-8 encoded string can in general
	 * not be obtained by g_strreverse().
	 * This works only if the string doesn't contain any multibyte characters.
	 * Glib offers the g_utf_strreverse() function to reverse UTF-8 encoded strings.
	 * pspec:
	 * a GPatternSpec.
	 * string_length:
	 * the length of string.
	 * string:
	 * the UTF-8 encoded string to match.
	 * string_reversed:
	 * the reverse of string or NULL.
	 * Returns:
	 * TRUE if string matches pspec.
	 */
	public int gPatternMatch(uint stringLength, char[] string, char[] stringReversed)
	{
		// gboolean g_pattern_match (GPatternSpec *pspec,  guint string_length,  const gchar *string,  const gchar *string_reversed);
		return g_pattern_match(gPatternSpec, stringLength, Str.toStringz(string), Str.toStringz(stringReversed));
	}
	
	/**
	 * Matches a string against a compiled pattern. If the string is to
	 * be matched against more than one pattern, consider using
	 * g_pattern_match() instead while supplying the reversed string.
	 * pspec:
	 * a GPatternSpec.
	 * string:
	 * the UTF-8 encoded string to match.
	 * Returns:
	 * TRUE if string matches pspec.
	 */
	public int string(char[] string)
	{
		// gboolean g_pattern_match_string (GPatternSpec *pspec,  const gchar *string);
		return g_pattern_match_string(gPatternSpec, Str.toStringz(string));
	}
	
	/**
	 * Matches a string against a pattern given as a string.
	 * If this function is to be called in a loop, it's more efficient to compile
	 * the pattern once with g_pattern_spec_new() and call g_pattern_match_string()
	 * repetively.
	 * pattern:
	 * the UTF-8 encoded pattern.
	 * string:
	 * the UTF-8 encoded string to match.
	 * Returns:
	 * TRUE if string matches pspec.
	 */
	public static int simple(char[] pattern, char[] string)
	{
		// gboolean g_pattern_match_simple (const gchar *pattern,  const gchar *string);
		return g_pattern_match_simple(Str.toStringz(pattern), Str.toStringz(string));
	}
}
