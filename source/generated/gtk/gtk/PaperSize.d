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


module gtk.PaperSize;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.KeyFile;
private import glib.ListG;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * `GtkPaperSize` handles paper sizes.
 * 
 * It uses the standard called
 * [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
 * to name the paper sizes (and to get the data for the page sizes).
 * In addition to standard paper sizes, `GtkPaperSize` allows to
 * construct custom paper sizes with arbitrary dimensions.
 * 
 * The `GtkPaperSize` object stores not only the dimensions (width
 * and height) of a paper size and its name, it also provides
 * default print margins.
 */
public class PaperSize
{
	/** the main Gtk struct */
	protected GtkPaperSize* gtkPaperSize;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkPaperSize* getPaperSizeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPaperSize;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkPaperSize;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPaperSize* gtkPaperSize, bool ownedRef = false)
	{
		this.gtkPaperSize = gtkPaperSize;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_paper_size_free(gtkPaperSize);
	}


	/** */
	public static GType getType()
	{
		return gtk_paper_size_get_type();
	}

	/**
	 * Creates a new `GtkPaperSize` object by parsing a
	 * [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
	 * paper name.
	 *
	 * If @name is %NULL, the default paper size is returned,
	 * see [func@Gtk.PaperSize.get_default].
	 *
	 * Params:
	 *     name = a paper size name
	 *
	 * Returns: a new `GtkPaperSize`, use [method@Gtk.PaperSize.free]
	 *     to free it
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto __p = gtk_paper_size_new(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Creates a new `GtkPaperSize` object with the
	 * given parameters.
	 *
	 * Params:
	 *     name = the paper name
	 *     displayName = the human-readable name
	 *     width = the paper width, in units of @unit
	 *     height = the paper height, in units of @unit
	 *     unit = the unit for @width and @height. not %GTK_UNIT_NONE.
	 *
	 * Returns: a new `GtkPaperSize` object, use [method@Gtk.PaperSize.free]
	 *     to free it
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string displayName, double width, double height, GtkUnit unit)
	{
		auto __p = gtk_paper_size_new_custom(Str.toStringz(name), Str.toStringz(displayName), width, height, unit);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_custom");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Deserialize a paper size from a `GVariant`.
	 *
	 * The `GVariant must be in the format produced by
	 * [method@Gtk.PaperSize.to_gvariant].
	 *
	 * Params:
	 *     variant = an a{sv} `GVariant`
	 *
	 * Returns: a new `GtkPaperSize` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant variant)
	{
		auto __p = gtk_paper_size_new_from_gvariant((variant is null) ? null : variant.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gvariant");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Creates a new `GtkPaperSize` object by using
	 * IPP information.
	 *
	 * If @ipp_name is not a recognized paper name,
	 * @width and @height are used to
	 * construct a custom `GtkPaperSize` object.
	 *
	 * Params:
	 *     ippName = an IPP paper name
	 *     width = the paper width, in points
	 *     height = the paper height in points
	 *
	 * Returns: a new `GtkPaperSize`, use [method@Gtk.PaperSize.free]
	 *     to free it
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string ippName, double width, double height)
	{
		auto __p = gtk_paper_size_new_from_ipp(Str.toStringz(ippName), width, height);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_ipp");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Reads a paper size from the group @group_name in the key file
	 * @key_file.
	 *
	 * Params:
	 *     keyFile = the `GKeyFile` to retrieve the papersize from
	 *     groupName = the name of the group in the key file to read,
	 *         or %NULL to read the first group
	 *
	 * Returns: a new `GtkPaperSize` object with the restored paper size
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(KeyFile keyFile, string groupName)
	{
		GError* err = null;

		auto __p = gtk_paper_size_new_from_key_file((keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_key_file");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Creates a new `GtkPaperSize` object by using
	 * PPD information.
	 *
	 * If @ppd_name is not a recognized PPD paper name,
	 * @ppd_display_name, @width and @height are used to
	 * construct a custom `GtkPaperSize` object.
	 *
	 * Params:
	 *     ppdName = a PPD paper name
	 *     ppdDisplayName = the corresponding human-readable name
	 *     width = the paper width, in points
	 *     height = the paper height in points
	 *
	 * Returns: a new `GtkPaperSize`, use [method@Gtk.PaperSize.free]
	 *     to free it
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string ppdName, string ppdDisplayName, double width, double height)
	{
		auto __p = gtk_paper_size_new_from_ppd(Str.toStringz(ppdName), Str.toStringz(ppdDisplayName), width, height);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_ppd");
		}

		this(cast(GtkPaperSize*) __p);
	}

	/**
	 * Copies an existing `GtkPaperSize`.
	 *
	 * Returns: a copy of @other
	 */
	public PaperSize copy()
	{
		auto __p = gtk_paper_size_copy(gtkPaperSize);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaperSize)(cast(GtkPaperSize*) __p, true);
	}

	/**
	 * Free the given `GtkPaperSize` object.
	 */
	public void free()
	{
		gtk_paper_size_free(gtkPaperSize);
		ownedRef = false;
	}

	/**
	 * Gets the default bottom margin for the `GtkPaperSize`.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the default bottom margin
	 */
	public double getDefaultBottomMargin(GtkUnit unit)
	{
		return gtk_paper_size_get_default_bottom_margin(gtkPaperSize, unit);
	}

	/**
	 * Gets the default left margin for the `GtkPaperSize`.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the default left margin
	 */
	public double getDefaultLeftMargin(GtkUnit unit)
	{
		return gtk_paper_size_get_default_left_margin(gtkPaperSize, unit);
	}

	/**
	 * Gets the default right margin for the `GtkPaperSize`.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the default right margin
	 */
	public double getDefaultRightMargin(GtkUnit unit)
	{
		return gtk_paper_size_get_default_right_margin(gtkPaperSize, unit);
	}

	/**
	 * Gets the default top margin for the `GtkPaperSize`.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the default top margin
	 */
	public double getDefaultTopMargin(GtkUnit unit)
	{
		return gtk_paper_size_get_default_top_margin(gtkPaperSize, unit);
	}

	/**
	 * Gets the human-readable name of the `GtkPaperSize`.
	 *
	 * Returns: the human-readable name of @size
	 */
	public string getDisplayName()
	{
		return Str.toString(gtk_paper_size_get_display_name(gtkPaperSize));
	}

	/**
	 * Gets the paper height of the `GtkPaperSize`, in
	 * units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the paper height
	 */
	public double getHeight(GtkUnit unit)
	{
		return gtk_paper_size_get_height(gtkPaperSize, unit);
	}

	/**
	 * Gets the name of the `GtkPaperSize`.
	 *
	 * Returns: the name of @size
	 */
	public string getName()
	{
		return Str.toString(gtk_paper_size_get_name(gtkPaperSize));
	}

	/**
	 * Gets the PPD name of the `GtkPaperSize`, which
	 * may be %NULL.
	 *
	 * Returns: the PPD name of @size
	 */
	public string getPpdName()
	{
		return Str.toString(gtk_paper_size_get_ppd_name(gtkPaperSize));
	}

	/**
	 * Gets the paper width of the `GtkPaperSize`, in
	 * units of @unit.
	 *
	 * Params:
	 *     unit = the unit for the return value, not %GTK_UNIT_NONE
	 *
	 * Returns: the paper width
	 */
	public double getWidth(GtkUnit unit)
	{
		return gtk_paper_size_get_width(gtkPaperSize, unit);
	}

	/**
	 * Returns %TRUE if @size is not a standard paper size.
	 *
	 * Returns: whether @size is a custom paper size.
	 */
	public bool isCustom()
	{
		return gtk_paper_size_is_custom(gtkPaperSize) != 0;
	}

	/**
	 * Compares two `GtkPaperSize` objects.
	 *
	 * Params:
	 *     size2 = another `GtkPaperSize` object
	 *
	 * Returns: %TRUE, if @size1 and @size2
	 *     represent the same paper size
	 */
	public bool isEqual(PaperSize size2)
	{
		return gtk_paper_size_is_equal(gtkPaperSize, (size2 is null) ? null : size2.getPaperSizeStruct()) != 0;
	}

	/**
	 * Returns %TRUE if @size is an IPP standard paper size.
	 *
	 * Returns: whether @size is not an IPP custom paper size.
	 */
	public bool isIpp()
	{
		return gtk_paper_size_is_ipp(gtkPaperSize) != 0;
	}

	/**
	 * Changes the dimensions of a @size to @width x @height.
	 *
	 * Params:
	 *     width = the new width in units of @unit
	 *     height = the new height in units of @unit
	 *     unit = the unit for @width and @height
	 */
	public void setSize(double width, double height, GtkUnit unit)
	{
		gtk_paper_size_set_size(gtkPaperSize, width, height, unit);
	}

	/**
	 * Serialize a paper size to an `a{sv}` variant.
	 *
	 * Returns: a new, floating, `GVariant`
	 */
	public Variant toGvariant()
	{
		auto __p = gtk_paper_size_to_gvariant(gtkPaperSize);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * This function adds the paper size from @size to @key_file.
	 *
	 * Params:
	 *     keyFile = the `GKeyFile` to save the paper size to
	 *     groupName = the group to add the settings to in @key_file
	 */
	public void toKeyFile(KeyFile keyFile, string groupName)
	{
		gtk_paper_size_to_key_file(gtkPaperSize, (keyFile is null) ? null : keyFile.getKeyFileStruct(), Str.toStringz(groupName));
	}

	/**
	 * Returns the name of the default paper size, which
	 * depends on the current locale.
	 *
	 * Returns: the name of the default paper size. The string
	 *     is owned by GTK and should not be modified.
	 */
	public static string getDefault()
	{
		return Str.toString(gtk_paper_size_get_default());
	}

	/**
	 * Creates a list of known paper sizes.
	 *
	 * Params:
	 *     includeCustom = whether to include custom paper sizes
	 *         as defined in the page setup dialog
	 *
	 * Returns: a newly allocated list of newly
	 *     allocated `GtkPaperSize` objects
	 */
	public static ListG getPaperSizes(bool includeCustom)
	{
		auto __p = gtk_paper_size_get_paper_sizes(includeCustom);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}
}
