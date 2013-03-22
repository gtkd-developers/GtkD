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
 * inFile  = 
 * outPack = gtk
 * outFile = CssSection
 * strct   = GtkCssSection
 * realStrct=
 * ctorStrct=
 * clss    = CssSection
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GBoxed
 * implements:
 * prefixes:
 * 	- gtk_css_section_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- parsing-error
 * imports:
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * 	- gio.File
 * structWrap:
 * 	- GFile* -> File
 * 	- GtkCssSection* -> CssSection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CssSection;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtkc.paths;
private import gtkc.Loader;
private import gio.File;



private import gobject.Boxed;

/**
 * GtkCssProvider is an object implementing the GtkStyleProvider interface.
 * It is able to parse CSS-like
 * input in order to style widgets.
 *
 * Default files
 *
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
 *
 * <hr>
 *
 * Style sheets
 *
 * The basic structure of the style sheets understood by this provider is
 * a series of statements, which are either rule sets or '@-rules', separated
 * by whitespace.
 *
 * A rule set consists of a selector and a declaration block, which is
 * a series of declarations enclosed in curly braces ({ and }). The
 * declarations are separated by semicolons (;). Multiple selectors can
 * share the same declaration block, by putting all the separators in
 * front of the block, separated by commas.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Selectors
 *
 * Selectors work very similar to the way they do in CSS, with widget class
 * names taking the role of element names, and widget names taking the role
 * of IDs. When used in a selector, widget names must be prefixed with a
 * '#' character. The '*' character represents the so-called universal
 * selector, which matches any widget.
 *
 * To express more complicated situations, selectors can be combined in
 * various ways:
 *
 * To require that a widget satisfies several conditions,
 *  combine several selectors into one by concatenating them. E.g.
 *  GtkButton#button1 matches a GtkButton widget
 *  with the name button1.
 *
 * To only match a widget when it occurs inside some other
 *  widget, write the two selectors after each other, separated by whitespace.
 *  E.g. GtkToolBar GtkButton matches GtkButton widgets
 *  that occur inside a GtkToolBar.
 *
 * In the previous example, the GtkButton is matched even
 *  if it occurs deeply nested inside the toolbar. To restrict the match
 *  to direct children of the parent widget, insert a '>' character between
 *  the two selectors. E.g. GtkNotebook > GtkLabel matches
 *  GtkLabel widgets that are direct children of a GtkNotebook.
 *
 * $(DDOC_COMMENT example)
 *
 * Widgets may also define style classes, which can be used for matching.
 * When used in a selector, style classes must be prefixed with a '.'
 * character.
 *
 * Refer to the documentation of individual widgets to learn which
 * style classes they define and see the section called “Style classes and regions”
 * for a list of all style classes used by GTK+ widgets.
 *
 * Note that there is some ambiguity in the selector syntax when it comes
 * to differentiation widget class names from regions. GTK+ currently treats
 * a string as a widget class name if it contains any uppercase characters
 * (which should work for more widgets with names like GtkLabel).
 *
 * $(DDOC_COMMENT example)
 *
 * In complicated widgets like e.g. a GtkNotebook, it may be desirable
 * to style different parts of the widget differently. To make this
 * possible, container widgets may define regions, whose names
 * may be used for matching in selectors.
 *
 * Some containers allow to further differentiate between regions by
 * applying so-called pseudo-classes to the region. For example, the
 * tab region in GtkNotebook allows to single out the first or last
 * tab by using the :first-child or :last-child pseudo-class.
 * When used in selectors, pseudo-classes must be prefixed with a
 * ':' character.
 *
 * Refer to the documentation of individual widgets to learn which
 * regions and pseudo-classes they define and see
 * the section called “Style classes and regions” for a list of all regions
 * used by GTK+ widgets.
 *
 * $(DDOC_COMMENT example)
 *
 * Another use of pseudo-classes is to match widgets depending on their
 * state. This is conceptually similar to the :hover, :active or :focus
 * pseudo-classes in CSS. The available pseudo-classes for widget states
 * are :active, :prelight (or :hover), :insensitive, :selected, :focused
 * and :inconsistent.
 *
 * $(DDOC_COMMENT example)
 *
 * Widget state pseudoclasses may only apply to the last element
 * in a selector.
 *
 * To determine the effective style for a widget, all the matching rule
 * sets are merged. As in CSS, rules apply by specificity, so the rules
 * whose selectors more closely match a widget path will take precedence
 * over the others.
 *
 * <hr>
 *
 * @ Rules
 *
 * GTK+'s CSS supports the @import rule, in order to load another
 * CSS style sheet in addition to the currently parsed one.
 *
 * $(DDOC_COMMENT example)
 *
 * In order to extend key bindings affecting different widgets, GTK+
 * supports the @binding-set rule to parse a set of bind/unbind
 * directives, see GtkBindingSet for the supported syntax. Note that
 * the binding sets defined in this way must be associated with rule sets
 * by setting the gtk-key-bindings style property.
 *
 * Customized key bindings are typically defined in a separate
 * gtk-keys.css CSS file and GTK+ loads this file
 * according to the current key theme, which is defined by the
 * "gtk-key-theme-name" setting.
 *
 * $(DDOC_COMMENT example)
 *
 * GTK+ also supports an additional @define-color rule, in order
 * to define a color name which may be used instead of color numeric
 * representations. Also see the "gtk-color-scheme" setting
 * for a way to override the values of these named colors.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Symbolic colors
 *
 * Besides being able to define color names, the CSS parser is also able
 * to read different color expressions, which can also be nested, providing
 * a rich language to define colors which are derived from a set of base
 * colors.
 *
 * $(DDOC_COMMENT example)
 *
 *  The various ways to express colors in GTK+ CSS are:
 *
 * Syntax
 * Explanation
 * Examples
 *
 * rgb(r, g, b)
 * An opaque color; r, g, b can be either integers between
 *  0 and 255 or percentages
 *
 * rgb(128, 10, 54)
 * rgb(20%, 30%, 0%)
 *
 * rgba(r, g, b, a)
 * A translucent color; r, g, b are as in the previous row,
 *  a is a floating point number between 0 and 1
 *
 * rgba(255, 255, 0, 0.5)
 *
 * #xxyyzz
 *
 * An opaque color; xx, yy, zz are hexadecimal numbers
 *  specifying r, g, b variants with between 1 and 4
 *  hexadecimal digits per component are allowed
 *
 * #ff12ab
 * #f0c
 *
 * @name
 * Reference to a color that has been defined with
 *  @define-color
 *
 * @bg_color
 *
 * mix(color1, color2, f)
 * A linear combination of color1 and color2. f is a
 *  floating point number between 0 and 1.
 *
 * mix(#ff1e0a, @bg_color, 0.8)
 *
 * shade(color, f)
 * A lighter or darker variant of color. f is a
 *  floating point number.
 *
 * shade(@fg_color, 0.5)
 *
 * lighter(color)
 * A lighter variant of color
 *
 * darker(color)
 * A darker variant of color
 *
 * alpha(color, f)
 * Modifies passed color's alpha by a factor f. f is a
 *  floating point number. f < 1.0 results in a more transparent
 *  color while f > 1.0 results in a more opaque color.
 *
 * alhpa(blue, 0.5)
 *
 * <hr>
 *
 * Gradients
 *
 * Linear or radial Gradients can be used as background images.
 *
 * A linear gradient along the line from (start_x, start_y) to
 * (end_x, end_y) is specified using the syntax
 *
 * -gtk-gradient (linear,
 *  start_x start_y, end_x end_y,
 *  color-stop (position, color),
 *  ...)
 *
 * where start_x and end_x can be either a floating point number between
 * 0 and 1 or one of the special values 'left', 'right' or 'center', start_y
 * and end_y can be either a floating point number between 0 and 1 or one
 * of the special values 'top', 'bottom' or 'center', position is a floating
 * point number between 0 and 1 and color is a color expression (see above).
 * The color-stop can be repeated multiple times to add more than one color
 * stop. 'from (color)' and 'to (color)' can be used as abbreviations for
 * color stops with position 0 and 1, respectively.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * A radial gradient along the two circles defined by (start_x, start_y,
 * start_radius) and (end_x, end_y, end_radius) is specified using the
 * syntax
 *
 * -gtk-gradient (radial,
 *  start_x start_y, start_radius,
 *  end_x end_y, end_radius,
 *  color-stop (position, color),
 *  ...)
 *
 * where start_radius and end_radius are floating point numbers and
 * the other parameters are as before.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Text shadow
 *
 * A shadow list can be applied to text or symbolic icons, using the CSS3
 * text-shadow syntax, as defined in
 * the CSS3 specification.
 *
 * A text shadow is specified using the syntax
 *
 * text-shadow: horizontal_offset vertical_offset [ blur_radius ] color
 *
 * The offset of the shadow is specified with the horizontal_offset and vertical_offset
 * parameters. The optional blur radius is parsed, but it is currently not rendered by
 * the GTK+ theming engine.
 *
 * To set multiple shadows on an element, you can specify a comma-separated list
 * of shadow elements in the text-shadow property. Shadows are always rendered
 * front-back, i.e. the first shadow specified is on top of the others. Shadows
 * can thus overlay each other, but they can never overlay the text itself,
 * which is always rendered on top of the shadow layer.
 *
 * <hr>
 *
 * Box shadow
 *
 * Themes can apply shadows on framed elements using the CSS3 box-shadow syntax,
 * as defined in
 * the CSS3 specification.
 *
 * A box shadow is specified using the syntax
 *
 * box-shadow: [ inset ] horizontal_offset vertical_offset [ blur_radius ] [ spread ] color
 *
 * A positive offset will draw a shadow that is offset to the right (down) of the box,
 * a negative offset to the left (top). The optional spread parameter defines an additional
 * distance to expand the shadow shape in all directions, by the specified radius.
 * The optional blur radius parameter is parsed, but it is currently not rendered by
 * the GTK+ theming engine.
 * The inset parameter defines whether the drop shadow should be rendered inside or outside
 * the box canvas. Only inset box-shadows are currently supported by the GTK+ theming engine,
 * non-inset elements are currently ignored.
 *
 * To set multiple box-shadows on an element, you can specify a comma-separated list
 * of shadow elements in the box-shadow property. Shadows are always rendered
 * front-back, i.e. the first shadow specified is on top of the others, so they may
 * overlap other boxes or other shadows.
 *
 * <hr>
 *
 * Border images
 *
 * Images and gradients can also be used in slices for the purpose of creating
 * scalable borders.
 * For more information, see the CSS3 documentation for the border-image property,
 * which can be found here.
 *
 * The parameters of the slicing process are controlled by
 * four separate properties. Note that you can use the
 *
 * border-image
 *
 *  shorthand property
 * to set values for the three properties at the same time.
 *
 * border-image-source: url(path)
 * (or border-image-source: -gtk-gradient(...))
 *
 * :
 * Specifies the source of the border image, and it can either
 * be an URL or a gradient (see above).
 *
 * border-image-slice: top right bottom left
 *
 * The sizes specified by the top, right, bottom and left parameters
 * are the offsets, in pixels, from the relevant edge where the image
 * should be "cut off" to build the slices used for the rendering
 * of the border.
 *
 * border-image-width: top right bottom left
 *
 * The sizes specified by the top, right, bottom and left parameters
 * are inward distances from the border box edge, used to specify the
 * rendered size of each slice determined by border-image-slice.
 * If this property is not specified, the values of border-width will
 * be used as a fallback.
 *
 * border-image-repeat: [stretch|repeat|round|space] ?
 * [stretch|repeat|round|space]
 *
 * Specifies how the image slices should be rendered in the area
 * outlined by border-width.
 * The default (stretch) is to resize the slice to fill in the whole
 * allocated area.
 * If the value of this property is 'repeat', the image slice
 * will be tiled to fill the area.
 * If the value of this property is 'round', the image slice will
 * be tiled to fill the area, and scaled to fit it exactly
 * a whole number of times.
 * If the value of this property is 'space', the image slice will
 * be tiled to fill the area, and if it doesn't fit it exactly a whole
 * number of times, the extra space is distributed as padding around
 * the slices.
 * If two options are specified, the first one affects
 * the horizontal behaviour and the second one the vertical behaviour.
 * If only one option is specified, it affects both.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Styles can specify transitions that will be used to create a gradual
 * change in the appearance when a widget state changes. The following
 * syntax is used to specify transitions:
 *
 * duration [s|ms] [linear|ease|ease-in|ease-out|ease-in-out] [loop]?
 *
 * The duration is the amount of time that the animation will take for
 * a complete cycle from start to end. If the loop option is given, the
 * animation will be repated until the state changes again.
 * The option after the duration determines the transition function from a
 * small set of predefined functions.
 *
 * Figure 3. Linear transition
 *
 * Figure 4. Ease transition
 *
 * Figure 5. Ease-in-out transition
 *
 * Figure 6. Ease-in transition
 *
 * Figure 7. Ease-out transition
 *
 * <hr>
 *
 * Supported properties
 *
 * Properties are the part that differ the most to common CSS,
 * not all properties are supported (some are planned to be
 * supported eventually, some others are meaningless or don't
 * map intuitively in a widget based environment).
 *
 * The currently supported properties are:
 *
 * Property name
 * Syntax
 * Maps to
 * Examples
 *
 * engine
 * engine-name
 * GtkThemingEngine
 * engine: clearlooks;
 *  engine: none; /+* use the default (i.e. builtin) engine) +/
 *
 * background-color
 * color (see above)
 * GdkRGBA
 *
 * background-color: #fff;
 * color: color1;
 * background-color: shade (color1, 0.5);
 * color: mix (color1, #f0f, 0.8);
 *
 * color
 *
 * border-top-color
 * transparent|color (see above)
 *
 * border-right-color
 *
 * border-bottom-color
 *
 * border-left-color
 *
 * border-color
 * [transparent|color]{1,4}
 *
 * font-family
 *
 * family [, family]*
 * gchararray
 * font-family: Sans, Arial;
 *
 * font-style
 * [normal|oblique|italic]
 * PANGO_TYPE_STYLE
 * font-style: italic;
 *
 * font-variant
 * [normal|small-caps]
 * PANGO_TYPE_VARIANT
 * font-variant: normal;
 *
 * font-weight
 * [normal|bold|bolder|lighter|100|200|300|400|500|600|700|800|900]
 * PANGO_TYPE_WEIGHT
 * font-weight: bold;
 *
 * font-size
 * Font size in point
 * gint
 * font-size: 13;
 *
 * font
 *
 * family [style] [size]
 * PangoFontDescription
 * font: Sans 15;
 *
 * margin-top
 * integer
 * gint
 * margin-top: 0;
 *
 * margin-left
 * integer
 * gint
 * margin-left: 1;
 *
 * margin-bottom
 * integer
 * gint
 * margin-bottom: 2;
 *
 * margin-right
 * integer
 * gint
 * margin-right: 4;
 *
 * margin
 *
 * width
 * vertical_width horizontal_width
 * top_width horizontal_width bottom_width
 * top_width right_width bottom_width left_width
 *
 * GtkBorder
 *
 * margin: 5;
 * margin: 5 10;
 * margin: 5 10 3;
 * margin: 5 10 3 5;
 *
 * padding-top
 * integer
 * gint
 * padding-top: 5;
 *
 * padding-left
 * integer
 * gint
 * padding-left: 5;
 *
 * padding-bottom
 * integer
 * gint
 * padding-bottom: 5;
 *
 * padding-right
 * integer
 * gint
 * padding-right: 5;
 *
 * padding
 *
 * background-image
 *
 * gradient (see above) or
 * url(path)
 * cairo_pattern_t
 *
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
 *
 * background-repeat
 * [repeat|no-repeat]
 * internal
 *
 * background-repeat: no-repeat;
 *  If not specified, the style doesn't respect the CSS3
 *  specification, since the background will be
 *  stretched to fill the area.
 *
 * border-top-width
 * integer
 * gint
 * border-top-width: 5;
 *
 * border-left-width
 * integer
 * gint
 * border-left-width: 5;
 *
 * border-bottom-width
 * integer
 * gint
 * border-bottom-width: 5;
 *
 * border-right-width
 * integer
 * gint
 * border-right-width: 5;
 *
 * border-width
 * GtkBorder
 *
 * border-width: 1;
 * border-width: 1 2;
 * border-width: 1 2 3;
 * border-width: 1 2 3 5;
 *
 * border-radius
 * integer
 * gint
 * border-radius: 5;
 *
 * border-style
 * [none|solid|inset|outset]
 * GtkBorderStyle
 * border-style: solid;
 *
 * border-image
 *
 * border image (see above)
 * internal use only
 *
 * border-image: url("/path/to/image.png") 3 4 3 4 stretch;
 * border-image: url("/path/to/image.png") 3 4 4 3 repeat stretch;
 *
 * text-shadow
 * shadow list (see above)
 * internal use only
 *
 * text-shadow: 1 1 0 blue, -4 -4 red;
 *
 * transition
 * transition (see above)
 * internal use only
 *
 * transition: 150ms ease-in-out;
 * transition: 1s linear loop;
 *
 * gtk-key-bindings
 * binding set name list
 * internal use only
 *
 * gtk-bindings: binding1, binding2, ...;
 *
 * GtkThemingEngines can register their own, engine-specific style properties
 * with the function gtk_theming_engine_register_property(). These properties
 * can be set in CSS like other properties, using a name of the form
 *
 * -namespace-name
 *
 * , where namespace is typically
 * the name of the theming engine, and name is the
 * name of the property. Style properties that have been registered by widgets
 * using gtk_widget_class_install_style_property() can also be set in this
 * way, using the widget class name for namespace.
 *
 * $(DDOC_COMMENT example)
 */
public class CssSection : Boxed
{
	
	/** the main Gtk struct */
	protected GtkCssSection* gtkCssSection;
	
	
	public GtkCssSection* getCssSectionStruct()
	{
		return gtkCssSection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCssSection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCssSection* gtkCssSection)
	{
		this.gtkCssSection = gtkCssSection;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GTK) && gtkCssSection !is null )
		{
			gtk_css_section_unref(gtkCssSection);
		}
	}
	
	/**
	 */
	
	/**
	 * Returns the line in the CSS document where this section end.
	 * The line number is 0-indexed, so the first line of the document
	 * will return 0.
	 * This value may change in future invocations of this function if
	 * section is not yet parsed completely. This will for example
	 * happen in the GtkCssProvider::parsing-error signal.
	 * The end position and line may be identical to the start
	 * position and line for sections which failed to parse anything
	 * successfully.
	 * Returns: the line number Since 3.2
	 */
	public uint getEndLine()
	{
		// guint gtk_css_section_get_end_line (const GtkCssSection *section);
		return gtk_css_section_get_end_line(gtkCssSection);
	}
	
	/**
	 * Returns the offset in bytes from the start of the current line
	 * returned via gtk_css_section_get_end_line().
	 * This value may change in future invocations of this function if
	 * section is not yet parsed completely. This will for example
	 * happen in the GtkCssProvider::parsing-error signal.
	 * The end position and line may be identical to the start
	 * position and line for sections which failed to parse anything
	 * successfully.
	 * Returns: the offset in bytes from the start of the line. Since 3.2
	 */
	public uint getEndPosition()
	{
		// guint gtk_css_section_get_end_position (const GtkCssSection *section);
		return gtk_css_section_get_end_position(gtkCssSection);
	}
	
	/**
	 * Gets the file that section was parsed from. If no such file exists,
	 * for example because the CSS was loaded via
	 * gtk_css_provider_load_from_data(), then NULL is returned.
	 * Returns: the GFile that section was parsed from or NULL if section was parsed from other data. [transfer none] Since 3.2
	 */
	public File getFile()
	{
		// GFile * gtk_css_section_get_file (const GtkCssSection *section);
		auto p = gtk_css_section_get_file(gtkCssSection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets the parent section for the given section. The parent section is
	 * the section that contains this section. A special case are sections of
	 * type GTK_CSS_SECTION_DOCUMENT. Their parent will either be NULL
	 * if they are the original CSS document that was loaded by
	 * gtk_css_provider_load_from_file() or a section of type
	 * GTK_CSS_SECTION_IMPORT if it was loaded with an import rule from
	 * a different file.
	 * Returns: the parent section or NULL if none Since 3.2
	 */
	public CssSection getParent()
	{
		// GtkCssSection * gtk_css_section_get_parent (const GtkCssSection *section);
		auto p = gtk_css_section_get_parent(gtkCssSection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p);
	}
	
	/**
	 * Gets the type of information that section describes.
	 * Returns: the type of section Since 3.2
	 */
	public GtkCssSectionType getSectionType()
	{
		// GtkCssSectionType gtk_css_section_get_section_type (const GtkCssSection *section);
		return gtk_css_section_get_section_type(gtkCssSection);
	}
	
	/**
	 * Returns the line in the CSS document where this section starts.
	 * The line number is 0-indexed, so the first line of the document
	 * will return 0.
	 * Returns: the line number Since 3.2
	 */
	public uint getStartLine()
	{
		// guint gtk_css_section_get_start_line (const GtkCssSection *section);
		return gtk_css_section_get_start_line(gtkCssSection);
	}
	
	/**
	 * Returns the offset in bytes from the start of the current line
	 * returned via gtk_css_section_get_start_line().
	 * Returns: the offset in bytes from the start of the line. Since 3.2
	 */
	public uint getStartPosition()
	{
		// guint gtk_css_section_get_start_position (const GtkCssSection *section);
		return gtk_css_section_get_start_position(gtkCssSection);
	}
	
	/**
	 * Increments the reference count on section.
	 * Returns: section itself. Since 3.2
	 */
	public CssSection doref()
	{
		// GtkCssSection * gtk_css_section_ref (GtkCssSection *section);
		auto p = gtk_css_section_ref(gtkCssSection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p);
	}
	
	/**
	 * Decrements the reference count on section, freeing the
	 * structure if the reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_css_section_unref (GtkCssSection *section);
		gtk_css_section_unref(gtkCssSection);
	}
}
