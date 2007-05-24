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
 * inFile  = GtkIconTheme.html
 * outPack = gtk
 * outFile = IconTheme
 * strct   = GtkIconTheme
 * realStrct=
 * ctorStrct=
 * clss    = IconTheme
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_theme_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_icon_info_
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.IconTheme
 * 	- gdk.Screen
 * 	- gtk.IconInfo
 * 	- gdk.Pixbuf
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkScreen* -> Screen
 * 	- GtkIconInfo* -> IconInfo
 * 	- GtkIconTheme* -> IconTheme
 * module aliases:
 * local aliases:
 */

module gtk.IconTheme;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.IconTheme;
private import gdk.Screen;
private import gtk.IconInfo;
private import gdk.Pixbuf;
private import glib.ListG;



/**
 * Description
 * GtkIconTheme provides a facility for looking up icons by name
 * and size. The main reason for using a name rather than simply
 * providing a filename is to allow different icons to be used
 * depending on what icon theme is selecetd
 * by the user. The operation of icon themes on Linux and Unix
 * follows the Icon
 * Theme Specification. There is a default icon theme,
 * named hicolor where applications should install
 * their icons, but more additional application themes can be
 * installed as operating system vendors and users choose.
 * Named icons are similar to the Themeable Stock Images(3)
 * facility, and the distinction between the two may be a bit confusing.
 * A few things to keep in mind:
 * Stock images usually are used in conjunction with
 * Stock Items(3)., such as GTK_STOCK_OK or
 * GTK_STOCK_OPEN. Named icons are easier to set up and therefore
 * are more useful for new icons that an application wants to
 * add, such as application icons or window icons.
 * Stock images can only be loaded at the symbolic sizes defined
 * by the GtkIconSize enumeration, or by custom sizes defined
 * by gtk_icon_size_register(), while named icons are more flexible
 * and any pixel size can be specified.
 * Because stock images are closely tied to stock items, and thus
 * to actions in the user interface, stock images may come in
 * multiple variants for different widget states or writing
 * directions.
 * A good rule of thumb is that if there is a stock image for what
 * you want to use, use it, otherwise use a named icon. It turns
 * out that internally stock images are generally defined in
 * terms of one or more named icons. (An example of the
 * more than one case is icons that depend on writing direction;
 * GTK_STOCK_GO_FORWARD uses the two themed icons
 * "gtk-stock-go-forward-ltr" and "gtk-stock-go-forward-rtl".)
 * In many cases, named themes are used indirectly, via GtkImage
 * or stock items, rather than directly, but looking up icons
 * directly is also simple. The GtkIconTheme object acts
 * as a database of all the icons in the current theme. You
 * can create new GtkIconTheme objects, but its much more
 * efficient to use the standard icon theme for the GdkScreen
 * so that the icon information is shared with other people
 * looking up icons. In the case where the default screen is
 * being used, looking up an icon can be as simple as:
 * GError *error = NULL;
 * GtkIconTheme *icon_theme;
 * GdkPixbuf *pixbuf;
 * icon_theme = gtk_icon_theme_get_default ();
 * pixbuf = gtk_icon_theme_load_icon (icon_theme,
 *  "my-icon-name", /+* icon name +/
 *  48, /+* size +/
 *  0, /+* flags +/
 *  error);
 * if (!pixbuf)
 *  {
	 *  g_warning ("Couldn't load icon: %s", error->message);
	 *  g_error_free (error);
 *  }
 * else
 *  {
	 *  /+* Use the pixbuf +/
	 *  g_object_unref (pixbuf);
 *  }
 */
private import gobject.ObjectG;
public class IconTheme : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkIconTheme* gtkIconTheme;
	
	
	public GtkIconTheme* getIconThemeStruct()
	{
		return gtkIconTheme;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconTheme;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconTheme* gtkIconTheme)
	{
		super(cast(GObject*)gtkIconTheme);
		this.gtkIconTheme = gtkIconTheme;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(IconTheme)[] onChangedListeners;
	void addOnChanged(void delegate(IconTheme) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkIconTheme* iconThemeStruct, IconTheme iconTheme)
	{
		bool consumed = false;
		
		foreach ( void delegate(IconTheme) dlg ; iconTheme.onChangedListeners )
		{
			dlg(iconTheme);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	/**
	 * Creates a new icon theme object. Icon theme objects are used
	 * to lookup up an icon by name in a particular icon theme.
	 * Usually, you'll want to use gtk_icon_theme_get_default()
	 * or gtk_icon_theme_get_for_screen() rather than creating
	 * a new icon theme object for scratch.
	 * Returns:
	 *  the newly created GtkIconTheme object.
	 * Since 2.4
	 */
	public this ()
	{
		// GtkIconTheme* gtk_icon_theme_new (void);
		this(cast(GtkIconTheme*)gtk_icon_theme_new() );
	}
	
	/**
	 * Gets the icon theme for the default screen. See
	 * gtk_icon_theme_get_for_screen().
	 * Returns:
	 *  A unique GtkIconTheme associated with
	 *  the default screen. This icon theme is associated with
	 *  the screen and can be used as long as the screen
	 *  is open. Do not ref or unref it.
	 * Since 2.4
	 */
	public static IconTheme getDefault()
	{
		// GtkIconTheme* gtk_icon_theme_get_default (void);
		return new IconTheme( gtk_icon_theme_get_default() );
	}
	
	/**
	 * Gets the icon theme object associated with screen; if this
	 * function has not previously been called for the given
	 * screen, a new icon theme object will be created and
	 * associated with the screen. Icon theme objects are
	 * fairly expensive to create, so using this function
	 * is usually a better choice than calling than gtk_icon_theme_new()
	 * and setting the screen yourself; by using this function
	 * a single icon theme object will be shared between users.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  A unique GtkIconTheme associated with
	 *  the given screen. This icon theme is associated with
	 *  the screen and can be used as long as the screen
	 *  is open. Do not ref or unref it.
	 * Since 2.4
	 */
	public static IconTheme getForScreen(Screen screen)
	{
		// GtkIconTheme* gtk_icon_theme_get_for_screen (GdkScreen *screen);
		return new IconTheme( gtk_icon_theme_get_for_screen((screen is null) ? null : screen.getScreenStruct()) );
	}
	
	/**
	 * Sets the screen for an icon theme; the screen is used
	 * to track the user's currently configured icon theme,
	 * which might be different for different screens.
	 * icon_theme:
	 *  a GtkIconTheme
	 * screen:
	 *  a GdkScreen
	 * Since 2.4
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_icon_theme_set_screen (GtkIconTheme *icon_theme,  GdkScreen *screen);
		gtk_icon_theme_set_screen(gtkIconTheme, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Sets the search path for the icon theme object. When looking
	 * for an icon theme, GTK+ will search for a subdirectory of
	 * one or more of the directories in path with the same name
	 * as the icon theme. (Themes from multiple of the path elements
	 * are combined to allow themes to be extended by adding icons
	 * in the user's home directory.)
	 * In addition if an icon found isn't found either in the current
	 * icon theme or the default icon theme, and an image file with
	 * the right name is found directly in one of the elements of
	 * path, then that image will be used for the icon name.
	 * (This is legacy feature, and new icons should be put
	 * into the default icon theme, which is called DEFAULT_THEME_NAME,
	 * rather than directly on the icon path.)
	 * icon_theme:
	 *  a GtkIconTheme
	 * path:
	 *  array of directories that are searched for icon themes
	 * n_elements:
	 *  number of elements in path.
	 * Since 2.4
	 */
	public void setSearchPath(char*[] path, int nElements)
	{
		// void gtk_icon_theme_set_search_path (GtkIconTheme *icon_theme,  const gchar *path[],  gint n_elements);
		gtk_icon_theme_set_search_path(gtkIconTheme, path, nElements);
	}
	
	/**
	 * Gets the current search path. See gtk_icon_theme_set_search_path().
	 * icon_theme:
	 *  a GtkIconTheme
	 * path:
	 *  location to store a list of icon theme path directories or NULL
	 *  The stored value should be freed with g_strfreev().
	 * n_elements:
	 *  location to store number of elements
	 *  in path, or NULL
	 * Since 2.4
	 */
	public void getSearchPath(char**[] path, int* nElements)
	{
		// void gtk_icon_theme_get_search_path (GtkIconTheme *icon_theme,  gchar **path[],  gint *n_elements);
		gtk_icon_theme_get_search_path(gtkIconTheme, path, nElements);
	}
	
	/**
	 * Appends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 * icon_theme:
	 *  a GtkIconTheme
	 * path:
	 *  directory name to append to the icon path
	 * Since 2.4
	 */
	public void appendSearchPath(char[] path)
	{
		// void gtk_icon_theme_append_search_path (GtkIconTheme *icon_theme,  const gchar *path);
		gtk_icon_theme_append_search_path(gtkIconTheme, Str.toStringz(path));
	}
	
	/**
	 * Prepends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 * icon_theme:
	 *  a GtkIconTheme
	 * path:
	 *  directory name to prepend to the icon path
	 * Since 2.4
	 */
	public void prependSearchPath(char[] path)
	{
		// void gtk_icon_theme_prepend_search_path (GtkIconTheme *icon_theme,  const gchar *path);
		gtk_icon_theme_prepend_search_path(gtkIconTheme, Str.toStringz(path));
	}
	
	/**
	 * Sets the name of the icon theme that the GtkIconTheme object uses
	 * overriding system configuration. This function cannot be called
	 * on the icon theme objects returned from gtk_icon_theme_get_default()
	 * and gtk_icon_theme_get_for_screen().
	 * icon_theme:
	 *  a GtkIconTheme
	 * theme_name:
	 *  name of icon theme to use instead of configured theme,
	 *  or NULL to unset a previously set custom theme
	 * Since 2.4
	 */
	public void setCustomTheme(char[] themeName)
	{
		// void gtk_icon_theme_set_custom_theme (GtkIconTheme *icon_theme,  const gchar *theme_name);
		gtk_icon_theme_set_custom_theme(gtkIconTheme, Str.toStringz(themeName));
	}
	
	/**
	 * Checks whether an icon theme includes an icon
	 * for a particular name.
	 * icon_theme:
	 *  a GtkIconTheme
	 * icon_name:
	 *  the name of an icon
	 * Returns:
	 *  TRUE if icon_theme includes an
	 *  icon for icon_name.
	 * Since 2.4
	 */
	public int hasIcon(char[] iconName)
	{
		// gboolean gtk_icon_theme_has_icon (GtkIconTheme *icon_theme,  const gchar *icon_name);
		return gtk_icon_theme_has_icon(gtkIconTheme, Str.toStringz(iconName));
	}
	
	/**
	 * Looks up a named icon and returns a structure containing
	 * information such as the filename of the icon. The icon
	 * can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
	 * combines these two steps if all you need is the pixbuf.)
	 * icon_theme:
	 *  a GtkIconTheme
	 * icon_name:
	 *  the name of the icon to lookup
	 * size:
	 *  desired icon size
	 * flags:
	 *  flags modifying the behavior of the icon lookup
	 * Returns:
	 *  a GtkIconInfo structure containing information
	 * about the icon, or NULL if the icon wasn't found. Free with
	 * gtk_icon_info_free()
	 * Since 2.4
	 */
	public IconInfo lookupIcon(char[] iconName, int size, GtkIconLookupFlags flags)
	{
		// GtkIconInfo* gtk_icon_theme_lookup_icon (GtkIconTheme *icon_theme,  const gchar *icon_name,  gint size,  GtkIconLookupFlags flags);
		return new IconInfo( gtk_icon_theme_lookup_icon(gtkIconTheme, Str.toStringz(iconName), size, flags) );
	}
	
	/**
	 * Looks up an icon in an icon theme, scales it to the given size
	 * and renders it into a pixbuf. This is a convenience function;
	 * if more details about the icon are needed, use
	 * gtk_icon_theme_lookup_icon() followed by gtk_icon_info_load_icon().
	 * Note that you probably want to listen for icon theme changes and
	 * update the icon. This is usually done by connecting to the
	 * GtkWidget::style-set signal. If for some reason you do not want to
	 * update the icon when the icon theme changes, you should consider
	 * using gdk_pixbuf_copy() to make a private copy of the pixbuf
	 * returned by this function. Otherwise GTK+ may need to keep the old
	 * icon theme loaded, which would be a waste of memory.
	 * icon_theme:
	 *  a GtkIconTheme
	 * icon_name:
	 *  the name of the icon to lookup
	 * size:
	 *  the desired icon size. The resulting icon may not be
	 *  exactly this size; see gtk_icon_info_load_icon().
	 * flags:
	 *  flags modifying the behavior of the icon lookup
	 * error:
	 *  Location to store error information on failure, or NULL.
	 * Returns:
	 *  the rendered icon; this may be a newly created icon
	 *  or a new reference to an internal icon, so you must not modify
	 *  the icon. Use g_object_unref() to release your reference to the
	 *  icon. NULL if the icon isn't found.
	 * Since 2.4
	 */
	public Pixbuf loadIcon(char[] iconName, int size, GtkIconLookupFlags flags, GError** error)
	{
		// GdkPixbuf* gtk_icon_theme_load_icon (GtkIconTheme *icon_theme,  const gchar *icon_name,  gint size,  GtkIconLookupFlags flags,  GError **error);
		return new Pixbuf( gtk_icon_theme_load_icon(gtkIconTheme, Str.toStringz(iconName), size, flags, error) );
	}
	
	/**
	 * Lists the icons in the current icon theme. Only a subset
	 * of the icons can be listed by providing a context string.
	 * The set of values for the context string is system dependent,
	 * but will typically include such values as "Applications" and
	 * "MimeTypes".
	 * icon_theme:
	 *  a GtkIconTheme
	 * context:
	 *  a string identifying a particular type of icon,
	 *  or NULL to list all icons.
	 * Returns:
	 *  a GList list holding the names of all the
	 *  icons in the theme. You must first free each element
	 *  in the list with g_free(), then free the list itself
	 *  with g_list_free().
	 * Since 2.4
	 */
	public ListG listIcons(char[] context)
	{
		// GList* gtk_icon_theme_list_icons (GtkIconTheme *icon_theme,  const gchar *context);
		return new ListG( gtk_icon_theme_list_icons(gtkIconTheme, Str.toStringz(context)) );
	}
	
	/**
	 * Returns an array of integers describing the sizes at which
	 * the icon is available without scaling. A size of -1 means
	 * that the icon is available in a scalable format. The array
	 * is zero-terminated.
	 * icon_theme:
	 *  a GtkIconTheme
	 * icon_name:
	 *  the name of an icon
	 * Returns:
	 *  An newly allocated array describing the sizes at
	 * which the icon is available. The array should be freed with g_free()
	 * when it is no longer needed.
	 * Since 2.6
	 */
	public int* getIconSizes(char[] iconName)
	{
		// gint* gtk_icon_theme_get_icon_sizes (GtkIconTheme *icon_theme,  const gchar *icon_name);
		return gtk_icon_theme_get_icon_sizes(gtkIconTheme, Str.toStringz(iconName));
	}
	
	/**
	 * Gets the name of an icon that is representative of the
	 * current theme (for instance, to use when presenting
	 * a list of themes to the user.)
	 * icon_theme:
	 *  a GtkIconTheme
	 * Returns:
	 *  the name of an example icon or NULL.
	 *  Free with g_free().
	 * Since 2.4
	 */
	public char[] getExampleIconName()
	{
		// char* gtk_icon_theme_get_example_icon_name  (GtkIconTheme *icon_theme);
		return Str.toString(gtk_icon_theme_get_example_icon_name(gtkIconTheme) );
	}
	
	/**
	 * Checks to see if the icon theme has changed; if it has, any
	 * currently cached information is discarded and will be reloaded
	 * next time icon_theme is accessed.
	 * icon_theme:
	 *  a GtkIconTheme
	 * Returns:
	 *  TRUE if the icon theme has changed and needed
	 *  to be reloaded.
	 * Since 2.4
	 */
	public int rescanIfNeeded()
	{
		// gboolean gtk_icon_theme_rescan_if_needed (GtkIconTheme *icon_theme);
		return gtk_icon_theme_rescan_if_needed(gtkIconTheme);
	}
	
	/**
	 * Registers a built-in icon for icon theme lookups. The idea
	 * of built-in icons is to allow an application or library
	 * that uses themed icons to function requiring files to
	 * be present in the file system. For instance, the default
	 * images for all of GTK+'s stock icons are registered
	 * as built-icons.
	 * In general, if you use gtk_icon_theme_add_builtin_icon()
	 * you should also install the icon in the icon theme, so
	 * that the icon is generally available.
	 * This function will generally be used with pixbufs loaded
	 * via gdk_pixbuf_new_from_inline().
	 * icon_name:
	 *  the name of the icon to register
	 * size:
	 *  the size at which to register the icon (different
	 *  images can be registered for the same icon name
	 *  at different sizes.)
	 * pixbuf:
	 *  GdkPixbuf that contains the image to use
	 *  for icon_name.
	 * Since 2.4
	 */
	public static void addBuiltinIcon(char[] iconName, int size, Pixbuf pixbuf)
	{
		// void gtk_icon_theme_add_builtin_icon (const gchar *icon_name,  gint size,  GdkPixbuf *pixbuf);
		gtk_icon_theme_add_builtin_icon(Str.toStringz(iconName), size, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	
	
	
	
	
	
	
	
	
}
