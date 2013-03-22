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
 * inFile  = GtkPageSetup.html
 * outPack = gtk
 * outFile = PageSetup
 * strct   = GtkPageSetup
 * realStrct=
 * ctorStrct=
 * clss    = PageSetup
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_page_setup_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.KeyFile
 * 	- gtk.PaperSize
 * structWrap:
 * 	- GKeyFile* -> KeyFile
 * 	- GtkPageSetup* -> PageSetup
 * 	- GtkPaperSize* -> PaperSize
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PageSetup;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.KeyFile;
private import gtk.PaperSize;



private import gobject.ObjectG;

/**
 * A GtkPageSetup object stores the page size, orientation and margins.
 * The idea is that you can get one of these from the page setup dialog
 * and then pass it to the GtkPrintOperation when printing.
 * The benefit of splitting this out of the GtkPrintSettings is that
 * these affect the actual layout of the page, and thus need to be set
 * long before user prints.
 *
 * The margins specified in this object are the "print margins", i.e. the
 * parts of the page that the printer cannot print on. These are different
 * from the layout margins that a word processor uses; they are typically
 * used to determine the minimal size for the layout
 * margins.
 *
 * To obtain a GtkPageSetup use gtk_page_setup_new() to get the defaults,
 * or use gtk_print_run_page_setup_dialog() to show the page setup dialog
 * and receive the resulting page setup.
 *
 * $(DDOC_COMMENT example)
 *
 * Printing support was added in GTK+ 2.10.
 */
public class PageSetup : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkPageSetup* gtkPageSetup;
	
	
	public GtkPageSetup* getPageSetupStruct()
	{
		return gtkPageSetup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPageSetup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPageSetup* gtkPageSetup)
	{
		super(cast(GObject*)gtkPageSetup);
		this.gtkPageSetup = gtkPageSetup;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPageSetup = cast(GtkPageSetup*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkPageSetup.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkPageSetup * gtk_page_setup_new (void);
		auto p = gtk_page_setup_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_page_setup_new()");
		}
		this(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Copies a GtkPageSetup.
	 * Since 2.10
	 * Returns: a copy of other. [transfer full]
	 */
	public PageSetup copy()
	{
		// GtkPageSetup * gtk_page_setup_copy (GtkPageSetup *other);
		auto p = gtk_page_setup_copy(gtkPageSetup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Gets the page orientation of the GtkPageSetup.
	 * Since 2.10
	 * Returns: the page orientation
	 */
	public GtkPageOrientation getOrientation()
	{
		// GtkPageOrientation gtk_page_setup_get_orientation (GtkPageSetup *setup);
		return gtk_page_setup_get_orientation(gtkPageSetup);
	}
	
	/**
	 * Sets the page orientation of the GtkPageSetup.
	 * Since 2.10
	 * Params:
	 * orientation = a GtkPageOrientation value
	 */
	public void setOrientation(GtkPageOrientation orientation)
	{
		// void gtk_page_setup_set_orientation (GtkPageSetup *setup,  GtkPageOrientation orientation);
		gtk_page_setup_set_orientation(gtkPageSetup, orientation);
	}
	
	/**
	 * Gets the paper size of the GtkPageSetup.
	 * Since 2.10
	 * Returns: the paper size
	 */
	public PaperSize getPaperSize()
	{
		// GtkPaperSize * gtk_page_setup_get_paper_size (GtkPageSetup *setup);
		auto p = gtk_page_setup_get_paper_size(gtkPageSetup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PaperSize)(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Sets the paper size of the GtkPageSetup without
	 * changing the margins. See
	 * gtk_page_setup_set_paper_size_and_default_margins().
	 * Since 2.10
	 * Params:
	 * size = a GtkPaperSize
	 */
	public void setPaperSize(PaperSize size)
	{
		// void gtk_page_setup_set_paper_size (GtkPageSetup *setup,  GtkPaperSize *size);
		gtk_page_setup_set_paper_size(gtkPageSetup, (size is null) ? null : size.getPaperSizeStruct());
	}
	
	/**
	 * Gets the top margin in units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the top margin
	 */
	public double getTopMargin(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_top_margin (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_top_margin(gtkPageSetup, unit);
	}
	
	/**
	 * Sets the top margin of the GtkPageSetup.
	 * Since 2.10
	 * Params:
	 * margin = the new top margin in units of unit
	 * unit = the units for margin
	 */
	public void setTopMargin(double margin, GtkUnit unit)
	{
		// void gtk_page_setup_set_top_margin (GtkPageSetup *setup,  gdouble margin,  GtkUnit unit);
		gtk_page_setup_set_top_margin(gtkPageSetup, margin, unit);
	}
	
	/**
	 * Gets the bottom margin in units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the bottom margin
	 */
	public double getBottomMargin(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_bottom_margin (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_bottom_margin(gtkPageSetup, unit);
	}
	
	/**
	 * Sets the bottom margin of the GtkPageSetup.
	 * Since 2.10
	 * Params:
	 * margin = the new bottom margin in units of unit
	 * unit = the units for margin
	 */
	public void setBottomMargin(double margin, GtkUnit unit)
	{
		// void gtk_page_setup_set_bottom_margin (GtkPageSetup *setup,  gdouble margin,  GtkUnit unit);
		gtk_page_setup_set_bottom_margin(gtkPageSetup, margin, unit);
	}
	
	/**
	 * Gets the left margin in units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the left margin
	 */
	public double getLeftMargin(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_left_margin (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_left_margin(gtkPageSetup, unit);
	}
	
	/**
	 * Sets the left margin of the GtkPageSetup.
	 * Since 2.10
	 * Params:
	 * margin = the new left margin in units of unit
	 * unit = the units for margin
	 */
	public void setLeftMargin(double margin, GtkUnit unit)
	{
		// void gtk_page_setup_set_left_margin (GtkPageSetup *setup,  gdouble margin,  GtkUnit unit);
		gtk_page_setup_set_left_margin(gtkPageSetup, margin, unit);
	}
	
	/**
	 * Gets the right margin in units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the right margin
	 */
	public double getRightMargin(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_right_margin (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_right_margin(gtkPageSetup, unit);
	}
	
	/**
	 * Sets the right margin of the GtkPageSetup.
	 * Since 2.10
	 * Params:
	 * margin = the new right margin in units of unit
	 * unit = the units for margin
	 */
	public void setRightMargin(double margin, GtkUnit unit)
	{
		// void gtk_page_setup_set_right_margin (GtkPageSetup *setup,  gdouble margin,  GtkUnit unit);
		gtk_page_setup_set_right_margin(gtkPageSetup, margin, unit);
	}
	
	/**
	 * Sets the paper size of the GtkPageSetup and modifies
	 * the margins according to the new paper size.
	 * Since 2.10
	 * Params:
	 * size = a GtkPaperSize
	 */
	public void setPaperSizeAndDefaultMargins(PaperSize size)
	{
		// void gtk_page_setup_set_paper_size_and_default_margins  (GtkPageSetup *setup,  GtkPaperSize *size);
		gtk_page_setup_set_paper_size_and_default_margins(gtkPageSetup, (size is null) ? null : size.getPaperSizeStruct());
	}
	
	/**
	 * Returns the paper width in units of unit.
	 * Note that this function takes orientation, but
	 * not margins into consideration.
	 * See gtk_page_setup_get_page_width().
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the paper width.
	 */
	public double getPaperWidth(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_paper_width (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_paper_width(gtkPageSetup, unit);
	}
	
	/**
	 * Returns the paper height in units of unit.
	 * Note that this function takes orientation, but
	 * not margins into consideration.
	 * See gtk_page_setup_get_page_height().
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the paper height.
	 */
	public double getPaperHeight(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_paper_height (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_paper_height(gtkPageSetup, unit);
	}
	
	/**
	 * Returns the page width in units of unit.
	 * Note that this function takes orientation and
	 * margins into consideration.
	 * See gtk_page_setup_get_paper_width().
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the page width.
	 */
	public double getPageWidth(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_page_width (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_page_width(gtkPageSetup, unit);
	}
	
	/**
	 * Returns the page height in units of unit.
	 * Note that this function takes orientation and
	 * margins into consideration.
	 * See gtk_page_setup_get_paper_height().
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value
	 * Returns: the page height.
	 */
	public double getPageHeight(GtkUnit unit)
	{
		// gdouble gtk_page_setup_get_page_height (GtkPageSetup *setup,  GtkUnit unit);
		return gtk_page_setup_get_page_height(gtkPageSetup, unit);
	}
	
	/**
	 * Reads the page setup from the file file_name. Returns a
	 * new GtkPageSetup object with the restored page setup,
	 * or NULL if an error occurred. See gtk_page_setup_to_file().
	 * Since 2.12
	 * Params:
	 * fileName = the filename to read the page setup from. [type filename]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string fileName)
	{
		// GtkPageSetup * gtk_page_setup_new_from_file (const gchar *file_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_page_setup_new_from_file(Str.toStringz(fileName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_page_setup_new_from_file(Str.toStringz(fileName), &err)");
		}
		this(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Reads the page setup from the group group_name in the key file
	 * key_file. Returns a new GtkPageSetup object with the restored
	 * page setup, or NULL if an error occurred.
	 * Since 2.12
	 * Params:
	 * keyFile = the GKeyFile to retrieve the page_setup from
	 * groupName = the name of the group in the key_file to read, or NULL
	 * to use the default name "Page Setup". [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (KeyFile keyFile, string groupName)
	{
		// GtkPageSetup * gtk_page_setup_new_from_key_file (GKeyFile *key_file,  const gchar *group_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_page_setup_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_page_setup_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err)");
		}
		this(cast(GtkPageSetup*) p);
	}
	
	/**
	 * Reads the page setup from the file file_name.
	 * See gtk_page_setup_to_file().
	 * Since 2.14
	 * Params:
	 * fileName = the filename to read the page setup from. [type filename]
	 * Returns: TRUE on success
	 * Throws: GException on failure.
	 */
	public int loadFile(string fileName)
	{
		// gboolean gtk_page_setup_load_file (GtkPageSetup *setup,  const char *file_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_page_setup_load_file(gtkPageSetup, Str.toStringz(fileName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Reads the page setup from the group group_name in the key file
	 * key_file.
	 * Since 2.14
	 * Params:
	 * keyFile = the GKeyFile to retrieve the page_setup from
	 * groupName = the name of the group in the key_file to read, or NULL
	 * to use the default name "Page Setup". [allow-none]
	 * Returns: TRUE on success
	 * Throws: GException on failure.
	 */
	public int loadKeyFile(KeyFile keyFile, string groupName)
	{
		// gboolean gtk_page_setup_load_key_file (GtkPageSetup *setup,  GKeyFile *key_file,  const gchar *group_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_page_setup_load_key_file(gtkPageSetup, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This function saves the information from setup to file_name.
	 * Since 2.12
	 * Params:
	 * fileName = the file to save to. [type filename]
	 * Returns: TRUE on success
	 * Throws: GException on failure.
	 */
	public int toFile(string fileName)
	{
		// gboolean gtk_page_setup_to_file (GtkPageSetup *setup,  const char *file_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_page_setup_to_file(gtkPageSetup, Str.toStringz(fileName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This function adds the page setup from setup to key_file.
	 * Since 2.12
	 * Params:
	 * keyFile = the GKeyFile to save the page setup to
	 * groupName = the group to add the settings to in key_file,
	 * or NULL to use the default name "Page Setup"
	 */
	public void toKeyFile(KeyFile keyFile, string groupName)
	{
		// void gtk_page_setup_to_key_file (GtkPageSetup *setup,  GKeyFile *key_file,  const gchar *group_name);
		gtk_page_setup_to_key_file(gtkPageSetup, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}
}
