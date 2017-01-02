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


module gtk.PrintOperation;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintContext;
private import gtk.PrintOperationPreview;
private import gtk.PrintOperationPreviewIF;
private import gtk.PrintOperationPreviewT;
private import gtk.PrintSettings;
private import gtk.Widget;
private import gtk.Window;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * GtkPrintOperation is the high-level, portable printing API.
 * It looks a bit different than other GTK+ dialogs such as the
 * #GtkFileChooser, since some platforms don’t expose enough
 * infrastructure to implement a good print dialog. On such
 * platforms, GtkPrintOperation uses the native print dialog.
 * On platforms which do not provide a native print dialog, GTK+
 * uses its own, see #GtkPrintUnixDialog.
 * 
 * The typical way to use the high-level printing API is to create
 * a GtkPrintOperation object with gtk_print_operation_new() when
 * the user selects to print. Then you set some properties on it,
 * e.g. the page size, any #GtkPrintSettings from previous print
 * operations, the number of pages, the current page, etc.
 * 
 * Then you start the print operation by calling gtk_print_operation_run().
 * It will then show a dialog, let the user select a printer and
 * options. When the user finished the dialog various signals will
 * be emitted on the #GtkPrintOperation, the main one being
 * #GtkPrintOperation::draw-page, which you are supposed to catch
 * and render the page on the provided #GtkPrintContext using Cairo.
 * 
 * # The high-level printing API
 * 
 * |[<!-- language="C" -->
 * static GtkPrintSettings *settings = NULL;
 * 
 * static void
 * do_print (void)
 * {
 * GtkPrintOperation *print;
 * GtkPrintOperationResult res;
 * 
 * print = gtk_print_operation_new ();
 * 
 * if (settings != NULL)
 * gtk_print_operation_set_print_settings (print, settings);
 * 
 * g_signal_connect (print, "begin_print", G_CALLBACK (begin_print), NULL);
 * g_signal_connect (print, "draw_page", G_CALLBACK (draw_page), NULL);
 * 
 * res = gtk_print_operation_run (print, GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
 * GTK_WINDOW (main_window), NULL);
 * 
 * if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
 * {
 * if (settings != NULL)
 * g_object_unref (settings);
 * settings = g_object_ref (gtk_print_operation_get_print_settings (print));
 * }
 * 
 * g_object_unref (print);
 * }
 * ]|
 * 
 * By default GtkPrintOperation uses an external application to do
 * print preview. To implement a custom print preview, an application
 * must connect to the preview signal. The functions
 * gtk_print_operation_preview_render_page(),
 * gtk_print_operation_preview_end_preview() and
 * gtk_print_operation_preview_is_selected()
 * are useful when implementing a print preview.
 */
public class PrintOperation : ObjectG, PrintOperationPreviewIF
{
	/** the main Gtk struct */
	protected GtkPrintOperation* gtkPrintOperation;

	/** Get the main Gtk struct */
	public GtkPrintOperation* getPrintOperationStruct()
	{
		return gtkPrintOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintOperation;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkPrintOperation = cast(GtkPrintOperation*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrintOperation* gtkPrintOperation, bool ownedRef = false)
	{
		this.gtkPrintOperation = gtkPrintOperation;
		super(cast(GObject*)gtkPrintOperation, ownedRef);
	}

	// add the PrintOperationPreview capabilities
	mixin PrintOperationPreviewT!(GtkPrintOperation);


	/** */
	public static GType getType()
	{
		return gtk_print_operation_get_type();
	}

	/**
	 * Creates a new #GtkPrintOperation.
	 *
	 * Return: a new #GtkPrintOperation
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_print_operation_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkPrintOperation*) p, true);
	}

	/**
	 * Cancels a running print operation. This function may
	 * be called from a #GtkPrintOperation::begin-print,
	 * #GtkPrintOperation::paginate or #GtkPrintOperation::draw-page
	 * signal handler to stop the currently running print
	 * operation.
	 *
	 * Since: 2.10
	 */
	public void cancel()
	{
		gtk_print_operation_cancel(gtkPrintOperation);
	}

	/**
	 * Signalize that drawing of particular page is complete.
	 *
	 * It is called after completion of page drawing (e.g. drawing in another
	 * thread).
	 * If gtk_print_operation_set_defer_drawing() was called before, then this function
	 * has to be called by application. In another case it is called by the library
	 * itself.
	 *
	 * Since: 2.16
	 */
	public void drawPageFinish()
	{
		gtk_print_operation_draw_page_finish(gtkPrintOperation);
	}

	/**
	 * Returns the default page setup, see
	 * gtk_print_operation_set_default_page_setup().
	 *
	 * Return: the default page setup
	 *
	 * Since: 2.10
	 */
	public PageSetup getDefaultPageSetup()
	{
		auto p = gtk_print_operation_get_default_page_setup(gtkPrintOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p);
	}

	/**
	 * Gets the value of #GtkPrintOperation:embed-page-setup property.
	 *
	 * Return: whether page setup selection combos are embedded
	 *
	 * Since: 2.18
	 */
	public bool getEmbedPageSetup()
	{
		return gtk_print_operation_get_embed_page_setup(gtkPrintOperation) != 0;
	}

	/**
	 * Call this when the result of a print operation is
	 * %GTK_PRINT_OPERATION_RESULT_ERROR, either as returned by
	 * gtk_print_operation_run(), or in the #GtkPrintOperation::done signal
	 * handler. The returned #GError will contain more details on what went wrong.
	 *
	 * Since: 2.10
	 *
	 * Throws: GException on failure.
	 */
	public void getError()
	{
		GError* err = null;
		
		gtk_print_operation_get_error(gtkPrintOperation, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 * Gets the value of #GtkPrintOperation:has-selection property.
	 *
	 * Return: whether there is a selection
	 *
	 * Since: 2.18
	 */
	public bool getHasSelection()
	{
		return gtk_print_operation_get_has_selection(gtkPrintOperation) != 0;
	}

	/**
	 * Returns the number of pages that will be printed.
	 *
	 * Note that this value is set during print preparation phase
	 * (%GTK_PRINT_STATUS_PREPARING), so this function should never be
	 * called before the data generation phase (%GTK_PRINT_STATUS_GENERATING_DATA).
	 * You can connect to the #GtkPrintOperation::status-changed signal
	 * and call gtk_print_operation_get_n_pages_to_print() when
	 * print status is %GTK_PRINT_STATUS_GENERATING_DATA.
	 * This is typically used to track the progress of print operation.
	 *
	 * Return: the number of pages that will be printed
	 *
	 * Since: 2.18
	 */
	public int getNPagesToPrint()
	{
		return gtk_print_operation_get_n_pages_to_print(gtkPrintOperation);
	}

	/**
	 * Returns the current print settings.
	 *
	 * Note that the return value is %NULL until either
	 * gtk_print_operation_set_print_settings() or
	 * gtk_print_operation_run() have been called.
	 *
	 * Return: the current print settings of @op.
	 *
	 * Since: 2.10
	 */
	public PrintSettings getPrintSettings()
	{
		auto p = gtk_print_operation_get_print_settings(gtkPrintOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) p);
	}

	/**
	 * Returns the status of the print operation.
	 * Also see gtk_print_operation_get_status_string().
	 *
	 * Return: the status of the print operation
	 *
	 * Since: 2.10
	 */
	public GtkPrintStatus getStatus()
	{
		return gtk_print_operation_get_status(gtkPrintOperation);
	}

	/**
	 * Returns a string representation of the status of the
	 * print operation. The string is translated and suitable
	 * for displaying the print status e.g. in a #GtkStatusbar.
	 *
	 * Use gtk_print_operation_get_status() to obtain a status
	 * value that is suitable for programmatic use.
	 *
	 * Return: a string representation of the status
	 *     of the print operation
	 *
	 * Since: 2.10
	 */
	public string getStatusString()
	{
		return Str.toString(gtk_print_operation_get_status_string(gtkPrintOperation));
	}

	/**
	 * Gets the value of #GtkPrintOperation:support-selection property.
	 *
	 * Return: whether the application supports print of selection
	 *
	 * Since: 2.18
	 */
	public bool getSupportSelection()
	{
		return gtk_print_operation_get_support_selection(gtkPrintOperation) != 0;
	}

	/**
	 * A convenience function to find out if the print operation
	 * is finished, either successfully (%GTK_PRINT_STATUS_FINISHED)
	 * or unsuccessfully (%GTK_PRINT_STATUS_FINISHED_ABORTED).
	 *
	 * Note: when you enable print status tracking the print operation
	 * can be in a non-finished state even after done has been called, as
	 * the operation status then tracks the print job status on the printer.
	 *
	 * Return: %TRUE, if the print operation is finished.
	 *
	 * Since: 2.10
	 */
	public bool isFinished()
	{
		return gtk_print_operation_is_finished(gtkPrintOperation) != 0;
	}

	/**
	 * Runs the print operation, by first letting the user modify
	 * print settings in the print dialog, and then print the document.
	 *
	 * Normally that this function does not return until the rendering of all
	 * pages is complete. You can connect to the
	 * #GtkPrintOperation::status-changed signal on @op to obtain some
	 * information about the progress of the print operation.
	 * Furthermore, it may use a recursive mainloop to show the print dialog.
	 *
	 * If you call gtk_print_operation_set_allow_async() or set the
	 * #GtkPrintOperation:allow-async property the operation will run
	 * asynchronously if this is supported on the platform. The
	 * #GtkPrintOperation::done signal will be emitted with the result of the
	 * operation when the it is done (i.e. when the dialog is canceled, or when
	 * the print succeeds or fails).
	 * |[<!-- language="C" -->
	 * if (settings != NULL)
	 * gtk_print_operation_set_print_settings (print, settings);
	 *
	 * if (page_setup != NULL)
	 * gtk_print_operation_set_default_page_setup (print, page_setup);
	 *
	 * g_signal_connect (print, "begin-print",
	 * G_CALLBACK (begin_print), &data);
	 * g_signal_connect (print, "draw-page",
	 * G_CALLBACK (draw_page), &data);
	 *
	 * res = gtk_print_operation_run (print,
	 * GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
	 * parent,
	 * &error);
	 *
	 * if (res == GTK_PRINT_OPERATION_RESULT_ERROR)
	 * {
	 * error_dialog = gtk_message_dialog_new (GTK_WINDOW (parent),
	 * GTK_DIALOG_DESTROY_WITH_PARENT,
	 * GTK_MESSAGE_ERROR,
	 * GTK_BUTTONS_CLOSE,
	 * "Error printing file:\n%s",
	 * error->message);
	 * g_signal_connect (error_dialog, "response",
	 * G_CALLBACK (gtk_widget_destroy), NULL);
	 * gtk_widget_show (error_dialog);
	 * g_error_free (error);
	 * }
	 * else if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
	 * {
	 * if (settings != NULL)
	 * g_object_unref (settings);
	 * settings = g_object_ref (gtk_print_operation_get_print_settings (print));
	 * }
	 * ]|
	 *
	 * Note that gtk_print_operation_run() can only be called once on a
	 * given #GtkPrintOperation.
	 *
	 * Params:
	 *     action = the action to start
	 *     parent = Transient parent of the dialog
	 *
	 * Return: the result of the print operation. A return value of
	 *     %GTK_PRINT_OPERATION_RESULT_APPLY indicates that the printing was
	 *     completed successfully. In this case, it is a good idea to obtain
	 *     the used print settings with gtk_print_operation_get_print_settings()
	 *     and store them for reuse with the next print operation. A value of
	 *     %GTK_PRINT_OPERATION_RESULT_IN_PROGRESS means the operation is running
	 *     asynchronously, and will emit the #GtkPrintOperation::done signal when
	 *     done.
	 *
	 * Since: 2.10
	 *
	 * Throws: GException on failure.
	 */
	public GtkPrintOperationResult run(GtkPrintOperationAction action, Window parent)
	{
		GError* err = null;
		
		auto p = gtk_print_operation_run(gtkPrintOperation, action, (parent is null) ? null : parent.getWindowStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets whether the gtk_print_operation_run() may return
	 * before the print operation is completed. Note that
	 * some platforms may not allow asynchronous operation.
	 *
	 * Params:
	 *     allowAsync = %TRUE to allow asynchronous operation
	 *
	 * Since: 2.10
	 */
	public void setAllowAsync(bool allowAsync)
	{
		gtk_print_operation_set_allow_async(gtkPrintOperation, allowAsync);
	}

	/**
	 * Sets the current page.
	 *
	 * If this is called before gtk_print_operation_run(),
	 * the user will be able to select to print only the current page.
	 *
	 * Note that this only makes sense for pre-paginated documents.
	 *
	 * Params:
	 *     currentPage = the current page, 0-based
	 *
	 * Since: 2.10
	 */
	public void setCurrentPage(int currentPage)
	{
		gtk_print_operation_set_current_page(gtkPrintOperation, currentPage);
	}

	/**
	 * Sets the label for the tab holding custom widgets.
	 *
	 * Params:
	 *     label = the label to use, or %NULL to use the default label
	 *
	 * Since: 2.10
	 */
	public void setCustomTabLabel(string label)
	{
		gtk_print_operation_set_custom_tab_label(gtkPrintOperation, Str.toStringz(label));
	}

	/**
	 * Makes @default_page_setup the default page setup for @op.
	 *
	 * This page setup will be used by gtk_print_operation_run(),
	 * but it can be overridden on a per-page basis by connecting
	 * to the #GtkPrintOperation::request-page-setup signal.
	 *
	 * Params:
	 *     defaultPageSetup = a #GtkPageSetup, or %NULL
	 *
	 * Since: 2.10
	 */
	public void setDefaultPageSetup(PageSetup defaultPageSetup)
	{
		gtk_print_operation_set_default_page_setup(gtkPrintOperation, (defaultPageSetup is null) ? null : defaultPageSetup.getPageSetupStruct());
	}

	/**
	 * Sets up the #GtkPrintOperation to wait for calling of
	 * gtk_print_operation_draw_page_finish() from application. It can
	 * be used for drawing page in another thread.
	 *
	 * This function must be called in the callback of “draw-page” signal.
	 *
	 * Since: 2.16
	 */
	public void setDeferDrawing()
	{
		gtk_print_operation_set_defer_drawing(gtkPrintOperation);
	}

	/**
	 * Embed page size combo box and orientation combo box into page setup page.
	 * Selected page setup is stored as default page setup in #GtkPrintOperation.
	 *
	 * Params:
	 *     embed = %TRUE to embed page setup selection in the #GtkPrintUnixDialog
	 *
	 * Since: 2.18
	 */
	public void setEmbedPageSetup(bool embed)
	{
		gtk_print_operation_set_embed_page_setup(gtkPrintOperation, embed);
	}

	/**
	 * Sets up the #GtkPrintOperation to generate a file instead
	 * of showing the print dialog. The indended use of this function
	 * is for implementing “Export to PDF” actions. Currently, PDF
	 * is the only supported format.
	 *
	 * “Print to PDF” support is independent of this and is done
	 * by letting the user pick the “Print to PDF” item from the list
	 * of printers in the print dialog.
	 *
	 * Params:
	 *     filename = the filename for the exported file
	 *
	 * Since: 2.10
	 */
	public void setExportFilename(string filename)
	{
		gtk_print_operation_set_export_filename(gtkPrintOperation, Str.toStringz(filename));
	}

	/**
	 * Sets whether there is a selection to print.
	 *
	 * Application has to set number of pages to which the selection
	 * will draw by gtk_print_operation_set_n_pages() in a callback of
	 * #GtkPrintOperation::begin-print.
	 *
	 * Params:
	 *     hasSelection = %TRUE indicates that a selection exists
	 *
	 * Since: 2.18
	 */
	public void setHasSelection(bool hasSelection)
	{
		gtk_print_operation_set_has_selection(gtkPrintOperation, hasSelection);
	}

	/**
	 * Sets the name of the print job. The name is used to identify
	 * the job (e.g. in monitoring applications like eggcups).
	 *
	 * If you don’t set a job name, GTK+ picks a default one by
	 * numbering successive print jobs.
	 *
	 * Params:
	 *     jobName = a string that identifies the print job
	 *
	 * Since: 2.10
	 */
	public void setJobName(string jobName)
	{
		gtk_print_operation_set_job_name(gtkPrintOperation, Str.toStringz(jobName));
	}

	/**
	 * Sets the number of pages in the document.
	 *
	 * This must be set to a positive number
	 * before the rendering starts. It may be set in a
	 * #GtkPrintOperation::begin-print signal hander.
	 *
	 * Note that the page numbers passed to the
	 * #GtkPrintOperation::request-page-setup
	 * and #GtkPrintOperation::draw-page signals are 0-based, i.e. if
	 * the user chooses to print all pages, the last ::draw-page signal
	 * will be for page @n_pages - 1.
	 *
	 * Params:
	 *     nPages = the number of pages
	 *
	 * Since: 2.10
	 */
	public void setNPages(int nPages)
	{
		gtk_print_operation_set_n_pages(gtkPrintOperation, nPages);
	}

	/**
	 * Sets the print settings for @op. This is typically used to
	 * re-establish print settings from a previous print operation,
	 * see gtk_print_operation_run().
	 *
	 * Params:
	 *     printSettings = #GtkPrintSettings
	 *
	 * Since: 2.10
	 */
	public void setPrintSettings(PrintSettings printSettings)
	{
		gtk_print_operation_set_print_settings(gtkPrintOperation, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}

	/**
	 * If @show_progress is %TRUE, the print operation will show a
	 * progress dialog during the print operation.
	 *
	 * Params:
	 *     showProgress = %TRUE to show a progress dialog
	 *
	 * Since: 2.10
	 */
	public void setShowProgress(bool showProgress)
	{
		gtk_print_operation_set_show_progress(gtkPrintOperation, showProgress);
	}

	/**
	 * Sets whether selection is supported by #GtkPrintOperation.
	 *
	 * Params:
	 *     supportSelection = %TRUE to support selection
	 *
	 * Since: 2.18
	 */
	public void setSupportSelection(bool supportSelection)
	{
		gtk_print_operation_set_support_selection(gtkPrintOperation, supportSelection);
	}

	/**
	 * If track_status is %TRUE, the print operation will try to continue report
	 * on the status of the print job in the printer queues and printer. This
	 * can allow your application to show things like “out of paper” issues,
	 * and when the print job actually reaches the printer.
	 *
	 * This function is often implemented using some form of polling, so it should
	 * not be enabled unless needed.
	 *
	 * Params:
	 *     trackStatus = %TRUE to track status after printing
	 *
	 * Since: 2.10
	 */
	public void setTrackPrintStatus(bool trackStatus)
	{
		gtk_print_operation_set_track_print_status(gtkPrintOperation, trackStatus);
	}

	/**
	 * Sets up the transformation for the cairo context obtained from
	 * #GtkPrintContext in such a way that distances are measured in
	 * units of @unit.
	 *
	 * Params:
	 *     unit = the unit to use
	 *
	 * Since: 2.10
	 */
	public void setUnit(GtkUnit unit)
	{
		gtk_print_operation_set_unit(gtkPrintOperation, unit);
	}

	/**
	 * If @full_page is %TRUE, the transformation for the cairo context
	 * obtained from #GtkPrintContext puts the origin at the top left
	 * corner of the page (which may not be the top left corner of the
	 * sheet, depending on page orientation and the number of pages per
	 * sheet). Otherwise, the origin is at the top left corner of the
	 * imageable area (i.e. inside the margins).
	 *
	 * Params:
	 *     fullPage = %TRUE to set up the #GtkPrintContext for the full page
	 *
	 * Since: 2.10
	 */
	public void setUseFullPage(bool fullPage)
	{
		gtk_print_operation_set_use_full_page(gtkPrintOperation, fullPage);
	}

	protected class OnBeginPrintDelegateWrapper
	{
		void delegate(PrintContext, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnBeginPrintDelegateWrapper[] onBeginPrintListeners;

	/**
	 * Emitted after the user has finished changing print settings
	 * in the dialog, before the actual rendering starts.
	 *
	 * A typical use for ::begin-print is to use the parameters from the
	 * #GtkPrintContext and paginate the document accordingly, and then
	 * set the number of pages with gtk_print_operation_set_n_pages().
	 *
	 * Params:
	 *     context = the #GtkPrintContext for the current operation
	 *
	 * Since: 2.10
	 */
	gulong addOnBeginPrint(void delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onBeginPrintListeners ~= new OnBeginPrintDelegateWrapper(dlg, 0, connectFlags);
		onBeginPrintListeners[onBeginPrintListeners.length - 1].handlerId = Signals.connectData(
			this,
			"begin-print",
			cast(GCallback)&callBackBeginPrint,
			cast(void*)onBeginPrintListeners[onBeginPrintListeners.length - 1],
			cast(GClosureNotify)&callBackBeginPrintDestroy,
			connectFlags);
		return onBeginPrintListeners[onBeginPrintListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackBeginPrint(GtkPrintOperation* printoperationStruct, GtkPrintContext* context,OnBeginPrintDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), wrapper.outer);
	}
	
	extern(C) static void callBackBeginPrintDestroy(OnBeginPrintDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnBeginPrint(wrapper);
	}

	protected void internalRemoveOnBeginPrint(OnBeginPrintDelegateWrapper source)
	{
		foreach(index, wrapper; onBeginPrintListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onBeginPrintListeners[index] = null;
				onBeginPrintListeners = std.algorithm.remove(onBeginPrintListeners, index);
				break;
			}
		}
	}
	

	protected class OnCreateCustomWidgetDelegateWrapper
	{
		ObjectG delegate(PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(ObjectG delegate(PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCreateCustomWidgetDelegateWrapper[] onCreateCustomWidgetListeners;

	/**
	 * Emitted when displaying the print dialog. If you return a
	 * widget in a handler for this signal it will be added to a custom
	 * tab in the print dialog. You typically return a container widget
	 * with multiple widgets in it.
	 *
	 * The print dialog owns the returned widget, and its lifetime is not
	 * controlled by the application. However, the widget is guaranteed
	 * to stay around until the #GtkPrintOperation::custom-widget-apply
	 * signal is emitted on the operation. Then you can read out any
	 * information you need from the widgets.
	 *
	 * Return: A custom widget that gets embedded in
	 *     the print dialog, or %NULL
	 *
	 * Since: 2.10
	 */
	gulong addOnCreateCustomWidget(ObjectG delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCreateCustomWidgetListeners ~= new OnCreateCustomWidgetDelegateWrapper(dlg, 0, connectFlags);
		onCreateCustomWidgetListeners[onCreateCustomWidgetListeners.length - 1].handlerId = Signals.connectData(
			this,
			"create-custom-widget",
			cast(GCallback)&callBackCreateCustomWidget,
			cast(void*)onCreateCustomWidgetListeners[onCreateCustomWidgetListeners.length - 1],
			cast(GClosureNotify)&callBackCreateCustomWidgetDestroy,
			connectFlags);
		return onCreateCustomWidgetListeners[onCreateCustomWidgetListeners.length - 1].handlerId;
	}
	
	extern(C) static GObject* callBackCreateCustomWidget(GtkPrintOperation* printoperationStruct,OnCreateCustomWidgetDelegateWrapper wrapper)
	{
		auto r = wrapper.dlg(wrapper.outer);
		return r.getObjectGStruct();
	}
	
	extern(C) static void callBackCreateCustomWidgetDestroy(OnCreateCustomWidgetDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnCreateCustomWidget(wrapper);
	}

	protected void internalRemoveOnCreateCustomWidget(OnCreateCustomWidgetDelegateWrapper source)
	{
		foreach(index, wrapper; onCreateCustomWidgetListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCreateCustomWidgetListeners[index] = null;
				onCreateCustomWidgetListeners = std.algorithm.remove(onCreateCustomWidgetListeners, index);
				break;
			}
		}
	}
	

	protected class OnCustomWidgetApplyDelegateWrapper
	{
		void delegate(Widget, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Widget, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCustomWidgetApplyDelegateWrapper[] onCustomWidgetApplyListeners;

	/**
	 * Emitted right before #GtkPrintOperation::begin-print if you added
	 * a custom widget in the #GtkPrintOperation::create-custom-widget handler.
	 * When you get this signal you should read the information from the
	 * custom widgets, as the widgets are not guaraneed to be around at a
	 * later time.
	 *
	 * Params:
	 *     widget = the custom widget added in create-custom-widget
	 *
	 * Since: 2.10
	 */
	gulong addOnCustomWidgetApply(void delegate(Widget, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCustomWidgetApplyListeners ~= new OnCustomWidgetApplyDelegateWrapper(dlg, 0, connectFlags);
		onCustomWidgetApplyListeners[onCustomWidgetApplyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"custom-widget-apply",
			cast(GCallback)&callBackCustomWidgetApply,
			cast(void*)onCustomWidgetApplyListeners[onCustomWidgetApplyListeners.length - 1],
			cast(GClosureNotify)&callBackCustomWidgetApplyDestroy,
			connectFlags);
		return onCustomWidgetApplyListeners[onCustomWidgetApplyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackCustomWidgetApply(GtkPrintOperation* printoperationStruct, GtkWidget* widget,OnCustomWidgetApplyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Widget)(widget), wrapper.outer);
	}
	
	extern(C) static void callBackCustomWidgetApplyDestroy(OnCustomWidgetApplyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnCustomWidgetApply(wrapper);
	}

	protected void internalRemoveOnCustomWidgetApply(OnCustomWidgetApplyDelegateWrapper source)
	{
		foreach(index, wrapper; onCustomWidgetApplyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCustomWidgetApplyListeners[index] = null;
				onCustomWidgetApplyListeners = std.algorithm.remove(onCustomWidgetApplyListeners, index);
				break;
			}
		}
	}
	

	protected class OnDoneDelegateWrapper
	{
		void delegate(GtkPrintOperationResult, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(GtkPrintOperationResult, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDoneDelegateWrapper[] onDoneListeners;

	/**
	 * Emitted when the print operation run has finished doing
	 * everything required for printing.
	 *
	 * @result gives you information about what happened during the run.
	 * If @result is %GTK_PRINT_OPERATION_RESULT_ERROR then you can call
	 * gtk_print_operation_get_error() for more information.
	 *
	 * If you enabled print status tracking then
	 * gtk_print_operation_is_finished() may still return %FALSE
	 * after #GtkPrintOperation::done was emitted.
	 *
	 * Params:
	 *     result = the result of the print operation
	 *
	 * Since: 2.10
	 */
	gulong addOnDone(void delegate(GtkPrintOperationResult, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDoneListeners ~= new OnDoneDelegateWrapper(dlg, 0, connectFlags);
		onDoneListeners[onDoneListeners.length - 1].handlerId = Signals.connectData(
			this,
			"done",
			cast(GCallback)&callBackDone,
			cast(void*)onDoneListeners[onDoneListeners.length - 1],
			cast(GClosureNotify)&callBackDoneDestroy,
			connectFlags);
		return onDoneListeners[onDoneListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDone(GtkPrintOperation* printoperationStruct, GtkPrintOperationResult result,OnDoneDelegateWrapper wrapper)
	{
		wrapper.dlg(result, wrapper.outer);
	}
	
	extern(C) static void callBackDoneDestroy(OnDoneDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDone(wrapper);
	}

	protected void internalRemoveOnDone(OnDoneDelegateWrapper source)
	{
		foreach(index, wrapper; onDoneListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDoneListeners[index] = null;
				onDoneListeners = std.algorithm.remove(onDoneListeners, index);
				break;
			}
		}
	}
	

	protected class OnDrawPageDelegateWrapper
	{
		void delegate(PrintContext, int, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, int, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDrawPageDelegateWrapper[] onDrawPageListeners;

	/**
	 * Emitted for every page that is printed. The signal handler
	 * must render the @page_nr's page onto the cairo context obtained
	 * from @context using gtk_print_context_get_cairo_context().
	 * |[<!-- language="C" -->
	 * static void
	 * draw_page (GtkPrintOperation *operation,
	 * GtkPrintContext   *context,
	 * gint               page_nr,
	 * gpointer           user_data)
	 * {
	 * cairo_t *cr;
	 * PangoLayout *layout;
	 * gdouble width, text_height;
	 * gint layout_height;
	 * PangoFontDescription *desc;
	 *
	 * cr = gtk_print_context_get_cairo_context (context);
	 * width = gtk_print_context_get_width (context);
	 *
	 * cairo_rectangle (cr, 0, 0, width, HEADER_HEIGHT);
	 *
	 * cairo_set_source_rgb (cr, 0.8, 0.8, 0.8);
	 * cairo_fill (cr);
	 *
	 * layout = gtk_print_context_create_pango_layout (context);
	 *
	 * desc = pango_font_description_from_string ("sans 14");
	 * pango_layout_set_font_description (layout, desc);
	 * pango_font_description_free (desc);
	 *
	 * pango_layout_set_text (layout, "some text", -1);
	 * pango_layout_set_width (layout, width * PANGO_SCALE);
	 * pango_layout_set_alignment (layout, PANGO_ALIGN_CENTER);
	 *
	 * pango_layout_get_size (layout, NULL, &layout_height);
	 * text_height = (gdouble)layout_height / PANGO_SCALE;
	 *
	 * cairo_move_to (cr, width / 2,  (HEADER_HEIGHT - text_height) / 2);
	 * pango_cairo_show_layout (cr, layout);
	 *
	 * g_object_unref (layout);
	 * }
	 * ]|
	 *
	 * Use gtk_print_operation_set_use_full_page() and
	 * gtk_print_operation_set_unit() before starting the print operation
	 * to set up the transformation of the cairo context according to your
	 * needs.
	 *
	 * Params:
	 *     context = the #GtkPrintContext for the current operation
	 *     pageNr = the number of the currently printed page (0-based)
	 *
	 * Since: 2.10
	 */
	gulong addOnDrawPage(void delegate(PrintContext, int, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDrawPageListeners ~= new OnDrawPageDelegateWrapper(dlg, 0, connectFlags);
		onDrawPageListeners[onDrawPageListeners.length - 1].handlerId = Signals.connectData(
			this,
			"draw-page",
			cast(GCallback)&callBackDrawPage,
			cast(void*)onDrawPageListeners[onDrawPageListeners.length - 1],
			cast(GClosureNotify)&callBackDrawPageDestroy,
			connectFlags);
		return onDrawPageListeners[onDrawPageListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDrawPage(GtkPrintOperation* printoperationStruct, GtkPrintContext* context, int pageNr,OnDrawPageDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), pageNr, wrapper.outer);
	}
	
	extern(C) static void callBackDrawPageDestroy(OnDrawPageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDrawPage(wrapper);
	}

	protected void internalRemoveOnDrawPage(OnDrawPageDelegateWrapper source)
	{
		foreach(index, wrapper; onDrawPageListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDrawPageListeners[index] = null;
				onDrawPageListeners = std.algorithm.remove(onDrawPageListeners, index);
				break;
			}
		}
	}
	

	protected class OnEndPrintDelegateWrapper
	{
		void delegate(PrintContext, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnEndPrintDelegateWrapper[] onEndPrintListeners;

	/**
	 * Emitted after all pages have been rendered.
	 * A handler for this signal can clean up any resources that have
	 * been allocated in the #GtkPrintOperation::begin-print handler.
	 *
	 * Params:
	 *     context = the #GtkPrintContext for the current operation
	 *
	 * Since: 2.10
	 */
	gulong addOnEndPrint(void delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onEndPrintListeners ~= new OnEndPrintDelegateWrapper(dlg, 0, connectFlags);
		onEndPrintListeners[onEndPrintListeners.length - 1].handlerId = Signals.connectData(
			this,
			"end-print",
			cast(GCallback)&callBackEndPrint,
			cast(void*)onEndPrintListeners[onEndPrintListeners.length - 1],
			cast(GClosureNotify)&callBackEndPrintDestroy,
			connectFlags);
		return onEndPrintListeners[onEndPrintListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackEndPrint(GtkPrintOperation* printoperationStruct, GtkPrintContext* context,OnEndPrintDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), wrapper.outer);
	}
	
	extern(C) static void callBackEndPrintDestroy(OnEndPrintDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnEndPrint(wrapper);
	}

	protected void internalRemoveOnEndPrint(OnEndPrintDelegateWrapper source)
	{
		foreach(index, wrapper; onEndPrintListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onEndPrintListeners[index] = null;
				onEndPrintListeners = std.algorithm.remove(onEndPrintListeners, index);
				break;
			}
		}
	}
	

	protected class OnPaginateDelegateWrapper
	{
		bool delegate(PrintContext, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(PrintContext, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPaginateDelegateWrapper[] onPaginateListeners;

	/**
	 * Emitted after the #GtkPrintOperation::begin-print signal, but before
	 * the actual rendering starts. It keeps getting emitted until a connected
	 * signal handler returns %TRUE.
	 *
	 * The ::paginate signal is intended to be used for paginating a document
	 * in small chunks, to avoid blocking the user interface for a long
	 * time. The signal handler should update the number of pages using
	 * gtk_print_operation_set_n_pages(), and return %TRUE if the document
	 * has been completely paginated.
	 *
	 * If you don't need to do pagination in chunks, you can simply do
	 * it all in the ::begin-print handler, and set the number of pages
	 * from there.
	 *
	 * Params:
	 *     context = the #GtkPrintContext for the current operation
	 *
	 * Return: %TRUE if pagination is complete
	 *
	 * Since: 2.10
	 */
	gulong addOnPaginate(bool delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPaginateListeners ~= new OnPaginateDelegateWrapper(dlg, 0, connectFlags);
		onPaginateListeners[onPaginateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"paginate",
			cast(GCallback)&callBackPaginate,
			cast(void*)onPaginateListeners[onPaginateListeners.length - 1],
			cast(GClosureNotify)&callBackPaginateDestroy,
			connectFlags);
		return onPaginateListeners[onPaginateListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackPaginate(GtkPrintOperation* printoperationStruct, GtkPrintContext* context,OnPaginateDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), wrapper.outer);
	}
	
	extern(C) static void callBackPaginateDestroy(OnPaginateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPaginate(wrapper);
	}

	protected void internalRemoveOnPaginate(OnPaginateDelegateWrapper source)
	{
		foreach(index, wrapper; onPaginateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPaginateListeners[index] = null;
				onPaginateListeners = std.algorithm.remove(onPaginateListeners, index);
				break;
			}
		}
	}
	

	protected class OnPreviewDelegateWrapper
	{
		bool delegate(PrintOperationPreviewIF, PrintContext, Window, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(PrintOperationPreviewIF, PrintContext, Window, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPreviewDelegateWrapper[] onPreviewListeners;

	/**
	 * Gets emitted when a preview is requested from the native dialog.
	 *
	 * The default handler for this signal uses an external viewer
	 * application to preview.
	 *
	 * To implement a custom print preview, an application must return
	 * %TRUE from its handler for this signal. In order to use the
	 * provided @context for the preview implementation, it must be
	 * given a suitable cairo context with gtk_print_context_set_cairo_context().
	 *
	 * The custom preview implementation can use
	 * gtk_print_operation_preview_is_selected() and
	 * gtk_print_operation_preview_render_page() to find pages which
	 * are selected for print and render them. The preview must be
	 * finished by calling gtk_print_operation_preview_end_preview()
	 * (typically in response to the user clicking a close button).
	 *
	 * Params:
	 *     preview = the #GtkPrintOperationPreview for the current operation
	 *     context = the #GtkPrintContext that will be used
	 *     parent = the #GtkWindow to use as window parent, or %NULL
	 *
	 * Return: %TRUE if the listener wants to take over control of the preview
	 *
	 * Since: 2.10
	 */
	gulong addOnPreview(bool delegate(PrintOperationPreviewIF, PrintContext, Window, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPreviewListeners ~= new OnPreviewDelegateWrapper(dlg, 0, connectFlags);
		onPreviewListeners[onPreviewListeners.length - 1].handlerId = Signals.connectData(
			this,
			"preview",
			cast(GCallback)&callBackPreview,
			cast(void*)onPreviewListeners[onPreviewListeners.length - 1],
			cast(GClosureNotify)&callBackPreviewDestroy,
			connectFlags);
		return onPreviewListeners[onPreviewListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackPreview(GtkPrintOperation* printoperationStruct, GtkPrintOperationPreview* preview, GtkPrintContext* context, GtkWindow* parent,OnPreviewDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(PrintOperationPreview, PrintOperationPreviewIF)(preview), ObjectG.getDObject!(PrintContext)(context), ObjectG.getDObject!(Window)(parent), wrapper.outer);
	}
	
	extern(C) static void callBackPreviewDestroy(OnPreviewDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPreview(wrapper);
	}

	protected void internalRemoveOnPreview(OnPreviewDelegateWrapper source)
	{
		foreach(index, wrapper; onPreviewListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPreviewListeners[index] = null;
				onPreviewListeners = std.algorithm.remove(onPreviewListeners, index);
				break;
			}
		}
	}
	

	protected class OnRequestPageSetupDelegateWrapper
	{
		void delegate(PrintContext, int, PageSetup, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintContext, int, PageSetup, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRequestPageSetupDelegateWrapper[] onRequestPageSetupListeners;

	/**
	 * Emitted once for every page that is printed, to give
	 * the application a chance to modify the page setup. Any changes
	 * done to @setup will be in force only for printing this page.
	 *
	 * Params:
	 *     context = the #GtkPrintContext for the current operation
	 *     pageNr = the number of the currently printed page (0-based)
	 *     setup = the #GtkPageSetup
	 *
	 * Since: 2.10
	 */
	gulong addOnRequestPageSetup(void delegate(PrintContext, int, PageSetup, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRequestPageSetupListeners ~= new OnRequestPageSetupDelegateWrapper(dlg, 0, connectFlags);
		onRequestPageSetupListeners[onRequestPageSetupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"request-page-setup",
			cast(GCallback)&callBackRequestPageSetup,
			cast(void*)onRequestPageSetupListeners[onRequestPageSetupListeners.length - 1],
			cast(GClosureNotify)&callBackRequestPageSetupDestroy,
			connectFlags);
		return onRequestPageSetupListeners[onRequestPageSetupListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRequestPageSetup(GtkPrintOperation* printoperationStruct, GtkPrintContext* context, int pageNr, GtkPageSetup* setup,OnRequestPageSetupDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(PrintContext)(context), pageNr, ObjectG.getDObject!(PageSetup)(setup), wrapper.outer);
	}
	
	extern(C) static void callBackRequestPageSetupDestroy(OnRequestPageSetupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRequestPageSetup(wrapper);
	}

	protected void internalRemoveOnRequestPageSetup(OnRequestPageSetupDelegateWrapper source)
	{
		foreach(index, wrapper; onRequestPageSetupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRequestPageSetupListeners[index] = null;
				onRequestPageSetupListeners = std.algorithm.remove(onRequestPageSetupListeners, index);
				break;
			}
		}
	}
	

	protected class OnStatusChangedDelegateWrapper
	{
		void delegate(PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnStatusChangedDelegateWrapper[] onStatusChangedListeners;

	/**
	 * Emitted at between the various phases of the print operation.
	 * See #GtkPrintStatus for the phases that are being discriminated.
	 * Use gtk_print_operation_get_status() to find out the current
	 * status.
	 *
	 * Since: 2.10
	 */
	gulong addOnStatusChanged(void delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onStatusChangedListeners ~= new OnStatusChangedDelegateWrapper(dlg, 0, connectFlags);
		onStatusChangedListeners[onStatusChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"status-changed",
			cast(GCallback)&callBackStatusChanged,
			cast(void*)onStatusChangedListeners[onStatusChangedListeners.length - 1],
			cast(GClosureNotify)&callBackStatusChangedDestroy,
			connectFlags);
		return onStatusChangedListeners[onStatusChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackStatusChanged(GtkPrintOperation* printoperationStruct,OnStatusChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackStatusChangedDestroy(OnStatusChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnStatusChanged(wrapper);
	}

	protected void internalRemoveOnStatusChanged(OnStatusChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onStatusChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onStatusChangedListeners[index] = null;
				onStatusChangedListeners = std.algorithm.remove(onStatusChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnUpdateCustomWidgetDelegateWrapper
	{
		void delegate(Widget, PageSetup, PrintSettings, PrintOperation) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Widget, PageSetup, PrintSettings, PrintOperation) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnUpdateCustomWidgetDelegateWrapper[] onUpdateCustomWidgetListeners;

	/**
	 * Emitted after change of selected printer. The actual page setup and
	 * print settings are passed to the custom widget, which can actualize
	 * itself according to this change.
	 *
	 * Params:
	 *     widget = the custom widget added in create-custom-widget
	 *     setup = actual page setup
	 *     settings = actual print settings
	 *
	 * Since: 2.18
	 */
	gulong addOnUpdateCustomWidget(void delegate(Widget, PageSetup, PrintSettings, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onUpdateCustomWidgetListeners ~= new OnUpdateCustomWidgetDelegateWrapper(dlg, 0, connectFlags);
		onUpdateCustomWidgetListeners[onUpdateCustomWidgetListeners.length - 1].handlerId = Signals.connectData(
			this,
			"update-custom-widget",
			cast(GCallback)&callBackUpdateCustomWidget,
			cast(void*)onUpdateCustomWidgetListeners[onUpdateCustomWidgetListeners.length - 1],
			cast(GClosureNotify)&callBackUpdateCustomWidgetDestroy,
			connectFlags);
		return onUpdateCustomWidgetListeners[onUpdateCustomWidgetListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackUpdateCustomWidget(GtkPrintOperation* printoperationStruct, GtkWidget* widget, GtkPageSetup* setup, GtkPrintSettings* settings,OnUpdateCustomWidgetDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Widget)(widget), ObjectG.getDObject!(PageSetup)(setup), ObjectG.getDObject!(PrintSettings)(settings), wrapper.outer);
	}
	
	extern(C) static void callBackUpdateCustomWidgetDestroy(OnUpdateCustomWidgetDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnUpdateCustomWidget(wrapper);
	}

	protected void internalRemoveOnUpdateCustomWidget(OnUpdateCustomWidgetDelegateWrapper source)
	{
		foreach(index, wrapper; onUpdateCustomWidgetListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onUpdateCustomWidgetListeners[index] = null;
				onUpdateCustomWidgetListeners = std.algorithm.remove(onUpdateCustomWidgetListeners, index);
				break;
			}
		}
	}
	

	/**
	 * Runs a page setup dialog, letting the user modify the values from
	 * @page_setup. If the user cancels the dialog, the returned #GtkPageSetup
	 * is identical to the passed in @page_setup, otherwise it contains the
	 * modifications done in the dialog.
	 *
	 * Note that this function may use a recursive mainloop to show the page
	 * setup dialog. See gtk_print_run_page_setup_dialog_async() if this is
	 * a problem.
	 *
	 * Params:
	 *     parent = transient parent
	 *     pageSetup = an existing #GtkPageSetup
	 *     settings = a #GtkPrintSettings
	 *
	 * Return: a new #GtkPageSetup
	 *
	 * Since: 2.10
	 */
	public static PageSetup printRunPageSetupDialog(Window parent, PageSetup pageSetup, PrintSettings settings)
	{
		auto p = gtk_print_run_page_setup_dialog((parent is null) ? null : parent.getWindowStruct(), (pageSetup is null) ? null : pageSetup.getPageSetupStruct(), (settings is null) ? null : settings.getPrintSettingsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p, true);
	}

	/**
	 * Runs a page setup dialog, letting the user modify the values from @page_setup.
	 *
	 * In contrast to gtk_print_run_page_setup_dialog(), this function  returns after
	 * showing the page setup dialog on platforms that support this, and calls @done_cb
	 * from a signal handler for the ::response signal of the dialog.
	 *
	 * Params:
	 *     parent = transient parent, or %NULL
	 *     pageSetup = an existing #GtkPageSetup, or %NULL
	 *     settings = a #GtkPrintSettings
	 *     doneCb = a function to call when the user saves
	 *         the modified page setup
	 *     data = user data to pass to @done_cb
	 *
	 * Since: 2.10
	 */
	public static void printRunPageSetupDialogAsync(Window parent, PageSetup pageSetup, PrintSettings settings, GtkPageSetupDoneFunc doneCb, void* data)
	{
		gtk_print_run_page_setup_dialog_async((parent is null) ? null : parent.getWindowStruct(), (pageSetup is null) ? null : pageSetup.getPageSetupStruct(), (settings is null) ? null : settings.getPrintSettingsStruct(), doneCb, data);
	}
}
