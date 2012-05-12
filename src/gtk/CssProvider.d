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
 * inFile  = GtkCssProvider.html
 * outPack = gtk
 * outFile = CssProvider
 * strct   = GtkCssProvider
 * realStrct=
 * ctorStrct=
 * clss    = CssProvider
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- StyleProviderIF
 * prefixes:
 * 	- gtk_css_provider_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.File
 * 	- gtk.CssProvider
 * 	- gtk.StyleProviderT
 * 	- gtk.StyleProviderIF
 * structWrap:
 * 	- GFile* -> File
 * 	- GtkCssProvider* -> CssProvider
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CssProvider;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.File;
private import gtk.CssProvider;
private import gtk.StyleProviderT;
private import gtk.StyleProviderIF;



private import gobject.ObjectG;

/**
 * Description
 * GtkCssProvider is an object implementing the GtkStyleProvider interface.
 * It is able to parse CSS-like
 * input in order to style widgets.
 * Default files
 * An application can cause GTK+ to parse a specific CSS style sheet by
 * calling gtk_css_provider_load_from_file() and adding the provider with
 * gtk_style_context_add_provider() or gtk_style_context_add_provider_for_screen().
 * In addition, certain files will be read when GTK+ is initialized. First,
 * the file $XDG_CONFIG_HOME/gtk-3.0/gtk.css
 * is loaded if it exists. Then, GTK+ tries to load
 * $HOME/.themes/theme-name/gtk-3.0/gtk.css,
 * falling back to
 * datadir/share/themes/theme-name/gtk-3.0/gtk.css,
 * where theme-name is the name of the current theme
 * (see the "gtk-theme-name" setting) and datadir
 * is the prefix configured when GTK+ was compiled, unless overridden by the
 * GTK_DATA_PREFIX environment variable.
 * <hr>
 * Style sheets
 * The basic structure of the style sheets understood by this provider is
 * a series of statements, which are either rule sets or '@-rules', separated
 * by whitespace.
 * A rule set consists of a selector and a declaration block, which is
 * a series of declarations enclosed in curly braces ({ and }). The
 * declarations are separated by semicolons (;). Multiple selectors can
 * share the same declaration block, by putting all the separators in
 * front of the block, separated by commas.
 * $(DDOC_COMMENT example)
 * <hr>
 * Selectors
 * Selectors work very similar to the way they do in CSS, with widget class
 * names taking the role of element names, and widget names taking the role
 * of IDs. When used in a selector, widget names must be prefixed with a
 * '#' character. The '*' character represents the so-called universal
 * selector, which matches any widget.
 * To express more complicated situations, selectors can be combined in
 * various ways:
 * To require that a widget satisfies several conditions,
 *  combine several selectors into one by concatenating them. E.g.
 *  GtkButton#button1 matches a GtkButton widget
 *  with the name button1.
 * To only match a widget when it occurs inside some other
 *  widget, write the two selectors after each other, separated by whitespace.
 *  E.g. GtkToolBar GtkButton matches GtkButton widgets
 *  that occur inside a GtkToolBar.
 * In the previous example, the GtkButton is matched even
 *  if it occurs deeply nested inside the toolbar. To restrict the match
 *  to direct children of the parent widget, insert a '>' character between
 *  the two selectors. E.g. GtkNotebook > GtkLabel matches
 *  GtkLabel widgets that are direct children of a GtkNotebook.
 * $(DDOC_COMMENT example)
 * Widgets may also define style classes, which can be used for matching.
 * When used in a selector, style classes must be prefixed with a '.'
 * character.
 * Refer to the documentation of individual widgets to learn which
 * style classes they define and see the section called “Style classes and regions”
 * for a list of all style classes used by GTK+ widgets.
 * Note that there is some ambiguity in the selector syntax when it comes
 * to differentiation widget class names from regions. GTK+ currently treats
 * a string as a widget class name if it contains any uppercase characters
 * (which should work for more widgets with names like GtkLabel).
 * $(DDOC_COMMENT example)
 * In complicated widgets like e.g. a GtkNotebook, it may be desirable
 * to style different parts of the widget differently. To make this
 * possible, container widgets may define regions, whose names
 * may be used for matching in selectors.
 * Some containers allow to further differentiate between regions by
 * applying so-called pseudo-classes to the region. For example, the
 * tab region in GtkNotebook allows to single out the first or last
 * tab by using the :first-child or :last-child pseudo-class.
 * When used in selectors, pseudo-classes must be prefixed with a
 * ':' character.
 * Refer to the documentation of individual widgets to learn which
 * regions and pseudo-classes they define and see
 * the section called “Style classes and regions” for a list of all regions
 * used by GTK+ widgets.
 * $(DDOC_COMMENT example)
 * Another use of pseudo-classes is to match widgets depending on their
 * state. This is conceptually similar to the :hover, :active or :focus
 * pseudo-classes in CSS. The available pseudo-classes for widget states
 * are :active, :prelight (or :hover), :insensitive, :selected, :focused
 * and :inconsistent.
 * $(DDOC_COMMENT example)
 * Widget state pseudoclasses may only apply to the last element
 * in a selector.
 * To determine the effective style for a widget, all the matching rule
 * sets are merged. As in CSS, rules apply by specificity, so the rules
 * whose selectors more closely match a widget path will take precedence
 * over the others.
 * <hr>
 * @ Rules
 * GTK+'s CSS supports the @import rule, in order to load another
 * CSS style sheet in addition to the currently parsed one.
 * $(DDOC_COMMENT example)
 * In order to extend key bindings affecting different widgets, GTK+
 * supports the @binding-set rule to parse a set of bind/unbind
 * directives, see GtkBindingSet for the supported syntax. Note that
 * the binding sets defined in this way must be associated with rule sets
 * by setting the gtk-key-bindings style property.
 * Customized key bindings are typically defined in a separate
 * gtk-keys.css CSS file and GTK+ loads this file
 * according to the current key theme, which is defined by the
 * "gtk-key-theme-name" setting.
 * $(DDOC_COMMENT example)
 * GTK+ also supports an additional @define-color rule, in order
 * to define a color name which may be used instead of color numeric
 * representations. Also see the "gtk-color-scheme" setting
 * for a way to override the values of these named colors.
 * $(DDOC_COMMENT example)
 * <hr>
 * Symbolic colors
 * Besides being able to define color names, the CSS parser is also able
 * to read different color expressions, which can also be nested, providing
 * a rich language to define colors which are derived from a set of base
 * colors.
 * $(DDOC_COMMENT example)
 *  The various ways to express colors in GTK+ CSS are:
 * Syntax
 * Explanation
 * Examples
 * rgb(r, g, b)
 * An opaque color; r, g, b can be either integers between
 *  0 and 255 or percentages
 * rgb(128, 10, 54)
 * rgb(20%, 30%, 0%)
 * rgba(r, g, b, a)
 * A translucent color; r, g, b are as in the previous row,
 *  a is a floating point number between 0 and 1
 * rgba(255, 255, 0, 0.5)
 * #xxyyzz
 * An opaque color; xx, yy, zz are hexadecimal numbers
 *  specifying r, g, b variants with between 1 and 4
 *  hexadecimal digits per component are allowed
 * #ff12ab
 * #f0c
 * @name
 * Reference to a color that has been defined with
 *  @define-color
 * @bg_color
 * mix(color1, color2, f)
 * A linear combination of color1 and color2. f is a
 *  floating point number between 0 and 1.
 * mix(#ff1e0a, @bg_color, 0.8)
 * shade(color, f)
 * A lighter or darker variant of color. f is a
 *  floating point number.
 * shade(@fg_color, 0.5)
 * lighter(color)
 * A lighter variant of color
 * darker(color)
 * A darker variant of color
 * <hr>
 * Gradients
 * Linear or radial Gradients can be used as background images.
 * A linear gradient along the line from (start_x, start_y) to
 * (end_x, end_y) is specified using the syntax
 * -gtk-gradient (linear,
 *  start_x start_y, end_x end_y,
 *  color-stop (position, color),
 *  ...)
 * where start_x and end_x can be either a floating point number between
 * 0 and 1 or one of the special values 'left', 'right' or 'center', start_y
 * and end_y can be either a floating point number between 0 and 1 or one
 * of the special values 'top', 'bottom' or 'center', position is a floating
 * point number between 0 and 1 and color is a color expression (see above).
 * The color-stop can be repeated multiple times to add more than one color
 * stop. 'from (color)' and 'to (color)' can be used as abbreviations for
 * color stops with position 0 and 1, respectively.
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 * A radial gradient along the two circles defined by (start_x, start_y,
 * start_radius) and (end_x, end_y, end_radius) is specified using the
 * syntax
 * -gtk-gradient (radial,
 *  start_x start_y, start_radius,
 *  end_x end_y, end_radius,
 *  color-stop (position, color),
 *  ...)
 * where start_radius and end_radius are floating point numbers and
 * the other parameters are as before.
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 * <hr>
 * Border images
 * Images can be used in 'slices' for the purpose of creating scalable
 * borders.
 * The syntax for specifying border images of this kind is:
 * url(path) top right bottom left [repeat|stretch]? [repeat|stretch]?
 * The sizes of the 'cut off' portions are specified
 * with the top, right, bottom and left parameters.
 * The 'middle' sections can be repeated or stretched to create
 * the desired effect, by adding the 'repeat' or 'stretch' options after
 * the dimensions. If two options are specified, the first one affects
 * the horizontal behaviour and the second one the vertical behaviour.
 * If only one option is specified, it affects both.
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
 * <hr>
 * Styles can specify transitions that will be used to create a gradual
 * change in the appearance when a widget state changes. The following
 * syntax is used to specify transitions:
 * duration [s|ms] [linear|ease|ease-in|ease-out|ease-in-out] [loop]?
 * The duration is the amount of time that the animation will take for
 * a complete cycle from start to end. If the loop option is given, the
 * animation will be repated until the state changes again.
 * The option after the duration determines the transition function from a
 * small set of predefined functions.
 * Figure 3. Linear transition
 * Figure 4. Ease transition
 * Figure 5. Ease-in-out transition
 * Figure 6. Ease-in transition
 * Figure 7. Ease-out transition
 * <hr>
 * Supported properties
 * Properties are the part that differ the most to common CSS,
 * not all properties are supported (some are planned to be
 * supported eventually, some others are meaningless or don't
 * map intuitively in a widget based environment).
 * There is also a difference in shorthand properties, for
 * example in common CSS it is fine to define a font through
 * the different font-family, font-style, font-size
 * properties, meanwhile in GTK+'s CSS only the canonical
 * font property is supported.
 * The currently supported properties are:
 * Property name
 * Syntax
 * Maps to
 * Examples
 * engine
 * engine-name
 * GtkThemingEngine
 * engine: clearlooks;
 *  engine: none; /+* use the default (i.e. builtin) engine) +/
 * background-color
 * color (see above)
 * GdkRGBA
 * background-color: #fff;
 * color: color1;
 * background-color: shade (color1, 0.5);
 * color: mix (color1, #f0f, 0.8);
 * color
 * border-color
 * font
 * family [style] [size]
 * PangoFontDescription
 * font: Sans 15;
 * margin
 * width
 * vertical_width horizontal_width
 * top_width horizontal_width bottom_width
 * top_width right_width bottom_width left_width
 * GtkBorder
 * margin: 5;
 * margin: 5 10;
 * margin: 5 10 3;
 * margin: 5 10 3 5;
 * padding
 * background-image
 * gradient (see above) or
 * url(path)
 * cairo_pattern_t
 * -gtk-gradient (linear,
 *  left top, right top,
 *  from (#fff), to (#000));
 * -gtk-gradient (linear, 0.0 0.5, 0.5 1.0,
 *  from (#fff),
 *  color-stop (0.5, #f00),
 *  to (#000));
 * -gtk-gradient (radial,
 *  center center, 0.2,
 *  center center, 0.8,
 *  color-stop (0.0, #fff),
 *  color-stop (1.0, #000));
 * url ('background.png');
 * border-width
 * integer
 * gint
 * border-width: 5;
 * border-radius
 * integer
 * gint
 * border-radius: 5;
 * border-style
 * [none|solid|inset|outset]
 * GtkBorderStyle
 * border-style: solid;
 * border-image
 * border image (see above)
 * internal use only
 * border-image: url("/path/to/image.png") 3 4 3 4 stretch;
 * border-image: url("/path/to/image.png") 3 4 4 3 repeat stretch;
 * transition
 * transition (see above)
 * internal use only
 * transition: 150ms ease-in-out;
 * transition: 1s linear loop;
 * gtk-key-bindings
 * binding set name list
 * internal use only
 * gtk-bindings: binding1, binding2, ...;
 * GtkThemingEngines can register their own, engine-specific style properties
 * with the function gtk_theming_engine_register_property(). These properties
 * can be set in CSS like other properties, using a name of the form
 * -namespace-name
 * , where namespace is typically
 * the name of the theming engine, and name is the
 * name of the property. Style properties that have been registered by widgets
 * using gtk_widget_class_install_style_property() can also be set in this
 * way, using the widget class name for namespace.
 * $(DDOC_COMMENT example)
 */
public class CssProvider : ObjectG, StyleProviderIF
{
	
	/** the main Gtk struct */
	protected GtkCssProvider* gtkCssProvider;
	
	
	public GtkCssProvider* getCssProviderStruct()
	{
		return gtkCssProvider;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCssProvider;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCssProvider* gtkCssProvider)
	{
		if(gtkCssProvider is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCssProvider);
		if( ptr !is null )
		{
			this = cast(CssProvider)ptr;
			return;
		}
		super(cast(GObject*)gtkCssProvider);
		this.gtkCssProvider = gtkCssProvider;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCssProvider = cast(GtkCssProvider*)obj;
	}
	
	// add the StyleProvider capabilities
	mixin StyleProviderT!(GtkCssProvider);
	
	/**
	 */
	
	/**
	 * Returns the provider containing the style settings used as a
	 * fallback for all widgets.
	 * Returns: The provider used for fallback styling. This memory is owned by GTK+, and you must not free it. [transfer none]
	 */
	public static CssProvider getDefault()
	{
		// GtkCssProvider * gtk_css_provider_get_default (void);
		auto p = gtk_css_provider_get_default();
		if(p is null)
		{
			return null;
		}
		return new CssProvider(cast(GtkCssProvider*) p);
	}
	
	/**
	 * Loads a theme from the usual theme paths
	 * Params:
	 * name = A theme name
	 * variant = variant to load, for example, "dark", or
	 * NULL for the default. [allow-none]
	 * Returns: a GtkCssProvider with the theme loaded. This memory is owned by GTK+, and you must not free it. [transfer none]
	 */
	public static CssProvider getNamed(string name, string variant)
	{
		// GtkCssProvider * gtk_css_provider_get_named (const gchar *name,  const gchar *variant);
		auto p = gtk_css_provider_get_named(Str.toStringz(name), Str.toStringz(variant));
		if(p is null)
		{
			return null;
		}
		return new CssProvider(cast(GtkCssProvider*) p);
	}
	
	/**
	 * Loads data into css_provider, making it clear any previously loaded
	 * information.
	 * Params:
	 * data = CSS data loaded in memory
	 * length = the length of data in bytes, or -1 for NUL terminated strings
	 * Returns: TRUE if the data could be loaded.
	 * Throws: GException on failure.
	 */
	public int loadFromData(string data, gssize length)
	{
		// gboolean gtk_css_provider_load_from_data (GtkCssProvider *css_provider,  const gchar *data,  gssize length,  GError **error);
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_data(gtkCssProvider, Str.toStringz(data), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Loads the data contained in file into css_provider, making it
	 * clear any previously loaded information.
	 * Params:
	 * file = GFile pointing to a file to load
	 * Returns: TRUE if the data could be loaded.
	 * Throws: GException on failure.
	 */
	public int loadFromFile(File file)
	{
		// gboolean gtk_css_provider_load_from_file (GtkCssProvider *css_provider,  GFile *file,  GError **error);
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_file(gtkCssProvider, (file is null) ? null : file.getFileStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Loads the data contained in path into css_provider, making it clear
	 * any previously loaded information.
	 * Params:
	 * path = the path of a filename to load, in the GLib filename encoding
	 * Returns: TRUE if the data could be loaded.
	 * Throws: GException on failure.
	 */
	public int loadFromPath(string path)
	{
		// gboolean gtk_css_provider_load_from_path (GtkCssProvider *css_provider,  const gchar *path,  GError **error);
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_path(gtkCssProvider, Str.toStringz(path), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns a newly created GtkCssProvider.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCssProvider * gtk_css_provider_new (void);
		auto p = gtk_css_provider_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_css_provider_new()");
		}
		this(cast(GtkCssProvider*) p);
	}
}
