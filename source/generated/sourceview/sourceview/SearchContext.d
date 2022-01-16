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


module sourceview.SearchContext;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.TextIter;
private import sourceview.Buffer;
private import sourceview.SearchSettings;
private import sourceview.Style;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Search context.
 * 
 * A `GtkSourceSearchContext` is used for the search and replace in a
 * [class@Buffer]. The search settings are represented by a
 * [class@SearchSettings] object. There can be a many-to-many relationship
 * between buffers and search settings, with the search contexts in-between: a
 * search settings object can be shared between several search contexts; and a
 * buffer can contain several search contexts at the same time.
 * 
 * The total number of search occurrences can be retrieved with
 * [method@SearchContext.get_occurrences_count]. To know the position of a
 * certain match, use [method@SearchContext.get_occurrence_position].
 * 
 * The buffer is scanned asynchronously, so it doesn't block the user interface.
 * For each search, the buffer is scanned at most once. After that, navigating
 * through the occurrences doesn't require to re-scan the buffer entirely.
 * 
 * To search forward, use [method@SearchContext.forward] or
 * [method@SearchContext.forward_async] for the asynchronous version.
 * The backward search is done similarly. To replace a search match, or all
 * matches, use [method@SearchContext.replace] and
 * [method@SearchContext.replace_all].
 * 
 * The search occurrences are highlighted by default. To disable it, use
 * [method@SearchContext.set_highlight]. You can enable the search
 * highlighting for several `GtkSourceSearchContext`s attached to the
 * same buffer. Moreover, each of those `GtkSourceSearchContext`s can
 * have a different text style associated. Use
 * [method@SearchContext.set_match_style] to specify the [class@Style]
 * to apply on search matches.
 * 
 * Note that the [property@SearchContext:highlight] and
 * [property@SearchContext:match-style] properties are in the
 * `GtkSourceSearchContext` class, not [class@SearchSettings]. Appearance
 * settings should be tied to one, and only one buffer, as different buffers can
 * have different style scheme associated (a [class@SearchSettings] object
 * can be bound indirectly to several buffers).
 * 
 * The concept of "current match" doesn't exist yet. A way to highlight
 * differently the current match is to select it.
 * 
 * A search occurrence's position doesn't depend on the cursor position or other
 * parameters. Take for instance the buffer "aaaa" with the search text "aa".
 * The two occurrences are at positions [0:2] and [2:4]. If you begin to search
 * at position 1, you will get the occurrence [2:4], not [1:3]. This is a
 * prerequisite for regular expression searches. The pattern ".*" matches the
 * entire line. If the cursor is at the middle of the line, you don't want the
 * rest of the line as the occurrence, you want an entire line. (As a side note,
 * regular expression searches can also match multiple lines.)
 * 
 * In the GtkSourceView source code, there is an example of how to use the
 * search and replace API: see the tests/test-search.c file. It is a mini
 * application for the search and replace, with a basic user interface.
 */
public class SearchContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSearchContext* gtkSourceSearchContext;

	/** Get the main Gtk struct */
	public GtkSourceSearchContext* getSearchContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSearchContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSearchContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSearchContext* gtkSourceSearchContext, bool ownedRef = false)
	{
		this.gtkSourceSearchContext = gtkSourceSearchContext;
		super(cast(GObject*)gtkSourceSearchContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_search_context_get_type();
	}

	/**
	 * Creates a new search context, associated with @buffer, and customized with
	 * @settings.
	 *
	 * If @settings is %NULL, a new [class@SearchSettings] object will
	 * be created, that you can retrieve with [method@SearchContext.get_settings].
	 *
	 * Params:
	 *     buffer = a #GtkSourceBuffer.
	 *     settings = a #GtkSourceSearchSettings, or %NULL.
	 *
	 * Returns: a new search context.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, SearchSettings settings)
	{
		auto __p = gtk_source_search_context_new((buffer is null) ? null : buffer.getBufferStruct(), (settings is null) ? null : settings.getSearchSettingsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSearchContext*) __p, true);
	}

	/**
	 * Synchronous backward search.
	 *
	 * It is recommended to use the asynchronous functions instead, to not block the user interface.
	 * However, if you are sure that the @buffer is small, this function is more convenient to use.
	 *
	 * If the [property@SearchSettings:wrap-around] property is %FALSE, this function
	 * doesn't try to wrap around.
	 *
	 * The @has_wrapped_around out parameter is set independently of whether a match
	 * is found. So if this function returns %FALSE, @has_wrapped_around will have
	 * the same value as the [property@SearchSettings:wrap-around] property.
	 *
	 * Params:
	 *     iter = start of search.
	 *     matchStart = return location for start of match, or %NULL.
	 *     matchEnd = return location for end of match, or %NULL.
	 *     hasWrappedAround = return location to know whether the
	 *         search has wrapped around, or %NULL.
	 *
	 * Returns: whether a match was found.
	 */
	public bool backward(TextIter iter, out TextIter matchStart, out TextIter matchEnd, out bool hasWrappedAround)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();
		int outhasWrappedAround;

		auto __p = gtk_source_search_context_backward(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), outmatchStart, outmatchEnd, &outhasWrappedAround) != 0;

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);
		hasWrappedAround = (outhasWrappedAround == 1);

		return __p;
	}

	/**
	 * The asynchronous version of [method@SearchContext.backward].
	 *
	 * See the [iface@Gio.AsyncResult] documentation to know how to use this function.
	 *
	 * If the operation is cancelled, the @callback will only be called if
	 * @cancellable was not %NULL. The method takes
	 * ownership of @cancellable, so you can unref it after calling this function.
	 *
	 * Params:
	 *     iter = start of search.
	 *     cancellable = a #GCancellable, or %NULL.
	 *     callback = a #GAsyncReadyCallback to call when the operation is finished.
	 *     userData = the data to pass to the @callback function.
	 */
	public void backwardAsync(TextIter iter, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_search_context_backward_async(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes a backward search started with
	 * [method@SearchContext.backward_async].
	 *
	 * See the documentation of [method@SearchContext.backward] for more
	 * details.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *     matchStart = return location for start of match, or %NULL.
	 *     matchEnd = return location for end of match, or %NULL.
	 *     hasWrappedAround = return location to know whether the
	 *         search has wrapped around, or %NULL.
	 *
	 * Returns: whether a match was found.
	 *
	 * Throws: GException on failure.
	 */
	public bool backwardFinish(AsyncResultIF result, out TextIter matchStart, out TextIter matchEnd, out bool hasWrappedAround)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();
		int outhasWrappedAround;
		GError* err = null;

		auto __p = gtk_source_search_context_backward_finish(gtkSourceSearchContext, (result is null) ? null : result.getAsyncResultStruct(), outmatchStart, outmatchEnd, &outhasWrappedAround, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);
		hasWrappedAround = (outhasWrappedAround == 1);

		return __p;
	}

	/**
	 * Synchronous forward search.
	 *
	 * It is recommended to use the asynchronous functions instead, to not block the user interface.
	 * However, if you are sure that the @buffer is small, this function is more convenient to use.
	 *
	 * If the [property@SearchSettings:wrap-around] property is %FALSE, this function
	 * doesn't try to wrap around.
	 *
	 * The @has_wrapped_around out parameter is set independently of whether a match
	 * is found. So if this function returns %FALSE, @has_wrapped_around will have
	 * the same value as the  [property@SearchSettings:wrap-around] property.
	 *
	 * Params:
	 *     iter = start of search.
	 *     matchStart = return location for start of match, or %NULL.
	 *     matchEnd = return location for end of match, or %NULL.
	 *     hasWrappedAround = return location to know whether the
	 *         search has wrapped around, or %NULL.
	 *
	 * Returns: whether a match was found.
	 */
	public bool forward(TextIter iter, out TextIter matchStart, out TextIter matchEnd, out bool hasWrappedAround)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();
		int outhasWrappedAround;

		auto __p = gtk_source_search_context_forward(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), outmatchStart, outmatchEnd, &outhasWrappedAround) != 0;

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);
		hasWrappedAround = (outhasWrappedAround == 1);

		return __p;
	}

	/**
	 * The asynchronous version of [method@SearchContext.forward].
	 *
	 * See the [iface@Gio.AsyncResult] documentation to know how to use this function.
	 *
	 * If the operation is cancelled, the @callback will only be called if
	 * @cancellable was not %NULL. The method takes
	 * ownership of @cancellable, so you can unref it after calling this function.
	 *
	 * Params:
	 *     iter = start of search.
	 *     cancellable = a #GCancellable, or %NULL.
	 *     callback = a #GAsyncReadyCallback to call when the operation is finished.
	 *     userData = the data to pass to the @callback function.
	 */
	public void forwardAsync(TextIter iter, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_search_context_forward_async(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes a forward search started with [method@SearchContext.forward_async].
	 *
	 * See the documentation of [method@SearchContext.forward] for more
	 * details.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *     matchStart = return location for start of match, or %NULL.
	 *     matchEnd = return location for end of match, or %NULL.
	 *     hasWrappedAround = return location to know whether the
	 *         search has wrapped around, or %NULL.
	 *
	 * Returns: whether a match was found.
	 *
	 * Throws: GException on failure.
	 */
	public bool forwardFinish(AsyncResultIF result, out TextIter matchStart, out TextIter matchEnd, out bool hasWrappedAround)
	{
		GtkTextIter* outmatchStart = sliceNew!GtkTextIter();
		GtkTextIter* outmatchEnd = sliceNew!GtkTextIter();
		int outhasWrappedAround;
		GError* err = null;

		auto __p = gtk_source_search_context_forward_finish(gtkSourceSearchContext, (result is null) ? null : result.getAsyncResultStruct(), outmatchStart, outmatchEnd, &outhasWrappedAround, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		matchStart = ObjectG.getDObject!(TextIter)(outmatchStart, true);
		matchEnd = ObjectG.getDObject!(TextIter)(outmatchEnd, true);
		hasWrappedAround = (outhasWrappedAround == 1);

		return __p;
	}

	/**
	 * Returns: the associated buffer.
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_search_context_get_buffer(gtkSourceSearchContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Returns: whether to highlight the search occurrences.
	 */
	public bool getHighlight()
	{
		return gtk_source_search_context_get_highlight(gtkSourceSearchContext) != 0;
	}

	/**
	 * Returns: the #GtkSourceStyle to apply on search matches.
	 */
	public Style getMatchStyle()
	{
		auto __p = gtk_source_search_context_get_match_style(gtkSourceSearchContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkSourceStyle*) __p);
	}

	/**
	 * Gets the position of a search occurrence.
	 *
	 * If the buffer is not already fully scanned, the position may be unknown,
	 * and -1 is returned. If 0 is returned, it means that this part of the buffer
	 * has already been scanned, and that @match_start and @match_end don't delimit an occurrence.
	 *
	 * Params:
	 *     matchStart = the start of the occurrence.
	 *     matchEnd = the end of the occurrence.
	 *
	 * Returns: the position of the search occurrence. The first occurrence has the
	 *     position 1 (not 0). Returns 0 if @match_start and @match_end don't delimit
	 *     an occurrence. Returns -1 if the position is not yet known.
	 */
	public int getOccurrencePosition(TextIter matchStart, TextIter matchEnd)
	{
		return gtk_source_search_context_get_occurrence_position(gtkSourceSearchContext, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct());
	}

	/**
	 * Gets the total number of search occurrences.
	 *
	 * If the buffer is not already fully scanned, the total number of occurrences is
	 * unknown, and -1 is returned.
	 *
	 * Returns: the total number of search occurrences, or -1 if unknown.
	 */
	public int getOccurrencesCount()
	{
		return gtk_source_search_context_get_occurrences_count(gtkSourceSearchContext);
	}

	/**
	 * Regular expression patterns must follow certain rules. If
	 * [property@SearchSettings:search-text] breaks a rule, the error can be
	 * retrieved with this function.
	 *
	 * The error domain is [enum@GLib.RegexError].
	 *
	 * Free the return value with [method@GLib.Error.free].
	 *
	 * Returns: the #GError, or %NULL if the
	 *     pattern is valid.
	 */
	public ErrorG getRegexError()
	{
		auto __p = gtk_source_search_context_get_regex_error(gtkSourceSearchContext);

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p, true);
	}

	/**
	 * Returns: the search settings.
	 */
	public SearchSettings getSettings()
	{
		auto __p = gtk_source_search_context_get_settings(gtkSourceSearchContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SearchSettings)(cast(GtkSourceSearchSettings*) __p);
	}

	/**
	 * Replaces a search match by another text. If @match_start and @match_end
	 * doesn't correspond to a search match, %FALSE is returned.
	 *
	 * @match_start and @match_end iters are revalidated to point to the replacement
	 * text boundaries.
	 *
	 * For a regular expression replacement, you can check if @replace is valid by
	 * calling [func@GLib.Regex.check_replacement]. The @replace text can contain
	 * backreferences.
	 *
	 * Params:
	 *     matchStart = the start of the match to replace.
	 *     matchEnd = the end of the match to replace.
	 *     replace = the replacement text.
	 *     replaceLength = the length of @replace in bytes, or -1.
	 *
	 * Returns: whether the match has been replaced.
	 *
	 * Throws: GException on failure.
	 */
	public bool replace(TextIter matchStart, TextIter matchEnd, string replace, int replaceLength)
	{
		GError* err = null;

		auto __p = gtk_source_search_context_replace(gtkSourceSearchContext, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), Str.toStringz(replace), replaceLength, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Replaces all search matches by another text.
	 *
	 * It is a synchronous function, so it can block the user interface.
	 *
	 * For a regular expression replacement, you can check if @replace is valid by
	 * calling [func@GLib.Regex.check_replacement]. The @replace text can contain
	 * backreferences.
	 *
	 * Params:
	 *     replace = the replacement text.
	 *     replaceLength = the length of @replace in bytes, or -1.
	 *
	 * Returns: the number of replaced matches.
	 *
	 * Throws: GException on failure.
	 */
	public uint replaceAll(string replace, int replaceLength)
	{
		GError* err = null;

		auto __p = gtk_source_search_context_replace_all(gtkSourceSearchContext, Str.toStringz(replace), replaceLength, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Enables or disables the search occurrences highlighting.
	 *
	 * Params:
	 *     highlight = the setting.
	 */
	public void setHighlight(bool highlight)
	{
		gtk_source_search_context_set_highlight(gtkSourceSearchContext, highlight);
	}

	/**
	 * Set the style to apply on search matches.
	 *
	 * If @match_style is %NULL, default theme's scheme 'match-style' will be used.
	 * To enable or disable the search highlighting, use [method@SearchContext.set_highlight].
	 *
	 * Params:
	 *     matchStyle = a #GtkSourceStyle, or %NULL.
	 */
	public void setMatchStyle(Style matchStyle)
	{
		gtk_source_search_context_set_match_style(gtkSourceSearchContext, (matchStyle is null) ? null : matchStyle.getStyleStruct());
	}
}
