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


module sourceview.SearchSettings;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Search settings.
 * 
 * A `GtkSourceSearchSettings` object represents the settings of a search. The
 * search settings can be associated with one or several
 * [class@SearchContext]s.
 */
public class SearchSettings : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSearchSettings* gtkSourceSearchSettings;

	/** Get the main Gtk struct */
	public GtkSourceSearchSettings* getSearchSettingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSearchSettings;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSearchSettings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSearchSettings* gtkSourceSearchSettings, bool ownedRef = false)
	{
		this.gtkSourceSearchSettings = gtkSourceSearchSettings;
		super(cast(GObject*)gtkSourceSearchSettings, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_search_settings_get_type();
	}

	/**
	 * Creates a new search settings object.
	 *
	 * Returns: a new search settings object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_search_settings_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSearchSettings*) __p, true);
	}

	/**
	 * Returns: whether to search at word boundaries.
	 */
	public bool getAtWordBoundaries()
	{
		return gtk_source_search_settings_get_at_word_boundaries(gtkSourceSearchSettings) != 0;
	}

	/**
	 * Returns: whether the search is case sensitive.
	 */
	public bool getCaseSensitive()
	{
		return gtk_source_search_settings_get_case_sensitive(gtkSourceSearchSettings) != 0;
	}

	/**
	 * Returns: whether to search by regular expressions.
	 */
	public bool getRegexEnabled()
	{
		return gtk_source_search_settings_get_regex_enabled(gtkSourceSearchSettings) != 0;
	}

	/**
	 * Gets the text to search.
	 *
	 * The return value must not be freed.
	 *
	 * You may be interested to call [func@utils_escape_search_text] after
	 * this function.
	 *
	 * Returns: the text to search, or %NULL if the search is disabled.
	 */
	public string getSearchText()
	{
		return Str.toString(gtk_source_search_settings_get_search_text(gtkSourceSearchSettings));
	}

	/**
	 * Returns: whether to wrap around the search.
	 */
	public bool getWrapAround()
	{
		return gtk_source_search_settings_get_wrap_around(gtkSourceSearchSettings) != 0;
	}

	/**
	 * Change whether the search is done at word boundaries.
	 *
	 * If @at_word_boundaries is %TRUE, a search match must start and end a word.
	 * The match can span multiple words. See also [method@Gtk.TextIter.starts_word] and
	 * [method@Gtk.TextIter.ends_word].
	 *
	 * Params:
	 *     atWordBoundaries = the setting.
	 */
	public void setAtWordBoundaries(bool atWordBoundaries)
	{
		gtk_source_search_settings_set_at_word_boundaries(gtkSourceSearchSettings, atWordBoundaries);
	}

	/**
	 * Enables or disables the case sensitivity for the search.
	 *
	 * Params:
	 *     caseSensitive = the setting.
	 */
	public void setCaseSensitive(bool caseSensitive)
	{
		gtk_source_search_settings_set_case_sensitive(gtkSourceSearchSettings, caseSensitive);
	}

	/**
	 * Enables or disables whether to search by regular expressions.
	 *
	 * If enabled, the [property@SearchSettings:search-text] property contains the
	 * pattern of the regular expression.
	 *
	 * [class@SearchContext] uses #GRegex when regex search is enabled. See the
	 * [Regular expression syntax](https://developer.gnome.org/glib/stable/glib-regex-syntax.html)
	 * page in the GLib reference manual.
	 *
	 * Params:
	 *     regexEnabled = the setting.
	 */
	public void setRegexEnabled(bool regexEnabled)
	{
		gtk_source_search_settings_set_regex_enabled(gtkSourceSearchSettings, regexEnabled);
	}

	/**
	 * Sets the text to search.
	 *
	 * If @search_text is %NULL or is empty, the search will be disabled. A copy of @search_text
	 * will be made, so you can safely free @search_text after a call to this function.
	 *
	 * You may be interested to call [func@utils_unescape_search_text] before
	 * this function.
	 *
	 * Params:
	 *     searchText = the nul-terminated text to search, or %NULL to disable the search.
	 */
	public void setSearchText(string searchText)
	{
		gtk_source_search_settings_set_search_text(gtkSourceSearchSettings, Str.toStringz(searchText));
	}

	/**
	 * Enables or disables the wrap around search.
	 *
	 * If @wrap_around is %TRUE, the forward search continues at the beginning of the buffer
	 * if no search occurrences are found. Similarly, the backward search continues to search at
	 * the end of the buffer.
	 *
	 * Params:
	 *     wrapAround = the setting.
	 */
	public void setWrapAround(bool wrapAround)
	{
		gtk_source_search_settings_set_wrap_around(gtkSourceSearchSettings, wrapAround);
	}
}
