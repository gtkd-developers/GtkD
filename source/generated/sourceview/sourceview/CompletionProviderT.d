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


module sourceview.CompletionProviderT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import gio.ListModelIF;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.PtrArray;
public  import glib.Str;
public  import glib.c.functions;
public  import gobject.ObjectG;
public  import gtk.TextIter;
public  import sourceview.CompletionCell;
public  import sourceview.CompletionContext;
public  import sourceview.CompletionProposalIF;
public  import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Completion provider interface.
 * 
 * You must implement this interface to provide proposals to [class@Completion].
 * 
 * In most cases, implementations of this interface will want to use
 * [vfunc@CompletionProvider.populate_async] to asynchronously populate the results
 * to avoid blocking the main loop.
 */
public template CompletionProviderT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceCompletionProvider* getCompletionProviderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSourceCompletionProvider*)getStruct();
	}


	/**
	 * This function requests @proposal to be activated by the
	 * #GtkSourceCompletionProvider.
	 *
	 * What the provider does to activate the proposal is specific to that
	 * provider. Many providers may choose to insert a #GtkSourceSnippet with
	 * edit points the user may cycle through.
	 *
	 * See also: [class@Snippet], [class@SnippetChunk], [method@View.push_snippet]
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     proposal = a #GtkSourceCompletionProposal
	 */
	public void activate(CompletionContext context, CompletionProposalIF proposal)
	{
		gtk_source_completion_provider_activate(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (proposal is null) ? null : proposal.getCompletionProposalStruct());
	}

	/**
	 * This function requests that the #GtkSourceCompletionProvider prepares
	 * @cell to display the contents of @proposal.
	 *
	 * Based on @cells column type, you may want to display different information.
	 *
	 * This allows for columns of information among completion proposals
	 * resulting in better alignment of similar content (icons, return types,
	 * method names, and parameter lists).
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     proposal = a #GtkSourceCompletionProposal
	 *     cell = a #GtkSourceCompletionCell
	 */
	public void display(CompletionContext context, CompletionProposalIF proposal, CompletionCell cell)
	{
		gtk_source_completion_provider_display(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (proposal is null) ? null : proposal.getCompletionProposalStruct(), (cell is null) ? null : cell.getCompletionCellStruct());
	}

	/**
	 * This function should return the priority of @self in @context.
	 *
	 * The priority is used to sort groups of completion proposals by
	 * provider so that higher priority providers results are shown
	 * above lower priority providers.
	 *
	 * Lower value indicates higher priority.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 */
	public int getPriority(CompletionContext context)
	{
		return gtk_source_completion_provider_get_priority(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct());
	}

	/**
	 * Gets the title of the completion provider, if any.
	 *
	 * Currently, titles are not displayed in the completion results, but may be
	 * at some point in the future when non-%NULL.
	 *
	 * Returns: a title for the provider or %NULL
	 */
	public string getTitle()
	{
		auto retStr = gtk_source_completion_provider_get_title(getCompletionProviderStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function is used to determine of a character inserted into the text
	 * editor should cause a new completion request to be triggered.
	 *
	 * An example would be period '.' which might indicate that the user wants
	 * to complete method or field names of an object.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     ch = a #gunichar of the character inserted
	 */
	public bool isTrigger(TextIter iter, dchar ch)
	{
		return gtk_source_completion_provider_is_trigger(getCompletionProviderStruct(), (iter is null) ? null : iter.getTextIterStruct(), ch) != 0;
	}

	/**
	 * This function is used to determine if a key typed by the user should
	 * activate @proposal (resulting in committing the text to the editor).
	 *
	 * This is useful when using languages where convention may lead to less
	 * typing by the user. One example may be the use of "." or "-" to expand
	 * a field access in the C programming language.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     proposal = a #GtkSourceCompletionProposal
	 *     keyval = a keyval such as [const@Gdk.KEY_period]
	 *     state = a #GdkModifierType or 0
	 */
	public bool keyActivates(CompletionContext context, CompletionProposalIF proposal, uint keyval, GdkModifierType state)
	{
		return gtk_source_completion_provider_key_activates(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (proposal is null) ? null : proposal.getCompletionProposalStruct(), keyval, state) != 0;
	}

	/**
	 * Providers should return a list of alternates to @proposal or %NULL if
	 * there are no alternates available.
	 *
	 * This can be used by the completion view to allow the user to move laterally
	 * through similar proposals, such as overrides of methods by the same name.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     proposal = a #GtkSourceCompletionProposal
	 *
	 * Returns: a #GPtrArray of #GtkSourceCompletionProposal or %NULL.
	 */
	public PtrArray listAlternates(CompletionContext context, CompletionProposalIF proposal)
	{
		auto __p = gtk_source_completion_provider_list_alternates(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (proposal is null) ? null : proposal.getCompletionProposalStruct());

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p, true);
	}

	/**
	 * Asynchronously requests that the provider populates the completion
	 * results for @context.
	 *
	 * For providers that would like to populate a [iface@Gio.ListModel] while those
	 * results are displayed to the user,
	 * [method@CompletionContext.set_proposals_for_provider] may be used
	 * to reduce latency until the user sees results.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     cancellable = a #GCancellable or %NULL
	 *     callback = a callback to execute upon completion
	 *     userData = closure data for @callback
	 */
	public void populateAsync(CompletionContext context, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_completion_provider_populate_async(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Completes an asynchronous operation to populate a completion provider.
	 *
	 * Params:
	 *     result = a #GAsyncResult provided to callback
	 *
	 * Returns: a #GListModel of #GtkSourceCompletionProposal
	 *
	 * Throws: GException on failure.
	 */
	public ListModelIF populateFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gtk_source_completion_provider_populate_finish(getCompletionProviderStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * This function can be used to filter results previously provided to
	 * the [class@CompletionContext] by the #GtkSourceCompletionProvider.
	 *
	 * This can happen as the user types additional text onto the word so
	 * that previously matched items may be removed from the list instead of
	 * generating new [iface@Gio.ListModel] of results.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext
	 *     model = a #GListModel
	 */
	public void refilter(CompletionContext context, ListModelIF model)
	{
		gtk_source_completion_provider_refilter(getCompletionProviderStruct(), (context is null) ? null : context.getCompletionContextStruct(), (model is null) ? null : model.getListModelStruct());
	}
}
