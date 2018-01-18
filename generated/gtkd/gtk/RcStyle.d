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


module gtk.RcStyle;

private import gdk.Color;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.ScannerG;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Settings;
private import gtk.Style;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkRcStyle-struct is used to represent a set
 * of information about the appearance of a widget.
 * This can later be composited together with other
 * #GtkRcStyle-struct<!-- -->s to form a #GtkStyle.
 */
public class RcStyle : ObjectG
{
	/** the main Gtk struct */
	protected GtkRcStyle* gtkRcStyle;

	/** Get the main Gtk struct */
	public GtkRcStyle* getRcStyleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRcStyle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRcStyle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRcStyle* gtkRcStyle, bool ownedRef = false)
	{
		this.gtkRcStyle = gtkRcStyle;
		super(cast(GObject*)gtkRcStyle, ownedRef);
	}

	/** */
	public static GType getType()
	{
		return gtk_rc_style_get_type();
	}

	deprecated:

	/**
	 */

	/**
	 * Creates a new #GtkRcStyle with no fields set and
	 * a reference count of 1.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: the newly-created #GtkRcStyle
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_rc_style_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRcStyle*) p, true);
	}

	/**
	 * Makes a copy of the specified #GtkRcStyle. This function
	 * will correctly copy an RC style that is a member of a class
	 * derived from #GtkRcStyle.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: the resulting #GtkRcStyle
	 */
	public RcStyle copy()
	{
		auto p = gtk_rc_style_copy(gtkRcStyle);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RcStyle)(cast(GtkRcStyle*) p, true);
	}

	/**
	 * Adds a file to the list of files to be parsed at the
	 * end of gtk_init().
	 *
	 * Deprecated: Use #GtkStyleContext with a custom #GtkStyleProvider instead
	 *
	 * Params:
	 *     filename = the pathname to the file. If @filename
	 *         is not absolute, it is searched in the current directory.
	 */
	public static void addDefaultFile(string filename)
	{
		gtk_rc_add_default_file(Str.toStringz(filename));
	}

	/**
	 * Searches for a theme engine in the GTK+ search path. This function
	 * is not useful for applications and should not be used.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     moduleFile = name of a theme engine
	 *
	 * Returns: The filename, if found (must be
	 *     freed with g_free()), otherwise %NULL.
	 */
	public static string findModuleInPath(string moduleFile)
	{
		auto retStr = gtk_rc_find_module_in_path(Str.toStringz(moduleFile));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks up a file in pixmap path for the specified #GtkSettings.
	 * If the file is not found, it outputs a warning message using
	 * g_warning() and returns %NULL.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     settings = a #GtkSettings
	 *     scanner = Scanner used to get line number information for the
	 *         warning message, or %NULL
	 *     pixmapFile = name of the pixmap file to locate.
	 *
	 * Returns: the filename.
	 */
	public static string findPixmapInPath(Settings settings, ScannerG scanner, string pixmapFile)
	{
		auto retStr = gtk_rc_find_pixmap_in_path((settings is null) ? null : settings.getSettingsStruct(), (scanner is null) ? null : scanner.getScannerGStruct(), Str.toStringz(pixmapFile));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves the current list of RC files that will be parsed
	 * at the end of gtk_init().
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 *
	 * Returns: A %NULL-terminated array of filenames.  This memory is owned
	 *     by GTK+ and must not be freed by the application.  If you want
	 *     to store this information, you should make a copy.
	 */
	public static string[] getDefaultFiles()
	{
		return Str.toStringArray(gtk_rc_get_default_files());
	}

	/**
	 * Obtains the path to the IM modules file. See the documentation
	 * of the `GTK_IM_MODULE_FILE`
	 * environment variable for more details.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: a newly-allocated string containing the
	 *     name of the file listing the IM modules available for loading
	 */
	public static string getImModuleFile()
	{
		auto retStr = gtk_rc_get_im_module_file();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Obtains the path in which to look for IM modules. See the documentation
	 * of the `GTK_PATH`
	 * environment variable for more details about looking up modules. This
	 * function is useful solely for utilities supplied with GTK+ and should
	 * not be used by applications under normal circumstances.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: a newly-allocated string containing the
	 *     path in which to look for IM modules.
	 */
	public static string getImModulePath()
	{
		auto retStr = gtk_rc_get_im_module_path();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns a directory in which GTK+ looks for theme engines.
	 * For full information about the search for theme engines,
	 * see the docs for `GTK_PATH` in [Running GTK+ Applications][gtk-running].
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: the directory. (Must be freed with g_free())
	 */
	public static string getModuleDir()
	{
		auto retStr = gtk_rc_get_module_dir();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Finds all matching RC styles for a given widget,
	 * composites them together, and then creates a
	 * #GtkStyle representing the composite appearance.
	 * (GTK+ actually keeps a cache of previously
	 * created styles, so a new style may not be
	 * created.)
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: the resulting style. No refcount is added
	 *     to the returned style, so if you want to save this style around,
	 *     you should add a reference yourself.
	 */
	public static Style getStyle(Widget widget)
	{
		auto p = gtk_rc_get_style((widget is null) ? null : widget.getWidgetStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}

	/**
	 * Creates up a #GtkStyle from styles defined in a RC file by providing
	 * the raw components used in matching. This function may be useful
	 * when creating pseudo-widgets that should be themed like widgets but
	 * don’t actually have corresponding GTK+ widgets. An example of this
	 * would be items inside a GNOME canvas widget.
	 *
	 * The action of gtk_rc_get_style() is similar to:
	 * |[<!-- language="C" -->
	 * gtk_widget_path (widget, NULL, &path, NULL);
	 * gtk_widget_class_path (widget, NULL, &class_path, NULL);
	 * gtk_rc_get_style_by_paths (gtk_widget_get_settings (widget),
	 * path, class_path,
	 * G_OBJECT_TYPE (widget));
	 * ]|
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 *
	 * Params:
	 *     settings = a #GtkSettings object
	 *     widgetPath = the widget path to use when looking up the
	 *         style, or %NULL if no matching against the widget path should be done
	 *     classPath = the class path to use when looking up the style,
	 *         or %NULL if no matching against the class path should be done.
	 *     type = a type that will be used along with parent types of this type
	 *         when matching against class styles, or #G_TYPE_NONE
	 *
	 * Returns: A style created by matching
	 *     with the supplied paths, or %NULL if nothing matching was
	 *     specified and the default style should be used. The returned
	 *     value is owned by GTK+ as part of an internal cache, so you
	 *     must call g_object_ref() on the returned value if you want to
	 *     keep a reference to it.
	 */
	public static Style getStyleByPath(Settings settings, string widgetPath, string classPath, GType type)
	{
		auto p = gtk_rc_get_style_by_paths((settings is null) ? null : settings.getSettingsStruct(), Str.toStringz(widgetPath), Str.toStringz(classPath), type);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}

	/**
	 * Returns the standard directory in which themes should
	 * be installed. (GTK+ does not actually use this directory
	 * itself.)
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: The directory (must be freed with g_free()).
	 */
	public static string getThemeDir()
	{
		auto retStr = gtk_rc_get_theme_dir();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Parses a given resource file.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     filename = the filename of a file to parse. If @filename is not absolute, it
	 *         is searched in the current directory.
	 */
	public static void parse(string filename)
	{
		gtk_rc_parse(Str.toStringz(filename));
	}

	/**
	 * Parses a color in the format expected
	 * in a RC file.
	 *
	 * Note that theme engines should use gtk_rc_parse_color_full() in
	 * order to support symbolic colors.
	 *
	 * Deprecated: Use #GtkCssProvider instead
	 *
	 * Params:
	 *     scanner = a #GScanner
	 *     color = a pointer to a #GdkColor in which to store
	 *         the result
	 *
	 * Returns: %G_TOKEN_NONE if parsing succeeded, otherwise the token
	 *     that was expected but not found
	 */
	public static uint parseColor(ScannerG scanner, out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		auto p = gtk_rc_parse_color((scanner is null) ? null : scanner.getScannerGStruct(), outcolor);

		color = ObjectG.getDObject!(Color)(outcolor, true);

		return p;
	}

	/**
	 * Parses a color in the format expected
	 * in a RC file. If @style is not %NULL, it will be consulted to resolve
	 * references to symbolic colors.
	 *
	 * Deprecated: Use #GtkCssProvider instead
	 *
	 * Params:
	 *     scanner = a #GScanner
	 *     style = a #GtkRcStyle, or %NULL
	 *     color = a pointer to a #GdkColor in which to store
	 *         the result
	 *
	 * Returns: %G_TOKEN_NONE if parsing succeeded, otherwise the token
	 *     that was expected but not found
	 *
	 * Since: 2.12
	 */
	public static uint parseColorFull(ScannerG scanner, RcStyle style, out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		auto p = gtk_rc_parse_color_full((scanner is null) ? null : scanner.getScannerGStruct(), (style is null) ? null : style.getRcStyleStruct(), outcolor);

		color = ObjectG.getDObject!(Color)(outcolor, true);

		return p;
	}

	/**
	 * Parses a #GtkPathPriorityType variable from the format expected
	 * in a RC file.
	 *
	 * Deprecated: Use #GtkCssProvider instead
	 *
	 * Params:
	 *     scanner = a #GScanner (must be initialized for parsing an RC file)
	 *     priority = A pointer to #GtkPathPriorityType variable in which
	 *         to store the result.
	 *
	 * Returns: %G_TOKEN_NONE if parsing succeeded, otherwise the token
	 *     that was expected but not found.
	 */
	public static uint parsePriority(ScannerG scanner, GtkPathPriorityType* priority)
	{
		return gtk_rc_parse_priority((scanner is null) ? null : scanner.getScannerGStruct(), priority);
	}

	/**
	 * Parses a #GtkStateType variable from the format expected
	 * in a RC file.
	 *
	 * Deprecated: Use #GtkCssProvider instead
	 *
	 * Params:
	 *     scanner = a #GScanner (must be initialized for parsing an RC file)
	 *     state = A pointer to a #GtkStateType variable in which to
	 *         store the result.
	 *
	 * Returns: %G_TOKEN_NONE if parsing succeeded, otherwise the token
	 *     that was expected but not found.
	 */
	public static uint parseState(ScannerG scanner, out GtkStateType state)
	{
		return gtk_rc_parse_state((scanner is null) ? null : scanner.getScannerGStruct(), &state);
	}

	/**
	 * Parses resource information directly from a string.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     rcString = a string to parse.
	 */
	public static void parseString(string rcString)
	{
		gtk_rc_parse_string(Str.toStringz(rcString));
	}

	/**
	 * If the modification time on any previously read file for the
	 * default #GtkSettings has changed, discard all style information
	 * and then reread all previously read RC files.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Returns: %TRUE if the files were reread.
	 */
	public static bool reparseAll()
	{
		return gtk_rc_reparse_all() != 0;
	}

	/**
	 * If the modification time on any previously read file
	 * for the given #GtkSettings has changed, discard all style information
	 * and then reread all previously read RC files.
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     settings = a #GtkSettings
	 *     forceLoad = load whether or not anything changed
	 *
	 * Returns: %TRUE if the files were reread.
	 */
	public static bool reparseAllForSettings(Settings settings, bool forceLoad)
	{
		return gtk_rc_reparse_all_for_settings((settings is null) ? null : settings.getSettingsStruct(), forceLoad) != 0;
	}

	/**
	 * This function recomputes the styles for all widgets that use a
	 * particular #GtkSettings object. (There is one #GtkSettings object
	 * per #GdkScreen, see gtk_settings_get_for_screen()); It is useful
	 * when some global parameter has changed that affects the appearance
	 * of all widgets, because when a widget gets a new style, it will
	 * both redraw and recompute any cached information about its
	 * appearance. As an example, it is used when the default font size
	 * set by the operating system changes. Note that this function
	 * doesn’t affect widgets that have a style set explicitly on them
	 * with gtk_widget_set_style().
	 *
	 * Deprecated: Use #GtkCssProvider instead.
	 *
	 * Params:
	 *     settings = a #GtkSettings
	 *
	 * Since: 2.4
	 */
	public static void resetStyles(Settings settings)
	{
		gtk_rc_reset_styles((settings is null) ? null : settings.getSettingsStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Use #GtkCssProvider instead
	 */
	public static ScannerG scannerNew()
	{
		auto p = gtk_rc_scanner_new();

		if(p is null)
		{
			return null;
		}

		return new ScannerG(cast(GScanner*) p);
	}

	/**
	 * Sets the list of files that GTK+ will read at the
	 * end of gtk_init().
	 *
	 * Deprecated: Use #GtkStyleContext with a custom #GtkStyleProvider instead
	 *
	 * Params:
	 *     filenames = A
	 *         %NULL-terminated list of filenames.
	 */
	public static void setDefaultFiles(string[] filenames)
	{
		gtk_rc_set_default_files(Str.toStringzArray(filenames));
	}
}
