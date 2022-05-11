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
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Filter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFileFilter` filters files by name or mime type.
 * 
 * `GtkFileFilter` can be used to restrict the files being shown in a
 * `GtkFileChooser`. Files can be filtered based on their name (with
 * [method@Gtk.FileFilter.add_pattern] or [method@Gtk.FileFilter.add_suffix])
 * or on their mime type (with [method@Gtk.FileFilter.add_mime_type]).
 * 
 * Filtering by mime types handles aliasing and subclassing of mime
 * types; e.g. a filter for text/plain also matches a file with mime
 * type application/rtf, since application/rtf is a subclass of
 * text/plain. Note that `GtkFileFilter` allows wildcards for the
 * subtype of a mime type, so you can e.g. filter for image/\*.
 * 
 * Normally, file filters are used by adding them to a `GtkFileChooser`
 * (see [method@Gtk.FileChooser.add_filter]), but it is also possible to
 * manually use a file filter on any [class@Gtk.FilterListModel] containing
 * `GFileInfo` objects.
 * 
 * # GtkFileFilter as GtkBuildable
 * 
 * The `GtkFileFilter` implementation of the `GtkBuildable` interface
 * supports adding rules using the `<mime-types>` and `<patterns>` and
 * `<suffixes>` elements and listing the rules within. Specifying a
 * `<mime-type>` or `<pattern>` or `<suffix>` has the same effect as
 * as calling
 * [method@Gtk.FileFilter.add_mime_type] or
 * [method@Gtk.FileFilter.add_pattern] or
 * [method@Gtk.FileFilter.add_suffix].
 * 
 * An example of a UI definition fragment specifying `GtkFileFilter`
 * rules:
 * ```xml
 * <object class="GtkFileFilter">
 * <property name="name" translatable="yes">Text and Images</property>
 * <mime-types>
 * <mime-type>text/plain</mime-type>
 * <mime-type>image/ *</mime-type>
 * </mime-types>
 * <patterns>
 * <pattern>*.txt</pattern>
 * </patterns>
 * <suffixes>
 * <suffix>png</suffix>
 * </suffixes>
 * </object>
 * ```
 */
public class FileFilter : Filter, BuildableIF
{
	/** the main Gtk struct */
	protected GtkFileFilter* gtkFileFilter;

	/** Get the main Gtk struct */
	public GtkFileFilter* getFileFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFileFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFileFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFileFilter* gtkFileFilter, bool ownedRef = false)
	{
		this.gtkFileFilter = gtkFileFilter;
		super(cast(GtkFilter*)gtkFileFilter, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkFileFilter);


	/** */
	public static GType getType()
	{
		return gtk_file_filter_get_type();
	}

	/**
	 * Creates a new `GtkFileFilter` with no rules added to it.
	 *
	 * Such a filter doesn’t accept any files, so is not
	 * particularly useful until you add rules with
	 * [method@Gtk.FileFilter.add_mime_type],
	 * [method@Gtk.FileFilter.add_pattern],
	 * [method@Gtk.FileFilter.add_suffix] or
	 * [method@Gtk.FileFilter.add_pixbuf_formats].
	 *
	 * To create a filter that accepts any file, use:
	 * ```c
	 * GtkFileFilter *filter = gtk_file_filter_new ();
	 * gtk_file_filter_add_pattern (filter, "*");
	 * ```
	 *
	 * Returns: a new `GtkFileFilter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_file_filter_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFileFilter*) __p, true);
	}

	/**
	 * Deserialize a file filter from a `GVariant`.
	 *
	 * The variant must be in the format produced by
	 * [method@Gtk.FileFilter.to_gvariant].
	 *
	 * Params:
	 *     variant = an `a{sv}` `GVariant`
	 *
	 * Returns: a new `GtkFileFilter` object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant variant)
	{
		auto __p = gtk_file_filter_new_from_gvariant((variant is null) ? null : variant.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gvariant");
		}

		this(cast(GtkFileFilter*) __p, true);
	}

	/**
	 * Adds a rule allowing a given mime type to @filter.
	 *
	 * Params:
	 *     mimeType = name of a MIME type
	 */
	public void addMimeType(string mimeType)
	{
		gtk_file_filter_add_mime_type(gtkFileFilter, Str.toStringz(mimeType));
	}

	/**
	 * Adds a rule allowing a shell style glob to a filter.
	 *
	 * Note that it depends on the platform whether pattern
	 * matching ignores case or not. On Windows, it does, on
	 * other platforms, it doesn't.
	 *
	 * Params:
	 *     pattern = a shell style glob
	 */
	public void addPattern(string pattern)
	{
		gtk_file_filter_add_pattern(gtkFileFilter, Str.toStringz(pattern));
	}

	/**
	 * Adds a rule allowing image files in the formats supported
	 * by GdkPixbuf.
	 *
	 * This is equivalent to calling [method@Gtk.FileFilter.add_mime_type]
	 * for all the supported mime types.
	 */
	public void addPixbufFormats()
	{
		gtk_file_filter_add_pixbuf_formats(gtkFileFilter);
	}

	/**
	 * Adds a suffix match rule to a filter.
	 *
	 * This is similar to adding a match for the pattern
	 * "*.@suffix".
	 *
	 * In contrast to pattern matches, suffix matches
	 * are *always* case-insensitive.
	 *
	 * Params:
	 *     suffix = filename suffix to match
	 *
	 * Since: 4.4
	 */
	public void addSuffix(string suffix)
	{
		gtk_file_filter_add_suffix(gtkFileFilter, Str.toStringz(suffix));
	}

	/**
	 * Gets the attributes that need to be filled in for the `GFileInfo`
	 * passed to this filter.
	 *
	 * This function will not typically be used by applications;
	 * it is intended principally for use in the implementation
	 * of `GtkFileChooser`.
	 *
	 * Returns: the attributes
	 */
	public string[] getAttributes()
	{
		return Str.toStringArray(gtk_file_filter_get_attributes(gtkFileFilter));
	}

	/**
	 * Gets the human-readable name for the filter.
	 *
	 * See [method@Gtk.FileFilter.set_name].
	 *
	 * Returns: The human-readable name of the filter
	 */
	public string getName()
	{
		return Str.toString(gtk_file_filter_get_name(gtkFileFilter));
	}

	/**
	 * Sets a human-readable name of the filter.
	 *
	 * This is the string that will be displayed in the file chooser
	 * if there is a selectable list of filters.
	 *
	 * Params:
	 *     name = the human-readable-name for the filter, or %NULL
	 *         to remove any existing name.
	 */
	public void setName(string name)
	{
		gtk_file_filter_set_name(gtkFileFilter, Str.toStringz(name));
	}

	/**
	 * Serialize a file filter to an `a{sv}` variant.
	 *
	 * Returns: a new, floating, `GVariant`
	 */
	public Variant toGvariant()
	{
		auto __p = gtk_file_filter_to_gvariant(gtkFileFilter);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}
}
