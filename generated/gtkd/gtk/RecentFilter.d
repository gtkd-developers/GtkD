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


module gtk.RecentFilter;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkRecentFilter can be used to restrict the files being shown
 * in a #GtkRecentChooser.  Files can be filtered based on their name
 * (with gtk_recent_filter_add_pattern()), on their mime type (with
 * gtk_file_filter_add_mime_type()), on the application that has
 * registered them (with gtk_recent_filter_add_application()), or by
 * a custom filter function (with gtk_recent_filter_add_custom()).
 * 
 * Filtering by mime type handles aliasing and subclassing of mime
 * types; e.g. a filter for text/plain also matches a file with mime
 * type application/rtf, since application/rtf is a subclass of text/plain.
 * Note that #GtkRecentFilter allows wildcards for the subtype of a
 * mime type, so you can e.g. filter for image/\*.
 * 
 * Normally, filters are used by adding them to a #GtkRecentChooser,
 * see gtk_recent_chooser_add_filter(), but it is also possible to
 * manually use a filter on a file with gtk_recent_filter_filter().
 * 
 * Recently used files are supported since GTK+ 2.10.
 * 
 * ## GtkRecentFilter as GtkBuildable
 * 
 * The GtkRecentFilter implementation of the GtkBuildable interface
 * supports adding rules using the <mime-types>, <patterns> and
 * <applications> elements and listing the rules within. Specifying
 * a <mime-type>, <pattern> or <application> has the same effect as
 * calling gtk_recent_filter_add_mime_type(),
 * gtk_recent_filter_add_pattern() or gtk_recent_filter_add_application().
 * 
 * An example of a UI definition fragment specifying GtkRecentFilter rules:
 * |[
 * <object class="GtkRecentFilter">
 * <mime-types>
 * <mime-type>text/plain</mime-type>
 * <mime-type>image/png</mime-type>
 * </mime-types>
 * <patterns>
 * <pattern>*.txt</pattern>
 * <pattern>*.png</pattern>
 * </patterns>
 * <applications>
 * <application>gimp</application>
 * <application>gedit</application>
 * <application>glade</application>
 * </applications>
 * </object>
 * ]|
 */
public class RecentFilter : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkRecentFilter* gtkRecentFilter;

	/** Get the main Gtk struct */
	public GtkRecentFilter* getRecentFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRecentFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRecentFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRecentFilter* gtkRecentFilter, bool ownedRef = false)
	{
		this.gtkRecentFilter = gtkRecentFilter;
		super(cast(GObject*)gtkRecentFilter, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkRecentFilter);


	/** */
	public static GType getType()
	{
		return gtk_recent_filter_get_type();
	}

	/**
	 * Creates a new #GtkRecentFilter with no rules added to it.
	 * Such filter does not accept any recently used resources, so is not
	 * particularly useful until you add rules with
	 * gtk_recent_filter_add_pattern(), gtk_recent_filter_add_mime_type(),
	 * gtk_recent_filter_add_application(), gtk_recent_filter_add_age().
	 * To create a filter that accepts any recently used resource, use:
	 * |[<!-- language="C" -->
	 * GtkRecentFilter *filter = gtk_recent_filter_new ();
	 * gtk_recent_filter_add_pattern (filter, "*");
	 * ]|
	 *
	 * Returns: a new #GtkRecentFilter
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_recent_filter_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRecentFilter*) p);
	}

	/**
	 * Adds a rule that allows resources based on their age - that is, the number
	 * of days elapsed since they were last modified.
	 *
	 * Params:
	 *     days = number of days
	 *
	 * Since: 2.10
	 */
	public void addAge(int days)
	{
		gtk_recent_filter_add_age(gtkRecentFilter, days);
	}

	/**
	 * Adds a rule that allows resources based on the name of the application
	 * that has registered them.
	 *
	 * Params:
	 *     application = an application name
	 *
	 * Since: 2.10
	 */
	public void addApplication(string application)
	{
		gtk_recent_filter_add_application(gtkRecentFilter, Str.toStringz(application));
	}

	/**
	 * Adds a rule to a filter that allows resources based on a custom callback
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
	 *     dataDestroy = function to call to free @data when it is no longer needed.
	 *
	 * Since: 2.10
	 */
	public void addCustom(GtkRecentFilterFlags needed, GtkRecentFilterFunc func, void* data, GDestroyNotify dataDestroy)
	{
		gtk_recent_filter_add_custom(gtkRecentFilter, needed, func, data, dataDestroy);
	}

	/**
	 * Adds a rule that allows resources based on the name of the group
	 * to which they belong
	 *
	 * Params:
	 *     group = a group name
	 *
	 * Since: 2.10
	 */
	public void addGroup(string group)
	{
		gtk_recent_filter_add_group(gtkRecentFilter, Str.toStringz(group));
	}

	/**
	 * Adds a rule that allows resources based on their registered MIME type.
	 *
	 * Params:
	 *     mimeType = a MIME type
	 *
	 * Since: 2.10
	 */
	public void addMimeType(string mimeType)
	{
		gtk_recent_filter_add_mime_type(gtkRecentFilter, Str.toStringz(mimeType));
	}

	/**
	 * Adds a rule that allows resources based on a pattern matching their
	 * display name.
	 *
	 * Params:
	 *     pattern = a file pattern
	 *
	 * Since: 2.10
	 */
	public void addPattern(string pattern)
	{
		gtk_recent_filter_add_pattern(gtkRecentFilter, Str.toStringz(pattern));
	}

	/**
	 * Adds a rule allowing image files in the formats supported
	 * by GdkPixbuf.
	 *
	 * Since: 2.10
	 */
	public void addPixbufFormats()
	{
		gtk_recent_filter_add_pixbuf_formats(gtkRecentFilter);
	}

	/**
	 * Tests whether a file should be displayed according to @filter.
	 * The #GtkRecentFilterInfo @filter_info should include
	 * the fields returned from gtk_recent_filter_get_needed(), and
	 * must set the #GtkRecentFilterInfo.contains field of @filter_info
	 * to indicate which fields have been set.
	 *
	 * This function will not typically be used by applications; it
	 * is intended principally for use in the implementation of
	 * #GtkRecentChooser.
	 *
	 * Params:
	 *     filterInfo = a #GtkRecentFilterInfo containing information
	 *         about a recently used resource
	 *
	 * Returns: %TRUE if the file should be displayed
	 *
	 * Since: 2.10
	 */
	public bool filter(GtkRecentFilterInfo* filterInfo)
	{
		return gtk_recent_filter_filter(gtkRecentFilter, filterInfo) != 0;
	}

	/**
	 * Gets the human-readable name for the filter.
	 * See gtk_recent_filter_set_name().
	 *
	 * Returns: the name of the filter, or %NULL.  The returned string
	 *     is owned by the filter object and should not be freed.
	 *
	 * Since: 2.10
	 */
	public string getName()
	{
		return Str.toString(gtk_recent_filter_get_name(gtkRecentFilter));
	}

	/**
	 * Gets the fields that need to be filled in for the #GtkRecentFilterInfo
	 * passed to gtk_recent_filter_filter()
	 *
	 * This function will not typically be used by applications; it
	 * is intended principally for use in the implementation of
	 * #GtkRecentChooser.
	 *
	 * Returns: bitfield of flags indicating needed fields when
	 *     calling gtk_recent_filter_filter()
	 *
	 * Since: 2.10
	 */
	public GtkRecentFilterFlags getNeeded()
	{
		return gtk_recent_filter_get_needed(gtkRecentFilter);
	}

	/**
	 * Sets the human-readable name of the filter; this is the string
	 * that will be displayed in the recently used resources selector
	 * user interface if there is a selectable list of filters.
	 *
	 * Params:
	 *     name = then human readable name of @filter
	 *
	 * Since: 2.10
	 */
	public void setName(string name)
	{
		gtk_recent_filter_set_name(gtkRecentFilter, Str.toStringz(name));
	}
}
