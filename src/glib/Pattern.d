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
 * inFile  = glib-Glob-style-pattern-matching.html
 * outPack = glib
 * outFile = Pattern
 * strct   = GPatternSpec
 * realStrct=
 * ctorStrct=
 * clss    = Pattern
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_pattern_spec_
 * 	- g_pattern_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GPatternSpec* -> Pattern
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Pattern;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * The g_pattern_match* functions match a string
 * against a pattern containing '*' and '?' wildcards with similar
 * semantics as the standard glob() function: '*' matches an arbitrary,
 * possibly empty, string, '?' matches an arbitrary character.
 * Note that in contrast to glob(), the '/' character
 * can be matched by the wildcards, there are no
 * '[...]' character ranges and '*' and '?' can
 * not be escaped to include them literally in a
 * pattern.
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
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gPatternSpec !is null )
		{
			g_pattern_spec_free(gPatternSpec);
		}
	}
	
	/**
	 */
	
	/**
	 * Compiles a pattern to a GPatternSpec.
	 * Params:
	 * pattern = a zero-terminated UTF-8 encoded string
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string pattern)
	{
		// GPatternSpec * g_pattern_spec_new (const gchar *pattern);
		auto p = g_pattern_spec_new(Str.toStringz(pattern));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_pattern_spec_new(Str.toStringz(pattern))");
		}
		this(cast(GPatternSpec*) p);
	}
	
	/**
	 * Frees the memory allocated for the GPatternSpec.
	 */
	public void free()
	{
		// void g_pattern_spec_free (GPatternSpec *pspec);
		g_pattern_spec_free(gPatternSpec);
	}
	
	/**
	 * Compares two compiled pattern specs and returns whether they will
	 * match the same set of strings.
	 * Params:
	 * pspec2 = another GPatternSpec
	 * Returns: Whether the compiled patterns are equal
	 */
	public int equal(Pattern pspec2)
	{
		// gboolean g_pattern_spec_equal (GPatternSpec *pspec1,  GPatternSpec *pspec2);
		return g_pattern_spec_equal(gPatternSpec, (pspec2 is null) ? null : pspec2.getPatternStruct());
	}
	
	/**
	 * Matches a string against a compiled pattern. Passing the correct
	 * length of the string given is mandatory. The reversed string can be
	 * omitted by passing NULL, this is more efficient if the reversed
	 * version of the string to be matched is not at hand, as
	 * g_pattern_match() will only construct it if the compiled pattern
	 * requires reverse matches.
	 * Note that, if the user code will (possibly) match a string against a
	 * multitude of patterns containing wildcards, chances are high that
	 * some patterns will require a reversed string. In this case, it's
	 * more efficient to provide the reversed string to avoid multiple
	 * constructions thereof in the various calls to g_pattern_match().
	 * Note also that the reverse of a UTF-8 encoded string can in general
	 * not be obtained by g_strreverse(). This works
	 * only if the string doesn't contain any multibyte characters. GLib
	 * offers the g_utf8_strreverse() function to reverse UTF-8 encoded
	 * strings.
	 * Params:
	 * stringLength = the length of string (in bytes, i.e. strlen(),
	 * not g_utf8_strlen())
	 * string = the UTF-8 encoded string to match
	 * stringReversed = the reverse of string or NULL. [allow-none]
	 * Returns: TRUE if string matches pspec
	 */
	public int match(uint stringLength, string string, string stringReversed)
	{
		// gboolean g_pattern_match (GPatternSpec *pspec,  guint string_length,  const gchar *string,  const gchar *string_reversed);
		return g_pattern_match(gPatternSpec, stringLength, Str.toStringz(string), Str.toStringz(stringReversed));
	}
	
	/**
	 * Matches a string against a compiled pattern. If the string is to be
	 * matched against more than one pattern, consider using
	 * g_pattern_match() instead while supplying the reversed string.
	 * Params:
	 * string = the UTF-8 encoded string to match
	 * Returns: TRUE if string matches pspec
	 */
	public int matchString(string string)
	{
		// gboolean g_pattern_match_string (GPatternSpec *pspec,  const gchar *string);
		return g_pattern_match_string(gPatternSpec, Str.toStringz(string));
	}
	
	/**
	 * Matches a string against a pattern given as a string. If this
	 * function is to be called in a loop, it's more efficient to compile
	 * the pattern once with g_pattern_spec_new() and call
	 * g_pattern_match_string() repeatedly.
	 * Params:
	 * pattern = the UTF-8 encoded pattern
	 * string = the UTF-8 encoded string to match
	 * Returns: TRUE if string matches pspec
	 */
	public static int matchSimple(string pattern, string string)
	{
		// gboolean g_pattern_match_simple (const gchar *pattern,  const gchar *string);
		return g_pattern_match_simple(Str.toStringz(pattern), Str.toStringz(string));
	}
}
