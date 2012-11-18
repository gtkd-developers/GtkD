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
 * inFile  = GtkSourceCompletionProvider.html
 * outPack = gsv
 * outFile = SourceCompletionProviderT
 * strct   = GtkSourceCompletionProvider
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionProviderT
 * interf  = SourceCompletionProviderIF
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
 * 	- gsv.SourceCompletionContext
 * 	- gsv.SourceCompletionInfo
 * 	- gsv.SourceCompletionProposalIF
 * 	- gtk.TextIter
 * 	- gtk.Widget
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkSourceCompletionContext* -> SourceCompletionContext
 * 	- GtkSourceCompletionInfo* -> SourceCompletionInfo
 * 	- GtkSourceCompletionProposal* -> SourceCompletionProposalIF
 * 	- GtkTextIter* -> TextIter
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionProviderT;

public  import gsvc.gsvtypes;

public import gsvc.gsv;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import gdk.Pixbuf;
public import gsv.SourceCompletionContext;
public import gsv.SourceCompletionInfo;
public import gsv.SourceCompletionProposalIF;
public import gtk.TextIter;
public import gtk.Widget;




/**
 * Description
 * You must implement this interface to provide proposals to GtkSourceCompletion
 */
public template SourceCompletionProviderT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionProvider* gtkSourceCompletionProvider;
	
	
	public GtkSourceCompletionProvider* getSourceCompletionProviderTStruct()
	{
		return cast(GtkSourceCompletionProvider*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Get the name of the provider. This should be a translatable name for
	 * display to the user. For example: _("Document word completion provider"). The
	 * returned string must be freed with g_free().
	 * Returns: a new string containing the name of the provider.
	 */
	public string gtkSourceCompletionProviderGetName()
	{
		// gchar * gtk_source_completion_provider_get_name  (GtkSourceCompletionProvider *provider);
		return Str.toString(gtk_source_completion_provider_get_name(getSourceCompletionProviderTStruct()));
	}
	
	/**
	 * Get the icon of the provider.
	 * Returns: The icon to be used for the provider, or NULL if the provider does not have a special icon. [transfer none]
	 */
	public Pixbuf gtkSourceCompletionProviderGetIcon()
	{
		// GdkPixbuf * gtk_source_completion_provider_get_icon  (GtkSourceCompletionProvider *provider);
		auto p = gtk_source_completion_provider_get_icon(getSourceCompletionProviderTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Populate context with proposals from provider added with the
	 * gtk_source_completion_context_add_proposals() function.
	 * Params:
	 * context = a GtkSourceCompletionContext.
	 */
	public void gtkSourceCompletionProviderPopulate(SourceCompletionContext context)
	{
		// void gtk_source_completion_provider_populate  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionContext *context);
		gtk_source_completion_provider_populate(getSourceCompletionProviderTStruct(), (context is null) ? null : context.getSourceCompletionContextStruct());
	}
	
	/**
	 * Get with what kind of activation the provider should be activated.
	 * Returns: a combination of GtkSourceCompletionActivation.
	 */
	public GtkSourceCompletionActivation gtkSourceCompletionProviderGetActivation()
	{
		// GtkSourceCompletionActivation gtk_source_completion_provider_get_activation  (GtkSourceCompletionProvider *provider);
		return gtk_source_completion_provider_get_activation(getSourceCompletionProviderTStruct());
	}
	
	/**
	 * Get whether the provider match the context of completion detailed in
	 * context.
	 * Params:
	 * context = a GtkSourceCompletionContext.
	 * Returns: TRUE if provider matches the completion context, FALSE otherwise.
	 */
	public int gtkSourceCompletionProviderMatch(SourceCompletionContext context)
	{
		// gboolean gtk_source_completion_provider_match  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionContext *context);
		return gtk_source_completion_provider_match(getSourceCompletionProviderTStruct(), (context is null) ? null : context.getSourceCompletionContextStruct());
	}
	
	/**
	 * Get a customized info widget to show extra information of a proposal.
	 * This allows for customized widgets on a proposal basis, although in general
	 * providers will have the same custom widget for all their proposals and
	 * proposal can be ignored. The implementation of this function is optional.
	 * If implemented, gtk_source_completion_provider_update_info MUST also be
	 * implemented. If not implemented, the default
	 * gtk_source_completion_proposal_get_info will be used to display extra
	 * information about a GtkSourceCompletionProposal.
	 * Params:
	 * proposal = a currently selected GtkSourceCompletionProposal.
	 * Returns: a custom GtkWidget to show extra information about proposal. [transfer none]
	 */
	public Widget gtkSourceCompletionProviderGetInfoWidget(SourceCompletionProposalIF proposal)
	{
		// GtkWidget * gtk_source_completion_provider_get_info_widget  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionProposal *proposal);
		auto p = gtk_source_completion_provider_get_info_widget(getSourceCompletionProviderTStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Update extra information shown in info for proposal.
	 * This function MUST be implemented when
	 * gtk_source_completion_provider_get_info_widget is implemented.
	 * Params:
	 * proposal = a GtkSourceCompletionProposal.
	 * info = a GtkSourceCompletionInfo.
	 */
	public void gtkSourceCompletionProviderUpdateInfo(SourceCompletionProposalIF proposal, SourceCompletionInfo info)
	{
		// void gtk_source_completion_provider_update_info  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionProposal *proposal,  GtkSourceCompletionInfo *info);
		gtk_source_completion_provider_update_info(getSourceCompletionProviderTStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalTStruct(), (info is null) ? null : info.getSourceCompletionInfoStruct());
	}
	
	/**
	 * Get the GtkTextIter at which the completion for proposal starts. When
	 * implemented, the completion can use this information to position the
	 * completion window accordingly when a proposal is selected in the completion
	 * window.
	 * When the proposal is activated, the default handler uses iter as the start
	 * of the word to replace. See
	 * gtk_source_completion_provider_activate_proposal() for more information.
	 * Params:
	 * proposal = a GtkSourceCompletionProposal.
	 * context = a GtkSourceCompletionContext.
	 * iter = a GtkTextIter.
	 * Returns: TRUE if iter was set for proposal, FALSE otherwise.
	 */
	public int gtkSourceCompletionProviderGetStartIter(SourceCompletionContext context, SourceCompletionProposalIF proposal, TextIter iter)
	{
		// gboolean gtk_source_completion_provider_get_start_iter  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionContext *context,  GtkSourceCompletionProposal *proposal,  GtkTextIter *iter);
		return gtk_source_completion_provider_get_start_iter(getSourceCompletionProviderTStruct(), (context is null) ? null : context.getSourceCompletionContextStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalTStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Activate proposal at iter. When this functions returns FALSE, the default
	 * activation of proposal will take place which replaces the word at iter
	 * with the text of proposal (see gtk_source_completion_proposal_get_text()).
	 * Here is how the default activation selects the boundaries of the word to
	 * replace. The end of the word is iter. For the start of the word, it depends
	 * on wheter a start iter is defined for proposal (see
	 * gtk_source_completion_provider_get_start_iter()). If a start iter is defined,
	 * the start of the word is the start iter. Else, the word (as long as possible)
	 * will contain only alphanumerical and the "_" characters.
	 * Params:
	 * proposal = a GtkSourceCompletionProposal.
	 * iter = a GtkTextIter.
	 * Returns: TRUE to indicate that the proposal activation has been handled, FALSE otherwise.
	 */
	public int gtkSourceCompletionProviderActivateProposal(SourceCompletionProposalIF proposal, TextIter iter)
	{
		// gboolean gtk_source_completion_provider_activate_proposal  (GtkSourceCompletionProvider *provider,  GtkSourceCompletionProposal *proposal,  GtkTextIter *iter);
		return gtk_source_completion_provider_activate_proposal(getSourceCompletionProviderTStruct(), (proposal is null) ? null : proposal.getSourceCompletionProposalTStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Get the delay in milliseconds before starting interactive completion for
	 * this provider. A value of -1 indicates to use the default value as set
	 * by "auto-complete-delay".
	 * Returns: the interactive delay in milliseconds.
	 */
	public int gtkSourceCompletionProviderGetInteractiveDelay()
	{
		// gint gtk_source_completion_provider_get_interactive_delay  (GtkSourceCompletionProvider *provider);
		return gtk_source_completion_provider_get_interactive_delay(getSourceCompletionProviderTStruct());
	}
	
	/**
	 * Get the provider priority. The priority determines the order in which
	 * proposals appear in the completion popup. Higher priorities are sorted
	 * before lower priorities. The default priority is 0.
	 * Returns: the provider priority.
	 */
	public int gtkSourceCompletionProviderGetPriority()
	{
		// gint gtk_source_completion_provider_get_priority  (GtkSourceCompletionProvider *provider);
		return gtk_source_completion_provider_get_priority(getSourceCompletionProviderTStruct());
	}
}
