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
 * inFile  = 
 * outPack = gtk
 * outFile = PrintOperationPreviewIF
 * strct   = GtkPrintOperationPreview
 * realStrct=
 * ctorStrct=
 * clss    = PrintOperationPreviewT
 * interf  = PrintOperationPreviewIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_operation_preview_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- begin-print
 * 	- create-custom-widget
 * 	- custom-widget-apply
 * 	- done
 * 	- draw-page
 * 	- end-print
 * 	- paginate
 * 	- preview
 * 	- request-page-setup
 * 	- status-changed
 * 	- update-custom-widget
 * imports:
 * 	- gtk.PageSetup
 * 	- gtk.PrintContext
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintContext* -> PrintContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PrintOperationPreviewIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.PageSetup;
private import gtk.PrintContext;




/**
 * Description
 * GtkPrintOperation is the high-level, portable printing API.
 * It looks a bit different than other GTK+ dialogs such as the
 * GtkFileChooser, since some platforms don't expose enough
 * infrastructure to implement a good print dialog. On such
 * platforms, GtkPrintOperation uses the native print dialog.
 * On platforms which do not provide a native print dialog, GTK+
 * uses its own, see GtkPrintUnixDialog.
 * The typical way to use the high-level printing API is to create
 * a GtkPrintOperation object with gtk_print_operation_new() when
 * the user selects to print. Then you set some properties on it,
 * e.g. the page size, any GtkPrintSettings from previous print
 * operations, the number of pages, the current page, etc.
 * Then you start the print operation by calling gtk_print_operation_run().
 * It will then show a dialog, let the user select a printer and
 * options. When the user finished the dialog various signals will
 * be emitted on the GtkPrintOperation, the main one being
 * "draw-page", which you are supposed to catch
 * and render the page on the provided GtkPrintContext using Cairo.
 * $(DDOC_COMMENT example)
 * By default GtkPrintOperation uses an external application to do
 * print preview. To implement a custom print preview, an application
 * must connect to the preview signal. The functions
 * gtk_print_operation_preview_render_page(),
 * gtk_print_operation_preview_end_preview() and
 * gtk_print_operation_preview_is_selected()
 * are useful when implementing a print preview.
 */
public interface PrintOperationPreviewIF
{
	
	
	public GtkPrintOperationPreview* getPrintOperationPreviewTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(PrintContext, PageSetup, PrintOperationPreviewIF)[] onGotPageSizeListeners();
	/**
	 * The ::got-page-size signal is emitted once for each page
	 * that gets rendered to the preview.
	 * A handler for this signal should update the context
	 * according to page_setup and set up a suitable cairo
	 * context, using gtk_print_context_set_cairo_context().
	 */
	void addOnGotPageSize(void delegate(PrintContext, PageSetup, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(PrintContext, PrintOperationPreviewIF)[] onReadyListeners();
	/**
	 * The ::ready signal gets emitted once per preview operation,
	 * before the first page is rendered.
	 * A handler for this signal can be used for setup tasks.
	 * See Also
	 * GtkPrintContext, GtkPrintUnixDialog
	 */
	void addOnReady(void delegate(PrintContext, PrintOperationPreviewIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Ends a preview.
	 * This function must be called to finish a custom print preview.
	 * Since 2.10
	 */
	public void endPreview();
	
	/**
	 * Returns whether the given page is included in the set of pages that
	 * have been selected for printing.
	 * Since 2.10
	 * Params:
	 * pageNr = a page number
	 * Returns: TRUE if the page has been selected for printing
	 */
	public int isSelected(int pageNr);
	
	/**
	 * Renders a page to the preview, using the print context that
	 * was passed to the "preview" handler together
	 * with preview.
	 * A custom iprint preview should use this function in its ::expose
	 * handler to render the currently selected page.
	 * Note that this function requires a suitable cairo context to
	 * be associated with the print context.
	 * Since 2.10
	 * Params:
	 * pageNr = the page to render
	 */
	public void renderPage(int pageNr);
}
