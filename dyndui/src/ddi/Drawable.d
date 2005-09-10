/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ddi.Drawable; 

private import def.Types;
private import def.Constants;
private import lib.gdk;
	
private import dui.ObjectG;

private import dui.DUI;
private import dui.Widget;
	//private import dui.Container;

private import dui.Image;
	
private import ddi.GC;
private import ddi.Color;
private import ddi.Screen;

private import dool.String;

/**
 * Drawable
 */

public:
class Drawable : ObjectG
{
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkDrawable";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	
	public:
	this(GObject * gObject)
	{
		super(gObject);
		drawable = cast(GdkDrawable*) gObject;
	}
	
	protected:

	GdkDrawable * drawable;
	GC gc;
	
	public:
	
	/**
	 * Creates a drawable from a widget.
	 * No GdkDrawable is created, just the DUI wrapper on the widget drawable.
	 * @param widget the widget
	 */
	this(Widget widget)
	{
		this(widget,widget.getWindow());
	}

	/**
	 * Creates a drawable from a widget.
	 * No GdkDrawable is created, just the DUI wrapper on the widget drawable.
	 * @param widget the widget
	 * @param window the widget drawable
	 */
	this(Widget widget, GdkDrawable *window)
	{
		super(null);
		drawable = window;
		gc = widget.getFGgc();
	}

	/**
	 * Gets the GC of this drawable
	 * @return the GC
	 */
	public GC getGC()
	{
		return gc;
	}

	/**
	 * Sets this drawable GdkDrawable and GdkGC from a widget
	 * @param widget
	 */
	public void setDrawable(Widget widget)
	{
		drawable = widget.getWindow();
		gc = widget.getFGgc();
	}

	/**
	 * Gets this drawable GdkDrawable
	 * @return the GdkDrawable
	 */
	GdkDrawable * gDraw()
	{
		return drawable; //cast(GdkDrawable*)gObject;
	}
	
	/**
	 * Draws a point
	 * @param gc
	 * @param x
	 * @param y
	 */
	void drawPoint(GC gc, gint x, gint y)
	{
		gdk_draw_point(gDraw(),gc.getGDKgc(), x, y);
	}

	/**
	 * Draws a point using the current GC
	 * @param x
	 * @param y
	 */
	void drawPoint(gint x, gint y)
	{
		gdk_draw_point(drawable,gc.getGDKgc(), x, y);
	}

	/**
	 * Gets the size of this drawable
	 * @param width
	 * @param height
	 */
	void getSize(inout int width, inout int height)
	{
		gdk_drawable_get_size(gDraw(), &width, &height);
	}
	
	//void gdk_drawable_set_colormap(gDraw(), GdkColormap * colormap);
	//GdkColormap * gdk_drawable_get_colormap(gDraw());
	//GdkVisual * gdk_drawable_get_visual(gDraw());
	
	gint getDepth()
	{
		return gdk_drawable_get_depth(gDraw());
	}
	
	Screen getScreen()
	{
		return new Screen(gdk_drawable_get_screen(gDraw()));
	}

	//GdkDisplay * gdk_drawable_get_display(gDraw());
	
	/**
	 * Draws a line
	 * @param gc
	 * @param x1
	 * @param y1
	 * @param x2
	 * @param y2
	 */
	void drawLine(GC gc, gint x1, gint y1, gint x2, gint y2)
	{
		gdk_draw_line(gDraw(), gc.getGDKgc(), x1, y1, x2, y2);
	}
	
	/**
	 * Draws a line using the current GC
	 * @param x1
	 * @param y1
	 * @param x2
	 * @param y2
	 */
	void drawLine(gint x1, gint y1, gint x2, gint y2)
	{
		gdk_draw_line(gDraw(), gc.getGDKgc(), x1, y1, x2, y2);
	}
	
	/**
	 * Draws a rectangle
	 * @param gc
	 * @param filled
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 */
	void drawRectangle(GC gc, bit filled, gint x, gint y, gint width, gint height)
	{
		gdk_draw_rectangle(gDraw(), gc.getGDKgc(), filled, x, y, width, height);
	}

	/**
	 * Draws a rectangle using the current GC
	 * @param filled
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 */
	void drawRectangle(bit filled, gint x, gint y, gint width, gint height)
	{
		assert(drawable !is null );
		assert(gc !is null);
		gdk_draw_rectangle(drawable, gc.getGDKgc(), filled, x, y, width, height);
	}
	
	
	/**
	 * Draws an arc using the current GC
	 * @param filled
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 * @param angle1 the start angle
	 * @param angle2 the end angle
	 */
	void drawArc(bit filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2)
	{
		gdk_draw_arc(drawable,gc.getGDKgc(), filled, x,y, width,height, angle1,angle2);
	}
	
	/**
	 * Draws an arc
	 * @param gc
	 * @param filled
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 * @param angle1 the start angle
	 * @param angle2 the end angle
	 */
	void drawArc(GC gc, bit filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2)
	{
		gdk_draw_arc(gDraw(), gc.getGDKgc(), filled,  x,  y,  width,  height,  angle1,  angle2);
	}


	/**
	 * 
	 */
	void drawPolygon(GC gc, bit filled, GdkPoint * points, gint npoints)
	{
		gdk_draw_polygon(gDraw(), gc.getGDKgc(), filled, points, npoints);
	}

	void drawPolygon(bit filled, Point[] points)
	{
		gdk_draw_polygon(gDraw(), gc.getGDKgc(), filled, &points[0], points.length);
	}
	
	/**
	 * Draws a Drawable into this drawable.
	 * Copies a portion of a drawable.
	 * @param gc
	 * @param drawable
	 * @param xsrc
	 * @param ysrc
	 * @param xdest
	 * @param ydest
	 * @param width
	 * @param height
	 */
	void drawDrawable(GC gc, Drawable drawable, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)
	{
		gdk_draw_drawable(gDraw(), gc.getGDKgc(), drawable.gDraw(), xsrc, ysrc, xdest, ydest, width, height);
	}
	
	void drawDrawable(Drawable drawable, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)
	{
		gdk_draw_drawable(gDraw(), gc.getGDKgc(), drawable.gDraw(), xsrc, ysrc, xdest, ydest, width, height);
	}
	
	void drawDrawable(Drawable drawable, int x, int y, int width, int height)
	{
		gdk_draw_drawable(gDraw(), gc.getGDKgc(), drawable.gDraw(), 0, 0, x, y, width, height);
	}
	
	/**
	 * Use this when updating one drawble from another with the same size and positions
	 */
	void drawImage(GC gc, GdkImage * image, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)
	{
		gdk_draw_image(gDraw(), gc.getGDKgc(), image, xsrc, ysrc, xdest, ydest, width, height);
	}
	
	void drawImage(Image image, gint xdest, gint ydest)
	{
		drawPixbuf(gc, image.getPixbuf(), xdest, ydest);
	}
	
	private import ddi.Pixbuf;

	void drawPixbuf(GC gc, Pixbuf pixbuf, int x, int y)
	{
		gdk_draw_pixbuf(gDraw(), gc.getGDKgc(), pixbuf.gdkP(),
			0,0,
			x, y,
			pixbuf.getWidth(), pixbuf.getHeight(),
			GdkRgbDither.NONE, 0, 0
			);
			
	}

	void drawPixbuf(Pixbuf pixbuf, int srcX, int srcY, int destX, int destY, int width, int height)
	{
		gdk_draw_pixbuf(gDraw(), gc.getGDKgc(), pixbuf.gdkP(), srcX, srcY, destX, destY, width, height,
			GdkRgbDither.NONE, 0, 0
			);
	}
	
	void drawPixbuf(Pixbuf pixbuf, int destX, int destY)
	{
		gdk_draw_pixbuf(gDraw(), gc.getGDKgc(), pixbuf.gdkP(), 0, 0, destX, destY, pixbuf.getWidth(), pixbuf.getHeight(),
			GdkRgbDither.NONE, 0, 0
			);
	}
	

	private import dango.Font;
	
	void drawString(Font font, int x, int y, char[] string)
	{
		drawString(font, x, y, new String(string));
	}
	void drawString(Font font, int x, int y, String string)
	{
		gdk_draw_string(
					gDraw(), 
					gdk_font_from_description(font.gdkP()), 
					gc.getGDKgc(), 
					x, y, 
					string.toStringz());
	}
	
	
	void drawPoints(Point[] points)
	{
		gdk_draw_points(gDraw(), gc.getGDKgc(), &points[0], points.length);
	}
	// @todo void gdk_draw_segments(gDraw(), GC gc, GdkSegment * segs, gint nsegs);
	
	void drawLines(Point[] points)
	{
		gdk_draw_lines(gDraw(), gc.getGDKgc(), &points[0], points.length);
	}
	// @todo void gdk_draw_pixbuf(gDraw(), GC gc, GdkPixbuf * pixbuf, gint src_x, gint src_y, gint dest_x, gint dest_y, gint width, gint height, GdkRgbDither dither, gint x_dither, gint y_dither);

	//void gdk_draw_glyphs(gDraw(), GC gc, PangoFont * font, gint x, gint y, PangoGlyphString * glyphs);
	//void gdk_draw_layout_line(gDraw(), GC gc, gint x, gint y, PangoLayoutLine * line);
	//void gdk_draw_layout(gDraw(), GC gc, gint x, gint y, PangoLayout * layout);

	//void gdk_draw_layout_line_with_colors(gDraw(), GC gc, gint x, gint y, PangoLayoutLine * line, GdkColor * foreground, GdkColor * background);
	//void gdk_draw_layout_with_colors(gDraw(), GC gc, gint x, gint y, PangoLayout * layout, GdkColor * foreground, GdkColor * background);

	// @todo GdkImage * gdk_drawable_get_image(gDraw(), gint x, gint y, gint width, gint height);

	// @todo GdkRegion * gdk_drawable_get_clip_region(gDraw());
	// @todo GdkRegion * gdk_drawable_get_visible_region(gDraw());

}
