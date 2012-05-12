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
 * inFile  = GtkSourceCompletion.html
 * outPack = gsv
 * outFile = SourceCompletion
 * strct   = GtkSourceCompletion
 * realStrct=
 * ctorStrct=
 * clss    = SourceCompletion
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_completion_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gtk.TextIter
 * 	- gsv.SourceCompletionInfo
 * 	- gsv.SourceView
 * 	- gsv.SourceCompletionContext
 * 	- gsv.SourceCompletionProviderIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkSourceCompletionContext* -> SourceCompletionContext
 * 	- GtkSourceCompletionInfo* -> SourceCompletionInfo
 * 	- GtkSourceCompletionProvider* -> SourceCompletionProviderIF
 * 	- GtkSourceView* -> SourceView
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceCompletion;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gtk.TextIter;
private import gsv.SourceCompletionInfo;
private import gsv.SourceView;
private import gsv.SourceCompletionContext;
private import gsv.SourceCompletionProviderIF;



private import gtk.ObjectGtk;

/**
 * Description
 */
public class SourceCompletion : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkSourceCompletion* gtkSourceCompletion;
	
	
	public GtkSourceCompletion* getSourceCompletionStruct()
	{
		return gtkSourceCompletion;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletion;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceCompletion* gtkSourceCompletion)
	{
		if(gtkSourceCompletion is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceCompletion);
		if( ptr !is null )
		{
			this = cast(SourceCompletion)ptr;
			return;
		}
		super(cast(GtkObject*)gtkSourceCompletion);
		this.gtkSourceCompletion = gtkSourceCompletion;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceCompletion = cast(GtkSourceCompletion*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SourceCompletion)[] onActivateProposalListeners;
	/**
	 * The ::activate-proposal signal is a keybinding signal which gets
	 * emitted when the user initiates a proposal activation.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name if they need to control the proposal activation
	 * programmatically.
	 */
	void addOnActivateProposal(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-proposal" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-proposal",
			cast(GCallback)&callBackActivateProposal,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-proposal"] = 1;
		}
		onActivateProposalListeners ~= dlg;
	}
	extern(C) static void callBackActivateProposal(GtkSourceCompletion* completionStruct, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(SourceCompletion) dlg ; sourceCompletion.onActivateProposalListeners )
		{
			dlg(sourceCompletion);
		}
	}
	
	void delegate(SourceCompletion)[] onHideListeners;
	/**
	 * Emitted when the completion window is hidden. The default handler
	 * will actually hide the window.
	 */
	void addOnHide(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("hide" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"hide",
			cast(GCallback)&callBackHide,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["hide"] = 1;
		}
		onHideListeners ~= dlg;
	}
	extern(C) static void callBackHide(GtkSourceCompletion* completionStruct, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(SourceCompletion) dlg ; sourceCompletion.onHideListeners )
		{
			dlg(sourceCompletion);
		}
	}
	
	void delegate(GtkScrollStep, gint, SourceCompletion)[] onMoveCursorListeners;
	/**
	 * The ::move-cursor signal is a keybinding signal which gets emitted when
	 * the user initiates a cursor movement.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name if they need to control the cursor
	 * programmatically.
	 */
	void addOnMoveCursor(void delegate(GtkScrollStep, gint, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkSourceCompletion* completionStruct, GtkScrollStep step, gint num, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(GtkScrollStep, gint, SourceCompletion) dlg ; sourceCompletion.onMoveCursorListeners )
		{
			dlg(step, num, sourceCompletion);
		}
	}
	
	void delegate(GtkScrollStep, gint, SourceCompletion)[] onMovePageListeners;
	/**
	 * The ::move-page signal is a keybinding signal which gets emitted when
	 * the user initiates a page movement (i.e. switches between provider
	 * pages).
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name if they need to control the page selection
	 * programmatically.
	 */
	void addOnMovePage(void delegate(GtkScrollStep, gint, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-page" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-page",
			cast(GCallback)&callBackMovePage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-page"] = 1;
		}
		onMovePageListeners ~= dlg;
	}
	extern(C) static void callBackMovePage(GtkSourceCompletion* completionStruct, GtkScrollStep step, gint num, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(GtkScrollStep, gint, SourceCompletion) dlg ; sourceCompletion.onMovePageListeners )
		{
			dlg(step, num, sourceCompletion);
		}
	}
	
	void delegate(SourceCompletionContext, SourceCompletion)[] onPopulateContextListeners;
	/**
	 * Emitted just before starting to populate the completion with providers.
	 * You can use this signal to add additional attributes in the context.
	 */
	void addOnPopulateContext(void delegate(SourceCompletionContext, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("populate-context" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-context",
			cast(GCallback)&callBackPopulateContext,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["populate-context"] = 1;
		}
		onPopulateContextListeners ~= dlg;
	}
	extern(C) static void callBackPopulateContext(GtkSourceCompletion* completionStruct, GtkSourceCompletionContext* context, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(SourceCompletionContext, SourceCompletion) dlg ; sourceCompletion.onPopulateContextListeners )
		{
			dlg(new SourceCompletionContext(context), sourceCompletion);
		}
	}
	
	void delegate(SourceCompletion)[] onShowListeners;
	/**
	 * Emitted when the completion window is shown. The default handler
	 * will actually show the window.
	 */
	void addOnShow(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show",
			cast(GCallback)&callBackShow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show"] = 1;
		}
		onShowListeners ~= dlg;
	}
	extern(C) static void callBackShow(GtkSourceCompletion* completionStruct, SourceCompletion sourceCompletion)
	{
		foreach ( void delegate(SourceCompletion) dlg ; sourceCompletion.onShowListeners )
		{
			dlg(sourceCompletion);
		}
	}
	
	
	/**
	 * Add a new GtkSourceCompletionProvider to the completion object. This will
	 * add a reference provider, so make sure to unref your own copy when you
	 * no longer need it.
	 * Params:
	 * provider = A GtkSourceCompletionProvider
	 * Returns: TRUE if provider was successfully added, otherwise if error is provided, it will be set with the error and FALSE is returned.
	 * Throws: GException on failure.
	 */
	public int addProvider(SourceCompletionProviderIF provider)
	{
		// gboolean gtk_source_completion_add_provider (GtkSourceCompletion *completion,  GtkSourceCompletionProvider *provider,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_completion_add_provider(gtkSourceCompletion, (provider is null) ? null : provider.getSourceCompletionProviderTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Remove provider from the completion.
	 * Params:
	 * provider = A GtkSourceCompletionProvider
	 * Returns: TRUE if provider was successfully removed, otherwise if error is provided, it will be set with the error and FALSE is returned.
	 * Throws: GException on failure.
	 */
	public int removeProvider(SourceCompletionProviderIF provider)
	{
		// gboolean gtk_source_completion_remove_provider  (GtkSourceCompletion *completion,  GtkSourceCompletionProvider *provider,  GError **error);
		GError* err = null;
		
		auto p = gtk_source_completion_remove_provider(gtkSourceCompletion, (provider is null) ? null : provider.getSourceCompletionProviderTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Get list of providers registered on completion. The returned list is owned
	 * by the completion and should not be freed.
	 * Returns: list of GtkSourceCompletionProvider
	 */
	public ListG getProviders()
	{
		// GList * gtk_source_completion_get_providers (GtkSourceCompletion *completion);
		auto p = gtk_source_completion_get_providers(gtkSourceCompletion);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Starts a new completion with the specified GtkSourceCompletionContext and
	 * a list of potential candidate providers for completion.
	 * Params:
	 * providers = A list of GtkSourceCompletionProvider or NULL
	 * context = The GtkSourceCompletionContext with which to start the completion
	 * Returns: TRUE if it was possible to the show completion window.
	 */
	public int show(ListG providers, SourceCompletionContext context)
	{
		// gboolean gtk_source_completion_show (GtkSourceCompletion *completion,  GList *providers,  GtkSourceCompletionContext *context);
		return gtk_source_completion_show(gtkSourceCompletion, (providers is null) ? null : providers.getListGStruct(), (context is null) ? null : context.getSourceCompletionContextStruct());
	}
	
	/**
	 * Hides the completion if it is active (visible).
	 */
	public void hide()
	{
		// void gtk_source_completion_hide (GtkSourceCompletion *completion);
		gtk_source_completion_hide(gtkSourceCompletion);
	}
	
	/**
	 * The info widget is the window where the completion displays optional extra
	 * information of the proposal.
	 * Returns: The GtkSourceCompletionInfo window.
	 */
	public SourceCompletionInfo getInfoWindow()
	{
		// GtkSourceCompletionInfo * gtk_source_completion_get_info_window  (GtkSourceCompletion *completion);
		auto p = gtk_source_completion_get_info_window(gtkSourceCompletion);
		if(p is null)
		{
			return null;
		}
		return new SourceCompletionInfo(cast(GtkSourceCompletionInfo*) p);
	}
	
	/**
	 * The GtkSourceView associated with completion.
	 * Returns: The GtkSourceView associated with completion.
	 */
	public SourceView getView()
	{
		// struct _GtkSourceView * gtk_source_completion_get_view (GtkSourceCompletion *completion);
		auto p = gtk_source_completion_get_view(gtkSourceCompletion);
		if(p is null)
		{
			return null;
		}
		return new SourceView(cast(GtkSourceView*) p);
	}
	
	/**
	 * Create a new GtkSourceCompletionContext for completion. The position at
	 * which the completion using the new context will consider completion can
	 * be provider by position. If position is NULL, the current cursor
	 * position will be used.
	 * Params:
	 * position = A GtkTextIter
	 * Returns: a new GtkSourceCompletionContext. The reference being returned is a 'floating' reference, so if you invoke gtk_source_completion_show with this context you don't need to unref it.
	 */
	public SourceCompletionContext createContext(TextIter position)
	{
		// GtkSourceCompletionContext * gtk_source_completion_create_context  (GtkSourceCompletion *completion,  GtkTextIter *position);
		auto p = gtk_source_completion_create_context(gtkSourceCompletion, (position is null) ? null : position.getTextIterStruct());
		if(p is null)
		{
			return null;
		}
		return new SourceCompletionContext(cast(GtkSourceCompletionContext*) p);
	}
	
	/**
	 * Move the completion window to a specific iter.
	 * Params:
	 * iter = A GtkTextIter
	 */
	public void moveWindow(TextIter iter)
	{
		// void gtk_source_completion_move_window (GtkSourceCompletion *completion,  GtkTextIter *iter);
		gtk_source_completion_move_window(gtkSourceCompletion, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 */
	public void blockInteractive()
	{
		// void gtk_source_completion_block_interactive  (GtkSourceCompletion *completion);
		gtk_source_completion_block_interactive(gtkSourceCompletion);
	}
	
	/**
	 */
	public void unblockInteractive()
	{
		// void gtk_source_completion_unblock_interactive  (GtkSourceCompletion *completion);
		gtk_source_completion_unblock_interactive(gtkSourceCompletion);
	}
}
