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
 * inFile  = GtkStyle.html
 * outPack = gtk
 * outFile = Style
 * strct   = GtkStyle
 * realStrct=
 * ctorStrct=
 * clss    = Style
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_style_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdarg
 * 	- glib.Str
 * 	- cairo.Context
 * 	- gobject.Value
 * 	- gdk.Color
 * 	- gdk.Pixbuf
 * 	- gdk.Window
 * 	- gtk.IconSet
 * 	- gtk.IconSource
 * 	- gtk.Widget
 * 	- pango.PgLayout
 * structWrap:
 * 	- GValue* -> Value
 * 	- GdkColor* -> Color
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkWindow* -> Window
 * 	- GtkIconSet* -> IconSet
 * 	- GtkIconSource* -> IconSource
 * 	- GtkStyle* -> Style
 * 	- GtkWidget* -> Widget
 * 	- PangoLayout* -> PgLayout
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Style;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import cairo.Context;
private import gobject.Value;
private import gdk.Color;
private import gdk.Pixbuf;
private import gdk.Window;
private import gtk.IconSet;
private import gtk.IconSource;
private import gtk.Widget;
private import pango.PgLayout;


version(Tango) {
	private import tango.core.Vararg;

	version = druntime;
} else version(D_Version2) {
	private import core.vararg;

	version = druntime;
} else {
	private import std.stdarg;
}


private import gobject.ObjectG;

/**
 * Description
 * A GtkStyle object encapsulates the information that provides the look and
 * feel for a widget.
 * Warning
 * In GTK+ 3.0, GtkStyle has been deprecated and replaced by GtkStyleContext.
 * Each GtkWidget has an associated GtkStyle object that is used when
 * rendering that widget. Also, a GtkStyle holds information for the five
 * possible widget states though not every widget supports all five
 * states; see GtkStateType.
 * Usually the GtkStyle for a widget is the same as the default style that
 * is set by GTK+ and modified the theme engine.
 * Usually applications should not need to use or modify the GtkStyle of
 * their widgets.
 */
public class Style : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkStyle* gtkStyle;
	
	
	public GtkStyle* getStyleStruct()
	{
		return gtkStyle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStyle* gtkStyle)
	{
		super(cast(GObject*)gtkStyle);
		this.gtkStyle = gtkStyle;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkStyle = cast(GtkStyle*)obj;
	}
	
	deprecated:
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Style)[] onRealizeListeners;
	/**
	 * Emitted when the style has been initialized for a particular
	 * visual. Connecting to this signal is probably seldom
	 * useful since most of the time applications and widgets only
	 * deal with styles that have been already realized.
	 * Since 2.4
	 */
	void addOnRealize(void delegate(Style) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("realize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"realize",
			cast(GCallback)&callBackRealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["realize"] = 1;
		}
		onRealizeListeners ~= dlg;
	}
	extern(C) static void callBackRealize(GtkStyle* styleStruct, Style _style)
	{
		foreach ( void delegate(Style) dlg ; _style.onRealizeListeners )
		{
			dlg(_style);
		}
	}
	
	void delegate(Style)[] onUnrealizeListeners;
	/**
	 * Emitted when the aspects of the style specific to a particular visual
	 * is being cleaned up. A connection to this signal can be useful
	 * if a widget wants to cache objects as object data on GtkStyle.
	 * This signal provides a convenient place to free such cached objects.
	 * Since 2.4
	 */
	void addOnUnrealize(void delegate(Style) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unrealize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unrealize",
			cast(GCallback)&callBackUnrealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unrealize"] = 1;
		}
		onUnrealizeListeners ~= dlg;
	}
	extern(C) static void callBackUnrealize(GtkStyle* styleStruct, Style _style)
	{
		foreach ( void delegate(Style) dlg ; _style.onUnrealizeListeners )
		{
			dlg(_style);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_style_new has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext
	 * Creates a new GtkStyle.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkStyle * gtk_style_new (void);
		auto p = gtk_style_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_style_new()");
		}
		this(cast(GtkStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_copy has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Creates a copy of the passed in GtkStyle object.
	 * Returns: a copy of style. [transfer full]
	 */
	public Style copy()
	{
		// GtkStyle * gtk_style_copy (GtkStyle *style);
		auto p = gtk_style_copy(gtkStyle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_attach has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_widget_style_attach() instead
	 * Attaches a style to a window; this process allocates the
	 * colors and creates the GC's for the style - it specializes
	 * it to a particular visual. The process may involve the creation
	 * of a new style if the style has already been attached to a
	 * window with a different style and visual.
	 * Since this function may return a new object, you have to use it
	 * Params:
	 * window = a GdkWindow.
	 * Returns: Either style, or a newly-created GtkStyle. If the style is newly created, the style parameter will be unref'ed, and the new style will have a reference count belonging to the caller.
	 */
	public Style attach(Window window)
	{
		// GtkStyle * gtk_style_attach (GtkStyle *style,  GdkWindow *window);
		auto p = gtk_style_attach(gtkStyle, (window is null) ? null : window.getWindowStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Style)(cast(GtkStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_detach has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 * Detaches a style from a window. If the style is not attached
	 * to any windows anymore, it is unrealized. See gtk_style_attach().
	 */
	public void detach()
	{
		// void gtk_style_detach (GtkStyle *style);
		gtk_style_detach(gtkStyle);
	}
	
	/**
	 * Returns whether style has an associated GtkStyleContext.
	 * Returns: TRUE if style has a GtkStyleContext Since 3.0
	 */
	public int hasContext()
	{
		// gboolean gtk_style_has_context (GtkStyle *style);
		return gtk_style_has_context(gtkStyle);
	}
	
	/**
	 * Warning
	 * gtk_style_set_background has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_style_context_set_background() instead
	 * Sets the background of window to the background color or pixmap
	 * specified by style for the given state.
	 * Params:
	 * window = a GdkWindow
	 * stateType = a state
	 */
	public void setBackground(Window window, GtkStateType stateType)
	{
		// void gtk_style_set_background (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type);
		gtk_style_set_background(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType);
	}
	
	/**
	 * Warning
	 * gtk_style_apply_default_background has been deprecated since version 3.0 and should not be used in newly-written code. Use GtkStyleContext instead
	 */
	public void applyDefaultBackground(Context cr, Window window, GtkStateType stateType, int x, int y, int width, int height)
	{
		// void gtk_style_apply_default_background (GtkStyle *style,  cairo_t *cr,  GdkWindow *window,  GtkStateType state_type,  gint x,  gint y,  gint width,  gint height);
		gtk_style_apply_default_background(gtkStyle, (cr is null) ? null : cr.getContextStruct(), (window is null) ? null : window.getWindowStruct(), stateType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_style_lookup_color has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_style_context_lookup_color() instead
	 * Looks up color_name in the style's logical color mappings,
	 * filling in color and returning TRUE if found, otherwise
	 * returning FALSE. Do not cache the found mapping, because
	 * it depends on the GtkStyle and might change when a theme
	 * switch occurs.
	 * Since 2.10
	 * Params:
	 * colorName = the name of the logical color to look up
	 * color = the GdkColor to fill in. [out]
	 * Returns: TRUE if the mapping was found.
	 */
	public int lookupColor(string colorName, Color color)
	{
		// gboolean gtk_style_lookup_color (GtkStyle *style,  const gchar *color_name,  GdkColor *color);
		return gtk_style_lookup_color(gtkStyle, Str.toStringz(colorName), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_style_lookup_icon_set has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_style_context_lookup_icon_set() instead
	 * Looks up stock_id in the icon factories associated with style
	 * and the default icon factory, returning an icon set if found,
	 * otherwise NULL.
	 * Params:
	 * stockId = an icon name
	 * Returns: icon set of stock_id. [transfer none]
	 */
	public IconSet lookupIconSet(string stockId)
	{
		// GtkIconSet * gtk_style_lookup_icon_set (GtkStyle *style,  const gchar *stock_id);
		auto p = gtk_style_lookup_icon_set(gtkStyle, Str.toStringz(stockId));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_render_icon has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_icon_pixbuf() instead
	 * Renders the icon specified by source at the given size
	 * according to the given parameters and returns the result in a
	 * pixbuf.
	 * Params:
	 * source = the GtkIconSource specifying the icon to render
	 * direction = a text direction
	 * state = a state
	 * size = the size to render the icon at. A size of
	 * (GtkIconSize)-1 means render at the size of the source and
	 * don't scale. [type int]
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * Returns: a newly-created GdkPixbuf containing the rendered icon. [transfer full]
	 */
	public Pixbuf renderIcon(IconSource source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, string detail)
	{
		// GdkPixbuf * gtk_style_render_icon (GtkStyle *style,  const GtkIconSource *source,  GtkTextDirection direction,  GtkStateType state,  GtkIconSize size,  GtkWidget *widget,  const gchar *detail);
		auto p = gtk_style_render_icon(gtkStyle, (source is null) ? null : source.getIconSourceStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Queries the value of a style property corresponding to a
	 * widget class is in the given style.
	 * Since 2.16
	 * Params:
	 * widgetType = the GType of a descendant of GtkWidget
	 * propertyName = the name of the style property to get
	 * value = a GValue where the value of the property being
	 * queried will be stored
	 */
	public void getStyleProperty(GType widgetType, string propertyName, Value value)
	{
		// void gtk_style_get_style_property (GtkStyle *style,  GType widget_type,  const gchar *property_name,  GValue *value);
		gtk_style_get_style_property(gtkStyle, widgetType, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Non-vararg variant of gtk_style_get().
	 * Used primarily by language bindings.
	 * Since 2.16
	 * Params:
	 * widgetType = the GType of a descendant of GtkWidget
	 * firstPropertyName = the name of the first style property to get
	 * varArgs = a va_list of pairs of property names and
	 * locations to return the property values, starting with the
	 * location for first_property_name.
	 */
	public void getValist(GType widgetType, string firstPropertyName, void* varArgs)
	{
		// void gtk_style_get_valist (GtkStyle *style,  GType widget_type,  const gchar *first_property_name,  va_list var_args);
		gtk_style_get_valist(gtkStyle, widgetType, Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Warning
	 * gtk_paint_arrow has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_arrow() instead
	 * Draws an arrow in the given rectangle on cr using the given
	 * parameters. arrow_type determines the direction of the arrow.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * arrowType = the type of arrow to draw
	 * fill = TRUE if the arrow tip should be filled
	 * x = x origin of the rectangle to draw the arrow in
	 * y = y origin of the rectangle to draw the arrow in
	 * width = width of the rectangle to draw the arrow in
	 * height = height of the rectangle to draw the arrow in
	 */
	public void paintArrow(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, GtkArrowType arrowType, int fill, int x, int y, int width, int height)
	{
		// void gtk_paint_arrow (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  GtkArrowType arrow_type,  gboolean fill,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_arrow(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), arrowType, fill, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_box has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_frame() and gtk_render_background() instead
	 * Draws a box on cr with the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the box
	 * y = y origin of the box
	 * width = the width of the box
	 * height = the height of the box
	 */
	public void paintBox(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_box (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_box(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_box_gap has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_frame_gap() instead
	 * Draws a box in cr using the given style and state and shadow type,
	 * leaving a gap in one side.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle
	 * y = y origin of the rectangle
	 * width = width of the rectangle
	 * height = width of the rectangle
	 * gapSide = side in which to leave the gap
	 * gapX = starting position of the gap
	 * gapWidth = width of the gap
	 */
	public void paintBoxGap(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_paint_box_gap (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_paint_box_gap(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Warning
	 * gtk_paint_check has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_check() instead
	 * Draws a check button indicator in the given rectangle on cr with
	 * the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle to draw the check in
	 * y = y origin of the rectangle to draw the check in
	 * width = the width of the rectangle to draw the check in
	 * height = the height of the rectangle to draw the check in
	 */
	public void paintCheck(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_check (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_check(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_diamond has been deprecated since version 3.0 and should not be used in newly-written code. Use cairo instead
	 * Draws a diamond in the given rectangle on window using the given
	 * parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle to draw the diamond in
	 * y = y origin of the rectangle to draw the diamond in
	 * width = width of the rectangle to draw the diamond in
	 * height = height of the rectangle to draw the diamond in
	 */
	public void paintDiamond(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_diamond (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_diamond(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_extension has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_extension() instead
	 * Draws an extension, i.e. a notebook tab.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the extension
	 * y = y origin of the extension
	 * width = width of the extension
	 * height = width of the extension
	 * gapSide = the side on to which the extension is attached
	 */
	public void paintExtension(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide)
	{
		// void gtk_paint_extension (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side);
		gtk_paint_extension(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide);
	}
	
	/**
	 * Warning
	 * gtk_paint_flat_box has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_frame() and gtk_render_background() instead
	 * Draws a flat box on cr with the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the box
	 * y = y origin of the box
	 * width = the width of the box
	 * height = the height of the box
	 */
	public void paintFlatBox(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_flat_box (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_flat_box(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_focus has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_focus() instead
	 * Draws a focus indicator around the given rectangle on cr using the
	 * given style.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = the x origin of the rectangle around which to draw a focus indicator
	 * y = the y origin of the rectangle around which to draw a focus indicator
	 * width = the width of the rectangle around which to draw a focus indicator
	 * height = the height of the rectangle around which to draw a focus indicator
	 */
	public void paintFocus(Context cr, GtkStateType stateType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_focus (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_focus(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_handle has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_handle() instead
	 * Draws a handle as used in GtkHandleBox and GtkPaned.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the handle
	 * y = y origin of the handle
	 * width = with of the handle
	 * height = height of the handle
	 * orientation = the orientation of the handle
	 */
	public void paintHandle(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_paint_handle (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_paint_handle(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}
	
	/**
	 * Warning
	 * gtk_paint_hline has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_line() instead
	 * Draws a horizontal line from (x1, y) to (x2, y) in cr
	 * using the given style and state.
	 * Params:
	 * cr = a caio_t
	 * stateType = a state
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x1 = the starting x coordinate
	 * x2 = the ending x coordinate
	 * y = the y coordinate
	 */
	public void paintHline(Context cr, GtkStateType stateType, Widget widget, string detail, int x1, int x2, int y)
	{
		// void gtk_paint_hline (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  gint x1,  gint x2,  gint y);
		gtk_paint_hline(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x1, x2, y);
	}
	
	/**
	 * Warning
	 * gtk_paint_option has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_option() instead
	 * Draws a radio button indicator in the given rectangle on cr with
	 * the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle to draw the option in
	 * y = y origin of the rectangle to draw the option in
	 * width = the width of the rectangle to draw the option in
	 * height = the height of the rectangle to draw the option in
	 */
	public void paintOption(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_option (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_option(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_shadow has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_frame() instead
	 * Draws a shadow around the given rectangle in cr
	 * using the given style and state and shadow type.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle
	 * y = y origin of the rectangle
	 * width = width of the rectangle
	 * height = width of the rectangle
	 */
	public void paintShadow(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_shadow (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_shadow(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_shadow_gap has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_frame_gap() instead
	 * Draws a shadow around the given rectangle in cr
	 * using the given style and state and shadow type, leaving a
	 * gap in one side.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle
	 * y = y origin of the rectangle
	 * width = width of the rectangle
	 * height = width of the rectangle
	 * gapSide = side in which to leave the gap
	 * gapX = starting position of the gap
	 * gapWidth = width of the gap
	 */
	public void paintShadowGap(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_paint_shadow_gap (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_paint_shadow_gap(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Warning
	 * gtk_paint_slider has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_slider() instead
	 * Draws a slider in the given rectangle on cr using the
	 * given style and orientation.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = a shadow
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = the x origin of the rectangle in which to draw a slider
	 * y = the y origin of the rectangle in which to draw a slider
	 * width = the width of the rectangle in which to draw a slider
	 * height = the height of the rectangle in which to draw a slider
	 * orientation = the orientation to be used
	 */
	public void paintSlider(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_paint_slider (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_paint_slider(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}
	
	/**
	 * Warning
	 * gtk_paint_spinner has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_activity() instead
	 * Draws a spinner on window using the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * widget = the widget (may be NULL). [allow-none]
	 * detail = a style detail (may be NULL). [allow-none]
	 * step = the nth step, a value between 0 and "num-steps"
	 * x = the x origin of the rectangle in which to draw the spinner
	 * y = the y origin of the rectangle in which to draw the spinner
	 * width = the width of the rectangle in which to draw the spinner
	 * height = the height of the rectangle in which to draw the spinner
	 */
	public void paintSpinner(Context cr, GtkStateType stateType, Widget widget, string detail, uint step, int x, int y, int width, int height)
	{
		// void gtk_paint_spinner (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  guint step,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_spinner(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), step, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_tab has been deprecated since version 3.0 and should not be used in newly-written code. Use cairo instead
	 * Draws an option menu tab (i.e. the up and down pointing arrows)
	 * in the given rectangle on cr using the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * shadowType = the type of shadow to draw
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin of the rectangle to draw the tab in
	 * y = y origin of the rectangle to draw the tab in
	 * width = the width of the rectangle to draw the tab in
	 * height = the height of the rectangle to draw the tab in
	 */
	public void paintTab(Context cr, GtkStateType stateType, GtkShadowType shadowType, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_tab (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_tab(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, shadowType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_paint_vline has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_line() instead
	 * Draws a vertical line from (x, y1_) to (x, y2_) in cr
	 * using the given style and state.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * y1_ = the starting y coordinate
	 * y2_ = the ending y coordinate
	 * x = the x coordinate
	 */
	public void paintVline(Context cr, GtkStateType stateType, Widget widget, string detail, int y1_, int y2_, int x)
	{
		// void gtk_paint_vline (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  gint y1_,  gint y2_,  gint x);
		gtk_paint_vline(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), y1_, y2_, x);
	}
	
	/**
	 * Warning
	 * gtk_paint_expander has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_expander() instead
	 * Draws an expander as used in GtkTreeView. x and y specify the
	 * center the expander. The size of the expander is determined by the
	 * "expander-size" style property of widget. (If widget is not
	 * specified or doesn't have an "expander-size" property, an
	 * unspecified default size will be used, since the caller doesn't
	 * have sufficient information to position the expander, this is
	 * likely not useful.) The expander is expander_size pixels tall
	 * in the collapsed position and expander_size pixels wide in the
	 * expanded position.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = the x position to draw the expander at
	 * y = the y position to draw the expander at
	 * expanderStyle = the style to draw the expander in; determines
	 * whether the expander is collapsed, expanded, or in an
	 * intermediate state.
	 */
	public void paintExpander(Context cr, GtkStateType stateType, Widget widget, string detail, int x, int y, GtkExpanderStyle expanderStyle)
	{
		// void gtk_paint_expander (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  GtkExpanderStyle expander_style);
		gtk_paint_expander(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, expanderStyle);
	}
	
	/**
	 * Warning
	 * gtk_paint_layout has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_layout() instead
	 * Draws a layout on cr using the given parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * useText = whether to use the text or foreground
	 * graphics context of style
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * x = x origin
	 * y = y origin
	 * layout = the layout to draw
	 */
	public void paintLayout(Context cr, GtkStateType stateType, int useText, Widget widget, string detail, int x, int y, PgLayout layout)
	{
		// void gtk_paint_layout (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  gboolean use_text,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  PangoLayout *layout);
		gtk_paint_layout(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, useText, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Warning
	 * gtk_paint_resize_grip has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_render_handle() instead
	 * Draws a resize grip in the given rectangle on cr using the given
	 * parameters.
	 * Params:
	 * cr = a cairo_t
	 * stateType = a state
	 * widget = the widget. [allow-none]
	 * detail = a style detail. [allow-none]
	 * edge = the edge in which to draw the resize grip
	 * x = the x origin of the rectangle in which to draw the resize grip
	 * y = the y origin of the rectangle in which to draw the resize grip
	 * width = the width of the rectangle in which to draw the resize grip
	 * height = the height of the rectangle in which to draw the resize grip
	 */
	public void paintResizeGrip(Context cr, GtkStateType stateType, Widget widget, string detail, GdkWindowEdge edge, int x, int y, int width, int height)
	{
		// void gtk_paint_resize_grip (GtkStyle *style,  cairo_t *cr,  GtkStateType state_type,  GtkWidget *widget,  const gchar *detail,  GdkWindowEdge edge,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_resize_grip(gtkStyle, (cr is null) ? null : cr.getContextStruct(), stateType, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), edge, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_insertion_cursor has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_render_insertion_cursor() instead.
	 * Draws a text caret on cr at location. This is not a style function
	 * but merely a convenience function for drawing the standard cursor shape.
	 * Params:
	 * widget = a GtkWidget
	 * cr = cairo context to draw to
	 * location = location where to draw the cursor (location->width is ignored)
	 * isPrimary = if the cursor should be the primary cursor color.
	 * direction = whether the cursor is left-to-right or
	 * right-to-left. Should never be GTK_TEXT_DIR_NONE
	 * drawArrow = TRUE to draw a directional arrow on the
	 * cursor. Should be FALSE unless the cursor is split.
	 * Since 3.0
	 */
	public static void drawInsertionCursor(Widget widget, Context cr, ref Rectangle location, int isPrimary, GtkTextDirection direction, int drawArrow)
	{
		// void gtk_draw_insertion_cursor (GtkWidget *widget,  cairo_t *cr,  const GdkRectangle *location,  gboolean is_primary,  GtkTextDirection direction,  gboolean draw_arrow);
		gtk_draw_insertion_cursor((widget is null) ? null : widget.getWidgetStruct(), (cr is null) ? null : cr.getContextStruct(), &location, isPrimary, direction, drawArrow);
	}
}
