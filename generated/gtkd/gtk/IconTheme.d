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


module gtk.IconTheme;

private import cairo.Surface;
private import gdk.Screen;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.IconInfo;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkIconTheme provides a facility for looking up icons by name
 * and size. The main reason for using a name rather than simply
 * providing a filename is to allow different icons to be used
 * depending on what “icon theme” is selected
 * by the user. The operation of icon themes on Linux and Unix
 * follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
 * There is a fallback icon theme, named `hicolor`, where applications
 * should install their icons, but additional icon themes can be installed
 * as operating system vendors and users choose.
 * 
 * Named icons are similar to the deprecated [Stock Items][gtkstock],
 * and the distinction between the two may be a bit confusing.
 * A few things to keep in mind:
 * 
 * - Stock images usually are used in conjunction with
 * [Stock Items][gtkstock], such as %GTK_STOCK_OK or
 * %GTK_STOCK_OPEN. Named icons are easier to set up and therefore
 * are more useful for new icons that an application wants to
 * add, such as application icons or window icons.
 * 
 * - Stock images can only be loaded at the symbolic sizes defined
 * by the #GtkIconSize enumeration, or by custom sizes defined
 * by gtk_icon_size_register(), while named icons are more flexible
 * and any pixel size can be specified.
 * 
 * - Because stock images are closely tied to stock items, and thus
 * to actions in the user interface, stock images may come in
 * multiple variants for different widget states or writing
 * directions.
 * 
 * A good rule of thumb is that if there is a stock image for what
 * you want to use, use it, otherwise use a named icon. It turns
 * out that internally stock images are generally defined in
 * terms of one or more named icons. (An example of the
 * more than one case is icons that depend on writing direction;
 * %GTK_STOCK_GO_FORWARD uses the two themed icons
 * “gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)
 * 
 * In many cases, named themes are used indirectly, via #GtkImage
 * or stock items, rather than directly, but looking up icons
 * directly is also simple. The #GtkIconTheme object acts
 * as a database of all the icons in the current theme. You
 * can create new #GtkIconTheme objects, but it’s much more
 * efficient to use the standard icon theme for the #GdkScreen
 * so that the icon information is shared with other people
 * looking up icons.
 * |[<!-- language="C" -->
 * GError *error = NULL;
 * GtkIconTheme *icon_theme;
 * GdkPixbuf *pixbuf;
 * 
 * icon_theme = gtk_icon_theme_get_default ();
 * pixbuf = gtk_icon_theme_load_icon (icon_theme,
 * "my-icon-name", // icon name
 * 48, // icon size
 * 0,  // flags
 * &error);
 * if (!pixbuf)
 * {
 * g_warning ("Couldn’t load icon: %s", error->message);
 * g_error_free (error);
 * }
 * else
 * {
 * // Use the pixbuf
 * g_object_unref (pixbuf);
 * }
 * ]|
 */
public class IconTheme : ObjectG
{
	/** the main Gtk struct */
	protected GtkIconTheme* gtkIconTheme;

	/** Get the main Gtk struct */
	public GtkIconTheme* getIconThemeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconTheme;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIconTheme;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconTheme* gtkIconTheme, bool ownedRef = false)
	{
		this.gtkIconTheme = gtkIconTheme;
		super(cast(GObject*)gtkIconTheme, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_icon_theme_get_type();
	}

	/**
	 * Creates a new icon theme object. Icon theme objects are used
	 * to lookup up an icon by name in a particular icon theme.
	 * Usually, you’ll want to use gtk_icon_theme_get_default()
	 * or gtk_icon_theme_get_for_screen() rather than creating
	 * a new icon theme object for scratch.
	 *
	 * Returns: the newly created #GtkIconTheme object.
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_icon_theme_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconTheme*) p, true);
	}

	/**
	 * Registers a built-in icon for icon theme lookups. The idea
	 * of built-in icons is to allow an application or library
	 * that uses themed icons to function requiring files to
	 * be present in the file system. For instance, the default
	 * images for all of GTK+’s stock icons are registered
	 * as built-icons.
	 *
	 * In general, if you use gtk_icon_theme_add_builtin_icon()
	 * you should also install the icon in the icon theme, so
	 * that the icon is generally available.
	 *
	 * This function will generally be used with pixbufs loaded
	 * via gdk_pixbuf_new_from_inline().
	 *
	 * Deprecated: Use gtk_icon_theme_add_resource_path()
	 * to add application-specific icons to the icon theme.
	 *
	 * Params:
	 *     iconName = the name of the icon to register
	 *     size = the size in pixels at which to register the icon (different
	 *         images can be registered for the same icon name at different sizes.)
	 *     pixbuf = #GdkPixbuf that contains the image to use for @icon_name
	 *
	 * Since: 2.4
	 */
	public static void addBuiltinIcon(string iconName, int size, Pixbuf pixbuf)
	{
		gtk_icon_theme_add_builtin_icon(Str.toStringz(iconName), size, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Gets the icon theme for the default screen. See
	 * gtk_icon_theme_get_for_screen().
	 *
	 * Returns: A unique #GtkIconTheme associated with
	 *     the default screen. This icon theme is associated with
	 *     the screen and can be used as long as the screen
	 *     is open. Do not ref or unref it.
	 *
	 * Since: 2.4
	 */
	public static IconTheme getDefault()
	{
		auto p = gtk_icon_theme_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconTheme)(cast(GtkIconTheme*) p);
	}

	/**
	 * Gets the icon theme object associated with @screen; if this
	 * function has not previously been called for the given
	 * screen, a new icon theme object will be created and
	 * associated with the screen. Icon theme objects are
	 * fairly expensive to create, so using this function
	 * is usually a better choice than calling than gtk_icon_theme_new()
	 * and setting the screen yourself; by using this function
	 * a single icon theme object will be shared between users.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Returns: A unique #GtkIconTheme associated with
	 *     the given screen. This icon theme is associated with
	 *     the screen and can be used as long as the screen
	 *     is open. Do not ref or unref it.
	 *
	 * Since: 2.4
	 */
	public static IconTheme getForScreen(Screen screen)
	{
		auto p = gtk_icon_theme_get_for_screen((screen is null) ? null : screen.getScreenStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconTheme)(cast(GtkIconTheme*) p);
	}

	/**
	 * Adds a resource path that will be looked at when looking
	 * for icons, similar to search paths.
	 *
	 * This function should be used to make application-specific icons
	 * available as part of the icon theme.
	 *
	 * The resources are considered as part of the hicolor icon theme
	 * and must be located in subdirectories that are defined in the
	 * hicolor icon theme, such as `@path/16x16/actions/run.png`.
	 * Icons that are directly placed in the resource path instead
	 * of a subdirectory are also considered as ultimate fallback.
	 *
	 * Params:
	 *     path = a resource path
	 *
	 * Since: 3.14
	 */
	public void addResourcePath(string path)
	{
		gtk_icon_theme_add_resource_path(gtkIconTheme, Str.toStringz(path));
	}

	/**
	 * Appends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 *
	 * Params:
	 *     path = directory name to append to the icon path
	 *
	 * Since: 2.4
	 */
	public void appendSearchPath(string path)
	{
		gtk_icon_theme_append_search_path(gtkIconTheme, Str.toStringz(path));
	}

	/**
	 * Looks up a named icon and returns a #GtkIconInfo containing
	 * information such as the filename of the icon. The icon
	 * can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
	 * combines these two steps if all you need is the pixbuf.)
	 *
	 * If @icon_names contains more than one name, this function
	 * tries them all in the given order before falling back to
	 * inherited icon themes.
	 *
	 * Params:
	 *     iconNames = %NULL-terminated array of
	 *         icon names to lookup
	 *     size = desired icon size
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo object
	 *     containing information about the icon, or %NULL if the icon wasn’t
	 *     found.
	 *
	 * Since: 2.12
	 */
	public IconInfo chooseIcon(string[] iconNames, int size, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_choose_icon(gtkIconTheme, Str.toStringzArray(iconNames), size, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Looks up a named icon for a particular window scale and returns
	 * a #GtkIconInfo containing information such as the filename of the
	 * icon. The icon can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
	 * combines these two steps if all you need is the pixbuf.)
	 *
	 * If @icon_names contains more than one name, this function
	 * tries them all in the given order before falling back to
	 * inherited icon themes.
	 *
	 * Params:
	 *     iconNames = %NULL-terminated
	 *         array of icon names to lookup
	 *     size = desired icon size
	 *     scale = desired scale
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo object
	 *     containing information about the icon, or %NULL if the
	 *     icon wasn’t found.
	 *
	 * Since: 3.10
	 */
	public IconInfo chooseIconForScale(string[] iconNames, int size, int scale, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_choose_icon_for_scale(gtkIconTheme, Str.toStringzArray(iconNames), size, scale, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Gets the name of an icon that is representative of the
	 * current theme (for instance, to use when presenting
	 * a list of themes to the user.)
	 *
	 * Returns: the name of an example icon or %NULL.
	 *     Free with g_free().
	 *
	 * Since: 2.4
	 */
	public string getExampleIconName()
	{
		auto retStr = gtk_icon_theme_get_example_icon_name(gtkIconTheme);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns an array of integers describing the sizes at which
	 * the icon is available without scaling. A size of -1 means
	 * that the icon is available in a scalable format. The array
	 * is zero-terminated.
	 *
	 * Params:
	 *     iconName = the name of an icon
	 *
	 * Returns: An newly
	 *     allocated array describing the sizes at which the icon is
	 *     available. The array should be freed with g_free() when it is no
	 *     longer needed.
	 *
	 * Since: 2.6
	 */
	public int[] getIconSizes(string iconName)
	{
		auto p = gtk_icon_theme_get_icon_sizes(gtkIconTheme, Str.toStringz(iconName));

		return p[0 .. getArrayLength(p)];
	}

	/**
	 * Gets the current search path. See gtk_icon_theme_set_search_path().
	 *
	 * Params:
	 *     path = location to store a list of icon theme path directories or %NULL.
	 *         The stored value should be freed with g_strfreev().
	 *
	 * Since: 2.4
	 */
	public void getSearchPath(out string path)
	{
		char* outpath = null;
		int nElements;

		gtk_icon_theme_get_search_path(gtkIconTheme, &outpath, &nElements);

		path = Str.toString(outpath, nElements);
	}

	/**
	 * Checks whether an icon theme includes an icon
	 * for a particular name.
	 *
	 * Params:
	 *     iconName = the name of an icon
	 *
	 * Returns: %TRUE if @icon_theme includes an
	 *     icon for @icon_name.
	 *
	 * Since: 2.4
	 */
	public bool hasIcon(string iconName)
	{
		return gtk_icon_theme_has_icon(gtkIconTheme, Str.toStringz(iconName)) != 0;
	}

	/**
	 * Gets the list of contexts available within the current
	 * hierarchy of icon themes.
	 * See gtk_icon_theme_list_icons() for details about contexts.
	 *
	 * Returns: a #GList list
	 *     holding the names of all the contexts in the theme. You must first
	 *     free each element in the list with g_free(), then free the list
	 *     itself with g_list_free().
	 *
	 * Since: 2.12
	 */
	public ListG listContexts()
	{
		auto p = gtk_icon_theme_list_contexts(gtkIconTheme);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Lists the icons in the current icon theme. Only a subset
	 * of the icons can be listed by providing a context string.
	 * The set of values for the context string is system dependent,
	 * but will typically include such values as “Applications” and
	 * “MimeTypes”. Contexts are explained in the
	 * [Icon Theme Specification](http://www.freedesktop.org/wiki/Specifications/icon-theme-spec).
	 * The standard contexts are listed in the
	 * [Icon Naming Specification](http://www.freedesktop.org/wiki/Specifications/icon-naming-spec).
	 * Also see gtk_icon_theme_list_contexts().
	 *
	 * Params:
	 *     context = a string identifying a particular type of
	 *         icon, or %NULL to list all icons.
	 *
	 * Returns: a #GList list
	 *     holding the names of all the icons in the theme. You must
	 *     first free each element in the list with g_free(), then
	 *     free the list itself with g_list_free().
	 *
	 * Since: 2.4
	 */
	public ListG listIcons(string context)
	{
		auto p = gtk_icon_theme_list_icons(gtkIconTheme, Str.toStringz(context));

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Looks up an icon in an icon theme, scales it to the given size
	 * and renders it into a pixbuf. This is a convenience function;
	 * if more details about the icon are needed, use
	 * gtk_icon_theme_lookup_icon() followed by gtk_icon_info_load_icon().
	 *
	 * Note that you probably want to listen for icon theme changes and
	 * update the icon. This is usually done by connecting to the
	 * GtkWidget::style-set signal. If for some reason you do not want to
	 * update the icon when the icon theme changes, you should consider
	 * using gdk_pixbuf_copy() to make a private copy of the pixbuf
	 * returned by this function. Otherwise GTK+ may need to keep the old
	 * icon theme loaded, which would be a waste of memory.
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = the desired icon size. The resulting icon may not be
	 *         exactly this size; see gtk_icon_info_load_icon().
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: the rendered icon; this may be
	 *     a newly created icon or a new reference to an internal icon, so
	 *     you must not modify the icon. Use g_object_unref() to release
	 *     your reference to the icon. %NULL if the icon isn’t found.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIcon(string iconName, int size, GtkIconLookupFlags flags)
	{
		GError* err = null;

		auto p = gtk_icon_theme_load_icon(gtkIconTheme, Str.toStringz(iconName), size, flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Looks up an icon in an icon theme for a particular window scale,
	 * scales it to the given size and renders it into a pixbuf. This is a
	 * convenience function; if more details about the icon are needed,
	 * use gtk_icon_theme_lookup_icon() followed by
	 * gtk_icon_info_load_icon().
	 *
	 * Note that you probably want to listen for icon theme changes and
	 * update the icon. This is usually done by connecting to the
	 * GtkWidget::style-set signal. If for some reason you do not want to
	 * update the icon when the icon theme changes, you should consider
	 * using gdk_pixbuf_copy() to make a private copy of the pixbuf
	 * returned by this function. Otherwise GTK+ may need to keep the old
	 * icon theme loaded, which would be a waste of memory.
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = the desired icon size. The resulting icon may not be
	 *         exactly this size; see gtk_icon_info_load_icon().
	 *     scale = desired scale
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: the rendered icon; this may be
	 *     a newly created icon or a new reference to an internal icon, so
	 *     you must not modify the icon. Use g_object_unref() to release
	 *     your reference to the icon. %NULL if the icon isn’t found.
	 *
	 * Since: 3.10
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIconForScale(string iconName, int size, int scale, GtkIconLookupFlags flags)
	{
		GError* err = null;

		auto p = gtk_icon_theme_load_icon_for_scale(gtkIconTheme, Str.toStringz(iconName), size, scale, flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Looks up an icon in an icon theme for a particular window scale,
	 * scales it to the given size and renders it into a cairo surface. This is a
	 * convenience function; if more details about the icon are needed,
	 * use gtk_icon_theme_lookup_icon() followed by
	 * gtk_icon_info_load_surface().
	 *
	 * Note that you probably want to listen for icon theme changes and
	 * update the icon. This is usually done by connecting to the
	 * GtkWidget::style-set signal.
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = the desired icon size. The resulting icon may not be
	 *         exactly this size; see gtk_icon_info_load_icon().
	 *     scale = desired scale
	 *     forWindow = #GdkWindow to optimize drawing for, or %NULL
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: the rendered icon; this may be
	 *     a newly created icon or a new reference to an internal icon, so
	 *     you must not modify the icon. Use cairo_surface_destroy() to
	 *     release your reference to the icon. %NULL if the icon isn’t
	 *     found.
	 *
	 * Since: 3.10
	 *
	 * Throws: GException on failure.
	 */
	public Surface loadSurface(string iconName, int size, int scale, Window forWindow, GtkIconLookupFlags flags)
	{
		GError* err = null;

		auto p = gtk_icon_theme_load_surface(gtkIconTheme, Str.toStringz(iconName), size, scale, (forWindow is null) ? null : forWindow.getWindowStruct(), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) p);
	}

	/**
	 * Looks up an icon and returns a #GtkIconInfo containing information
	 * such as the filename of the icon. The icon can then be rendered
	 * into a pixbuf using gtk_icon_info_load_icon().
	 *
	 * When rendering on displays with high pixel densities you should not
	 * use a @size multiplied by the scaling factor returned by functions
	 * like gdk_window_get_scale_factor(). Instead, you should use
	 * gtk_icon_theme_lookup_by_gicon_for_scale(), as the assets loaded
	 * for a given scaling factor may be different.
	 *
	 * Params:
	 *     icon = the #GIcon to look up
	 *     size = desired icon size
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo containing
	 *     information about the icon, or %NULL if the icon wasn’t
	 *     found. Unref with g_object_unref()
	 *
	 * Since: 2.14
	 */
	public IconInfo lookupByGicon(IconIF icon, int size, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_lookup_by_gicon(gtkIconTheme, (icon is null) ? null : icon.getIconStruct(), size, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Looks up an icon and returns a #GtkIconInfo containing information
	 * such as the filename of the icon. The icon can then be rendered into
	 * a pixbuf using gtk_icon_info_load_icon().
	 *
	 * Params:
	 *     icon = the #GIcon to look up
	 *     size = desired icon size
	 *     scale = the desired scale
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo containing
	 *     information about the icon, or %NULL if the icon wasn’t
	 *     found. Unref with g_object_unref()
	 *
	 * Since: 3.10
	 */
	public IconInfo lookupByGiconForScale(IconIF icon, int size, int scale, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_lookup_by_gicon_for_scale(gtkIconTheme, (icon is null) ? null : icon.getIconStruct(), size, scale, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Looks up a named icon and returns a #GtkIconInfo containing
	 * information such as the filename of the icon. The icon
	 * can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
	 * combines these two steps if all you need is the pixbuf.)
	 *
	 * When rendering on displays with high pixel densities you should not
	 * use a @size multiplied by the scaling factor returned by functions
	 * like gdk_window_get_scale_factor(). Instead, you should use
	 * gtk_icon_theme_lookup_icon_for_scale(), as the assets loaded
	 * for a given scaling factor may be different.
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = desired icon size
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo object
	 *     containing information about the icon, or %NULL if the
	 *     icon wasn’t found.
	 *
	 * Since: 2.4
	 */
	public IconInfo lookupIcon(string iconName, int size, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_lookup_icon(gtkIconTheme, Str.toStringz(iconName), size, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Looks up a named icon for a particular window scale and returns a
	 * #GtkIconInfo containing information such as the filename of the
	 * icon. The icon can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon() combines
	 * these two steps if all you need is the pixbuf.)
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = desired icon size
	 *     scale = the desired scale
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a #GtkIconInfo object
	 *     containing information about the icon, or %NULL if the
	 *     icon wasn’t found.
	 *
	 * Since: 3.10
	 */
	public IconInfo lookupIconForScale(string iconName, int size, int scale, GtkIconLookupFlags flags)
	{
		auto p = gtk_icon_theme_lookup_icon_for_scale(gtkIconTheme, Str.toStringz(iconName), size, scale, flags);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Prepends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 *
	 * Params:
	 *     path = directory name to prepend to the icon path
	 *
	 * Since: 2.4
	 */
	public void prependSearchPath(string path)
	{
		gtk_icon_theme_prepend_search_path(gtkIconTheme, Str.toStringz(path));
	}

	/**
	 * Checks to see if the icon theme has changed; if it has, any
	 * currently cached information is discarded and will be reloaded
	 * next time @icon_theme is accessed.
	 *
	 * Returns: %TRUE if the icon theme has changed and needed
	 *     to be reloaded.
	 *
	 * Since: 2.4
	 */
	public bool rescanIfNeeded()
	{
		return gtk_icon_theme_rescan_if_needed(gtkIconTheme) != 0;
	}

	/**
	 * Sets the name of the icon theme that the #GtkIconTheme object uses
	 * overriding system configuration. This function cannot be called
	 * on the icon theme objects returned from gtk_icon_theme_get_default()
	 * and gtk_icon_theme_get_for_screen().
	 *
	 * Params:
	 *     themeName = name of icon theme to use instead of
	 *         configured theme, or %NULL to unset a previously set custom theme
	 *
	 * Since: 2.4
	 */
	public void setCustomTheme(string themeName)
	{
		gtk_icon_theme_set_custom_theme(gtkIconTheme, Str.toStringz(themeName));
	}

	/**
	 * Sets the screen for an icon theme; the screen is used
	 * to track the user’s currently configured icon theme,
	 * which might be different for different screens.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 2.4
	 */
	public void setScreen(Screen screen)
	{
		gtk_icon_theme_set_screen(gtkIconTheme, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Sets the search path for the icon theme object. When looking
	 * for an icon theme, GTK+ will search for a subdirectory of
	 * one or more of the directories in @path with the same name
	 * as the icon theme containing an index.theme file. (Themes from
	 * multiple of the path elements are combined to allow themes to be
	 * extended by adding icons in the user’s home directory.)
	 *
	 * In addition if an icon found isn’t found either in the current
	 * icon theme or the default icon theme, and an image file with
	 * the right name is found directly in one of the elements of
	 * @path, then that image will be used for the icon name.
	 * (This is legacy feature, and new icons should be put
	 * into the fallback icon theme, which is called hicolor,
	 * rather than directly on the icon path.)
	 *
	 * Params:
	 *     path = array of
	 *         directories that are searched for icon themes
	 *
	 * Since: 2.4
	 */
	public void setSearchPath(string[] path)
	{
		gtk_icon_theme_set_search_path(gtkIconTheme, Str.toStringzArray(path), cast(int)path.length);
	}

	/**
	 * Emitted when the current icon theme is switched or GTK+ detects
	 * that a change has occurred in the contents of the current
	 * icon theme.
	 */
	gulong addOnChanged(void delegate(IconTheme) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
