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

module ddi.GC;

private import dui.DUI;
private import dui.ObjectG;
private import ddi.Color;
private import ddi.Screen;
private import dui.Widget;

private import def.Types;
private import def.Constants;

extern (C)
{
	void gdk_gc_get_values(GdkGC * gc, GdkGCValues * values);
	void gdk_gc_set_values(GdkGC * gc, GdkGCValues * values, GdkGCValuesMask values_mask);
	void gdk_gc_set_foreground(GdkGC * gc, GdkColor * color);
	void gdk_gc_set_background(GdkGC * gc, GdkColor * color);
	void gdk_gc_set_function(GdkGC * gc, GdkFunction funct);
	void gdk_gc_set_fill(GdkGC * gc, GdkFill fill);
	void gdk_gc_set_tile(GdkGC * gc, GdkPixmap * tile);
	void gdk_gc_set_stipple(GdkGC * gc, GdkPixmap * stipple);
	void gdk_gc_set_ts_origin(GdkGC * gc, gint x, gint y);
	void gdk_gc_set_clip_origin(GdkGC * gc, gint x, gint y);
	void gdk_gc_set_clip_mask(GdkGC * gc, GdkBitmap * mask);
	void gdk_gc_set_clip_rectangle(GdkGC * gc, GdkRectangle * rectangle);
	void gdk_gc_set_clip_region(GdkGC * gc, GdkRegion * region);
	void gdk_gc_set_subwindow(GdkGC * gc, GdkSubwindowMode mode);
	void gdk_gc_set_exposures(GdkGC * gc, gboolean exposures);
	void gdk_gc_set_line_attributes(GdkGC * gc, gint line_width, GdkLineStyle line_style, GdkCapStyle cap_style, GdkJoinStyle join_style);
	void gdk_gc_set_dashes(GdkGC * gc, gint dash_offset, gint8 dash_list[], gint n);
	void gdk_gc_offset(GdkGC * gc, gint x_offset, gint y_offset);
	void gdk_gc_copy(GdkGC * dst_gc, GdkGC * src_gc);

	void gdk_gc_set_colormap(GdkGC * gc, GdkColormap * colormap);
	GdkColormap * gdk_gc_get_colormap(GdkGC * gc);
	void gdk_gc_set_rgb_fg_color(GdkGC * gc, GdkColor * color);
	void gdk_gc_set_rgb_bg_color(GdkGC * gc, GdkColor * color);
	GdkScreen * gdk_gc_get_screen(GdkGC * gc);
}

/**
 * The Graphics context representation
 */
public:
class GC : ObjectG
{
	
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkGC";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	public:
	/**
	 * Drawing modes
	 */
	static enum {
		COPY,
		INVERT,
		XOR,
		CLEAR,
		AND,
		AND_REVERSE,
		AND_INVERT,
		NOOP,
		OR,
		EQUIV,
		OR_REVERSE,
		COPY_INVERT,
		OR_INVERT,
		NAND,
		NOR,
		SET
	}

	protected:
	this(GObject * gObject)
	{
		super(gObject);
	}

	public:
	void* gtk()
	{
		return cast(void*)gObject;
	}
	
	this(Widget widget)
	{
		this(cast(GObject*)widget.getWindow());
	}
	
	/**
	 * Create a GC from a gdk gc
	 * @param gc the GdkGC
	 */
	this(GdkGC * gc)
	{
		super(cast(GObject*)gc);
	}

	/**
	 * Gets the gdk gc
	 * @return the gdk gc
	 */
	GdkGC * getGDKgc()
	{
		return cast(GdkGC*)gObject;
	}

	/**
	 * Sets the GC values
	 * \todo class GCValues
	 * @param values
	 */
	void getValues(GdkGCValues * values)
	{
		gdk_gc_get_values(getGDKgc(), values);
	}
	
	/**
	 * Sets the GC values limited to the values mask
	 * \todo class GCValues
	 * @param values
	 * @param values_mask
	 */
	void setValues(GdkGCValues * values, GdkGCValuesMask values_mask)
	{
		gdk_gc_set_values(getGDKgc(), values, values_mask);
	}
	
	/**
	 * Sets the foreground color
	 * @param color the new foreground color
	 */
	void setForeground(Color color)
	{
		gdk_gc_set_foreground(getGDKgc(), color.gdkColor());
	}
	
	/**
	 * Sets the background color
	 * @param color the new ackground color
	 */
	void setBackground(Color color)
	{
		gdk_gc_set_background(getGDKgc(), color.gdkColor());
	}
	
	/**
	 * Sets the drawing function
	 * @param funct the new drawing function
	 */
	void setFunction(/*GdkFunction*/ int funct)
	{
		gdk_gc_set_function(getGDKgc(), cast(GdkFunction)funct);
	}

	/+
	void gdk_gc_set_fill(getGDKgc(), GdkFill fill);
	void gdk_gc_set_tile(getGDKgc(), GdkPixmap * tile);
	void gdk_gc_set_stipple(getGDKgc(), GdkPixmap * stipple);
	void gdk_gc_set_ts_origin(getGDKgc(), gint x, gint y);
	void gdk_gc_set_clip_origin(getGDKgc(), gint x, gint y);
	void gdk_gc_set_clip_mask(getGDKgc(), GdkBitmap * mask);
	void gdk_gc_set_clip_rectangle(getGDKgc(), GdkRectangle * rectangle);
	void gdk_gc_set_clip_region(getGDKgc(), GdkRegion * region);
	void gdk_gc_set_subwindow(getGDKgc(), GdkSubwindowMode mode);
	void gdk_gc_set_exposures(getGDKgc(), gboolean exposures);
	void gdk_gc_set_line_attributes(getGDKgc(), gint line_width, GdkLineStyle line_style, GdkCapStyle cap_style, GdkJoinStyle join_style);
	void gdk_gc_set_dashes(getGDKgc(), gint dash_offset, gint8 dash_list[], gint n);
	void gdk_gc_offset(getGDKgc(), gint x_offset, gint y_offset);
	void gdk_gc_copy(GdkGC * dst_gc, GdkGC * src_gc);

	void gdk_gc_set_colormap(getGDKgc(), GdkColormap * colormap);
	GdkColormap * gdk_gc_get_colormap(getGDKgc());
	void gdk_gc_set_rgb_fg_color(getGDKgc(), GdkColor * color);
	void gdk_gc_set_rgb_bg_color(getGDKgc(), GdkColor * color);
	GdkScreen * gdk_gc_get_screen(getGDKgc());
	+/
}
