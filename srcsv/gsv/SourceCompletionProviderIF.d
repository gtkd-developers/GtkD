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
 * outFile = SourceCompletionProviderIF
 * strct   = GtkSourceCompletionProvider
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionProviderT
 * interf  = SourceCompletionProviderIF
 * class Code: No
 * interface Code: No
 * template for:
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
 * 	- gtk.TextIter
 * 	- gtk.Widget
 * 	- gsv.SourceCompletionContext
 * 	- gsv.SourceCompletionInfo
 * 	- gsv.SourceCompletionProposalIF
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

module gsv.SourceCompletionProviderIF;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.TextIter;
private import gtk.Widget;
private import gsv.SourceCompletionContext;
private import gsv.SourceCompletionInfo;
private import gsv.SourceCompletionProposalIF;




/**
 * Description
 * You must implement this interface to provide proposals to GtkSourceCompletion
 */
public interface SourceCompletionProviderIF
{
	
	
	public GtkSourceCompletionProvider* getSourceCompletionProviderTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Get the name of the provider. This should be a translatable name for
	 * display to the user. For example: _("Document word completion provider"). The
	 * returned string must be freed with g_free().
	 * Returns: A new string containing the name of the provider.
	 */
	public string gtkSourceCompletionProviderGetName();
	
	/**
	 * Get the icon of the provider.
	 * Returns: The icon to be used for the provider, or NULL if the provider does not have a special icon.
	 */
	public Pixbuf gtkSourceCompletionProviderGetIcon();
	
	/**
	 * Populate context with proposals from provider
	 * Params:
	 * context = The GtkSourceCompletionContext
	 */
	public void gtkSourceCompletionProviderPopulate(SourceCompletionContext context);
	
	/**
	 */
	public GtkSourceCompletionActivation gtkSourceCompletionProviderGetActivation();
	
	/**
	 * Get whether the provider match the context of completion detailed in
	 * context.
	 * Params:
	 * context = The GtkSourceCompletionContext
	 * Returns: TRUE if provider matches the completion context, FALSE otherwise
	 */
	public int gtkSourceCompletionProviderMatch(SourceCompletionContext context);
	
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
	 * proposal = The currently selected GtkSourceCompletionProposal
	 * Returns: a custom GtkWidget to show extra information about proposal.
	 */
	public Widget gtkSourceCompletionProviderGetInfoWidget(SourceCompletionProposalIF proposal);
	
	/**
	 * Update extra information shown in info for proposal. This should be
	 * implemented if your provider sets a custom info widget for proposal.
	 * This function MUST be implemented when
	 * gtk_source_completion_provider_get_info_widget is implemented.
	 * Params:
	 * proposal = A GtkSourceCompletionProposal
	 * info = A GtkSourceCompletionInfo
	 */
	public void gtkSourceCompletionProviderUpdateInfo(SourceCompletionProposalIF proposal, SourceCompletionInfo info);
	
	/**
	 * Get the GtkTextIter at which the completion for proposal starts. When
	 * implemented, the completion can use this information to position the
	 * completion window accordingly when a proposal is selected in the completion
	 * window.
	 * Params:
	 * context = A GtkSourceCompletionContext
	 * proposal = A GtkSourceCompletionProposal
	 * iter = A GtkTextIter
	 * Returns: TRUE if iter was set for proposal, FALSE otherwise
	 */
	public int gtkSourceCompletionProviderGetStartIter(SourceCompletionContext context, SourceCompletionProposalIF proposal, TextIter iter);
	
	/**
	 * Activate proposal at iter. When this functions returns FALSE, the default
	 * activation of proposal will take place which replaces the word at iter
	 * with the label of proposal.
	 * Params:
	 * proposal = A GtkSourceCompletionProposal
	 * iter = A GtkTextIter
	 * Returns: TRUE to indicate that the proposal activation has been handled, FALSE otherwise.
	 */
	public int gtkSourceCompletionProviderActivateProposal(SourceCompletionProposalIF proposal, TextIter iter);
	
	/**
	 */
	public int gtkSourceCompletionProviderGetInteractiveDelay();
	
	/**
	 */
	public int gtkSourceCompletionProviderGetPriority();
}
