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
 * omit structs:
 * omit prefixes:
 * 	- gtk_icon_info_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gdk.Screen
 * 	- gtk.IconInfo
 * 	- gtk.StyleContext
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GList* -> ListG
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GdkScreen* -> Screen
 * 	- GtkIconInfo* -> IconInfo
 * 	- GtkIconTheme* -> IconTheme
 * 	- GtkStyleContext* -> StyleContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconTheme;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gdk.Screen;
private import gtk.IconInfo;
private import gtk.StyleContext;



private import gobject.ObjectG;

/**
 * GtkIconTheme provides a facility for looking up icons by name
 * and size. The main reason for using a name rather than simply
 * providing a filename is to allow different icons to be used
 * depending on what icon theme is selected
 * by the user. The operation of icon themes on Linux and Unix
 * follows the Icon
 * Theme Specification. There is a default icon theme,
 * named hicolor where applications should install
 * their icons, but more additional application themes can be
 * installed as operating system vendors and users choose.
 *
 * Named icons are similar to the Themeable Stock Images(3)
 * facility, and the distinction between the two may be a bit confusing.
 * A few things to keep in mind:
 *
 * Stock images usually are used in conjunction with
 * Stock Items(3), such as GTK_STOCK_OK or
 * GTK_STOCK_OPEN. Named icons are easier to set up and therefore
 * are more useful for new icons that an application wants to
 * add, such as application icons or window icons.
 *
 * Stock images can only be loaded at the symbolic sizes defined
 * by the GtkIconSize enumeration, or by custom sizes defined
 * by gtk_icon_size_register(), while named icons are more flexible
 * and any pixel size can be specified.
 *
 * Because stock images are closely tied to stock items, and thus
 * to actions in the user interface, stock images may come in
 * multiple variants for different widget states or writing
 * directions.
 *
 * A good rule of thumb is that if there is a stock image for what
 * you want to use, use it, otherwise use a named icon. It turns
 * out that internally stock images are generally defined in
 * terms of one or more named icons. (An example of the
 * more than one case is icons that depend on writing direction;
 * GTK_STOCK_GO_FORWARD uses the two themed icons
 * "gtk-stock-go-forward-ltr" and "gtk-stock-go-forward-rtl".)
 *
 * In many cases, named themes are used indirectly, via GtkImage
 * or stock items, rather than directly, but looking up icons
 * directly is also simple. The GtkIconTheme object acts
 * as a database of all the icons in the current theme. You
 * can create new GtkIconTheme objects, but it's much more
 * efficient to use the standard icon theme for the GdkScreen
 * so that the icon information is shared with other people
 * looking up icons. In the case where the default screen is
 * being used, looking up an icon can be as simple as:
 *
 * $(DDOC_COMMENT example)
 */
public class IconTheme : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkIconTheme* gtkIconTheme;
	
	
	public GtkIconTheme* getIconThemeStruct()
	{
		return gtkIconTheme;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkIconTheme = cast(GtkIconTheme*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(IconTheme)[] onChangedListeners;
	/**
	 * Emitted when the current icon theme is switched or GTK+ detects
	 * that a change has occurred in the contents of the current
	 * icon theme.
	 */
	void addOnChanged(void delegate(IconTheme) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkIconTheme* iconThemeStruct, IconTheme _iconTheme)
	{
		foreach ( void delegate(IconTheme) dlg ; _iconTheme.onChangedListeners )
		{
			dlg(_iconTheme);
		}
	}
	
	
	/**
	 * Creates a new icon theme object. Icon theme objects are used
	 * to lookup up an icon by name in a particular icon theme.
	 * Usually, you'll want to use gtk_icon_theme_get_default()
	 * or gtk_icon_theme_get_for_screen() rather than creating
	 * a new icon theme object for scratch.
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkIconTheme * gtk_icon_theme_new (void);
		auto p = gtk_icon_theme_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_theme_new()");
		}
		this(cast(GtkIconTheme*) p);
	}
	
	/**
	 * Gets the icon theme for the default screen. See
	 * gtk_icon_theme_get_for_screen().
	 * Since 2.4
	 * Returns: A unique GtkIconTheme associated with the default screen. This icon theme is associated with the screen and can be used as long as the screen is open. Do not ref or unref it. [transfer none]
	 */
	public static IconTheme getDefault()
	{
		// GtkIconTheme * gtk_icon_theme_get_default (void);
		auto p = gtk_icon_theme_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconTheme)(cast(GtkIconTheme*) p);
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
	 * Since 2.4
	 * Params:
	 * screen = a GdkScreen
	 * Returns: A unique GtkIconTheme associated with the given screen. This icon theme is associated with the screen and can be used as long as the screen is open. Do not ref or unref it. [transfer none]
	 */
	public static IconTheme getForScreen(Screen screen)
	{
		// GtkIconTheme * gtk_icon_theme_get_for_screen (GdkScreen *screen);
		auto p = gtk_icon_theme_get_for_screen((screen is null) ? null : screen.getScreenStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconTheme)(cast(GtkIconTheme*) p);
	}
	
	/**
	 * Sets the screen for an icon theme; the screen is used
	 * to track the user's currently configured icon theme,
	 * which might be different for different screens.
	 * Since 2.4
	 * Params:
	 * screen = a GdkScreen
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
	 * Since 2.4
	 * Params:
	 * path = array of
	 * directories that are searched for icon themes. [array length=n_elements][element-type filename]
	 */
	public void setSearchPath(string[] path)
	{
		// void gtk_icon_theme_set_search_path (GtkIconTheme *icon_theme,  const gchar *path[],  gint n_elements);
		gtk_icon_theme_set_search_path(gtkIconTheme, Str.toStringzArray(path), cast(int) path.length);
	}
	
	/**
	 * Gets the current search path. See gtk_icon_theme_set_search_path().
	 * Since 2.4
	 * Params:
	 * path = location to store a list of icon theme path directories or NULL.
	 * The stored value should be freed with g_strfreev(). [allow-none][array length=n_elements][element-type filename][out]
	 */
	public void getSearchPath(out string[] path)
	{
		// void gtk_icon_theme_get_search_path (GtkIconTheme *icon_theme,  gchar **path[],  gint *n_elements);
		char** outpath = null;
		int nElements;
		
		gtk_icon_theme_get_search_path(gtkIconTheme, &outpath, &nElements);
		
		path = null;
		foreach ( cstr; outpath[0 .. nElements] )
		{
			path ~= Str.toString(cstr);
		}
	}
	
	/**
	 * Appends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 * Since 2.4
	 * Params:
	 * path = directory name to append to the icon path. [type filename]
	 */
	public void appendSearchPath(string path)
	{
		// void gtk_icon_theme_append_search_path (GtkIconTheme *icon_theme,  const gchar *path);
		gtk_icon_theme_append_search_path(gtkIconTheme, Str.toStringz(path));
	}
	
	/**
	 * Prepends a directory to the search path.
	 * See gtk_icon_theme_set_search_path().
	 * Since 2.4
	 * Params:
	 * path = directory name to prepend to the icon path. [type filename]
	 */
	public void prependSearchPath(string path)
	{
		// void gtk_icon_theme_prepend_search_path (GtkIconTheme *icon_theme,  const gchar *path);
		gtk_icon_theme_prepend_search_path(gtkIconTheme, Str.toStringz(path));
	}
	
	/**
	 * Sets the name of the icon theme that the GtkIconTheme object uses
	 * overriding system configuration. This function cannot be called
	 * on the icon theme objects returned from gtk_icon_theme_get_default()
	 * and gtk_icon_theme_get_for_screen().
	 * Since 2.4
	 * Params:
	 * themeName = name of icon theme to use instead of
	 * configured theme, or NULL to unset a previously set custom theme. [allow-none]
	 */
	public void setCustomTheme(string themeName)
	{
		// void gtk_icon_theme_set_custom_theme (GtkIconTheme *icon_theme,  const gchar *theme_name);
		gtk_icon_theme_set_custom_theme(gtkIconTheme, Str.toStringz(themeName));
	}
	
	/**
	 * Checks whether an icon theme includes an icon
	 * for a particular name.
	 * Since 2.4
	 * Params:
	 * iconName = the name of an icon
	 * Returns: TRUE if icon_theme includes an icon for icon_name.
	 */
	public int hasIcon(string iconName)
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
	 * Since 2.4
	 * Params:
	 * iconName = the name of the icon to lookup
	 * size = desired icon size
	 * flags = flags modifying the behavior of the icon lookup
	 * Returns: a GtkIconInfo object containing information about the icon, or NULL if the icon wasn't found. [transfer full]
	 */
	public IconInfo lookupIcon(string iconName, int size, GtkIconLookupFlags flags)
	{
		// GtkIconInfo * gtk_icon_theme_lookup_icon (GtkIconTheme *icon_theme,  const gchar *icon_name,  gint size,  GtkIconLookupFlags flags);
		auto p = gtk_icon_theme_lookup_icon(gtkIconTheme, Str.toStringz(iconName), size, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p);
	}
	
	/**
	 * Looks up a named icon and returns a structure containing
	 * information such as the filename of the icon. The icon
	 * can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
	 * combines these two steps if all you need is the pixbuf.)
	 * If icon_names contains more than one name, this function
	 * tries them all in the given order before falling back to
	 * inherited icon themes.
	 * Since 2.12
	 * Params:
	 * iconNames = NULL-terminated array of
	 * icon names to lookup. [array zero-terminated=1]
	 * size = desired icon size
	 * flags = flags modifying the behavior of the icon lookup
	 * Returns: a GtkIconInfo object containing information about the icon, or NULL if the icon wasn't found. [transfer full]
	 */
	public IconInfo chooseIcon(string[] iconNames, int size, GtkIconLookupFlags flags)
	{
		// GtkIconInfo * gtk_icon_theme_choose_icon (GtkIconTheme *icon_theme,  const gchar *icon_names[],  gint size,  GtkIconLookupFlags flags);
		auto p = gtk_icon_theme_choose_icon(gtkIconTheme, Str.toStringzArray(iconNames), size, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p);
	}
	
	/**
	 * Looks up an icon and returns a structure containing
	 * information such as the filename of the icon.
	 * The icon can then be rendered into a pixbuf using
	 * gtk_icon_info_load_icon().
	 * Since 2.14
	 * Params:
	 * icon = the GIcon to look up
	 * size = desired icon size
	 * flags = flags modifying the behavior of the icon lookup
	 * Returns: a GtkIconInfo structure containing information about the icon, or NULL if the icon wasn't found. Unref with g_object_unref(). [transfer full]
	 */
	public IconInfo lookupByGicon(IconIF icon, int size, GtkIconLookupFlags flags)
	{
		// GtkIconInfo * gtk_icon_theme_lookup_by_gicon (GtkIconTheme *icon_theme,  GIcon *icon,  gint size,  GtkIconLookupFlags flags);
		auto p = gtk_icon_theme_lookup_by_gicon(gtkIconTheme, (icon is null) ? null : icon.getIconTStruct(), size, flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p);
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
	 * Since 2.4
	 * Params:
	 * iconName = the name of the icon to lookup
	 * size = the desired icon size. The resulting icon may not be
	 * exactly this size; see gtk_icon_info_load_icon().
	 * flags = flags modifying the behavior of the icon lookup
	 * Returns: the rendered icon; this may be a newly created icon or a new reference to an internal icon, so you must not modify the icon. Use g_object_unref() to release your reference to the icon. NULL if the icon isn't found. [transfer full]
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIcon(string iconName, int size, GtkIconLookupFlags flags)
	{
		// GdkPixbuf * gtk_icon_theme_load_icon (GtkIconTheme *icon_theme,  const gchar *icon_name,  gint size,  GtkIconLookupFlags flags,  GError **error);
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
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Gets the list of contexts available within the current
	 * hierarchy of icon themes
	 * Since 2.12
	 * Returns: a GList list holding the names of all the contexts in the theme. You must first free each element in the list with g_free(), then free the list itself with g_list_free(). [element-type utf8][transfer full]
	 */
	public ListG listContexts()
	{
		// GList * gtk_icon_theme_list_contexts (GtkIconTheme *icon_theme);
		auto p = gtk_icon_theme_list_contexts(gtkIconTheme);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Lists the icons in the current icon theme. Only a subset
	 * of the icons can be listed by providing a context string.
	 * The set of values for the context string is system dependent,
	 * but will typically include such values as "Applications" and
	 * "MimeTypes".
	 * Since 2.4
	 * Params:
	 * context = a string identifying a particular type of
	 * icon, or NULL to list all icons. [allow-none]
	 * Returns: a GList list holding the names of all the icons in the theme. You must first free each element in the list with g_free(), then free the list itself with g_list_free(). [element-type utf8][transfer full]
	 */
	public ListG listIcons(string context)
	{
		// GList * gtk_icon_theme_list_icons (GtkIconTheme *icon_theme,  const gchar *context);
		auto p = gtk_icon_theme_list_icons(gtkIconTheme, Str.toStringz(context));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Returns an array of integers describing the sizes at which
	 * the icon is available without scaling. A size of -1 means
	 * that the icon is available in a scalable format. The array
	 * is zero-terminated.
	 * Since 2.6
	 * Params:
	 * iconName = the name of an icon
	 * Returns: An newly allocated array describing the sizes at which the icon is available. The array should be freed with g_free() when it is no longer needed. [array zero-terminated=1]
	 */
	public int* getIconSizes(string iconName)
	{
		// gint * gtk_icon_theme_get_icon_sizes (GtkIconTheme *icon_theme,  const gchar *icon_name);
		return gtk_icon_theme_get_icon_sizes(gtkIconTheme, Str.toStringz(iconName));
	}
	
	/**
	 * Gets the name of an icon that is representative of the
	 * current theme (for instance, to use when presenting
	 * a list of themes to the user.)
	 * Since 2.4
	 * Returns: the name of an example icon or NULL. Free with g_free().
	 */
	public string getExampleIconName()
	{
		// char * gtk_icon_theme_get_example_icon_name  (GtkIconTheme *icon_theme);
		return Str.toString(gtk_icon_theme_get_example_icon_name(gtkIconTheme));
	}
	
	/**
	 * Checks to see if the icon theme has changed; if it has, any
	 * currently cached information is discarded and will be reloaded
	 * next time icon_theme is accessed.
	 * Since 2.4
	 * Returns: TRUE if the icon theme has changed and needed to be reloaded.
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
	 * Since 2.4
	 * Params:
	 * iconName = the name of the icon to register
	 * size = the size at which to register the icon (different
	 * images can be registered for the same icon name
	 * at different sizes.)
	 * pixbuf = GdkPixbuf that contains the image to use
	 * for icon_name.
	 */
	public static void addBuiltinIcon(string iconName, int size, Pixbuf pixbuf)
	{
		// void gtk_icon_theme_add_builtin_icon (const gchar *icon_name,  gint size,  GdkPixbuf *pixbuf);
		gtk_icon_theme_add_builtin_icon(Str.toStringz(iconName), size, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
}
