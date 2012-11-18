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
 * inFile  = GtkSourceCompletionProposal.html
 * outPack = gsv
 * outFile = SourceCompletionProposalT
 * strct   = GtkSourceCompletionProposal
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionProposalT
 * interf  = SourceCompletionProposalIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_completion_proposal_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkSourceCompletionProposal* -> SourceCompletionProposalIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionProposalT;

public  import gsvc.gsvtypes;

public import gsvc.gsv;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import gdk.Pixbuf;




/**
 * Description
 * The proposal interface represents a completion item in the completion window.
 * It provides information on how to display the completion item and what action
 * should be taken when the completion item is activated.
 */
public template SourceCompletionProposalT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionProposal* gtkSourceCompletionProposal;
	
	
	public GtkSourceCompletionProposal* getSourceCompletionProposalTStruct()
	{
		return cast(GtkSourceCompletionProposal*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SourceCompletionProposalIF)[] _onChangedListeners;
	void delegate(SourceCompletionProposalIF)[] onChangedListeners()
	{
		return  _onChangedListeners;
	}
	/**
	 * Emitted when the proposal has changed. The completion popup
	 * will react to this by updating the shown information.
	 */
	void addOnChanged(void delegate(SourceCompletionProposalIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)cast(SourceCompletionProposalIF)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		_onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkSourceCompletionProposal* proposalStruct, SourceCompletionProposalIF _sourceCompletionProposalIF)
	{
		foreach ( void delegate(SourceCompletionProposalIF) dlg ; _sourceCompletionProposalIF.onChangedListeners )
		{
			dlg(_sourceCompletionProposalIF);
		}
	}
	
	
	/**
	 * Gets the label of proposal. The label is shown in the list of proposals as
	 * plain text. If you need any markup (such as bold or italic text), you have
	 * to implement gtk_source_completion_proposal_get_markup. The returned string
	 * must be freed with g_free().
	 * Returns: a new string containing the label of proposal.
	 */
	public string getLabel()
	{
		// gchar * gtk_source_completion_proposal_get_label  (GtkSourceCompletionProposal *proposal);
		return Str.toString(gtk_source_completion_proposal_get_label(getSourceCompletionProposalTStruct()));
	}
	
	/**
	 * Gets the label of proposal with markup. The label is shown in the list of
	 * proposals and may contain markup. This will be used instead of
	 * gtk_source_completion_proposal_get_label if implemented. The returned string
	 * must be freed with g_free().
	 * Returns: a new string containing the label of proposal with markup.
	 */
	public string getMarkup()
	{
		// gchar * gtk_source_completion_proposal_get_markup  (GtkSourceCompletionProposal *proposal);
		return Str.toString(gtk_source_completion_proposal_get_markup(getSourceCompletionProposalTStruct()));
	}
	
	/**
	 * Gets the text of proposal. The text that is inserted into
	 * the text buffer when the proposal is activated by the default activation.
	 * You are free to implement a custom activation handler in the provider and
	 * not implement this function. For more information, see
	 * gtk_source_completion_provider_activate_proposal(). The returned string must
	 * be freed with g_free().
	 * Returns: a new string containing the text of proposal.
	 */
	public string getText()
	{
		// gchar * gtk_source_completion_proposal_get_text  (GtkSourceCompletionProposal *proposal);
		return Str.toString(gtk_source_completion_proposal_get_text(getSourceCompletionProposalTStruct()));
	}
	
	/**
	 * Gets the icon of proposal.
	 * Returns: The icon of proposal. [transfer none]
	 */
	public Pixbuf getIcon()
	{
		// GdkPixbuf * gtk_source_completion_proposal_get_icon  (GtkSourceCompletionProposal *proposal);
		auto p = gtk_source_completion_proposal_get_icon(getSourceCompletionProposalTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Gets extra information associated to the proposal. This information will be
	 * used to present the user with extra, detailed information about the
	 * selected proposal. The returned string must be freed with g_free().
	 * Returns: a new string containing extra information of proposal or NULL if no extra information is associated to proposal.
	 */
	public string getInfo()
	{
		// gchar * gtk_source_completion_proposal_get_info  (GtkSourceCompletionProposal *proposal);
		return Str.toString(gtk_source_completion_proposal_get_info(getSourceCompletionProposalTStruct()));
	}
	
	/**
	 * Emits the "changed" signal on proposal. This should be called by
	 * implementations whenever the name, icon or info of the proposal has
	 * changed.
	 */
	public void changed()
	{
		// void gtk_source_completion_proposal_changed  (GtkSourceCompletionProposal *proposal);
		gtk_source_completion_proposal_changed(getSourceCompletionProposalTStruct());
	}
	
	/**
	 * Get the hash value of proposal. This is used to (together with
	 * gtk_source_completion_proposal_equal) to match proposals in the completion
	 * model. By default, it uses a direct hash (g_direct_hash).
	 * Returns: The hash value of proposal.
	 */
	public uint hash()
	{
		// guint gtk_source_completion_proposal_hash (GtkSourceCompletionProposal *proposal);
		return gtk_source_completion_proposal_hash(getSourceCompletionProposalTStruct());
	}
	
	/**
	 * Get whether two proposal objects are the same. This is used to (together
	 * with gtk_source_completion_proposal_hash) to match proposals in the
	 * completion model. By default, it uses direct equality (g_direct_equal).
	 * Params:
	 * other = a GtkSourceCompletionProposal.
	 * Returns: TRUE if proposal and object are the same proposal Signal Details The "changed" signal void user_function (GtkSourceCompletionProposal *proposal, gpointer user_data) : Action Emitted when the proposal has changed. The completion popup will react to this by updating the shown information.
	 */
	public int equal(SourceCompletionProposalIF other)
	{
		// gboolean gtk_source_completion_proposal_equal  (GtkSourceCompletionProposal *proposal,  GtkSourceCompletionProposal *other);
		return gtk_source_completion_proposal_equal(getSourceCompletionProposalTStruct(), (other is null) ? null : other.getSourceCompletionProposalTStruct());
	}
}
