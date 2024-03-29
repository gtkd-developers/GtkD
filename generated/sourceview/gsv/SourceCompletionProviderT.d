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


module gsv.SourceCompletionProviderT;

public  import gdkpixbuf.Pixbuf;
public  import gio.IconIF;
public  import glib.MemorySlice;
public  import glib.Str;
public  import glib.c.functions;
public  import gobject.ObjectG;
public  import gsv.SourceCompletionContext;
public  import gsv.SourceCompletionInfo;
public  import gsv.SourceCompletionProposalIF;
public  import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
public  import gtk.TextIter;
public  import gtk.Widget;


/** */
public template SourceCompletionProviderT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceCompletionProvider* getSourceCompletionProviderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSourceCompletionProvider*)getStruct();
	}


	/**
	 * Activate @proposal at @iter. When this functions returns %FALSE, the default
	 * activation of @proposal will take place which replaces the word at @iter
	 * with the text of @proposal (see gtk_source_completion_proposal_get_text()).
	 *
	 * Here is how the default activation selects the boundaries of the word to
	 * replace. The end of the word is @iter. For the start of the word, it depends
	 * on whether a start iter is defined for @proposal (see
	 * gtk_source_completion_provider_get_start_iter()). If a start iter is defined,
	 * the start of the word is the start iter. Else, the word (as long as possible)
	 * will contain only alphanumerical and the "_" characters.
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     iter = a #GtkTextIter.
	 *
	 * Returns: %TRUE to indicate that the proposal activation has been handled,
	 *     %FALSE otherwise.
	 */
	public bool activateProposal(SourceCompletionProposalIF proposal, TextIter iter)
	{
		return gtk_source_completion_provider_activate_proposal(getSourceCompletionProviderStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalStruct(), (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Get with what kind of activation the provider should be activated.
	 *
	 * Returns: a combination of #GtkSourceCompletionActivation.
	 */
	public GtkSourceCompletionActivation getActivation()
	{
		return gtk_source_completion_provider_get_activation(getSourceCompletionProviderStruct());
	}

	/**
	 * Gets the #GIcon for the icon of @provider.
	 *
	 * Returns: The icon to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 *
	 * Since: 3.18
	 */
	public IconIF getGicon()
	{
		auto __p = gtk_source_completion_provider_get_gicon(getSourceCompletionProviderStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Get the #GdkPixbuf for the icon of the @provider.
	 *
	 * Returns: The icon to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 */
	public Pixbuf getIcon()
	{
		auto __p = gtk_source_completion_provider_get_icon(getSourceCompletionProviderStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Gets the icon name of @provider.
	 *
	 * Returns: The icon name to be used for the provider,
	 *     or %NULL if the provider does not have a special icon.
	 *
	 * Since: 3.18
	 */
	public string getIconName()
	{
		return Str.toString(gtk_source_completion_provider_get_icon_name(getSourceCompletionProviderStruct()));
	}

	/**
	 * Get a customized info widget to show extra information of a proposal.
	 * This allows for customized widgets on a proposal basis, although in general
	 * providers will have the same custom widget for all their proposals and
	 * @proposal can be ignored. The implementation of this function is optional.
	 *
	 * If this function is not implemented, the default widget is a #GtkLabel. The
	 * return value of gtk_source_completion_proposal_get_info() is used as the
	 * content of the #GtkLabel.
	 *
	 * <note>
	 * <para>
	 * If implemented, gtk_source_completion_provider_update_info()
	 * <emphasis>must</emphasis> also be implemented.
	 * </para>
	 * </note>
	 *
	 * Params:
	 *     proposal = a currently selected #GtkSourceCompletionProposal.
	 *
	 * Returns: a custom #GtkWidget to show extra
	 *     information about @proposal, or %NULL if the provider does not have a special
	 *     info widget.
	 */
	public Widget getInfoWidget(SourceCompletionProposalIF proposal)
	{
		auto __p = gtk_source_completion_provider_get_info_widget(getSourceCompletionProviderStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Get the delay in milliseconds before starting interactive completion for
	 * this provider. A value of -1 indicates to use the default value as set
	 * by the #GtkSourceCompletion:auto-complete-delay property.
	 *
	 * Returns: the interactive delay in milliseconds.
	 */
	public int getInteractiveDelay()
	{
		return gtk_source_completion_provider_get_interactive_delay(getSourceCompletionProviderStruct());
	}

	/**
	 * Get the name of the provider. This should be a translatable name for
	 * display to the user. For example: _("Document word completion provider"). The
	 * returned string must be freed with g_free().
	 *
	 * Returns: a new string containing the name of the provider.
	 */
	public string getName()
	{
		auto retStr = gtk_source_completion_provider_get_name(getSourceCompletionProviderStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the provider priority. The priority determines the order in which
	 * proposals appear in the completion popup. Higher priorities are sorted
	 * before lower priorities. The default priority is 0.
	 *
	 * Returns: the provider priority.
	 */
	public int getPriority()
	{
		return gtk_source_completion_provider_get_priority(getSourceCompletionProviderStruct());
	}

	/**
	 * Get the #GtkTextIter at which the completion for @proposal starts. When
	 * implemented, this information is used to position the completion window
	 * accordingly when a proposal is selected in the completion window. The
	 * @proposal text inside the completion window is aligned on @iter.
	 *
	 * If this function is not implemented, the word boundary is taken to position
	 * the completion window. See gtk_source_completion_provider_activate_proposal()
	 * for an explanation on the word boundaries.
	 *
	 * When the @proposal is activated, the default handler uses @iter as the start
	 * of the word to replace. See
	 * gtk_source_completion_provider_activate_proposal() for more information.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext.
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     iter = a #GtkTextIter.
	 *
	 * Returns: %TRUE if @iter was set for @proposal, %FALSE otherwise.
	 */
	public bool getStartIter(SourceCompletionContext context, SourceCompletionProposalIF proposal, out TextIter iter)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		auto __p = gtk_source_completion_provider_get_start_iter(getSourceCompletionProviderStruct(), (context is null) ? null : context.getSourceCompletionContextStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalStruct(), outiter) != 0;

		iter = ObjectG.getDObject!(TextIter)(outiter, true);

		return __p;
	}

	/**
	 * Get whether the provider match the context of completion detailed in
	 * @context.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext.
	 *
	 * Returns: %TRUE if @provider matches the completion context, %FALSE otherwise.
	 */
	public bool match(SourceCompletionContext context)
	{
		return gtk_source_completion_provider_match(getSourceCompletionProviderStruct(), (context is null) ? null : context.getSourceCompletionContextStruct()) != 0;
	}

	/**
	 * Populate @context with proposals from @provider added with the
	 * gtk_source_completion_context_add_proposals() function.
	 *
	 * Params:
	 *     context = a #GtkSourceCompletionContext.
	 */
	public void populate(SourceCompletionContext context)
	{
		gtk_source_completion_provider_populate(getSourceCompletionProviderStruct(), (context is null) ? null : context.getSourceCompletionContextStruct());
	}

	/**
	 * Update extra information shown in @info for @proposal.
	 *
	 * <note>
	 * <para>
	 * This function <emphasis>must</emphasis> be implemented when
	 * gtk_source_completion_provider_get_info_widget() is implemented.
	 * </para>
	 * </note>
	 *
	 * Params:
	 *     proposal = a #GtkSourceCompletionProposal.
	 *     info = a #GtkSourceCompletionInfo.
	 */
	public void updateInfo(SourceCompletionProposalIF proposal, SourceCompletionInfo info)
	{
		gtk_source_completion_provider_update_info(getSourceCompletionProviderStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalStruct(), (info is null) ? null : info.getSourceCompletionInfoStruct());
	}
}
