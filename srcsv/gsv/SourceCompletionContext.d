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


module gsv.SourceCompletionContext;

private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gsv.SourceCompletionProposalIF;
private import gsv.SourceCompletionProviderIF;
private import gsvc.gsv;
public  import gsvc.gsvtypes;
private import gtk.TextIter;
public  import gtkc.gdktypes;


/** */
public class SourceCompletionContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceCompletionContext* gtkSourceCompletionContext;

	/** Get the main Gtk struct */
	public GtkSourceCompletionContext* getSourceCompletionContextStruct()
	{
		return gtkSourceCompletionContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionContext;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceCompletionContext = cast(GtkSourceCompletionContext*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionContext* gtkSourceCompletionContext, bool ownedRef = false)
	{
		this.gtkSourceCompletionContext = gtkSourceCompletionContext;
		super(cast(GObject*)gtkSourceCompletionContext, ownedRef);
	}


	public static GType getType()
	{
		return gtk_source_completion_context_get_type();
	}

	/**
	 * Providers can use this function to add proposals to the completion. They
	 * can do so asynchronously by means of the @finished argument. Providers must
	 * ensure that they always call this function with @finished set to %TRUE
	 * once each population (even if no proposals need to be added).
	 * Population occurs when the gtk_source_completion_provider_populate()
	 * function is called.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *     proposals = The list of proposals to add.
	 *     finished = Whether the provider is finished adding proposals.
	 */
	public void addProposals(SourceCompletionProviderIF provider, ListG proposals, bool finished)
	{
		gtk_source_completion_context_add_proposals(gtkSourceCompletionContext, (provider is null) ? null : provider.getSourceCompletionProviderStruct(), (proposals is null) ? null : proposals.getListGStruct(), finished);
	}

	/**
	 * Get the context activation.
	 *
	 * Return: The context activation.
	 */
	public GtkSourceCompletionActivation getActivation()
	{
		return gtk_source_completion_context_get_activation(gtkSourceCompletionContext);
	}

	/**
	 * Get the iter at which the completion was invoked. Providers can use this
	 * to determine how and if to match proposals.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 *
	 * Return: %TRUE if @iter is correctly set, %FALSE otherwise.
	 */
	public bool getIter(out TextIter iter)
	{
		GtkTextIter* outiter = gMalloc!GtkTextIter();
		
		auto p = gtk_source_completion_context_get_iter(gtkSourceCompletionContext, outiter) != 0;
		
		iter = ObjectG.getDObject!(TextIter)(outiter);
		
		return p;
	}

	int[string] connectedSignals;

	void delegate(SourceCompletionContext)[] onCancelledListeners;
	/**
	 * Emitted when the current population of proposals has been cancelled.
	 * Providers adding proposals asynchronously should connect to this signal
	 * to know when to cancel running proposal queries.
	 */
	void addOnCancelled(void delegate(SourceCompletionContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "cancelled" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"cancelled",
				cast(GCallback)&callBackCancelled,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["cancelled"] = 1;
		}
		onCancelledListeners ~= dlg;
	}
	extern(C) static void callBackCancelled(GtkSourceCompletionContext* sourcecompletioncontextStruct, SourceCompletionContext _sourcecompletioncontext)
	{
		foreach ( void delegate(SourceCompletionContext) dlg; _sourcecompletioncontext.onCancelledListeners )
		{
			dlg(_sourcecompletioncontext);
		}
	}
}
