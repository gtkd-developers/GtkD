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
 * inFile  = GtkStyle.html
 * outPack = gtk
 * outFile = Style
 * strct   = GtkStyle
 * realStrct=
 * ctorStrct=
 * clss    = Style
 * interf  = 
 * class Code: No
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
 * 	- glib.Str
 * 	- gtk.Style
 * 	- gdk.Color
 * 	- gdk.Window
 * 	- gdk.Rectangle
 * 	- gtk.IconSet
 * 	- gdk.Pixbuf
 * 	- gtk.IconSource
 * 	- gtk.Widget
 * 	- gdk.Font
 * 	- gdk.Drawable
 * 	- pango.PgLayout
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkDrawable* -> Drawable
 * 	- GdkFont* -> Font
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * 	- GtkIconSet* -> IconSet
 * 	- GtkIconSource* -> IconSource
 * 	- GtkStyle* -> Style
 * 	- GtkWidget* -> Widget
 * 	- PangoLayout* -> PgLayout
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Style;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Style;
private import gdk.Color;
private import gdk.Window;
private import gdk.Rectangle;
private import gtk.IconSet;
private import gdk.Pixbuf;
private import gtk.IconSource;
private import gtk.Widget;
private import gdk.Font;
private import gdk.Drawable;
private import pango.PgLayout;



private import gobject.ObjectG;

/**
 * Description
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
		if(gtkStyle is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkStyle);
		if( ptr !is null )
		{
			this = cast(Style)ptr;
			return;
		}
		super(cast(GObject*)gtkStyle);
		this.gtkStyle = gtkStyle;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Style)[] onRealizeListeners;
	/**
	 * Emitted when the style has been initialized for a particular
	 * colormap and depth. Connecting to this signal is probably seldom
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
	extern(C) static void callBackRealize(GtkStyle* styleStruct, Style style)
	{
		bool consumed = false;
		
		foreach ( void delegate(Style) dlg ; style.onRealizeListeners )
		{
			dlg(style);
		}
		
		return consumed;
	}
	
	void delegate(Style)[] onUnrealizeListeners;
	/**
	 * Emitted when the aspects of the style specific to a particular colormap
	 * and depth are being cleaned up. A connection to this signal can be useful
	 * if a widget wants to cache objects like a GdkGC as object data on GtkStyle.
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
	extern(C) static void callBackUnrealize(GtkStyle* styleStruct, Style style)
	{
		bool consumed = false;
		
		foreach ( void delegate(Style) dlg ; style.onUnrealizeListeners )
		{
			dlg(style);
		}
		
		return consumed;
	}
	
	
	/**
	 * Creates a new GtkStyle.
	 */
	public this ()
	{
		// GtkStyle* gtk_style_new (void);
		auto p = gtk_style_new();
		if(p is null)
		{
			throw new Exception("Construction failure.");
		}
		this(cast(GtkStyle*) p);
	}
	
	/**
	 * Returns:
	 */
	public Style copy()
	{
		// GtkStyle* gtk_style_copy (GtkStyle *style);
		auto p = gtk_style_copy(gtkStyle);
		if(p is null)
		{
			return null;
		}
		return new Style(cast(GtkStyle*) p);
	}
	
	/**
	 * Attaches a style to a window; this process allocates the
	 * colors and creates the GC's for the style - it specializes
	 * it to a particular visual and colormap. The process may
	 * involve the creation of a new style if the style has already
	 * been attached to a window with a different style and colormap.
	 * Since this function may return a new object, you have to use it
	 * in the following way:
	 * style = gtk_style_attach (style, window)
	 * Params:
	 * window =  a GdkWindow.
	 * Returns: Either style, or a newly-created GtkStyle. If the style is newly created, the style parameter will be unref'ed, and the new style will have a reference count belonging to the caller.
	 */
	public Style attach(Window window)
	{
		// GtkStyle* gtk_style_attach (GtkStyle *style,  GdkWindow *window);
		auto p = gtk_style_attach(gtkStyle, (window is null) ? null : window.getWindowStruct());
		if(p is null)
		{
			return null;
		}
		return new Style(cast(GtkStyle*) p);
	}
	
	/**
	 * Detaches a style from a window. If the style is not attached
	 * to any windows anymore, it is unrealized. See gtk_style_attach().
	 */
	public void detach()
	{
		// void gtk_style_detach (GtkStyle *style);
		gtk_style_detach(gtkStyle);
	}
	
	/**
	 * Warning
	 * gtk_style_ref is deprecated and should not be used in newly-written code.
	 * Deprecated equivalent of g_object_ref().
	 * Returns: style.
	 */
	public Style doref()
	{
		// GtkStyle* gtk_style_ref (GtkStyle *style);
		auto p = gtk_style_ref(gtkStyle);
		if(p is null)
		{
			return null;
		}
		return new Style(cast(GtkStyle*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_unref is deprecated and should not be used in newly-written code.
	 * Deprecated equivalent of g_object_unref().
	 */
	public void unref()
	{
		// void gtk_style_unref (GtkStyle *style);
		gtk_style_unref(gtkStyle);
	}
	
	/**
	 * Sets the background of window to the background color or pixmap
	 * specified by style for the given state.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 */
	public void setBackground(Window window, GtkStateType stateType)
	{
		// void gtk_style_set_background (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type);
		gtk_style_set_background(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType);
	}
	
	/**
	 * Params:
	 */
	public void applyDefaultBackground(Window window, int setBg, GtkStateType stateType, Rectangle area, int x, int y, int width, int height)
	{
		// void gtk_style_apply_default_background (GtkStyle *style,  GdkWindow *window,  gboolean set_bg,  GtkStateType state_type,  GdkRectangle *area,  gint x,  gint y,  gint width,  gint height);
		gtk_style_apply_default_background(gtkStyle, (window is null) ? null : window.getWindowStruct(), setBg, stateType, (area is null) ? null : area.getRectangleStruct(), x, y, width, height);
	}
	
	/**
	 * Looks up color_name in the style's logical color mappings,
	 * filling in color and returning TRUE if found, otherwise
	 * returning FALSE. Do not cache the found mapping, because
	 * it depends on the GtkStyle and might change when a theme
	 * switch occurs.
	 * Since 2.10
	 * Params:
	 * colorName =  the name of the logical color to look up
	 * color =  the GdkColor to fill in
	 * Returns: TRUE if the mapping was found.
	 */
	public int lookupColor(string colorName, Color color)
	{
		// gboolean gtk_style_lookup_color (GtkStyle *style,  const gchar *color_name,  GdkColor *color);
		return gtk_style_lookup_color(gtkStyle, Str.toStringz(colorName), (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Params:
	 * Returns:
	 */
	public IconSet lookupIconSet(string stockId)
	{
		// GtkIconSet* gtk_style_lookup_icon_set (GtkStyle *style,  const gchar *stock_id);
		auto p = gtk_style_lookup_icon_set(gtkStyle, Str.toStringz(stockId));
		if(p is null)
		{
			return null;
		}
		return new IconSet(cast(GtkIconSet*) p);
	}
	
	/**
	 * Renders the icon specified by source at the given size
	 * according to the given parameters and returns the result in a
	 * pixbuf.
	 * Params:
	 * source =  the GtkIconSource specifying the icon to render
	 * direction =  a text direction
	 * state =  a state
	 * size =  the size to render the icon at. A size of (GtkIconSize)-1
	 *  means render at the size of the source and don't scale.
	 * widget =  the widget
	 * detail =  a style detail
	 * Returns: a newly-created GdkPixbuf containing the rendered icon
	 */
	public Pixbuf renderIcon(IconSource source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, string detail)
	{
		// GdkPixbuf* gtk_style_render_icon (GtkStyle *style,  const GtkIconSource *source,  GtkTextDirection direction,  GtkStateType state,  GtkIconSize size,  GtkWidget *widget,  const gchar *detail);
		auto p = gtk_style_render_icon(gtkStyle, (source is null) ? null : source.getIconSourceStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail));
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_get_font is deprecated and should not be used in newly-written code.
	 * Gets the GdkFont to use for the given style. This is
	 * meant only as a replacement for direct access to style->font
	 * and should not be used in new code. New code should
	 * use style->font_desc instead.
	 * Returns: the GdkFont for the style. This font is owned by the style; if you want to keep around a copy, you must call gdk_font_ref().
	 */
	public Font getFont()
	{
		// GdkFont* gtk_style_get_font (GtkStyle *style);
		auto p = gtk_style_get_font(gtkStyle);
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Warning
	 * gtk_style_set_font is deprecated and should not be used in newly-written code.
	 * Sets the GdkFont to use for a given style. This is
	 * meant only as a replacement for direct access to style->font
	 * and should not be used in new code. New code should
	 * use style->font_desc instead.
	 * Params:
	 * font =  a GdkFont, or NULL to use the GdkFont corresponding
	 *  to style->font_desc.
	 */
	public void setFont(Font font)
	{
		// void gtk_style_set_font (GtkStyle *style,  GdkFont *font);
		gtk_style_set_font(gtkStyle, (font is null) ? null : font.getFontStruct());
	}
	
	/**
	 * Warning
	 * gtk_draw_hline is deprecated and should not be used in newly-written code. Use gtk_paint_hline() instead.
	 * Draws a horizontal line from (x1, y) to (x2, y) in window
	 * using the given style and state.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * x1 =  the starting x coordinate
	 * x2 =  the ending x coordinate
	 * y =  the y coordinate
	 */
	public void drawHline(Window window, GtkStateType stateType, int x1, int x2, int y)
	{
		// void gtk_draw_hline (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gint x1,  gint x2,  gint y);
		gtk_draw_hline(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, x1, x2, y);
	}
	
	/**
	 * Warning
	 * gtk_draw_vline is deprecated and should not be used in newly-written code. Use gtk_paint_vline() instead.
	 * Draws a vertical line from (x, y1_) to (x, y2_) in window
	 * using the given style and state.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * y1_ =  the starting y coordinate
	 * y2_ =  the ending y coordinate
	 * x =  the x coordinate
	 */
	public void drawVline(Window window, GtkStateType stateType, int y1_, int y2_, int x)
	{
		// void gtk_draw_vline (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gint y1_,  gint y2_,  gint x);
		gtk_draw_vline(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, y1_, y2_, x);
	}
	
	/**
	 * Warning
	 * gtk_draw_shadow is deprecated and should not be used in newly-written code. Use gtk_paint_shadow() instead.
	 * Draws a shadow around the given rectangle in window
	 * using the given style and state and shadow type.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 */
	public void drawShadow(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_shadow (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_shadow(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_polygon is deprecated and should not be used in newly-written code. Use gtk_paint_polygon() instead.
	 * Draws a polygon on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * points =  an array of GdkPoints
	 * npoints =  length of points
	 * fill =  TRUE if the polygon should be filled
	 */
	public void drawPolygon(Window window, GtkStateType stateType, GtkShadowType shadowType, GdkPoint* points, int npoints, int fill)
	{
		// void gtk_draw_polygon (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkPoint *points,  gint npoints,  gboolean fill);
		gtk_draw_polygon(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, points, npoints, fill);
	}
	
	/**
	 * Warning
	 * gtk_draw_arrow is deprecated and should not be used in newly-written code. Use gtk_paint_arrow() instead.
	 * Draws an arrow in the given rectangle on window using the given
	 * parameters. arrow_type determines the direction of the arrow.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * arrowType =  the type of arrow to draw
	 * fill =  TRUE if the arrow tip should be filled
	 * x =  x origin of the rectangle to draw the arrow in
	 * y =  y origin of the rectangle to draw the arrow in
	 * width =  width of the rectangle to draw the arrow in
	 * height =  height of the rectangle to draw the arrow in
	 */
	public void drawArrow(Window window, GtkStateType stateType, GtkShadowType shadowType, GtkArrowType arrowType, int fill, int x, int y, int width, int height)
	{
		// void gtk_draw_arrow (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GtkArrowType arrow_type,  gboolean fill,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_arrow(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, arrowType, fill, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_diamond is deprecated and should not be used in newly-written code. Use gtk_paint_diamond() instead.
	 * Draws a diamond in the given rectangle on window using the given
	 * parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the rectangle to draw the diamond in
	 * y =  y origin of the rectangle to draw the diamond in
	 * width =  width of the rectangle to draw the diamond in
	 * height =  height of the rectangle to draw the diamond in
	 */
	public void drawDiamond(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_diamond (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_diamond(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_string is deprecated and should not be used in newly-written code. Use gtk_paint_layout() instead.
	 * Draws a text string on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * x =  x origin
	 * y =  y origin
	 * string =  the string to draw
	 */
	public void drawString(Window window, GtkStateType stateType, int x, int y, string string)
	{
		// void gtk_draw_string (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gint x,  gint y,  const gchar *string);
		gtk_draw_string(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, x, y, Str.toStringz(string));
	}
	
	/**
	 * Warning
	 * gtk_draw_box is deprecated and should not be used in newly-written code. Use gtk_paint_box() instead.
	 * Draws a box on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the box
	 * y =  y origin of the box
	 * width =  the width of the box
	 * height =  the height of the box
	 */
	public void drawBox(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_box (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_box(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_box_gap is deprecated and should not be used in newly-written code. Use gtk_paint_box_gap() instead.
	 * Draws a box in window using the given style and state and shadow type,
	 * leaving a gap in one side.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 * gapSide =  side in which to leave the gap
	 * gapX =  starting position of the gap
	 * gapWidth =  width of the gap
	 */
	public void drawBoxGap(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_draw_box_gap (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_draw_box_gap(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Warning
	 * gtk_draw_check is deprecated and should not be used in newly-written code. Use gtk_paint_check() instead.
	 * Draws a check button indicator in the given rectangle on window with
	 * the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the rectangle to draw the check in
	 * y =  y origin of the rectangle to draw the check in
	 * width =  the width of the rectangle to draw the check in
	 * height =  the height of the rectangle to draw the check in
	 */
	public void drawCheck(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_check (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_check(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_extension is deprecated and should not be used in newly-written code. Use gtk_paint_extension() instead.
	 * Draws an extension, i.e. a notebook tab.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * x =  x origin of the extension
	 * y =  y origin of the extension
	 * width =  width of the extension
	 * height =  width of the extension
	 * gapSide =  the side on to which the extension is attached
	 */
	public void drawExtension(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height, GtkPositionType gapSide)
	{
		// void gtk_draw_extension (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side);
		gtk_draw_extension(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height, gapSide);
	}
	
	/**
	 * Warning
	 * gtk_draw_flat_box is deprecated and should not be used in newly-written code. Use gtk_paint_flat_box() instead.
	 * Draws a flat box on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the box
	 * y =  y origin of the box
	 * width =  the width of the box
	 * height =  the height of the box
	 */
	public void drawFlatBox(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_flat_box (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_flat_box(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_focus is deprecated and should not be used in newly-written code. Use gtk_paint_focus() instead.
	 * Draws a focus indicator around the given rectangle on window using the
	 * given style.
	 * Params:
	 * window =  a GdkWindow
	 * x =  the x origin of the rectangle around which to draw a focus indicator
	 * y =  the y origin of the rectangle around which to draw a focus indicator
	 * width =  the width of the rectangle around which to draw a focus indicator
	 * height =  the height of the rectangle around which to draw a focus indicator
	 */
	public void drawFocus(Window window, int x, int y, int width, int height)
	{
		// void gtk_draw_focus (GtkStyle *style,  GdkWindow *window,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_focus(gtkStyle, (window is null) ? null : window.getWindowStruct(), x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_handle is deprecated and should not be used in newly-written code. Use gtk_paint_handle() instead.
	 * Draws a handle as used in GtkHandleBox and GtkPaned.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * x =  x origin of the handle
	 * y =  y origin of the handle
	 * width =  with of the handle
	 * height =  height of the handle
	 * orientation =  the orientation of the handle
	 */
	public void drawHandle(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_draw_handle (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_draw_handle(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height, orientation);
	}
	
	/**
	 * Warning
	 * gtk_draw_option is deprecated and should not be used in newly-written code. Use gtk_paint_option() instead.
	 * Draws a radio button indicator in the given rectangle on window with
	 * the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the rectangle to draw the option in
	 * y =  y origin of the rectangle to draw the option in
	 * width =  the width of the rectangle to draw the option in
	 * height =  the height of the rectangle to draw the option in
	 */
	public void drawOption(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_option (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_option(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_shadow_gap is deprecated and should not be used in newly-written code. Use gtk_paint_shadow_gap() instead.
	 * Draws a shadow around the given rectangle in window
	 * using the given style and state and shadow type, leaving a
	 * gap in one side.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 * gapSide =  side in which to leave the gap
	 * gapX =  starting position of the gap
	 * gapWidth =  width of the gap
	 */
	public void drawShadowGap(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_draw_shadow_gap (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_draw_shadow_gap(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Warning
	 * gtk_draw_slider is deprecated and should not be used in newly-written code.
	 * Params:
	 */
	public void drawSlider(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_draw_slider (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_draw_slider(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height, orientation);
	}
	
	/**
	 * Warning
	 * gtk_draw_tab is deprecated and should not be used in newly-written code. Use gtk_paint_tab() instead.
	 * Draws an option menu tab (i.e. the up and down pointing arrows)
	 * in the given rectangle on window using the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * x =  x origin of the rectangle to draw the tab in
	 * y =  y origin of the rectangle to draw the tab in
	 * width =  the width of the rectangle to draw the tab in
	 * height =  the height of the rectangle to draw the tab in
	 */
	public void drawTab(Window window, GtkStateType stateType, GtkShadowType shadowType, int x, int y, int width, int height)
	{
		// void gtk_draw_tab (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_tab(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, x, y, width, height);
	}
	
	/**
	 * Warning
	 * gtk_draw_expander is deprecated and should not be used in newly-written code. Use gtk_paint_expander() instead.
	 * Draws an expander as used in GtkTreeView.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * x =  the x position to draw the expander at
	 * y =  the y position to draw the expander at
	 * expanderStyle =  the style to draw the expander in
	 */
	public void drawExpander(Window window, GtkStateType stateType, int x, int y, GtkExpanderStyle expanderStyle)
	{
		// void gtk_draw_expander (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gint x,  gint y,  GtkExpanderStyle expander_style);
		gtk_draw_expander(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, x, y, expanderStyle);
	}
	
	/**
	 * Warning
	 * gtk_draw_layout is deprecated and should not be used in newly-written code.
	 * Params:
	 */
	public void drawLayout(Window window, GtkStateType stateType, int useText, int x, int y, PgLayout layout)
	{
		// void gtk_draw_layout (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gboolean use_text,  gint x,  gint y,  PangoLayout *layout);
		gtk_draw_layout(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, useText, x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Warning
	 * gtk_draw_resize_grip is deprecated and should not be used in newly-written code. Use gtk_paint_resize_grip() instead.
	 * Draws a resize grip in the given rectangle on window using the given
	 * parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * edge =  the edge in which to draw the resize grip
	 * x =  the x origin of the rectangle in which to draw the resize grip
	 * y =  the y origin of the rectangle in which to draw the resize grip
	 * width =  the width of the rectangle in which to draw the resize grip
	 * height =  the height of the rectangle in which to draw the resize grip
	 */
	public void drawResizeGrip(Window window, GtkStateType stateType, GdkWindowEdge edge, int x, int y, int width, int height)
	{
		// void gtk_draw_resize_grip (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkWindowEdge edge,  gint x,  gint y,  gint width,  gint height);
		gtk_draw_resize_grip(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, edge, x, y, width, height);
	}
	
	/**
	 * Draws an arrow in the given rectangle on window using the given
	 * parameters. arrow_type determines the direction of the arrow.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * arrowType =  the type of arrow to draw
	 * fill =  TRUE if the arrow tip should be filled
	 * x =  x origin of the rectangle to draw the arrow in
	 * y =  y origin of the rectangle to draw the arrow in
	 * width =  width of the rectangle to draw the arrow in
	 * height =  height of the rectangle to draw the arrow in
	 */
	public void paintArrow(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, GtkArrowType arrowType, int fill, int x, int y, int width, int height)
	{
		// void gtk_paint_arrow (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  GtkArrowType arrow_type,  gboolean fill,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_arrow(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), arrowType, fill, x, y, width, height);
	}
	
	/**
	 * Draws a box on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the box
	 * y =  y origin of the box
	 * width =  the width of the box
	 * height =  the height of the box
	 */
	public void paintBox(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_box (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_box(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a box in window using the given style and state and shadow type,
	 * leaving a gap in one side.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 * gapSide =  side in which to leave the gap
	 * gapX =  starting position of the gap
	 * gapWidth =  width of the gap
	 */
	public void paintBoxGap(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_paint_box_gap (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_paint_box_gap(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Draws a check button indicator in the given rectangle on window with
	 * the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle to draw the check in
	 * y =  y origin of the rectangle to draw the check in
	 * width =  the width of the rectangle to draw the check in
	 * height =  the height of the rectangle to draw the check in
	 */
	public void paintCheck(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_check (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_check(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a diamond in the given rectangle on window using the given
	 * parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle to draw the diamond in
	 * y =  y origin of the rectangle to draw the diamond in
	 * width =  width of the rectangle to draw the diamond in
	 * height =  height of the rectangle to draw the diamond in
	 */
	public void paintDiamond(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_diamond (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_diamond(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws an extension, i.e. a notebook tab.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the extension
	 * y =  y origin of the extension
	 * width =  width of the extension
	 * height =  width of the extension
	 * gapSide =  the side on to which the extension is attached
	 */
	public void paintExtension(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide)
	{
		// void gtk_paint_extension (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side);
		gtk_paint_extension(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide);
	}
	
	/**
	 * Draws a flat box on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the box
	 * y =  y origin of the box
	 * width =  the width of the box
	 * height =  the height of the box
	 */
	public void paintFlatBox(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_flat_box (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_flat_box(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a focus indicator around the given rectangle on window using the
	 * given style.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  the x origin of the rectangle around which to draw a focus indicator
	 * y =  the y origin of the rectangle around which to draw a focus indicator
	 * width =  the width of the rectangle around which to draw a focus indicator
	 * height =  the height of the rectangle around which to draw a focus indicator
	 */
	public void paintFocus(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_focus (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_focus(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a handle as used in GtkHandleBox and GtkPaned.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the handle
	 * y =  y origin of the handle
	 * width =  with of the handle
	 * height =  height of the handle
	 * orientation =  the orientation of the handle
	 */
	public void paintHandle(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_paint_handle (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_paint_handle(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}
	
	/**
	 * Draws a horizontal line from (x1, y) to (x2, y) in window
	 * using the given style and state.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  rectangle to which the output is clipped, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x1 =  the starting x coordinate
	 * x2 =  the ending x coordinate
	 * y =  the y coordinate
	 */
	public void paintHline(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, int x1, int x2, int y)
	{
		// void gtk_paint_hline (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x1,  gint x2,  gint y);
		gtk_paint_hline(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x1, x2, y);
	}
	
	/**
	 * Draws a radio button indicator in the given rectangle on window with
	 * the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle to draw the option in
	 * y =  y origin of the rectangle to draw the option in
	 * width =  the width of the rectangle to draw the option in
	 * height =  the height of the rectangle to draw the option in
	 */
	public void paintOption(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_option (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_option(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a polygon on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * points =  an array of GdkPoints
	 * npoints =  length of points
	 * fill =  TRUE if the polygon should be filled
	 */
	public void paintPolygon(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, GdkPoint* points, int npoints, int fill)
	{
		// void gtk_paint_polygon (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  GdkPoint *points,  gint npoints,  gboolean fill);
		gtk_paint_polygon(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), points, npoints, fill);
	}
	
	/**
	 * Draws a shadow around the given rectangle in window
	 * using the given style and state and shadow type.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 */
	public void paintShadow(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_shadow (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_shadow(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a shadow around the given rectangle in window
	 * using the given style and state and shadow type, leaving a
	 * gap in one side.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle
	 * y =  y origin of the rectangle
	 * width =  width of the rectangle
	 * height =  width of the rectangle
	 * gapSide =  side in which to leave the gap
	 * gapX =  starting position of the gap
	 * gapWidth =  width of the gap
	 */
	public void paintShadowGap(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth)
	{
		// void gtk_paint_shadow_gap (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkPositionType gap_side,  gint gap_x,  gint gap_width);
		gtk_paint_shadow_gap(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, gapSide, gapX, gapWidth);
	}
	
	/**
	 * Draws a slider in the given rectangle on window using the
	 * given style and orientation.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  a shadow
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  the x origin of the rectangle in which to draw a slider
	 * y =  the y origin of the rectangle in which to draw a slider
	 * width =  the width of the rectangle in which to draw a slider
	 * height =  the height of the rectangle in which to draw a slider
	 * orientation =  the orientation to be used
	 */
	public void paintSlider(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height, GtkOrientation orientation)
	{
		// void gtk_paint_slider (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height,  GtkOrientation orientation);
		gtk_paint_slider(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height, orientation);
	}
	
	/**
	 * Warning
	 * gtk_paint_string is deprecated and should not be used in newly-written code. Use gtk_paint_layout() instead.
	 * Draws a text string on window with the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin
	 * y =  y origin
	 * string =  the string to draw
	 */
	public void paintString(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, int x, int y, string string)
	{
		// void gtk_paint_string (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  const gchar *string);
		gtk_paint_string(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, Str.toStringz(string));
	}
	
	/**
	 * Draws an option menu tab (i.e. the up and down pointing arrows)
	 * in the given rectangle on window using the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * shadowType =  the type of shadow to draw
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin of the rectangle to draw the tab in
	 * y =  y origin of the rectangle to draw the tab in
	 * width =  the width of the rectangle to draw the tab in
	 * height =  the height of the rectangle to draw the tab in
	 */
	public void paintTab(Window window, GtkStateType stateType, GtkShadowType shadowType, Rectangle area, Widget widget, string detail, int x, int y, int width, int height)
	{
		// void gtk_paint_tab (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GtkShadowType shadow_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_tab(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, shadowType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, width, height);
	}
	
	/**
	 * Draws a vertical line from (x, y1_) to (x, y2_) in window
	 * using the given style and state.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  rectangle to which the output is clipped, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * y1_ =  the starting y coordinate
	 * y2_ =  the ending y coordinate
	 * x =  the x coordinate
	 */
	public void paintVline(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, int y1_, int y2_, int x)
	{
		// void gtk_paint_vline (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint y1_,  gint y2_,  gint x);
		gtk_paint_vline(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), y1_, y2_, x);
	}
	
	/**
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
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  the x position to draw the expander at
	 * y =  the y position to draw the expander at
	 * expanderStyle =  the style to draw the expander in; determines
	 *  whether the expander is collapsed, expanded, or in an
	 *  intermediate state.
	 */
	public void paintExpander(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, int x, int y, GtkExpanderStyle expanderStyle)
	{
		// void gtk_paint_expander (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  GtkExpanderStyle expander_style);
		gtk_paint_expander(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, expanderStyle);
	}
	
	/**
	 * Draws a layout on window using the given parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * useText =  whether to use the text or foreground
	 *  graphics context of style
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * x =  x origin
	 * y =  y origin
	 * layout =  the layout to draw
	 */
	public void paintLayout(Window window, GtkStateType stateType, int useText, Rectangle area, Widget widget, string detail, int x, int y, PgLayout layout)
	{
		// void gtk_paint_layout (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  gboolean use_text,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  gint x,  gint y,  PangoLayout *layout);
		gtk_paint_layout(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, useText, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}
	
	/**
	 * Draws a resize grip in the given rectangle on window using the given
	 * parameters.
	 * Params:
	 * window =  a GdkWindow
	 * stateType =  a state
	 * area =  clip rectangle, or NULL if the
	 *  output should not be clipped
	 * widget =  the widget (may be NULL)
	 * detail =  a style detail (may be NULL)
	 * edge =  the edge in which to draw the resize grip
	 * x =  the x origin of the rectangle in which to draw the resize grip
	 * y =  the y origin of the rectangle in which to draw the resize grip
	 * width =  the width of the rectangle in which to draw the resize grip
	 * height =  the height of the rectangle in which to draw the resize grip
	 */
	public void paintResizeGrip(Window window, GtkStateType stateType, Rectangle area, Widget widget, string detail, GdkWindowEdge edge, int x, int y, int width, int height)
	{
		// void gtk_paint_resize_grip (GtkStyle *style,  GdkWindow *window,  GtkStateType state_type,  GdkRectangle *area,  GtkWidget *widget,  const gchar *detail,  GdkWindowEdge edge,  gint x,  gint y,  gint width,  gint height);
		gtk_paint_resize_grip(gtkStyle, (window is null) ? null : window.getWindowStruct(), stateType, (area is null) ? null : area.getRectangleStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail), edge, x, y, width, height);
	}
	
	/**
	 * Draws a text caret on drawable at location. This is not a style function
	 * but merely a convenience function for drawing the standard cursor shape.
	 * Since 2.4
	 * Params:
	 * widget =  a GtkWidget
	 * drawable =  a GdkDrawable
	 * area =  rectangle to which the output is clipped, or NULL if the
	 *  output should not be clipped
	 * location =  location where to draw the cursor (location->width is ignored)
	 * isPrimary =  if the cursor should be the primary cursor color.
	 * direction =  whether the cursor is left-to-right or
	 *  right-to-left. Should never be GTK_TEXT_DIR_NONE
	 * drawArrow =  TRUE to draw a directional arrow on the
	 *  cursor. Should be FALSE unless the cursor is split.
	 */
	public static void drawInsertionCursor(Widget widget, Drawable drawable, Rectangle area, Rectangle location, int isPrimary, GtkTextDirection direction, int drawArrow)
	{
		// void gtk_draw_insertion_cursor (GtkWidget *widget,  GdkDrawable *drawable,  GdkRectangle *area,  GdkRectangle *location,  gboolean is_primary,  GtkTextDirection direction,  gboolean draw_arrow);
		gtk_draw_insertion_cursor((widget is null) ? null : widget.getWidgetStruct(), (drawable is null) ? null : drawable.getDrawableStruct(), (area is null) ? null : area.getRectangleStruct(), (location is null) ? null : location.getRectangleStruct(), isPrimary, direction, drawArrow);
	}
	
	/**
	 * Copies a GtkBorder structure.
	 * Params:
	 * border =  a GtkBorder.
	 * Returns: a copy of border_.
	 */
	public static GtkBorder* borderCopy(GtkBorder* border)
	{
		// GtkBorder* gtk_border_copy (const GtkBorder *border_);
		return gtk_border_copy(border);
	}
	
	/**
	 * Frees a GtkBorder structure.
	 * Params:
	 * border =  a GtkBorder.
	 */
	public static void borderFree(GtkBorder* border)
	{
		// void gtk_border_free (GtkBorder *border_);
		gtk_border_free(border);
	}
}
