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
 * inFile  = GtkSourceSearchContext.html
 * outPack = gsv
 * outFile = SourceSearchContext
 * strct   = GtkSourceSearchContext
 * realStrct=
 * ctorStrct=
 * clss    = SourceSearchContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_search_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gtk.TextIter
 * 	- gsv.SourceBuffer
 * 	- gsv.SourceSearchSettings
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GError* -> ErrorG
 * 	- GtkSourceBuffer* -> SourceBuffer
 * 	- GtkSourceSearchSettings* -> SourceSearchSettings
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceSearchContext;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gtk.TextIter;
private import gsv.SourceBuffer;
private import gsv.SourceSearchSettings;


private import gobject.ObjectG;

/**
 * A GtkSourceSearchContext is used for the search and replace in a
 * GtkSourceBuffer. The search settings are represented by a
 * GtkSourceSearchSettings object, that can be shared between several
 * GtkSourceSearchContexts. A buffer can contain several search
 * contexts at the same time, but at most one search context per buffer can
 * highlight its search occurrences.
 *
 * The total number of search occurrences can be retrieved with
 * gtk_source_search_context_get_occurrences_count(). To know the position of a
 * certain match, use gtk_source_search_context_get_occurrence_position().
 *
 * The buffer is scanned asynchronously, so it doesn't block the user interface.
 * For each search, the buffer is scanned at most once. After that, navigating
 * through the occurrences doesn't require to re-scan the buffer entirely.
 *
 * To search forward, use gtk_source_search_context_forward() or
 * gtk_source_search_context_forward_async() for the asynchronous version.
 * The backward search is done similarly. To replace a search match, or all
 * matches, use gtk_source_search_context_replace() and
 * gtk_source_search_context_replace_all().
 *
 * The search occurrences are highlighted by default. To disable it, use
 * gtk_source_search_context_set_highlight(). You can enable the search
 * highlighting for several GtkSourceSearchContexts attached to the
 * same buffer. But currently, the same highlighting style is applied.
 * Note that the "highlight" property is in the
 * GtkSourceSearchContext class, not GtkSourceSearchSettings. The purpose is
 * to bind the appearance settings to only one buffer. A
 * GtkSourceSearchSettings object can be bound to several buffers.
 *
 * In the GtkSourceView source code, there is an example of how to use the
 * search and replace API: see the tests/test-search.c file. It is a mini
 * application for the search and replace, with a basic user interface.
 */
public class SourceSearchContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceSearchContext* gtkSourceSearchContext;
	
	
	/** Get the main Gtk struct */
	public GtkSourceSearchContext* getSourceSearchContextStruct()
	{
		return gtkSourceSearchContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSearchContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceSearchContext* gtkSourceSearchContext)
	{
		super(cast(GObject*)gtkSourceSearchContext);
		this.gtkSourceSearchContext = gtkSourceSearchContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceSearchContext = cast(GtkSourceSearchContext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new search context, associated with buffer, and customized with
	 * settings. If settings is NULL, a new GtkSourceSearchSettings object will
	 * be created, that you can retrieve with
	 * gtk_source_search_context_get_settings().
	 * Params:
	 * buffer = a GtkSourceBuffer.
	 * settings = a GtkSourceSearchSettings, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (SourceBuffer buffer, SourceSearchSettings settings)
	{
		// GtkSourceSearchContext * gtk_source_search_context_new (GtkSourceBuffer *buffer,  GtkSourceSearchSettings *settings);
		auto p = gtk_source_search_context_new((buffer is null) ? null : buffer.getSourceBufferStruct(), (settings is null) ? null : settings.getSourceSearchSettingsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_search_context_new((buffer is null) ? null : buffer.getSourceBufferStruct(), (settings is null) ? null : settings.getSourceSearchSettingsStruct())");
		}
		this(cast(GtkSourceSearchContext*) p);
	}
	
	/**
	 * Returns: the associated buffer. [transfer none] Since 3.10
	 */
	public SourceBuffer getBuffer()
	{
		// GtkSourceBuffer * gtk_source_search_context_get_buffer  (GtkSourceSearchContext *search);
		auto p = gtk_source_search_context_get_buffer(gtkSourceSearchContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceBuffer)(cast(GtkSourceBuffer*) p);
	}
	
	/**
	 * Returns: the search settings. [transfer none] Since 3.10
	 */
	public SourceSearchSettings getSettings()
	{
		// GtkSourceSearchSettings * gtk_source_search_context_get_settings  (GtkSourceSearchContext *search);
		auto p = gtk_source_search_context_get_settings(gtkSourceSearchContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceSearchSettings)(cast(GtkSourceSearchSettings*) p);
	}
	
	/**
	 * Associate a GtkSourceSearchSettings with the search context. If settings is
	 * NULL, a new one will be created.
	 * The search context holds a reference to settings.
	 * Params:
	 * settings = the new GtkSourceSearchSettings, or NULL. [allow-none]
	 * Since 3.10
	 */
	public void setSettings(SourceSearchSettings settings)
	{
		// void gtk_source_search_context_set_settings  (GtkSourceSearchContext *search,  GtkSourceSearchSettings *settings);
		gtk_source_search_context_set_settings(gtkSourceSearchContext, (settings is null) ? null : settings.getSourceSearchSettingsStruct());
	}
	
	/**
	 * Returns: whether to highlight the search occurrences. Since 3.10
	 */
	public int getHighlight()
	{
		// gboolean gtk_source_search_context_get_highlight  (GtkSourceSearchContext *search);
		return gtk_source_search_context_get_highlight(gtkSourceSearchContext);
	}
	
	/**
	 * Enables or disables the search occurrences highlighting.
	 * Params:
	 * highlight = the setting.
	 * Since 3.10
	 */
	public void setHighlight(int highlight)
	{
		// void gtk_source_search_context_set_highlight  (GtkSourceSearchContext *search,  gboolean highlight);
		gtk_source_search_context_set_highlight(gtkSourceSearchContext, highlight);
	}
	
	/**
	 * Gets the total number of search occurrences. If the buffer is not already
	 * fully scanned, the total number of occurrences is unknown, and -1 is
	 * returned.
	 * Returns: the total number of search occurrences, or -1 if unknown. Since 3.10
	 */
	public int getOccurrencesCount()
	{
		// gint gtk_source_search_context_get_occurrences_count  (GtkSourceSearchContext *search);
		return gtk_source_search_context_get_occurrences_count(gtkSourceSearchContext);
	}
	
	/**
	 * Gets the position of a search occurrence. If the buffer is not already fully
	 * scanned, the position may be unknown, and -1 is returned. If 0 is returned,
	 * it means that this part of the buffer has already been scanned, and that
	 * match_start and match_end don't delimit an occurrence.
	 * Params:
	 * matchStart = the start of the occurrence.
	 * matchEnd = the end of the occurrence.
	 * Returns: the position of the search occurrence. The first occurrence has the position 1 (not 0). Returns 0 if match_start and match_end don't delimit an occurrence. Returns -1 if the position is not yet known. Since 3.10
	 */
	public int getOccurrencePosition(TextIter matchStart, TextIter matchEnd)
	{
		// gint gtk_source_search_context_get_occurrence_position  (GtkSourceSearchContext *search,  const GtkTextIter *match_start,  const GtkTextIter *match_end);
		return gtk_source_search_context_get_occurrence_position(gtkSourceSearchContext, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct());
	}
	
	/**
	 * Synchronous forward search. It is recommended to use the asynchronous
	 * functions instead, to not block the user interface. However, if you are sure
	 * that the buffer is small, this function is more convenient to use.
	 * Params:
	 * iter = start of search.
	 * matchStart = return location for start of match, or NULL. [out][allow-none]
	 * matchEnd = return location for end of match, or NULL. [out][allow-none]
	 * Returns: whether a match was found. Since 3.10
	 */
	public int forward(TextIter iter, TextIter matchStart, TextIter matchEnd)
	{
		// gboolean gtk_source_search_context_forward (GtkSourceSearchContext *search,  const GtkTextIter *iter,  GtkTextIter *match_start,  GtkTextIter *match_end);
		return gtk_source_search_context_forward(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct());
	}
	
	/**
	 * Asynchronous forward search. See the GAsyncResult documentation to know
	 * how to use this function.
	 * If the operation is cancelled, the callback will only be called if
	 * cancellable was not NULL. gtk_source_search_context_forward_async() takes
	 * ownership of cancellable, so you can unref it after calling this function.
	 * Params:
	 * iter = start of search.
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the operation is finished.
	 * userData = the data to pass to the callback function.
	 * Since 3.10
	 */
	public void forwardAsync(TextIter iter, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gtk_source_search_context_forward_async  (GtkSourceSearchContext *search,  const GtkTextIter *iter,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gtk_source_search_context_forward_async(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes a forward search started with
	 * gtk_source_search_context_forward_async().
	 * Params:
	 * result = a GAsyncResult.
	 * matchStart = return location for start of match, or NULL. [out][allow-none]
	 * matchEnd = return location for end of match, or NULL. [out][allow-none]
	 * Returns: whether a match was found. Since 3.10
	 * Throws: GException on failure.
	 */
	public int forwardFinish(AsyncResultIF result, TextIter matchStart, TextIter matchEnd)
	{
		// gboolean gtk_source_search_context_forward_finish  (GtkSourceSearchContext *search,  GAsyncResult *result,  GtkTextIter *match_start,  GtkTextIter *match_end,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_search_context_forward_finish(gtkSourceSearchContext, (result is null) ? null : result.getAsyncResultTStruct(), (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Synchronous backward search. It is recommended to use the asynchronous
	 * functions instead, to not block the user interface. However, if you are sure
	 * that the buffer is small, this function is more convenient to use.
	 * Params:
	 * iter = start of search.
	 * matchStart = return location for start of match, or NULL. [out][allow-none]
	 * matchEnd = return location for end of match, or NULL. [out][allow-none]
	 * Returns: whether a match was found. Since 3.10
	 */
	public int backward(TextIter iter, TextIter matchStart, TextIter matchEnd)
	{
		// gboolean gtk_source_search_context_backward (GtkSourceSearchContext *search,  const GtkTextIter *iter,  GtkTextIter *match_start,  GtkTextIter *match_end);
		return gtk_source_search_context_backward(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct());
	}
	
	/**
	 * Asynchronous backward search. See the GAsyncResult documentation to know
	 * how to use this function.
	 * If the operation is cancelled, the callback will only be called if
	 * cancellable was not NULL. gtk_source_search_context_backward_async() takes
	 * ownership of cancellable, so you can unref it after calling this function.
	 * Params:
	 * iter = start of search.
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the operation is finished.
	 * userData = the data to pass to the callback function.
	 * Since 3.10
	 */
	public void backwardAsync(TextIter iter, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gtk_source_search_context_backward_async  (GtkSourceSearchContext *search,  const GtkTextIter *iter,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gtk_source_search_context_backward_async(gtkSourceSearchContext, (iter is null) ? null : iter.getTextIterStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes a backward search started with
	 * gtk_source_search_context_backward_async().
	 * Params:
	 * result = a GAsyncResult.
	 * matchStart = return location for start of match, or NULL. [out][allow-none]
	 * matchEnd = return location for end of match, or NULL. [out][allow-none]
	 * Returns: whether a match was found. Since 3.10
	 * Throws: GException on failure.
	 */
	public int backwardFinish(AsyncResultIF result, TextIter matchStart, TextIter matchEnd)
	{
		// gboolean gtk_source_search_context_backward_finish  (GtkSourceSearchContext *search,  GAsyncResult *result,  GtkTextIter *match_start,  GtkTextIter *match_end,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_search_context_backward_finish(gtkSourceSearchContext, (result is null) ? null : result.getAsyncResultTStruct(), (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Replaces a search match by another text. If match_start and match_end
	 * doesn't correspond to a search match, FALSE is returned.
	 * For a regular expression replacement, you can check if replace is valid by
	 * calling g_regex_check_replacement(). The replace text can contain
	 * backreferences; read the g_regex_replace() documentation for more details.
	 * Params:
	 * matchStart = the start of the match to replace.
	 * matchEnd = the end of the match to replace.
	 * replace = the replacement text.
	 * Returns: whether the match has been replaced. Since 3.10
	 * Throws: GException on failure.
	 */
	public int replace(TextIter matchStart, TextIter matchEnd, string replace)
	{
		// gboolean gtk_source_search_context_replace (GtkSourceSearchContext *search,  const GtkTextIter *match_start,  const GtkTextIter *match_end,  const gchar *replace,  gint replace_length,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_search_context_replace(gtkSourceSearchContext, (matchStart is null) ? null : matchStart.getTextIterStruct(), (matchEnd is null) ? null : matchEnd.getTextIterStruct(), cast(char*)replace.ptr, cast(int) replace.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Replaces all search matches by another text. It is a synchronous function, so
	 * it can block the user interface.
	 * For a regular expression replacement, you can check if replace is valid by
	 * calling g_regex_check_replacement(). The replace text can contain
	 * backreferences; read the g_regex_replace() documentation for more details.
	 * Params:
	 * replace = the replacement text.
	 * Returns: the number of replaced matches. Since 3.10
	 * Throws: GException on failure.
	 */
	public uint replaceAll(string replace)
	{
		// guint gtk_source_search_context_replace_all  (GtkSourceSearchContext *search,  const gchar *replace,  gint replace_length,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_search_context_replace_all(gtkSourceSearchContext, cast(char*)replace.ptr, cast(int) replace.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Regular expression patterns must follow certain rules. If
	 * "search-text" breaks a rule, the error can be retrieved
	 * with this function. The error domain is G_REGEX_ERROR.
	 * Free the return value with g_error_free().
	 * Returns: the GError, or NULL if the pattern is valid. Since 3.10
	 */
	public ErrorG getRegexError()
	{
		// GError * gtk_source_search_context_get_regex_error  (GtkSourceSearchContext *search);
		auto p = gtk_source_search_context_get_regex_error(gtkSourceSearchContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ErrorG)(cast(GError*) p);
	}
}
