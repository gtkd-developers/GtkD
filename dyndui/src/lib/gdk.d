/*
 * File:	gdk.d
 * Author:	John Reimer
 * Date:	2005-05-05  Initial release
 */

module lib.gdk;

struct GdkWindowAttr;
struct GdkWindowType;

private 
{
	import lib.Loader;
	import lib.paths;
	import def.Types;
	import def.Constants;
//	import lib.types.gdk;
	
	debug import std.stdio;
}

private Linker gdk_Linker;
private Linker gdk_Pixbuffer_Linker;
	
static this()
{
	gdk_Linker = new Linker( libPath ~ importLibs[LIBRARY.GDK] );
	gdk_Linker.link( gdkLinks );
	gdk_Pixbuffer_Linker = new Linker( libPath ~ importLibs[LIBRARY.GDK_PIXBUF] );
	gdk_Pixbuffer_Linker.link( gdkPixbufferLinks );
	debug writefln("* Finished static this(): gdk");
}

static ~this()
{
	delete gdk_Linker;
	delete gdk_Pixbuffer_Linker;
	debug writefln("* Finished static ~this(): gdk");
}

extern(C)
{
	GdkBitmap*		function(GdkDrawable *drawable, gchar *data, gint width, gint height)
			gdk_bitmap_create_from_data;
	GType		function()
			gdk_colormap_get_type;
	GdkColormap*		function(GdkVisual * visual, gboolean allocate)
			gdk_colormap_new;
	GdkColormap*		function()
			gdk_colormap_get_system;
	gboolean		function(GdkColormap * colormap, GdkColor * color, gboolean writeable, gboolean best_match)
			gdk_colormap_alloc_color;
	void		function(GdkColormap * colormap, GdkColor * colors, gint ncolors)
			gdk_colormap_free_colors;
	void		function(GdkColormap * colormap, gulong pixel, GdkColor * result)
			gdk_colormap_query_color;
	GdkVisual*		function(GdkColormap * colormap)
			gdk_colormap_get_visual;
	GdkColor*		function(GdkColor * color)
			gdk_color_copy;
	void		function(GdkColor * color)
			gdk_color_free;
	gint		function(gchar * spec, GdkColor * color)
			gdk_color_parse;
	guint		function(GdkColor * colora)
			gdk_color_hash;
	gboolean		function(GdkColor * colora, GdkColor * colorb)
			gdk_color_equal;
	GType		function()
			gdk_color_get_type;
	GType		function()
			gdk_cursor_get_type;
	GdkCursor*		function(GdkDisplay * display, GdkCursorType cursor_type)
			gdk_cursor_new_for_display;
	GdkCursor*		function(GdkCursorType cursor_type)
			gdk_cursor_new;
	GdkCursor*		function(GdkPixmap * source, GdkPixmap * mask, GdkColor * fg, GdkColor * bg, gint x, gint y)
			gdk_cursor_new_from_pixmap;
	GdkDisplay*		function(GdkCursor * cursor)
			gdk_cursor_get_display;
	GdkCursor*		function(GdkCursor * cursor)
			gdk_cursor_ref;
	void		function(GdkCursor * cursor)
			gdk_cursor_unref;
	GdkDisplay*		function(gchar * display_name)
			gdk_display_open;
	gchar*		function(GdkDisplay * display)
			gdk_display_get_name;
	gint		function(GdkDisplay * display)
			gdk_display_get_n_screens;
	GdkScreen*		function(GdkDisplay * display, gint screen_num)
			gdk_display_get_screen;
	GdkScreen*		function(GdkDisplay * display)
			gdk_display_get_default_screen;
	void		function(GdkDisplay * display, guint32 time_)
			gdk_display_pointer_ungrab;
	void		function(GdkDisplay * display, guint32 time_)
			gdk_display_keyboard_ungrab;
	gboolean		function(GdkDisplay * display)
			gdk_display_pointer_is_grabbed;
	void		function(GdkDisplay * display)
			gdk_display_beep;
	void		function(GdkDisplay * display)
			gdk_display_sync;
	void		function(GdkDisplay * display)
			gdk_display_close;
	GList*		function(GdkDisplay * display)
			gdk_display_list_devices;
	GdkEvent*		function(GdkDisplay * display)
			gdk_display_get_event;
	GdkEvent*		function(GdkDisplay * display)
			gdk_display_peek_event;
	void		function(GdkDisplay * display, GdkEvent * event)
			gdk_display_put_event;
	void		function(GdkDisplay * display, GdkAtom message_type, GdkFilterFunc func, gpointer data)
			gdk_display_add_client_message_filter;
	void		function(GdkDisplay * display, guint msec)
			gdk_display_set_double_click_time;
	GdkDisplay*		function()
			gdk_display_get_default;
	GdkDevice*		function(GdkDisplay * display)
			gdk_display_get_core_pointer;
	void		function(GdkDisplay * display, GdkScreen * *screen, gint * x, gint * y, GdkModifierType * mask)
			gdk_display_get_pointer;
	GdkWindow*		function(GdkDisplay * display, gint * win_x, gint * win_y)
			gdk_display_get_window_at_pointer;
	GdkDisplayPointerHooks*		function(GdkDisplay * display, GdkDisplayPointerHooks * new_hooks)
			gdk_display_set_pointer_hooks;
	GdkDisplay*		function()
			gdk_display_open_default_libgtk_only;
	void		function(GdkDrawable * drawable, gint * width, gint * height)
			gdk_drawable_get_size;
	void		function(GdkDrawable * drawable, GdkColormap * colormap)
			gdk_drawable_set_colormap;
	GdkColormap*		function(GdkDrawable * drawable)
			gdk_drawable_get_colormap;
	GdkVisual*		function(GdkDrawable * drawable)
			gdk_drawable_get_visual;
	gint		function(GdkDrawable * drawable)
			gdk_drawable_get_depth;
	GdkScreen*		function(GdkDrawable * drawable)
			gdk_drawable_get_screen;
	GdkDisplay*		function(GdkDrawable * drawable)
			gdk_drawable_get_display;
	void		function(GdkDrawable * drawable, GdkGC * gc, gint x, gint y)
			gdk_draw_point;
	void		function(GdkDrawable * drawable, GdkGC * gc, gint x1_, gint y1_, gint x2_, gint y2_)
			gdk_draw_line;
	void		function(GdkDrawable * drawable, GdkGC * gc, gboolean filled, gint x, gint y, gint width, gint height)
			gdk_draw_rectangle;
	void		function(GdkDrawable * drawable, GdkGC * gc, gboolean filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2)
			gdk_draw_arc;
	void		function(GdkDrawable * drawable, GdkGC * gc, gboolean filled, GdkPoint * points, gint npoints)
			gdk_draw_polygon;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkDrawable * src, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)
			gdk_draw_drawable;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkImage * image, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)
			gdk_draw_image;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkPoint * points, gint npoints)
			gdk_draw_points;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkSegment * segs, gint nsegs)
			gdk_draw_segments;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkPoint * points, gint npoints)
			gdk_draw_lines;
	void		function(GdkDrawable * drawable, GdkGC * gc, GdkPixbuf * pixbuf, gint src_x, gint src_y, gint dest_x, gint dest_y, gint width, gint height, GdkRgbDither dither, gint x_dither, gint y_dither)
			gdk_draw_pixbuf;
	GdkImage*		function(GdkDrawable * drawable, gint x, gint y, gint width, gint height)
			gdk_drawable_get_image;
	GdkRegion*		function(GdkDrawable * drawable)
			gdk_drawable_get_clip_region;
	GdkRegion*		function(GdkDrawable * drawable)
			gdk_drawable_get_visible_region;
	GdkFont*		function(PangoFontDescription * font_desc)
			gdk_font_from_description;
	void		function(GdkDrawable * drawable, GdkFont * font, GdkGC * gc, gint x, gint y, char* s)
			gdk_draw_string;
	void		function(GdkGC * gc, GdkGCValues * values)
			gdk_gc_get_values;
	void		function(GdkGC * gc, GdkGCValues * values, GdkGCValuesMask values_mask)
			gdk_gc_set_values;
	void		function(GdkGC * gc, GdkColor * color)
			gdk_gc_set_foreground;
	void		function(GdkGC * gc, GdkColor * color)
			gdk_gc_set_background;
	void		function(GdkGC * gc, GdkFunction funct)
			gdk_gc_set_function;
	void		function(GdkGC * gc, GdkFill fill)
			gdk_gc_set_fill;
	void		function(GdkGC * gc, GdkPixmap * tile)
			gdk_gc_set_tile;
	void		function(GdkGC * gc, GdkPixmap * stipple)
			gdk_gc_set_stipple;
	void		function(GdkGC * gc, gint x, gint y)
			gdk_gc_set_ts_origin;
	void		function(GdkGC * gc, gint x, gint y)
			gdk_gc_set_clip_origin;
	void		function(GdkGC * gc, GdkBitmap * mask)
			gdk_gc_set_clip_mask;
	void		function(GdkGC * gc, GdkRectangle * rectangle)
			gdk_gc_set_clip_rectangle;
	void		function(GdkGC * gc, GdkRegion * region)
			gdk_gc_set_clip_region;
	void		function(GdkGC * gc, GdkSubwindowMode mode)
			gdk_gc_set_subwindow;
	void		function(GdkGC * gc, gboolean exposures)
			gdk_gc_set_exposures;
	void		function(GdkGC * gc, gint line_width, GdkLineStyle line_style, GdkCapStyle cap_style, GdkJoinStyle join_style)
			gdk_gc_set_line_attributes;
	void		function(GdkGC * gc, gint dash_offset, gint8 dash_list[], gint n)
			gdk_gc_set_dashes;
	void		function(GdkGC * gc, gint x_offset, gint y_offset)
			gdk_gc_offset;
	void		function(GdkGC * dst_gc, GdkGC * src_gc)
			gdk_gc_copy;
	void		function(GdkGC * gc, GdkColormap * colormap)
			gdk_gc_set_colormap;
	GdkColormap*		function(GdkGC * gc)
			gdk_gc_get_colormap;
	void		function(GdkGC * gc, GdkColor * color)
			gdk_gc_set_rgb_fg_color;
	void		function(GdkGC * gc, GdkColor * color)
			gdk_gc_set_rgb_bg_color;
	GdkScreen*		function(GdkGC * gc)
			gdk_gc_get_screen;
	void		function(GdkPixbuf * pixbuf, GdkBitmap * bitmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height, int alpha_threshold)
			gdk_pixbuf_render_threshold_alpha;
	void		function(GdkPixbuf * pixbuf, GdkDrawable * drawable, GdkGC * gc, int src_x, int src_y, int dest_x, int dest_y, int width, int height, GdkRgbDither dither, int x_dither, int y_dither)
			gdk_pixbuf_render_to_drawable;
	void		function(GdkPixbuf * pixbuf, GdkColormap * colormap, GdkPixmap * *pixmap_return, GdkBitmap * *mask_return, int alpha_threshold)
			gdk_pixbuf_render_pixmap_and_mask_for_colormap;
	void		function(GdkPixbuf * pixbuf, GdkPixmap * *pixmap_return, GdkBitmap * *mask_return, int alpha_threshold)
			gdk_pixbuf_render_pixmap_and_mask;
	GdkPixbuf*		function(GdkPixbuf * dest, GdkDrawable * src, GdkColormap * cmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height)
			gdk_pixbuf_get_from_drawable;
	GdkPixbuf*		function(GdkPixbuf * dest, GdkImage * src, GdkColormap * cmap, int src_x, int src_y, int dest_x, int dest_y, int width, int height)
			gdk_pixbuf_get_from_image;
	GType		function()
			gdk_pixbuf_get_type;
	GdkColorspace		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_colorspace;
	int		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_n_channels;
	gboolean		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_has_alpha;
	int		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_bits_per_sample;
	guchar*		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_pixels;
	int		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_width;
	int		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_height;
	int		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_get_rowstride;
	GdkPixbuf*		function(GdkColorspace colorspace, gboolean has_alpha, int bits_per_sample, int width, int height)
			gdk_pixbuf_new;
	GdkPixbuf*		function(GdkPixbuf * pixbuf)
			gdk_pixbuf_copy;
	GdkPixbuf*		function(GdkPixbuf * src_pixbuf, int src_x, int src_y, int width, int height)
			gdk_pixbuf_new_subpixbuf;
	GdkPixbuf*		function(char * filename, GError * *error)
			gdk_pixbuf_new_from_file;
	GdkPixbuf*		function(guchar * data, GdkColorspace colorspace, gboolean has_alpha, int bits_per_sample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroy_fn, gpointer destroy_fn_data)
			gdk_pixbuf_new_from_data;
	GdkPixbuf*		function(char * *data)
			gdk_pixbuf_new_from_xpm_data;
	GdkPixbuf*		function(gint data_length, guint8 * data, gboolean copy_pixels, GError * *error)
			gdk_pixbuf_new_from_inline;
	void		function(GdkPixbuf * pixbuf, guint32 pixel)
			gdk_pixbuf_fill;
	gboolean		function(GdkPixbuf * pixbuf, char * filename, char * type, GError * *error, ...)
			gdk_pixbuf_save;
	gboolean		function(GdkPixbuf * pixbuf, char * filename, char * type, char * *option_keys, char * *option_values, GError * *error)
			gdk_pixbuf_savev;
	GdkPixbuf*		function(GdkPixbuf * pixbuf, gboolean substitute_color, guchar r, guchar g, guchar b)
			gdk_pixbuf_add_alpha;
	void		function(GdkPixbuf * src_pixbuf, int src_x, int src_y, int width, int height, GdkPixbuf * dest_pixbuf, int dest_x, int dest_y)
			gdk_pixbuf_copy_area;
	void		function(GdkPixbuf * src, GdkPixbuf * dest, gfloat saturation, gboolean pixelate)
			gdk_pixbuf_saturate_and_pixelate;
	void		function(GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type)
			gdk_pixbuf_scale;
	void		function(GdkPixbuf * src, GdkPixbuf * dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type, int overall_alpha)
			gdk_pixbuf_composite;
	GdkPixbuf*		function(GdkPixbuf * src, int dest_width, int dest_height, GdkInterpType interp_type)
			gdk_pixbuf_scale_simple;
	GdkPixbuf*		function(GdkPixbuf * src, int dest_width, int dest_height, GdkInterpType interp_type, int overall_alpha, int check_size, guint32 color1, guint32 color2)
			gdk_pixbuf_composite_color_simple;
	GType		function()
			gdk_pixbuf_animation_get_type;
	GdkPixbufAnimation*		function(char * filename, GError * *error)
			gdk_pixbuf_animation_new_from_file;
	void		function(GdkPixbufAnimation * animation)
			gdk_pixbuf_animation_unref;
	int		function(GdkPixbufAnimation * animation)
			gdk_pixbuf_animation_get_width;
	int		function(GdkPixbufAnimation * animation)
			gdk_pixbuf_animation_get_height;
	gboolean		function(GdkPixbufAnimation * animation)
			gdk_pixbuf_animation_is_static_image;
	GdkPixbuf*		function(GdkPixbufAnimation * animation)
			gdk_pixbuf_animation_get_static_image;
	GdkPixbufAnimationIter*		function(GdkPixbufAnimation * animation, GTimeVal * start_time)
			gdk_pixbuf_animation_get_iter;
	GType		function()
			gdk_pixbuf_animation_iter_get_type;
	int		function(GdkPixbufAnimationIter * iter)
			gdk_pixbuf_animation_iter_get_delay_time;
	GdkPixbuf*		function(GdkPixbufAnimationIter * iter)
			gdk_pixbuf_animation_iter_get_pixbuf;
	gboolean		function(GdkPixbufAnimationIter * iter)
			gdk_pixbuf_animation_iter_on_currently_loading_frame;
	gboolean		function(GdkPixbufAnimationIter * iter, GTimeVal * current_time)
			gdk_pixbuf_animation_iter_advance;
	gchar*		function(GdkPixbuf * pixbuf, gchar * key)
			gdk_pixbuf_get_option;
	GSList*		function()
			gdk_pixbuf_get_formats;
	gchar*		function(GdkPixbufFormat * format)
			gdk_pixbuf_format_get_name;
	gchar*		function(GdkPixbufFormat * format)
			gdk_pixbuf_format_get_description;
	gchar*		function(GdkPixbufFormat * format)
			gdk_pixbuf_format_get_mime_types;
	gchar*		function(GdkPixbufFormat * format)
			gdk_pixbuf_format_get_extensions;
	gboolean		function(GdkPixbufFormat * format)
			gdk_pixbuf_format_is_writable;
	GdkPixmap*		function(GdkDrawable * drawable, gint width, gint height, gint depth)
			gdk_pixmap_new;
	GdkPixmap*		function(GdkDrawable * drawable, gchar * data, gint width, gint height, gint depth, GdkColor * fg, GdkColor * bg)
			gdk_pixmap_create_from_data;
	GdkPixmap*		function(GdkDrawable * drawable, GdkBitmap * *mask, GdkColor * transparent_color, gchar * filename)
			gdk_pixmap_create_from_xpm;
	GdkPixmap*		function(GdkDrawable * drawable, GdkColormap * colormap, GdkBitmap * *mask, GdkColor * transparent_color, gchar * filename)
			gdk_pixmap_colormap_create_from_xpm;
	GdkPixmap*		function(GdkDrawable * drawable, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data)
			gdk_pixmap_create_from_xpm_d;
	GdkPixmap*		function(GdkDrawable * drawable, GdkColormap * colormap, GdkBitmap * *mask, GdkColor * transparent_color, gchar * *data)
			gdk_pixmap_colormap_create_from_xpm_d;
	GdkColormap*		function(GdkScreen * screen)
			gdk_screen_get_default_colormap;
	void		function(GdkScreen * screen, GdkColormap * colormap)
			gdk_screen_set_default_colormap;
	GdkColormap*		function(GdkScreen * screen)
			gdk_screen_get_system_colormap;
	GdkVisual*		function(GdkScreen * screen)
			gdk_screen_get_system_visual;
	GdkColormap*		function(GdkScreen * screen)
			gdk_screen_get_rgb_colormap;
	GdkVisual*		function(GdkScreen * screen)
			gdk_screen_get_rgb_visual;
	GdkWindow*		function(GdkScreen * screen)
			gdk_screen_get_root_window;
	GdkDisplay*		function(GdkScreen * screen)
			gdk_screen_get_display;
	gint		function(GdkScreen * screen)
			gdk_screen_get_number;
	gint		function(GdkScreen * screen)
			gdk_screen_get_width;
	gint		function(GdkScreen * screen)
			gdk_screen_get_height;
	gint		function(GdkScreen * screen)
			gdk_screen_get_width_mm;
	gint		function(GdkScreen * screen)
			gdk_screen_get_height_mm;
	GList*		function(GdkScreen * screen)
			gdk_screen_list_visuals;
	GList*		function(GdkScreen * screen)
			gdk_screen_get_toplevel_windows;
	gchar*		function(GdkScreen * screen)
			gdk_screen_make_display_name;
	gint		function(GdkScreen * screen)
			gdk_screen_get_n_monitors;
	void		function(GdkScreen * screen, gint monitor_num, GdkRectangle * dest)
			gdk_screen_get_monitor_geometry;
	gint		function(GdkScreen * screen, gint x, gint y)
			gdk_screen_get_monitor_at_point;
	gint		function(GdkScreen * screen, GdkWindow * window)
			gdk_screen_get_monitor_at_window;
	GdkScreen*		function()
			gdk_screen_get_default;
	gboolean		function(GdkScreen * screen, gchar * name, GValue * value)
			gdk_screen_get_setting;
	GType		function()
			gdk_visual_get_type;
	gint		function()
			gdk_visual_get_best_depth;
	GdkVisualType		function()
			gdk_visual_get_best_type;
	GdkVisual*		function()
			gdk_visual_get_system;
	GdkVisual*		function()
			gdk_visual_get_best;
	GdkVisual*		function(gint depth)
			gdk_visual_get_best_with_depth;
	GdkVisual*		function(GdkVisualType visual_type)
			gdk_visual_get_best_with_type;
	GdkVisual*		function(gint depth, GdkVisualType visual_type)
			gdk_visual_get_best_with_both;
	void		function(gint * *depths, gint * count)
			gdk_query_depths;
	void		function(GdkVisualType * *visual_types, gint * count)
			gdk_query_visual_types;
	GList*		function()
			gdk_list_visuals;
	GdkScreen*		function(GdkVisual * visual)
			gdk_visual_get_screen;
	void		function()
			gdk_threads_init;
	void		function()
			gdk_threads_enter;
	void		function()
			gdk_threads_leave;
	void		function()
			gdk_flush;
	void		function(GdkWindow* window,GdkColor* color)
			gdk_window_set_background;
	void		function(GdkWindow* window,GdkPixmap* pixmap, gboolean parent_relative)
			gdk_window_set_back_pixmap;
	void		function(GdkWindow* window, GdkCursor* cursor)
			gdk_window_set_cursor;
			
			
//	// added manually by Antonio Monteiro
//	GType   function()
//			gdk_window_object_get_type;
//	GdkWindow*    function                   (GdkWindow     *parent,
//													GdkWindowAttr *attributes,
//													gint           attributes_mask)
//			gdk_window_new;
//	void          function               (GdkWindow     *window)
//			gdk_window_destroy;
//	GdkWindowType function       (GdkWindow     *window)
//			gdk_window_get_window_type;
//	GdkWindow*    function            (gint          *win_x,
//													gint          *win_y)
//			gdk_window_at_pointer;
//	void          function                  (GdkWindow     *window)
//			gdk_window_show;
//	void          function                  (GdkWindow     *window)
//			gdk_window_hide;
//	void          function              (GdkWindow     *window)
//			gdk_window_withdraw;
//	void          function         (GdkWindow     *window)
//			gdk_window_show_unraised;
//	void          function                  (GdkWindow     *window,
//													gint           x,
//													gint           y)
//			gdk_window_move;
//	void          function                (GdkWindow     *window,
//													gint           width,
//													gint           height)
//			gdk_window_resize;
//	void          function           (GdkWindow     *window,
//													gint           x,
//													gint           y,
//													gint           width,
//													gint           height)
//			gdk_window_move_resize;
//	void          function              (GdkWindow     *window,
//													GdkWindow     *new_parent,
//													gint           x,
//													gint           y)
//			gdk_window_reparent;
//	void          function                 (GdkWindow     *window)
//			gdk_window_clear;
//	void          function            (GdkWindow     *window,
//													gint           x,
//													gint           y,
//													gint           width,
//													gint           height)
//			gdk_window_clear_area;
//	void          function          (GdkWindow     *window,
//													gint           x,
//													gint           y,
//													gint           width,
//													gint           height)
//			gdk_window_clear_area_e;
//	void          function                 (GdkWindow     *window)
//			gdk_window_raise;
//	void          function                 (GdkWindow     *window)
//			gdk_window_lower;
//	void          function                 (GdkWindow     *window,
//													guint32        timestamp)
//			gdk_window_focus;
//	void          function         (GdkWindow     *window,
//													gpointer       user_data)
//			gdk_window_set_user_data;
//	void          function (GdkWindow     *window,
//													gboolean       override_redirect)
//			gdk_window_set_override_redirect;
//	void          function      (GdkWindow     *window,
//								gboolean       accept_focus)
//			gdk_window_set_accept_focus;
//	void          function      (GdkWindow     *window,
//								gboolean       focus_on_map)
//			gdk_window_set_focus_on_map;
//	void          function            (GdkWindow     *window,
//													GdkFilterFunc  funct,
//													gpointer       data)
//			gdk_window_add_filter;
//	void          function         (GdkWindow     *window,
//													GdkFilterFunc  funct,
//													gpointer       data)
//			gdk_window_remove_filter;
//	void          function                (GdkWindow *window,
//													gint       dx,
//													gint       dy)
//			gdk_window_scroll;
	
		
			
	GType		function()
			gdk_event_get_type;
	gboolean		function()
			gdk_events_pending;
	GdkEvent*		function()
			gdk_event_get;
	GdkEvent*		function()
			gdk_event_peek;
	GdkEvent*		function(GdkWindow * window)
			gdk_event_get_graphics_expose;
	void		function(GdkEvent * event)
			gdk_event_put;
	GdkEvent*		function(GdkEventType type)
			gdk_event_new;
	GdkEvent*		function(GdkEvent * event)
			gdk_event_copy;
	void		function(GdkEvent * event)
			gdk_event_free;
	guint32		function(GdkEvent * event)
			gdk_event_get_time;
	gboolean		function(GdkEvent * event, GdkModifierType * state)
			gdk_event_get_state;
	gboolean		function(GdkEvent * event, gdouble * x_win, gdouble * y_win)
			gdk_event_get_coords;
	gboolean		function(GdkEvent * event, gdouble * x_root, gdouble * y_root)
			gdk_event_get_root_coords;
	gboolean		function(GdkEvent * event, GdkAxisUse axis_use, gdouble * value)
			gdk_event_get_axis;
	void		function(GdkEventFunc func, gpointer data, GDestroyNotify notify)
			gdk_event_handler_set;
	void		function(GdkEvent * event, GdkScreen * screen)
			gdk_event_set_screen;
	GdkScreen*		function(GdkEvent * event)
			gdk_event_get_screen;
	void		function(gboolean show_events)
			gdk_set_show_events;
	gboolean		function()
			gdk_get_show_events;
}


Symbol[] gdkLinks =
[
	{ "gdk_bitmap_create_from_data",  cast(void**)& gdk_bitmap_create_from_data },
	{ "gdk_colormap_get_type",  cast(void**)& gdk_colormap_get_type },
	{ "gdk_colormap_new",  cast(void**)& gdk_colormap_new },
	{ "gdk_colormap_get_system",  cast(void**)& gdk_colormap_get_system },
	{ "gdk_colormap_alloc_color",  cast(void**)& gdk_colormap_alloc_color },
	{ "gdk_colormap_free_colors",  cast(void**)& gdk_colormap_free_colors },
	{ "gdk_colormap_query_color",  cast(void**)& gdk_colormap_query_color },
	{ "gdk_colormap_get_visual",  cast(void**)& gdk_colormap_get_visual },
	{ "gdk_color_copy",  cast(void**)& gdk_color_copy },
	{ "gdk_color_free",  cast(void**)& gdk_color_free },
	{ "gdk_color_parse",  cast(void**)& gdk_color_parse },
	{ "gdk_color_hash",  cast(void**)& gdk_color_hash },
	{ "gdk_color_equal",  cast(void**)& gdk_color_equal },
	{ "gdk_color_get_type",  cast(void**)& gdk_color_get_type },
	{ "gdk_cursor_get_type",  cast(void**)& gdk_cursor_get_type },
	{ "gdk_cursor_new_for_display",  cast(void**)& gdk_cursor_new_for_display },
	{ "gdk_cursor_new",  cast(void**)& gdk_cursor_new },
	{ "gdk_cursor_new_from_pixmap",  cast(void**)& gdk_cursor_new_from_pixmap },
	{ "gdk_cursor_get_display",  cast(void**)& gdk_cursor_get_display },
	{ "gdk_cursor_ref",  cast(void**)& gdk_cursor_ref },
	{ "gdk_cursor_unref",  cast(void**)& gdk_cursor_unref },
	{ "gdk_display_open",  cast(void**)& gdk_display_open },
	{ "gdk_display_get_name",  cast(void**)& gdk_display_get_name },
	{ "gdk_display_get_n_screens",  cast(void**)& gdk_display_get_n_screens },
	{ "gdk_display_get_screen",  cast(void**)& gdk_display_get_screen },
	{ "gdk_display_get_default_screen",  cast(void**)& gdk_display_get_default_screen },
	{ "gdk_display_pointer_ungrab",  cast(void**)& gdk_display_pointer_ungrab },
	{ "gdk_display_keyboard_ungrab",  cast(void**)& gdk_display_keyboard_ungrab },
	{ "gdk_display_pointer_is_grabbed",  cast(void**)& gdk_display_pointer_is_grabbed },
	{ "gdk_display_beep",  cast(void**)& gdk_display_beep },
	{ "gdk_display_sync",  cast(void**)& gdk_display_sync },
	{ "gdk_display_close",  cast(void**)& gdk_display_close },
	{ "gdk_display_list_devices",  cast(void**)& gdk_display_list_devices },
	{ "gdk_display_get_event",  cast(void**)& gdk_display_get_event },
	{ "gdk_display_peek_event",  cast(void**)& gdk_display_peek_event },
	{ "gdk_display_put_event",  cast(void**)& gdk_display_put_event },
	{ "gdk_display_add_client_message_filter",  cast(void**)& gdk_display_add_client_message_filter },
	{ "gdk_display_set_double_click_time",  cast(void**)& gdk_display_set_double_click_time },
	{ "gdk_display_get_default",  cast(void**)& gdk_display_get_default },
	{ "gdk_display_get_core_pointer",  cast(void**)& gdk_display_get_core_pointer },
	{ "gdk_display_get_pointer",  cast(void**)& gdk_display_get_pointer },
	{ "gdk_display_get_window_at_pointer",  cast(void**)& gdk_display_get_window_at_pointer },
	{ "gdk_display_set_pointer_hooks",  cast(void**)& gdk_display_set_pointer_hooks },
	{ "gdk_display_open_default_libgtk_only",  cast(void**)& gdk_display_open_default_libgtk_only },
	{ "gdk_drawable_get_size",  cast(void**)& gdk_drawable_get_size },
	{ "gdk_drawable_set_colormap",  cast(void**)& gdk_drawable_set_colormap },
	{ "gdk_drawable_get_colormap",  cast(void**)& gdk_drawable_get_colormap },
	{ "gdk_drawable_get_visual",  cast(void**)& gdk_drawable_get_visual },
	{ "gdk_drawable_get_depth",  cast(void**)& gdk_drawable_get_depth },
	{ "gdk_drawable_get_screen",  cast(void**)& gdk_drawable_get_screen },
	{ "gdk_drawable_get_display",  cast(void**)& gdk_drawable_get_display },
	{ "gdk_draw_point",  cast(void**)& gdk_draw_point },
	{ "gdk_draw_line",  cast(void**)& gdk_draw_line },
	{ "gdk_draw_rectangle",  cast(void**)& gdk_draw_rectangle },
	{ "gdk_draw_arc",  cast(void**)& gdk_draw_arc },
	{ "gdk_draw_polygon",  cast(void**)& gdk_draw_polygon },
	{ "gdk_draw_drawable",  cast(void**)& gdk_draw_drawable },
	{ "gdk_draw_image",  cast(void**)& gdk_draw_image },
	{ "gdk_draw_points",  cast(void**)& gdk_draw_points },
	{ "gdk_draw_segments",  cast(void**)& gdk_draw_segments },
	{ "gdk_draw_lines",  cast(void**)& gdk_draw_lines },
	{ "gdk_draw_pixbuf",  cast(void**)& gdk_draw_pixbuf },
	{ "gdk_drawable_get_image",  cast(void**)& gdk_drawable_get_image },
	{ "gdk_drawable_get_clip_region",  cast(void**)& gdk_drawable_get_clip_region },
	{ "gdk_drawable_get_visible_region",  cast(void**)& gdk_drawable_get_visible_region },
	{ "gdk_font_from_description",  cast(void**)& gdk_font_from_description },
	{ "gdk_draw_string",  cast(void**)& gdk_draw_string },
	{ "gdk_gc_get_values",  cast(void**)& gdk_gc_get_values },
	{ "gdk_gc_set_values",  cast(void**)& gdk_gc_set_values },
	{ "gdk_gc_set_foreground",  cast(void**)& gdk_gc_set_foreground },
	{ "gdk_gc_set_background",  cast(void**)& gdk_gc_set_background },
	{ "gdk_gc_set_function",  cast(void**)& gdk_gc_set_function },
	{ "gdk_gc_set_fill",  cast(void**)& gdk_gc_set_fill },
	{ "gdk_gc_set_tile",  cast(void**)& gdk_gc_set_tile },
	{ "gdk_gc_set_stipple",  cast(void**)& gdk_gc_set_stipple },
	{ "gdk_gc_set_ts_origin",  cast(void**)& gdk_gc_set_ts_origin },
	{ "gdk_gc_set_clip_origin",  cast(void**)& gdk_gc_set_clip_origin },
	{ "gdk_gc_set_clip_mask",  cast(void**)& gdk_gc_set_clip_mask },
	{ "gdk_gc_set_clip_rectangle",  cast(void**)& gdk_gc_set_clip_rectangle },
	{ "gdk_gc_set_clip_region",  cast(void**)& gdk_gc_set_clip_region },
	{ "gdk_gc_set_subwindow",  cast(void**)& gdk_gc_set_subwindow },
	{ "gdk_gc_set_exposures",  cast(void**)& gdk_gc_set_exposures },
	{ "gdk_gc_set_line_attributes",  cast(void**)& gdk_gc_set_line_attributes },
	{ "gdk_gc_set_dashes",  cast(void**)& gdk_gc_set_dashes },
	{ "gdk_gc_offset",  cast(void**)& gdk_gc_offset },
	{ "gdk_gc_copy",  cast(void**)& gdk_gc_copy },
	{ "gdk_gc_set_colormap",  cast(void**)& gdk_gc_set_colormap },
	{ "gdk_gc_get_colormap",  cast(void**)& gdk_gc_get_colormap },
	{ "gdk_gc_set_rgb_fg_color",  cast(void**)& gdk_gc_set_rgb_fg_color },
	{ "gdk_gc_set_rgb_bg_color",  cast(void**)& gdk_gc_set_rgb_bg_color },
	{ "gdk_gc_get_screen",  cast(void**)& gdk_gc_get_screen },
	{ "gdk_screen_get_default_colormap",  cast(void**)& gdk_screen_get_default_colormap },
	{ "gdk_screen_set_default_colormap",  cast(void**)& gdk_screen_set_default_colormap },
	{ "gdk_screen_get_system_colormap",  cast(void**)& gdk_screen_get_system_colormap },
	{ "gdk_screen_get_system_visual",  cast(void**)& gdk_screen_get_system_visual },
	{ "gdk_screen_get_rgb_colormap",  cast(void**)& gdk_screen_get_rgb_colormap },
	{ "gdk_screen_get_rgb_visual",  cast(void**)& gdk_screen_get_rgb_visual },
	{ "gdk_screen_get_root_window",  cast(void**)& gdk_screen_get_root_window },
	{ "gdk_screen_get_display",  cast(void**)& gdk_screen_get_display },
	{ "gdk_screen_get_number",  cast(void**)& gdk_screen_get_number },
	{ "gdk_screen_get_width",  cast(void**)& gdk_screen_get_width },
	{ "gdk_screen_get_height",  cast(void**)& gdk_screen_get_height },
	{ "gdk_screen_get_width_mm",  cast(void**)& gdk_screen_get_width_mm },
	{ "gdk_screen_get_height_mm",  cast(void**)& gdk_screen_get_height_mm },
	{ "gdk_screen_list_visuals",  cast(void**)& gdk_screen_list_visuals },
	{ "gdk_screen_get_toplevel_windows",  cast(void**)& gdk_screen_get_toplevel_windows },
	{ "gdk_screen_make_display_name",  cast(void**)& gdk_screen_make_display_name },
	{ "gdk_screen_get_n_monitors",  cast(void**)& gdk_screen_get_n_monitors },
	{ "gdk_screen_get_monitor_geometry",  cast(void**)& gdk_screen_get_monitor_geometry },
	{ "gdk_screen_get_monitor_at_point",  cast(void**)& gdk_screen_get_monitor_at_point },
	{ "gdk_screen_get_monitor_at_window",  cast(void**)& gdk_screen_get_monitor_at_window },
	{ "gdk_screen_get_default",  cast(void**)& gdk_screen_get_default },
	{ "gdk_screen_get_setting",  cast(void**)& gdk_screen_get_setting },
	{ "gdk_visual_get_type",  cast(void**)& gdk_visual_get_type },
	{ "gdk_visual_get_best_depth",  cast(void**)& gdk_visual_get_best_depth },
	{ "gdk_visual_get_best_type",  cast(void**)& gdk_visual_get_best_type },
	{ "gdk_visual_get_system",  cast(void**)& gdk_visual_get_system },
	{ "gdk_visual_get_best",  cast(void**)& gdk_visual_get_best },
	{ "gdk_visual_get_best_with_depth",  cast(void**)& gdk_visual_get_best_with_depth },
	{ "gdk_visual_get_best_with_type",  cast(void**)& gdk_visual_get_best_with_type },
	{ "gdk_visual_get_best_with_both",  cast(void**)& gdk_visual_get_best_with_both },
	{ "gdk_query_depths",  cast(void**)& gdk_query_depths },
	{ "gdk_query_visual_types",  cast(void**)& gdk_query_visual_types },
	{ "gdk_list_visuals",  cast(void**)& gdk_list_visuals },
	{ "gdk_visual_get_screen",  cast(void**)& gdk_visual_get_screen },
	{ "gdk_pixbuf_render_threshold_alpha",  cast(void**)& gdk_pixbuf_render_threshold_alpha },
	{ "gdk_pixbuf_render_to_drawable",  cast(void**)& gdk_pixbuf_render_to_drawable },
	{ "gdk_pixbuf_render_pixmap_and_mask_for_colormap",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask_for_colormap },
	{ "gdk_pixbuf_render_pixmap_and_mask",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask },
	{ "gdk_pixbuf_get_from_drawable",  cast(void**)& gdk_pixbuf_get_from_drawable },
	{ "gdk_pixbuf_get_from_image",  cast(void**)& gdk_pixbuf_get_from_image },
	{ "gdk_pixmap_new",  cast(void**)& gdk_pixmap_new },
	{ "gdk_pixmap_create_from_data",  cast(void**)& gdk_pixmap_create_from_data },
	{ "gdk_pixmap_create_from_xpm",  cast(void**)& gdk_pixmap_create_from_xpm },
	{ "gdk_pixmap_colormap_create_from_xpm",  cast(void**)& gdk_pixmap_colormap_create_from_xpm },
	{ "gdk_pixmap_create_from_xpm_d",  cast(void**)& gdk_pixmap_create_from_xpm_d },
	{ "gdk_pixmap_colormap_create_from_xpm_d",  cast(void**)& gdk_pixmap_colormap_create_from_xpm_d },
	{ "gdk_threads_init",  cast(void**)& gdk_threads_init },
	{ "gdk_threads_enter",  cast(void**)& gdk_threads_enter },
	{ "gdk_threads_leave",  cast(void**)& gdk_threads_leave },	
	{ "gdk_flush",  cast(void**)& gdk_flush },
	{ "gdk_window_set_background",  cast(void**)& gdk_window_set_background },
	{ "gdk_window_set_back_pixmap",  cast(void**)& gdk_window_set_back_pixmap },
	{ "gdk_window_set_cursor",  cast(void**)& gdk_window_set_cursor },
	
//	// added manualy by Antonio Monteiro
//	
//	{ "gdk_window_object_get_type",  cast(void**)& gdk_window_object_get_type },
//	{ "gdk_window_new",  cast(void**)& gdk_window_new },
//	{ "gdk_window_destroy",  cast(void**)& gdk_window_destroy },
//	{ "gdk_window_get_window_type",  cast(void**)& gdk_window_get_window_type },
//	{ "gdk_window_at_pointer",  cast(void**)& gdk_window_at_pointer },
//	{ "gdk_window_show",  cast(void**)& gdk_window_show },
//	{ "gdk_window_hide",  cast(void**)& gdk_window_hide },
//	{ "gdk_window_withdraw",  cast(void**)& gdk_window_withdraw },
//	{ "gdk_window_show_unraised",  cast(void**)& gdk_window_show_unraised },
//	{ "gdk_window_move",  cast(void**)& gdk_window_move },
//	{ "gdk_window_resize",  cast(void**)& gdk_window_resize },
//	{ "gdk_window_move_resize",  cast(void**)& gdk_window_move_resize },
//	{ "gdk_window_reparent",  cast(void**)& gdk_window_reparent },
//	{ "gdk_window_clear",  cast(void**)& gdk_window_clear },
//	{ "gdk_window_clear_area",  cast(void**)& gdk_window_clear_area },
//	{ "gdk_window_clear_area_e",  cast(void**)& gdk_window_clear_area_e },
//	{ "gdk_window_raise",  cast(void**)& gdk_window_raise },
//	{ "gdk_window_lower",  cast(void**)& gdk_window_lower },
//	{ "gdk_window_focus",  cast(void**)& gdk_window_focus },
//	{ "gdk_window_set_user_data",  cast(void**)& gdk_window_set_user_data },
//	{ "gdk_window_set_override_redirect",  cast(void**)& gdk_window_set_override_redirect },
//	{ "gdk_window_set_accept_focus",  cast(void**)& gdk_window_set_accept_focus },
//	{ "gdk_window_set_focus_on_map",  cast(void**)& gdk_window_set_focus_on_map },
//	{ "gdk_window_add_filter",  cast(void**)& gdk_window_add_filter },
//	{ "gdk_window_remove_filter",  cast(void**)& gdk_window_remove_filter },
//	{ "gdk_window_scroll",  cast(void**)& gdk_window_scroll },
	
	
	{ "gdk_event_get_type",  cast(void**)& gdk_event_get_type },
	{ "gdk_events_pending",  cast(void**)& gdk_events_pending },
	{ "gdk_event_get",  cast(void**)& gdk_event_get },
	{ "gdk_event_peek",  cast(void**)& gdk_event_peek },
	{ "gdk_event_get_graphics_expose",  cast(void**)& gdk_event_get_graphics_expose },
	{ "gdk_event_put",  cast(void**)& gdk_event_put },
	{ "gdk_event_new",  cast(void**)& gdk_event_new },
	{ "gdk_event_copy",  cast(void**)& gdk_event_copy },
	{ "gdk_event_free",  cast(void**)& gdk_event_free },
	{ "gdk_event_get_time",  cast(void**)& gdk_event_get_time },
	{ "gdk_event_get_state",  cast(void**)& gdk_event_get_state },
	{ "gdk_event_get_coords",  cast(void**)& gdk_event_get_coords },
	{ "gdk_event_get_root_coords",  cast(void**)& gdk_event_get_root_coords },
	{ "gdk_event_get_axis",  cast(void**)& gdk_event_get_axis },
	{ "gdk_event_handler_set",  cast(void**)& gdk_event_handler_set },
	{ "gdk_event_set_screen",  cast(void**)& gdk_event_set_screen },
	{ "gdk_event_get_screen",  cast(void**)& gdk_event_get_screen },
	{ "gdk_set_show_events",  cast(void**)& gdk_set_show_events },
	{ "gdk_get_show_events",  cast(void**)& gdk_get_show_events }
];

Symbol[] gdkPixbufferLinks = 
[
	{ "gdk_pixbuf_new",  cast(void**)& gdk_pixbuf_new },
	{ "gdk_pixbuf_copy",  cast(void**)& gdk_pixbuf_copy },
	{ "gdk_pixbuf_new_subpixbuf",  cast(void**)& gdk_pixbuf_new_subpixbuf },
	{ "gdk_pixbuf_new_from_file",  cast(void**)& gdk_pixbuf_new_from_file },
	{ "gdk_pixbuf_new_from_data",  cast(void**)& gdk_pixbuf_new_from_data },
	{ "gdk_pixbuf_new_from_xpm_data",  cast(void**)& gdk_pixbuf_new_from_xpm_data },
	{ "gdk_pixbuf_new_from_inline",  cast(void**)& gdk_pixbuf_new_from_inline },
	{ "gdk_pixbuf_fill",  cast(void**)& gdk_pixbuf_fill },
	{ "gdk_pixbuf_save",  cast(void**)& gdk_pixbuf_save },
	{ "gdk_pixbuf_savev",  cast(void**)& gdk_pixbuf_savev },
	{ "gdk_pixbuf_add_alpha",  cast(void**)& gdk_pixbuf_add_alpha },
	{ "gdk_pixbuf_copy_area",  cast(void**)& gdk_pixbuf_copy_area },
	{ "gdk_pixbuf_saturate_and_pixelate",  cast(void**)& gdk_pixbuf_saturate_and_pixelate },
	{ "gdk_pixbuf_scale",  cast(void**)& gdk_pixbuf_scale },
	{ "gdk_pixbuf_composite",  cast(void**)& gdk_pixbuf_composite },
	{ "gdk_pixbuf_scale_simple",  cast(void**)& gdk_pixbuf_scale_simple },
	{ "gdk_pixbuf_composite_color_simple",  cast(void**)& gdk_pixbuf_composite_color_simple },
	{ "gdk_pixbuf_animation_get_type",  cast(void**)& gdk_pixbuf_animation_get_type },
	{ "gdk_pixbuf_animation_new_from_file",  cast(void**)& gdk_pixbuf_animation_new_from_file },
	{ "gdk_pixbuf_animation_unref",  cast(void**)& gdk_pixbuf_animation_unref },
	{ "gdk_pixbuf_animation_get_width",  cast(void**)& gdk_pixbuf_animation_get_width },
	{ "gdk_pixbuf_animation_get_height",  cast(void**)& gdk_pixbuf_animation_get_height },
	{ "gdk_pixbuf_animation_is_static_image",  cast(void**)& gdk_pixbuf_animation_is_static_image },
	{ "gdk_pixbuf_animation_get_static_image",  cast(void**)& gdk_pixbuf_animation_get_static_image },
	{ "gdk_pixbuf_animation_get_iter",  cast(void**)& gdk_pixbuf_animation_get_iter },
	{ "gdk_pixbuf_animation_iter_get_type",  cast(void**)& gdk_pixbuf_animation_iter_get_type },
	{ "gdk_pixbuf_animation_iter_get_delay_time",  cast(void**)& gdk_pixbuf_animation_iter_get_delay_time },
	{ "gdk_pixbuf_animation_iter_get_pixbuf",  cast(void**)& gdk_pixbuf_animation_iter_get_pixbuf },
	{ "gdk_pixbuf_animation_iter_on_currently_loading_frame",  cast(void**)& gdk_pixbuf_animation_iter_on_currently_loading_frame },
	{ "gdk_pixbuf_animation_iter_advance",  cast(void**)& gdk_pixbuf_animation_iter_advance },
	{ "gdk_pixbuf_get_option",  cast(void**)& gdk_pixbuf_get_option },
	{ "gdk_pixbuf_get_formats",  cast(void**)& gdk_pixbuf_get_formats },
	{ "gdk_pixbuf_format_get_name",  cast(void**)& gdk_pixbuf_format_get_name },
	{ "gdk_pixbuf_format_get_description",  cast(void**)& gdk_pixbuf_format_get_description },
	{ "gdk_pixbuf_format_get_mime_types",  cast(void**)& gdk_pixbuf_format_get_mime_types },
	{ "gdk_pixbuf_format_get_extensions",  cast(void**)& gdk_pixbuf_format_get_extensions },
	{ "gdk_pixbuf_format_is_writable",  cast(void**)& gdk_pixbuf_format_is_writable },
	{ "gdk_pixbuf_get_type",  cast(void**)& gdk_pixbuf_get_type },
	{ "gdk_pixbuf_get_colorspace",  cast(void**)& gdk_pixbuf_get_colorspace },
	{ "gdk_pixbuf_get_n_channels",  cast(void**)& gdk_pixbuf_get_n_channels },
	{ "gdk_pixbuf_get_has_alpha",  cast(void**)& gdk_pixbuf_get_has_alpha },
	{ "gdk_pixbuf_get_bits_per_sample",  cast(void**)& gdk_pixbuf_get_bits_per_sample },
	{ "gdk_pixbuf_get_pixels",  cast(void**)& gdk_pixbuf_get_pixels },
	{ "gdk_pixbuf_get_width",  cast(void**)& gdk_pixbuf_get_width },
	{ "gdk_pixbuf_get_height",  cast(void**)& gdk_pixbuf_get_height },
	{ "gdk_pixbuf_get_rowstride",  cast(void**)& gdk_pixbuf_get_rowstride }
];