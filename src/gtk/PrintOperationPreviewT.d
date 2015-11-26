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

	int[string] connectedSignals;

	void delegate(PrintContext, PageSetup, PrintOperationPreviewIF)[] _onGotPageSizeListeners;
	@property void delegate(PrintContext, PageSetup, PrintOperationPreviewIF)[] onGotPageSizeListeners()
	{
		return _onGotPageSizeListeners;
	}
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
	void addOnGotPageSize(void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "got-page-size" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"got-page-size",
				cast(GCallback)&callBackGotPageSize,
				cast(void*)cast(PrintOperationPreviewIF)this,
				null,
				connectFlags);
			connectedSignals["got-page-size"] = 1;
		}
		_onGotPageSizeListeners ~= dlg;
	}
	extern(C) static void callBackGotPageSize(GtkPrintOperationPreview* printoperationpreviewStruct, GtkPrintContext* context, GtkPageSetup* pageSetup, PrintOperationPreviewIF _printoperationpreview)
	{
		foreach ( void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg; _printoperationpreview.onGotPageSizeListeners )
		{
			dlg(ObjectG.getDObject!(PrintContext)(context), ObjectG.getDObject!(PageSetup)(pageSetup), _printoperationpreview);
		}
	}

	void delegate(PrintContext, PrintOperationPreviewIF)[] _onReadyListeners;
	@property void delegate(PrintContext, PrintOperationPreviewIF)[] onReadyListeners()
	{
		return _onReadyListeners;
	}
	/**
	 * The ::ready signal gets emitted once per preview operation,
	 * before the first page is rendered.
	 *
	 * A handler for this signal can be used for setup tasks.
	 *
	 * Params:
	 *     context = the current #GtkPrintContext
	 */
	void addOnReady(void delegate(PrintContext, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "ready" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"ready",
				cast(GCallback)&callBackReady,
				cast(void*)cast(PrintOperationPreviewIF)this,
				null,
				connectFlags);
			connectedSignals["ready"] = 1;
		}
		_onReadyListeners ~= dlg;
	}
	extern(C) static void callBackReady(GtkPrintOperationPreview* printoperationpreviewStruct, GtkPrintContext* context, PrintOperationPreviewIF _printoperationpreview)
	{
		foreach ( void delegate(PrintContext, PrintOperationPreviewIF) dlg; _printoperationpreview.onReadyListeners )
		{
			dlg(ObjectG.getDObject!(PrintContext)(context), _printoperationpreview);
		}
	}
}
