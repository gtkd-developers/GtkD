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
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintContext;
private import gtk.PrintOperationPreviewIF;
private import gtk.PrintOperationPreviewT;
private import gtk.PrintSettings;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkPrintOperation` is the high-level, portable printing API.
 * 
 * It looks a bit different than other GTK dialogs such as the
 * `GtkFileChooser`, since some platforms don’t expose enough
 * infrastructure to implement a good print dialog. On such
 * platforms, `GtkPrintOperation` uses the native print dialog.
 * On platforms which do not provide a native print dialog, GTK
 * uses its own, see [class@Gtk.PrintUnixDialog].
 * 
 * The typical way to use the high-level printing API is to create
 * a `GtkPrintOperation` object with [ctor@Gtk.PrintOperation.new]
 * when the user selects to print. Then you set some properties on it,
 * e.g. the page size, any [class@Gtk.PrintSettings] from previous print
 * operations, the number of pages, the current page, etc.
 * 
 * Then you start the print operation by calling [method@Gtk.PrintOperation.run].
 * It will then show a dialog, let the user select a printer and options.
 * When the user finished the dialog, various signals will be emitted on
 * the `GtkPrintOperation`, the main one being
 * [signal@Gtk.PrintOperation::draw-page], which you are supposed to handle
 * and render the page on the provided [class@Gtk.PrintContext] using Cairo.
 * 
 * # The high-level printing API
 * 
 * ```c
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
 * ```
 * 
 * By default `GtkPrintOperation` uses an external application to do
 * print preview. To implement a custom print preview, an application
 * must connect to the preview signal. The functions
 * [method@Gtk.PrintOperationPreview.render_page],
 * [method@Gtk.PrintOperationPreview.end_preview] and
 * [method@Gtk.PrintOperationPreview.is_selected]
 * are useful when implementing a print preview.
 */
public class PrintOperation : ObjectG, PrintOperationPreviewIF
{
	/** the main Gtk struct */
	protected GtkPrintOperation* gtkPrintOperation;

	/** Get the main Gtk struct */
	public GtkPrintOperation* getPrintOperationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPrintOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintOperation;
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
	 * Creates a new `GtkPrintOperation`.
	 *
	 * Returns: a new `GtkPrintOperation`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_print_operation_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPrintOperation*) __p, true);
	}

	/**
	 * Cancels a running print operation.
	 *
	 * This function may be called from a [signal@Gtk.PrintOperation::begin-print],
	 * [signal@Gtk.PrintOperation::paginate] or [signal@Gtk.PrintOperation::draw-page]
	 * signal handler to stop the currently running print operation.
	 */
	public void cancel()
	{
		gtk_print_operation_cancel(gtkPrintOperation);
	}

	/**
	 * Signal that drawing of particular page is complete.
	 *
	 * It is called after completion of page drawing (e.g. drawing
	 * in another thread). If [method@Gtk.PrintOperation.set_defer_drawing]
	 * was called before, then this function has to be called by application.
	 * Otherwise it is called by GTK itself.
	 */
	public void drawPageFinish()
	{
		gtk_print_operation_draw_page_finish(gtkPrintOperation);
	}

	/**
	 * Returns the default page setup.
	 *
	 * Returns: the default page setup
	 */
	public PageSetup getDefaultPageSetup()
	{
		auto __p = gtk_print_operation_get_default_page_setup(gtkPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p);
	}

	/**
	 * Gets whether page setup selection combos are embedded
	 *
	 * Returns: whether page setup selection combos are embedded
	 */
	public bool getEmbedPageSetup()
	{
		return gtk_print_operation_get_embed_page_setup(gtkPrintOperation) != 0;
	}

	/**
	 * Call this when the result of a print operation is
	 * %GTK_PRINT_OPERATION_RESULT_ERROR.
	 *
	 * It can be called either after [method@Gtk.PrintOperation.run]
	 * returns, or in the [signal@Gtk.PrintOperation::done] signal
	 * handler.
	 *
	 * The returned `GError` will contain more details on what went wrong.
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
	 * Gets whether there is a selection.
	 *
	 * Returns: whether there is a selection
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
	 * You can connect to the [signal@Gtk.PrintOperation::status-changed]
	 * signal and call gtk_print_operation_get_n_pages_to_print() when
	 * print status is %GTK_PRINT_STATUS_GENERATING_DATA.
	 *
	 * This is typically used to track the progress of print operation.
	 *
	 * Returns: the number of pages that will be printed
	 */
	public int getNPagesToPrint()
	{
		return gtk_print_operation_get_n_pages_to_print(gtkPrintOperation);
	}

	/**
	 * Returns the current print settings.
	 *
	 * Note that the return value is %NULL until either
	 * [method@Gtk.PrintOperation.set_print_settings] or
	 * [method@Gtk.PrintOperation.run] have been called.
	 *
	 * Returns: the current print settings of @op.
	 */
	public PrintSettings getPrintSettings()
	{
		auto __p = gtk_print_operation_get_print_settings(gtkPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) __p);
	}

	/**
	 * Returns the status of the print operation.
	 *
	 * Also see [method@Gtk.PrintOperation.get_status_string].
	 *
	 * Returns: the status of the print operation
	 */
	public GtkPrintStatus getStatus()
	{
		return gtk_print_operation_get_status(gtkPrintOperation);
	}

	/**
	 * Returns a string representation of the status of the
	 * print operation.
	 *
	 * The string is translated and suitable for displaying
	 * the print status e.g. in a `GtkStatusbar`.
	 *
	 * Use [method@Gtk.PrintOperation.get_status] to obtain
	 * a status value that is suitable for programmatic use.
	 *
	 * Returns: a string representation of the status
	 *     of the print operation
	 */
	public string getStatusString()
	{
		return Str.toString(gtk_print_operation_get_status_string(gtkPrintOperation));
	}

	/**
	 * Gets whether the application supports print of selection
	 *
	 * Returns: whether the application supports print of selection
	 */
	public bool getSupportSelection()
	{
		return gtk_print_operation_get_support_selection(gtkPrintOperation) != 0;
	}

	/**
	 * A convenience function to find out if the print operation
	 * is finished.
	 *
	 * a print operation is finished if its status is either
	 * %GTK_PRINT_STATUS_FINISHED or %GTK_PRINT_STATUS_FINISHED_ABORTED.
	 *
	 * Note: when you enable print status tracking the print operation
	 * can be in a non-finished state even after done has been called, as
	 * the operation status then tracks the print job status on the printer.
	 *
	 * Returns: %TRUE, if the print operation is finished.
	 */
	public bool isFinished()
	{
		return gtk_print_operation_is_finished(gtkPrintOperation) != 0;
	}

	/**
	 * Runs the print operation.
	 *
	 * Normally that this function does not return until the rendering
	 * of all pages is complete. You can connect to the
	 * [signal@Gtk.PrintOperation::status-changed] signal on @op to obtain
	 * some information about the progress of the print operation.
	 *
	 * Furthermore, it may use a recursive mainloop to show the print dialog.
	 *
	 * If you set the [Gtk.PrintOperation:allow-async] property, the operation
	 * will run asynchronously if this is supported on the platform. The
	 * [signal@Gtk.PrintOperation::done] signal will be emitted with the result
	 * of the operation when the it is done (i.e. when the dialog is canceled,
	 * or when the print succeeds or fails).
	 *
	 * ```c
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
	 * G_CALLBACK (gtk_window_destroy), NULL);
	 * gtk_widget_show (error_dialog);
	 * g_error_free (error);
	 * }
	 * else if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
	 * {
	 * if (settings != NULL)
	 * g_object_unref (settings);
	 * settings = g_object_ref (gtk_print_operation_get_print_settings (print));
	 * }
	 * ```
	 *
	 * Note that gtk_print_operation_run() can only be called once on a
	 * given `GtkPrintOperation`.
	 *
	 * Params:
	 *     action = the action to start
	 *     parent = Transient parent of the dialog
	 *
	 * Returns: the result of the print operation. A return value of
	 *     %GTK_PRINT_OPERATION_RESULT_APPLY indicates that the printing was
	 *     completed successfully. In this case, it is a good idea to obtain
	 *     the used print settings with
	 *     [method@Gtk.PrintOperation.get_print_settings]
	 *     and store them for reuse with the next print operation. A value of
	 *     %GTK_PRINT_OPERATION_RESULT_IN_PROGRESS means the operation is running
	 *     asynchronously, and will emit the [signal@Gtk.PrintOperation::done]
	 *     signal when done.
	 *
	 * Throws: GException on failure.
	 */
	public GtkPrintOperationResult run(GtkPrintOperationAction action, Window parent)
	{
		GError* err = null;

		auto __p = gtk_print_operation_run(gtkPrintOperation, action, (parent is null) ? null : parent.getWindowStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets whether gtk_print_operation_run() may return
	 * before the print operation is completed.
	 *
	 * Note that some platforms may not allow asynchronous
	 * operation.
	 *
	 * Params:
	 *     allowAsync = %TRUE to allow asynchronous operation
	 */
	public void setAllowAsync(bool allowAsync)
	{
		gtk_print_operation_set_allow_async(gtkPrintOperation, allowAsync);
	}

	/**
	 * Sets the current page.
	 *
	 * If this is called before [method@Gtk.PrintOperation.run],
	 * the user will be able to select to print only the current page.
	 *
	 * Note that this only makes sense for pre-paginated documents.
	 *
	 * Params:
	 *     currentPage = the current page, 0-based
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
	 */
	public void setCustomTabLabel(string label)
	{
		gtk_print_operation_set_custom_tab_label(gtkPrintOperation, Str.toStringz(label));
	}

	/**
	 * Makes @default_page_setup the default page setup for @op.
	 *
	 * This page setup will be used by [method@Gtk.PrintOperation.run],
	 * but it can be overridden on a per-page basis by connecting
	 * to the [signal@Gtk.PrintOperation::request-page-setup] signal.
	 *
	 * Params:
	 *     defaultPageSetup = a `GtkPageSetup`
	 */
	public void setDefaultPageSetup(PageSetup defaultPageSetup)
	{
		gtk_print_operation_set_default_page_setup(gtkPrintOperation, (defaultPageSetup is null) ? null : defaultPageSetup.getPageSetupStruct());
	}

	/**
	 * Sets up the `GtkPrintOperation` to wait for calling of
	 * [method@Gtk.PrintOperation.draw_page_finish from application.
	 *
	 * This can be used for drawing page in another thread.
	 *
	 * This function must be called in the callback of the
	 * [signal@Gtk.PrintOperation::draw-page] signal.
	 */
	public void setDeferDrawing()
	{
		gtk_print_operation_set_defer_drawing(gtkPrintOperation);
	}

	/**
	 * Embed page size combo box and orientation combo box into page setup page.
	 *
	 * Selected page setup is stored as default page setup in `GtkPrintOperation`.
	 *
	 * Params:
	 *     embed = %TRUE to embed page setup selection in the `GtkPrintUnixDialog`
	 */
	public void setEmbedPageSetup(bool embed)
	{
		gtk_print_operation_set_embed_page_setup(gtkPrintOperation, embed);
	}

	/**
	 * Sets up the `GtkPrintOperation` to generate a file instead
	 * of showing the print dialog.
	 *
	 * The intended use of this function is for implementing
	 * “Export to PDF” actions. Currently, PDF is the only supported
	 * format.
	 *
	 * “Print to PDF” support is independent of this and is done
	 * by letting the user pick the “Print to PDF” item from the list
	 * of printers in the print dialog.
	 *
	 * Params:
	 *     filename = the filename for the exported file
	 */
	public void setExportFilename(string filename)
	{
		gtk_print_operation_set_export_filename(gtkPrintOperation, Str.toStringz(filename));
	}

	/**
	 * Sets whether there is a selection to print.
	 *
	 * Application has to set number of pages to which the selection
	 * will draw by [method@Gtk.PrintOperation.set_n_pages] in a handler
	 * for the [signal@Gtk.PrintOperation::begin-print] signal.
	 *
	 * Params:
	 *     hasSelection = %TRUE indicates that a selection exists
	 */
	public void setHasSelection(bool hasSelection)
	{
		gtk_print_operation_set_has_selection(gtkPrintOperation, hasSelection);
	}

	/**
	 * Sets the name of the print job.
	 *
	 * The name is used to identify the job (e.g. in monitoring
	 * applications like eggcups).
	 *
	 * If you don’t set a job name, GTK picks a default one by
	 * numbering successive print jobs.
	 *
	 * Params:
	 *     jobName = a string that identifies the print job
	 */
	public void setJobName(string jobName)
	{
		gtk_print_operation_set_job_name(gtkPrintOperation, Str.toStringz(jobName));
	}

	/**
	 * Sets the number of pages in the document.
	 *
	 * This must be set to a positive number before the rendering
	 * starts. It may be set in a [signal@Gtk.PrintOperation::begin-print]
	 * signal handler.
	 *
	 * Note that the page numbers passed to the
	 * [signal@Gtk.PrintOperation::request-page-setup]
	 * and [signal@Gtk.PrintOperation::draw-page] signals are 0-based, i.e.
	 * if the user chooses to print all pages, the last ::draw-page signal
	 * will be for page @n_pages - 1.
	 *
	 * Params:
	 *     nPages = the number of pages
	 */
	public void setNPages(int nPages)
	{
		gtk_print_operation_set_n_pages(gtkPrintOperation, nPages);
	}

	/**
	 * Sets the print settings for @op.
	 *
	 * This is typically used to re-establish print settings
	 * from a previous print operation, see [method@Gtk.PrintOperation.run].
	 *
	 * Params:
	 *     printSettings = `GtkPrintSettings`
	 */
	public void setPrintSettings(PrintSettings printSettings)
	{
		gtk_print_operation_set_print_settings(gtkPrintOperation, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}

	/**
	 * If @show_progress is %TRUE, the print operation will show
	 * a progress dialog during the print operation.
	 *
	 * Params:
	 *     showProgress = %TRUE to show a progress dialog
	 */
	public void setShowProgress(bool showProgress)
	{
		gtk_print_operation_set_show_progress(gtkPrintOperation, showProgress);
	}

	/**
	 * Sets whether selection is supported by `GtkPrintOperation`.
	 *
	 * Params:
	 *     supportSelection = %TRUE to support selection
	 */
	public void setSupportSelection(bool supportSelection)
	{
		gtk_print_operation_set_support_selection(gtkPrintOperation, supportSelection);
	}

	/**
	 * If track_status is %TRUE, the print operation will try to continue
	 * report on the status of the print job in the printer queues and printer.
	 *
	 * This can allow your application to show things like “out of paper”
	 * issues, and when the print job actually reaches the printer.
	 *
	 * This function is often implemented using some form of polling,
	 * so it should not be enabled unless needed.
	 *
	 * Params:
	 *     trackStatus = %TRUE to track status after printing
	 */
	public void setTrackPrintStatus(bool trackStatus)
	{
		gtk_print_operation_set_track_print_status(gtkPrintOperation, trackStatus);
	}

	/**
	 * Sets up the transformation for the cairo context obtained from
	 * `GtkPrintContext` in such a way that distances are measured in
	 * units of @unit.
	 *
	 * Params:
	 *     unit = the unit to use
	 */
	public void setUnit(GtkUnit unit)
	{
		gtk_print_operation_set_unit(gtkPrintOperation, unit);
	}

	/**
	 * If @full_page is %TRUE, the transformation for the cairo context
	 * obtained from `GtkPrintContext` puts the origin at the top left
	 * corner of the page.
	 *
	 * This may not be the top left corner of the sheet, depending on page
	 * orientation and the number of pages per sheet). Otherwise, the origin
	 * is at the top left corner of the imageable area (i.e. inside the margins).
	 *
	 * Params:
	 *     fullPage = %TRUE to set up the `GtkPrintContext` for the full page
	 */
	public void setUseFullPage(bool fullPage)
	{
		gtk_print_operation_set_use_full_page(gtkPrintOperation, fullPage);
	}

	/**
	 * Emitted after the user has finished changing print settings
	 * in the dialog, before the actual rendering starts.
	 *
	 * A typical use for ::begin-print is to use the parameters from the
	 * [class@Gtk.PrintContext] and paginate the document accordingly,
	 * and then set the number of pages with
	 * [method@Gtk.PrintOperation.set_n_pages].
	 *
	 * Params:
	 *     context = the `GtkPrintContext` for the current operation
	 */
	gulong addOnBeginPrint(void delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin-print", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when displaying the print dialog.
	 *
	 * If you return a widget in a handler for this signal it will be
	 * added to a custom tab in the print dialog. You typically return a
	 * container widget with multiple widgets in it.
	 *
	 * The print dialog owns the returned widget, and its lifetime is not
	 * controlled by the application. However, the widget is guaranteed
	 * to stay around until the [signal@Gtk.PrintOperation::custom-widget-apply]
	 * signal is emitted on the operation. Then you can read out any
	 * information you need from the widgets.
	 *
	 * Returns: A custom widget that gets embedded in
	 *     the print dialog
	 */
	gulong addOnCreateCustomWidget(ObjectG delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-custom-widget", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted right before ::begin-print if you added
	 * a custom widget in the ::create-custom-widget handler.
	 *
	 * When you get this signal you should read the information from the
	 * custom widgets, as the widgets are not guaranteed to be around at a
	 * later time.
	 *
	 * Params:
	 *     widget = the custom widget added in ::create-custom-widget
	 */
	gulong addOnCustomWidgetApply(void delegate(Widget, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "custom-widget-apply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the print operation run has finished doing
	 * everything required for printing.
	 *
	 * @result gives you information about what happened during the run.
	 * If @result is %GTK_PRINT_OPERATION_RESULT_ERROR then you can call
	 * [method@Gtk.PrintOperation.get_error] for more information.
	 *
	 * If you enabled print status tracking then
	 * [method@Gtk.PrintOperation.is_finished] may still return %FALSE
	 * after the ::done signal was emitted.
	 *
	 * Params:
	 *     result = the result of the print operation
	 */
	gulong addOnDone(void delegate(GtkPrintOperationResult, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "done", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted for every page that is printed.
	 *
	 * The signal handler must render the @page_nr's page onto the cairo
	 * context obtained from @context using
	 * [method@Gtk.PrintContext.get_cairo_context].
	 *
	 * ```c
	 * static void
	 * draw_page (GtkPrintOperation *operation,
	 * GtkPrintContext   *context,
	 * int                page_nr,
	 * gpointer           user_data)
	 * {
	 * cairo_t *cr;
	 * PangoLayout *layout;
	 * double width, text_height;
	 * int layout_height;
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
	 * text_height = (double)layout_height / PANGO_SCALE;
	 *
	 * cairo_move_to (cr, width / 2,  (HEADER_HEIGHT - text_height) / 2);
	 * pango_cairo_show_layout (cr, layout);
	 *
	 * g_object_unref (layout);
	 * }
	 * ```
	 *
	 * Use [method@Gtk.PrintOperation.set_use_full_page] and
	 * [method@Gtk.PrintOperation.set_unit] before starting the print
	 * operation to set up the transformation of the cairo context
	 * according to your needs.
	 *
	 * Params:
	 *     context = the `GtkPrintContext` for the current operation
	 *     pageNr = the number of the currently printed page (0-based)
	 */
	gulong addOnDrawPage(void delegate(PrintContext, int, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "draw-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after all pages have been rendered.
	 *
	 * A handler for this signal can clean up any resources that have
	 * been allocated in the [signal@Gtk.PrintOperation::begin-print] handler.
	 *
	 * Params:
	 *     context = the `GtkPrintContext` for the current operation
	 */
	gulong addOnEndPrint(void delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end-print", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after the ::begin-print signal, but before the actual rendering
	 * starts.
	 *
	 * It keeps getting emitted until a connected signal handler returns %TRUE.
	 *
	 * The ::paginate signal is intended to be used for paginating a document
	 * in small chunks, to avoid blocking the user interface for a long
	 * time. The signal handler should update the number of pages using
	 * [method@Gtk.PrintOperation.set_n_pages], and return %TRUE if the document
	 * has been completely paginated.
	 *
	 * If you don't need to do pagination in chunks, you can simply do
	 * it all in the ::begin-print handler, and set the number of pages
	 * from there.
	 *
	 * Params:
	 *     context = the `GtkPrintContext` for the current operation
	 *
	 * Returns: %TRUE if pagination is complete
	 */
	gulong addOnPaginate(bool delegate(PrintContext, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paginate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when a preview is requested from the native dialog.
	 *
	 * The default handler for this signal uses an external viewer
	 * application to preview.
	 *
	 * To implement a custom print preview, an application must return
	 * %TRUE from its handler for this signal. In order to use the
	 * provided @context for the preview implementation, it must be
	 * given a suitable cairo context with
	 * [method@Gtk.PrintContext.set_cairo_context].
	 *
	 * The custom preview implementation can use
	 * [method@Gtk.PrintOperationPreview.is_selected] and
	 * [method@Gtk.PrintOperationPreview.render_page] to find pages which
	 * are selected for print and render them. The preview must be
	 * finished by calling [method@Gtk.PrintOperationPreview.end_preview]
	 * (typically in response to the user clicking a close button).
	 *
	 * Params:
	 *     preview = the `GtkPrintOperationPreview` for the current operation
	 *     context = the `GtkPrintContext` that will be used
	 *     parent = the `GtkWindow` to use as window parent
	 *
	 * Returns: %TRUE if the listener wants to take over control of the preview
	 */
	gulong addOnPreview(bool delegate(PrintOperationPreviewIF, PrintContext, Window, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preview", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted once for every page that is printed.
	 *
	 * This gives the application a chance to modify the page setup.
	 * Any changes done to @setup will be in force only for printing
	 * this page.
	 *
	 * Params:
	 *     context = the `GtkPrintContext` for the current operation
	 *     pageNr = the number of the currently printed page (0-based)
	 *     setup = the `GtkPageSetup`
	 */
	gulong addOnRequestPageSetup(void delegate(PrintContext, int, PageSetup, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-page-setup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted at between the various phases of the print operation.
	 *
	 * See [enum@Gtk.PrintStatus] for the phases that are being discriminated.
	 * Use [method@Gtk.PrintOperation.get_status] to find out the current
	 * status.
	 */
	gulong addOnStatusChanged(void delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "status-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after change of selected printer.
	 *
	 * The actual page setup and print settings are passed to the custom
	 * widget, which can actualize itself according to this change.
	 *
	 * Params:
	 *     widget = the custom widget added in ::create-custom-widget
	 *     setup = actual page setup
	 *     settings = actual print settings
	 */
	gulong addOnUpdateCustomWidget(void delegate(Widget, PageSetup, PrintSettings, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update-custom-widget", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
