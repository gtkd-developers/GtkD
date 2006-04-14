/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module lib.cairoLib;

private import std.stdio;
private import cairoLib.typedefs;
private import lib.Loader;
private import lib.paths;

private Linker cairoLib_Linker;

static this()
{
	cairoLib_Linker = new Linker(libPath ~ importLibs[LIBRARY.CAIROLIB] );
	cairoLib_Linker.link(cairoLibLinks);
	debug writefln("* Finished static this(): cairoLib");
}

static ~this()
{
	delete cairoLib_Linker;
	debug writefln("* Finished static ~this(): cairoLib");
}

extern(C) 
{	
	// cairoLib.Cairo
	
	cairo_t* function(cairo_surface_t* target)cairo_create;
	cairo_t* function(cairo_t* cr)cairo_reference;
	void function(cairo_t* cr)cairo_destroy;
	void function(cairo_t* cr)cairo_save;
	void function(cairo_t* cr)cairo_restore;
	cairo_status_t function(cairo_t* cr)cairo_status;
	cairo_surface_t* function(cairo_t* cr)cairo_get_target;
	void function(cairo_t* cr, double red, double green, double blue)cairo_set_source_rgb;
	void function(cairo_t* cr, double red, double green, double blue, double alpha)cairo_set_source_rgba;
	void function(cairo_t* cr, cairo_pattern_t* source)cairo_set_source;
	void function(cairo_t* cr, cairo_surface_t* surface, double x, double y)cairo_set_source_surface;
	cairo_pattern_t* function(cairo_t* cr)cairo_get_source;
	void function(cairo_t* cr, cairo_antialias_t antialias)cairo_set_antialias;
	cairo_antialias_t function(cairo_t* cr)cairo_get_antialias;
	void function(cairo_t* cr, double* dashes, int numDashes, double offset)cairo_set_dash;
	void function(cairo_t* cr, cairo_fill_rule_t fillRule)cairo_set_fill_rule;
	cairo_fill_rule_t function(cairo_t* cr)cairo_get_fill_rule;
	void function(cairo_t* cr, cairo_line_cap_t lineCap)cairo_set_line_cap;
	cairo_line_cap_t function(cairo_t* cr)cairo_get_line_cap;
	void function(cairo_t* cr, cairo_line_join_t lineJoin)cairo_set_line_join;
	cairo_line_join_t function(cairo_t* cr)cairo_get_line_join;
	void function(cairo_t* cr, double width)cairo_set_line_width;
	double function(cairo_t* cr)cairo_get_line_width;
	void function(cairo_t* cr, double limit)cairo_set_miter_limit;
	double function(cairo_t* cr)cairo_get_miter_limit;
	void function(cairo_t* cr, cairo_operator_t op)cairo_set_operator;
	cairo_operator_t function(cairo_t* cr)cairo_get_operator;
	void function(cairo_t* cr, double tolerance)cairo_set_tolerance;
	double function(cairo_t* cr)cairo_get_tolerance;
	void function(cairo_t* cr)cairo_clip;
	void function(cairo_t* cr)cairo_clip_preserve;
	void function(cairo_t* cr)cairo_reset_clip;
	void function(cairo_t* cr)cairo_fill;
	void function(cairo_t* cr)cairo_fill_preserve;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2)cairo_fill_extents;
	cairo_bool_t function(cairo_t* cr, double x, double y)cairo_in_fill;
	void function(cairo_t* cr, cairo_pattern_t* pattern)cairo_mask;
	void function(cairo_t* cr, cairo_surface_t* surface, double surfaceX, double surfaceY)cairo_mask_surface;
	void function(cairo_t* cr)cairo_paint;
	void function(cairo_t* cr, double alpha)cairo_paint_with_alpha;
	void function(cairo_t* cr)cairo_stroke;
	void function(cairo_t* cr)cairo_stroke_preserve;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2)cairo_stroke_extents;
	cairo_bool_t function(cairo_t* cr, double x, double y)cairo_in_stroke;
	void function(cairo_t* cr)cairo_copy_page;
	void function(cairo_t* cr)cairo_show_page;
	cairo_path_t* function(cairo_t* cr)cairo_copy_path;
	cairo_path_t* function(cairo_t* cr)cairo_copy_path_flat;
	void function(cairo_path_t* path)cairo_path_destroy;
	void function(cairo_t* cr, cairo_path_t* path)cairo_append_path;
	void function(cairo_t* cr, double* x, double* y)cairo_get_current_point;
	void function(cairo_t* cr)cairo_new_path;
	void function(cairo_t* cr)cairo_close_path;
	void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2)cairo_arc;
	void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2)cairo_arc_negative;
	void function(cairo_t* cr, double x1, double y1, double x2, double y2, double x3, double y3)cairo_curve_to;
	void function(cairo_t* cr, double x, double y)cairo_line_to;
	void function(cairo_t* cr, double x, double y)cairo_move_to;
	void function(cairo_t* cr, double x, double y, double width, double height)cairo_rectangle;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs)cairo_glyph_path;
	void function(cairo_t* cr, char* utf8)cairo_text_path;
	void function(cairo_t* cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3)cairo_rel_curve_to;
	void function(cairo_t* cr, double dx, double dy)cairo_rel_line_to;
	void function(cairo_t* cr, double dx, double dy)cairo_rel_move_to;
	void function(cairo_t* cr, double tx, double ty)cairo_translate;
	void function(cairo_t* cr, double sx, double sy)cairo_scale;
	void function(cairo_t* cr, double angle)cairo_rotate;
	void function(cairo_t* cr, cairo_matrix_t* matrix)cairo_transform;
	void function(cairo_t* cr, cairo_matrix_t* matrix)cairo_set_matrix;
	void function(cairo_t* cr, cairo_matrix_t* matrix)cairo_get_matrix;
	void function(cairo_t* cr)cairo_identity_matrix;
	void function(cairo_t* cr, double* x, double* y)cairo_user_to_device;
	void function(cairo_t* cr, double* dx, double* dy)cairo_user_to_device_distance;
	void function(cairo_t* cr, double* x, double* y)cairo_device_to_user;
	void function(cairo_t* cr, double* dx, double* dy)cairo_device_to_user_distance;
	void function(cairo_t* cr, char* family, cairo_font_slant_t slant, cairo_font_weight_t weight)cairo_select_font_face;
	void function(cairo_t* cr, double size)cairo_set_font_size;
	void function(cairo_t* cr, cairo_matrix_t* matrix)cairo_set_font_matrix;
	void function(cairo_t* cr, cairo_matrix_t* matrix)cairo_get_font_matrix;
	void function(cairo_t* cr, cairo_font_options_t* options)cairo_set_font_options;
	void function(cairo_t* cr, cairo_font_options_t* options)cairo_get_font_options;
	void function(cairo_t* cr, char* utf8)cairo_show_text;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs)cairo_show_glyphs;
	cairo_font_face_t* function(cairo_t* cr)cairo_get_font_face;
	void function(cairo_t* cr, cairo_font_extents_t* extents)cairo_font_extents;
	void function(cairo_t* cr, cairo_font_face_t* fontFace)cairo_set_font_face;
	void function(cairo_t* cr, char* utf8, cairo_text_extents_t* extents)cairo_text_extents;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)cairo_glyph_extents;
	
	// cairoLib.Pattern
	
	void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue)cairo_pattern_add_color_stop_rgb;
	void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue, double alpha)cairo_pattern_add_color_stop_rgba;
	cairo_pattern_t* function(double red, double green, double blue)cairo_pattern_create_rgb;
	cairo_pattern_t* function(double red, double green, double blue, double alpha)cairo_pattern_create_rgba;
	cairo_pattern_t* function(cairo_surface_t* surface)cairo_pattern_create_for_surface;
	cairo_pattern_t* function(double x0, double y0, double x1, double y1)cairo_pattern_create_linear;
	cairo_pattern_t* function(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1)cairo_pattern_create_radial;
	void function(cairo_pattern_t* pattern)cairo_pattern_destroy;
	cairo_pattern_t* function(cairo_pattern_t* pattern)cairo_pattern_reference;
	cairo_status_t function(cairo_pattern_t* pattern)cairo_pattern_status;
	void function(cairo_pattern_t* pattern, cairo_extend_t extend)cairo_pattern_set_extend;
	cairo_extend_t function(cairo_pattern_t* pattern)cairo_pattern_get_extend;
	void function(cairo_pattern_t* pattern, cairo_filter_t filter)cairo_pattern_set_filter;
	cairo_filter_t function(cairo_pattern_t* pattern)cairo_pattern_get_filter;
	void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix)cairo_pattern_set_matrix;
	void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix)cairo_pattern_get_matrix;
	
	// cairoLib.FontFace
	
	cairo_font_face_t* function(cairo_font_face_t* fontFace)cairo_font_face_reference;
	void function(cairo_font_face_t* fontFace)cairo_font_face_destroy;
	cairo_status_t function(cairo_font_face_t* fontFace)cairo_font_face_status;
	void* function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key)cairo_font_face_get_user_data;
	cairo_status_t function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)cairo_font_face_set_user_data;
	
	// cairoLib.ScaledFont
	
	cairo_scaled_font_t* function(cairo_font_face_t* fontFace, cairo_matrix_t* fontMatrix, cairo_matrix_t* ctm, cairo_font_options_t* options)cairo_scaled_font_create;
	cairo_scaled_font_t* function(cairo_scaled_font_t* scaledFont)cairo_scaled_font_reference;
	void function(cairo_scaled_font_t* scaledFont)cairo_scaled_font_destroy;
	cairo_status_t function(cairo_scaled_font_t* scaledFont)cairo_scaled_font_status;
	void function(cairo_scaled_font_t* scaledFont, cairo_font_extents_t* extents)cairo_scaled_font_extents;
	void function(cairo_scaled_font_t* scaledFont, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents)cairo_scaled_font_glyph_extents;
	
	// cairoLib.FontOption
	
	cairo_font_options_t* function()cairo_font_options_create;
	cairo_font_options_t* function(cairo_font_options_t* original)cairo_font_options_copy;
	void function(cairo_font_options_t* options)cairo_font_options_destroy;
	cairo_status_t function(cairo_font_options_t* options)cairo_font_options_status;
	void function(cairo_font_options_t* options, cairo_font_options_t* other)cairo_font_options_merge;
	ulong function(cairo_font_options_t* options)cairo_font_options_hash;
	cairo_bool_t function(cairo_font_options_t* options, cairo_font_options_t* other)cairo_font_options_equal;
	void function(cairo_font_options_t* options, cairo_antialias_t antialias)cairo_font_options_set_antialias;
	cairo_antialias_t function(cairo_font_options_t* options)cairo_font_options_get_antialias;
	void function(cairo_font_options_t* options, cairo_subpixel_order_t subpixelOrder)cairo_font_options_set_subpixel_order;
	cairo_subpixel_order_t function(cairo_font_options_t* options)cairo_font_options_get_subpixel_order;
	void function(cairo_font_options_t* options, cairo_hint_style_t hintStyle)cairo_font_options_set_hint_style;
	cairo_hint_style_t function(cairo_font_options_t* options)cairo_font_options_get_hint_style;
	void function(cairo_font_options_t* options, cairo_hint_metrics_t hintMetrics)cairo_font_options_set_hint_metrics;
	cairo_hint_metrics_t function(cairo_font_options_t* options)cairo_font_options_get_hint_metrics;
	
	// cairoLib.Surface
	
	cairo_surface_t* function(cairo_surface_t* other, cairo_content_t content, int width, int height)cairo_surface_create_similar;
	void function(cairo_surface_t* surface)cairo_surface_destroy;
	void function(cairo_surface_t* surface)cairo_surface_finish;
	void function(cairo_surface_t* surface)cairo_surface_flush;
	void function(cairo_surface_t* surface, cairo_font_options_t* options)cairo_surface_get_font_options;
	cairo_status_t function(cairo_surface_t* surface, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)cairo_surface_set_user_data;
	void* function(cairo_surface_t* surface, cairo_user_data_key_t* key)cairo_surface_get_user_data;
	void function(cairo_surface_t* surface)cairo_surface_mark_dirty;
	void function(cairo_surface_t* surface, int x, int y, int width, int height)cairo_surface_mark_dirty_rectangle;
	cairo_surface_t* function(cairo_surface_t* surface)cairo_surface_reference;
	void function(cairo_surface_t* surface, double xOffset, double yOffset)cairo_surface_set_device_offset;
	cairo_status_t function(cairo_surface_t* surface)cairo_surface_status;
	cairo_surface_t* function(cairo_format_t format, int width, int height)cairo_image_surface_create;
	cairo_surface_t* function(char* data, cairo_format_t format, int width, int height, int stride)cairo_image_surface_create_for_data;
	int function(cairo_surface_t* surface)cairo_image_surface_get_width;
	int function(cairo_surface_t* surface)cairo_image_surface_get_height;
	cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints)cairo_pdf_surface_create;
	cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)cairo_pdf_surface_create_for_stream;
	void function(cairo_surface_t* surface, double xDpi, double yDpi)cairo_pdf_surface_set_dpi;
	cairo_surface_t* function(char* filename)cairo_image_surface_create_from_png;
	cairo_surface_t* function(cairo_read_func_t readFunc, void* closure)cairo_image_surface_create_from_png_stream;
	cairo_status_t function(cairo_surface_t* surface, char* filename)cairo_surface_write_to_png;
	cairo_status_t function(cairo_surface_t* surface, cairo_write_func_t writeFunc, void* closure)cairo_surface_write_to_png_stream;
	cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints)cairo_ps_surface_create;
	cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)cairo_ps_surface_create_for_stream;
	void function(cairo_surface_t* surface, double xDpi, double yDpi)cairo_ps_surface_set_dpi;
	cairo_surface_t* function(HDC hdc)cairo_win32_surface_create;
	cairo_surface_t* function(Display* dpy, Drawable drawable, Visual* visual, int width, int height)cairo_xlib_surface_create;
	cairo_surface_t* function(Display* dpy, Pixmap bitmap, Screen* screen, int width, int height)cairo_xlib_surface_create_for_bitmap;
	void function(cairo_surface_t* surface, int width, int height)cairo_xlib_surface_set_size;
	void function(cairo_surface_t* surface, Drawable drawable, int width, int height)cairo_xlib_surface_set_drawable;
	
	// cairoLib.Matrix
	
	void function(cairo_matrix_t* matrix, double xx, double yx, double xy, double yy, double x0, double y0)cairo_matrix_init;
	void function(cairo_matrix_t* matrix)cairo_matrix_init_identity;
	void function(cairo_matrix_t* matrix, double tx, double ty)cairo_matrix_init_translate;
	void function(cairo_matrix_t* matrix, double sx, double sy)cairo_matrix_init_scale;
	void function(cairo_matrix_t* matrix, double radians)cairo_matrix_init_rotate;
	void function(cairo_matrix_t* matrix, double tx, double ty)cairo_matrix_translate;
	void function(cairo_matrix_t* matrix, double sx, double sy)cairo_matrix_scale;
	void function(cairo_matrix_t* matrix, double radians)cairo_matrix_rotate;
	cairo_status_t function(cairo_matrix_t* matrix)cairo_matrix_invert;
	void function(cairo_matrix_t* result, cairo_matrix_t* a, cairo_matrix_t* b)cairo_matrix_multiply;
	void function(cairo_matrix_t* matrix, double* dx, double* dy)cairo_matrix_transform_distance;
	void function(cairo_matrix_t* matrix, double* x, double* y)cairo_matrix_transform_point;
	
	// cairoLib.Status
	
	char* function(cairo_status_t status)cairo_status_to_string;
	void function()cairo_debug_reset_static_data;
	
	// cairoLib.Version
	
	int function()cairo_version;
	char* function()cairo_version_string;
	
	// cairoLib.
	


}

Symbol[] cairoLibLinks = 
[

	{ "cairo_create",  cast(void**)& cairo_create},
	{ "cairo_reference",  cast(void**)& cairo_reference},
	{ "cairo_destroy",  cast(void**)& cairo_destroy},
	{ "cairo_save",  cast(void**)& cairo_save},
	{ "cairo_restore",  cast(void**)& cairo_restore},
	{ "cairo_status",  cast(void**)& cairo_status},
	{ "cairo_get_target",  cast(void**)& cairo_get_target},
	{ "cairo_set_source_rgb",  cast(void**)& cairo_set_source_rgb},
	{ "cairo_set_source_rgba",  cast(void**)& cairo_set_source_rgba},
	{ "cairo_set_source",  cast(void**)& cairo_set_source},
	{ "cairo_set_source_surface",  cast(void**)& cairo_set_source_surface},
	{ "cairo_get_source",  cast(void**)& cairo_get_source},
	{ "cairo_set_antialias",  cast(void**)& cairo_set_antialias},
	{ "cairo_get_antialias",  cast(void**)& cairo_get_antialias},
	{ "cairo_set_dash",  cast(void**)& cairo_set_dash},
	{ "cairo_set_fill_rule",  cast(void**)& cairo_set_fill_rule},
	{ "cairo_get_fill_rule",  cast(void**)& cairo_get_fill_rule},
	{ "cairo_set_line_cap",  cast(void**)& cairo_set_line_cap},
	{ "cairo_get_line_cap",  cast(void**)& cairo_get_line_cap},
	{ "cairo_set_line_join",  cast(void**)& cairo_set_line_join},
	{ "cairo_get_line_join",  cast(void**)& cairo_get_line_join},
	{ "cairo_set_line_width",  cast(void**)& cairo_set_line_width},
	{ "cairo_get_line_width",  cast(void**)& cairo_get_line_width},
	{ "cairo_set_miter_limit",  cast(void**)& cairo_set_miter_limit},
	{ "cairo_get_miter_limit",  cast(void**)& cairo_get_miter_limit},
	{ "cairo_set_operator",  cast(void**)& cairo_set_operator},
	{ "cairo_get_operator",  cast(void**)& cairo_get_operator},
	{ "cairo_set_tolerance",  cast(void**)& cairo_set_tolerance},
	{ "cairo_get_tolerance",  cast(void**)& cairo_get_tolerance},
	{ "cairo_clip",  cast(void**)& cairo_clip},
	{ "cairo_clip_preserve",  cast(void**)& cairo_clip_preserve},
	{ "cairo_reset_clip",  cast(void**)& cairo_reset_clip},
	{ "cairo_fill",  cast(void**)& cairo_fill},
	{ "cairo_fill_preserve",  cast(void**)& cairo_fill_preserve},
	{ "cairo_fill_extents",  cast(void**)& cairo_fill_extents},
	{ "cairo_in_fill",  cast(void**)& cairo_in_fill},
	{ "cairo_mask",  cast(void**)& cairo_mask},
	{ "cairo_mask_surface",  cast(void**)& cairo_mask_surface},
	{ "cairo_paint",  cast(void**)& cairo_paint},
	{ "cairo_paint_with_alpha",  cast(void**)& cairo_paint_with_alpha},
	{ "cairo_stroke",  cast(void**)& cairo_stroke},
	{ "cairo_stroke_preserve",  cast(void**)& cairo_stroke_preserve},
	{ "cairo_stroke_extents",  cast(void**)& cairo_stroke_extents},
	{ "cairo_in_stroke",  cast(void**)& cairo_in_stroke},
	{ "cairo_copy_page",  cast(void**)& cairo_copy_page},
	{ "cairo_show_page",  cast(void**)& cairo_show_page},
	{ "cairo_copy_path",  cast(void**)& cairo_copy_path},
	{ "cairo_copy_path_flat",  cast(void**)& cairo_copy_path_flat},
	{ "cairo_path_destroy",  cast(void**)& cairo_path_destroy},
	{ "cairo_append_path",  cast(void**)& cairo_append_path},
	{ "cairo_get_current_point",  cast(void**)& cairo_get_current_point},
	{ "cairo_new_path",  cast(void**)& cairo_new_path},
	{ "cairo_close_path",  cast(void**)& cairo_close_path},
	{ "cairo_arc",  cast(void**)& cairo_arc},
	{ "cairo_arc_negative",  cast(void**)& cairo_arc_negative},
	{ "cairo_curve_to",  cast(void**)& cairo_curve_to},
	{ "cairo_line_to",  cast(void**)& cairo_line_to},
	{ "cairo_move_to",  cast(void**)& cairo_move_to},
	{ "cairo_rectangle",  cast(void**)& cairo_rectangle},
	{ "cairo_glyph_path",  cast(void**)& cairo_glyph_path},
	{ "cairo_text_path",  cast(void**)& cairo_text_path},
	{ "cairo_rel_curve_to",  cast(void**)& cairo_rel_curve_to},
	{ "cairo_rel_line_to",  cast(void**)& cairo_rel_line_to},
	{ "cairo_rel_move_to",  cast(void**)& cairo_rel_move_to},
	{ "cairo_translate",  cast(void**)& cairo_translate},
	{ "cairo_scale",  cast(void**)& cairo_scale},
	{ "cairo_rotate",  cast(void**)& cairo_rotate},
	{ "cairo_transform",  cast(void**)& cairo_transform},
	{ "cairo_set_matrix",  cast(void**)& cairo_set_matrix},
	{ "cairo_get_matrix",  cast(void**)& cairo_get_matrix},
	{ "cairo_identity_matrix",  cast(void**)& cairo_identity_matrix},
	{ "cairo_user_to_device",  cast(void**)& cairo_user_to_device},
	{ "cairo_user_to_device_distance",  cast(void**)& cairo_user_to_device_distance},
	{ "cairo_device_to_user",  cast(void**)& cairo_device_to_user},
	{ "cairo_device_to_user_distance",  cast(void**)& cairo_device_to_user_distance},
	{ "cairo_select_font_face",  cast(void**)& cairo_select_font_face},
	{ "cairo_set_font_size",  cast(void**)& cairo_set_font_size},
	{ "cairo_set_font_matrix",  cast(void**)& cairo_set_font_matrix},
	{ "cairo_get_font_matrix",  cast(void**)& cairo_get_font_matrix},
	{ "cairo_set_font_options",  cast(void**)& cairo_set_font_options},
	{ "cairo_get_font_options",  cast(void**)& cairo_get_font_options},
	{ "cairo_show_text",  cast(void**)& cairo_show_text},
	{ "cairo_show_glyphs",  cast(void**)& cairo_show_glyphs},
	{ "cairo_get_font_face",  cast(void**)& cairo_get_font_face},
	{ "cairo_font_extents",  cast(void**)& cairo_font_extents},
	{ "cairo_set_font_face",  cast(void**)& cairo_set_font_face},
	{ "cairo_text_extents",  cast(void**)& cairo_text_extents},
	{ "cairo_glyph_extents",  cast(void**)& cairo_glyph_extents},
	{ "cairo_pattern_add_color_stop_rgb",  cast(void**)& cairo_pattern_add_color_stop_rgb},
	{ "cairo_pattern_add_color_stop_rgba",  cast(void**)& cairo_pattern_add_color_stop_rgba},
	{ "cairo_pattern_create_rgb",  cast(void**)& cairo_pattern_create_rgb},
	{ "cairo_pattern_create_rgba",  cast(void**)& cairo_pattern_create_rgba},
	{ "cairo_pattern_create_for_surface",  cast(void**)& cairo_pattern_create_for_surface},
	{ "cairo_pattern_create_linear",  cast(void**)& cairo_pattern_create_linear},
	{ "cairo_pattern_create_radial",  cast(void**)& cairo_pattern_create_radial},
	{ "cairo_pattern_destroy",  cast(void**)& cairo_pattern_destroy},
	{ "cairo_pattern_reference",  cast(void**)& cairo_pattern_reference},
	{ "cairo_pattern_status",  cast(void**)& cairo_pattern_status},
	{ "cairo_pattern_set_extend",  cast(void**)& cairo_pattern_set_extend},
	{ "cairo_pattern_get_extend",  cast(void**)& cairo_pattern_get_extend},
	{ "cairo_pattern_set_filter",  cast(void**)& cairo_pattern_set_filter},
	{ "cairo_pattern_get_filter",  cast(void**)& cairo_pattern_get_filter},
	{ "cairo_pattern_set_matrix",  cast(void**)& cairo_pattern_set_matrix},
	{ "cairo_pattern_get_matrix",  cast(void**)& cairo_pattern_get_matrix},
	{ "cairo_font_face_reference",  cast(void**)& cairo_font_face_reference},
	{ "cairo_font_face_destroy",  cast(void**)& cairo_font_face_destroy},
	{ "cairo_font_face_status",  cast(void**)& cairo_font_face_status},
	{ "cairo_font_face_get_user_data",  cast(void**)& cairo_font_face_get_user_data},
	{ "cairo_font_face_set_user_data",  cast(void**)& cairo_font_face_set_user_data},
	{ "cairo_scaled_font_create",  cast(void**)& cairo_scaled_font_create},
	{ "cairo_scaled_font_reference",  cast(void**)& cairo_scaled_font_reference},
	{ "cairo_scaled_font_destroy",  cast(void**)& cairo_scaled_font_destroy},
	{ "cairo_scaled_font_status",  cast(void**)& cairo_scaled_font_status},
	{ "cairo_scaled_font_extents",  cast(void**)& cairo_scaled_font_extents},
	{ "cairo_scaled_font_glyph_extents",  cast(void**)& cairo_scaled_font_glyph_extents},
	{ "cairo_font_options_create",  cast(void**)& cairo_font_options_create},
	{ "cairo_font_options_copy",  cast(void**)& cairo_font_options_copy},
	{ "cairo_font_options_destroy",  cast(void**)& cairo_font_options_destroy},
	{ "cairo_font_options_status",  cast(void**)& cairo_font_options_status},
	{ "cairo_font_options_merge",  cast(void**)& cairo_font_options_merge},
	{ "cairo_font_options_hash",  cast(void**)& cairo_font_options_hash},
	{ "cairo_font_options_equal",  cast(void**)& cairo_font_options_equal},
	{ "cairo_font_options_set_antialias",  cast(void**)& cairo_font_options_set_antialias},
	{ "cairo_font_options_get_antialias",  cast(void**)& cairo_font_options_get_antialias},
	{ "cairo_font_options_set_subpixel_order",  cast(void**)& cairo_font_options_set_subpixel_order},
	{ "cairo_font_options_get_subpixel_order",  cast(void**)& cairo_font_options_get_subpixel_order},
	{ "cairo_font_options_set_hint_style",  cast(void**)& cairo_font_options_set_hint_style},
	{ "cairo_font_options_get_hint_style",  cast(void**)& cairo_font_options_get_hint_style},
	{ "cairo_font_options_set_hint_metrics",  cast(void**)& cairo_font_options_set_hint_metrics},
	{ "cairo_font_options_get_hint_metrics",  cast(void**)& cairo_font_options_get_hint_metrics},
	{ "cairo_surface_create_similar",  cast(void**)& cairo_surface_create_similar},
	{ "cairo_surface_destroy",  cast(void**)& cairo_surface_destroy},
	{ "cairo_surface_finish",  cast(void**)& cairo_surface_finish},
	{ "cairo_surface_flush",  cast(void**)& cairo_surface_flush},
	{ "cairo_surface_get_font_options",  cast(void**)& cairo_surface_get_font_options},
	{ "cairo_surface_set_user_data",  cast(void**)& cairo_surface_set_user_data},
	{ "cairo_surface_get_user_data",  cast(void**)& cairo_surface_get_user_data},
	{ "cairo_surface_mark_dirty",  cast(void**)& cairo_surface_mark_dirty},
	{ "cairo_surface_mark_dirty_rectangle",  cast(void**)& cairo_surface_mark_dirty_rectangle},
	{ "cairo_surface_reference",  cast(void**)& cairo_surface_reference},
	{ "cairo_surface_set_device_offset",  cast(void**)& cairo_surface_set_device_offset},
	{ "cairo_surface_status",  cast(void**)& cairo_surface_status},
	{ "cairo_image_surface_create",  cast(void**)& cairo_image_surface_create},
	{ "cairo_image_surface_create_for_data",  cast(void**)& cairo_image_surface_create_for_data},
	{ "cairo_image_surface_get_width",  cast(void**)& cairo_image_surface_get_width},
	{ "cairo_image_surface_get_height",  cast(void**)& cairo_image_surface_get_height},
	{ "cairo_pdf_surface_create",  cast(void**)& cairo_pdf_surface_create},
	{ "cairo_pdf_surface_create_for_stream",  cast(void**)& cairo_pdf_surface_create_for_stream},
	{ "cairo_pdf_surface_set_dpi",  cast(void**)& cairo_pdf_surface_set_dpi},
	{ "cairo_image_surface_create_from_png",  cast(void**)& cairo_image_surface_create_from_png},
	{ "cairo_image_surface_create_from_png_stream",  cast(void**)& cairo_image_surface_create_from_png_stream},
	{ "cairo_surface_write_to_png",  cast(void**)& cairo_surface_write_to_png},
	{ "cairo_surface_write_to_png_stream",  cast(void**)& cairo_surface_write_to_png_stream},
	{ "cairo_ps_surface_create",  cast(void**)& cairo_ps_surface_create},
	{ "cairo_ps_surface_create_for_stream",  cast(void**)& cairo_ps_surface_create_for_stream},
	{ "cairo_ps_surface_set_dpi",  cast(void**)& cairo_ps_surface_set_dpi},
	{ "cairo_win32_surface_create",  cast(void**)& cairo_win32_surface_create},
	{ "cairo_xlib_surface_create",  cast(void**)& cairo_xlib_surface_create},
	{ "cairo_xlib_surface_create_for_bitmap",  cast(void**)& cairo_xlib_surface_create_for_bitmap},
	{ "cairo_xlib_surface_set_size",  cast(void**)& cairo_xlib_surface_set_size},
	{ "cairo_xlib_surface_set_drawable",  cast(void**)& cairo_xlib_surface_set_drawable},
	{ "cairo_matrix_init",  cast(void**)& cairo_matrix_init},
	{ "cairo_matrix_init_identity",  cast(void**)& cairo_matrix_init_identity},
	{ "cairo_matrix_init_translate",  cast(void**)& cairo_matrix_init_translate},
	{ "cairo_matrix_init_scale",  cast(void**)& cairo_matrix_init_scale},
	{ "cairo_matrix_init_rotate",  cast(void**)& cairo_matrix_init_rotate},
	{ "cairo_matrix_translate",  cast(void**)& cairo_matrix_translate},
	{ "cairo_matrix_scale",  cast(void**)& cairo_matrix_scale},
	{ "cairo_matrix_rotate",  cast(void**)& cairo_matrix_rotate},
	{ "cairo_matrix_invert",  cast(void**)& cairo_matrix_invert},
	{ "cairo_matrix_multiply",  cast(void**)& cairo_matrix_multiply},
	{ "cairo_matrix_transform_distance",  cast(void**)& cairo_matrix_transform_distance},
	{ "cairo_matrix_transform_point",  cast(void**)& cairo_matrix_transform_point},
	{ "cairo_status_to_string",  cast(void**)& cairo_status_to_string},
	{ "cairo_debug_reset_static_data",  cast(void**)& cairo_debug_reset_static_data},
	{ "cairo_version",  cast(void**)& cairo_version},
	{ "cairo_version_string",  cast(void**)& cairo_version_string},

];