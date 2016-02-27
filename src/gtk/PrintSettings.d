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


module gtk.PrintSettings;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.KeyFile;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.PaperSize;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * A GtkPrintSettings object represents the settings of a print dialog in
 * a system-independent way. The main use for this object is that once
 * you’ve printed you can get a settings object that represents the settings
 * the user chose, and the next time you print you can pass that object in so
 * that the user doesn’t have to re-set all his settings.
 * 
 * Its also possible to enumerate the settings so that you can easily save
 * the settings for the next time your app runs, or even store them in a
 * document. The predefined keys try to use shared values as much as possible
 * so that moving such a document between systems still works.
 * 
 * Printing support was added in GTK+ 2.10.
 */
public class PrintSettings : ObjectG
{
	/** the main Gtk struct */
	protected GtkPrintSettings* gtkPrintSettings;

	/** Get the main Gtk struct */
	public GtkPrintSettings* getPrintSettingsStruct()
	{
		return gtkPrintSettings;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPrintSettings;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkPrintSettings = cast(GtkPrintSettings*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPrintSettings* gtkPrintSettings, bool ownedRef = false)
	{
		this.gtkPrintSettings = gtkPrintSettings;
		super(cast(GObject*)gtkPrintSettings, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_print_settings_get_type();
	}

	/**
	 * Creates a new #GtkPrintSettings object.
	 *
	 * Return: a new #GtkPrintSettings object
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_print_settings_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkPrintSettings*) p, true);
	}

	/**
	 * Reads the print settings from @file_name. Returns a new #GtkPrintSettings
	 * object with the restored settings, or %NULL if an error occurred. If the
	 * file could not be loaded then error is set to either a #GFileError or
	 * #GKeyFileError.  See gtk_print_settings_to_file().
	 *
	 * Params:
	 *     fileName = the filename to read the settings from
	 *
	 * Return: the restored #GtkPrintSettings
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string fileName)
	{
		GError* err = null;
		
		auto p = gtk_print_settings_new_from_file(Str.toStringz(fileName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}
		
		this(cast(GtkPrintSettings*) p, true);
	}

	/**
	 * Reads the print settings from the group @group_name in @key_file.  Returns a
	 * new #GtkPrintSettings object with the restored settings, or %NULL if an
	 * error occurred. If the file could not be loaded then error is set to either
	 * a #GFileError or #GKeyFileError.
	 *
	 * Params:
	 *     keyFile = the #GKeyFile to retrieve the settings from
	 *     groupName = the name of the group to use, or %NULL to use
	 *         the default “Print Settings”
	 *
	 * Return: the restored #GtkPrintSettings
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(KeyFile keyFile, string groupName)
	{
		GError* err = null;
		
		auto p = gtk_print_settings_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_key_file");
		}
		
		this(cast(GtkPrintSettings*) p, true);
	}

	/**
	 * Copies a #GtkPrintSettings object.
	 *
	 * Return: a newly allocated copy of @other
	 *
	 * Since: 2.10
	 */
	public PrintSettings copy()
	{
		auto p = gtk_print_settings_copy(gtkPrintSettings);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) p, true);
	}

	/**
	 * Calls @func for each key-value pair of @settings.
	 *
	 * Params:
	 *     func = the function to call
	 *     userData = user data for @func
	 *
	 * Since: 2.10
	 */
	public void foreac(GtkPrintSettingsFunc func, void* userData)
	{
		gtk_print_settings_foreach(gtkPrintSettings, func, userData);
	}

	/**
	 * Looks up the string value associated with @key.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Return: the string value for @key
	 *
	 * Since: 2.10
	 */
	public string get(string key)
	{
		return Str.toString(gtk_print_settings_get(gtkPrintSettings, Str.toStringz(key)));
	}

	/**
	 * Returns the boolean represented by the value
	 * that is associated with @key.
	 *
	 * The string “true” represents %TRUE, any other
	 * string %FALSE.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Return: %TRUE, if @key maps to a true value.
	 *
	 * Since: 2.10
	 */
	public bool getBool(string key)
	{
		return gtk_print_settings_get_bool(gtkPrintSettings, Str.toStringz(key)) != 0;
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_COLLATE.
	 *
	 * Return: whether to collate the printed pages
	 *
	 * Since: 2.10
	 */
	public bool getCollate()
	{
		return gtk_print_settings_get_collate(gtkPrintSettings) != 0;
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_DEFAULT_SOURCE.
	 *
	 * Return: the default source
	 *
	 * Since: 2.10
	 */
	public string getDefaultSource()
	{
		return Str.toString(gtk_print_settings_get_default_source(gtkPrintSettings));
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_DITHER.
	 *
	 * Return: the dithering that is used
	 *
	 * Since: 2.10
	 */
	public string getDither()
	{
		return Str.toString(gtk_print_settings_get_dither(gtkPrintSettings));
	}

	/**
	 * Returns the double value associated with @key, or 0.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Return: the double value of @key
	 *
	 * Since: 2.10
	 */
	public double getDouble(string key)
	{
		return gtk_print_settings_get_double(gtkPrintSettings, Str.toStringz(key));
	}

	/**
	 * Returns the floating point number represented by
	 * the value that is associated with @key, or @default_val
	 * if the value does not represent a floating point number.
	 *
	 * Floating point numbers are parsed with g_ascii_strtod().
	 *
	 * Params:
	 *     key = a key
	 *     def = the default value
	 *
	 * Return: the floating point number associated with @key
	 *
	 * Since: 2.10
	 */
	public double getDoubleWithDefault(string key, double def)
	{
		return gtk_print_settings_get_double_with_default(gtkPrintSettings, Str.toStringz(key), def);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_DUPLEX.
	 *
	 * Return: whether to print the output in duplex.
	 *
	 * Since: 2.10
	 */
	public GtkPrintDuplex getDuplex()
	{
		return gtk_print_settings_get_duplex(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_FINISHINGS.
	 *
	 * Return: the finishings
	 *
	 * Since: 2.10
	 */
	public string getFinishings()
	{
		return Str.toString(gtk_print_settings_get_finishings(gtkPrintSettings));
	}

	/**
	 * Returns the integer value of @key, or 0.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Return: the integer value of @key
	 *
	 * Since: 2.10
	 */
	public int getInt(string key)
	{
		return gtk_print_settings_get_int(gtkPrintSettings, Str.toStringz(key));
	}

	/**
	 * Returns the value of @key, interpreted as
	 * an integer, or the default value.
	 *
	 * Params:
	 *     key = a key
	 *     def = the default value
	 *
	 * Return: the integer value of @key
	 *
	 * Since: 2.10
	 */
	public int getIntWithDefault(string key, int def)
	{
		return gtk_print_settings_get_int_with_default(gtkPrintSettings, Str.toStringz(key), def);
	}

	/**
	 * Returns the value associated with @key, interpreted
	 * as a length. The returned value is converted to @units.
	 *
	 * Params:
	 *     key = a key
	 *     unit = the unit of the return value
	 *
	 * Return: the length value of @key, converted to @unit
	 *
	 * Since: 2.10
	 */
	public double getLength(string key, GtkUnit unit)
	{
		return gtk_print_settings_get_length(gtkPrintSettings, Str.toStringz(key), unit);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_MEDIA_TYPE.
	 *
	 * The set of media types is defined in PWG 5101.1-2002 PWG.
	 *
	 * Return: the media type
	 *
	 * Since: 2.10
	 */
	public string getMediaType()
	{
		return Str.toString(gtk_print_settings_get_media_type(gtkPrintSettings));
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_N_COPIES.
	 *
	 * Return: the number of copies to print
	 *
	 * Since: 2.10
	 */
	public int getNCopies()
	{
		return gtk_print_settings_get_n_copies(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_NUMBER_UP.
	 *
	 * Return: the number of pages per sheet
	 *
	 * Since: 2.10
	 */
	public int getNumberUp()
	{
		return gtk_print_settings_get_number_up(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT.
	 *
	 * Return: layout of page in number-up mode
	 *
	 * Since: 2.14
	 */
	public GtkNumberUpLayout getNumberUpLayout()
	{
		return gtk_print_settings_get_number_up_layout(gtkPrintSettings);
	}

	/**
	 * Get the value of %GTK_PRINT_SETTINGS_ORIENTATION,
	 * converted to a #GtkPageOrientation.
	 *
	 * Return: the orientation
	 *
	 * Since: 2.10
	 */
	public GtkPageOrientation getOrientation()
	{
		return gtk_print_settings_get_orientation(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_OUTPUT_BIN.
	 *
	 * Return: the output bin
	 *
	 * Since: 2.10
	 */
	public string getOutputBin()
	{
		return Str.toString(gtk_print_settings_get_output_bin(gtkPrintSettings));
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PAGE_RANGES.
	 *
	 * Return: an array
	 *     of #GtkPageRanges.  Use g_free() to free the array when
	 *     it is no longer needed.
	 *
	 * Since: 2.10
	 */
	public GtkPageRange[] getPageRanges()
	{
		int numRanges;
		
		auto p = gtk_print_settings_get_page_ranges(gtkPrintSettings, &numRanges);
		
		return p[0 .. numRanges];
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PAGE_SET.
	 *
	 * Return: the set of pages to print
	 *
	 * Since: 2.10
	 */
	public GtkPageSet getPageSet()
	{
		return gtk_print_settings_get_page_set(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PAPER_HEIGHT,
	 * converted to @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Return: the paper height, in units of @unit
	 *
	 * Since: 2.10
	 */
	public double getPaperHeight(GtkUnit unit)
	{
		return gtk_print_settings_get_paper_height(gtkPrintSettings, unit);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PAPER_FORMAT,
	 * converted to a #GtkPaperSize.
	 *
	 * Return: the paper size
	 *
	 * Since: 2.10
	 */
	public PaperSize getPaperSize()
	{
		auto p = gtk_print_settings_get_paper_size(gtkPrintSettings);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PaperSize)(cast(GtkPaperSize*) p, true);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PAPER_WIDTH,
	 * converted to @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value
	 *
	 * Return: the paper width, in units of @unit
	 *
	 * Since: 2.10
	 */
	public double getPaperWidth(GtkUnit unit)
	{
		return gtk_print_settings_get_paper_width(gtkPrintSettings, unit);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PRINT_PAGES.
	 *
	 * Return: which pages to print
	 *
	 * Since: 2.10
	 */
	public GtkPrintPages getPrintPages()
	{
		return gtk_print_settings_get_print_pages(gtkPrintSettings);
	}

	/**
	 * Convenience function to obtain the value of
	 * %GTK_PRINT_SETTINGS_PRINTER.
	 *
	 * Return: the printer name
	 *
	 * Since: 2.10
	 */
	public string getPrinter()
	{
		return Str.toString(gtk_print_settings_get_printer(gtkPrintSettings));
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_PRINTER_LPI.
	 *
	 * Return: the resolution in lpi (lines per inch)
	 *
	 * Since: 2.16
	 */
	public double getPrinterLpi()
	{
		return gtk_print_settings_get_printer_lpi(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_QUALITY.
	 *
	 * Return: the print quality
	 *
	 * Since: 2.10
	 */
	public GtkPrintQuality getQuality()
	{
		return gtk_print_settings_get_quality(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_RESOLUTION.
	 *
	 * Return: the resolution in dpi
	 *
	 * Since: 2.10
	 */
	public int getResolution()
	{
		return gtk_print_settings_get_resolution(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_RESOLUTION_X.
	 *
	 * Return: the horizontal resolution in dpi
	 *
	 * Since: 2.16
	 */
	public int getResolutionX()
	{
		return gtk_print_settings_get_resolution_x(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_RESOLUTION_Y.
	 *
	 * Return: the vertical resolution in dpi
	 *
	 * Since: 2.16
	 */
	public int getResolutionY()
	{
		return gtk_print_settings_get_resolution_y(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_REVERSE.
	 *
	 * Return: whether to reverse the order of the printed pages
	 *
	 * Since: 2.10
	 */
	public bool getReverse()
	{
		return gtk_print_settings_get_reverse(gtkPrintSettings) != 0;
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_SCALE.
	 *
	 * Return: the scale in percent
	 *
	 * Since: 2.10
	 */
	public double getScale()
	{
		return gtk_print_settings_get_scale(gtkPrintSettings);
	}

	/**
	 * Gets the value of %GTK_PRINT_SETTINGS_USE_COLOR.
	 *
	 * Return: whether to use color
	 *
	 * Since: 2.10
	 */
	public bool getUseColor()
	{
		return gtk_print_settings_get_use_color(gtkPrintSettings) != 0;
	}

	/**
	 * Returns %TRUE, if a value is associated with @key.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Return: %TRUE, if @key has a value
	 *
	 * Since: 2.10
	 */
	public bool hasKey(string key)
	{
		return gtk_print_settings_has_key(gtkPrintSettings, Str.toStringz(key)) != 0;
	}

	/**
	 * Reads the print settings from @file_name. If the file could not be loaded
	 * then error is set to either a #GFileError or #GKeyFileError.
	 * See gtk_print_settings_to_file().
	 *
	 * Params:
	 *     fileName = the filename to read the settings from
	 *
	 * Return: %TRUE on success
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFile(string fileName)
	{
		GError* err = null;
		
		auto p = gtk_print_settings_load_file(gtkPrintSettings, Str.toStringz(fileName), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Reads the print settings from the group @group_name in @key_file. If the
	 * file could not be loaded then error is set to either a #GFileError or
	 * #GKeyFileError.
	 *
	 * Params:
	 *     keyFile = the #GKeyFile to retrieve the settings from
	 *     groupName = the name of the group to use, or %NULL to use the default
	 *         “Print Settings”
	 *
	 * Return: %TRUE on success
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool loadKeyFile(KeyFile keyFile, string groupName)
	{
		GError* err = null;
		
		auto p = gtk_print_settings_load_key_file(gtkPrintSettings, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Associates @value with @key.
	 *
	 * Params:
	 *     key = a key
	 *     value = a string value, or %NULL
	 *
	 * Since: 2.10
	 */
	public void set(string key, string value)
	{
		gtk_print_settings_set(gtkPrintSettings, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * Sets @key to a boolean value.
	 *
	 * Params:
	 *     key = a key
	 *     value = a boolean
	 *
	 * Since: 2.10
	 */
	public void setBool(string key, bool value)
	{
		gtk_print_settings_set_bool(gtkPrintSettings, Str.toStringz(key), value);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_COLLATE.
	 *
	 * Params:
	 *     collate = whether to collate the output
	 *
	 * Since: 2.10
	 */
	public void setCollate(bool collate)
	{
		gtk_print_settings_set_collate(gtkPrintSettings, collate);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_DEFAULT_SOURCE.
	 *
	 * Params:
	 *     defaultSource = the default source
	 *
	 * Since: 2.10
	 */
	public void setDefaultSource(string defaultSource)
	{
		gtk_print_settings_set_default_source(gtkPrintSettings, Str.toStringz(defaultSource));
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_DITHER.
	 *
	 * Params:
	 *     dither = the dithering that is used
	 *
	 * Since: 2.10
	 */
	public void setDither(string dither)
	{
		gtk_print_settings_set_dither(gtkPrintSettings, Str.toStringz(dither));
	}

	/**
	 * Sets @key to a double value.
	 *
	 * Params:
	 *     key = a key
	 *     value = a double value
	 *
	 * Since: 2.10
	 */
	public void setDouble(string key, double value)
	{
		gtk_print_settings_set_double(gtkPrintSettings, Str.toStringz(key), value);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_DUPLEX.
	 *
	 * Params:
	 *     duplex = a #GtkPrintDuplex value
	 *
	 * Since: 2.10
	 */
	public void setDuplex(GtkPrintDuplex duplex)
	{
		gtk_print_settings_set_duplex(gtkPrintSettings, duplex);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_FINISHINGS.
	 *
	 * Params:
	 *     finishings = the finishings
	 *
	 * Since: 2.10
	 */
	public void setFinishings(string finishings)
	{
		gtk_print_settings_set_finishings(gtkPrintSettings, Str.toStringz(finishings));
	}

	/**
	 * Sets @key to an integer value.
	 *
	 * Params:
	 *     key = a key
	 *     value = an integer
	 *
	 * Since: 2.10
	 */
	public void setInt(string key, int value)
	{
		gtk_print_settings_set_int(gtkPrintSettings, Str.toStringz(key), value);
	}

	/**
	 * Associates a length in units of @unit with @key.
	 *
	 * Params:
	 *     key = a key
	 *     value = a length
	 *     unit = the unit of @length
	 *
	 * Since: 2.10
	 */
	public void setLength(string key, double value, GtkUnit unit)
	{
		gtk_print_settings_set_length(gtkPrintSettings, Str.toStringz(key), value, unit);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_MEDIA_TYPE.
	 *
	 * The set of media types is defined in PWG 5101.1-2002 PWG.
	 *
	 * Params:
	 *     mediaType = the media type
	 *
	 * Since: 2.10
	 */
	public void setMediaType(string mediaType)
	{
		gtk_print_settings_set_media_type(gtkPrintSettings, Str.toStringz(mediaType));
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_N_COPIES.
	 *
	 * Params:
	 *     numCopies = the number of copies
	 *
	 * Since: 2.10
	 */
	public void setNCopies(int numCopies)
	{
		gtk_print_settings_set_n_copies(gtkPrintSettings, numCopies);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_NUMBER_UP.
	 *
	 * Params:
	 *     numberUp = the number of pages per sheet
	 *
	 * Since: 2.10
	 */
	public void setNumberUp(int numberUp)
	{
		gtk_print_settings_set_number_up(gtkPrintSettings, numberUp);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT.
	 *
	 * Params:
	 *     numberUpLayout = a #GtkNumberUpLayout value
	 *
	 * Since: 2.14
	 */
	public void setNumberUpLayout(GtkNumberUpLayout numberUpLayout)
	{
		gtk_print_settings_set_number_up_layout(gtkPrintSettings, numberUpLayout);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_ORIENTATION.
	 *
	 * Params:
	 *     orientation = a page orientation
	 *
	 * Since: 2.10
	 */
	public void setOrientation(GtkPageOrientation orientation)
	{
		gtk_print_settings_set_orientation(gtkPrintSettings, orientation);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_OUTPUT_BIN.
	 *
	 * Params:
	 *     outputBin = the output bin
	 *
	 * Since: 2.10
	 */
	public void setOutputBin(string outputBin)
	{
		gtk_print_settings_set_output_bin(gtkPrintSettings, Str.toStringz(outputBin));
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PAGE_RANGES.
	 *
	 * Params:
	 *     pageRanges = an array of #GtkPageRanges
	 *     numRanges = the length of @page_ranges
	 *
	 * Since: 2.10
	 */
	public void setPageRanges(GtkPageRange[] pageRanges)
	{
		gtk_print_settings_set_page_ranges(gtkPrintSettings, pageRanges.ptr, cast(int)pageRanges.length);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PAGE_SET.
	 *
	 * Params:
	 *     pageSet = a #GtkPageSet value
	 *
	 * Since: 2.10
	 */
	public void setPageSet(GtkPageSet pageSet)
	{
		gtk_print_settings_set_page_set(gtkPrintSettings, pageSet);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PAPER_HEIGHT.
	 *
	 * Params:
	 *     height = the paper height
	 *     unit = the units of @height
	 *
	 * Since: 2.10
	 */
	public void setPaperHeight(double height, GtkUnit unit)
	{
		gtk_print_settings_set_paper_height(gtkPrintSettings, height, unit);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PAPER_FORMAT,
	 * %GTK_PRINT_SETTINGS_PAPER_WIDTH and
	 * %GTK_PRINT_SETTINGS_PAPER_HEIGHT.
	 *
	 * Params:
	 *     paperSize = a paper size
	 *
	 * Since: 2.10
	 */
	public void setPaperSize(PaperSize paperSize)
	{
		gtk_print_settings_set_paper_size(gtkPrintSettings, (paperSize is null) ? null : paperSize.getPaperSizeStruct());
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PAPER_WIDTH.
	 *
	 * Params:
	 *     width = the paper width
	 *     unit = the units of @width
	 *
	 * Since: 2.10
	 */
	public void setPaperWidth(double width, GtkUnit unit)
	{
		gtk_print_settings_set_paper_width(gtkPrintSettings, width, unit);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PRINT_PAGES.
	 *
	 * Params:
	 *     pages = a #GtkPrintPages value
	 *
	 * Since: 2.10
	 */
	public void setPrintPages(GtkPrintPages pages)
	{
		gtk_print_settings_set_print_pages(gtkPrintSettings, pages);
	}

	/**
	 * Convenience function to set %GTK_PRINT_SETTINGS_PRINTER
	 * to @printer.
	 *
	 * Params:
	 *     printer = the printer name
	 *
	 * Since: 2.10
	 */
	public void setPrinter(string printer)
	{
		gtk_print_settings_set_printer(gtkPrintSettings, Str.toStringz(printer));
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_PRINTER_LPI.
	 *
	 * Params:
	 *     lpi = the resolution in lpi (lines per inch)
	 *
	 * Since: 2.16
	 */
	public void setPrinterLpi(double lpi)
	{
		gtk_print_settings_set_printer_lpi(gtkPrintSettings, lpi);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_QUALITY.
	 *
	 * Params:
	 *     quality = a #GtkPrintQuality value
	 *
	 * Since: 2.10
	 */
	public void setQuality(GtkPrintQuality quality)
	{
		gtk_print_settings_set_quality(gtkPrintSettings, quality);
	}

	/**
	 * Sets the values of %GTK_PRINT_SETTINGS_RESOLUTION,
	 * %GTK_PRINT_SETTINGS_RESOLUTION_X and
	 * %GTK_PRINT_SETTINGS_RESOLUTION_Y.
	 *
	 * Params:
	 *     resolution = the resolution in dpi
	 *
	 * Since: 2.10
	 */
	public void setResolution(int resolution)
	{
		gtk_print_settings_set_resolution(gtkPrintSettings, resolution);
	}

	/**
	 * Sets the values of %GTK_PRINT_SETTINGS_RESOLUTION,
	 * %GTK_PRINT_SETTINGS_RESOLUTION_X and
	 * %GTK_PRINT_SETTINGS_RESOLUTION_Y.
	 *
	 * Params:
	 *     resolutionX = the horizontal resolution in dpi
	 *     resolutionY = the vertical resolution in dpi
	 *
	 * Since: 2.16
	 */
	public void setResolutionXy(int resolutionX, int resolutionY)
	{
		gtk_print_settings_set_resolution_xy(gtkPrintSettings, resolutionX, resolutionY);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_REVERSE.
	 *
	 * Params:
	 *     reverse = whether to reverse the output
	 *
	 * Since: 2.10
	 */
	public void setReverse(bool reverse)
	{
		gtk_print_settings_set_reverse(gtkPrintSettings, reverse);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_SCALE.
	 *
	 * Params:
	 *     scale = the scale in percent
	 *
	 * Since: 2.10
	 */
	public void setScale(double scale)
	{
		gtk_print_settings_set_scale(gtkPrintSettings, scale);
	}

	/**
	 * Sets the value of %GTK_PRINT_SETTINGS_USE_COLOR.
	 *
	 * Params:
	 *     useColor = whether to use color
	 *
	 * Since: 2.10
	 */
	public void setUseColor(bool useColor)
	{
		gtk_print_settings_set_use_color(gtkPrintSettings, useColor);
	}

	/**
	 * This function saves the print settings from @settings to @file_name. If the
	 * file could not be loaded then error is set to either a #GFileError or
	 * #GKeyFileError.
	 *
	 * Params:
	 *     fileName = the file to save to
	 *
	 * Return: %TRUE on success
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool toFile(string fileName)
	{
		GError* err = null;
		
		auto p = gtk_print_settings_to_file(gtkPrintSettings, Str.toStringz(fileName), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * This function adds the print settings from @settings to @key_file.
	 *
	 * Params:
	 *     keyFile = the #GKeyFile to save the print settings to
	 *     groupName = the group to add the settings to in @key_file, or
	 *         %NULL to use the default “Print Settings”
	 *
	 * Since: 2.12
	 */
	public void toKeyFile(KeyFile keyFile, string groupName)
	{
		gtk_print_settings_to_key_file(gtkPrintSettings, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}

	/**
	 * Removes any value associated with @key.
	 * This has the same effect as setting the value to %NULL.
	 *
	 * Params:
	 *     key = a key
	 *
	 * Since: 2.10
	 */
	public void unset(string key)
	{
		gtk_print_settings_unset(gtkPrintSettings, Str.toStringz(key));
	}
}
