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


module gtk.PrintOperationPreviewT;

public  import gobject.Signals;
public  import gtk.PageSetup;
public  import gtk.PrintContext;
public  import gtkc.gdktypes;
public  import gtkc.gtk;
public  import gtkc.gtktypes;
public  import std.algorithm;


/** */
public template PrintOperationPreviewT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkPrintOperationPreview* getPrintOperationPreviewStruct()
	{
		return cast(GtkPrintOperationPreview*)getStruct();
	}


	/**
	 * Ends a preview.
	 *
	 * This function must be called to finish a custom print preview.
	 *
	 * Since: 2.10
	 */
	public void endPreview()
	{
		gtk_print_operation_preview_end_preview(getPrintOperationPreviewStruct());
	}

	/**
	 * Returns whether the given page is included in the set of pages that
	 * have been selected for printing.
	 *
	 * Params:
	 *     pageNr = a page number
	 *
	 * Return: %TRUE if the page has been selected for printing
	 *
	 * Since: 2.10
	 */
	public bool isSelected(int pageNr)
	{
		return gtk_print_operation_preview_is_selected(getPrintOperationPreviewStruct(), pageNr) != 0;
	}

	/**
	 * Renders a page to the preview, using the print context that
	 * was passed to the #GtkPrintOperation::preview handler together
	 * with @preview.
	 *
	 * A custom iprint preview should use this function in its ::expose
	 * handler to render the currently selected page.
	 *
	 * Note that this function requires a suitable cairo context to
	 * be associated with the print context.
	 *
	 * Params:
	 *     pageNr = the page to render
	 *
	 * Since: 2.10
	 */
	public void renderPage(int pageNr)
	{
		gtk_print_operation_preview_render_page(getPrintOperationPreviewStruct(), pageNr);
	}

	protected class OnGotPageSizeDelegateWrapper
	{
		void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnGotPageSizeDelegateWrapper[] onGotPageSizeListeners;

	/**
	 * The ::got-page-size signal is emitted once for each page
	 * that gets rendered to the preview.
	 *
	 * A handler for this signal should update the @context
	 * according to @page_setup and set up a suitable cairo
	 * context, using gtk_print_context_set_cairo_context().
	 *
	 * Params:
	 *     context = the current #GtkPrintContext
	 *     pageSetup = the #GtkPageSetup for the current page
	 */
	gulong addOnGotPageSize(void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onGotPageSizeListeners ~= new OnGotPageSizeDelegateWrapper(dlg, 0, connectFlags);
		onGotPageSizeListeners[onGotPageSizeListeners.length - 1].handlerId = Signals.connectData(
			this,
			"got-page-size",
			cast(GCallback)&callBackGotPageSize,
			cast(void*)onGotPageSizeListeners[onGotPageSizeListeners.length - 1],
			cast(GClosureNotify)&callBackGotPageSizeDestroy,
			connectFlags);
		return onGotPageSizeListeners[onGotPageSizeListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackGotPageSize(GtkPrintOperationPreview* printoperationpreviewStruct, GtkPrintContext* context, GtkPageSetup* pageSetup,OnGotPageSizeDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), ObjectG.getDObject!(PageSetup)(pageSetup), wrapper.outer);
	}
	
	extern(C) static void callBackGotPageSizeDestroy(OnGotPageSizeDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnGotPageSize(wrapper);
	}

	protected void internalRemoveOnGotPageSize(OnGotPageSizeDelegateWrapper source)
	{
		foreach(index, wrapper; onGotPageSizeListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onGotPageSizeListeners[index] = null;
				onGotPageSizeListeners = std.algorithm.remove(onGotPageSizeListeners, index);
				break;
			}
		}
	}
	

	protected class OnReadyDelegateWrapper
	{
		void delegate(PrintContext, PrintOperationPreviewIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, PrintOperationPreviewIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnReadyDelegateWrapper[] onReadyListeners;

	/**
	 * The ::ready signal gets emitted once per preview operation,
	 * before the first page is rendered.
	 *
	 * A handler for this signal can be used for setup tasks.
	 *
	 * Params:
	 *     context = the current #GtkPrintContext
	 */
	gulong addOnReady(void delegate(PrintContext, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onReadyListeners ~= new OnReadyDelegateWrapper(dlg, 0, connectFlags);
		onReadyListeners[onReadyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"ready",
			cast(GCallback)&callBackReady,
			cast(void*)onReadyListeners[onReadyListeners.length - 1],
			cast(GClosureNotify)&callBackReadyDestroy,
			connectFlags);
		return onReadyListeners[onReadyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackReady(GtkPrintOperationPreview* printoperationpreviewStruct, GtkPrintContext* context,OnReadyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), wrapper.outer);
	}
	
	extern(C) static void callBackReadyDestroy(OnReadyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnReady(wrapper);
	}

	protected void internalRemoveOnReady(OnReadyDelegateWrapper source)
	{
		foreach(index, wrapper; onReadyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onReadyListeners[index] = null;
				onReadyListeners = std.algorithm.remove(onReadyListeners, index);
				break;
			}
		}
	}
	
}
