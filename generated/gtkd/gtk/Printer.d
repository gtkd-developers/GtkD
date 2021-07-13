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


module gtk.Printer;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PaperSize;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkPrinter` object represents a printer.
 * 
 * You only need to deal directly with printers if you use the
 * non-portable [class@Gtk.PrintUnixDialog] API.
 * 
 * A `GtkPrinter` allows to get status information about the printer,
 * such as its description, its location, the number of queued jobs,
 * etc. Most importantly, a `GtkPrinter` object can be used to create
 * a [class@Gtk.PrintJob] object, which lets you print to the printer.
 */
public class Printer : ObjectG
{
	/** the main Gtk struct */
	protected GtkPrinter* gtkPrinter;

	/** Get the main Gtk struct */
	public GtkPrinter* getPrinterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPrinter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrinter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrinter* gtkPrinter, bool ownedRef = false)
	{
		this.gtkPrinter = gtkPrinter;
		super(cast(GObject*)gtkPrinter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_printer_get_type();
	}

	/**
	 * Creates a new `GtkPrinter`.
	 *
	 * Params:
	 *     name = the name of the printer
	 *     backend = a `GtkPrintBackend`
	 *     virtual = whether the printer is virtual
	 *
	 * Returns: a new `GtkPrinter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, GtkPrintBackend* backend, bool virtual)
	{
		auto __p = gtk_printer_new(Str.toStringz(name), backend, virtual);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPrinter*) __p, true);
	}

	/**
	 * Returns whether the printer accepts input in
	 * PDF format.
	 *
	 * Returns: %TRUE if @printer accepts PDF
	 */
	public bool acceptsPdf()
	{
		return gtk_printer_accepts_pdf(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer accepts input in
	 * PostScript format.
	 *
	 * Returns: %TRUE if @printer accepts PostScript
	 */
	public bool acceptsPs()
	{
		return gtk_printer_accepts_ps(gtkPrinter) != 0;
	}

	/**
	 * Compares two printers.
	 *
	 * Params:
	 *     b = another `GtkPrinter`
	 *
	 * Returns: 0 if the printer match, a negative value if @a < @b,
	 *     or a positive value if @a > @b
	 */
	public int compare(Printer b)
	{
		return gtk_printer_compare(gtkPrinter, (b is null) ? null : b.getPrinterStruct());
	}

	/**
	 * Returns the backend of the printer.
	 *
	 * Returns: the backend of @printer
	 */
	public GtkPrintBackend* getBackend()
	{
		return gtk_printer_get_backend(gtkPrinter);
	}

	/**
	 * Returns the printer’s capabilities.
	 *
	 * This is useful when you’re using `GtkPrintUnixDialog`’s
	 * manual-capabilities setting and need to know which settings
	 * the printer can handle and which you must handle yourself.
	 *
	 * This will return 0 unless the printer’s details are
	 * available, see [method@Gtk.Printer.has_details] and
	 * [method@Gtk.Printer.request_details].
	 *
	 * Returns: the printer’s capabilities
	 */
	public GtkPrintCapabilities getCapabilities()
	{
		return gtk_printer_get_capabilities(gtkPrinter);
	}

	/**
	 * Returns default page size of @printer.
	 *
	 * Returns: a newly allocated `GtkPageSetup` with default page size
	 *     of the printer.
	 */
	public PageSetup getDefaultPageSize()
	{
		auto __p = gtk_printer_get_default_page_size(gtkPrinter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Gets the description of the printer.
	 *
	 * Returns: the description of @printer
	 */
	public string getDescription()
	{
		return Str.toString(gtk_printer_get_description(gtkPrinter));
	}

	/**
	 * Retrieve the hard margins of @printer.
	 *
	 * These are the margins that define the area at the borders
	 * of the paper that the printer cannot print to.
	 *
	 * Note: This will not succeed unless the printer’s details are
	 * available, see [method@Gtk.Printer.has_details] and
	 * [method@Gtk.Printer.request_details].
	 *
	 * Params:
	 *     top = a location to store the top margin in
	 *     bottom = a location to store the bottom margin in
	 *     left = a location to store the left margin in
	 *     right = a location to store the right margin in
	 *
	 * Returns: %TRUE iff the hard margins were retrieved
	 */
	public bool getHardMargins(out double top, out double bottom, out double left, out double right)
	{
		return gtk_printer_get_hard_margins(gtkPrinter, &top, &bottom, &left, &right) != 0;
	}

	/**
	 * Retrieve the hard margins of @printer for @paper_size.
	 *
	 * These are the margins that define the area at the borders
	 * of the paper that the printer cannot print to.
	 *
	 * Note: This will not succeed unless the printer’s details are
	 * available, see [method@Gtk.Printer.has_details] and
	 * [method@Gtk.Printer.request_details].
	 *
	 * Params:
	 *     paperSize = a `GtkPaperSize`
	 *     top = a location to store the top margin in
	 *     bottom = a location to store the bottom margin in
	 *     left = a location to store the left margin in
	 *     right = a location to store the right margin in
	 *
	 * Returns: %TRUE iff the hard margins were retrieved
	 */
	public bool getHardMarginsForPaperSize(PaperSize paperSize, out double top, out double bottom, out double left, out double right)
	{
		return gtk_printer_get_hard_margins_for_paper_size(gtkPrinter, (paperSize is null) ? null : paperSize.getPaperSizeStruct(), &top, &bottom, &left, &right) != 0;
	}

	/**
	 * Gets the name of the icon to use for the printer.
	 *
	 * Returns: the icon name for @printer
	 */
	public string getIconName()
	{
		return Str.toString(gtk_printer_get_icon_name(gtkPrinter));
	}

	/**
	 * Gets the number of jobs currently queued on the printer.
	 *
	 * Returns: the number of jobs on @printer
	 */
	public int getJobCount()
	{
		return gtk_printer_get_job_count(gtkPrinter);
	}

	/**
	 * Returns a description of the location of the printer.
	 *
	 * Returns: the location of @printer
	 */
	public string getLocation()
	{
		return Str.toString(gtk_printer_get_location(gtkPrinter));
	}

	/**
	 * Returns the name of the printer.
	 *
	 * Returns: the name of @printer
	 */
	public string getName()
	{
		return Str.toString(gtk_printer_get_name(gtkPrinter));
	}

	/**
	 * Returns the state message describing the current state
	 * of the printer.
	 *
	 * Returns: the state message of @printer
	 */
	public string getStateMessage()
	{
		return Str.toString(gtk_printer_get_state_message(gtkPrinter));
	}

	/**
	 * Returns whether the printer details are available.
	 *
	 * Returns: %TRUE if @printer details are available
	 */
	public bool hasDetails()
	{
		return gtk_printer_has_details(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer is accepting jobs
	 *
	 * Returns: %TRUE if @printer is accepting jobs
	 */
	public bool isAcceptingJobs()
	{
		return gtk_printer_is_accepting_jobs(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer is currently active (i.e.
	 * accepts new jobs).
	 *
	 * Returns: %TRUE if @printer is active
	 */
	public bool isActive()
	{
		return gtk_printer_is_active(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer is the default printer.
	 *
	 * Returns: %TRUE if @printer is the default
	 */
	public bool isDefault()
	{
		return gtk_printer_is_default(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer is currently paused.
	 *
	 * A paused printer still accepts jobs, but it is not
	 * printing them.
	 *
	 * Returns: %TRUE if @printer is paused
	 */
	public bool isPaused()
	{
		return gtk_printer_is_paused(gtkPrinter) != 0;
	}

	/**
	 * Returns whether the printer is virtual (i.e. does not
	 * represent actual printer hardware, but something like
	 * a CUPS class).
	 *
	 * Returns: %TRUE if @printer is virtual
	 */
	public bool isVirtual()
	{
		return gtk_printer_is_virtual(gtkPrinter) != 0;
	}

	/**
	 * Lists all the paper sizes @printer supports.
	 *
	 * This will return and empty list unless the printer’s details
	 * are available, see [method@Gtk.Printer.has_details] and
	 * [method@Gtk.Printer.request_details].
	 *
	 * Returns: a newly
	 *     allocated list of newly allocated `GtkPageSetup`s.
	 */
	public ListG listPapers()
	{
		auto __p = gtk_printer_list_papers(gtkPrinter);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Requests the printer details.
	 *
	 * When the details are available, the
	 * [signal@Gtk.Printer::details-acquired] signal
	 * will be emitted on @printer.
	 */
	public void requestDetails()
	{
		gtk_printer_request_details(gtkPrinter);
	}

	/**
	 * Emitted in response to a request for detailed information
	 * about a printer from the print backend.
	 *
	 * The @success parameter indicates if the information was
	 * actually obtained.
	 *
	 * Params:
	 *     success = %TRUE if the details were successfully acquired
	 */
	gulong addOnDetailsAcquired(void delegate(bool, Printer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "details-acquired", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
