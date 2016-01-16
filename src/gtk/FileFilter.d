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


module gtk.FileFilter;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * A GtkFileFilter can be used to restrict the files being shown in a
 * #GtkFileChooser. Files can be filtered based on their name (with
 * gtk_file_filter_add_pattern()), on their mime type (with
 * gtk_file_filter_add_mime_type()), or by a custom filter function
 * (with gtk_file_filter_add_custom()).
 * 
 * Filtering by mime types handles aliasing and subclassing of mime
 * types; e.g. a filter for text/plain also matches a file with mime
 * type application/rtf, since application/rtf is a subclass of
 * text/plain. Note that #GtkFileFilter allows wildcards for the
 * subtype of a mime type, so you can e.g. filter for image/\*.
 * 
 * Normally, filters are used by adding them to a #GtkFileChooser,
 * see gtk_file_chooser_add_filter(), but it is also possible
 * to manually use a filter on a file with gtk_file_filter_filter().
 * 
 * # GtkFileFilter as GtkBuildable
 * 
 * The GtkFileFilter implementation of the GtkBuildable interface
 * supports adding rules using the <mime-types>, <patterns> and
 * <applications> elements and listing the rules within. Specifying
 * a <mime-type> or <pattern> has the same effect as as calling
 * gtk_file_filter_add_mime_type() or gtk_file_filter_add_pattern().
 * 
 * An example of a UI definition fragment specifying GtkFileFilter
 * rules:
 * |[
 * <object class="GtkFileFilter">
 * <mime-types>
 * <mime-type>text/plain</mime-type>
 * <mime-type>image/ *</mime-type>
 * </mime-types>
 * <patterns>
 * <pattern>*.txt</pattern>
 * <pattern>*.png</pattern>
 * </patterns>
 * </object>
 * ]|
 */
public class FileFilter : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkFileFilter* gtkFileFilter;

	/** Get the main Gtk struct */
	public GtkFileFilter* getFileFilterStruct()
	{
		return gtkFileFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileFilter;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkFileFilter = cast(GtkFileFilter*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFileFilter* gtkFileFilter, bool ownedRef = false)
	{
		this.gtkFileFilter = gtkFileFilter;
		super(cast(GObject*)gtkFileFilter, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkFileFilter);


	/** */
	public static GType getType()
	{
		return gtk_file_filter_get_type();
	}

	/**
	 * Creates a new #GtkFileFilter with no rules added to it.
	 * Such a filter doesn’t accept any files, so is not
	 * particularly useful until you add rules with
	 * gtk_file_filter_add_mime_type(), gtk_file_filter_add_pattern(),
	 * or gtk_file_filter_add_custom(). To create a filter
	 * that accepts any file, use:
	 * |[<!-- language="C" -->
	 * GtkFileFilter *filter = gtk_file_filter_new ();
	 * gtk_file_filter_add_pattern (filter, "*");
	 * ]|
	 *
	 * Return: a new #GtkFileFilter
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_file_filter_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkFileFilter*) p);
	}

	/**
	 * Adds rule to a filter that allows files based on a custom callback
	 * function. The bitfield @needed which is passed in provides information
	 * about what sorts of information that the filter function needs;
	 * this allows GTK+ to avoid retrieving expensive information when
	 * it isn’t needed by the filter.
	 *
	 * Params:
	 *     needed = bitfield of flags indicating the information that the custom
	 *         filter function needs.
	 *     func = callback function; if the function returns %TRUE, then
	 *         the file will be displayed.
	 *     data = data to pass to @func
	 *     notify = function to call to free @data when it is no longer needed.
	 *
	 * Since: 2.4
	 */
	public void addCustom(GtkFileFilterFlags needed, GtkFileFilterFunc func, void* data, GDestroyNotify notify)
	{
		gtk_file_filter_add_custom(gtkFileFilter, needed, func, data, notify);
	}

	/**
	 * Adds a rule allowing a given mime type to @filter.
	 *
	 * Params:
	 *     mimeType = name of a MIME type
	 *
	 * Since: 2.4
	 */
	public void addMimeType(string mimeType)
	{
		gtk_file_filter_add_mime_type(gtkFileFilter, Str.toStringz(mimeType));
	}

	/**
	 * Adds a rule allowing a shell style glob to a filter.
	 *
	 * Params:
	 *     pattern = a shell style glob
	 *
	 * Since: 2.4
	 */
	public void addPattern(string pattern)
	{
		gtk_file_filter_add_pattern(gtkFileFilter, Str.toStringz(pattern));
	}

	/**
	 * Adds a rule allowing image files in the formats supported
	 * by GdkPixbuf.
	 *
	 * Since: 2.6
	 */
	public void addPixbufFormats()
	{
		gtk_file_filter_add_pixbuf_formats(gtkFileFilter);
	}

	/**
	 * Tests whether a file should be displayed according to @filter.
	 * The #GtkFileFilterInfo @filter_info should include
	 * the fields returned from gtk_file_filter_get_needed().
	 *
	 * This function will not typically be used by applications; it
	 * is intended principally for use in the implementation of
	 * #GtkFileChooser.
	 *
	 * Params:
	 *     filterInfo = a #GtkFileFilterInfo containing information
	 *         about a file.
	 *
	 * Return: %TRUE if the file should be displayed
	 *
	 * Since: 2.4
	 */
	public bool filter(GtkFileFilterInfo* filterInfo)
	{
		return gtk_file_filter_filter(gtkFileFilter, filterInfo) != 0;
	}

	/**
	 * Gets the human-readable name for the filter. See gtk_file_filter_set_name().
	 *
	 * Return: The human-readable name of the filter,
	 *     or %NULL. This value is owned by GTK+ and must not
	 *     be modified or freed.
	 *
	 * Since: 2.4
	 */
	public string getName()
	{
		return Str.toString(gtk_file_filter_get_name(gtkFileFilter));
	}

	/**
	 * Gets the fields that need to be filled in for the #GtkFileFilterInfo
	 * passed to gtk_file_filter_filter()
	 *
	 * This function will not typically be used by applications; it
	 * is intended principally for use in the implementation of
	 * #GtkFileChooser.
	 *
	 * Return: bitfield of flags indicating needed fields when
	 *     calling gtk_file_filter_filter()
	 *
	 * Since: 2.4
	 */
	public GtkFileFilterFlags getNeeded()
	{
		return gtk_file_filter_get_needed(gtkFileFilter);
	}

	/**
	 * Sets the human-readable name of the filter; this is the string
	 * that will be displayed in the file selector user interface if
	 * there is a selectable list of filters.
	 *
	 * Params:
	 *     name = the human-readable-name for the filter, or %NULL
	 *         to remove any existing name.
	 *
	 * Since: 2.4
	 */
	public void setName(string name)
	{
		gtk_file_filter_set_name(gtkFileFilter, Str.toStringz(name));
	}
}
