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


module gtk.Style;

private import cairo.Context;
private import gdk.Color;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.IconSet;
private import gtk.IconSource;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgLayout;
private import std.algorithm;


/**
 * A #GtkStyle object encapsulates the information that provides the look and
 * feel for a widget.
 * 
 * > In GTK+ 3.0, GtkStyle has been deprecated and replaced by
 * > #GtkStyleContext.
 * 
 * Each #GtkWidget has an associated #GtkStyle object that is used when
 * rendering that widget. Also, a #GtkStyle holds information for the five
 * possible widget states though not every widget supports all five
 * states; see #GtkStateType.
 * 
 * Usually the #GtkStyle for a widget is the same as the default style that
 * is set by GTK+ and modified the theme engine.
 * 
 * Usually applications should not need to use or modify the #GtkStyle of
 * their widgets.
 */
public class Style : ObjectG
{
	/** the main Gtk struct */
	protected GtkStyle* gtkStyle;

	/** Get the main Gtk struct */
	public GtkStyle* getStyleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStyle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStyle* gtkStyle, bool ownedRef = false)
	{
		this.gtkStyle = gtkStyle;
		super(cast(GObject*)gtkStyle, ownedRef);
	}

	//TODO:
	//deprecated:

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_style_get_type();
	}

	/**
	 * Creates a new #GtkStyle.
	 *
	 * Deprecated: Use #GtkStyleContext
	 *
	 * Returns: a new #GtkStyle.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_style_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStyle*) p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 */
	public void applyDefaultBackground(Context cr, Window window, GtkStateType stateType, int x, int y, int width, int height)
	{
		gtk_style_apply_default_background(gtkStyle, (cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), stateType, x, y, width, height);
	}

	/**
	 * Attaches a style to a window; this process allocates the
	 * colors and creates the GC’s for the style - it specializes
	 * it to a particular visual. The process may involve the creation
	 * of a new style if the style has already been attached to a
	 * window with a different style and visual.
	 *
	 * Since this function may return a new object, you have to use it
	 * in the following way:
	 * `style = gtk_style_attach (style, window)`
	 *
	 * Deprecated: Use gtk_widget_style_attach() instead
	 *
	 * Params:
	 *     window = a #GdkWindow.
	 *
	 * Returns: Either @style, or a newly-created #GtkStyle.
	 *     If the style is newly created, the style parameter
	 *     will be unref'ed, and the new style will have
	 *     a reference count belonging to the caller.
	 */
	public Style attach(Window window)
	{
		auto p = gtk_style_attach(gtkStyle, (window is null) ? null : window.getWindowStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}

	/**
	 * Creates a copy of the passed in #GtkStyle object.
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 *
	 * Returns: a copy of @style
	 */
	public Style copy()
	{
		auto p = gtk_style_copy(gtkStyle);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p, true);
	}

	/**
	 * Detaches a style from a window. If the style is not attached
	 * to any windows anymore, it is unrealized. See gtk_style_attach().
	 *
	 * Deprecated: Use #GtkStyleContext instead
	 */
	public void detach()
	{
		gtk_style_detach(gtkStyle);
	}

	/**
	 * Queries the value of a style property corresponding to a
	 * widget class is in the given style.
	 *
	 * Params:
	 *     widgetType = the #GType of a descendant of #GtkWidget
	 *     propertyName = the name of the style property to get
	 *     value = a #GValue where the value of the property being
	 *         queried will be stored
	 *
	 * Since: 2.16
	 */
	public void getStyleProperty(GType widgetType, string propertyName, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		gtk_style_get_style_property(gtkStyle, widgetType, Str.toStringz(propertyName), outvalue);

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Non-vararg variant of gtk_style_get().
	 * Used primarily by language bindings.
	 *
	 * Params:
	 *     widgetType = the #GType of a descendant of #GtkWidget
	 *     firstPropertyName = the name of the first style property to get
	 *     varArgs = a va_list of pairs of property names and
	 *         locations to return the property values, starting with the
	 *         location for @first_property_name.
	 *
	 * Since: 2.16
	 */
	public void getValist(GType widgetType, string firstPropertyName, void* varArgs)
	{
		gtk_style_get_valist(gtkStyle, widgetType, Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Returns whether @style has an associated #GtkStyleContext.
	 *
	 * Returns: %TRUE if @style has a #GtkStyleContext
	 *
	 * Since: 3.0
	 */
	public bool hasContext()
	{
		return gtk_style_has_context(gtkStyle) != 0;
	}

	/**
	 * Looks up @color_name in the style’s logical color mappings,
	 * filling in @color and returning %TRUE if found, otherwise
	 * returning %FALSE. Do not cache the found mapping, because
	 * it depends on the #GtkStyle and might change when a theme
	 * switch occurs.
	 *
	 * Deprecated: Use gtk_style_context_lookup_color() instead
	 *
	 * Params:
	 *     colorName = the name of the logical color to look up
	 *     color = the #GdkColor to fill in
	 *
	 * Returns: %TRUE if the mapping was found.
	 *
	 * Since: 2.10
	 */
	public bool lookupColor(string colorName, out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		auto p = gtk_style_lookup_color(gtkStyle, Str.toStringz(colorName), outcolor) != 0;

		color = ObjectG.getDObject!(Color)(outcolor, true);

		return p;
	}

	/**
	 * Looks up @stock_id in the icon factories associated with @style
	 * and the default icon factory, returning an icon set if found,
	 * otherwise %NULL.
	 *
	 * Deprecated: Use gtk_style_context_lookup_icon_set() instead
	 *
	 * Params:
	 *     stockId = an icon name
	 *
	 * Returns: icon set of @stock_id
	 */
	public IconSet lookupIconSet(string stockId)
	{
		auto p = gtk_style_lookup_icon_set(gtkStyle, Str.toStringz(stockId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}

	/**
	 * Renders the icon specified by @source at the given @size
	 * according to the given parameters and returns the result in a
	 * pixbuf.
	 *
	 * Deprecated: Use gtk_render_icon_pixbuf() instead
	 *
	 * Params:
	 *     source = the #GtkIconSource specifying the icon to render
	 *     direction = a text direction
	 *     state = a state
	 *     size = the size to render the icon at (#GtkIconSize). A size of
	 *         `(GtkIconSize)-1` means render at the size of the source and
	 *         don’t scale.
	 *     widget = the widget
	 *     detail = a style detail
	 *
	 * Returns: a newly-created #GdkPixbuf
	 *     containing the rendered icon
	 */
	public Pixbuf renderIcon(IconSource source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, string detail)
	{
		auto p = gtk_style_render_icon(gtkStyle, (source is null) ? null : source.getIconSourceStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Sets the background of @window to the background color or pixmap
	 * specified by @style for the given state.
	 *
	 * Deprecated: Use gtk_style_context_set_background() instead
	 *
	 * Params:
	 *     window = a #GdkWindow
	 *     stateType = a state
	 */
	public void setBackground(Window window, GtkStateType stateType)
	{
		gtk_style_set_background(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType);
	}

	/**
	 * Emitted when the style has been initialized for a particular
	 * visual. Connecting to this signal is probably seldom
	 * useful since most of the time applications and widgets only
	 * deal with styles that have been already realized.
	 *
	 * Since: 2.4
	 */
	gulong addOnRealize(void delegate(Style) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "realize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the aspects of the style specific to a particular visual
	 * is being cleaned up. A connection to this signal can be useful
	 * if a widget wants to cache objects as object data on #GtkStyle.
	 * This signal provides a convenient place to free such cached objects.
	 *
	 * Since: 2.4
	 */
	gulong addOnUnrealize(void delegate(Style) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unrealize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Draws an arrow in the given rectangle on @cr using the given
	 * parameters. @arrow_type determines the direction of the arrow.
	 *
	 * Deprecated: Use gtk_render_arrow() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     arrowType = the type of arrow to draw
	 *     fill = %TRUE if the arrow tip should be filled
	 *     x = x origin of the rectangle to draw the arrow in
	 *     y = y origin of the rectangle to draw the arrow in
	 *     width = width of the rectangle to draw the arrow in
	 *     height = height of the rectangle to draw the arrow in
	 */
	public static void paintArrow(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, GtkArrowType arrowType, bool fill, int x, int y, int width, int height)
	{
		gtk_paint_arrow((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), arrowType, fill, x, y, width, height);
	}

	/**
	 * Draws a box on @cr with the given parameters.
	 *
	 * Deprecated: Use gtk_render_frame() and gtk_render_background() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the box
	 *     y = y origin of the box
	 *     width = the width of the box
	 *     height = the height of the box
	 */
	public static void paintBox(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_box((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a box in @cr using the given style and state and shadow type,
	 * leaving a gap in one side.
	 *
	 * Deprecated: Use gtk_render_frame_gap() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle
	 *     y = y origin of the rectangle
	 *     width = width of the rectangle
	 *     height = width of the rectangle
	 *     gapSide = side in which to leave the gap
	 *     gapX = starting position of the gap
	 *     gapWidth = width of the gap
	 */
	public static void paintBoxGap(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		gtk_paint_box_gap((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}

	/**
	 * Draws a check button indicator in the given rectangle on @cr with
	 * the given parameters.
	 *
	 * Deprecated: Use gtk_render_check() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle to draw the check in
	 *     y = y origin of the rectangle to draw the check in
	 *     width = the width of the rectangle to draw the check in
	 *     height = the height of the rectangle to draw the check in
	 */
	public static void paintCheck(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_check((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a diamond in the given rectangle on @window using the given
	 * parameters.
	 *
	 * Deprecated: Use cairo instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle to draw the diamond in
	 *     y = y origin of the rectangle to draw the diamond in
	 *     width = width of the rectangle to draw the diamond in
	 *     height = height of the rectangle to draw the diamond in
	 */
	public static void paintDiamond(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_diamond((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws an expander as used in #GtkTreeView. @x and @y specify the
	 * center the expander. The size of the expander is determined by the
	 * “expander-size” style property of @widget.  (If widget is not
	 * specified or doesn’t have an “expander-size” property, an
	 * unspecified default size will be used, since the caller doesn't
	 * have sufficient information to position the expander, this is
	 * likely not useful.) The expander is expander_size pixels tall
	 * in the collapsed position and expander_size pixels wide in the
	 * expanded position.
	 *
	 * Deprecated: Use gtk_render_expander() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = the x position to draw the expander at
	 *     y = the y position to draw the expander at
	 *     expanderStyle = the style to draw the expander in; determines
	 *         whether the expander is collapsed, expanded, or in an
	 *         intermediate state.
	 */
	public static void paintExpander(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, int x, int y, GtkExpanderStyle expanderStyle)
	{
		gtk_paint_expander((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, expanderStyle);
	}

	/**
	 * Draws an extension, i.e. a notebook tab.
	 *
	 * Deprecated: Use gtk_render_extension() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the extension
	 *     y = y origin of the extension
	 *     width = width of the extension
	 *     height = width of the extension
	 *     gapSide = the side on to which the extension is attached
	 */
	public static void paintExtension(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide)
	{
		gtk_paint_extension((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide);
	}

	/**
	 * Draws a flat box on @cr with the given parameters.
	 *
	 * Deprecated: Use gtk_render_frame() and gtk_render_background() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the box
	 *     y = y origin of the box
	 *     width = the width of the box
	 *     height = the height of the box
	 */
	public static void paintFlatBox(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_flat_box((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a focus indicator around the given rectangle on @cr using the
	 * given style.
	 *
	 * Deprecated: Use gtk_render_focus() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = the x origin of the rectangle around which to draw a focus indicator
	 *     y = the y origin of the rectangle around which to draw a focus indicator
	 *     width = the width of the rectangle around which to draw a focus indicator
	 *     height = the height of the rectangle around which to draw a focus indicator
	 */
	public static void paintFocus(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_focus((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a handle as used in #GtkHandleBox and #GtkPaned.
	 *
	 * Deprecated: Use gtk_render_handle() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the handle
	 *     y = y origin of the handle
	 *     width = with of the handle
	 *     height = height of the handle
	 *     orientation = the orientation of the handle
	 */
	public static void paintHandle(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		gtk_paint_handle((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}

	/**
	 * Draws a horizontal line from (@x1, @y) to (@x2, @y) in @cr
	 * using the given style and state.
	 *
	 * Deprecated: Use gtk_render_line() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #caio_t
	 *     stateType = a state
	 *     widget = the widget
	 *     detail = a style detail
	 *     x1 = the starting x coordinate
	 *     x2 = the ending x coordinate
	 *     y = the y coordinate
	 */
	public static void paintHline(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, int x1, int x2, int y)
	{
		gtk_paint_hline((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x1, x2, y);
	}

	/**
	 * Draws a layout on @cr using the given parameters.
	 *
	 * Deprecated: Use gtk_render_layout() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     useText = whether to use the text or foreground
	 *         graphics context of @style
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin
	 *     y = y origin
	 *     layout = the layout to draw
	 */
	public static void paintLayout(Style style, Context cr, GtkStateType stateType, bool useText, Widget widget, string detail, int x, int y, PgLayout layout)
	{
		gtk_paint_layout((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, useText, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}

	/**
	 * Draws a radio button indicator in the given rectangle on @cr with
	 * the given parameters.
	 *
	 * Deprecated: Use gtk_render_option() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle to draw the option in
	 *     y = y origin of the rectangle to draw the option in
	 *     width = the width of the rectangle to draw the option in
	 *     height = the height of the rectangle to draw the option in
	 */
	public static void paintOption(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_option((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a resize grip in the given rectangle on @cr using the given
	 * parameters.
	 *
	 * Deprecated: Use gtk_render_handle() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     widget = the widget
	 *     detail = a style detail
	 *     edge = the edge in which to draw the resize grip
	 *     x = the x origin of the rectangle in which to draw the resize grip
	 *     y = the y origin of the rectangle in which to draw the resize grip
	 *     width = the width of the rectangle in which to draw the resize grip
	 *     height = the height of the rectangle in which to draw the resize grip
	 */
	public static void paintResizeGrip(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, GdkWindowEdge edge, int x, int y, int width, int height)
	{
		gtk_paint_resize_grip((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), edge, x, y, width, height);
	}

	/**
	 * Draws a shadow around the given rectangle in @cr
	 * using the given style and state and shadow type.
	 *
	 * Deprecated: Use gtk_render_frame() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle
	 *     y = y origin of the rectangle
	 *     width = width of the rectangle
	 *     height = width of the rectangle
	 */
	public static void paintShadow(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_shadow((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a shadow around the given rectangle in @cr
	 * using the given style and state and shadow type, leaving a
	 * gap in one side.
	 *
	 * Deprecated: Use gtk_render_frame_gap() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle
	 *     y = y origin of the rectangle
	 *     width = width of the rectangle
	 *     height = width of the rectangle
	 *     gapSide = side in which to leave the gap
	 *     gapX = starting position of the gap
	 *     gapWidth = width of the gap
	 */
	public static void paintShadowGap(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		gtk_paint_shadow_gap((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}

	/**
	 * Draws a slider in the given rectangle on @cr using the
	 * given style and orientation.
	 *
	 * Deprecated: Use gtk_render_slider() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = a shadow
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = the x origin of the rectangle in which to draw a slider
	 *     y = the y origin of the rectangle in which to draw a slider
	 *     width = the width of the rectangle in which to draw a slider
	 *     height = the height of the rectangle in which to draw a slider
	 *     orientation = the orientation to be used
	 */
	public static void paintSlider(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		gtk_paint_slider((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}

	/**
	 * Draws a spinner on @window using the given parameters.
	 *
	 * Deprecated: Use gtk_render_icon() and the #GtkStyleContext
	 * you are drawing instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     widget = the widget (may be %NULL)
	 *     detail = a style detail (may be %NULL)
	 *     step = the nth step
	 *     x = the x origin of the rectangle in which to draw the spinner
	 *     y = the y origin of the rectangle in which to draw the spinner
	 *     width = the width of the rectangle in which to draw the spinner
	 *     height = the height of the rectangle in which to draw the spinner
	 */
	public static void paintSpinner(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, uint step, int x, int y, int width, int height)
	{
		gtk_paint_spinner((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), step, x, y, width, height);
	}

	/**
	 * Draws an option menu tab (i.e. the up and down pointing arrows)
	 * in the given rectangle on @cr using the given parameters.
	 *
	 * Deprecated: Use cairo instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     shadowType = the type of shadow to draw
	 *     widget = the widget
	 *     detail = a style detail
	 *     x = x origin of the rectangle to draw the tab in
	 *     y = y origin of the rectangle to draw the tab in
	 *     width = the width of the rectangle to draw the tab in
	 *     height = the height of the rectangle to draw the tab in
	 */
	public static void paintTab(Style style, Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		gtk_paint_tab((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}

	/**
	 * Draws a vertical line from (@x, @y1_) to (@x, @y2_) in @cr
	 * using the given style and state.
	 *
	 * Deprecated: Use gtk_render_line() instead
	 *
	 * Params:
	 *     style = a #GtkStyle
	 *     cr = a #cairo_t
	 *     stateType = a state
	 *     widget = the widget
	 *     detail = a style detail
	 *     y1 = the starting y coordinate
	 *     y2 = the ending y coordinate
	 *     x = the x coordinate
	 */
	public static void paintVline(Style style, Context cr, GtkStateType stateType, Widget widget, string detail, int y1, int y2, int x)
	{
		gtk_paint_vline((style is null) ? null : style.getStyleStruct(), (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), y1, y2, x);
	}
}
