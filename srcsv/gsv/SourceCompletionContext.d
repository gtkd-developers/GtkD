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
 * inFile  = gtksourceview-3.0-completioncontext.html
 * outPack = gsv
 * outFile = SourceCompletionContext
 * strct   = GtkSourceCompletionContext
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletionContext
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_completion_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_source_completion_context_add_proposals
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gtk.TextIter
 * 	- gsv.SourceCompletionProviderIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkSourceCompletionProvider* -> SourceCompletionProviderIF
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletionContext;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gtk.TextIter;
private import gsv.SourceCompletionProviderIF;



private import gobject.ObjectG;

/**
 * Description
 */
public class SourceCompletionContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletionContext* gtkSourceCompletionContext;
	
	
	public GtkSourceCompletionContext* getSourceCompletionContextStruct()
	{
		return gtkSourceCompletionContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceCompletionContext* gtkSourceCompletionContext)
	{
		if(gtkSourceCompletionContext is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceCompletionContext);
		if( ptr !is null )
		{
			this = cast(SourceCompletionContext)ptr;
			return;
		}
		super(cast(GObject*)gtkSourceCompletionContext);
		this.gtkSourceCompletionContext = gtkSourceCompletionContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceCompletionContext = cast(GtkSourceCompletionContext*)obj;
	}
	
	/**
	 * Providers can use this function to add proposals to the completion. They
	 * can do so asynchronously by means of the finished argument. Providers must
	 * ensure that they always call this function with finished set to TRUE
	 * once each population (even if no proposals need to be added).
	 * Params:
	 * provider = A GtkSourceCompletionProvider
	 * proposals = The list of proposals to add
	 * finished = Whether the provider is finished adding proposals
	 */
	public void addProposals(SourceCompletionProviderIF provider, ListG proposals, int finished)
	{
		// void gtk_source_completion_context_add_proposals  (GtkSourceCompletionContext *context,  struct _GtkSourceCompletionProvider *provider,  GList *proposals,  gboolean finished);
		gtk_source_completion_context_add_proposals(gtkSourceCompletionContext, (provider is null) ? null : provider.getSourceCompletionProviderTStruct(), (proposals is null) ? null : proposals.getListGStruct(), finished);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SourceCompletionContext)[] onCancelledListeners;
	/**
	 * Emitted when the current population of proposals has been cancelled.
	 * Providers adding proposals asynchronously should connect to this signal
	 * to know when to cancel running proposal queries.
	 */
	void addOnCancelled(void delegate(SourceCompletionContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cancelled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cancelled",
			cast(GCallback)&callBackCancelled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cancelled"] = 1;
		}
		onCancelledListeners ~= dlg;
	}
	extern(C) static void callBackCancelled(GtkSourceCompletionContext* arg0Struct, SourceCompletionContext sourceCompletionContext)
	{
		foreach ( void delegate(SourceCompletionContext) dlg ; sourceCompletionContext.onCancelledListeners )
		{
			dlg(sourceCompletionContext);
		}
	}
	
	
	/**
	 * Get the iter at which the completion was invoked. Providers can use this
	 * to determine how and if to match proposals.
	 * Params:
	 * iter = a GtkTextIter. [out]
	 */
	public void getIter(TextIter iter)
	{
		// void gtk_source_completion_context_get_iter  (GtkSourceCompletionContext *context,  GtkTextIter *iter);
		gtk_source_completion_context_get_iter(gtkSourceCompletionContext, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Get the context activation.
	 * Returns: The context activation.
	 */
	public GtkSourceCompletionActivation getActivation()
	{
		// GtkSourceCompletionActivation gtk_source_completion_context_get_activation  (GtkSourceCompletionContext *context);
		return gtk_source_completion_context_get_activation(gtkSourceCompletionContext);
	}
}
