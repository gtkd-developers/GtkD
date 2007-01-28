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
 * inFile  = gtk-Resource-Files.html
 * outPack = gtk
 * outFile = RcStyle
 * strct   = GtkRcStyle
 * realStrct=
 * ctorStrct=
 * clss    = RcStyle
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_rc_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Style
 * 	- gtk.Widget
 * 	- gtk.Settings
 * 	- gdk.Color
 * 	- gtk.RcStyle
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GtkRcStyle* -> RcStyle
 * 	- GtkSettings* -> Settings
 * 	- GtkStyle* -> Style
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.RcStyle;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.Style;
private import gtk.Widget;
private import gtk.Settings;
private import gdk.Color;
private import gtk.RcStyle;



/**
 * Description
 * GTK+ provides resource file mechanism for configuring
 * various aspects of the operation of a GTK+ program
 * at runtime.
 * Default files
 * An application can cause GTK+ to parse a specific RC
 * file by calling gtk_rc_parse(). In addition to this,
 * certain files will be read at the end of gtk_init().
 * Unless modified, the files looked for will be
 * <SYSCONFDIR>/gtk-2.0/gtkrc
 * and .gtkrc-2.0 in the users home directory.
 * (<SYSCONFDIR> defaults to
 * /usr/local/etc. It can be changed with the
 * --prefix or --sysconfdir options when
 * configuring GTK+.) Note that although the filenames contain the version
 * number 2.0, all 2.x versions of GTK+ look for these files.
 * The set of these default files
 * can be retrieved with gtk_rc_get_default_files()
 * and modified with gtk_rc_add_default_file() and
 * gtk_rc_set_default_files().
 * Additionally, the GTK2_RC_FILES environment variable
 * can be set to a G_SEARCHPATH_SEPARATOR_S-separated list of files
 * in order to overwrite the set of default files at runtime.
 * For each RC file, in addition to the file itself, GTK+ will look for
 * a locale-specific file that will be parsed after the main file.
 * For instance, if LANG is set to ja_JP.ujis,
 * when loading the default file ~/.gtkrc then GTK+ looks
 * for ~/.gtkrc.ja_JP and ~/.gtkrc.ja,
 * and parses the first of those that exists.
 * <hr>
 * Pathnames and patterns
 * A resource file defines a number of styles and key bindings and
 * attaches them to particular widgets. The attachment is done
 * by the widget, widget_class,
 * and class declarations. As an example
 * of such a statement:
 * widget "mywindow.*.GtkEntry" style "my-entry-class"
 * attaches the style "my-entry-class" to all
 * widgets whose widget path matches the
 * pattern "mywindow.*.GtkEntry".
 * That is, all GtkEntry widgets which are part of a GtkWindow named
 * "mywindow".
 * The patterns here are given in the standard shell glob syntax.
 * The "?" wildcard matches any character, while
 * "*" matches zero or more of any character.
 * The three types of matching are against the widget path, the
 * class path and the class hierarchy. Both the
 * widget path and the class path consist of a "."
 * separated list of all the parents of the widget and the widget itself
 * from outermost to innermost. The difference is that in the widget path,
 * the name assigned by gtk_widget_set_name() is used if present, otherwise
 * the class name of the widget, while for the class path, the class name is
 * always used.
 * Since GTK+ 2.10,widget_class paths can also contain
 * <classname> substrings, which are matching
 * the class with the given name and any derived classes. For instance,
 * widget_class "*<GtkMenuItem>.GtkLabel" style "my-style"
 * will match GtkLabel widgets which are contained in any kind of menu item.
 * So, if you have a GtkEntry named "myentry", inside of a
 * horizontal box in a window named "mywindow", then the
 * widget path is: "mywindow.GtkHBox.myentry"
 * while the class path is: "GtkWindow.GtkHBox.GtkEntry".
 * Matching against class is a little different. The pattern match is done
 * against all class names in the widgets class hierarchy (not the layout
 * hierarchy) in sequence, so the pattern:
 * class "GtkButton" style "my-style"
 * will match not just GtkButton widgets, but also GtkToggleButton and
 * GtkCheckButton widgets, since those classes derive from GtkButton.
 * Additionally, a priority can be specified for each pattern, and styles
 * override other styles first by priority, then by pattern type and then
 * by order of specification (later overrides earlier). The priorities
 * that can be specified are (highest to lowest):
 * highest
 * rc
 * theme
 * application
 * gtk
 * lowest
 * rc is the default for styles
 * read from an RC file, theme
 * is the default for styles read from theme RC files,
 * application
 * should be used for styles an application sets
 * up, and gtk is used for styles
 * that GTK+ creates internally.
 * <hr>
 * Optimizing RC Style Matches
 * Everytime a widget is created and added to the layout hierarchy of a GtkWindow
 * ("anchored" to be exact), a list of matching RC styles out of all RC styles read
 * in so far is composed.
 * For this, every RC style is matched against the widgets class path,
 * the widgets name path and widgets inheritance hierarchy.
 * As a consequence, significant slowdown can be caused by utilization of many
 * RC styles and by using RC style patterns that are slow or complicated to match
 * against a given widget.
 * The following ordered list provides a number of advices (prioritized by
 * effectiveness) to reduce the performance overhead associated with RC style
 * matches:
 *  Move RC styles for specific applications into RC files dedicated to those
 *  applications and parse application specific RC files only from
 *  applications that are affected by them.
 *  This reduces the overall amount of RC styles that have to be considered
 *  for a match across a group of applications.
 *  Merge multiple styles which use the same matching rule, for instance:
 *  style "Foo" { foo_content }
 *  class "X" style "Foo"
 *  style "Bar" { bar_content }
 *  class "X" style "Bar"
 *  is faster to match as:
 *  style "FooBar" { foo_content bar_content }
 *  class "X" style "FooBar"
 *  Use of wildcards should be avoided, this can reduce the individual RC style
 *  match to a single integer comparison in most cases.
 *  To avoid complex recursive matching, specification of full class names
 *  (for class matches) or full path names (for
 *  widget and widget_class matches)
 *  is to be preferred over shortened names
 *  containing "*" or "?".
 *  If at all necessary, wildcards should only be used at the tail or head
 *  of a pattern. This reduces the match complexity to a string comparison
 *  per RC style.
 *  When using wildcards, use of "?" should be preferred
 *  over "*". This can reduce the matching complexity from
 *  O(n^2) to O(n). For example "Gtk*Box" can be turned into
 *  "Gtk?Box" and will still match GtkHBox and GtkVBox.
 *  The use of "*" wildcards should be restricted as much
 *  as possible, because matching "A*B*C*RestString" can
 *  result in matching complexities of O(n^2) worst case.
 * <hr>
 * Toplevel declarations
 * An RC file is a text file which is composed of a sequence
 * of declarations. '#' characters delimit comments and
 * the portion of a line after a '#' is ignored when parsing
 * an RC file.
 * The possible toplevel declarations are:
 * binding name
 *  { ... }
 * Declares a binding set.
 * class pattern
 *  [ style | binding ][ : priority ]
 *  name
 * Specifies a style or binding set for a particular
 *  branch of the inheritance hierarchy.
 * include filename
 * Parses another file at this point. If
 *  filename is not an absolute filename,
 *  it is searched in the directories of the currently open RC files.
 * GTK+ also tries to load a
 *  locale-specific variant of
 *  the included file.
 * module_path path
 * Sets a path (a list of directories separated
 *  by colons) that will be searched for theme engines referenced in
 *  RC files.
 * pixmap_path path
 * Sets a path (a list of directories separated
 *  by colons) that will be searched for pixmaps referenced in
 *  RC files.
 * im_module_file pathname
 * Sets the pathname for the IM modules file. Setting this from RC files
 *  is deprecated; you should use the environment variable GTK_IM_MODULE_FILE
 *  instead.
 * style name [ =
 *  parent ] { ... }
 * Declares a style.
 * widget pattern
 *  [ style | binding ][ : priority ]
 *  name
 * Specifies a style or binding set for a particular
 *  group of widgets by matching on the widget pathname.
 * widget_class pattern
 *  [ style | binding ][ : priority ]
 *  name
 * Specifies a style or binding set for a particular
 *  group of widgets by matching on the class pathname.
 * setting = value
 * Specifies a value for a setting.
 *  Note that settings in RC files are overwritten by system-wide settings
 *  (which are managed by an XSettings manager on X11).
 * <hr>
 * Styles
 * A RC style is specified by a style
 * declaration in a RC file, and then bound to widgets
 * with a widget, widget_class,
 * or class declaration. All styles
 * applying to a particular widget are composited together
 * with widget declarations overriding
 * widget_class declarations which, in
 * turn, override class declarations.
 * Within each type of declaration, later declarations override
 * earlier ones.
 * Within a style declaration, the possible
 * elements are:
 * bg[state] =
 *  color
 *  Sets the color used for the background of most widgets.
 * fg[state] =
 *  color
 *  Sets the color used for the foreground of most widgets.
 * base[state] =
 *  color
 *  Sets the color used for the background of widgets displaying
 *  editable text. This color is used for the background
 *  of, among others, GtkText, GtkEntry, GtkList, and GtkCList.
 * text[state] =
 *  color
 *  Sets the color used for foreground of widgets using
 *  base for the background color.
 * xthickness =
 *  number
 *  Sets the xthickness, which is used for various horizontal padding
 *  values in GTK+.
 * ythickness =
 *  number
 *  Sets the ythickness, which is used for various vertical padding
 *  values in GTK+.
 * bg_pixmap[state] =
 *  pixmap
 *  Sets a background pixmap to be used in place of
 *  the bg color (or for GtkText,
 *  in place of the base color. The special
 *  value "<parent>" may be used to indicate that the widget should
 *  use the same background pixmap as its parent. The special value
 *  "<none>" may be used to indicate no background pixmap.
 * font = font
 *  Starting with GTK+ 2.0, the "font" and "fontset"
 *  declarations are ignored; use "font_name" declarations instead.
 * fontset = font
 *  Starting with GTK+ 2.0, the "font" and "fontset"
 *  declarations are ignored; use "font_name" declarations instead.
 * font_name = font
 *  Sets the font for a widget. font must be
 *  a Pango font name, e.g. "Sans Italic 10".
 *  For details about Pango font names, see
 *  pango_font_description_from_string().
 * stock["stock-id"] = { icon source specifications }
 *  Defines the icon for a stock item.
 * color["color-name"] = color specification
 *  Since 2.10, this element can be used to defines symbolic colors. See below for
 *  the syntax of color specifications.
 * engine "engine" { engine-specific
 * settings }
 *  Defines the engine to be used when drawing with this style.
 * class::property = value
 *  Sets a style property for a widget class.
 * The colors and background pixmaps are specified as a function of the
 * state of the widget. The states are:
 * NORMAL
 *  A color used for a widget in its normal state.
 * ACTIVE
 *  A variant of the NORMAL color used when the
 *  widget is in the GTK_STATE_ACTIVE state, and also for
 *  the trough of a ScrollBar, tabs of a NoteBook
 *  other than the current tab and similar areas.
 *  Frequently, this should be a darker variant
 *  of the NORMAL color.
 * PRELIGHT
 *  A color used for widgets in the GTK_STATE_PRELIGHT state. This
 *  state is the used for Buttons and MenuItems
 *  that have the mouse cursor over them, and for
 *  their children.
 * SELECTED
 *  A color used to highlight data selected by the user.
 *  for instance, the selected items in a list widget, and the
 *  selection in an editable widget.
 * INSENSITIVE
 *  A color used for the background of widgets that have
 *  been set insensitive with gtk_widget_set_sensitive().
 * Colors can be specified as a string containing a color name (GTK+ knows
 * all names from the X color database /usr/lib/X11/rgb.txt),
 * in one of the hexadecimal forms #rrrrggggbbbb,
 * #rrrgggbbb, #rrggbb,
 * or #rgb, where r,
 * g and b are
 * hex digits, or they can be specified as a triplet
 * { r, g,
 * b}, where r,
 * g and b are either integers in
 * the range 0-65535 or floats in the range 0.0-1.0.
 * Since 2.10, colors can also be specified by refering to a symbolic color, as
 * follows: @color-name, or by using expressions to combine
 * colors. The following expressions are currently supported:
 * mix (factor, color1, color2)
 *  Computes a new color by mixing color1 and
 *  color2. The factor
 *  determines how close the new color is to color1.
 *  A factor of 1.0 gives pure color1, a factor of
 *  0.0 gives pure color2.
 * shade (factor, color)
 *  Computes a lighter or darker variant of color.
 *  A factor of 1.0 leaves the color unchanged, smaller
 *  factors yield darker colors, larger factors yield lighter colors.
 * lighter (color)
 *  This is an abbreviation for
 *  shade (1.3, color).
 * darker (color)
 *  This is an abbreviation for
 *  shade (0.7, color).
 * Here are some examples of color expressions:
 *  mix (0.5, "red", "blue")
 *  shade (1.5, mix (0.3, "#0abbc0", { 0.3, 0.5, 0.9 }))
 *  lighter (@foreground)
 * In a stock definition, icon sources are specified as a
 * 4-tuple of image filename or icon name, text direction, widget state, and size, in that
 * order. Each icon source specifies an image filename or icon name to use with a given
 * direction, state, and size. Filenames are specified as a string such
 * as "itemltr.png", while icon names (looked up
 * in the current icon theme), are specified with a leading
 * @, such as @"item-ltr".
 * The * character can be used as a
 * wildcard, and if direction/state/size are omitted they default to
 * *. So for example, the following specifies different icons to
 * use for left-to-right and right-to-left languages:
 * stock["my-stock-item"] =
 * {
	 *  { "itemltr.png", LTR, *, * },
 *  { "itemrtl.png", RTL, *, * }
 * }
 * This could be abbreviated as follows:
 * stock["my-stock-item"] =
 * {
	 *  { "itemltr.png", LTR },
 *  { "itemrtl.png", RTL }
 * }
 * You can specify custom icons for specific sizes, as follows:
 * stock["my-stock-item"] =
 * {
	 *  { "itemmenusize.png", *, *, "gtk-menu" },
 *  { "itemtoolbarsize.png", *, *, "gtk-large-toolbar" }
 *  { "itemgeneric.png" } /+* implicit *, *, * as a fallback +/
 * }
 * The sizes that come with GTK+ itself are "gtk-menu",
 * "gtk-small-toolbar", "gtk-large-toolbar",
 * "gtk-button", "gtk-dialog". Applications
 * can define other sizes.
 * It's also possible to use custom icons for a given state, for example:
 * stock["my-stock-item"] =
 * {
	 *  { "itemprelight.png", *, PRELIGHT },
	 *  { "iteminsensitive.png", *, INSENSITIVE },
	 *  { "itemgeneric.png" } /+* implicit *, *, * as a fallback +/
 * }
 * When selecting an icon source to use, GTK+ will consider text direction most
 * important, state second, and size third. It will select the best match based on
 * those criteria. If an attribute matches exactly (e.g. you specified
 * PRELIGHT or specified the size), GTK+ won't modify the image;
 * if the attribute matches with a wildcard, GTK+ will scale or modify the image to
 * match the state and size the user requested.
 * <hr>
 * Key bindings
 * Key bindings allow the user to specify actions to be
 * taken on particular key presses. The form of a binding
 * set declaration is:
 * binding name {
	 *  bind key {
		 *  signalname (param, ...)
		 *  ...
	 *  }
	 *  ...
 * }
 * key is a string consisting of a
 * series of modifiers followed by the name of a key. The
 * modifiers can be:
 * <alt>
 * <ctl>
 * <control>
 * <meta>
 * <hyper>
 * <super>
 * <mod1>
 * <mod2>
 * <mod3>
 * <mod4>
 * <mod5>
 * <release>
 * <shft>
 * <shift>
 * <shft> is an alias for
 * <shift>,
 * <ctl> is an alias for
 * <control>,
 *  and
 * <alt> is an alias for
 * <mod1>.
 * The action that is bound to the key is a sequence
 * of signal names (strings) followed by parameters for
 * each signal. The signals must be action signals.
 * (See g_signal_new()). Each parameter can be
 * a float, integer, string, or unquoted string
 * representing an enumeration value. The types of
 * the parameters specified must match the types of the
 * parameters of the signal.
 * Binding sets are connected to widgets in the same manner as styles,
 * with one difference: Binding sets override other binding sets first
 * by pattern type, then by priority and then by order of specification.
 * The priorities that can be specified and their default values are the
 * same as for styles.
 */
private import gobject.ObjectG;
public class RcStyle : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkRcStyle* gtkRcStyle;
	
	
	public GtkRcStyle* getRcStyleStruct()
	{
		return gtkRcStyle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRcStyle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRcStyle* gtkRcStyle)
	{
		super(cast(GObject*)gtkRcStyle);
		this.gtkRcStyle = gtkRcStyle;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Returns:
	 */
	public static GScanner* scannerNew()
	{
		// GScanner* gtk_rc_scanner_new (void);
		return gtk_rc_scanner_new();
	}
	
	/**
	 * Finds all matching RC styles for a given widget,
	 * composites them together, and then creates a
	 * GtkStyle representing the composite appearance.
	 * (GTK+ actually keeps a cache of previously
	 * created styles, so a new style may not be
	 * created.)
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the resulting style. No refcount is added
	 *  to the returned style, so if you want to save this
	 *  style around, you should add a reference yourself.
	 */
	public static Style getStyle(Widget widget)
	{
		// GtkStyle* gtk_rc_get_style (GtkWidget *widget);
		return new Style( gtk_rc_get_style((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * Creates up a GtkStyle from styles defined in a RC file by providing
	 * the raw components used in matching. This function may be useful
	 * when creating pseudo-widgets that should be themed like widgets but
	 * don't actually have corresponding GTK+ widgets. An example of this
	 * would be items inside a GNOME canvas widget.
	 * The action of gtk_rc_get_style() is similar to:
	 *  gtk_widget_path (widget, NULL, path, NULL);
	 *  gtk_widget_class_path (widget, NULL, class_path, NULL);
	 *  gtk_rc_get_style_by_paths (gtk_widget_get_settings (widget), path, class_path,
	 *  G_OBJECT_TYPE (widget));
	 * settings:
	 *  a GtkSettings object
	 * widget_path:
	 *  the widget path to use when looking up the style, or NULL
	 *  if no matching against the widget path should be done
	 * class_path:
	 *  the class path to use when looking up the style, or NULL
	 *  if no matching against the class path should be done.
	 * type:
	 *  a type that will be used along with parent types of this type
	 *  when matching against class styles, or G_TYPE_NONE
	 * Returns:
	 *  A style created by matching with the supplied paths,
	 *  or NULL if nothing matching was specified and the default style should
	 *  be used. The returned value is owned by GTK+ as part of an internal cache,
	 *  so you must call g_object_ref() on the returned value if you want to
	 *  keep a reference to it.
	 */
	public static Style getStyleByPaths(Settings settings, char[] widgetPath, char[] classPath, GType type)
	{
		// GtkStyle* gtk_rc_get_style_by_paths (GtkSettings *settings,  const char *widget_path,  const char *class_path,  GType type);
		return new Style( gtk_rc_get_style_by_paths((settings is null) ? null : settings.getSettingsStruct(), Str.toStringz(widgetPath), Str.toStringz(classPath), type) );
	}
	
	/**
	 * Warning
	 * gtk_rc_add_widget_name_style is deprecated and should not be used in newly-written code.
	 * Adds a GtkRcStyle that will be looked up by a match against
	 * the widget's pathname. This is equivalent to a:
	 * widget PATTERN style STYLE
	 * statement in a RC file.
	 * rc_style:
	 * the GtkRcStyle to use for widgets matching pattern
	 * pattern:
	 * the pattern
	 */
	public void addWidgetNameStyle(char[] pattern)
	{
		// void gtk_rc_add_widget_name_style (GtkRcStyle *rc_style,  const gchar *pattern);
		gtk_rc_add_widget_name_style(gtkRcStyle, Str.toStringz(pattern));
	}
	
	/**
	 * Warning
	 * gtk_rc_add_widget_class_style is deprecated and should not be used in newly-written code.
	 * Adds a GtkRcStyle that will be looked up by a match against
	 * the widget's class pathname. This is equivalent to a:
	 * widget_class PATTERN style STYLE
	 * statement in a RC file.
	 * rc_style:
	 * the GtkRcStyle to use for widgets matching pattern
	 * pattern:
	 * the pattern
	 */
	public void addWidgetClassStyle(char[] pattern)
	{
		// void gtk_rc_add_widget_class_style (GtkRcStyle *rc_style,  const gchar *pattern);
		gtk_rc_add_widget_class_style(gtkRcStyle, Str.toStringz(pattern));
	}
	
	/**
	 * Warning
	 * gtk_rc_add_class_style is deprecated and should not be used in newly-written code.
	 * Adds a GtkRcStyle that will be looked up by a matching against
	 * the class hierarchy of the widget. This is equivalent to a:
	 * class PATTERN style STYLE
	 * statement in a RC file.
	 * rc_style:
	 * the GtkRcStyle to use for widgets deriving from pattern
	 * pattern:
	 * the pattern
	 */
	public void addClassStyle(char[] pattern)
	{
		// void gtk_rc_add_class_style (GtkRcStyle *rc_style,  const gchar *pattern);
		gtk_rc_add_class_style(gtkRcStyle, Str.toStringz(pattern));
	}
	
	/**
	 * Parses a given resource file.
	 * filename:
	 * the filename of a file to parse. If filename is not absolute, it
	 *  is searched in the current directory.
	 */
	public static void parse(char[] filename)
	{
		// void gtk_rc_parse (const gchar *filename);
		gtk_rc_parse(Str.toStringz(filename));
	}
	
	/**
	 * Parses resource information directly from a string.
	 * rc_string:
	 * a string to parse.
	 */
	public static void parseString(char[] rcString)
	{
		// void gtk_rc_parse_string (const gchar *rc_string);
		gtk_rc_parse_string(Str.toStringz(rcString));
	}
	
	/**
	 * If the modification time on any previously read file for the
	 * default GtkSettings has changed, discard all style information
	 * and then reread all previously read RC files.
	 * Returns:
	 *  TRUE if the files were reread.
	 */
	public static int reparseAll()
	{
		// gboolean gtk_rc_reparse_all (void);
		return gtk_rc_reparse_all();
	}
	
	/**
	 * If the modification time on any previously read file
	 * for the given GtkSettings has changed, discard all style information
	 * and then reread all previously read RC files.
	 * settings:
	 *  a GtkSettings
	 * force_load:
	 *  load whether or not anything changed
	 * Returns:
	 *  TRUE if the files were reread.
	 */
	public static int reparseAllForSettings(Settings settings, int forceLoad)
	{
		// gboolean gtk_rc_reparse_all_for_settings (GtkSettings *settings,  gboolean force_load);
		return gtk_rc_reparse_all_for_settings((settings is null) ? null : settings.getSettingsStruct(), forceLoad);
	}
	
	/**
	 * This function recomputes the styles for all widgets that use a
	 * particular GtkSettings object. (There is one GtkSettings object
	 * per GdkScreen, see gtk_settings_get_for_screen()); It is useful
	 * when some global parameter has changed that affects the appearance
	 * of all widgets, because when a widget gets a new style, it will
	 * both redraw and recompute any cached information about its
	 * appearance. As an example, it is used when the default font size
	 * set by the operating system changes. Note that this function
	 * doesn't affect widgets that have a style set explicitely on them
	 * with gtk_widget_set_style().
	 * settings:
	 *  a GtkSettings
	 * Since 2.4
	 */
	public static void resetStyles(Settings settings)
	{
		// void gtk_rc_reset_styles (GtkSettings *settings);
		gtk_rc_reset_styles((settings is null) ? null : settings.getSettingsStruct());
	}
	
	/**
	 * Adds a file to the list of files to be parsed at the
	 * end of gtk_init().
	 * filename:
	 *  the pathname to the file. If filename is not absolute, it
	 *  is searched in the current directory.
	 */
	public static void addDefaultFile(char[] filename)
	{
		// void gtk_rc_add_default_file (const gchar *filename);
		gtk_rc_add_default_file(Str.toStringz(filename));
	}
	
	/**
	 * Retrieves the current list of RC files that will be parsed
	 * at the end of gtk_init().
	 * Returns:
	 *  A NULL-terminated array of filenames. This memory
	 * is owned by GTK+ and must not be freed by the application.
	 * If you want to store this information, you should make a copy.
	 */
	public static char** getDefaultFiles()
	{
		// gchar** gtk_rc_get_default_files (void);
		return gtk_rc_get_default_files();
	}
	
	/**
	 * Sets the list of files that GTK+ will read at the
	 * end of gtk_init().
	 * filenames:
	 *  A NULL-terminated list of filenames.
	 */
	public static void setDefaultFiles(char** filenames)
	{
		// void gtk_rc_set_default_files (gchar **filenames);
		gtk_rc_set_default_files(filenames);
	}
	
	/**
	 * Parses a color in the format expected in a RC file.
	 * scanner:
	 * a GtkScanner
	 * color:
	 * a pointer to a GtkColor structure in which to store the result
	 * Returns:
	 * G_TOKEN_NONE if parsing succeeded, otherwise the token
	 * that was expected but not found.
	 */
	public static uint parseColor(GScanner* scanner, Color color)
	{
		// guint gtk_rc_parse_color (GScanner *scanner,  GdkColor *color);
		return gtk_rc_parse_color(scanner, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Parses a GtkStateType variable from the format expected
	 * in a RC file.
	 * scanner:
	 * a GtkScanner (must be initialized for parsing an RC file)
	 * state:
	 * A pointer to a GtkStateType variable in which to
	 * store the result.
	 * Returns:
	 * G_TOKEN_NONE if parsing succeeded, otherwise the token
	 * that was expected but not found.
	 */
	public static uint parseState(GScanner* scanner, GtkStateType* state)
	{
		// guint gtk_rc_parse_state (GScanner *scanner,  GtkStateType *state);
		return gtk_rc_parse_state(scanner, state);
	}
	
	/**
	 * Parses a GtkPathPriorityType variable from the format expected
	 * in a RC file.
	 * scanner:
	 * a GtkScanner (must be initialized for parsing an RC file)
	 * priority:
	 * A pointer to GtkPathPriorityType variable in which
	 * to store the result.
	 * Returns:
	 * G_TOKEN_NONE if parsing succeeded, otherwise the token
	 * that was expected but not found.
	 */
	public static uint parsePriority(GScanner* scanner, GtkPathPriorityType* priority)
	{
		// guint gtk_rc_parse_priority (GScanner *scanner,  GtkPathPriorityType *priority);
		return gtk_rc_parse_priority(scanner, priority);
	}
	
	/**
	 * Searches for a theme engine in the GTK+ search path. This function
	 * is not useful for applications and should not be used.
	 * module_file:
	 *  name of a theme engine
	 * Returns:
	 *  The filename, if found (must be freed with g_free()),
	 *  otherwise NULL.
	 */
	public static char[] findModuleInPath(char[] moduleFile)
	{
		// gchar* gtk_rc_find_module_in_path (const gchar *module_file);
		return Str.toString(gtk_rc_find_module_in_path(Str.toStringz(moduleFile)) );
	}
	
	/**
	 * Looks up a file in pixmap path for the specified GtkSettings.
	 * If the file is not found, it outputs a warning message using
	 * g_warning() and returns NULL.
	 * settings:
	 *  a GtkSettings
	 * scanner:
	 *  Scanner used to get line number information for the
	 *  warning message, or NULL
	 * pixmap_file:
	 *  name of the pixmap file to locate.
	 * Returns:
	 *  the filename.
	 */
	public static char[] findPixmapInPath(Settings settings, GScanner* scanner, char[] pixmapFile)
	{
		// gchar* gtk_rc_find_pixmap_in_path (GtkSettings *settings,  GScanner *scanner,  const gchar *pixmap_file);
		return Str.toString(gtk_rc_find_pixmap_in_path((settings is null) ? null : settings.getSettingsStruct(), scanner, Str.toStringz(pixmapFile)) );
	}
	
	/**
	 * Returns a directory in which GTK+ looks for theme engines.
	 * For full information about the search for theme engines,
	 * see the docs for GTK_PATH in
	 * Running GTK+ Applications(3).
	 * Returns:
	 *  the directory. (Must be freed with g_free())
	 */
	public static char[] getModuleDir()
	{
		// gchar* gtk_rc_get_module_dir (void);
		return Str.toString(gtk_rc_get_module_dir() );
	}
	
	/**
	 * Obtains the path in which to look for IM modules. See the documentation
	 * of the GTK_PATH
	 * environment variable for more details about looking up modules. This
	 * function is useful solely for utilities supplied with GTK+ and should
	 * not be used by applications under normal circumstances.
	 * Returns:
	 *  a newly-allocated string containing the path in which to
	 *  look for IM modules.
	 */
	public static char[] getImModulePath()
	{
		// gchar* gtk_rc_get_im_module_path (void);
		return Str.toString(gtk_rc_get_im_module_path() );
	}
	
	/**
	 * Obtains the path to the IM modules file. See the documentation
	 * of the GTK_IM_MODULE_FILE
	 * environment variable for more details.
	 * Returns:
	 *  a newly-allocated string containing the name of the file
	 * listing the IM modules available for loading
	 */
	public static char[] getImModuleFile()
	{
		// gchar* gtk_rc_get_im_module_file (void);
		return Str.toString(gtk_rc_get_im_module_file() );
	}
	
	/**
	 * Returns the standard directory in which themes should
	 * be installed. (GTK+ does not actually use this directory
	 * itself.)
	 * Returns:
	 * The directory (must be freed with g_free()).
	 */
	public static char[] getThemeDir()
	{
		// gchar* gtk_rc_get_theme_dir (void);
		return Str.toString(gtk_rc_get_theme_dir() );
	}
	
	/**
	 * Creates a new GtkRcStyle with no fields set and
	 * a reference count of 1.
	 * Returns:
	 * the newly-created GtkRcStyle
	 */
	public static RcStyle styleNew()
	{
		// GtkRcStyle* gtk_rc_style_new (void);
		return new RcStyle( gtk_rc_style_new() );
	}
	
	/**
	 * Makes a copy of the specified GtkRcStyle. This function
	 * will correctly copy an RC style that is a member of a class
	 * derived from GtkRcStyle.
	 * orig:
	 *  the style to copy
	 * Returns:
	 *  the resulting GtkRcStyle
	 */
	public RcStyle styleCopy()
	{
		// GtkRcStyle* gtk_rc_style_copy (GtkRcStyle *orig);
		return new RcStyle( gtk_rc_style_copy(gtkRcStyle) );
	}
	
	/**
	 * Increments the reference count of a GtkRcStyle.
	 * rc_style:
	 * a GtkRcStyle
	 */
	public void styleRef()
	{
		// void gtk_rc_style_ref (GtkRcStyle *rc_style);
		gtk_rc_style_ref(gtkRcStyle);
	}
	
	/**
	 * Decrements the reference count of a GtkRcStyle and
	 * frees if the result is 0.
	 * rc_style:
	 * a GtkRcStyle
	 */
	public void styleUnref()
	{
		// void gtk_rc_style_unref (GtkRcStyle *rc_style);
		gtk_rc_style_unref(gtkRcStyle);
	}
}
