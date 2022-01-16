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


module gtk.PageSetup;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.KeyFile;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gtk.PaperSize;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkPageSetup` object stores the page size, orientation and margins.
 * 
 * The idea is that you can get one of these from the page setup dialog
 * and then pass it to the `GtkPrintOperation` when printing.
 * The benefit of splitting this out of the `GtkPrintSettings` is that
 * these affect the actual layout of the page, and thus need to be set
 * long before user prints.
 * 
 * ## Margins
 * 
 * The margins specified in this object are the “print margins”, i.e. the
 * parts of the page that the printer cannot print on. These are different
 * from the layout margins that a word processor uses; they are typically
 * used to determine the minimal size for the layout margins.
 * 
 * To obtain a `GtkPageSetup` use [ctor@Gtk.PageSetup.new] to get the defaults,
 * or use [func@Gtk.print_run_page_setup_dialog] to show the page setup dialog
 * and receive the resulting page setup.
 * 
 * ## A page setup dialog
 * 
 * ```c
 * static GtkPrintSettings *settings = NULL;
 * static GtkPageSetup *page_setup = NULL;
 * 
 * static void
 * do_page_setup (void)
 * {
 * GtkPageSetup *new_page_setup;
 * 
 * if (settings == NULL)
 * settings = gtk_print_settings_new ();
 * 
 * new_page_setup = gtk_print_run_page_setup_dialog (GTK_WINDOW (main_window),
 * page_setup, settings);
 * 
 * if (page_setup)
 * g_object_unref (page_setup);
 * 
 * page_setup = new_page_setup;
 * }
 * ```
 */
public class PageSetup : ObjectG
{
	/** the main Gtk struct */
	protected GtkPageSetup* gtkPageSetup;

	/** Get the main Gtk struct */
	public GtkPageSetup* getPageSetupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPageSetup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPageSetup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPageSetup* gtkPageSetup, bool ownedRef = false)
	{
		this.gtkPageSetup = gtkPageSetup;
		super(cast(GObject*)gtkPageSetup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_page_setup_get_type();
	}

	/**
	 * Creates a new `GtkPageSetup`.
	 *
	 * Returns: a new `GtkPageSetup`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_page_setup_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Reads the page setup from the file @file_name.
	 *
	 * Returns a new `GtkPageSetup` object with the restored
	 * page setup, or %NULL if an error occurred.
	 * See [method@Gtk.PageSetup.to_file].
	 *
	 * Params:
	 *     fileName = the filename to read the page setup from
	 *
	 * Returns: the restored `GtkPageSetup`
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string fileName)
	{
		GError* err = null;

		auto __p = gtk_page_setup_new_from_file(Str.toStringz(fileName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Desrialize a page setup from an a{sv} variant.
	 *
	 * The variant must be in the format produced by
	 * [method@Gtk.PageSetup.to_gvariant].
	 *
	 * Params:
	 *     variant = an a{sv} `GVariant`
	 *
	 * Returns: a new `GtkPageSetup` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant variant)
	{
		auto __p = gtk_page_setup_new_from_gvariant((variant is null) ? null : variant.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gvariant");
		}

		this(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Reads the page setup from the group @group_name in the key file
	 * @key_file.
	 *
	 * Returns a new `GtkPageSetup` object with the restored
	 * page setup, or %NULL if an error occurred.
	 *
	 * Params:
	 *     keyFile = the `GKeyFile` to retrieve the page_setup from
	 *     groupName = the name of the group in the key_file to read
	 *         to use the default name “Page Setup”
	 *
	 * Returns: the restored `GtkPageSetup`
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(KeyFile keyFile, string groupName)
	{
		GError* err = null;

		auto __p = gtk_page_setup_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_key_file");
		}

		this(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Copies a `GtkPageSetup`.
	 *
	 * Returns: a copy of @other
	 */
	public PageSetup copy()
	{
		auto __p = gtk_page_setup_copy(gtkPageSetup);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p, true);
	}

	/**
	 * Gets the bottom margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the bottom margin
	 */
	public double getBottomMargin(GtkUnit unit)
	{
		return gtk_page_setup_get_bottom_margin(gtkPageSetup, unit);
	}

	/**
	 * Gets the left margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the left margin
	 */
	public double getLeftMargin(GtkUnit unit)
	{
		return gtk_page_setup_get_left_margin(gtkPageSetup, unit);
	}

	/**
	 * Gets the page orientation of the `GtkPageSetup`.
	 *
	 * Returns: the page orientation
	 */
	public GtkPageOrientation getOrientation()
	{
		return gtk_page_setup_get_orientation(gtkPageSetup);
	}

	/**
	 * Returns the page height in units of @unit.
	 *
	 * Note that this function takes orientation
	 * and margins into consideration.
	 * See [method@Gtk.PageSetup.get_paper_height].
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the page height.
	 */
	public double getPageHeight(GtkUnit unit)
	{
		return gtk_page_setup_get_page_height(gtkPageSetup, unit);
	}

	/**
	 * Returns the page width in units of @unit.
	 *
	 * Note that this function takes orientation
	 * and margins into consideration.
	 * See [method@Gtk.PageSetup.get_paper_width].
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the page width.
	 */
	public double getPageWidth(GtkUnit unit)
	{
		return gtk_page_setup_get_page_width(gtkPageSetup, unit);
	}

	/**
	 * Returns the paper height in units of @unit.
	 *
	 * Note that this function takes orientation,
	 * but not margins into consideration.
	 * See [method@Gtk.PageSetup.get_page_height].
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the paper height.
	 */
	public double getPaperHeight(GtkUnit unit)
	{
		return gtk_page_setup_get_paper_height(gtkPageSetup, unit);
	}

	/**
	 * Gets the paper size of the `GtkPageSetup`.
	 *
	 * Returns: the paper size
	 */
	public PaperSize getPaperSize()
	{
		auto __p = gtk_page_setup_get_paper_size(gtkPageSetup);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaperSize)(cast(GtkPaperSize*) __p);
	}

	/**
	 * Returns the paper width in units of @unit.
	 *
	 * Note that this function takes orientation,
	 * but not margins into consideration.
	 * See [method@Gtk.PageSetup.get_page_width].
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the paper width.
	 */
	public double getPaperWidth(GtkUnit unit)
	{
		return gtk_page_setup_get_paper_width(gtkPageSetup, unit);
	}

	/**
	 * Gets the right margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the right margin
	 */
	public double getRightMargin(GtkUnit unit)
	{
		return gtk_page_setup_get_right_margin(gtkPageSetup, unit);
	}

	/**
	 * Gets the top margin in units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Returns: the top margin
	 */
	public double getTopMargin(GtkUnit unit)
	{
		return gtk_page_setup_get_top_margin(gtkPageSetup, unit);
	}

	/**
	 * Reads the page setup from the file @file_name.
	 *
	 * See [method@Gtk.PageSetup.to_file].
	 *
	 * Params:
	 *     fileName = the filename to read the page setup from
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFile(string fileName)
	{
		GError* err = null;

		auto __p = gtk_page_setup_load_file(gtkPageSetup, Str.toStringz(fileName), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads the page setup from the group @group_name in the key file
	 * @key_file.
	 *
	 * Params:
	 *     keyFile = the `GKeyFile` to retrieve the page_setup from
	 *     groupName = the name of the group in the key_file to read
	 *         to use the default name “Page Setup”
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool loadKeyFile(KeyFile keyFile, string groupName)
	{
		GError* err = null;

		auto __p = gtk_page_setup_load_key_file(gtkPageSetup, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the bottom margin of the `GtkPageSetup`.
	 *
	 * Params:
	 *     margin = the new bottom margin in units of @unit
	 *     unit = the units for @margin
	 */
	public void setBottomMargin(double margin, GtkUnit unit)
	{
		gtk_page_setup_set_bottom_margin(gtkPageSetup, margin, unit);
	}

	/**
	 * Sets the left margin of the `GtkPageSetup`.
	 *
	 * Params:
	 *     margin = the new left margin in units of @unit
	 *     unit = the units for @margin
	 */
	public void setLeftMargin(double margin, GtkUnit unit)
	{
		gtk_page_setup_set_left_margin(gtkPageSetup, margin, unit);
	}

	/**
	 * Sets the page orientation of the `GtkPageSetup`.
	 *
	 * Params:
	 *     orientation = a `GtkPageOrientation` value
	 */
	public void setOrientation(GtkPageOrientation orientation)
	{
		gtk_page_setup_set_orientation(gtkPageSetup, orientation);
	}

	/**
	 * Sets the paper size of the `GtkPageSetup` without
	 * changing the margins.
	 *
	 * See [method@Gtk.PageSetup.set_paper_size_and_default_margins].
	 *
	 * Params:
	 *     size = a `GtkPaperSize`
	 */
	public void setPaperSize(PaperSize size)
	{
		gtk_page_setup_set_paper_size(gtkPageSetup, (size is null) ? null : size.getPaperSizeStruct());
	}

	/**
	 * Sets the paper size of the `GtkPageSetup` and modifies
	 * the margins according to the new paper size.
	 *
	 * Params:
	 *     size = a `GtkPaperSize`
	 */
	public void setPaperSizeAndDefaultMargins(PaperSize size)
	{
		gtk_page_setup_set_paper_size_and_default_margins(gtkPageSetup, (size is null) ? null : size.getPaperSizeStruct());
	}

	/**
	 * Sets the right margin of the `GtkPageSetup`.
	 *
	 * Params:
	 *     margin = the new right margin in units of @unit
	 *     unit = the units for @margin
	 */
	public void setRightMargin(double margin, GtkUnit unit)
	{
		gtk_page_setup_set_right_margin(gtkPageSetup, margin, unit);
	}

	/**
	 * Sets the top margin of the `GtkPageSetup`.
	 *
	 * Params:
	 *     margin = the new top margin in units of @unit
	 *     unit = the units for @margin
	 */
	public void setTopMargin(double margin, GtkUnit unit)
	{
		gtk_page_setup_set_top_margin(gtkPageSetup, margin, unit);
	}

	/**
	 * This function saves the information from @setup to @file_name.
	 *
	 * Params:
	 *     fileName = the file to save to
	 *
	 * Returns: %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool toFile(string fileName)
	{
		GError* err = null;

		auto __p = gtk_page_setup_to_file(gtkPageSetup, Str.toStringz(fileName), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Serialize page setup to an a{sv} variant.
	 *
	 * Returns: a new, floating, `GVariant`
	 */
	public Variant toGvariant()
	{
		auto __p = gtk_page_setup_to_gvariant(gtkPageSetup);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * This function adds the page setup from @setup to @key_file.
	 *
	 * Params:
	 *     keyFile = the `GKeyFile` to save the page setup to
	 *     groupName = the group to add the settings to in @key_file,
	 *         or %NULL to use the default name “Page Setup”
	 */
	public void toKeyFile(KeyFile keyFile, string groupName)
	{
		gtk_page_setup_to_key_file(gtkPageSetup, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}
}
