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

private import gdk.Display;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.IconPaintable;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkIconTheme` provides a facility for loading themed icons.
 * 
 * The main reason for using a name rather than simply providing a filename
 * is to allow different icons to be used depending on what “icon theme” is
 * selected by the user. The operation of icon themes on Linux and Unix
 * follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
 * There is a fallback icon theme, named `hicolor`, where applications
 * should install their icons, but additional icon themes can be installed
 * as operating system vendors and users choose.
 * 
 * In many cases, named themes are used indirectly, via [class@Gtk.Image]
 * rather than directly, but looking up icons directly is also simple. The
 * `GtkIconTheme` object acts as a database of all the icons in the current
 * theme. You can create new `GtkIconTheme` objects, but it’s much more
 * efficient to use the standard icon theme of the `GtkWidget` so that the
 * icon information is shared with other people looking up icons.
 * 
 * ```c
 * GtkIconTheme *icon_theme;
 * GtkIconPaintable *icon;
 * GdkPaintable *paintable;
 * 
 * icon_theme = gtk_icon_theme_get_for_display (gtk_widget_get_display (my_widget));
 * icon = gtk_icon_theme_lookup_icon (icon_theme,
 * "my-icon-name", // icon name
 * 48, // icon size
 * 1,  // scale
 * 0,  // flags);
 * paintable = GDK_PAINTABLE (icon);
 * // Use the paintable
 * g_object_unref (icon);
 * ```
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
	 * Creates a new icon theme object.
	 *
	 * Icon theme objects are used to lookup up an icon by name
	 * in a particular icon theme. Usually, you’ll want to use
	 * [func@Gtk.IconTheme.get_for_display] rather than creating
	 * a new icon theme object for scratch.
	 *
	 * Returns: the newly created `GtkIconTheme` object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_icon_theme_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconTheme*) __p, true);
	}

	/**
	 * Gets the icon theme object associated with @display.
	 *
	 * If this function has not previously been called for the given
	 * display, a new icon theme object will be created and associated
	 * with the display. Icon theme objects are fairly expensive to create,
	 * so using this function is usually a better choice than calling
	 * [ctor@Gtk.IconTheme.new] and setting the display yourself; by using
	 * this function a single icon theme object will be shared between users.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 *
	 * Returns: A unique `GtkIconTheme` associated with
	 *     the given display. This icon theme is associated with the display
	 *     and can be used as long as the display is open. Do not ref or unref it.
	 */
	public static IconTheme getForDisplay(Display display)
	{
		auto __p = gtk_icon_theme_get_for_display((display is null) ? null : display.getDisplayStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconTheme)(cast(GtkIconTheme*) __p);
	}

	/**
	 * Adds a resource path that will be looked at when looking
	 * for icons, similar to search paths.
	 *
	 * See [method@Gtk.IconTheme.set_resource_path].
	 *
	 * This function should be used to make application-specific icons
	 * available as part of the icon theme.
	 *
	 * Params:
	 *     path = a resource path
	 */
	public void addResourcePath(string path)
	{
		gtk_icon_theme_add_resource_path(gtkIconTheme, Str.toStringz(path));
	}

	/**
	 * Appends a directory to the search path.
	 *
	 * See [method@Gtk.IconTheme.set_search_path].
	 *
	 * Params:
	 *     path = directory name to append to the icon path
	 */
	public void addSearchPath(string path)
	{
		gtk_icon_theme_add_search_path(gtkIconTheme, Str.toStringz(path));
	}

	/**
	 * Returns the display that the `GtkIconTheme` object was
	 * created for.
	 *
	 * Returns: the display of @icon_theme
	 */
	public Display getDisplay()
	{
		auto __p = gtk_icon_theme_get_display(gtkIconTheme);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Lists the names of icons in the current icon theme.
	 *
	 * Returns: a string array
	 *     holding the names of all the icons in the theme. You must
	 *     free the array using g_strfreev().
	 */
	public string[] getIconNames()
	{
		auto retStr = gtk_icon_theme_get_icon_names(gtkIconTheme);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns an array of integers describing the sizes at which
	 * the icon is available without scaling.
	 *
	 * A size of -1 means that the icon is available in a scalable
	 * format. The array is zero-terminated.
	 *
	 * Params:
	 *     iconName = the name of an icon
	 *
	 * Returns: A newly
	 *     allocated array describing the sizes at which the icon is
	 *     available. The array should be freed with g_free() when it is no
	 *     longer needed.
	 */
	public int[] getIconSizes(string iconName)
	{
		auto __p = gtk_icon_theme_get_icon_sizes(gtkIconTheme, Str.toStringz(iconName));

		return __p[0 .. getArrayLength(__p)];
	}

	/**
	 * Gets the current resource path.
	 *
	 * See [method@Gtk.IconTheme.set_resource_path].
	 *
	 * Returns: A list of resource paths
	 */
	public string[] getResourcePath()
	{
		auto retStr = gtk_icon_theme_get_resource_path(gtkIconTheme);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the current search path.
	 *
	 * See [method@Gtk.IconTheme.set_search_path].
	 *
	 * Returns: a list of icon theme path directories
	 */
	public string[] getSearchPath()
	{
		auto retStr = gtk_icon_theme_get_search_path(gtkIconTheme);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the current icon theme name.
	 *
	 * Returns (transfer full): the current icon theme name,
	 */
	public string getThemeName()
	{
		auto retStr = gtk_icon_theme_get_theme_name(gtkIconTheme);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks whether an icon theme includes an icon
	 * for a particular `GIcon`.
	 *
	 * Params:
	 *     gicon = a `GIcon`
	 *
	 * Returns: %TRUE if @self includes an icon for @gicon
	 *
	 * Since: 4.2
	 */
	public bool hasGicon(IconIF gicon)
	{
		return gtk_icon_theme_has_gicon(gtkIconTheme, (gicon is null) ? null : gicon.getIconStruct()) != 0;
	}

	/**
	 * Checks whether an icon theme includes an icon
	 * for a particular name.
	 *
	 * Params:
	 *     iconName = the name of an icon
	 *
	 * Returns: %TRUE if @self includes an
	 *     icon for @icon_name.
	 */
	public bool hasIcon(string iconName)
	{
		return gtk_icon_theme_has_icon(gtkIconTheme, Str.toStringz(iconName)) != 0;
	}

	/**
	 * Looks up a icon for a desired size and window scale.
	 *
	 * The icon can then be rendered by using it as a `GdkPaintable`,
	 * or you can get information such as the filename and size.
	 *
	 * Params:
	 *     icon = the `GIcon` to look up
	 *     size = desired icon size
	 *     scale = the desired scale
	 *     direction = text direction the icon will be displayed in
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a `GtkIconPaintable` containing
	 *     information about the icon. Unref with g_object_unref()
	 */
	public IconPaintable lookupByGicon(IconIF icon, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags)
	{
		auto __p = gtk_icon_theme_lookup_by_gicon(gtkIconTheme, (icon is null) ? null : icon.getIconStruct(), size, scale, direction, flags);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconPaintable)(cast(GtkIconPaintable*) __p, true);
	}

	/**
	 * Looks up a named icon for a desired size and window scale,
	 * returning a `GtkIconPaintable`.
	 *
	 * The icon can then be rendered by using it as a `GdkPaintable`,
	 * or you can get information such as the filename and size.
	 *
	 * If the available @icon_name is not available and @fallbacks are
	 * provided, they will be tried in order.
	 *
	 * If no matching icon is found, then a paintable that renders the
	 * "missing icon" icon is returned. If you need to do something else
	 * for missing icons you need to use [method@Gtk.IconTheme.has_icon].
	 *
	 * Note that you probably want to listen for icon theme changes and
	 * update the icon. This is usually done by overriding the
	 * GtkWidgetClass.css-changed() function.
	 *
	 * Params:
	 *     iconName = the name of the icon to lookup
	 *     size = desired icon size.
	 *     scale = the window scale this will be displayed on
	 *     direction = text direction the icon will be displayed in
	 *     flags = flags modifying the behavior of the icon lookup
	 *
	 * Returns: a `GtkIconPaintable` object
	 *     containing the icon.
	 */
	public IconPaintable lookupIcon(string iconName, string[] fallbacks, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags)
	{
		auto __p = gtk_icon_theme_lookup_icon(gtkIconTheme, Str.toStringz(iconName), Str.toStringzArray(fallbacks), size, scale, direction, flags);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconPaintable)(cast(GtkIconPaintable*) __p, true);
	}

	/**
	 * Sets the resource paths that will be looked at when
	 * looking for icons, similar to search paths.
	 *
	 * The resources are considered as part of the hicolor icon theme
	 * and must be located in subdirectories that are defined in the
	 * hicolor icon theme, such as `@path/16x16/actions/run.png`
	 * or `@path/scalable/actions/run.svg`.
	 *
	 * Icons that are directly placed in the resource path instead
	 * of a subdirectory are also considered as ultimate fallback,
	 * but they are treated like unthemed icons.
	 *
	 * Params:
	 *     path = NULL-terminated array of resource paths
	 *         that are searched for icons
	 */
	public void setResourcePath(string[] path)
	{
		gtk_icon_theme_set_resource_path(gtkIconTheme, Str.toStringzArray(path));
	}

	/**
	 * Sets the search path for the icon theme object.
	 *
	 * When looking for an icon theme, GTK will search for a subdirectory
	 * of one or more of the directories in @path with the same name
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
	 *     path = NULL-terminated
	 *         array of directories that are searched for icon themes
	 */
	public void setSearchPath(string[] path)
	{
		gtk_icon_theme_set_search_path(gtkIconTheme, Str.toStringzArray(path));
	}

	/**
	 * Sets the name of the icon theme that the `GtkIconTheme` object uses
	 * overriding system configuration.
	 *
	 * This function cannot be called on the icon theme objects returned
	 * from [func@Gtk.IconTheme.get_for_display].
	 *
	 * Params:
	 *     themeName = name of icon theme to use instead of
	 *         configured theme, or %NULL to unset a previously set custom theme
	 */
	public void setThemeName(string themeName)
	{
		gtk_icon_theme_set_theme_name(gtkIconTheme, Str.toStringz(themeName));
	}

	/**
	 * Emitted when the icon theme changes.
	 *
	 * This can happen becuase current icon theme is switched or
	 * because GTK detects that a change has occurred in the
	 * contents of the current icon theme.
	 */
	gulong addOnChanged(void delegate(IconTheme) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
