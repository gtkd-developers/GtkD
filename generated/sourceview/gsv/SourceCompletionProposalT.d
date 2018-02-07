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


module gsv.SourceCompletionProposalT;

public  import gdkpixbuf.Pixbuf;
public  import gio.IconIF;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
public  import std.algorithm;


/** */
public template SourceCompletionProposalT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceCompletionProposal* getSourceCompletionProposalStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSourceCompletionProposal*)getStruct();
	}


	/**
	 * Emits the "changed" signal on @proposal. This should be called by
	 * implementations whenever the name, icon or info of the proposal has
	 * changed.
	 */
	public void changed()
	{
		gtk_source_completion_proposal_changed(getSourceCompletionProposalStruct());
	}

	/**
	 * Get whether two proposal objects are the same.  This is used to (together
	 * with gtk_source_completion_proposal_hash()) to match proposals in the
	 * completion model. By default, it uses direct equality (g_direct_equal()).
	 *
	 * Params:
	 *     other = a #GtkSourceCompletionProposal.
	 *
	 * Returns: %TRUE if @proposal and @object are the same proposal
	 */
	public bool equal(SourceCompletionProposalIF other)
	{
		return gtk_source_completion_proposal_equal(getSourceCompletionProposalStruct(), (other is null) ? null : other.getSourceCompletionProposalStruct()) != 0;
	}

	/**
	 * Gets the #GIcon for the icon of @proposal.
	 *
	 * Returns: A #GIcon with the icon of @proposal.
	 *
	 * Since: 3.18
	 */
	public IconIF getGicon()
	{
		auto p = gtk_source_completion_proposal_get_gicon(getSourceCompletionProposalStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) p);
	}

	/**
	 * Gets the #GdkPixbuf for the icon of @proposal.
	 *
	 * Returns: A #GdkPixbuf with the icon of @proposal.
	 */
	public Pixbuf getIcon()
	{
		auto p = gtk_source_completion_proposal_get_icon(getSourceCompletionProposalStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Gets the icon name of @proposal.
	 *
	 * Returns: The icon name of @proposal.
	 *
	 * Since: 3.18
	 */
	public string getIconName()
	{
		return Str.toString(gtk_source_completion_proposal_get_icon_name(getSourceCompletionProposalStruct()));
	}

	/**
	 * Gets extra information associated to the proposal. This information will be
	 * used to present the user with extra, detailed information about the
	 * selected proposal. The returned string must be freed with g_free().
	 *
	 * Returns: a newly-allocated string containing
	 *     extra information of @proposal or %NULL if no extra information is associated
	 *     to @proposal.
	 */
	public string getInfo()
	{
		auto retStr = gtk_source_completion_proposal_get_info(getSourceCompletionProposalStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the label of @proposal. The label is shown in the list of proposals as
	 * plain text. If you need any markup (such as bold or italic text), you have
	 * to implement gtk_source_completion_proposal_get_markup(). The returned string
	 * must be freed with g_free().
	 *
	 * Returns: a new string containing the label of @proposal.
	 */
	public string getLabel()
	{
		auto retStr = gtk_source_completion_proposal_get_label(getSourceCompletionProposalStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the label of @proposal with markup. The label is shown in the list of
	 * proposals and may contain markup. This will be used instead of
	 * gtk_source_completion_proposal_get_label() if implemented. The returned string
	 * must be freed with g_free().
	 *
	 * Returns: a new string containing the label of @proposal with markup.
	 */
	public string getMarkup()
	{
		auto retStr = gtk_source_completion_proposal_get_markup(getSourceCompletionProposalStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the text of @proposal. The text that is inserted into
	 * the text buffer when the proposal is activated by the default activation.
	 * You are free to implement a custom activation handler in the provider and
	 * not implement this function. For more information, see
	 * gtk_source_completion_provider_activate_proposal(). The returned string must
	 * be freed with g_free().
	 *
	 * Returns: a new string containing the text of @proposal.
	 */
	public string getText()
	{
		auto retStr = gtk_source_completion_proposal_get_text(getSourceCompletionProposalStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the hash value of @proposal. This is used to (together with
	 * gtk_source_completion_proposal_equal()) to match proposals in the completion
	 * model. By default, it uses a direct hash (g_direct_hash()).
	 *
	 * Returns: The hash value of @proposal.
	 */
	public uint hash()
	{
		return gtk_source_completion_proposal_hash(getSourceCompletionProposalStruct());
	}

	/**
	 * Emitted when the proposal has changed. The completion popup
	 * will react to this by updating the shown information.
	 */
	gulong addOnChanged(void delegate(SourceCompletionProposalIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
