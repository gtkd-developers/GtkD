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


module sourceview.Completion;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import pango.PgAttributeList;
private import sourceview.Buffer;
private import sourceview.CompletionProviderIF;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * Main Completion Object.
 * 
 * The completion system helps the user when they writes some text,
 * such as words, command names, functions, and suchlike. Proposals can
 * be shown, to complete the text the user is writing. Each proposal can
 * contain an additional piece of information (for example
 * documentation), that is displayed when the "Details" button is
 * clicked.
 * 
 * Proposals are created via a [iface@CompletionProvider]. There can
 * be for example a provider to complete words (see [class@CompletionWords]),
 * another provider for the completion of
 * function names, etc. To add a provider, call
 * [method@Completion.add_provider].
 * 
 * When several providers match, they are all shown in the completion
 * window, but one can switch between providers: see the
 * #GtkSourceCompletion::move-page signal. It is also possible to
 * activate the first proposals with key bindings, see the
 * #GtkSourceCompletion:accelerators property.
 * 
 * The [iface@CompletionProposal] interface represents a proposal.
 * 
 * If a proposal contains extra information (see
 * %GTK_SOURCE_COMPLETION_COLUMN_DETAILS), it will be
 * displayed in a supplemental details window, which appears when
 * the "Details" button is clicked.
 * 
 * Each [class@View] object is associated with a [class@Completion]
 * instance. This instance can be obtained with
 * [method@View.get_completion]. The [class@View] class contains also the
 * [signal@View::show-completion] signal.
 * 
 * A same [iface@CompletionProvider] object can be used for several
 * `GtkSourceCompletion`'s.
 */
public class Completion : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceCompletion* gtkSourceCompletion;

	/** Get the main Gtk struct */
	public GtkSourceCompletion* getCompletionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletion* gtkSourceCompletion, bool ownedRef = false)
	{
		this.gtkSourceCompletion = gtkSourceCompletion;
		super(cast(GObject*)gtkSourceCompletion, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_completion_get_type();
	}

	/**
	 * This will add `<b>` tags around matched characters in @haystack
	 * based on @casefold_query.
	 *
	 * Params:
	 *     haystack = the string to be highlighted
	 *     casefoldQuery = the typed-text used to highlight @haystack
	 *
	 * Returns: a #PangoAttrList or %NULL
	 */
	public static PgAttributeList fuzzyHighlight(string haystack, string casefoldQuery)
	{
		auto __p = gtk_source_completion_fuzzy_highlight(Str.toStringz(haystack), Str.toStringz(casefoldQuery));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/**
	 * This helper function can do a fuzzy match for you giving a haystack and
	 * casefolded needle.
	 *
	 * Casefold your needle using [func@GLib.utf8_casefold] before
	 * running the query.
	 *
	 * Score will be set with the score of the match upon success. Otherwise,
	 * it will be set to zero.
	 *
	 * Params:
	 *     haystack = the string to be searched.
	 *     casefoldNeedle = A g_utf8_casefold() version of the needle.
	 *     priority = An optional location for the score of the match
	 *
	 * Returns: %TRUE if @haystack matched @casefold_needle, otherwise %FALSE.
	 */
	public static bool fuzzyMatch(string haystack, string casefoldNeedle, out uint priority)
	{
		return gtk_source_completion_fuzzy_match(Str.toStringz(haystack), Str.toStringz(casefoldNeedle), &priority) != 0;
	}

	/**
	 * Adds a [iface@CompletionProvider] to the list of providers to be queried
	 * for completion results.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider
	 */
	public void addProvider(CompletionProviderIF provider)
	{
		gtk_source_completion_add_provider(gtkSourceCompletion, (provider is null) ? null : provider.getCompletionProviderStruct());
	}

	/** */
	public void blockInteractive()
	{
		gtk_source_completion_block_interactive(gtkSourceCompletion);
	}

	/**
	 * Gets the connected [class@View]'s [class@Buffer]
	 *
	 * Returns: A #GtkSourceBuffer
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_completion_get_buffer(gtkSourceCompletion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/** */
	public uint getPageSize()
	{
		return gtk_source_completion_get_page_size(gtkSourceCompletion);
	}

	/**
	 * Gets the [class@View] that owns the [class@Completion].
	 *
	 * Returns: A #GtkSourceView
	 */
	public View getView()
	{
		auto __p = gtk_source_completion_get_view(gtkSourceCompletion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}

	/**
	 * Emits the "hide" signal.
	 *
	 * When the "hide" signal is emitted, the completion window will be
	 * dismissed.
	 */
	public void hide()
	{
		gtk_source_completion_hide(gtkSourceCompletion);
	}

	/**
	 * Removes a [iface@CompletionProvider] previously added with
	 * [method@Completion.add_provider].
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider
	 */
	public void removeProvider(CompletionProviderIF provider)
	{
		gtk_source_completion_remove_provider(gtkSourceCompletion, (provider is null) ? null : provider.getCompletionProviderStruct());
	}

	/** */
	public void setPageSize(uint pageSize)
	{
		gtk_source_completion_set_page_size(gtkSourceCompletion, pageSize);
	}

	/**
	 * Emits the "show" signal.
	 *
	 * When the "show" signal is emitted, the completion window will be
	 * displayed if there are any results available.
	 */
	public void show()
	{
		gtk_source_completion_show(gtkSourceCompletion);
	}

	/** */
	public void unblockInteractive()
	{
		gtk_source_completion_unblock_interactive(gtkSourceCompletion);
	}

	/**
	 * The "hide" signal is emitted when the completion window should
	 * be hidden.
	 */
	gulong addOnHide(void delegate(Completion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "hide", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "provided-added" signal is emitted when a new provider is
	 * added to the completion.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider
	 */
	gulong addOnProviderAdded(void delegate(CompletionProviderIF, Completion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "provider-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "provided-removed" signal is emitted when a provider has
	 * been removed from the completion.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider
	 */
	gulong addOnProviderRemoved(void delegate(CompletionProviderIF, Completion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "provider-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "show" signal is emitted when the completion window should
	 * be shown.
	 */
	gulong addOnShow(void delegate(Completion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
