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

// Adapted from John Reimer's DUI loader modules


module gtkc.gdk;

version(Tango) private import tango.stdc.stdio;
else private import std.stdio;
private import gtkc.gdktypes;
private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gdk_Linker;

static this()
{
 gdk_Linker = new Linker(libPath ~ importLibs[LIBRARY.GDK], libPath ~ importLibs[LIBRARY.GDKPIXBUF] );
 gdk_Linker.link(gdkLinks);
 debug writefln("* Finished static this(): gdk");
}

static ~this()
{
 delete gdk_Linker;
 debug writefln("* Finished static ~this(): gdk");
}

extern(C) 
{	
	// gdk.Gdk
	
	void function(gint* argc, gchar*** argv)gdk_init;
	gboolean function(gint* argc, gchar*** argv)gdk_init_check;
	void function(gint* argc, gchar*** argv)gdk_parse_args;
	gchar* function()gdk_get_display_arg_name;
	gchar* function()gdk_set_locale;
	void function(gchar* smClientId)gdk_set_sm_client_id;
	void function(gint errorCode)gdk_exit;
	void function()gdk_notify_startup_complete;
	void function(gchar* startupId)gdk_notify_startup_complete_with_id;
	char* function()gdk_get_program_class;
	void function(char* programClass)gdk_set_program_class;
	gchar* function()gdk_get_display;
	void function()gdk_flush;
	gint function()gdk_screen_width;
	gint function()gdk_screen_height;
	gint function()gdk_screen_width_mm;
	gint function()gdk_screen_height_mm;
	GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, GdkEventMask eventMask, GdkWindow* confineTo, GdkCursor* cursor, guint32 time)gdk_pointer_grab;
	void function(guint32 time)gdk_pointer_ungrab;
	gboolean function()gdk_pointer_is_grabbed;
	void function(guint msec)gdk_set_double_click_time;
	GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, guint32 time)gdk_keyboard_grab;
	void function(guint32 time)gdk_keyboard_ungrab;
	void function()gdk_beep;
	gboolean function()gdk_get_use_xshm;
	void function(gboolean useXshm)gdk_set_use_xshm;
	void function()gdk_error_trap_push;
	gint function()gdk_error_trap_pop;
	
	// gdk.Display
	
	GdkDisplay* function(gchar* displayName)gdk_display_open;
	GdkDisplay* function()gdk_display_get_default;
	gchar* function(GdkDisplay* display)gdk_display_get_name;
	gint function(GdkDisplay* display)gdk_display_get_n_screens;
	GdkScreen* function(GdkDisplay* display, gint screenNum)gdk_display_get_screen;
	GdkScreen* function(GdkDisplay* display)gdk_display_get_default_screen;
	void function(GdkDisplay* display, guint32 time)gdk_display_pointer_ungrab;
	void function(GdkDisplay* display, guint32 time)gdk_display_keyboard_ungrab;
	gboolean function(GdkDisplay* display)gdk_display_pointer_is_grabbed;
	void function(GdkDisplay* display)gdk_display_beep;
	void function(GdkDisplay* display)gdk_display_sync;
	void function(GdkDisplay* display)gdk_display_flush;
	void function(GdkDisplay* display)gdk_display_close;
	GList* function(GdkDisplay* display)gdk_display_list_devices;
	GdkEvent* function(GdkDisplay* display)gdk_display_get_event;
	GdkEvent* function(GdkDisplay* display)gdk_display_peek_event;
	void function(GdkDisplay* display, GdkEvent* event)gdk_display_put_event;
	void function(GdkDisplay* display, GdkAtom messageType, GdkFilterFunc func, gpointer data)gdk_display_add_client_message_filter;
	void function(GdkDisplay* display, guint msec)gdk_display_set_double_click_time;
	void function(GdkDisplay* display, guint distance)gdk_display_set_double_click_distance;
	void function(GdkDisplay* display, GdkScreen** screen, gint* x, gint* y, GdkModifierType* mask)gdk_display_get_pointer;
	GdkWindow* function(GdkDisplay* display, gint* winX, gint* winY)gdk_display_get_window_at_pointer;
	GdkDisplayPointerHooks* function(GdkDisplay* display, GdkDisplayPointerHooks* newHooks)gdk_display_set_pointer_hooks;
	void function(GdkDisplay* display, GdkScreen* screen, gint x, gint y)gdk_display_warp_pointer;
	gboolean function(GdkDisplay* display)gdk_display_supports_cursor_color;
	gboolean function(GdkDisplay* display)gdk_display_supports_cursor_alpha;
	guint function(GdkDisplay* display)gdk_display_get_default_cursor_size;
	void function(GdkDisplay* display, guint* width, guint* height)gdk_display_get_maximal_cursor_size;
	GdkWindow* function(GdkDisplay* display)gdk_display_get_default_group;
	gboolean function(GdkDisplay* display)gdk_display_supports_selection_notification;
	gboolean function(GdkDisplay* display, GdkAtom selection)gdk_display_request_selection_notification;
	gboolean function(GdkDisplay* display)gdk_display_supports_clipboard_persistence;
	void function(GdkDisplay* display, GdkWindow* clipboardWindow, guint32 time, GdkAtom* targets, gint nTargets)gdk_display_store_clipboard;
	gboolean function(GdkDisplay* display)gdk_display_supports_shapes;
	gboolean function(GdkDisplay* display)gdk_display_supports_input_shapes;
	gboolean function(GdkDisplay* display)gdk_display_supports_composite;
	
	// gdk.DisplayManager
	
	GdkDisplayManager* function()gdk_display_manager_get;
	GdkDisplay* function(GdkDisplayManager* displayManager)gdk_display_manager_get_default_display;
	void function(GdkDisplayManager* displayManager, GdkDisplay* display)gdk_display_manager_set_default_display;
	GSList* function(GdkDisplayManager* displayManager)gdk_display_manager_list_displays;
	GdkDevice* function(GdkDisplay* display)gdk_display_get_core_pointer;
	
	// gdk.Screen
	
	GdkScreen* function()gdk_screen_get_default;
	GdkColormap* function(GdkScreen* screen)gdk_screen_get_default_colormap;
	void function(GdkScreen* screen, GdkColormap* colormap)gdk_screen_set_default_colormap;
	GdkColormap* function(GdkScreen* screen)gdk_screen_get_system_colormap;
	GdkVisual* function(GdkScreen* screen)gdk_screen_get_system_visual;
	GdkColormap* function(GdkScreen* screen)gdk_screen_get_rgb_colormap;
	GdkVisual* function(GdkScreen* screen)gdk_screen_get_rgb_visual;
	GdkColormap* function(GdkScreen* screen)gdk_screen_get_rgba_colormap;
	GdkVisual* function(GdkScreen* screen)gdk_screen_get_rgba_visual;
	gboolean function(GdkScreen* screen)gdk_screen_is_composited;
	GdkWindow* function(GdkScreen* screen)gdk_screen_get_root_window;
	GdkDisplay* function(GdkScreen* screen)gdk_screen_get_display;
	gint function(GdkScreen* screen)gdk_screen_get_number;
	gint function(GdkScreen* screen)gdk_screen_get_width;
	gint function(GdkScreen* screen)gdk_screen_get_height;
	gint function(GdkScreen* screen)gdk_screen_get_width_mm;
	gint function(GdkScreen* screen)gdk_screen_get_height_mm;
	GList* function(GdkScreen* screen)gdk_screen_list_visuals;
	GList* function(GdkScreen* screen)gdk_screen_get_toplevel_windows;
	gchar* function(GdkScreen* screen)gdk_screen_make_display_name;
	gint function(GdkScreen* screen)gdk_screen_get_n_monitors;
	void function(GdkScreen* screen, gint monitorNum, GdkRectangle* dest)gdk_screen_get_monitor_geometry;
	gint function(GdkScreen* screen, gint x, gint y)gdk_screen_get_monitor_at_point;
	gint function(GdkScreen* screen, GdkWindow* window)gdk_screen_get_monitor_at_window;
	void function(GdkScreen* screen, GdkEvent* event)gdk_screen_broadcast_client_message;
	gboolean function(GdkScreen* screen, gchar* name, GValue* value)gdk_screen_get_setting;
	cairo_font_options_t* function(GdkScreen* screen)gdk_screen_get_font_options;
	void function(GdkScreen* screen, cairo_font_options_t* options)gdk_screen_set_font_options;
	gdouble function(GdkScreen* screen)gdk_screen_get_resolution;
	void function(GdkScreen* screen, gdouble dpi)gdk_screen_set_resolution;
	GdkWindow* function(GdkScreen* screen)gdk_screen_get_active_window;
	GList* function(GdkScreen* screen)gdk_screen_get_window_stack;
	gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, GError** error)gdk_spawn_on_screen;
	gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error)gdk_spawn_on_screen_with_pipes;
	gboolean function(GdkScreen* screen, gchar* commandLine, GError** error)gdk_spawn_command_line_on_screen;
	
	// gdk.Rectangle
	
	gboolean function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest)gdk_rectangle_intersect;
	void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest)gdk_rectangle_union;
	
	// gdk.Region
	
	GdkRegion* function()gdk_region_new;
	GdkRegion* function(GdkPoint* points, gint npoints, GdkFillRule fillRule)gdk_region_polygon;
	GdkRegion* function(GdkRegion* region)gdk_region_copy;
	GdkRegion* function(GdkRectangle* rectangle)gdk_region_rectangle;
	void function(GdkRegion* region)gdk_region_destroy;
	void function(GdkRegion* region, GdkRectangle* rectangle)gdk_region_get_clipbox;
	void function(GdkRegion* region, GdkRectangle** rectangles, gint* nRectangles)gdk_region_get_rectangles;
	gboolean function(GdkRegion* region)gdk_region_empty;
	gboolean function(GdkRegion* region1, GdkRegion* region2)gdk_region_equal;
	gboolean function(GdkRegion* region, int x, int y)gdk_region_point_in;
	GdkOverlapType function(GdkRegion* region, GdkRectangle* rectangle)gdk_region_rect_in;
	void function(GdkRegion* region, gint dx, gint dy)gdk_region_offset;
	void function(GdkRegion* region, gint dx, gint dy)gdk_region_shrink;
	void function(GdkRegion* region, GdkRectangle* rect)gdk_region_union_with_rect;
	void function(GdkRegion* source1, GdkRegion* source2)gdk_region_intersect;
	void function(GdkRegion* source1, GdkRegion* source2)gdk_region_union;
	void function(GdkRegion* source1, GdkRegion* source2)gdk_region_subtract;
	void function(GdkRegion* source1, GdkRegion* source2)gdk_region_xor;
	void function(GdkRegion* region, GdkSpan* spans, int nSpans, gboolean sorted, GdkSpanFunc funct, gpointer data)gdk_region_spans_intersect_foreach;
	
	// gdk.GC
	
	GdkGC* function(GdkDrawable* drawable)gdk_gc_new;
	GdkGC* function(GdkDrawable* drawable, GdkGCValues* values, GdkGCValuesMask valuesMask)gdk_gc_new_with_values;
	GdkScreen* function(GdkGC* gc)gdk_gc_get_screen;
	GdkGC* function(GdkGC* gc)gdk_gc_ref;
	void function(GdkGC* gc)gdk_gc_unref;
	void function(GdkGC* gc, GdkGCValues* values, GdkGCValuesMask valuesMask)gdk_gc_set_values;
	void function(GdkGC* gc, GdkGCValues* values)gdk_gc_get_values;
	void function(GdkGC* gc, GdkColor* color)gdk_gc_set_foreground;
	void function(GdkGC* gc, GdkColor* color)gdk_gc_set_background;
	void function(GdkGC* gc, GdkColor* color)gdk_gc_set_rgb_fg_color;
	void function(GdkGC* gc, GdkColor* color)gdk_gc_set_rgb_bg_color;
	void function(GdkGC* gc, GdkFont* font)gdk_gc_set_font;
	void function(GdkGC* gc, GdkFunction funct)gdk_gc_set_function;
	void function(GdkGC* gc, GdkFill fill)gdk_gc_set_fill;
	void function(GdkGC* gc, GdkPixmap* tile)gdk_gc_set_tile;
	void function(GdkGC* gc, GdkPixmap* stipple)gdk_gc_set_stipple;
	void function(GdkGC* gc, gint x, gint y)gdk_gc_set_ts_origin;
	void function(GdkGC* gc, gint x, gint y)gdk_gc_set_clip_origin;
	void function(GdkGC* gc, GdkBitmap* mask)gdk_gc_set_clip_mask;
	void function(GdkGC* gc, GdkRectangle* rectangle)gdk_gc_set_clip_rectangle;
	void function(GdkGC* gc, GdkRegion* region)gdk_gc_set_clip_region;
	void function(GdkGC* gc, GdkSubwindowMode mode)gdk_gc_set_subwindow;
	void function(GdkGC* gc, gboolean exposures)gdk_gc_set_exposures;
	void function(GdkGC* gc, gint lineWidth, GdkLineStyle lineStyle, GdkCapStyle capStyle, GdkJoinStyle joinStyle)gdk_gc_set_line_attributes;
	void function(GdkGC* gc, gint dashOffset, gint8[] dashList, gint n)gdk_gc_set_dashes;
	void function(GdkGC* dstGc, GdkGC* srcGc)gdk_gc_copy;
	void function(GdkGC* gc, GdkColormap* colormap)gdk_gc_set_colormap;
	GdkColormap* function(GdkGC* gc)gdk_gc_get_colormap;
	void function(GdkGC* gc, gint xOffset, gint yOffset)gdk_gc_offset;
	
	// gdk.Drawable
	
	GdkDrawable* function(GdkDrawable* drawable)gdk_drawable_ref;
	void function(GdkDrawable* drawable)gdk_drawable_unref;
	void function(GdkDrawable* drawable, gchar* key, gpointer data, GDestroyNotify destroyFunc)gdk_drawable_set_data;
	gpointer function(GdkDrawable* drawable, gchar* key)gdk_drawable_get_data;
	GdkDisplay* function(GdkDrawable* drawable)gdk_drawable_get_display;
	GdkScreen* function(GdkDrawable* drawable)gdk_drawable_get_screen;
	GdkVisual* function(GdkDrawable* drawable)gdk_drawable_get_visual;
	void function(GdkDrawable* drawable, GdkColormap* colormap)gdk_drawable_set_colormap;
	GdkColormap* function(GdkDrawable* drawable)gdk_drawable_get_colormap;
	gint function(GdkDrawable* drawable)gdk_drawable_get_depth;
	void function(GdkDrawable* drawable, gint* width, gint* height)gdk_drawable_get_size;
	GdkRegion* function(GdkDrawable* drawable)gdk_drawable_get_clip_region;
	GdkRegion* function(GdkDrawable* drawable)gdk_drawable_get_visible_region;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y)gdk_draw_point;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint npoints)gdk_draw_points;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x1_, gint y1_, gint x2_, gint y2_)gdk_draw_line;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint npoints)gdk_draw_lines;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPixbuf* pixbuf, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height, GdkRgbDither dither, gint xDither, gint yDither)gdk_draw_pixbuf;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkSegment* segs, gint nsegs)gdk_draw_segments;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height)gdk_draw_rectangle;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2)gdk_draw_arc;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, GdkPoint* points, gint npoints)gdk_draw_polygon;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkTrapezoid* trapezoids, gint nTrapezoids)gdk_draw_trapezoids;
	void function(GdkDrawable* drawable, GdkGC* gc, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs)gdk_draw_glyphs;
	void function(GdkDrawable* drawable, GdkGC* gc, PangoMatrix* matrix, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs)gdk_draw_glyphs_transformed;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line)gdk_draw_layout_line;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line, GdkColor* foreground, GdkColor* background)gdk_draw_layout_line_with_colors;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout)gdk_draw_layout;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout, GdkColor* foreground, GdkColor* background)gdk_draw_layout_with_colors;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* string)gdk_draw_string;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* text, gint textLength)gdk_draw_text;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, GdkWChar* text, gint textLength)gdk_draw_text_wc;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkDrawable* src, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)gdk_draw_drawable;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkImage* image, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height)gdk_draw_image;
	GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height)gdk_drawable_get_image;
	GdkImage* function(GdkDrawable* drawable, GdkImage* image, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height)gdk_drawable_copy_to_image;
	
	// gdk.Pixmap
	
	GdkPixmap* function(GdkDrawable* drawable, gint width, gint height, gint depth)gdk_pixmap_new;
	GdkPixmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height, gint depth, GdkColor* fg, GdkColor* bg)gdk_pixmap_create_from_data;
	GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename)gdk_pixmap_create_from_xpm;
	GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename)gdk_pixmap_colormap_create_from_xpm;
	GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar** data)gdk_pixmap_create_from_xpm_d;
	GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar** data)gdk_pixmap_colormap_create_from_xpm_d;
	
	// gdk.Bitmap
	
	GdkBitmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height)gdk_bitmap_create_from_data;
	
	// gdk.RGB
	
	void function()gdk_rgb_init;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride)gdk_draw_rgb_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride, gint xdith, gint ydith)gdk_draw_rgb_image_dithalign;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, GdkRgbCmap* cmap)gdk_draw_indexed_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride)gdk_draw_gray_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride)gdk_draw_rgb_32_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, gint xdith, gint ydith)gdk_draw_rgb_32_image_dithalign;
	GdkRgbCmap* function(guint32* colors, gint nColors)gdk_rgb_cmap_new;
	void function(GdkRgbCmap* cmap)gdk_rgb_cmap_free;
	void function(GdkGC* gc, guint32 rgb)gdk_rgb_gc_set_foreground;
	void function(GdkGC* gc, guint32 rgb)gdk_rgb_gc_set_background;
	gulong function(guint32 rgb)gdk_rgb_xpixel_from_rgb;
	void function(GdkColormap* colormap, GdkColor* color)gdk_rgb_find_color;
	void function(gboolean install)gdk_rgb_set_install;
	void function(gint minColors)gdk_rgb_set_min_colors;
	GdkVisual* function()gdk_rgb_get_visual;
	GdkColormap* function()gdk_rgb_get_colormap;
	gboolean function()gdk_rgb_ditherable;
	gboolean function(GdkColormap* cmap)gdk_rgb_colormap_ditherable;
	void function(gboolean verbose)gdk_rgb_set_verbose;
	
	// gdk.ImageGdk
	
	GdkImage* function(GdkImageType type, GdkVisual* visual, gint width, gint height)gdk_image_new;
	GdkImage* function(GdkVisual* visual, gpointer data, gint width, gint height)gdk_image_new_bitmap;
	GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height)gdk_image_get;
	GdkImage* function(GdkImage* image)gdk_image_ref;
	void function(GdkImage* image)gdk_image_unref;
	GdkColormap* function(GdkImage* image)gdk_image_get_colormap;
	void function(GdkImage* image, GdkColormap* colormap)gdk_image_set_colormap;
	void function(GdkImage* image, gint x, gint y, guint32 pixel)gdk_image_put_pixel;
	guint32 function(GdkImage* image, gint x, gint y)gdk_image_get_pixel;
	
	// gdk.Pixbuf
	
	void function(GdkPixbuf* pixbuf, GdkBitmap* bitmap, int srcX, int srcY, int destX, int destY, int width, int height, int alphaThreshold)gdk_pixbuf_render_threshold_alpha;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, GdkGC* gc, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither)gdk_pixbuf_render_to_drawable;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, int srcX, int srcY, int destX, int destY, int width, int height, GdkPixbufAlphaMode alphaMode, int alphaThreshold, GdkRgbDither dither, int xDither, int yDither)gdk_pixbuf_render_to_drawable_alpha;
	void function(GdkPixbuf* pixbuf, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)gdk_pixbuf_render_pixmap_and_mask;
	void function(GdkPixbuf* pixbuf, GdkColormap* colormap, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)gdk_pixbuf_render_pixmap_and_mask_for_colormap;
	GdkPixbuf* function(GdkPixbuf* dest, GdkDrawable* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height)gdk_pixbuf_get_from_drawable;
	GdkPixbuf* function(GdkPixbuf* dest, GdkImage* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height)gdk_pixbuf_get_from_image;
	GType function()gdk_pixbuf_get_type;
	GdkPixbuf* function(guchar* data, GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, gpointer destroyFnData)gdk_pixbuf_new_from_data;
	GdkPixbuf* function(char** data)gdk_pixbuf_new_from_xpm_data;
	GdkPixbuf* function(gint dataLength, guint8* data, gboolean copyPixels, GError** error)gdk_pixbuf_new_from_inline;
	GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height)gdk_pixbuf_new_subpixbuf;
	GdkPixbuf* function(GdkPixbuf* pixbuf)gdk_pixbuf_copy;
	GdkColorspace function(GdkPixbuf* pixbuf)gdk_pixbuf_get_colorspace;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_n_channels;
	gboolean function(GdkPixbuf* pixbuf)gdk_pixbuf_get_has_alpha;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_bits_per_sample;
	guchar* function(GdkPixbuf* pixbuf)gdk_pixbuf_get_pixels;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_width;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_height;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_rowstride;
	gchar* function(GdkPixbuf* pixbuf, gchar* key)gdk_pixbuf_get_option;
	GdkPixbuf* function(char* filename, GError** error)gdk_pixbuf_new_from_file;
	GdkPixbuf* function(char* filename, int width, int height, GError** error)gdk_pixbuf_new_from_file_at_size;
	GdkPixbuf* function(char* filename, int width, int height, gboolean preserveAspectRatio, GError** error)gdk_pixbuf_new_from_file_at_scale;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_savev;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, GError** error, ... )gdk_pixbuf_save;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, GError** error, ... )gdk_pixbuf_save_to_callback;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_save_to_callbackv;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, GError** error, ... )gdk_pixbuf_save_to_buffer;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_save_to_bufferv;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType)gdk_pixbuf_scale_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType)gdk_pixbuf_scale;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, guint32 color1, guint32 color2)gdk_pixbuf_composite_color_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha)gdk_pixbuf_composite;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, guint32 color1, guint32 color2)gdk_pixbuf_composite_color;
	GdkPixbuf* function(GdkPixbuf* src, GdkPixbufRotation angle)gdk_pixbuf_rotate_simple;
	GdkPixbuf* function(GdkPixbuf* src, gboolean horizontal)gdk_pixbuf_flip;
	GdkPixbuf* function(GdkPixbuf* pixbuf, gboolean substituteColor, guchar r, guchar g, guchar b)gdk_pixbuf_add_alpha;
	void function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY)gdk_pixbuf_copy_area;
	void function(GdkPixbuf* src, GdkPixbuf* dest, gfloat saturation, gboolean pixelate)gdk_pixbuf_saturate_and_pixelate;
	GdkPixbuf* function(GdkPixbuf* src)gdk_pixbuf_apply_embedded_orientation;
	void function(GdkPixbuf* pixbuf, guint32 pixel)gdk_pixbuf_fill;
	
	// gdk.Colormap
	
	GdkColormap* function(GdkVisual* visual, gboolean allocate)gdk_colormap_new;
	GdkColormap* function(GdkColormap* cmap)gdk_colormap_ref;
	void function(GdkColormap* cmap)gdk_colormap_unref;
	GdkColormap* function()gdk_colormap_get_system;
	gint function()gdk_colormap_get_system_size;
	void function(GdkColormap* colormap, gint ncolors)gdk_colormap_change;
	gint function(GdkColormap* colormap, GdkColor* colors, gint ncolors, gboolean writeable, gboolean bestMatch, gboolean* success)gdk_colormap_alloc_colors;
	gboolean function(GdkColormap* colormap, GdkColor* color, gboolean writeable, gboolean bestMatch)gdk_colormap_alloc_color;
	void function(GdkColormap* colormap, GdkColor* colors, gint ncolors)gdk_colormap_free_colors;
	void function(GdkColormap* colormap, gulong pixel, GdkColor* result)gdk_colormap_query_color;
	GdkVisual* function(GdkColormap* colormap)gdk_colormap_get_visual;
	GdkScreen* function(GdkColormap* cmap)gdk_colormap_get_screen;
	void function(GdkColormap* colormap, GdkColor* colors, gint ncolors)gdk_colors_store;
	gint function(GdkColormap* colormap, gboolean contiguous, gulong* planes, gint nplanes, gulong* pixels, gint npixels)gdk_colors_alloc;
	void function(GdkColormap* colormap, gulong* pixels, gint npixels, gulong planes)gdk_colors_free;
	
	// gdk.Color
	
	GdkColor* function(GdkColor* color)gdk_color_copy;
	void function(GdkColor* color)gdk_color_free;
	gint function(GdkColormap* colormap, GdkColor* color)gdk_color_white;
	gint function(GdkColormap* colormap, GdkColor* color)gdk_color_black;
	gboolean function(gchar* spec, GdkColor* color)gdk_color_parse;
	gint function(GdkColormap* colormap, GdkColor* color)gdk_color_alloc;
	gint function(GdkColormap* colormap, GdkColor* color)gdk_color_change;
	gboolean function(GdkColor* colora, GdkColor* colorb)gdk_color_equal;
	guint function(GdkColor* colora)gdk_color_hash;
	gchar* function(GdkColor* color)gdk_color_to_string;
	
	// gdk.Visual
	
	void function(gint** depths, gint* count)gdk_query_depths;
	void function(GdkVisualType** visualTypes, gint* count)gdk_query_visual_types;
	GList* function()gdk_list_visuals;
	gint function()gdk_visual_get_best_depth;
	GdkVisualType function()gdk_visual_get_best_type;
	GdkVisual* function()gdk_visual_get_system;
	GdkVisual* function()gdk_visual_get_best;
	GdkVisual* function(gint depth)gdk_visual_get_best_with_depth;
	GdkVisual* function(GdkVisualType visualType)gdk_visual_get_best_with_type;
	GdkVisual* function(gint depth, GdkVisualType visualType)gdk_visual_get_best_with_both;
	GdkScreen* function(GdkVisual* visual)gdk_visual_get_screen;
	
	// gdk.Font
	
	GdkFont* function(gchar* fontName)gdk_font_load;
	GdkFont* function(GdkDisplay* display, gchar* fontName)gdk_font_load_for_display;
	GdkFont* function(gchar* fontsetName)gdk_fontset_load;
	GdkFont* function(GdkDisplay* display, gchar* fontsetName)gdk_fontset_load_for_display;
	GdkFont* function(PangoFontDescription* fontDesc)gdk_font_from_description;
	GdkFont* function(GdkDisplay* display, PangoFontDescription* fontDesc)gdk_font_from_description_for_display;
	GdkDisplay* function(GdkFont* font)gdk_font_get_display;
	GdkFont* function(GdkFont* font)gdk_font_ref;
	void function(GdkFont* font)gdk_font_unref;
	gint function(GdkFont* font)gdk_font_id;
	gboolean function(GdkFont* fonta, GdkFont* fontb)gdk_font_equal;
	void function(GdkFont* font, gchar* string, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent)gdk_string_extents;
	void function(GdkFont* font, gchar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent)gdk_text_extents;
	void function(GdkFont* font, GdkWChar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent)gdk_text_extents_wc;
	gint function(GdkFont* font, gchar* string)gdk_string_width;
	gint function(GdkFont* font, gchar* text, gint textLength)gdk_text_width;
	gint function(GdkFont* font, GdkWChar* text, gint textLength)gdk_text_width_wc;
	gint function(GdkFont* font, gchar character)gdk_char_width;
	gint function(GdkFont* font, GdkWChar character)gdk_char_width_wc;
	gint function(GdkFont* font, gchar* string)gdk_string_measure;
	gint function(GdkFont* font, gchar* text, gint textLength)gdk_text_measure;
	gint function(GdkFont* font, gchar character)gdk_char_measure;
	gint function(GdkFont* font, gchar* string)gdk_string_height;
	gint function(GdkFont* font, gchar* text, gint textLength)gdk_text_height;
	gint function(GdkFont* font, gchar character)gdk_char_height;
	gchar* function(GdkWChar* src)gdk_wcstombs;
	gint function(GdkWChar* dest, gchar* src, gint destMax)gdk_mbstowcs;
	
	// gdk.Cursor
	
	GdkCursor* function(GdkCursorType cursorType)gdk_cursor_new;
	GdkCursor* function(GdkPixmap* source, GdkPixmap* mask, GdkColor* fg, GdkColor* bg, gint x, gint y)gdk_cursor_new_from_pixmap;
	GdkCursor* function(GdkDisplay* display, GdkPixbuf* pixbuf, gint x, gint y)gdk_cursor_new_from_pixbuf;
	GdkCursor* function(GdkDisplay* display, gchar* name)gdk_cursor_new_from_name;
	GdkCursor* function(GdkDisplay* display, GdkCursorType cursorType)gdk_cursor_new_for_display;
	GdkDisplay* function(GdkCursor* cursor)gdk_cursor_get_display;
	GdkPixbuf* function(GdkCursor* cursor)gdk_cursor_get_image;
	GdkCursor* function(GdkCursor* cursor)gdk_cursor_ref;
	void function(GdkCursor* cursor)gdk_cursor_unref;
	
	// gdk.Window
	
	GdkWindow* function(GdkWindow* parent, GdkWindowAttr* attributes, gint attributesMask)gdk_window_new;
	void function(GdkWindow* window)gdk_window_destroy;
	GdkWindowType function(GdkWindow* window)gdk_window_get_window_type;
	GdkWindow* function(gint* winX, gint* winY)gdk_window_at_pointer;
	void function(GdkWindow* window)gdk_window_show;
	void function(GdkWindow* window)gdk_window_show_unraised;
	void function(GdkWindow* window)gdk_window_hide;
	gboolean function(GdkWindow* window)gdk_window_is_visible;
	gboolean function(GdkWindow* window)gdk_window_is_viewable;
	GdkWindowState function(GdkWindow* window)gdk_window_get_state;
	void function(GdkWindow* window)gdk_window_withdraw;
	void function(GdkWindow* window)gdk_window_iconify;
	void function(GdkWindow* window)gdk_window_deiconify;
	void function(GdkWindow* window)gdk_window_stick;
	void function(GdkWindow* window)gdk_window_unstick;
	void function(GdkWindow* window)gdk_window_maximize;
	void function(GdkWindow* window)gdk_window_unmaximize;
	void function(GdkWindow* window)gdk_window_fullscreen;
	void function(GdkWindow* window)gdk_window_unfullscreen;
	void function(GdkWindow* window, gboolean setting)gdk_window_set_keep_above;
	void function(GdkWindow* window, gboolean setting)gdk_window_set_keep_below;
	void function(GdkWindow* window, gdouble opacity)gdk_window_set_opacity;
	void function(GdkWindow* window, gboolean composited)gdk_window_set_composited;
	void function(GdkWindow* window, gint x, gint y)gdk_window_move;
	void function(GdkWindow* window, gint width, gint height)gdk_window_resize;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height)gdk_window_move_resize;
	void function(GdkWindow* window, gint dx, gint dy)gdk_window_scroll;
	void function(GdkWindow* window, GdkRegion* region, gint dx, gint dy)gdk_window_move_region;
	void function(GdkWindow* window, GdkWindow* newParent, gint x, gint y)gdk_window_reparent;
	void function(GdkWindow* window)gdk_window_clear;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height)gdk_window_clear_area;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height)gdk_window_clear_area_e;
	void function(GdkWindow* window)gdk_window_raise;
	void function(GdkWindow* window)gdk_window_lower;
	void function(GdkWindow* window, guint32 timestamp)gdk_window_focus;
	void function(GdkWindow* window)gdk_window_register_dnd;
	void function(GdkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp)gdk_window_begin_resize_drag;
	void function(GdkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp)gdk_window_begin_move_drag;
	void function(GdkGeometry* geometry, guint flags, gint width, gint height, gint* newWidth, gint* newHeight)gdk_window_constrain_size;
	void function(GdkWindow* window)gdk_window_beep;
	void function(GdkWindow* window, GdkRectangle* rectangle)gdk_window_begin_paint_rect;
	void function(GdkWindow* window, GdkRegion* region)gdk_window_begin_paint_region;
	void function(GdkWindow* window)gdk_window_end_paint;
	void function(GdkWindow* window, GdkRectangle* rect, gboolean invalidateChildren)gdk_window_invalidate_rect;
	void function(GdkWindow* window, GdkRegion* region, gboolean invalidateChildren)gdk_window_invalidate_region;
	GdkRegion* function(GdkWindow* window)gdk_window_get_update_area;
	void function(GdkWindow* window)gdk_window_freeze_updates;
	void function(GdkWindow* window)gdk_window_thaw_updates;
	void function()gdk_window_process_all_updates;
	void function(GdkWindow* window, gboolean updateChildren)gdk_window_process_updates;
	void function(gboolean setting)gdk_window_set_debug_updates;
	void function(GdkWindow* window, GdkDrawable** realDrawable, gint* xOffset, gint* yOffset)gdk_window_get_internal_paint_info;
	void function(GdkWindow* window)gdk_window_enable_synchronized_configure;
	void function(GdkWindow* window)gdk_window_configure_finished;
	void function(GdkWindow* window, gpointer userData)gdk_window_set_user_data;
	void function(GdkWindow* window, gboolean overrideRedirect)gdk_window_set_override_redirect;
	void function(GdkWindow* window, gboolean acceptFocus)gdk_window_set_accept_focus;
	void function(GdkWindow* window, gboolean focusOnMap)gdk_window_set_focus_on_map;
	void function(GdkWindow* window, GdkFilterFunc funct, gpointer data)gdk_window_add_filter;
	void function(GdkWindow* window, GdkFilterFunc funct, gpointer data)gdk_window_remove_filter;
	void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y)gdk_window_shape_combine_mask;
	void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY)gdk_window_shape_combine_region;
	void function(GdkWindow* window)gdk_window_set_child_shapes;
	void function(GdkWindow* window)gdk_window_merge_child_shapes;
	void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y)gdk_window_input_shape_combine_mask;
	void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY)gdk_window_input_shape_combine_region;
	void function(GdkWindow* window)gdk_window_set_child_input_shapes;
	void function(GdkWindow* window)gdk_window_merge_child_input_shapes;
	gboolean function(GdkWindow* window, gboolean useStatic)gdk_window_set_static_gravities;
	void function(GdkWindow* window, gint x, gint y, gint minWidth, gint minHeight, gint maxWidth, gint maxHeight, gint flags)gdk_window_set_hints;
	void function(GdkWindow* window, gchar* title)gdk_window_set_title;
	void function(GdkWindow* window, GdkColor* color)gdk_window_set_background;
	void function(GdkWindow* window, GdkPixmap* pixmap, gboolean parentRelative)gdk_window_set_back_pixmap;
	void function(GdkWindow* window, GdkCursor* cursor)gdk_window_set_cursor;
	void function(GdkWindow* window, gpointer* data)gdk_window_get_user_data;
	void function(GdkWindow* window, gint* x, gint* y, gint* width, gint* height, gint* depth)gdk_window_get_geometry;
	void function(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask)gdk_window_set_geometry_hints;
	void function(GdkWindow* window, GList* pixbufs)gdk_window_set_icon_list;
	void function(GdkWindow* window, gboolean modal)gdk_window_set_modal_hint;
	void function(GdkWindow* window, GdkWindowTypeHint hint)gdk_window_set_type_hint;
	GdkWindowTypeHint function(GdkWindow* window)gdk_window_get_type_hint;
	void function(GdkWindow* window, gboolean skipsTaskbar)gdk_window_set_skip_taskbar_hint;
	void function(GdkWindow* window, gboolean skipsPager)gdk_window_set_skip_pager_hint;
	void function(GdkWindow* window, gboolean urgent)gdk_window_set_urgency_hint;
	void function(GdkWindow* window, gint* x, gint* y)gdk_window_get_position;
	void function(GdkWindow* window, gint* x, gint* y)gdk_window_get_root_origin;
	void function(GdkWindow* window, GdkRectangle* rect)gdk_window_get_frame_extents;
	gint function(GdkWindow* window, gint* x, gint* y)gdk_window_get_origin;
	gboolean function(GdkWindow* window, gint* x, gint* y)gdk_window_get_deskrelative_origin;
	GdkWindow* function(GdkWindow* window, gint* x, gint* y, GdkModifierType* mask)gdk_window_get_pointer;
	GdkWindow* function(GdkWindow* window)gdk_window_get_parent;
	GdkWindow* function(GdkWindow* window)gdk_window_get_toplevel;
	GList* function(GdkWindow* window)gdk_window_get_children;
	GList* function(GdkWindow* window)gdk_window_peek_children;
	GdkEventMask function(GdkWindow* window)gdk_window_get_events;
	void function(GdkWindow* window, GdkEventMask eventMask)gdk_window_set_events;
	void function(GdkWindow* window, GdkWindow* iconWindow, GdkPixmap* pixmap, GdkBitmap* mask)gdk_window_set_icon;
	void function(GdkWindow* window, gchar* name)gdk_window_set_icon_name;
	void function(GdkWindow* window, GdkWindow* parent)gdk_window_set_transient_for;
	void function(GdkWindow* window, gchar* role)gdk_window_set_role;
	void function(GdkWindow* window, gchar* startupId)gdk_window_set_startup_id;
	void function(GdkWindow* window, GdkWindow* leader)gdk_window_set_group;
	GdkWindow* function(GdkWindow* window)gdk_window_get_group;
	void function(GdkWindow* window, GdkWMDecoration decorations)gdk_window_set_decorations;
	gboolean function(GdkWindow* window, GdkWMDecoration* decorations)gdk_window_get_decorations;
	void function(GdkWindow* window, GdkWMFunction functions)gdk_window_set_functions;
	GList* function()gdk_window_get_toplevels;
	GdkWindow* function()gdk_get_default_root_window;
	GdkPointerHooks* function(GdkPointerHooks* newHooks)gdk_set_pointer_hooks;
	
	// gdk.Event
	
	gboolean function()gdk_events_pending;
	GdkEvent* function()gdk_event_peek;
	GdkEvent* function()gdk_event_get;
	GdkEvent* function(GdkWindow* window)gdk_event_get_graphics_expose;
	void function(GdkEvent* event)gdk_event_put;
	GdkEvent* function(GdkEventType type)gdk_event_new;
	GdkEvent* function(GdkEvent* event)gdk_event_copy;
	void function(GdkEvent* event)gdk_event_free;
	guint32 function(GdkEvent* event)gdk_event_get_time;
	gboolean function(GdkEvent* event, GdkModifierType* state)gdk_event_get_state;
	gboolean function(GdkEvent* event, GdkAxisUse axisUse, gdouble* value)gdk_event_get_axis;
	gboolean function(GdkEvent* event, gdouble* xWin, gdouble* yWin)gdk_event_get_coords;
	gboolean function(GdkEvent* event, gdouble* xRoot, gdouble* yRoot)gdk_event_get_root_coords;
	void function(GdkEventMotion* event)gdk_event_request_motions;
	void function(GdkEventFunc func, gpointer data, GDestroyNotify notify)gdk_event_handler_set;
	gboolean function(GdkEvent* event, GdkNativeWindow winid)gdk_event_send_client_message;
	gboolean function(GdkDisplay* display, GdkEvent* event, GdkNativeWindow winid)gdk_event_send_client_message_for_display;
	void function(GdkEvent* event)gdk_event_send_clientmessage_toall;
	void function(GdkAtom messageType, GdkFilterFunc func, gpointer data)gdk_add_client_message_filter;
	gboolean function()gdk_get_show_events;
	void function(gboolean showEvents)gdk_set_show_events;
	void function(GdkEvent* event, GdkScreen* screen)gdk_event_set_screen;
	GdkScreen* function(GdkEvent* event)gdk_event_get_screen;
	gboolean function(gchar* name, GValue* value)gdk_setting_get;
	
	// gdk.
	
	
	// gdk.Keymap
	
	GdkKeymap* function()gdk_keymap_get_default;
	GdkKeymap* function(GdkDisplay* display)gdk_keymap_get_for_display;
	guint function(GdkKeymap* keymap, GdkKeymapKey* key)gdk_keymap_lookup_key;
	gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkModifierType state, gint group, guint* keyval, gint* effectiveGroup, gint* level, GdkModifierType* consumedModifiers)gdk_keymap_translate_keyboard_state;
	gboolean function(GdkKeymap* keymap, guint keyval, GdkKeymapKey** keys, gint* nKeys)gdk_keymap_get_entries_for_keyval;
	gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkKeymapKey** keys, guint** keyvals, gint* nEntries)gdk_keymap_get_entries_for_keycode;
	PangoDirection function(GdkKeymap* keymap)gdk_keymap_get_direction;
	gboolean function(GdkKeymap* keymap)gdk_keymap_have_bidi_layouts;
	gchar* function(guint keyval)gdk_keyval_name;
	guint function(gchar* keyvalName)gdk_keyval_from_name;
	void function(guint symbol, guint* lower, guint* upper)gdk_keyval_convert_case;
	guint function(guint keyval)gdk_keyval_to_upper;
	guint function(guint keyval)gdk_keyval_to_lower;
	gboolean function(guint keyval)gdk_keyval_is_upper;
	gboolean function(guint keyval)gdk_keyval_is_lower;
	guint32 function(guint keyval)gdk_keyval_to_unicode;
	guint function(guint32 wc)gdk_unicode_to_keyval;
	
	// gdk.Selection
	
	gboolean function(GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent)gdk_selection_owner_set;
	gboolean function(GdkDisplay* display, GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent)gdk_selection_owner_set_for_display;
	GdkWindow* function(GdkAtom selection)gdk_selection_owner_get;
	GdkWindow* function(GdkDisplay* display, GdkAtom selection)gdk_selection_owner_get_for_display;
	void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, guint32 time)gdk_selection_convert;
	gboolean function(GdkWindow* requestor, guchar** data, GdkAtom* propType, gint* propFormat)gdk_selection_property_get;
	void function(guint32 requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time)gdk_selection_send_notify;
	void function(GdkDisplay* display, guint32 requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time)gdk_selection_send_notify_for_display;
	
	// gdk.DragContext
	
	GdkAtom function(GdkDragContext* context)gdk_drag_get_selection;
	void function(GdkDragContext* context, guint32 time)gdk_drag_abort;
	void function(GdkDragContext* context, gboolean ok, guint32 time)gdk_drop_reply;
	GdkDragContext* function()gdk_drag_context_new;
	void function(GdkDragContext* context, guint32 time)gdk_drag_drop;
	void function(GdkDragContext* context, GdkWindow* dragWindow, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol)gdk_drag_find_window;
	void function(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol)gdk_drag_find_window_for_screen;
	void function(GdkDragContext* context)gdk_drag_context_ref;
	GdkDragContext* function(GdkWindow* window, GList* targets)gdk_drag_begin;
	gboolean function(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, gint xRoot, gint yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, guint32 time)gdk_drag_motion;
	void function(GdkDragContext* context, gboolean success, guint32 time)gdk_drop_finish;
	guint32 function(guint32 xid, GdkDragProtocol* protocol)gdk_drag_get_protocol;
	guint32 function(GdkDisplay* display, guint32 xid, GdkDragProtocol* protocol)gdk_drag_get_protocol_for_display;
	void function(GdkDragContext* context)gdk_drag_context_unref;
	void function(GdkDragContext* context, GdkDragAction action, guint32 time)gdk_drag_status;
	gboolean function(GdkDragContext* context)gdk_drag_drop_succeeded;
	
	// gdk.
	
	void function()gdk_threads_init;
	void function()gdk_threads_enter;
	void function()gdk_threads_leave;
	void function(GCallback enterFn, GCallback leaveFn)gdk_threads_set_lock_functions;
	guint function(GSourceFunc funct, gpointer data)gdk_threads_add_idle;
	guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify)gdk_threads_add_idle_full;
	guint function(guint interval, GSourceFunc funct, gpointer data)gdk_threads_add_timeout;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify)gdk_threads_add_timeout_full;
	
	// gdk.Input
	
	gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data, GdkDestroyNotify destroy)gdk_input_add_full;
	gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data)gdk_input_add;
	void function(gint tag)gdk_input_remove;
	
	// gdk.Device
	
	GList* function()gdk_devices_list;
	void function(GdkDevice* device, GdkInputSource source)gdk_device_set_source;
	gboolean function(GdkDevice* device, GdkInputMode mode)gdk_device_set_mode;
	void function(GdkDevice* device, guint index, guint keyval, GdkModifierType modifiers)gdk_device_set_key;
	void function(GdkDevice* device, guint index, GdkAxisUse use)gdk_device_set_axis_use;
	GdkDevice* function()gdk_device_get_core_pointer;
	void function(GdkDevice* device, GdkWindow* window, gdouble* axes, GdkModifierType* mask)gdk_device_get_state;
	gboolean function(GdkDevice* device, GdkWindow* window, guint32 start, guint32 stop, GdkTimeCoord*** events, gint* nEvents)gdk_device_get_history;
	void function(GdkTimeCoord** events, gint nEvents)gdk_device_free_history;
	gboolean function(GdkDevice* device, gdouble* axes, GdkAxisUse use, gdouble* value)gdk_device_get_axis;
	void function(GdkWindow* window, gint mask, GdkExtensionMode mode)gdk_input_set_extension_events;
	
	// gdk.X11
	
	GdkWindow* function(GdkNativeWindow anid)gdk_window_foreign_new;
	gpointer function(XID xid)gdk_xid_table_lookup;
	GdkWindow* function(GdkNativeWindow anid)gdk_window_lookup;
	GdkPixmap* function(GdkNativeWindow anid)gdk_pixmap_lookup;
	guint32 function(GdkWindow* window)gdk_x11_get_server_time;
	void function(GdkWindow* window, guint32 timestamp)gdk_x11_window_set_user_time;
	void function(GdkWindow* window)gdk_x11_window_move_to_current_desktop;
	void function(GdkDisplay* display, char* messageType, ... )gdk_x11_display_broadcast_startup_message;
	gchar* function(GdkDisplay* display)gdk_x11_display_get_startup_notification_id;
	XID function(GdkDrawable* drawable)gdk_x11_drawable_get_xid;
	char* function(GdkFont* font)gdk_x11_font_get_name;
	gpointer function(GdkFont* font)gdk_x11_font_get_xfont;
	gint function()gdk_x11_get_default_screen;
	void function()gdk_x11_grab_server;
	void function()gdk_x11_ungrab_server;
	
	// gdk.
	
	cairo_t* function(GdkDrawable* drawable)gdk_cairo_create;
	void function(cairo_t* cr, GdkColor* color)gdk_cairo_set_source_color;
	void function(cairo_t* cr, GdkPixbuf* pixbuf, double pixbufX, double pixbufY)gdk_cairo_set_source_pixbuf;
	void function(cairo_t* cr, GdkPixmap* pixmap, double pixmapX, double pixmapY)gdk_cairo_set_source_pixmap;
	void function(cairo_t* cr, GdkRectangle* rectangle)gdk_cairo_rectangle;
	void function(cairo_t* cr, GdkRegion* region)gdk_cairo_region;


}

Symbol[] gdkLinks = 
[

	{ "gdk_init",  cast(void**)& gdk_init},
	{ "gdk_init_check",  cast(void**)& gdk_init_check},
	{ "gdk_parse_args",  cast(void**)& gdk_parse_args},
	{ "gdk_get_display_arg_name",  cast(void**)& gdk_get_display_arg_name},
	{ "gdk_set_locale",  cast(void**)& gdk_set_locale},
	{ "gdk_set_sm_client_id",  cast(void**)& gdk_set_sm_client_id},
	{ "gdk_exit",  cast(void**)& gdk_exit},
	{ "gdk_notify_startup_complete",  cast(void**)& gdk_notify_startup_complete},
	{ "gdk_notify_startup_complete_with_id",  cast(void**)& gdk_notify_startup_complete_with_id},
	{ "gdk_get_program_class",  cast(void**)& gdk_get_program_class},
	{ "gdk_set_program_class",  cast(void**)& gdk_set_program_class},
	{ "gdk_get_display",  cast(void**)& gdk_get_display},
	{ "gdk_flush",  cast(void**)& gdk_flush},
	{ "gdk_screen_width",  cast(void**)& gdk_screen_width},
	{ "gdk_screen_height",  cast(void**)& gdk_screen_height},
	{ "gdk_screen_width_mm",  cast(void**)& gdk_screen_width_mm},
	{ "gdk_screen_height_mm",  cast(void**)& gdk_screen_height_mm},
	{ "gdk_pointer_grab",  cast(void**)& gdk_pointer_grab},
	{ "gdk_pointer_ungrab",  cast(void**)& gdk_pointer_ungrab},
	{ "gdk_pointer_is_grabbed",  cast(void**)& gdk_pointer_is_grabbed},
	{ "gdk_set_double_click_time",  cast(void**)& gdk_set_double_click_time},
	{ "gdk_keyboard_grab",  cast(void**)& gdk_keyboard_grab},
	{ "gdk_keyboard_ungrab",  cast(void**)& gdk_keyboard_ungrab},
	{ "gdk_beep",  cast(void**)& gdk_beep},
	{ "gdk_get_use_xshm",  cast(void**)& gdk_get_use_xshm},
	{ "gdk_set_use_xshm",  cast(void**)& gdk_set_use_xshm},
	{ "gdk_error_trap_push",  cast(void**)& gdk_error_trap_push},
	{ "gdk_error_trap_pop",  cast(void**)& gdk_error_trap_pop},
	{ "gdk_display_open",  cast(void**)& gdk_display_open},
	{ "gdk_display_get_default",  cast(void**)& gdk_display_get_default},
	{ "gdk_display_get_name",  cast(void**)& gdk_display_get_name},
	{ "gdk_display_get_n_screens",  cast(void**)& gdk_display_get_n_screens},
	{ "gdk_display_get_screen",  cast(void**)& gdk_display_get_screen},
	{ "gdk_display_get_default_screen",  cast(void**)& gdk_display_get_default_screen},
	{ "gdk_display_pointer_ungrab",  cast(void**)& gdk_display_pointer_ungrab},
	{ "gdk_display_keyboard_ungrab",  cast(void**)& gdk_display_keyboard_ungrab},
	{ "gdk_display_pointer_is_grabbed",  cast(void**)& gdk_display_pointer_is_grabbed},
	{ "gdk_display_beep",  cast(void**)& gdk_display_beep},
	{ "gdk_display_sync",  cast(void**)& gdk_display_sync},
	{ "gdk_display_flush",  cast(void**)& gdk_display_flush},
	{ "gdk_display_close",  cast(void**)& gdk_display_close},
	{ "gdk_display_list_devices",  cast(void**)& gdk_display_list_devices},
	{ "gdk_display_get_event",  cast(void**)& gdk_display_get_event},
	{ "gdk_display_peek_event",  cast(void**)& gdk_display_peek_event},
	{ "gdk_display_put_event",  cast(void**)& gdk_display_put_event},
	{ "gdk_display_add_client_message_filter",  cast(void**)& gdk_display_add_client_message_filter},
	{ "gdk_display_set_double_click_time",  cast(void**)& gdk_display_set_double_click_time},
	{ "gdk_display_set_double_click_distance",  cast(void**)& gdk_display_set_double_click_distance},
	{ "gdk_display_get_pointer",  cast(void**)& gdk_display_get_pointer},
	{ "gdk_display_get_window_at_pointer",  cast(void**)& gdk_display_get_window_at_pointer},
	{ "gdk_display_set_pointer_hooks",  cast(void**)& gdk_display_set_pointer_hooks},
	{ "gdk_display_warp_pointer",  cast(void**)& gdk_display_warp_pointer},
	{ "gdk_display_supports_cursor_color",  cast(void**)& gdk_display_supports_cursor_color},
	{ "gdk_display_supports_cursor_alpha",  cast(void**)& gdk_display_supports_cursor_alpha},
	{ "gdk_display_get_default_cursor_size",  cast(void**)& gdk_display_get_default_cursor_size},
	{ "gdk_display_get_maximal_cursor_size",  cast(void**)& gdk_display_get_maximal_cursor_size},
	{ "gdk_display_get_default_group",  cast(void**)& gdk_display_get_default_group},
	{ "gdk_display_supports_selection_notification",  cast(void**)& gdk_display_supports_selection_notification},
	{ "gdk_display_request_selection_notification",  cast(void**)& gdk_display_request_selection_notification},
	{ "gdk_display_supports_clipboard_persistence",  cast(void**)& gdk_display_supports_clipboard_persistence},
	{ "gdk_display_store_clipboard",  cast(void**)& gdk_display_store_clipboard},
	{ "gdk_display_supports_shapes",  cast(void**)& gdk_display_supports_shapes},
	{ "gdk_display_supports_input_shapes",  cast(void**)& gdk_display_supports_input_shapes},
	{ "gdk_display_supports_composite",  cast(void**)& gdk_display_supports_composite},
	{ "gdk_display_manager_get",  cast(void**)& gdk_display_manager_get},
	{ "gdk_display_manager_get_default_display",  cast(void**)& gdk_display_manager_get_default_display},
	{ "gdk_display_manager_set_default_display",  cast(void**)& gdk_display_manager_set_default_display},
	{ "gdk_display_manager_list_displays",  cast(void**)& gdk_display_manager_list_displays},
	{ "gdk_display_get_core_pointer",  cast(void**)& gdk_display_get_core_pointer},
	{ "gdk_screen_get_default",  cast(void**)& gdk_screen_get_default},
	{ "gdk_screen_get_default_colormap",  cast(void**)& gdk_screen_get_default_colormap},
	{ "gdk_screen_set_default_colormap",  cast(void**)& gdk_screen_set_default_colormap},
	{ "gdk_screen_get_system_colormap",  cast(void**)& gdk_screen_get_system_colormap},
	{ "gdk_screen_get_system_visual",  cast(void**)& gdk_screen_get_system_visual},
	{ "gdk_screen_get_rgb_colormap",  cast(void**)& gdk_screen_get_rgb_colormap},
	{ "gdk_screen_get_rgb_visual",  cast(void**)& gdk_screen_get_rgb_visual},
	{ "gdk_screen_get_rgba_colormap",  cast(void**)& gdk_screen_get_rgba_colormap},
	{ "gdk_screen_get_rgba_visual",  cast(void**)& gdk_screen_get_rgba_visual},
	{ "gdk_screen_is_composited",  cast(void**)& gdk_screen_is_composited},
	{ "gdk_screen_get_root_window",  cast(void**)& gdk_screen_get_root_window},
	{ "gdk_screen_get_display",  cast(void**)& gdk_screen_get_display},
	{ "gdk_screen_get_number",  cast(void**)& gdk_screen_get_number},
	{ "gdk_screen_get_width",  cast(void**)& gdk_screen_get_width},
	{ "gdk_screen_get_height",  cast(void**)& gdk_screen_get_height},
	{ "gdk_screen_get_width_mm",  cast(void**)& gdk_screen_get_width_mm},
	{ "gdk_screen_get_height_mm",  cast(void**)& gdk_screen_get_height_mm},
	{ "gdk_screen_list_visuals",  cast(void**)& gdk_screen_list_visuals},
	{ "gdk_screen_get_toplevel_windows",  cast(void**)& gdk_screen_get_toplevel_windows},
	{ "gdk_screen_make_display_name",  cast(void**)& gdk_screen_make_display_name},
	{ "gdk_screen_get_n_monitors",  cast(void**)& gdk_screen_get_n_monitors},
	{ "gdk_screen_get_monitor_geometry",  cast(void**)& gdk_screen_get_monitor_geometry},
	{ "gdk_screen_get_monitor_at_point",  cast(void**)& gdk_screen_get_monitor_at_point},
	{ "gdk_screen_get_monitor_at_window",  cast(void**)& gdk_screen_get_monitor_at_window},
	{ "gdk_screen_broadcast_client_message",  cast(void**)& gdk_screen_broadcast_client_message},
	{ "gdk_screen_get_setting",  cast(void**)& gdk_screen_get_setting},
	{ "gdk_screen_get_font_options",  cast(void**)& gdk_screen_get_font_options},
	{ "gdk_screen_set_font_options",  cast(void**)& gdk_screen_set_font_options},
	{ "gdk_screen_get_resolution",  cast(void**)& gdk_screen_get_resolution},
	{ "gdk_screen_set_resolution",  cast(void**)& gdk_screen_set_resolution},
	{ "gdk_screen_get_active_window",  cast(void**)& gdk_screen_get_active_window},
	{ "gdk_screen_get_window_stack",  cast(void**)& gdk_screen_get_window_stack},
	{ "gdk_spawn_on_screen",  cast(void**)& gdk_spawn_on_screen},
	{ "gdk_spawn_on_screen_with_pipes",  cast(void**)& gdk_spawn_on_screen_with_pipes},
	{ "gdk_spawn_command_line_on_screen",  cast(void**)& gdk_spawn_command_line_on_screen},
	{ "gdk_rectangle_intersect",  cast(void**)& gdk_rectangle_intersect},
	{ "gdk_rectangle_union",  cast(void**)& gdk_rectangle_union},
	{ "gdk_region_new",  cast(void**)& gdk_region_new},
	{ "gdk_region_polygon",  cast(void**)& gdk_region_polygon},
	{ "gdk_region_copy",  cast(void**)& gdk_region_copy},
	{ "gdk_region_rectangle",  cast(void**)& gdk_region_rectangle},
	{ "gdk_region_destroy",  cast(void**)& gdk_region_destroy},
	{ "gdk_region_get_clipbox",  cast(void**)& gdk_region_get_clipbox},
	{ "gdk_region_get_rectangles",  cast(void**)& gdk_region_get_rectangles},
	{ "gdk_region_empty",  cast(void**)& gdk_region_empty},
	{ "gdk_region_equal",  cast(void**)& gdk_region_equal},
	{ "gdk_region_point_in",  cast(void**)& gdk_region_point_in},
	{ "gdk_region_rect_in",  cast(void**)& gdk_region_rect_in},
	{ "gdk_region_offset",  cast(void**)& gdk_region_offset},
	{ "gdk_region_shrink",  cast(void**)& gdk_region_shrink},
	{ "gdk_region_union_with_rect",  cast(void**)& gdk_region_union_with_rect},
	{ "gdk_region_intersect",  cast(void**)& gdk_region_intersect},
	{ "gdk_region_union",  cast(void**)& gdk_region_union},
	{ "gdk_region_subtract",  cast(void**)& gdk_region_subtract},
	{ "gdk_region_xor",  cast(void**)& gdk_region_xor},
	{ "gdk_region_spans_intersect_foreach",  cast(void**)& gdk_region_spans_intersect_foreach},
	{ "gdk_gc_new",  cast(void**)& gdk_gc_new},
	{ "gdk_gc_new_with_values",  cast(void**)& gdk_gc_new_with_values},
	{ "gdk_gc_get_screen",  cast(void**)& gdk_gc_get_screen},
	{ "gdk_gc_ref",  cast(void**)& gdk_gc_ref},
	{ "gdk_gc_unref",  cast(void**)& gdk_gc_unref},
	{ "gdk_gc_set_values",  cast(void**)& gdk_gc_set_values},
	{ "gdk_gc_get_values",  cast(void**)& gdk_gc_get_values},
	{ "gdk_gc_set_foreground",  cast(void**)& gdk_gc_set_foreground},
	{ "gdk_gc_set_background",  cast(void**)& gdk_gc_set_background},
	{ "gdk_gc_set_rgb_fg_color",  cast(void**)& gdk_gc_set_rgb_fg_color},
	{ "gdk_gc_set_rgb_bg_color",  cast(void**)& gdk_gc_set_rgb_bg_color},
	{ "gdk_gc_set_font",  cast(void**)& gdk_gc_set_font},
	{ "gdk_gc_set_function",  cast(void**)& gdk_gc_set_function},
	{ "gdk_gc_set_fill",  cast(void**)& gdk_gc_set_fill},
	{ "gdk_gc_set_tile",  cast(void**)& gdk_gc_set_tile},
	{ "gdk_gc_set_stipple",  cast(void**)& gdk_gc_set_stipple},
	{ "gdk_gc_set_ts_origin",  cast(void**)& gdk_gc_set_ts_origin},
	{ "gdk_gc_set_clip_origin",  cast(void**)& gdk_gc_set_clip_origin},
	{ "gdk_gc_set_clip_mask",  cast(void**)& gdk_gc_set_clip_mask},
	{ "gdk_gc_set_clip_rectangle",  cast(void**)& gdk_gc_set_clip_rectangle},
	{ "gdk_gc_set_clip_region",  cast(void**)& gdk_gc_set_clip_region},
	{ "gdk_gc_set_subwindow",  cast(void**)& gdk_gc_set_subwindow},
	{ "gdk_gc_set_exposures",  cast(void**)& gdk_gc_set_exposures},
	{ "gdk_gc_set_line_attributes",  cast(void**)& gdk_gc_set_line_attributes},
	{ "gdk_gc_set_dashes",  cast(void**)& gdk_gc_set_dashes},
	{ "gdk_gc_copy",  cast(void**)& gdk_gc_copy},
	{ "gdk_gc_set_colormap",  cast(void**)& gdk_gc_set_colormap},
	{ "gdk_gc_get_colormap",  cast(void**)& gdk_gc_get_colormap},
	{ "gdk_gc_offset",  cast(void**)& gdk_gc_offset},
	{ "gdk_drawable_ref",  cast(void**)& gdk_drawable_ref},
	{ "gdk_drawable_unref",  cast(void**)& gdk_drawable_unref},
	{ "gdk_drawable_set_data",  cast(void**)& gdk_drawable_set_data},
	{ "gdk_drawable_get_data",  cast(void**)& gdk_drawable_get_data},
	{ "gdk_drawable_get_display",  cast(void**)& gdk_drawable_get_display},
	{ "gdk_drawable_get_screen",  cast(void**)& gdk_drawable_get_screen},
	{ "gdk_drawable_get_visual",  cast(void**)& gdk_drawable_get_visual},
	{ "gdk_drawable_set_colormap",  cast(void**)& gdk_drawable_set_colormap},
	{ "gdk_drawable_get_colormap",  cast(void**)& gdk_drawable_get_colormap},
	{ "gdk_drawable_get_depth",  cast(void**)& gdk_drawable_get_depth},
	{ "gdk_drawable_get_size",  cast(void**)& gdk_drawable_get_size},
	{ "gdk_drawable_get_clip_region",  cast(void**)& gdk_drawable_get_clip_region},
	{ "gdk_drawable_get_visible_region",  cast(void**)& gdk_drawable_get_visible_region},
	{ "gdk_draw_point",  cast(void**)& gdk_draw_point},
	{ "gdk_draw_points",  cast(void**)& gdk_draw_points},
	{ "gdk_draw_line",  cast(void**)& gdk_draw_line},
	{ "gdk_draw_lines",  cast(void**)& gdk_draw_lines},
	{ "gdk_draw_pixbuf",  cast(void**)& gdk_draw_pixbuf},
	{ "gdk_draw_segments",  cast(void**)& gdk_draw_segments},
	{ "gdk_draw_rectangle",  cast(void**)& gdk_draw_rectangle},
	{ "gdk_draw_arc",  cast(void**)& gdk_draw_arc},
	{ "gdk_draw_polygon",  cast(void**)& gdk_draw_polygon},
	{ "gdk_draw_trapezoids",  cast(void**)& gdk_draw_trapezoids},
	{ "gdk_draw_glyphs",  cast(void**)& gdk_draw_glyphs},
	{ "gdk_draw_glyphs_transformed",  cast(void**)& gdk_draw_glyphs_transformed},
	{ "gdk_draw_layout_line",  cast(void**)& gdk_draw_layout_line},
	{ "gdk_draw_layout_line_with_colors",  cast(void**)& gdk_draw_layout_line_with_colors},
	{ "gdk_draw_layout",  cast(void**)& gdk_draw_layout},
	{ "gdk_draw_layout_with_colors",  cast(void**)& gdk_draw_layout_with_colors},
	{ "gdk_draw_string",  cast(void**)& gdk_draw_string},
	{ "gdk_draw_text",  cast(void**)& gdk_draw_text},
	{ "gdk_draw_text_wc",  cast(void**)& gdk_draw_text_wc},
	{ "gdk_draw_drawable",  cast(void**)& gdk_draw_drawable},
	{ "gdk_draw_image",  cast(void**)& gdk_draw_image},
	{ "gdk_drawable_get_image",  cast(void**)& gdk_drawable_get_image},
	{ "gdk_drawable_copy_to_image",  cast(void**)& gdk_drawable_copy_to_image},
	{ "gdk_pixmap_new",  cast(void**)& gdk_pixmap_new},
	{ "gdk_pixmap_create_from_data",  cast(void**)& gdk_pixmap_create_from_data},
	{ "gdk_pixmap_create_from_xpm",  cast(void**)& gdk_pixmap_create_from_xpm},
	{ "gdk_pixmap_colormap_create_from_xpm",  cast(void**)& gdk_pixmap_colormap_create_from_xpm},
	{ "gdk_pixmap_create_from_xpm_d",  cast(void**)& gdk_pixmap_create_from_xpm_d},
	{ "gdk_pixmap_colormap_create_from_xpm_d",  cast(void**)& gdk_pixmap_colormap_create_from_xpm_d},
	{ "gdk_bitmap_create_from_data",  cast(void**)& gdk_bitmap_create_from_data},
	{ "gdk_rgb_init",  cast(void**)& gdk_rgb_init},
	{ "gdk_draw_rgb_image",  cast(void**)& gdk_draw_rgb_image},
	{ "gdk_draw_rgb_image_dithalign",  cast(void**)& gdk_draw_rgb_image_dithalign},
	{ "gdk_draw_indexed_image",  cast(void**)& gdk_draw_indexed_image},
	{ "gdk_draw_gray_image",  cast(void**)& gdk_draw_gray_image},
	{ "gdk_draw_rgb_32_image",  cast(void**)& gdk_draw_rgb_32_image},
	{ "gdk_draw_rgb_32_image_dithalign",  cast(void**)& gdk_draw_rgb_32_image_dithalign},
	{ "gdk_rgb_cmap_new",  cast(void**)& gdk_rgb_cmap_new},
	{ "gdk_rgb_cmap_free",  cast(void**)& gdk_rgb_cmap_free},
	{ "gdk_rgb_gc_set_foreground",  cast(void**)& gdk_rgb_gc_set_foreground},
	{ "gdk_rgb_gc_set_background",  cast(void**)& gdk_rgb_gc_set_background},
	{ "gdk_rgb_xpixel_from_rgb",  cast(void**)& gdk_rgb_xpixel_from_rgb},
	{ "gdk_rgb_find_color",  cast(void**)& gdk_rgb_find_color},
	{ "gdk_rgb_set_install",  cast(void**)& gdk_rgb_set_install},
	{ "gdk_rgb_set_min_colors",  cast(void**)& gdk_rgb_set_min_colors},
	{ "gdk_rgb_get_visual",  cast(void**)& gdk_rgb_get_visual},
	{ "gdk_rgb_get_colormap",  cast(void**)& gdk_rgb_get_colormap},
	{ "gdk_rgb_ditherable",  cast(void**)& gdk_rgb_ditherable},
	{ "gdk_rgb_colormap_ditherable",  cast(void**)& gdk_rgb_colormap_ditherable},
	{ "gdk_rgb_set_verbose",  cast(void**)& gdk_rgb_set_verbose},
	{ "gdk_image_new",  cast(void**)& gdk_image_new},
	{ "gdk_image_new_bitmap",  cast(void**)& gdk_image_new_bitmap},
	{ "gdk_image_get",  cast(void**)& gdk_image_get},
	{ "gdk_image_ref",  cast(void**)& gdk_image_ref},
	{ "gdk_image_unref",  cast(void**)& gdk_image_unref},
	{ "gdk_image_get_colormap",  cast(void**)& gdk_image_get_colormap},
	{ "gdk_image_set_colormap",  cast(void**)& gdk_image_set_colormap},
	{ "gdk_image_put_pixel",  cast(void**)& gdk_image_put_pixel},
	{ "gdk_image_get_pixel",  cast(void**)& gdk_image_get_pixel},
	{ "gdk_pixbuf_render_threshold_alpha",  cast(void**)& gdk_pixbuf_render_threshold_alpha},
	{ "gdk_pixbuf_render_to_drawable",  cast(void**)& gdk_pixbuf_render_to_drawable},
	{ "gdk_pixbuf_render_to_drawable_alpha",  cast(void**)& gdk_pixbuf_render_to_drawable_alpha},
	{ "gdk_pixbuf_render_pixmap_and_mask",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask},
	{ "gdk_pixbuf_render_pixmap_and_mask_for_colormap",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask_for_colormap},
	{ "gdk_pixbuf_get_from_drawable",  cast(void**)& gdk_pixbuf_get_from_drawable},
	{ "gdk_pixbuf_get_from_image",  cast(void**)& gdk_pixbuf_get_from_image},
	{ "gdk_pixbuf_get_type",  cast(void**)& gdk_pixbuf_get_type},
	{ "gdk_pixbuf_new_from_data",  cast(void**)& gdk_pixbuf_new_from_data},
	{ "gdk_pixbuf_new_from_xpm_data",  cast(void**)& gdk_pixbuf_new_from_xpm_data},
	{ "gdk_pixbuf_new_from_inline",  cast(void**)& gdk_pixbuf_new_from_inline},
	{ "gdk_pixbuf_new_subpixbuf",  cast(void**)& gdk_pixbuf_new_subpixbuf},
	{ "gdk_pixbuf_copy",  cast(void**)& gdk_pixbuf_copy},
	{ "gdk_pixbuf_get_colorspace",  cast(void**)& gdk_pixbuf_get_colorspace},
	{ "gdk_pixbuf_get_n_channels",  cast(void**)& gdk_pixbuf_get_n_channels},
	{ "gdk_pixbuf_get_has_alpha",  cast(void**)& gdk_pixbuf_get_has_alpha},
	{ "gdk_pixbuf_get_bits_per_sample",  cast(void**)& gdk_pixbuf_get_bits_per_sample},
	{ "gdk_pixbuf_get_pixels",  cast(void**)& gdk_pixbuf_get_pixels},
	{ "gdk_pixbuf_get_width",  cast(void**)& gdk_pixbuf_get_width},
	{ "gdk_pixbuf_get_height",  cast(void**)& gdk_pixbuf_get_height},
	{ "gdk_pixbuf_get_rowstride",  cast(void**)& gdk_pixbuf_get_rowstride},
	{ "gdk_pixbuf_get_option",  cast(void**)& gdk_pixbuf_get_option},
	{ "gdk_pixbuf_new_from_file",  cast(void**)& gdk_pixbuf_new_from_file},
	{ "gdk_pixbuf_new_from_file_at_size",  cast(void**)& gdk_pixbuf_new_from_file_at_size},
	{ "gdk_pixbuf_new_from_file_at_scale",  cast(void**)& gdk_pixbuf_new_from_file_at_scale},
	{ "gdk_pixbuf_savev",  cast(void**)& gdk_pixbuf_savev},
	{ "gdk_pixbuf_save",  cast(void**)& gdk_pixbuf_save},
	{ "gdk_pixbuf_save_to_callback",  cast(void**)& gdk_pixbuf_save_to_callback},
	{ "gdk_pixbuf_save_to_callbackv",  cast(void**)& gdk_pixbuf_save_to_callbackv},
	{ "gdk_pixbuf_save_to_buffer",  cast(void**)& gdk_pixbuf_save_to_buffer},
	{ "gdk_pixbuf_save_to_bufferv",  cast(void**)& gdk_pixbuf_save_to_bufferv},
	{ "gdk_pixbuf_scale_simple",  cast(void**)& gdk_pixbuf_scale_simple},
	{ "gdk_pixbuf_scale",  cast(void**)& gdk_pixbuf_scale},
	{ "gdk_pixbuf_composite_color_simple",  cast(void**)& gdk_pixbuf_composite_color_simple},
	{ "gdk_pixbuf_composite",  cast(void**)& gdk_pixbuf_composite},
	{ "gdk_pixbuf_composite_color",  cast(void**)& gdk_pixbuf_composite_color},
	{ "gdk_pixbuf_rotate_simple",  cast(void**)& gdk_pixbuf_rotate_simple},
	{ "gdk_pixbuf_flip",  cast(void**)& gdk_pixbuf_flip},
	{ "gdk_pixbuf_add_alpha",  cast(void**)& gdk_pixbuf_add_alpha},
	{ "gdk_pixbuf_copy_area",  cast(void**)& gdk_pixbuf_copy_area},
	{ "gdk_pixbuf_saturate_and_pixelate",  cast(void**)& gdk_pixbuf_saturate_and_pixelate},
	{ "gdk_pixbuf_apply_embedded_orientation",  cast(void**)& gdk_pixbuf_apply_embedded_orientation},
	{ "gdk_pixbuf_fill",  cast(void**)& gdk_pixbuf_fill},
	{ "gdk_colormap_new",  cast(void**)& gdk_colormap_new},
	{ "gdk_colormap_ref",  cast(void**)& gdk_colormap_ref},
	{ "gdk_colormap_unref",  cast(void**)& gdk_colormap_unref},
	{ "gdk_colormap_get_system",  cast(void**)& gdk_colormap_get_system},
	{ "gdk_colormap_get_system_size",  cast(void**)& gdk_colormap_get_system_size},
	{ "gdk_colormap_change",  cast(void**)& gdk_colormap_change},
	{ "gdk_colormap_alloc_colors",  cast(void**)& gdk_colormap_alloc_colors},
	{ "gdk_colormap_alloc_color",  cast(void**)& gdk_colormap_alloc_color},
	{ "gdk_colormap_free_colors",  cast(void**)& gdk_colormap_free_colors},
	{ "gdk_colormap_query_color",  cast(void**)& gdk_colormap_query_color},
	{ "gdk_colormap_get_visual",  cast(void**)& gdk_colormap_get_visual},
	{ "gdk_colormap_get_screen",  cast(void**)& gdk_colormap_get_screen},
	{ "gdk_colors_store",  cast(void**)& gdk_colors_store},
	{ "gdk_colors_alloc",  cast(void**)& gdk_colors_alloc},
	{ "gdk_colors_free",  cast(void**)& gdk_colors_free},
	{ "gdk_color_copy",  cast(void**)& gdk_color_copy},
	{ "gdk_color_free",  cast(void**)& gdk_color_free},
	{ "gdk_color_white",  cast(void**)& gdk_color_white},
	{ "gdk_color_black",  cast(void**)& gdk_color_black},
	{ "gdk_color_parse",  cast(void**)& gdk_color_parse},
	{ "gdk_color_alloc",  cast(void**)& gdk_color_alloc},
	{ "gdk_color_change",  cast(void**)& gdk_color_change},
	{ "gdk_color_equal",  cast(void**)& gdk_color_equal},
	{ "gdk_color_hash",  cast(void**)& gdk_color_hash},
	{ "gdk_color_to_string",  cast(void**)& gdk_color_to_string},
	{ "gdk_query_depths",  cast(void**)& gdk_query_depths},
	{ "gdk_query_visual_types",  cast(void**)& gdk_query_visual_types},
	{ "gdk_list_visuals",  cast(void**)& gdk_list_visuals},
	{ "gdk_visual_get_best_depth",  cast(void**)& gdk_visual_get_best_depth},
	{ "gdk_visual_get_best_type",  cast(void**)& gdk_visual_get_best_type},
	{ "gdk_visual_get_system",  cast(void**)& gdk_visual_get_system},
	{ "gdk_visual_get_best",  cast(void**)& gdk_visual_get_best},
	{ "gdk_visual_get_best_with_depth",  cast(void**)& gdk_visual_get_best_with_depth},
	{ "gdk_visual_get_best_with_type",  cast(void**)& gdk_visual_get_best_with_type},
	{ "gdk_visual_get_best_with_both",  cast(void**)& gdk_visual_get_best_with_both},
	{ "gdk_visual_get_screen",  cast(void**)& gdk_visual_get_screen},
	{ "gdk_font_load",  cast(void**)& gdk_font_load},
	{ "gdk_font_load_for_display",  cast(void**)& gdk_font_load_for_display},
	{ "gdk_fontset_load",  cast(void**)& gdk_fontset_load},
	{ "gdk_fontset_load_for_display",  cast(void**)& gdk_fontset_load_for_display},
	{ "gdk_font_from_description",  cast(void**)& gdk_font_from_description},
	{ "gdk_font_from_description_for_display",  cast(void**)& gdk_font_from_description_for_display},
	{ "gdk_font_get_display",  cast(void**)& gdk_font_get_display},
	{ "gdk_font_ref",  cast(void**)& gdk_font_ref},
	{ "gdk_font_unref",  cast(void**)& gdk_font_unref},
	{ "gdk_font_id",  cast(void**)& gdk_font_id},
	{ "gdk_font_equal",  cast(void**)& gdk_font_equal},
	{ "gdk_string_extents",  cast(void**)& gdk_string_extents},
	{ "gdk_text_extents",  cast(void**)& gdk_text_extents},
	{ "gdk_text_extents_wc",  cast(void**)& gdk_text_extents_wc},
	{ "gdk_string_width",  cast(void**)& gdk_string_width},
	{ "gdk_text_width",  cast(void**)& gdk_text_width},
	{ "gdk_text_width_wc",  cast(void**)& gdk_text_width_wc},
	{ "gdk_char_width",  cast(void**)& gdk_char_width},
	{ "gdk_char_width_wc",  cast(void**)& gdk_char_width_wc},
	{ "gdk_string_measure",  cast(void**)& gdk_string_measure},
	{ "gdk_text_measure",  cast(void**)& gdk_text_measure},
	{ "gdk_char_measure",  cast(void**)& gdk_char_measure},
	{ "gdk_string_height",  cast(void**)& gdk_string_height},
	{ "gdk_text_height",  cast(void**)& gdk_text_height},
	{ "gdk_char_height",  cast(void**)& gdk_char_height},
	{ "gdk_wcstombs",  cast(void**)& gdk_wcstombs},
	{ "gdk_mbstowcs",  cast(void**)& gdk_mbstowcs},
	{ "gdk_cursor_new",  cast(void**)& gdk_cursor_new},
	{ "gdk_cursor_new_from_pixmap",  cast(void**)& gdk_cursor_new_from_pixmap},
	{ "gdk_cursor_new_from_pixbuf",  cast(void**)& gdk_cursor_new_from_pixbuf},
	{ "gdk_cursor_new_from_name",  cast(void**)& gdk_cursor_new_from_name},
	{ "gdk_cursor_new_for_display",  cast(void**)& gdk_cursor_new_for_display},
	{ "gdk_cursor_get_display",  cast(void**)& gdk_cursor_get_display},
	{ "gdk_cursor_get_image",  cast(void**)& gdk_cursor_get_image},
	{ "gdk_cursor_ref",  cast(void**)& gdk_cursor_ref},
	{ "gdk_cursor_unref",  cast(void**)& gdk_cursor_unref},
	{ "gdk_window_new",  cast(void**)& gdk_window_new},
	{ "gdk_window_destroy",  cast(void**)& gdk_window_destroy},
	{ "gdk_window_get_window_type",  cast(void**)& gdk_window_get_window_type},
	{ "gdk_window_at_pointer",  cast(void**)& gdk_window_at_pointer},
	{ "gdk_window_show",  cast(void**)& gdk_window_show},
	{ "gdk_window_show_unraised",  cast(void**)& gdk_window_show_unraised},
	{ "gdk_window_hide",  cast(void**)& gdk_window_hide},
	{ "gdk_window_is_visible",  cast(void**)& gdk_window_is_visible},
	{ "gdk_window_is_viewable",  cast(void**)& gdk_window_is_viewable},
	{ "gdk_window_get_state",  cast(void**)& gdk_window_get_state},
	{ "gdk_window_withdraw",  cast(void**)& gdk_window_withdraw},
	{ "gdk_window_iconify",  cast(void**)& gdk_window_iconify},
	{ "gdk_window_deiconify",  cast(void**)& gdk_window_deiconify},
	{ "gdk_window_stick",  cast(void**)& gdk_window_stick},
	{ "gdk_window_unstick",  cast(void**)& gdk_window_unstick},
	{ "gdk_window_maximize",  cast(void**)& gdk_window_maximize},
	{ "gdk_window_unmaximize",  cast(void**)& gdk_window_unmaximize},
	{ "gdk_window_fullscreen",  cast(void**)& gdk_window_fullscreen},
	{ "gdk_window_unfullscreen",  cast(void**)& gdk_window_unfullscreen},
	{ "gdk_window_set_keep_above",  cast(void**)& gdk_window_set_keep_above},
	{ "gdk_window_set_keep_below",  cast(void**)& gdk_window_set_keep_below},
	{ "gdk_window_set_opacity",  cast(void**)& gdk_window_set_opacity},
	{ "gdk_window_set_composited",  cast(void**)& gdk_window_set_composited},
	{ "gdk_window_move",  cast(void**)& gdk_window_move},
	{ "gdk_window_resize",  cast(void**)& gdk_window_resize},
	{ "gdk_window_move_resize",  cast(void**)& gdk_window_move_resize},
	{ "gdk_window_scroll",  cast(void**)& gdk_window_scroll},
	{ "gdk_window_move_region",  cast(void**)& gdk_window_move_region},
	{ "gdk_window_reparent",  cast(void**)& gdk_window_reparent},
	{ "gdk_window_clear",  cast(void**)& gdk_window_clear},
	{ "gdk_window_clear_area",  cast(void**)& gdk_window_clear_area},
	{ "gdk_window_clear_area_e",  cast(void**)& gdk_window_clear_area_e},
	{ "gdk_window_raise",  cast(void**)& gdk_window_raise},
	{ "gdk_window_lower",  cast(void**)& gdk_window_lower},
	{ "gdk_window_focus",  cast(void**)& gdk_window_focus},
	{ "gdk_window_register_dnd",  cast(void**)& gdk_window_register_dnd},
	{ "gdk_window_begin_resize_drag",  cast(void**)& gdk_window_begin_resize_drag},
	{ "gdk_window_begin_move_drag",  cast(void**)& gdk_window_begin_move_drag},
	{ "gdk_window_constrain_size",  cast(void**)& gdk_window_constrain_size},
	{ "gdk_window_beep",  cast(void**)& gdk_window_beep},
	{ "gdk_window_begin_paint_rect",  cast(void**)& gdk_window_begin_paint_rect},
	{ "gdk_window_begin_paint_region",  cast(void**)& gdk_window_begin_paint_region},
	{ "gdk_window_end_paint",  cast(void**)& gdk_window_end_paint},
	{ "gdk_window_invalidate_rect",  cast(void**)& gdk_window_invalidate_rect},
	{ "gdk_window_invalidate_region",  cast(void**)& gdk_window_invalidate_region},
	{ "gdk_window_get_update_area",  cast(void**)& gdk_window_get_update_area},
	{ "gdk_window_freeze_updates",  cast(void**)& gdk_window_freeze_updates},
	{ "gdk_window_thaw_updates",  cast(void**)& gdk_window_thaw_updates},
	{ "gdk_window_process_all_updates",  cast(void**)& gdk_window_process_all_updates},
	{ "gdk_window_process_updates",  cast(void**)& gdk_window_process_updates},
	{ "gdk_window_set_debug_updates",  cast(void**)& gdk_window_set_debug_updates},
	{ "gdk_window_get_internal_paint_info",  cast(void**)& gdk_window_get_internal_paint_info},
	{ "gdk_window_enable_synchronized_configure",  cast(void**)& gdk_window_enable_synchronized_configure},
	{ "gdk_window_configure_finished",  cast(void**)& gdk_window_configure_finished},
	{ "gdk_window_set_user_data",  cast(void**)& gdk_window_set_user_data},
	{ "gdk_window_set_override_redirect",  cast(void**)& gdk_window_set_override_redirect},
	{ "gdk_window_set_accept_focus",  cast(void**)& gdk_window_set_accept_focus},
	{ "gdk_window_set_focus_on_map",  cast(void**)& gdk_window_set_focus_on_map},
	{ "gdk_window_add_filter",  cast(void**)& gdk_window_add_filter},
	{ "gdk_window_remove_filter",  cast(void**)& gdk_window_remove_filter},
	{ "gdk_window_shape_combine_mask",  cast(void**)& gdk_window_shape_combine_mask},
	{ "gdk_window_shape_combine_region",  cast(void**)& gdk_window_shape_combine_region},
	{ "gdk_window_set_child_shapes",  cast(void**)& gdk_window_set_child_shapes},
	{ "gdk_window_merge_child_shapes",  cast(void**)& gdk_window_merge_child_shapes},
	{ "gdk_window_input_shape_combine_mask",  cast(void**)& gdk_window_input_shape_combine_mask},
	{ "gdk_window_input_shape_combine_region",  cast(void**)& gdk_window_input_shape_combine_region},
	{ "gdk_window_set_child_input_shapes",  cast(void**)& gdk_window_set_child_input_shapes},
	{ "gdk_window_merge_child_input_shapes",  cast(void**)& gdk_window_merge_child_input_shapes},
	{ "gdk_window_set_static_gravities",  cast(void**)& gdk_window_set_static_gravities},
	{ "gdk_window_set_hints",  cast(void**)& gdk_window_set_hints},
	{ "gdk_window_set_title",  cast(void**)& gdk_window_set_title},
	{ "gdk_window_set_background",  cast(void**)& gdk_window_set_background},
	{ "gdk_window_set_back_pixmap",  cast(void**)& gdk_window_set_back_pixmap},
	{ "gdk_window_set_cursor",  cast(void**)& gdk_window_set_cursor},
	{ "gdk_window_get_user_data",  cast(void**)& gdk_window_get_user_data},
	{ "gdk_window_get_geometry",  cast(void**)& gdk_window_get_geometry},
	{ "gdk_window_set_geometry_hints",  cast(void**)& gdk_window_set_geometry_hints},
	{ "gdk_window_set_icon_list",  cast(void**)& gdk_window_set_icon_list},
	{ "gdk_window_set_modal_hint",  cast(void**)& gdk_window_set_modal_hint},
	{ "gdk_window_set_type_hint",  cast(void**)& gdk_window_set_type_hint},
	{ "gdk_window_get_type_hint",  cast(void**)& gdk_window_get_type_hint},
	{ "gdk_window_set_skip_taskbar_hint",  cast(void**)& gdk_window_set_skip_taskbar_hint},
	{ "gdk_window_set_skip_pager_hint",  cast(void**)& gdk_window_set_skip_pager_hint},
	{ "gdk_window_set_urgency_hint",  cast(void**)& gdk_window_set_urgency_hint},
	{ "gdk_window_get_position",  cast(void**)& gdk_window_get_position},
	{ "gdk_window_get_root_origin",  cast(void**)& gdk_window_get_root_origin},
	{ "gdk_window_get_frame_extents",  cast(void**)& gdk_window_get_frame_extents},
	{ "gdk_window_get_origin",  cast(void**)& gdk_window_get_origin},
	{ "gdk_window_get_deskrelative_origin",  cast(void**)& gdk_window_get_deskrelative_origin},
	{ "gdk_window_get_pointer",  cast(void**)& gdk_window_get_pointer},
	{ "gdk_window_get_parent",  cast(void**)& gdk_window_get_parent},
	{ "gdk_window_get_toplevel",  cast(void**)& gdk_window_get_toplevel},
	{ "gdk_window_get_children",  cast(void**)& gdk_window_get_children},
	{ "gdk_window_peek_children",  cast(void**)& gdk_window_peek_children},
	{ "gdk_window_get_events",  cast(void**)& gdk_window_get_events},
	{ "gdk_window_set_events",  cast(void**)& gdk_window_set_events},
	{ "gdk_window_set_icon",  cast(void**)& gdk_window_set_icon},
	{ "gdk_window_set_icon_name",  cast(void**)& gdk_window_set_icon_name},
	{ "gdk_window_set_transient_for",  cast(void**)& gdk_window_set_transient_for},
	{ "gdk_window_set_role",  cast(void**)& gdk_window_set_role},
	{ "gdk_window_set_startup_id",  cast(void**)& gdk_window_set_startup_id},
	{ "gdk_window_set_group",  cast(void**)& gdk_window_set_group},
	{ "gdk_window_get_group",  cast(void**)& gdk_window_get_group},
	{ "gdk_window_set_decorations",  cast(void**)& gdk_window_set_decorations},
	{ "gdk_window_get_decorations",  cast(void**)& gdk_window_get_decorations},
	{ "gdk_window_set_functions",  cast(void**)& gdk_window_set_functions},
	{ "gdk_window_get_toplevels",  cast(void**)& gdk_window_get_toplevels},
	{ "gdk_get_default_root_window",  cast(void**)& gdk_get_default_root_window},
	{ "gdk_set_pointer_hooks",  cast(void**)& gdk_set_pointer_hooks},
	{ "gdk_events_pending",  cast(void**)& gdk_events_pending},
	{ "gdk_event_peek",  cast(void**)& gdk_event_peek},
	{ "gdk_event_get",  cast(void**)& gdk_event_get},
	{ "gdk_event_get_graphics_expose",  cast(void**)& gdk_event_get_graphics_expose},
	{ "gdk_event_put",  cast(void**)& gdk_event_put},
	{ "gdk_event_new",  cast(void**)& gdk_event_new},
	{ "gdk_event_copy",  cast(void**)& gdk_event_copy},
	{ "gdk_event_free",  cast(void**)& gdk_event_free},
	{ "gdk_event_get_time",  cast(void**)& gdk_event_get_time},
	{ "gdk_event_get_state",  cast(void**)& gdk_event_get_state},
	{ "gdk_event_get_axis",  cast(void**)& gdk_event_get_axis},
	{ "gdk_event_get_coords",  cast(void**)& gdk_event_get_coords},
	{ "gdk_event_get_root_coords",  cast(void**)& gdk_event_get_root_coords},
	{ "gdk_event_request_motions",  cast(void**)& gdk_event_request_motions},
	{ "gdk_event_handler_set",  cast(void**)& gdk_event_handler_set},
	{ "gdk_event_send_client_message",  cast(void**)& gdk_event_send_client_message},
	{ "gdk_event_send_client_message_for_display",  cast(void**)& gdk_event_send_client_message_for_display},
	{ "gdk_event_send_clientmessage_toall",  cast(void**)& gdk_event_send_clientmessage_toall},
	{ "gdk_add_client_message_filter",  cast(void**)& gdk_add_client_message_filter},
	{ "gdk_get_show_events",  cast(void**)& gdk_get_show_events},
	{ "gdk_set_show_events",  cast(void**)& gdk_set_show_events},
	{ "gdk_event_set_screen",  cast(void**)& gdk_event_set_screen},
	{ "gdk_event_get_screen",  cast(void**)& gdk_event_get_screen},
	{ "gdk_setting_get",  cast(void**)& gdk_setting_get},
	{ "gdk_keymap_get_default",  cast(void**)& gdk_keymap_get_default},
	{ "gdk_keymap_get_for_display",  cast(void**)& gdk_keymap_get_for_display},
	{ "gdk_keymap_lookup_key",  cast(void**)& gdk_keymap_lookup_key},
	{ "gdk_keymap_translate_keyboard_state",  cast(void**)& gdk_keymap_translate_keyboard_state},
	{ "gdk_keymap_get_entries_for_keyval",  cast(void**)& gdk_keymap_get_entries_for_keyval},
	{ "gdk_keymap_get_entries_for_keycode",  cast(void**)& gdk_keymap_get_entries_for_keycode},
	{ "gdk_keymap_get_direction",  cast(void**)& gdk_keymap_get_direction},
	{ "gdk_keymap_have_bidi_layouts",  cast(void**)& gdk_keymap_have_bidi_layouts},
	{ "gdk_keyval_name",  cast(void**)& gdk_keyval_name},
	{ "gdk_keyval_from_name",  cast(void**)& gdk_keyval_from_name},
	{ "gdk_keyval_convert_case",  cast(void**)& gdk_keyval_convert_case},
	{ "gdk_keyval_to_upper",  cast(void**)& gdk_keyval_to_upper},
	{ "gdk_keyval_to_lower",  cast(void**)& gdk_keyval_to_lower},
	{ "gdk_keyval_is_upper",  cast(void**)& gdk_keyval_is_upper},
	{ "gdk_keyval_is_lower",  cast(void**)& gdk_keyval_is_lower},
	{ "gdk_keyval_to_unicode",  cast(void**)& gdk_keyval_to_unicode},
	{ "gdk_unicode_to_keyval",  cast(void**)& gdk_unicode_to_keyval},
	{ "gdk_selection_owner_set",  cast(void**)& gdk_selection_owner_set},
	{ "gdk_selection_owner_set_for_display",  cast(void**)& gdk_selection_owner_set_for_display},
	{ "gdk_selection_owner_get",  cast(void**)& gdk_selection_owner_get},
	{ "gdk_selection_owner_get_for_display",  cast(void**)& gdk_selection_owner_get_for_display},
	{ "gdk_selection_convert",  cast(void**)& gdk_selection_convert},
	{ "gdk_selection_property_get",  cast(void**)& gdk_selection_property_get},
	{ "gdk_selection_send_notify",  cast(void**)& gdk_selection_send_notify},
	{ "gdk_selection_send_notify_for_display",  cast(void**)& gdk_selection_send_notify_for_display},
	{ "gdk_drag_get_selection",  cast(void**)& gdk_drag_get_selection},
	{ "gdk_drag_abort",  cast(void**)& gdk_drag_abort},
	{ "gdk_drop_reply",  cast(void**)& gdk_drop_reply},
	{ "gdk_drag_context_new",  cast(void**)& gdk_drag_context_new},
	{ "gdk_drag_drop",  cast(void**)& gdk_drag_drop},
	{ "gdk_drag_find_window",  cast(void**)& gdk_drag_find_window},
	{ "gdk_drag_find_window_for_screen",  cast(void**)& gdk_drag_find_window_for_screen},
	{ "gdk_drag_context_ref",  cast(void**)& gdk_drag_context_ref},
	{ "gdk_drag_begin",  cast(void**)& gdk_drag_begin},
	{ "gdk_drag_motion",  cast(void**)& gdk_drag_motion},
	{ "gdk_drop_finish",  cast(void**)& gdk_drop_finish},
	{ "gdk_drag_get_protocol",  cast(void**)& gdk_drag_get_protocol},
	{ "gdk_drag_get_protocol_for_display",  cast(void**)& gdk_drag_get_protocol_for_display},
	{ "gdk_drag_context_unref",  cast(void**)& gdk_drag_context_unref},
	{ "gdk_drag_status",  cast(void**)& gdk_drag_status},
	{ "gdk_drag_drop_succeeded",  cast(void**)& gdk_drag_drop_succeeded},
	{ "gdk_threads_init",  cast(void**)& gdk_threads_init},
	{ "gdk_threads_enter",  cast(void**)& gdk_threads_enter},
	{ "gdk_threads_leave",  cast(void**)& gdk_threads_leave},
	{ "gdk_threads_set_lock_functions",  cast(void**)& gdk_threads_set_lock_functions},
	{ "gdk_threads_add_idle",  cast(void**)& gdk_threads_add_idle},
	{ "gdk_threads_add_idle_full",  cast(void**)& gdk_threads_add_idle_full},
	{ "gdk_threads_add_timeout",  cast(void**)& gdk_threads_add_timeout},
	{ "gdk_threads_add_timeout_full",  cast(void**)& gdk_threads_add_timeout_full},
	{ "gdk_input_add_full",  cast(void**)& gdk_input_add_full},
	{ "gdk_input_add",  cast(void**)& gdk_input_add},
	{ "gdk_input_remove",  cast(void**)& gdk_input_remove},
	{ "gdk_devices_list",  cast(void**)& gdk_devices_list},
	{ "gdk_device_set_source",  cast(void**)& gdk_device_set_source},
	{ "gdk_device_set_mode",  cast(void**)& gdk_device_set_mode},
	{ "gdk_device_set_key",  cast(void**)& gdk_device_set_key},
	{ "gdk_device_set_axis_use",  cast(void**)& gdk_device_set_axis_use},
	{ "gdk_device_get_core_pointer",  cast(void**)& gdk_device_get_core_pointer},
	{ "gdk_device_get_state",  cast(void**)& gdk_device_get_state},
	{ "gdk_device_get_history",  cast(void**)& gdk_device_get_history},
	{ "gdk_device_free_history",  cast(void**)& gdk_device_free_history},
	{ "gdk_device_get_axis",  cast(void**)& gdk_device_get_axis},
	{ "gdk_input_set_extension_events",  cast(void**)& gdk_input_set_extension_events},
	{ "gdk_window_foreign_new",  cast(void**)& gdk_window_foreign_new},
	{ "gdk_xid_table_lookup",  cast(void**)& gdk_xid_table_lookup},
	{ "gdk_window_lookup",  cast(void**)& gdk_window_lookup},
	{ "gdk_pixmap_lookup",  cast(void**)& gdk_pixmap_lookup},
	{ "gdk_x11_get_server_time",  cast(void**)& gdk_x11_get_server_time},
	{ "gdk_x11_window_set_user_time",  cast(void**)& gdk_x11_window_set_user_time},
	{ "gdk_x11_window_move_to_current_desktop",  cast(void**)& gdk_x11_window_move_to_current_desktop},
	{ "gdk_x11_display_broadcast_startup_message",  cast(void**)& gdk_x11_display_broadcast_startup_message},
	{ "gdk_x11_display_get_startup_notification_id",  cast(void**)& gdk_x11_display_get_startup_notification_id},
	{ "gdk_x11_drawable_get_xid",  cast(void**)& gdk_x11_drawable_get_xid},
	{ "gdk_x11_font_get_name",  cast(void**)& gdk_x11_font_get_name},
	{ "gdk_x11_font_get_xfont",  cast(void**)& gdk_x11_font_get_xfont},
	{ "gdk_x11_get_default_screen",  cast(void**)& gdk_x11_get_default_screen},
	{ "gdk_x11_grab_server",  cast(void**)& gdk_x11_grab_server},
	{ "gdk_x11_ungrab_server",  cast(void**)& gdk_x11_ungrab_server},
	{ "gdk_cairo_create",  cast(void**)& gdk_cairo_create},
	{ "gdk_cairo_set_source_color",  cast(void**)& gdk_cairo_set_source_color},
	{ "gdk_cairo_set_source_pixbuf",  cast(void**)& gdk_cairo_set_source_pixbuf},
	{ "gdk_cairo_set_source_pixmap",  cast(void**)& gdk_cairo_set_source_pixmap},
	{ "gdk_cairo_rectangle",  cast(void**)& gdk_cairo_rectangle},
	{ "gdk_cairo_region",  cast(void**)& gdk_cairo_region},

];