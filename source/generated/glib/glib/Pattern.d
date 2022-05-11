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


module glib.Pattern;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * A GPatternSpec struct is the 'compiled' form of a pattern. This
 * structure is opaque and its fields cannot be accessed directly.
 */
public class Pattern
{
	/** the main Gtk struct */
	protected GPatternSpec* gPatternSpec;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GPatternSpec* getPatternStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gPatternSpec;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gPatternSpec;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GPatternSpec* gPatternSpec, bool ownedRef = false)
	{
		this.gPatternSpec = gPatternSpec;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_pattern_spec_free(gPatternSpec);
	}


	/**
	 * Compiles a pattern to a #GPatternSpec.
	 *
	 * Params:
	 *     pattern = a zero-terminated UTF-8 encoded string
	 *
	 * Returns: a newly-allocated #GPatternSpec
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string pattern)
	{
		auto __p = g_pattern_spec_new(Str.toStringz(pattern));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GPatternSpec*) __p);
	}

	/**
	 * Copies @pspec in a new #GPatternSpec.
	 *
	 * Returns: a copy of @pspec.
	 *
	 * Since: 2.70
	 */
	public Pattern copy()
	{
		auto __p = g_pattern_spec_copy(gPatternSpec);

		if(__p is null)
		{
			return null;
		}

		return new Pattern(cast(GPatternSpec*) __p, true);
	}

	/**
	 * Compares two compiled pattern specs and returns whether they will
	 * match the same set of strings.
	 *
	 * Params:
	 *     pspec2 = another #GPatternSpec
	 *
	 * Returns: Whether the compiled patterns are equal
	 */
	public bool equal(Pattern pspec2)
	{
		return g_pattern_spec_equal(gPatternSpec, (pspec2 is null) ? null : pspec2.getPatternStruct()) != 0;
	}

	/**
	 * Frees the memory allocated for the #GPatternSpec.
	 */
	public void free()
	{
		g_pattern_spec_free(gPatternSpec);
		ownedRef = false;
	}

	/**
	 * Matches a string against a compiled pattern. Passing the correct
	 * length of the string given is mandatory. The reversed string can be
	 * omitted by passing %NULL, this is more efficient if the reversed
	 * version of the string to be matched is not at hand, as
	 * g_pattern_match() will only construct it if the compiled pattern
	 * requires reverse matches.
	 *
	 * Note that, if the user code will (possibly) match a string against a
	 * multitude of patterns containing wildcards, chances are high that
	 * some patterns will require a reversed string. In this case, it's
	 * more efficient to provide the reversed string to avoid multiple
	 * constructions thereof in the various calls to g_pattern_match().
	 *
	 * Note also that the reverse of a UTF-8 encoded string can in general
	 * not be obtained by g_strreverse(). This works only if the string
	 * does not contain any multibyte characters. GLib offers the
	 * g_utf8_strreverse() function to reverse UTF-8 encoded strings.
	 *
	 * Params:
	 *     stringLength = the length of @string (in bytes, i.e. strlen(),
	 *         not g_utf8_strlen())
	 *     string_ = the UTF-8 encoded string to match
	 *     stringReversed = the reverse of @string or %NULL
	 *
	 * Returns: %TRUE if @string matches @pspec
	 *
	 * Since: 2.70
	 */
	public bool match(size_t stringLength, string string_, string stringReversed)
	{
		return g_pattern_spec_match(gPatternSpec, stringLength, Str.toStringz(string_), Str.toStringz(stringReversed)) != 0;
	}

	/**
	 * Matches a string against a compiled pattern. If the string is to be
	 * matched against more than one pattern, consider using
	 * g_pattern_match() instead while supplying the reversed string.
	 *
	 * Params:
	 *     string_ = the UTF-8 encoded string to match
	 *
	 * Returns: %TRUE if @string matches @pspec
	 *
	 * Since: 2.70
	 */
	public bool matchString(string string_)
	{
		return g_pattern_spec_match_string(gPatternSpec, Str.toStringz(string_)) != 0;
	}

	/**
	 * Matches a string against a compiled pattern. Passing the correct
	 * length of the string given is mandatory. The reversed string can be
	 * omitted by passing %NULL, this is more efficient if the reversed
	 * version of the string to be matched is not at hand, as
	 * g_pattern_match() will only construct it if the compiled pattern
	 * requires reverse matches.
	 *
	 * Note that, if the user code will (possibly) match a string against a
	 * multitude of patterns containing wildcards, chances are high that
	 * some patterns will require a reversed string. In this case, it's
	 * more efficient to provide the reversed string to avoid multiple
	 * constructions thereof in the various calls to g_pattern_match().
	 *
	 * Note also that the reverse of a UTF-8 encoded string can in general
	 * not be obtained by g_strreverse(). This works only if the string
	 * does not contain any multibyte characters. GLib offers the
	 * g_utf8_strreverse() function to reverse UTF-8 encoded strings.
	 *
	 * Deprecated: Use g_pattern_spec_match() instead
	 *
	 * Params:
	 *     pspec = a #GPatternSpec
	 *     stringLength = the length of @string (in bytes, i.e. strlen(),
	 *         not g_utf8_strlen())
	 *     string_ = the UTF-8 encoded string to match
	 *     stringReversed = the reverse of @string or %NULL
	 *
	 * Returns: %TRUE if @string matches @pspec
	 */
	public static bool patternMatch(Pattern pspec, uint stringLength, string string_, string stringReversed)
	{
		return g_pattern_match((pspec is null) ? null : pspec.getPatternStruct(), stringLength, Str.toStringz(string_), Str.toStringz(stringReversed)) != 0;
	}

	/**
	 * Matches a string against a pattern given as a string. If this
	 * function is to be called in a loop, it's more efficient to compile
	 * the pattern once with g_pattern_spec_new() and call
	 * g_pattern_match_string() repeatedly.
	 *
	 * Params:
	 *     pattern = the UTF-8 encoded pattern
	 *     string_ = the UTF-8 encoded string to match
	 *
	 * Returns: %TRUE if @string matches @pspec
	 */
	public static bool patternMatchSimple(string pattern, string string_)
	{
		return g_pattern_match_simple(Str.toStringz(pattern), Str.toStringz(string_)) != 0;
	}

	/**
	 * Matches a string against a compiled pattern. If the string is to be
	 * matched against more than one pattern, consider using
	 * g_pattern_match() instead while supplying the reversed string.
	 *
	 * Deprecated: Use g_pattern_spec_match_string() instead
	 *
	 * Params:
	 *     pspec = a #GPatternSpec
	 *     string_ = the UTF-8 encoded string to match
	 *
	 * Returns: %TRUE if @string matches @pspec
	 */
	public static bool patternMatchString(Pattern pspec, string string_)
	{
		return g_pattern_match_string((pspec is null) ? null : pspec.getPatternStruct(), Str.toStringz(string_)) != 0;
	}
}
