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
 * inFile  = GtkPrintSettings.html
 * outPack = gtk
 * outFile = PrintSettings
 * strct   = GtkPrintSettings
 * realStrct=
 * ctorStrct=
 * clss    = PrintSettings
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_print_settings_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.PaperSize
 * 	- glib.GKeyFile
 * structWrap:
 * 	- GKeyFile* -> KeyFile
 * 	- GtkPaperSize* -> PaperSize
 * 	- GtkPrintSettings* -> PrintSettings
 * module aliases:
 * local aliases:
 */

module gtk.PrintSettings;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.PaperSize;
private import glib.GKeyFile;



private import gobject.ObjectG;

/**
 * Description
 * A GtkPrintSettings object represents the settings of a print dialog in
 * a system-independent way. The main use for this object is that once
 * you've printed you can get a settings object that represents the settings
 * the user chose, and the next time you print you can pass that object in so
 * that the user doesn't have to re-set all his settings.
 * Its also possible to enumerate the settings so that you can easily save
 * the settings for the next time your app runs, or even store them in a
 * document. The predefined keys try to use shared values as much as possible
 * so that moving such a document between systems still works.
 * Printing support was added in GTK+ 2.10.
 */
public class PrintSettings : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkPrintSettings* gtkPrintSettings;
	
	
	public GtkPrintSettings* getPrintSettingsStruct()
	{
		return gtkPrintSettings;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkPrintSettings;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPrintSettings* gtkPrintSettings)
	{
		if(gtkPrintSettings is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkPrintSettings passed to constructor.");
			else return;
		}
		super(cast(GObject*)gtkPrintSettings);
		this.gtkPrintSettings = gtkPrintSettings;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkPrintSettings object.
	 * Since 2.10
	 */
	public this ()
	{
		// GtkPrintSettings* gtk_print_settings_new (void);
		auto p = gtk_print_settings_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * Copies a GtkPrintSettings object.
	 * Since 2.10
	 * Returns: a newly allocated copy of other
	 */
	public PrintSettings copy()
	{
		// GtkPrintSettings* gtk_print_settings_copy (GtkPrintSettings *other);
		auto p = gtk_print_settings_copy(gtkPrintSettings);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PrintSettings(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * Returns TRUE, if a value is associated with key.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * Returns: TRUE, if key has a value
	 */
	public int hasKey(char[] key)
	{
		// gboolean gtk_print_settings_has_key (GtkPrintSettings *settings,  const gchar *key);
		return gtk_print_settings_has_key(gtkPrintSettings, Str.toStringz(key));
	}
	
	/**
	 * Looks up the string value associated with key.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * Returns: the string value for key
	 */
	public char[] get(char[] key)
	{
		// const gchar* gtk_print_settings_get (GtkPrintSettings *settings,  const gchar *key);
		return Str.toString(gtk_print_settings_get(gtkPrintSettings, Str.toStringz(key))).dup;
	}
	
	/**
	 * Associates value with key.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * value =  a string value, or NULL
	 */
	public void set(char[] key, char[] value)
	{
		// void gtk_print_settings_set (GtkPrintSettings *settings,  const gchar *key,  const gchar *value);
		gtk_print_settings_set(gtkPrintSettings, Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Removes any value associated with key.
	 * This has the same effect as setting the value to NULL.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 */
	public void unset(char[] key)
	{
		// void gtk_print_settings_unset (GtkPrintSettings *settings,  const gchar *key);
		gtk_print_settings_unset(gtkPrintSettings, Str.toStringz(key));
	}
	
	/**
	 * Calls func for each key-value pair of settings.
	 * Since 2.10
	 * Params:
	 * func =  the function to call
	 * userData =  user data for func
	 */
	public void foreac(GtkPrintSettingsFunc func, void* userData)
	{
		// void gtk_print_settings_foreach (GtkPrintSettings *settings,  GtkPrintSettingsFunc func,  gpointer user_data);
		gtk_print_settings_foreach(gtkPrintSettings, func, userData);
	}
	
	/**
	 * Returns the boolean represented by the value
	 * that is associated with key.
	 * The string "true" represents TRUE, any other
	 * string FALSE.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * Returns: TRUE, if key maps to a true value.
	 */
	public int getBool(char[] key)
	{
		// gboolean gtk_print_settings_get_bool (GtkPrintSettings *settings,  const gchar *key);
		return gtk_print_settings_get_bool(gtkPrintSettings, Str.toStringz(key));
	}
	
	/**
	 * Sets key to a boolean value.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * value =  a boolean
	 */
	public void setBool(char[] key, int value)
	{
		// void gtk_print_settings_set_bool (GtkPrintSettings *settings,  const gchar *key,  gboolean value);
		gtk_print_settings_set_bool(gtkPrintSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Returns the double value associated with key, or 0.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * Returns: the double value of key
	 */
	public double getDouble(char[] key)
	{
		// gdouble gtk_print_settings_get_double (GtkPrintSettings *settings,  const gchar *key);
		return gtk_print_settings_get_double(gtkPrintSettings, Str.toStringz(key));
	}
	
	/**
	 * Returns the floating point number represented by
	 * the value that is associated with key, or default_val
	 * if the value does not represent a floating point number.
	 * Floating point numbers are parsed with g_ascii_strtod().
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * def =  the default value
	 * Returns: the floating point number associated with key
	 */
	public double getDoubleWithDefault(char[] key, double def)
	{
		// gdouble gtk_print_settings_get_double_with_default  (GtkPrintSettings *settings,  const gchar *key,  gdouble def);
		return gtk_print_settings_get_double_with_default(gtkPrintSettings, Str.toStringz(key), def);
	}
	
	/**
	 * Sets key to a double value.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * value =  a double value
	 */
	public void setDouble(char[] key, double value)
	{
		// void gtk_print_settings_set_double (GtkPrintSettings *settings,  const gchar *key,  gdouble value);
		gtk_print_settings_set_double(gtkPrintSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Returns the value associated with key, interpreted
	 * as a length. The returned value is converted to units.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * unit =  the unit of the return value
	 * Returns: the length value of key, converted to unit
	 */
	public double getLength(char[] key, GtkUnit unit)
	{
		// gdouble gtk_print_settings_get_length (GtkPrintSettings *settings,  const gchar *key,  GtkUnit unit);
		return gtk_print_settings_get_length(gtkPrintSettings, Str.toStringz(key), unit);
	}
	
	/**
	 * Associates a length in units of unit with key.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * value =  a length
	 * unit =  the unit of length
	 */
	public void setLength(char[] key, double value, GtkUnit unit)
	{
		// void gtk_print_settings_set_length (GtkPrintSettings *settings,  const gchar *key,  gdouble value,  GtkUnit unit);
		gtk_print_settings_set_length(gtkPrintSettings, Str.toStringz(key), value, unit);
	}
	
	/**
	 * Returns the integer value of key, or 0.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * Returns: the integer value of key
	 */
	public int getInt(char[] key)
	{
		// gint gtk_print_settings_get_int (GtkPrintSettings *settings,  const gchar *key);
		return gtk_print_settings_get_int(gtkPrintSettings, Str.toStringz(key));
	}
	
	/**
	 * Returns the value of key, interpreted as
	 * an integer, or the default value.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * def =  the default value
	 * Returns: the integer value of key
	 */
	public int getIntWithDefault(char[] key, int def)
	{
		// gint gtk_print_settings_get_int_with_default  (GtkPrintSettings *settings,  const gchar *key,  gint def);
		return gtk_print_settings_get_int_with_default(gtkPrintSettings, Str.toStringz(key), def);
	}
	
	/**
	 * Sets key to an integer value.
	 * Since 2.10
	 * Params:
	 * key =  a key
	 * value =  an integer
	 */
	public void setInt(char[] key, int value)
	{
		// void gtk_print_settings_set_int (GtkPrintSettings *settings,  const gchar *key,  gint value);
		gtk_print_settings_set_int(gtkPrintSettings, Str.toStringz(key), value);
	}
	
	/**
	 * Convenience function to obtain the value of
	 * GTK_PRINT_SETTINGS_PRINTER.
	 * Since 2.10
	 * Returns: the printer name
	 */
	public char[] getPrinter()
	{
		// const gchar* gtk_print_settings_get_printer (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_printer(gtkPrintSettings)).dup;
	}
	
	/**
	 * Convenience function to set GTK_PRINT_SETTINGS_PRINTER
	 * to printer.
	 * Since 2.10
	 * Params:
	 * printer =  the printer name
	 */
	public void setPrinter(char[] printer)
	{
		// void gtk_print_settings_set_printer (GtkPrintSettings *settings,  const gchar *printer);
		gtk_print_settings_set_printer(gtkPrintSettings, Str.toStringz(printer));
	}
	
	/**
	 * Get the value of GTK_PRINT_SETTINGS_ORIENTATION,
	 * converted to a GtkPageOrientation.
	 * Since 2.10
	 * Returns: the orientation
	 */
	public GtkPageOrientation getOrientation()
	{
		// GtkPageOrientation gtk_print_settings_get_orientation (GtkPrintSettings *settings);
		return gtk_print_settings_get_orientation(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_ORIENTATION.
	 * Since 2.10
	 * Params:
	 * orientation =  a page orientation
	 */
	public void setOrientation(GtkPageOrientation orientation)
	{
		// void gtk_print_settings_set_orientation (GtkPrintSettings *settings,  GtkPageOrientation orientation);
		gtk_print_settings_set_orientation(gtkPrintSettings, orientation);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PAPER_FORMAT,
	 * converted to a GtkPaperSize.
	 * Since 2.10
	 * Returns: the paper size
	 */
	public PaperSize getPaperSize()
	{
		// GtkPaperSize* gtk_print_settings_get_paper_size (GtkPrintSettings *settings);
		auto p = gtk_print_settings_get_paper_size(gtkPrintSettings);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PaperSize(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PAPER_FORMAT,
	 * GTK_PRINT_SETTINGS_PAPER_WIDTH and
	 * GTK_PRINT_SETTINGS_PAPER_HEIGHT.
	 * Since 2.10
	 * Params:
	 * paperSize =  a paper size
	 */
	public void setPaperSize(PaperSize paperSize)
	{
		// void gtk_print_settings_set_paper_size (GtkPrintSettings *settings,  GtkPaperSize *paper_size);
		gtk_print_settings_set_paper_size(gtkPrintSettings, (paperSize is null) ? null : paperSize.getPaperSizeStruct());
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PAPER_WIDTH,
	 * converted to unit.
	 * Since 2.10
	 * Params:
	 * unit =  the unit for the return value
	 * Returns: the paper width, in units of unit
	 */
	public double getPaperWidth(GtkUnit unit)
	{
		// gdouble gtk_print_settings_get_paper_width (GtkPrintSettings *settings,  GtkUnit unit);
		return gtk_print_settings_get_paper_width(gtkPrintSettings, unit);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PAPER_WIDTH.
	 * Since 2.10
	 * Params:
	 * width =  the paper width
	 * unit =  the units of width
	 */
	public void setPaperWidth(double width, GtkUnit unit)
	{
		// void gtk_print_settings_set_paper_width (GtkPrintSettings *settings,  gdouble width,  GtkUnit unit);
		gtk_print_settings_set_paper_width(gtkPrintSettings, width, unit);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PAPER_HEIGHT,
	 * converted to unit.
	 * Since 2.10
	 * Params:
	 * unit =  the unit for the return value
	 * Returns: the paper height, in units of unit
	 */
	public double getPaperHeight(GtkUnit unit)
	{
		// gdouble gtk_print_settings_get_paper_height (GtkPrintSettings *settings,  GtkUnit unit);
		return gtk_print_settings_get_paper_height(gtkPrintSettings, unit);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PAPER_HEIGHT.
	 * Since 2.10
	 * Params:
	 * height =  the paper height
	 * unit =  the units of height
	 */
	public void setPaperHeight(double height, GtkUnit unit)
	{
		// void gtk_print_settings_set_paper_height (GtkPrintSettings *settings,  gdouble height,  GtkUnit unit);
		gtk_print_settings_set_paper_height(gtkPrintSettings, height, unit);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_USE_COLOR.
	 * Since 2.10
	 * Returns: whether to use color
	 */
	public int getUseColor()
	{
		// gboolean gtk_print_settings_get_use_color (GtkPrintSettings *settings);
		return gtk_print_settings_get_use_color(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_USE_COLOR.
	 * Since 2.10
	 * Params:
	 * useColor =  whether to use color
	 */
	public void setUseColor(int useColor)
	{
		// void gtk_print_settings_set_use_color (GtkPrintSettings *settings,  gboolean use_color);
		gtk_print_settings_set_use_color(gtkPrintSettings, useColor);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_COLLATE.
	 * Since 2.10
	 * Returns: whether to collate the printed pages
	 */
	public int getCollate()
	{
		// gboolean gtk_print_settings_get_collate (GtkPrintSettings *settings);
		return gtk_print_settings_get_collate(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_COLLATE.
	 * Since 2.10
	 * Params:
	 * collate =  whether to collate the output
	 */
	public void setCollate(int collate)
	{
		// void gtk_print_settings_set_collate (GtkPrintSettings *settings,  gboolean collate);
		gtk_print_settings_set_collate(gtkPrintSettings, collate);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_REVERSE.
	 * Since 2.10
	 * Returns: whether to reverse the order of the printed pages
	 */
	public int getReverse()
	{
		// gboolean gtk_print_settings_get_reverse (GtkPrintSettings *settings);
		return gtk_print_settings_get_reverse(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_REVERSE.
	 * Since 2.10
	 * Params:
	 * reverse =  whether to reverse the output
	 */
	public void setReverse(int reverse)
	{
		// void gtk_print_settings_set_reverse (GtkPrintSettings *settings,  gboolean reverse);
		gtk_print_settings_set_reverse(gtkPrintSettings, reverse);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_DUPLEX.
	 * Since 2.10
	 * Returns: whether to print the output in duplex.
	 */
	public GtkPrintDuplex getDuplex()
	{
		// GtkPrintDuplex gtk_print_settings_get_duplex (GtkPrintSettings *settings);
		return gtk_print_settings_get_duplex(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_DUPLEX.
	 * Since 2.10
	 * Params:
	 * duplex =  a GtkPrintDuplex value
	 */
	public void setDuplex(GtkPrintDuplex duplex)
	{
		// void gtk_print_settings_set_duplex (GtkPrintSettings *settings,  GtkPrintDuplex duplex);
		gtk_print_settings_set_duplex(gtkPrintSettings, duplex);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_QUALITY.
	 * Since 2.10
	 * Returns: the print quality
	 */
	public GtkPrintQuality getQuality()
	{
		// GtkPrintQuality gtk_print_settings_get_quality (GtkPrintSettings *settings);
		return gtk_print_settings_get_quality(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_QUALITY.
	 * Since 2.10
	 * Params:
	 * quality =  a GtkPrintQuality value
	 */
	public void setQuality(GtkPrintQuality quality)
	{
		// void gtk_print_settings_set_quality (GtkPrintSettings *settings,  GtkPrintQuality quality);
		gtk_print_settings_set_quality(gtkPrintSettings, quality);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_N_COPIES.
	 * Since 2.10
	 * Returns: the number of copies to print
	 */
	public int getNCopies()
	{
		// gint gtk_print_settings_get_n_copies (GtkPrintSettings *settings);
		return gtk_print_settings_get_n_copies(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_N_COPIES.
	 * Since 2.10
	 * Params:
	 * numCopies =  the number of copies
	 */
	public void setNCopies(int numCopies)
	{
		// void gtk_print_settings_set_n_copies (GtkPrintSettings *settings,  gint num_copies);
		gtk_print_settings_set_n_copies(gtkPrintSettings, numCopies);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_NUMBER_UP.
	 * Since 2.10
	 * Returns: the number of pages per sheet
	 */
	public int getNumberUp()
	{
		// gint gtk_print_settings_get_number_up (GtkPrintSettings *settings);
		return gtk_print_settings_get_number_up(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_NUMBER_UP.
	 * Since 2.10
	 * Params:
	 * numberUp =  the number of pages per sheet
	 */
	public void setNumberUp(int numberUp)
	{
		// void gtk_print_settings_set_number_up (GtkPrintSettings *settings,  gint number_up);
		gtk_print_settings_set_number_up(gtkPrintSettings, numberUp);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_RESOLUTION.
	 * Since 2.10
	 * Returns: the resolution in dpi
	 */
	public int getResolution()
	{
		// gint gtk_print_settings_get_resolution (GtkPrintSettings *settings);
		return gtk_print_settings_get_resolution(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_RESOLUTION.
	 * Since 2.10
	 * Params:
	 * resolution =  the resolution in dpi
	 */
	public void setResolution(int resolution)
	{
		// void gtk_print_settings_set_resolution (GtkPrintSettings *settings,  gint resolution);
		gtk_print_settings_set_resolution(gtkPrintSettings, resolution);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_SCALE.
	 * Since 2.10
	 * Returns: the scale in percent
	 */
	public double getScale()
	{
		// gdouble gtk_print_settings_get_scale (GtkPrintSettings *settings);
		return gtk_print_settings_get_scale(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_SCALE.
	 * Since 2.10
	 * Params:
	 * scale =  the scale in percent
	 */
	public void setScale(double scale)
	{
		// void gtk_print_settings_set_scale (GtkPrintSettings *settings,  gdouble scale);
		gtk_print_settings_set_scale(gtkPrintSettings, scale);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PRINT_PAGES.
	 * Since 2.10
	 * Returns: which pages to print
	 */
	public GtkPrintPages getPrintPages()
	{
		// GtkPrintPages gtk_print_settings_get_print_pages (GtkPrintSettings *settings);
		return gtk_print_settings_get_print_pages(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PRINT_PAGES.
	 * Since 2.10
	 * Params:
	 * pages =  a GtkPrintPages value
	 */
	public void setPrintPages(GtkPrintPages pages)
	{
		// void gtk_print_settings_set_print_pages (GtkPrintSettings *settings,  GtkPrintPages pages);
		gtk_print_settings_set_print_pages(gtkPrintSettings, pages);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PAGE_RANGES.
	 * Since 2.10
	 * Params:
	 * numRanges =  return location for the length of the returned array
	 * Returns: an array of GtkPageRanges. Use g_free() to free the array when it is no longer needed.
	 */
	public GtkPageRange* getPageRanges(int* numRanges)
	{
		// GtkPageRange* gtk_print_settings_get_page_ranges (GtkPrintSettings *settings,  gint *num_ranges);
		return gtk_print_settings_get_page_ranges(gtkPrintSettings, numRanges);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PAGE_RANGES.
	 * Since 2.10
	 * Params:
	 * pageRanges =  an array of GtkPageRanges
	 * numRanges =  the length of page_ranges
	 */
	public void setPageRanges(GtkPageRange* pageRanges, int numRanges)
	{
		// void gtk_print_settings_set_page_ranges (GtkPrintSettings *settings,  GtkPageRange *page_ranges,  gint num_ranges);
		gtk_print_settings_set_page_ranges(gtkPrintSettings, pageRanges, numRanges);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_PAGE_SET.
	 * Since 2.10
	 * Returns: the set of pages to print
	 */
	public GtkPageSet getPageSet()
	{
		// GtkPageSet gtk_print_settings_get_page_set (GtkPrintSettings *settings);
		return gtk_print_settings_get_page_set(gtkPrintSettings);
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_PAGE_SET.
	 * Since 2.10
	 * Params:
	 * pageSet =  a GtkPageSet value
	 */
	public void setPageSet(GtkPageSet pageSet)
	{
		// void gtk_print_settings_set_page_set (GtkPrintSettings *settings,  GtkPageSet page_set);
		gtk_print_settings_set_page_set(gtkPrintSettings, pageSet);
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_DEFAULT_SOURCE.
	 * Since 2.10
	 * Returns: the default source
	 */
	public char[] getDefaultSource()
	{
		// const gchar* gtk_print_settings_get_default_source  (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_default_source(gtkPrintSettings)).dup;
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_DEFAULT_SOURCE.
	 * Since 2.10
	 * Params:
	 * defaultSource =  the default source
	 */
	public void setDefaultSource(char[] defaultSource)
	{
		// void gtk_print_settings_set_default_source  (GtkPrintSettings *settings,  const gchar *default_source);
		gtk_print_settings_set_default_source(gtkPrintSettings, Str.toStringz(defaultSource));
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_MEDIA_TYPE.
	 * The set of media types is defined in PWG 5101.1-2002 PWG.
	 * Since 2.10
	 * Returns: the media type
	 */
	public char[] getMediaType()
	{
		// const gchar* gtk_print_settings_get_media_type (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_media_type(gtkPrintSettings)).dup;
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_MEDIA_TYPE.
	 * The set of media types is defined in PWG 5101.1-2002 PWG.
	 * Since 2.10
	 * Params:
	 * mediaType =  the media type
	 */
	public void setMediaType(char[] mediaType)
	{
		// void gtk_print_settings_set_media_type (GtkPrintSettings *settings,  const gchar *media_type);
		gtk_print_settings_set_media_type(gtkPrintSettings, Str.toStringz(mediaType));
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_DITHER.
	 * Since 2.10
	 * Returns: the dithering that is used
	 */
	public char[] getDither()
	{
		// const gchar* gtk_print_settings_get_dither (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_dither(gtkPrintSettings)).dup;
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_DITHER.
	 * Since 2.10
	 * Params:
	 * dither =  the dithering that is used
	 */
	public void setDither(char[] dither)
	{
		// void gtk_print_settings_set_dither (GtkPrintSettings *settings,  const gchar *dither);
		gtk_print_settings_set_dither(gtkPrintSettings, Str.toStringz(dither));
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_FINISHINGS.
	 * Since 2.10
	 * Returns: the finishings
	 */
	public char[] getFinishings()
	{
		// const gchar* gtk_print_settings_get_finishings (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_finishings(gtkPrintSettings)).dup;
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_FINISHINGS.
	 * Since 2.10
	 * Params:
	 * finishings =  the finishings
	 */
	public void setFinishings(char[] finishings)
	{
		// void gtk_print_settings_set_finishings (GtkPrintSettings *settings,  const gchar *finishings);
		gtk_print_settings_set_finishings(gtkPrintSettings, Str.toStringz(finishings));
	}
	
	/**
	 * Gets the value of GTK_PRINT_SETTINGS_OUTPUT_BIN.
	 * Since 2.10
	 * Returns: the output bin
	 */
	public char[] getOutputBin()
	{
		// const gchar* gtk_print_settings_get_output_bin (GtkPrintSettings *settings);
		return Str.toString(gtk_print_settings_get_output_bin(gtkPrintSettings)).dup;
	}
	
	/**
	 * Sets the value of GTK_PRINT_SETTINGS_OUTPUT_BIN.
	 * Since 2.10
	 * Params:
	 * outputBin =  the output bin
	 */
	public void setOutputBin(char[] outputBin)
	{
		// void gtk_print_settings_set_output_bin (GtkPrintSettings *settings,  const gchar *output_bin);
		gtk_print_settings_set_output_bin(gtkPrintSettings, Str.toStringz(outputBin));
	}
	
	/**
	 * Reads the print settings from filename. Returns a new GtkPrintSettings
	 * object with the restored settings, or NULL if an error occurred.
	 * See gtk_print_settings_to_file().
	 * Since 2.12
	 * Params:
	 * fileName =  the filename to read the settings from
	 * error =  return location for errors, or NULL
	 */
	public this (char[] fileName, GError** error)
	{
		// GtkPrintSettings* gtk_print_settings_new_from_file (const gchar *file_name,  GError **error);
		auto p = gtk_print_settings_new_from_file(Str.toStringz(fileName), error);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * Reads the print settings from the group group_name in key_file.
	 * Returns a new GtkPrintSettings object with the restored settings,
	 * or NULL if an error occurred.
	 * Since 2.12
	 * Params:
	 * keyFile =  the GKeyFile to retrieve the settings from
	 * groupName =  the name of the group to use
	 * error =  return location for errors, or NULL
	 */
	public this (KeyFile keyFile, char[] groupName, GError** error)
	{
		// GtkPrintSettings* gtk_print_settings_new_from_key_file  (GKeyFile *key_file,  const gchar *group_name,  GError **error);
		auto p = gtk_print_settings_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), error);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkPrintSettings*) p);
	}
	
	/**
	 * This function saves the print settings from settings to file_name.
	 * Since 2.12
	 * Params:
	 * fileName =  the file to save to
	 * error =  return location for errors, or NULL
	 * Returns: TRUE on success
	 */
	public int toFile(char[] fileName, GError** error)
	{
		// gboolean gtk_print_settings_to_file (GtkPrintSettings *settings,  const gchar *file_name,  GError **error);
		return gtk_print_settings_to_file(gtkPrintSettings, Str.toStringz(fileName), error);
	}
	
	/**
	 * This function adds the print settings from settings to key_file.
	 * Since 2.12
	 * Params:
	 * keyFile =  the GKeyFile to save the print settings to
	 * groupName =  the group to add the settings to in key_file, or
	 *  NULL to use the default "Print Settings"
	 */
	public void toKeyFile(KeyFile keyFile, char[] groupName)
	{
		// void gtk_print_settings_to_key_file (GtkPrintSettings *settings,  GKeyFile *key_file,  const gchar *group_name);
		gtk_print_settings_to_key_file(gtkPrintSettings, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}
}
