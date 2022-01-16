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


module sourceview.CompletionContext;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.TextIter;
private import sourceview.Buffer;
private import sourceview.Completion;
private import sourceview.CompletionProviderIF;
private import sourceview.Language;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * The context of a completion.
 * 
 * `GtkSourceCompletionContext` contains information about an attept to display
 * completion proposals to the user based on typed text in the [class@View].
 * 
 * When typing, [class@Completion] may use registered
 * [iface@CompletionProvider] to determine if there may be results which
 * could be displayed. If so, a `GtkSourceCompletionContext` is created with
 * information that is provided to the [iface@CompletionProvider] to populate
 * results which might be useful to the user.
 * 
 * [iface@CompletionProvider] are expected to provide [iface@Gio.ListModel] with
 * [iface@CompletionProposal] which may be joined together in a list of
 * results for the user. They are also responsible for how the contents are
 * displayed using [class@CompletionCell] which allows for some level of
 * customization.
 */
public class CompletionContext : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletionContext* gtkSourceCompletionContext;

	/** Get the main Gtk struct */
	public GtkSourceCompletionContext* getCompletionContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionContext* gtkSourceCompletionContext, bool ownedRef = false)
	{
		this.gtkSourceCompletionContext = gtkSourceCompletionContext;
		super(cast(GObject*)gtkSourceCompletionContext, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkSourceCompletionContext);


	/** */
	public static GType getType()
	{
		return gtk_source_completion_context_get_type();
	}

	/**
	 * Gets the mode for which the context was activated.
	 */
	public GtkSourceCompletionActivation getActivation()
	{
		return gtk_source_completion_context_get_activation(gtkSourceCompletionContext);
	}

	/**
	 * Gets the bounds for the completion, which is the beginning of the
	 * current word (taking break characters into account) to the current
	 * insertion cursor.
	 *
	 * If @begin is non-%NULL, it will be set to the start position of the
	 * current word being completed.
	 *
	 * If @end is non-%NULL, it will be set to the insertion cursor for the
	 * current word being completed.
	 *
	 * Params:
	 *     begin = a #GtkTextIter
	 *     end = a #GtkTextIter
	 *
	 * Returns: %TRUE if the marks are still valid and @begin or @end was set.
	 */
	public bool getBounds(out TextIter begin, out TextIter end)
	{
		GtkTextIter* outbegin = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		auto __p = gtk_source_completion_context_get_bounds(gtkSourceCompletionContext, outbegin, outend) != 0;

		begin = ObjectG.getDObject!(TextIter)(outbegin, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);

		return __p;
	}

	/**
	 * Gets the underlying buffer used by the context.
	 *
	 * This is a convenience function to get the buffer via the #GtkSourceCompletion
	 * property.
	 *
	 * Returns: a #GtkTextBuffer or %NULL
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_completion_context_get_buffer(gtkSourceCompletionContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Gets the "busy" property. This is set to %TRUE while the completion
	 * context is actively fetching proposals from registered
	 * #GtkSourceCompletionProvider's.
	 *
	 * Returns: %TRUE if the context is busy
	 */
	public bool getBusy()
	{
		return gtk_source_completion_context_get_busy(gtkSourceCompletionContext) != 0;
	}

	/**
	 * Gets the #GtkSourceCompletion that created the context.
	 *
	 * Returns: an #GtkSourceCompletion or %NULL
	 */
	public Completion getCompletion()
	{
		auto __p = gtk_source_completion_context_get_completion(gtkSourceCompletionContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Completion)(cast(GtkSourceCompletion*) __p);
	}

	/**
	 * Checks if any proposals have been provided to the context.
	 *
	 * Out of convenience, this function will return %TRUE if @self is %NULL.
	 *
	 * Returns: %TRUE if there are no proposals in the context
	 */
	public bool getEmpty()
	{
		return gtk_source_completion_context_get_empty(gtkSourceCompletionContext) != 0;
	}

	/**
	 * Gets the language of the underlying buffer, if any.
	 *
	 * Returns: a #GtkSourceLanguage or %NULL
	 */
	public Language getLanguage()
	{
		auto __p = gtk_source_completion_context_get_language(gtkSourceCompletionContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Language)(cast(GtkSourceLanguage*) __p);
	}

	/**
	 * Gets the text view for the context.
	 *
	 * Returns: a #GtkSourceView or %NULL
	 */
	public View getView()
	{
		auto __p = gtk_source_completion_context_get_view(gtkSourceCompletionContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}

	/**
	 * Gets the word that is being completed up to the position of the insert mark.
	 *
	 * Returns: a string containing the current word
	 */
	public string getWord()
	{
		auto retStr = gtk_source_completion_context_get_word(gtkSourceCompletionContext);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function allows providers to update their results for a context
	 * outside of a call to [method@CompletionProvider.populate_async].
	 *
	 * This can be used to immediately return results for a provider while it does
	 * additional asynchronous work. Doing so will allow the completions to
	 * update while the operation is in progress.
	 *
	 * Params:
	 *     provider = an #GtkSourceCompletionProvider
	 *     results = a #GListModel or %NULL
	 */
	public void setProposalsForProvider(CompletionProviderIF provider, ListModelIF results)
	{
		gtk_source_completion_context_set_proposals_for_provider(gtkSourceCompletionContext, (provider is null) ? null : provider.getCompletionProviderStruct(), (results is null) ? null : results.getListModelStruct());
	}
}
