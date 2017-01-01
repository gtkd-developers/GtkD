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


module gsv.SourceCompletion;

private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gsv.SourceCompletionContext;
private import gsv.SourceCompletionInfo;
private import gsv.SourceCompletionProviderIF;
private import gsv.SourceView;
private import gsvc.gsv;
public  import gsvc.gsvtypes;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TextIter;
public  import gtkc.gdktypes;
private import std.algorithm;


/** */
public class SourceCompletion : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletion* gtkSourceCompletion;

	/** Get the main Gtk struct */
	public GtkSourceCompletion* getSourceCompletionStruct()
	{
		return gtkSourceCompletion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletion;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceCompletion = cast(GtkSourceCompletion*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletion* gtkSourceCompletion, bool ownedRef = false)
	{
		this.gtkSourceCompletion = gtkSourceCompletion;
		super(cast(GObject*)gtkSourceCompletion, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkSourceCompletion);


	/** */
	public static GType getType()
	{
		return gtk_source_completion_get_type();
	}

	/**
	 * Add a new #GtkSourceCompletionProvider to the completion object. This will
	 * add a reference @provider, so make sure to unref your own copy when you
	 * no longer need it.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *
	 * Return: %TRUE if @provider was successfully added, otherwise if @error
	 *     is provided, it will be set with the error and %FALSE is returned.
	 *
	 * Throws: GException on failure.
	 */
	public bool addProvider(SourceCompletionProviderIF provider)
	{
		GError* err = null;
		
		auto p = gtk_source_completion_add_provider(gtkSourceCompletion, (provider is null) ? null : provider.getSourceCompletionProviderStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Block interactive completion. This can be used to disable interactive
	 * completion when inserting or deleting text from the buffer associated with
	 * the completion. Use gtk_source_completion_unblock_interactive() to enable
	 * interactive completion again.
	 *
	 * This function may be called multiple times. It will continue to block
	 * interactive completion until gtk_source_completion_unblock_interactive()
	 * has been called the same number of times.
	 */
	public void blockInteractive()
	{
		gtk_source_completion_block_interactive(gtkSourceCompletion);
	}

	/**
	 * Create a new #GtkSourceCompletionContext for @completion. The position where
	 * the completion occurs can be specified by @position. If @position is %NULL,
	 * the current cursor position will be used.
	 *
	 * Params:
	 *     position = a #GtkTextIter, or %NULL.
	 *
	 * Return: a new #GtkSourceCompletionContext.
	 *     The reference being returned is a 'floating' reference,
	 *     so if you invoke gtk_source_completion_show() with this context
	 *     you don't need to unref it.
	 */
	public SourceCompletionContext createContext(TextIter position)
	{
		auto p = gtk_source_completion_create_context(gtkSourceCompletion, (position is null) ? null : position.getTextIterStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceCompletionContext)(cast(GtkSourceCompletionContext*) p);
	}

	/**
	 * The info widget is the window where the completion displays optional extra
	 * information of the proposal.
	 *
	 * Return: The #GtkSourceCompletionInfo window
	 *     associated with @completion.
	 */
	public SourceCompletionInfo getInfoWindow()
	{
		auto p = gtk_source_completion_get_info_window(gtkSourceCompletion);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceCompletionInfo)(cast(GtkSourceCompletionInfo*) p);
	}

	/**
	 * Get list of providers registered on @completion. The returned list is owned
	 * by the completion and should not be freed.
	 *
	 * Return: list of #GtkSourceCompletionProvider.
	 */
	public ListG getProviders()
	{
		auto p = gtk_source_completion_get_providers(gtkSourceCompletion);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * The #GtkSourceView associated with @completion, or %NULL if the view has been
	 * destroyed.
	 *
	 * Return: The #GtkSourceView associated with @completion, or %NULL.
	 */
	public SourceView getView()
	{
		auto p = gtk_source_completion_get_view(gtkSourceCompletion);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceView)(cast(GtkSourceView*) p);
	}

	/**
	 * Hides the completion if it is active (visible).
	 */
	public void hide()
	{
		gtk_source_completion_hide(gtkSourceCompletion);
	}

	/**
	 * Move the completion window to a specific iter.
	 *
	 * Deprecated: Use gtk_source_completion_provider_get_start_iter() instead.
	 *
	 * Params:
	 *     iter = a #GtkTextIter.
	 */
	public void moveWindow(TextIter iter)
	{
		gtk_source_completion_move_window(gtkSourceCompletion, (iter is null) ? null : iter.getTextIterStruct());
	}

	/**
	 * Remove @provider from the completion.
	 *
	 * Params:
	 *     provider = a #GtkSourceCompletionProvider.
	 *
	 * Return: %TRUE if @provider was successfully removed, otherwise if @error
	 *     is provided, it will be set with the error and %FALSE is returned.
	 *
	 * Throws: GException on failure.
	 */
	public bool removeProvider(SourceCompletionProviderIF provider)
	{
		GError* err = null;
		
		auto p = gtk_source_completion_remove_provider(gtkSourceCompletion, (provider is null) ? null : provider.getSourceCompletionProviderStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Starts a new completion with the specified #GtkSourceCompletionContext and
	 * a list of potential candidate providers for completion.
	 *
	 * It can be convenient for showing a completion on-the-fly, without the need to
	 * add or remove providers to the #GtkSourceCompletion.
	 *
	 * Another solution is to add providers with
	 * gtk_source_completion_add_provider(), and implement
	 * gtk_source_completion_provider_match() for each provider.
	 *
	 * Params:
	 *     providers = a list of #GtkSourceCompletionProvider, or %NULL.
	 *     context = The #GtkSourceCompletionContext
	 *         with which to start the completion.
	 *
	 * Return: %TRUE if it was possible to the show completion window.
	 */
	public bool show(ListG providers, SourceCompletionContext context)
	{
		return gtk_source_completion_show(gtkSourceCompletion, (providers is null) ? null : providers.getListGStruct(), (context is null) ? null : context.getSourceCompletionContextStruct()) != 0;
	}

	/**
	 * Unblock interactive completion. This can be used after using
	 * gtk_source_completion_block_interactive() to enable interactive completion
	 * again.
	 */
	public void unblockInteractive()
	{
		gtk_source_completion_unblock_interactive(gtkSourceCompletion);
	}

	protected class OnActivateProposalDelegateWrapper
	{
		void delegate(SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateProposalDelegateWrapper[] onActivateProposalListeners;

	/**
	 * The #GtkSourceCompletion::activate-proposal signal is a
	 * keybinding signal which gets emitted when the user initiates
	 * a proposal activation.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the proposal
	 * activation programmatically.
	 */
	gulong addOnActivateProposal(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateProposalListeners ~= new OnActivateProposalDelegateWrapper(dlg, 0, connectFlags);
		onActivateProposalListeners[onActivateProposalListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate-proposal",
			cast(GCallback)&callBackActivateProposal,
			cast(void*)onActivateProposalListeners[onActivateProposalListeners.length - 1],
			cast(GClosureNotify)&callBackActivateProposalDestroy,
			connectFlags);
		return onActivateProposalListeners[onActivateProposalListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackActivateProposal(GtkSourceCompletion* sourcecompletionStruct,OnActivateProposalDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateProposalDestroy(OnActivateProposalDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivateProposal(wrapper);
	}

	protected void internalRemoveOnActivateProposal(OnActivateProposalDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateProposalListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateProposalListeners[index] = null;
				onActivateProposalListeners = std.algorithm.remove(onActivateProposalListeners, index);
				break;
			}
		}
	}
	

	protected class OnHideDelegateWrapper
	{
		void delegate(SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnHideDelegateWrapper[] onHideListeners;

	/**
	 * Emitted when the completion window is hidden. The default handler
	 * will actually hide the window.
	 */
	gulong addOnHide(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onHideListeners ~= new OnHideDelegateWrapper(dlg, 0, connectFlags);
		onHideListeners[onHideListeners.length - 1].handlerId = Signals.connectData(
			this,
			"hide",
			cast(GCallback)&callBackHide,
			cast(void*)onHideListeners[onHideListeners.length - 1],
			cast(GClosureNotify)&callBackHideDestroy,
			connectFlags);
		return onHideListeners[onHideListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackHide(GtkSourceCompletion* sourcecompletionStruct,OnHideDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackHideDestroy(OnHideDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnHide(wrapper);
	}

	protected void internalRemoveOnHide(OnHideDelegateWrapper source)
	{
		foreach(index, wrapper; onHideListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onHideListeners[index] = null;
				onHideListeners = std.algorithm.remove(onHideListeners, index);
				break;
			}
		}
	}
	

	protected class OnMoveCursorDelegateWrapper
	{
		void delegate(GtkScrollStep, int, SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(GtkScrollStep, int, SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMoveCursorDelegateWrapper[] onMoveCursorListeners;

	/**
	 * The #GtkSourceCompletion::move-cursor signal is a keybinding
	 * signal which gets emitted when the user initiates a cursor
	 * movement.
	 *
	 * The <keycap>Up</keycap>, <keycap>Down</keycap>,
	 * <keycap>PageUp</keycap>, <keycap>PageDown</keycap>,
	 * <keycap>Home</keycap> and <keycap>End</keycap> keys are bound to the
	 * normal behavior expected by those keys.
	 *
	 * When @step is equal to %GTK_SCROLL_PAGES, the page size is defined by
	 * the #GtkSourceCompletion:proposal-page-size property. It is used for
	 * the <keycap>PageDown</keycap> and <keycap>PageUp</keycap> keys.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * Params:
	 *     step = The #GtkScrollStep by which to move the cursor
	 *     num = The amount of steps to move the cursor
	 */
	gulong addOnMoveCursor(void delegate(GtkScrollStep, int, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMoveCursorListeners ~= new OnMoveCursorDelegateWrapper(dlg, 0, connectFlags);
		onMoveCursorListeners[onMoveCursorListeners.length - 1].handlerId = Signals.connectData(
			this,
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)onMoveCursorListeners[onMoveCursorListeners.length - 1],
			cast(GClosureNotify)&callBackMoveCursorDestroy,
			connectFlags);
		return onMoveCursorListeners[onMoveCursorListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMoveCursor(GtkSourceCompletion* sourcecompletionStruct, GtkScrollStep step, int num,OnMoveCursorDelegateWrapper wrapper)
	{
		wrapper.dlg(step, num, wrapper.outer);
	}
	
	extern(C) static void callBackMoveCursorDestroy(OnMoveCursorDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMoveCursor(wrapper);
	}

	protected void internalRemoveOnMoveCursor(OnMoveCursorDelegateWrapper source)
	{
		foreach(index, wrapper; onMoveCursorListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMoveCursorListeners[index] = null;
				onMoveCursorListeners = std.algorithm.remove(onMoveCursorListeners, index);
				break;
			}
		}
	}
	

	protected class OnMovePageDelegateWrapper
	{
		void delegate(GtkScrollStep, int, SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(GtkScrollStep, int, SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMovePageDelegateWrapper[] onMovePageListeners;

	/**
	 * The #GtkSourceCompletion::move-page signal is a keybinding
	 * signal which gets emitted when the user initiates a page
	 * movement (i.e. switches between provider pages).
	 *
	 * <keycombo><keycap>Control</keycap><keycap>Left</keycap></keycombo>
	 * is for going to the previous provider.
	 * <keycombo><keycap>Control</keycap><keycap>Right</keycap></keycombo>
	 * is for going to the next provider.
	 * <keycombo><keycap>Control</keycap><keycap>Home</keycap></keycombo>
	 * is for displaying all the providers.
	 * <keycombo><keycap>Control</keycap><keycap>End</keycap></keycombo>
	 * is for going to the last provider.
	 *
	 * When @step is equal to #GTK_SCROLL_PAGES, the page size is defined by
	 * the #GtkSourceCompletion:provider-page-size property.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the page selection
	 * programmatically.
	 *
	 * Params:
	 *     step = The #GtkScrollStep by which to move the page
	 *     num = The amount of steps to move the page
	 */
	gulong addOnMovePage(void delegate(GtkScrollStep, int, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMovePageListeners ~= new OnMovePageDelegateWrapper(dlg, 0, connectFlags);
		onMovePageListeners[onMovePageListeners.length - 1].handlerId = Signals.connectData(
			this,
			"move-page",
			cast(GCallback)&callBackMovePage,
			cast(void*)onMovePageListeners[onMovePageListeners.length - 1],
			cast(GClosureNotify)&callBackMovePageDestroy,
			connectFlags);
		return onMovePageListeners[onMovePageListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMovePage(GtkSourceCompletion* sourcecompletionStruct, GtkScrollStep step, int num,OnMovePageDelegateWrapper wrapper)
	{
		wrapper.dlg(step, num, wrapper.outer);
	}
	
	extern(C) static void callBackMovePageDestroy(OnMovePageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMovePage(wrapper);
	}

	protected void internalRemoveOnMovePage(OnMovePageDelegateWrapper source)
	{
		foreach(index, wrapper; onMovePageListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMovePageListeners[index] = null;
				onMovePageListeners = std.algorithm.remove(onMovePageListeners, index);
				break;
			}
		}
	}
	

	protected class OnPopulateContextDelegateWrapper
	{
		void delegate(SourceCompletionContext, SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceCompletionContext, SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPopulateContextDelegateWrapper[] onPopulateContextListeners;

	/**
	 * Emitted just before starting to populate the completion with providers.
	 * You can use this signal to add additional attributes in the context.
	 *
	 * Params:
	 *     context = The #GtkSourceCompletionContext for the current completion
	 */
	gulong addOnPopulateContext(void delegate(SourceCompletionContext, SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPopulateContextListeners ~= new OnPopulateContextDelegateWrapper(dlg, 0, connectFlags);
		onPopulateContextListeners[onPopulateContextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"populate-context",
			cast(GCallback)&callBackPopulateContext,
			cast(void*)onPopulateContextListeners[onPopulateContextListeners.length - 1],
			cast(GClosureNotify)&callBackPopulateContextDestroy,
			connectFlags);
		return onPopulateContextListeners[onPopulateContextListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPopulateContext(GtkSourceCompletion* sourcecompletionStruct, GtkSourceCompletionContext* context,OnPopulateContextDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(SourceCompletionContext)(context), wrapper.outer);
	}
	
	extern(C) static void callBackPopulateContextDestroy(OnPopulateContextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPopulateContext(wrapper);
	}

	protected void internalRemoveOnPopulateContext(OnPopulateContextDelegateWrapper source)
	{
		foreach(index, wrapper; onPopulateContextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPopulateContextListeners[index] = null;
				onPopulateContextListeners = std.algorithm.remove(onPopulateContextListeners, index);
				break;
			}
		}
	}
	

	protected class OnShowDelegateWrapper
	{
		void delegate(SourceCompletion) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(SourceCompletion) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnShowDelegateWrapper[] onShowListeners;

	/**
	 * Emitted when the completion window is shown. The default handler
	 * will actually show the window.
	 */
	gulong addOnShow(void delegate(SourceCompletion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onShowListeners ~= new OnShowDelegateWrapper(dlg, 0, connectFlags);
		onShowListeners[onShowListeners.length - 1].handlerId = Signals.connectData(
			this,
			"show",
			cast(GCallback)&callBackShow,
			cast(void*)onShowListeners[onShowListeners.length - 1],
			cast(GClosureNotify)&callBackShowDestroy,
			connectFlags);
		return onShowListeners[onShowListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackShow(GtkSourceCompletion* sourcecompletionStruct,OnShowDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackShowDestroy(OnShowDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnShow(wrapper);
	}

	protected void internalRemoveOnShow(OnShowDelegateWrapper source)
	{
		foreach(index, wrapper; onShowListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onShowListeners[index] = null;
				onShowListeners = std.algorithm.remove(onShowListeners, index);
				break;
			}
		}
	}
	
}
