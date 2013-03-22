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
 * inFile  = GtkPaperSize.html
 * outPack = gtk
 * outFile = PaperSize
 * strct   = GtkPaperSize
 * realStrct=
 * ctorStrct=
 * clss    = PaperSize
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_paper_size_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- glib.KeyFile
 * structWrap:
 * 	- GKeyFile* -> KeyFile
 * 	- GList* -> ListG
 * 	- GtkPaperSize* -> PaperSize
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PaperSize;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.KeyFile;



private import gobject.Boxed;

/**
 * GtkPaperSize handles paper sizes. It uses the standard called
 * "PWG 5101.1-2002 PWG: Standard for Media Standardized Names"
 * to name the paper sizes (and to get the data for the page sizes).
 * In addition to standard paper sizes, GtkPaperSize allows to
 * construct custom paper sizes with arbitrary dimensions.
 *
 * The GtkPaperSize object stores not only the dimensions (width
 * and height) of a paper size and its name, it also provides
 * default print margins.
 *
 * Printing support has been added in GTK+ 2.10.
 */
public class PaperSize : Boxed
{
	
	/** the main Gtk struct */
	protected GtkPaperSize* gtkPaperSize;
	
	
	public GtkPaperSize* getPaperSizeStruct()
	{
		return gtkPaperSize;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkPaperSize;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPaperSize* gtkPaperSize)
	{
		this.gtkPaperSize = gtkPaperSize;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkPaperSize object by parsing a
	 * PWG 5101.1-2002
	 * paper name.
	 * If name is NULL, the default paper size is returned,
	 * see gtk_paper_size_get_default().
	 * Since 2.10
	 * Params:
	 * name = a paper size name, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GtkPaperSize * gtk_paper_size_new (const gchar *name);
		auto p = gtk_paper_size_new(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_paper_size_new(Str.toStringz(name))");
		}
		this(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Creates a new GtkPaperSize object by using
	 * PPD information.
	 * If ppd_name is not a recognized PPD paper name,
	 * ppd_display_name, width and height are used to
	 * construct a custom GtkPaperSize object.
	 * Since 2.10
	 * Params:
	 * ppdName = a PPD paper name
	 * ppdDisplayName = the corresponding human-readable name
	 * width = the paper width, in points
	 * height = the paper height in points
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string ppdName, string ppdDisplayName, double width, double height)
	{
		// GtkPaperSize * gtk_paper_size_new_from_ppd (const gchar *ppd_name,  const gchar *ppd_display_name,  gdouble width,  gdouble height);
		auto p = gtk_paper_size_new_from_ppd(Str.toStringz(ppdName), Str.toStringz(ppdDisplayName), width, height);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_paper_size_new_from_ppd(Str.toStringz(ppdName), Str.toStringz(ppdDisplayName), width, height)");
		}
		this(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Creates a new GtkPaperSize object with the
	 * given parameters.
	 * Since 2.10
	 * Params:
	 * name = the paper name
	 * displayName = the human-readable name
	 * width = the paper width, in units of unit
	 * height = the paper height, in units of unit
	 * unit = the unit for width and height. not GTK_UNIT_NONE.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string displayName, double width, double height, GtkUnit unit)
	{
		// GtkPaperSize * gtk_paper_size_new_custom (const gchar *name,  const gchar *display_name,  gdouble width,  gdouble height,  GtkUnit unit);
		auto p = gtk_paper_size_new_custom(Str.toStringz(name), Str.toStringz(displayName), width, height, unit);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_paper_size_new_custom(Str.toStringz(name), Str.toStringz(displayName), width, height, unit)");
		}
		this(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Copies an existing GtkPaperSize.
	 * Since 2.10
	 * Returns: a copy of other
	 */
	public PaperSize copy()
	{
		// GtkPaperSize * gtk_paper_size_copy (GtkPaperSize *other);
		auto p = gtk_paper_size_copy(gtkPaperSize);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PaperSize)(cast(GtkPaperSize*) p);
	}
	
	/**
	 * Free the given GtkPaperSize object.
	 * Since 2.10
	 */
	public void free()
	{
		// void gtk_paper_size_free (GtkPaperSize *size);
		gtk_paper_size_free(gtkPaperSize);
	}
	
	/**
	 * Compares two GtkPaperSize objects.
	 * Since 2.10
	 * Params:
	 * size2 = another GtkPaperSize object
	 * Returns: TRUE, if size1 and size2 represent the same paper size
	 */
	public int isEqual(PaperSize size2)
	{
		// gboolean gtk_paper_size_is_equal (GtkPaperSize *size1,  GtkPaperSize *size2);
		return gtk_paper_size_is_equal(gtkPaperSize, (size2 is null) ? null : size2.getPaperSizeStruct());
	}
	
	/**
	 * Creates a list of known paper sizes.
	 * Since 2.12
	 * Params:
	 * includeCustom = whether to include custom paper sizes
	 * as defined in the page setup dialog
	 * Returns: a newly allocated list of newly allocated GtkPaperSize objects. [element-type GtkPaperSize][transfer full]
	 */
	public static ListG getPaperSizes(int includeCustom)
	{
		// GList * gtk_paper_size_get_paper_sizes (gboolean include_custom);
		auto p = gtk_paper_size_get_paper_sizes(includeCustom);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the name of the GtkPaperSize.
	 * Since 2.10
	 * Returns: the name of size
	 */
	public string getName()
	{
		// const gchar * gtk_paper_size_get_name (GtkPaperSize *size);
		return Str.toString(gtk_paper_size_get_name(gtkPaperSize));
	}
	
	/**
	 * Gets the human-readable name of the GtkPaperSize.
	 * Since 2.10
	 * Returns: the human-readable name of size
	 */
	public string getDisplayName()
	{
		// const gchar * gtk_paper_size_get_display_name (GtkPaperSize *size);
		return Str.toString(gtk_paper_size_get_display_name(gtkPaperSize));
	}
	
	/**
	 * Gets the PPD name of the GtkPaperSize, which
	 * may be NULL.
	 * Since 2.10
	 * Returns: the PPD name of size
	 */
	public string getPpdName()
	{
		// const gchar * gtk_paper_size_get_ppd_name (GtkPaperSize *size);
		return Str.toString(gtk_paper_size_get_ppd_name(gtkPaperSize));
	}
	
	/**
	 * Gets the paper width of the GtkPaperSize, in
	 * units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the paper width
	 */
	public double getWidth(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_width (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_width(gtkPaperSize, unit);
	}
	
	/**
	 * Gets the paper height of the GtkPaperSize, in
	 * units of unit.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the paper height
	 */
	public double getHeight(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_height (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_height(gtkPaperSize, unit);
	}
	
	/**
	 * Returns TRUE if size is not a standard paper size.
	 * Returns: whether size is a custom paper size.
	 */
	public int isCustom()
	{
		// gboolean gtk_paper_size_is_custom (GtkPaperSize *size);
		return gtk_paper_size_is_custom(gtkPaperSize);
	}
	
	/**
	 * Changes the dimensions of a size to width x height.
	 * Since 2.10
	 * Params:
	 * width = the new width in units of unit
	 * height = the new height in units of unit
	 * unit = the unit for width and height
	 */
	public void setSize(double width, double height, GtkUnit unit)
	{
		// void gtk_paper_size_set_size (GtkPaperSize *size,  gdouble width,  gdouble height,  GtkUnit unit);
		gtk_paper_size_set_size(gtkPaperSize, width, height, unit);
	}
	
	/**
	 * Gets the default top margin for the GtkPaperSize.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the default top margin
	 */
	public double getDefaultTopMargin(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_default_top_margin  (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_default_top_margin(gtkPaperSize, unit);
	}
	
	/**
	 * Gets the default bottom margin for the GtkPaperSize.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the default bottom margin
	 */
	public double getDefaultBottomMargin(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_default_bottom_margin  (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_default_bottom_margin(gtkPaperSize, unit);
	}
	
	/**
	 * Gets the default left margin for the GtkPaperSize.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the default left margin
	 */
	public double getDefaultLeftMargin(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_default_left_margin  (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_default_left_margin(gtkPaperSize, unit);
	}
	
	/**
	 * Gets the default right margin for the GtkPaperSize.
	 * Since 2.10
	 * Params:
	 * unit = the unit for the return value, not GTK_UNIT_NONE
	 * Returns: the default right margin
	 */
	public double getDefaultRightMargin(GtkUnit unit)
	{
		// gdouble gtk_paper_size_get_default_right_margin  (GtkPaperSize *size,  GtkUnit unit);
		return gtk_paper_size_get_default_right_margin(gtkPaperSize, unit);
	}
	
	/**
	 * Returns the name of the default paper size, which
	 * depends on the current locale.
	 * Since 2.10
	 * Returns: the name of the default paper size. The string is owned by GTK+ and should not be modified.
	 */
	public static string getDefault()
	{
		// const gchar * gtk_paper_size_get_default (void);
		return Str.toString(gtk_paper_size_get_default());
	}
	
	/**
	 * Reads a paper size from the group group_name in the key file
	 * key_file.
	 * Since 2.12
	 * Params:
	 * keyFile = the GKeyFile to retrieve the papersize from
	 * groupName = the name ofthe group in the key file to read,
	 * or NULL to read the first group
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (KeyFile keyFile, string groupName)
	{
		// GtkPaperSize * gtk_paper_size_new_from_key_file (GKeyFile *key_file,  const gchar *group_name,  GError **error);
		GError* err = null;
		
		auto p = gtk_paper_size_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_paper_size_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err)");
		}
		this(cast(GtkPaperSize*) p);
	}
	
	/**
	 * This function adds the paper size from size to key_file.
	 * Since 2.12
	 * Params:
	 * keyFile = the GKeyFile to save the paper size to
	 * groupName = the group to add the settings to in key_file
	 */
	public void toKeyFile(KeyFile keyFile, string groupName)
	{
		// void gtk_paper_size_to_key_file (GtkPaperSize *size,  GKeyFile *key_file,  const gchar *group_name);
		gtk_paper_size_to_key_file(gtkPaperSize, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}
}
