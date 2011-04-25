/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkPrintJob.html
 * outPack = gtk
 * outFile = PrintJob
 * strct   = GtkPrintJob
 * realStrct=
 * ctorStrct=
 * clss    = PrintJob
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_job_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- cairo.Surface
 * 	- gtk.Printer
 * 	- gtk.PageSetup
 * 	- gtk.PrintSettings
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPrintSettings* -> PrintSettings
 * 	- GtkPrinter* -> Printer
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PrintJob;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import cairo.Surface;
private import gtk.Printer;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import glib.ErrorG;
private import glib.GException;



private import gobject.ObjectG;

/**
 * Description
 * A GtkPrintJob object represents a job that is sent to a
 * printer. You only need to deal directly with print jobs if
 * you use the non-portable GtkPrintUnixDialog API.
 * Use gtk_print_job_get_surface() to obtain the cairo surface
 * onto which the pages must be drawn. Use gtk_print_job_send()
 * to send the finished job to the printer. If you don't use cairo
 * GtkPrintJob also supports printing of manually generated postscript,
 * via gtk_print_job_set_source_file().
 * Printing support was added in GTK+ 2.10.
 */
public class PrintJob : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkPrintJob* gtkPrintJob;
	
	
	public GtkPrintJob* getPrintJobStruct()
	{
		return gtkPrintJob;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintJob;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPrintJob* gtkPrintJob)
	{
		if(gtkPrintJob is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkPrintJob);
		if( ptr !is null )
		{
			this = cast(PrintJob)ptr;
			return;
		}
		super(cast(GObject*)gtkPrintJob);
		this.gtkPrintJob = gtkPrintJob;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPrintJob = cast(GtkPrintJob*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(PrintJob)[] onStatusChangedListeners;
	/**
	 * Gets emitted when the status of a job changes. The signal handler
	 * can use gtk_print_job_get_status() to obtain the new status.
	 * Since 2.10
	 */
	void addOnStatusChanged(void delegate(PrintJob) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("status-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"status-changed",
			cast(GCallback)&callBackStatusChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["status-changed"] = 1;
		}
		onStatusChangedListeners ~= dlg;
	}
	extern(C) static void callBackStatusChanged(GtkPrintJob* jobStruct, PrintJob printJob)
	{
		foreach ( void delegate(PrintJob) dlg ; printJob.onStatusChangedListeners )
		{
			dlg(printJob);
		}
	}
	
	
	/**
	 * Creates a new GtkPrintJob.
	 * Since 2.10
	 * Params:
	 * title = the job title
	 * printer = a GtkPrinter
	 * settings = a GtkPrintSettings
	 * pageSetup = a GtkPageSetup
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Printer printer, PrintSettings settings, PageSetup pageSetup)
	{
		// GtkPrintJob * gtk_print_job_new (const gchar *title,  GtkPrinter *printer,  GtkPrintSettings *settings,  GtkPageSetup *page_setup);
		auto p = gtk_print_job_new(Str.toStringz(title), (printer is null) ? null : printer.getPrinterStruct(), (settings is null) ? null : settings.getPrintSettingsStruct(), (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_print_job_new(Str.toStringz(title), (printer is null) ? null : printer.getPrinterStruct(), (settings is null) ? null : settings.getPrintSettingsStruct(), (pageSetup is null) ? null : pageSetup.getPageSetupStruct())");
		}
		this(cast(GtkPrintJob*) p);
	}
	
	/**
	 * Gets the GtkPrintSettings of the print job.
	 * Since 2.10
	 * Returns: the settings of job
	 */
	public PrintSettings getSettings()
	{
		// GtkPrintSettings * gtk_print_job_get_settings (GtkPrintJob *job);
		auto p = gtk_print_job_get_settings(gtkPrintJob);
		if(p is null)
		{
			return null;
		}
		return new PrintSettings(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * Gets the GtkPrinter of the print job.
	 * Since 2.10
	 * Returns: the printer of job
	 */
	public Printer getPrinter()
	{
		// GtkPrinter * gtk_print_job_get_printer (GtkPrintJob *job);
		auto p = gtk_print_job_get_printer(gtkPrintJob);
		if(p is null)
		{
			return null;
		}
		return new Printer(cast(GtkPrinter*) p);
	}
	
	/**
	 * Gets the job title.
	 * Since 2.10
	 * Returns: the title of job
	 */
	public string getTitle()
	{
		// const gchar * gtk_print_job_get_title (GtkPrintJob *job);
		return Str.toString(gtk_print_job_get_title(gtkPrintJob));
	}
	
	/**
	 * Gets the status of the print job.
	 * Since 2.10
	 * Returns: the status of job
	 */
	public GtkPrintStatus getStatus()
	{
		// GtkPrintStatus gtk_print_job_get_status (GtkPrintJob *job);
		return gtk_print_job_get_status(gtkPrintJob);
	}
	
	/**
	 * Make the GtkPrintJob send an existing document to the
	 * printing system. The file can be in any format understood
	 * by the platforms printing system (typically PostScript,
	 * but on many platforms PDF may work too). See
	 * gtk_printer_accepts_pdf() and gtk_printer_accepts_ps().
	 * Since 2.10
	 * Params:
	 * filename = the file to be printed
	 * Returns: FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public int setSourceFile(string filename)
	{
		// gboolean gtk_print_job_set_source_file (GtkPrintJob *job,  const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = gtk_print_job_set_source_file(gtkPrintJob, Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets a cairo surface onto which the pages of
	 * the print job should be rendered.
	 * Since 2.10
	 * Returns: the cairo surface of job
	 * Throws: GException on failure.
	 */
	public Surface getSurface()
	{
		// cairo_surface_t * gtk_print_job_get_surface (GtkPrintJob *job,  GError **error);
		GError* err = null;
		
		auto p = gtk_print_job_get_surface(gtkPrintJob, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Sends the print job off to the printer.
	 * Since 2.10
	 * Params:
	 * callback = function to call when the job completes or an error occurs
	 * userData = user data that gets passed to callback
	 * dnotify = destroy notify for user_data
	 */
	public void send(GtkPrintJobCompleteFunc callback, void* userData, GDestroyNotify dnotify)
	{
		// void gtk_print_job_send (GtkPrintJob *job,  GtkPrintJobCompleteFunc callback,  gpointer user_data,  GDestroyNotify dnotify);
		gtk_print_job_send(gtkPrintJob, callback, userData, dnotify);
	}
	
	/**
	 * If track_status is TRUE, the print job will try to continue report
	 * on the status of the print job in the printer queues and printer. This
	 * can allow your application to show things like "out of paper" issues,
	 * and when the print job actually reaches the printer.
	 * This function is often implemented using some form of polling, so it should
	 * not be enabled unless needed.
	 * Since 2.10
	 * Params:
	 * trackStatus = TRUE to track status after printing
	 */
	public void setTrackPrintStatus(int trackStatus)
	{
		// void gtk_print_job_set_track_print_status  (GtkPrintJob *job,  gboolean track_status);
		gtk_print_job_set_track_print_status(gtkPrintJob, trackStatus);
	}
	
	/**
	 * Returns wheter jobs will be tracked after printing.
	 * For details, see gtk_print_job_set_track_print_status().
	 * Since 2.10
	 * Returns: TRUE if print job status will be reported after printing
	 */
	public int getTrackPrintStatus()
	{
		// gboolean gtk_print_job_get_track_print_status  (GtkPrintJob *job);
		return gtk_print_job_get_track_print_status(gtkPrintJob);
	}
}
