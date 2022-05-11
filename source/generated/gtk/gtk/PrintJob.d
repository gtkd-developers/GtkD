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


module gtk.PrintJob;

private import cairo.Surface;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Printer;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkPrintJob` object represents a job that is sent to a printer.
 * 
 * You only need to deal directly with print jobs if you use the
 * non-portable [class@Gtk.PrintUnixDialog] API.
 * 
 * Use [method@Gtk.PrintJob.get_surface] to obtain the cairo surface
 * onto which the pages must be drawn. Use [method@Gtk.PrintJob.send]
 * to send the finished job to the printer. If you don’t use cairo
 * `GtkPrintJob` also supports printing of manually generated PostScript,
 * via [method@Gtk.PrintJob.set_source_file].
 */
public class PrintJob : ObjectG
{
	/** the main Gtk struct */
	protected GtkPrintJob* gtkPrintJob;

	/** Get the main Gtk struct */
	public GtkPrintJob* getPrintJobStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPrintJob;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintJob;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrintJob* gtkPrintJob, bool ownedRef = false)
	{
		this.gtkPrintJob = gtkPrintJob;
		super(cast(GObject*)gtkPrintJob, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_print_job_get_type();
	}

	/**
	 * Creates a new `GtkPrintJob`.
	 *
	 * Params:
	 *     title = the job title
	 *     printer = a `GtkPrinter`
	 *     settings = a `GtkPrintSettings`
	 *     pageSetup = a `GtkPageSetup`
	 *
	 * Returns: a new `GtkPrintJob`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Printer printer, PrintSettings settings, PageSetup pageSetup)
	{
		auto __p = gtk_print_job_new(Str.toStringz(title), (printer is null) ? null : printer.getPrinterStruct(), (settings is null) ? null : settings.getPrintSettingsStruct(), (pageSetup is null) ? null : pageSetup.getPageSetupStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPrintJob*) __p, true);
	}

	/**
	 * Gets whether this job is printed collated.
	 *
	 * Returns: whether the job is printed collated
	 */
	public bool getCollate()
	{
		return gtk_print_job_get_collate(gtkPrintJob) != 0;
	}

	/**
	 * Gets the n-up setting for this job.
	 *
	 * Returns: the n-up setting
	 */
	public uint getNUp()
	{
		return gtk_print_job_get_n_up(gtkPrintJob);
	}

	/**
	 * Gets the n-up layout setting for this job.
	 *
	 * Returns: the n-up layout
	 */
	public GtkNumberUpLayout getNUpLayout()
	{
		return gtk_print_job_get_n_up_layout(gtkPrintJob);
	}

	/**
	 * Gets the number of copies of this job.
	 *
	 * Returns: the number of copies
	 */
	public int getNumCopies()
	{
		return gtk_print_job_get_num_copies(gtkPrintJob);
	}

	/**
	 * Gets the page ranges for this job.
	 *
	 * Returns: a pointer to an
	 *     array of `GtkPageRange` structs
	 */
	public GtkPageRange[] getPageRanges()
	{
		int nRanges;

		auto __p = gtk_print_job_get_page_ranges(gtkPrintJob, &nRanges);

		return __p[0 .. nRanges];
	}

	/**
	 * Gets the `GtkPageSet` setting for this job.
	 *
	 * Returns: the `GtkPageSet` setting
	 */
	public GtkPageSet getPageSet()
	{
		return gtk_print_job_get_page_set(gtkPrintJob);
	}

	/**
	 * Gets the `GtkPrintPages` setting for this job.
	 *
	 * Returns: the `GtkPrintPages` setting
	 */
	public GtkPrintPages getPages()
	{
		return gtk_print_job_get_pages(gtkPrintJob);
	}

	/**
	 * Gets the `GtkPrinter` of the print job.
	 *
	 * Returns: the printer of @job
	 */
	public Printer getPrinter()
	{
		auto __p = gtk_print_job_get_printer(gtkPrintJob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Printer)(cast(GtkPrinter*) __p);
	}

	/**
	 * Gets whether this job is printed reversed.
	 *
	 * Returns: whether the job is printed reversed.
	 */
	public bool getReverse()
	{
		return gtk_print_job_get_reverse(gtkPrintJob) != 0;
	}

	/**
	 * Gets whether the job is printed rotated.
	 *
	 * Returns: whether the job is printed rotated
	 */
	public bool getRotate()
	{
		return gtk_print_job_get_rotate(gtkPrintJob) != 0;
	}

	/**
	 * Gets the scale for this job.
	 *
	 * Returns: the scale
	 */
	public double getScale()
	{
		return gtk_print_job_get_scale(gtkPrintJob);
	}

	/**
	 * Gets the `GtkPrintSettings` of the print job.
	 *
	 * Returns: the settings of @job
	 */
	public PrintSettings getSettings()
	{
		auto __p = gtk_print_job_get_settings(gtkPrintJob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) __p);
	}

	/**
	 * Gets the status of the print job.
	 *
	 * Returns: the status of @job
	 */
	public GtkPrintStatus getStatus()
	{
		return gtk_print_job_get_status(gtkPrintJob);
	}

	/**
	 * Gets a cairo surface onto which the pages of
	 * the print job should be rendered.
	 *
	 * Returns: the cairo surface of @job
	 *
	 * Throws: GException on failure.
	 */
	public Surface getSurface()
	{
		GError* err = null;

		auto __p = gtk_print_job_get_surface(gtkPrintJob, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 * Gets the job title.
	 *
	 * Returns: the title of @job
	 */
	public string getTitle()
	{
		return Str.toString(gtk_print_job_get_title(gtkPrintJob));
	}

	/**
	 * Returns whether jobs will be tracked after printing.
	 *
	 * For details, see [method@Gtk.PrintJob.set_track_print_status].
	 *
	 * Returns: %TRUE if print job status will be reported after printing
	 */
	public bool getTrackPrintStatus()
	{
		return gtk_print_job_get_track_print_status(gtkPrintJob) != 0;
	}

	/**
	 * Sends the print job off to the printer.
	 *
	 * Params:
	 *     callback = function to call when the job completes or an error occurs
	 *     userData = user data that gets passed to @callback
	 *     dnotify = destroy notify for @user_data
	 */
	public void send(GtkPrintJobCompleteFunc callback, void* userData, GDestroyNotify dnotify)
	{
		gtk_print_job_send(gtkPrintJob, callback, userData, dnotify);
	}

	/**
	 * Sets whether this job is printed collated.
	 *
	 * Params:
	 *     collate = whether the job is printed collated
	 */
	public void setCollate(bool collate)
	{
		gtk_print_job_set_collate(gtkPrintJob, collate);
	}

	/**
	 * Sets the n-up setting for this job.
	 *
	 * Params:
	 *     nUp = the n-up value
	 */
	public void setNUp(uint nUp)
	{
		gtk_print_job_set_n_up(gtkPrintJob, nUp);
	}

	/**
	 * Sets the n-up layout setting for this job.
	 *
	 * Params:
	 *     layout = the n-up layout setting
	 */
	public void setNUpLayout(GtkNumberUpLayout layout)
	{
		gtk_print_job_set_n_up_layout(gtkPrintJob, layout);
	}

	/**
	 * Sets the number of copies for this job.
	 *
	 * Params:
	 *     numCopies = the number of copies
	 */
	public void setNumCopies(int numCopies)
	{
		gtk_print_job_set_num_copies(gtkPrintJob, numCopies);
	}

	/**
	 * Sets the page ranges for this job.
	 *
	 * Params:
	 *     ranges = pointer to an array of
	 *         `GtkPageRange` structs
	 */
	public void setPageRanges(GtkPageRange[] ranges)
	{
		gtk_print_job_set_page_ranges(gtkPrintJob, ranges.ptr, cast(int)ranges.length);
	}

	/**
	 * Sets the `GtkPageSet` setting for this job.
	 *
	 * Params:
	 *     pageSet = a `GtkPageSet` setting
	 */
	public void setPageSet(GtkPageSet pageSet)
	{
		gtk_print_job_set_page_set(gtkPrintJob, pageSet);
	}

	/**
	 * Sets the `GtkPrintPages` setting for this job.
	 *
	 * Params:
	 *     pages = the `GtkPrintPages` setting
	 */
	public void setPages(GtkPrintPages pages)
	{
		gtk_print_job_set_pages(gtkPrintJob, pages);
	}

	/**
	 * Sets whether this job is printed reversed.
	 *
	 * Params:
	 *     reverse = whether the job is printed reversed
	 */
	public void setReverse(bool reverse)
	{
		gtk_print_job_set_reverse(gtkPrintJob, reverse);
	}

	/**
	 * Sets whether this job is printed rotated.
	 *
	 * Params:
	 *     rotate = whether to print rotated
	 */
	public void setRotate(bool rotate)
	{
		gtk_print_job_set_rotate(gtkPrintJob, rotate);
	}

	/**
	 * Sets the scale for this job.
	 *
	 * 1.0 means unscaled.
	 *
	 * Params:
	 *     scale = the scale
	 */
	public void setScale(double scale)
	{
		gtk_print_job_set_scale(gtkPrintJob, scale);
	}

	/**
	 * Make the `GtkPrintJob` send an existing document to the
	 * printing system.
	 *
	 * The file can be in any format understood by the platforms
	 * printing system (typically PostScript, but on many platforms
	 * PDF may work too). See [method@Gtk.Printer.accepts_pdf] and
	 * [method@Gtk.Printer.accepts_ps].
	 *
	 * This is similar to [method@Gtk.PrintJob.set_source_file],
	 * but takes expects an open file descriptor for the file,
	 * instead of a filename.
	 *
	 * Params:
	 *     fd = a file descriptor
	 *
	 * Returns: %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool setSourceFd(int fd)
	{
		GError* err = null;

		auto __p = gtk_print_job_set_source_fd(gtkPrintJob, fd, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Make the `GtkPrintJob` send an existing document to the
	 * printing system.
	 *
	 * The file can be in any format understood by the platforms
	 * printing system (typically PostScript, but on many platforms
	 * PDF may work too). See [method@Gtk.Printer.accepts_pdf] and
	 * [method@Gtk.Printer.accepts_ps].
	 *
	 * Params:
	 *     filename = the file to be printed
	 *
	 * Returns: %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public bool setSourceFile(string filename)
	{
		GError* err = null;

		auto __p = gtk_print_job_set_source_file(gtkPrintJob, Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * If track_status is %TRUE, the print job will try to continue report
	 * on the status of the print job in the printer queues and printer.
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
		gtk_print_job_set_track_print_status(gtkPrintJob, trackStatus);
	}

	/**
	 * Emitted when the status of a job changes.
	 *
	 * The signal handler can use [method@Gtk.PrintJob.get_status]
	 * to obtain the new status.
	 */
	gulong addOnStatusChanged(void delegate(PrintJob) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "status-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
