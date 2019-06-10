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
// implement new conversion alities on the wrap.utils pakage


module cairo.c.functions;

private import std.stdio;
private import cairo.c.types;

version (Windows)
	static immutable LIBRARY_CAIRO = ["libcairo-2.dll;cairo.dll"];
else version (OSX)
	static immutable LIBRARY_CAIRO = ["libcairo.dylib"];
else
	static immutable LIBRARY_CAIRO = ["libcairo.so.2"];

__gshared extern(C)
{
	// cairo.Context

	cairo_t* cairo_create(cairo_surface_t* target);
	cairo_t* cairo_reference(cairo_t* cr);
	void cairo_destroy(cairo_t* cr);
	cairo_status_t cairo_status(cairo_t* cr);
	void cairo_save(cairo_t* cr);
	void cairo_restore(cairo_t* cr);
	cairo_surface_t* cairo_get_target(cairo_t* cr);
	void cairo_push_group(cairo_t* cr);
	void cairo_push_group_with_content(cairo_t* cr, cairo_content_t content);
	cairo_pattern_t* cairo_pop_group(cairo_t* cr);
	void cairo_pop_group_to_source(cairo_t* cr);
	cairo_surface_t* cairo_get_group_target(cairo_t* cr);
	void cairo_set_source_rgb(cairo_t* cr, double red, double green, double blue);
	void cairo_set_source_rgba(cairo_t* cr, double red, double green, double blue, double alpha);
	void cairo_set_source(cairo_t* cr, cairo_pattern_t* source);
	void cairo_set_source_surface(cairo_t* cr, cairo_surface_t* surface, double x, double y);
	cairo_pattern_t* cairo_get_source(cairo_t* cr);
	void cairo_set_antialias(cairo_t* cr, cairo_antialias_t antialias);
	cairo_antialias_t cairo_get_antialias(cairo_t* cr);
	void cairo_set_dash(cairo_t* cr, double* dashes, int numDashes, double offset);
	int cairo_get_dash_count(cairo_t* cr);
	void cairo_get_dash(cairo_t* cr, double* dashes, double* offset);
	void cairo_set_fill_rule(cairo_t* cr, cairo_fill_rule_t fillRule);
	cairo_fill_rule_t cairo_get_fill_rule(cairo_t* cr);
	void cairo_set_line_cap(cairo_t* cr, cairo_line_cap_t lineCap);
	cairo_line_cap_t cairo_get_line_cap(cairo_t* cr);
	void cairo_set_line_join(cairo_t* cr, cairo_line_join_t lineJoin);
	cairo_line_join_t cairo_get_line_join(cairo_t* cr);
	void cairo_set_line_width(cairo_t* cr, double width);
	double cairo_get_line_width(cairo_t* cr);
	void cairo_set_miter_limit(cairo_t* cr, double limit);
	double cairo_get_miter_limit(cairo_t* cr);
	void cairo_set_operator(cairo_t* cr, cairo_operator_t op);
	cairo_operator_t cairo_get_operator(cairo_t* cr);
	void cairo_set_tolerance(cairo_t* cr, double tolerance);
	double cairo_get_tolerance(cairo_t* cr);
	void cairo_clip(cairo_t* cr);
	void cairo_clip_preserve(cairo_t* cr);
	void cairo_clip_extents(cairo_t* cr, double* x1, double* y1, double* x2, double* y2);
	cairo_bool_t cairo_in_clip(cairo_t* cr, double x, double y);
	void cairo_reset_clip(cairo_t* cr);
	void cairo_rectangle_list_destroy(cairo_rectangle_list_t* rectangleList);
	cairo_rectangle_list_t* cairo_copy_clip_rectangle_list(cairo_t* cr);
	void cairo_fill(cairo_t* cr);
	void cairo_fill_preserve(cairo_t* cr);
	void cairo_fill_extents(cairo_t* cr, double* x1, double* y1, double* x2, double* y2);
	cairo_bool_t cairo_in_fill(cairo_t* cr, double x, double y);
	void cairo_mask(cairo_t* cr, cairo_pattern_t* pattern);
	void cairo_mask_surface(cairo_t* cr, cairo_surface_t* surface, double surfaceX, double surfaceY);
	void cairo_paint(cairo_t* cr);
	void cairo_paint_with_alpha(cairo_t* cr, double alpha);
	void cairo_stroke(cairo_t* cr);
	void cairo_stroke_preserve(cairo_t* cr);
	void cairo_stroke_extents(cairo_t* cr, double* x1, double* y1, double* x2, double* y2);
	cairo_bool_t cairo_in_stroke(cairo_t* cr, double x, double y);
	void cairo_copy_page(cairo_t* cr);
	void cairo_show_page(cairo_t* cr);
	uint cairo_get_reference_count(cairo_t* cr);
	cairo_status_t cairo_set_user_data(cairo_t* cr, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_get_user_data(cairo_t* cr, cairo_user_data_key_t* key);
	cairo_path_t* cairo_copy_path(cairo_t* cr);
	cairo_path_t* cairo_copy_path_flat(cairo_t* cr);
	void cairo_path_destroy(cairo_path_t* path);
	void cairo_append_path(cairo_t* cr, cairo_path_t* path);
	cairo_bool_t cairo_has_current_point(cairo_t* cr);
	void cairo_get_current_point(cairo_t* cr, double* x, double* y);
	void cairo_new_path(cairo_t* cr);
	void cairo_new_sub_path(cairo_t* cr);
	void cairo_close_path(cairo_t* cr);
	void cairo_arc(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2);
	void cairo_arc_negative(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2);
	void cairo_curve_to(cairo_t* cr, double x1, double y1, double x2, double y2, double x3, double y3);
	void cairo_line_to(cairo_t* cr, double x, double y);
	void cairo_move_to(cairo_t* cr, double x, double y);
	void cairo_rectangle(cairo_t* cr, double x, double y, double width, double height);
	void cairo_glyph_path(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs);
	void cairo_text_path(cairo_t* cr, char* utf8);
	void cairo_rel_curve_to(cairo_t* cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3);
	void cairo_rel_line_to(cairo_t* cr, double dx, double dy);
	void cairo_rel_move_to(cairo_t* cr, double dx, double dy);
	void cairo_path_extents(cairo_t* cr, double* x1, double* y1, double* x2, double* y2);
	void cairo_translate(cairo_t* cr, double tx, double ty);
	void cairo_scale(cairo_t* cr, double sx, double sy);
	void cairo_rotate(cairo_t* cr, double angle);
	void cairo_transform(cairo_t* cr, cairo_matrix_t* matrix);
	void cairo_set_matrix(cairo_t* cr, cairo_matrix_t* matrix);
	void cairo_get_matrix(cairo_t* cr, cairo_matrix_t* matrix);
	void cairo_identity_matrix(cairo_t* cr);
	void cairo_user_to_device(cairo_t* cr, double* x, double* y);
	void cairo_user_to_device_distance(cairo_t* cr, double* dx, double* dy);
	void cairo_device_to_user(cairo_t* cr, double* x, double* y);
	void cairo_device_to_user_distance(cairo_t* cr, double* dx, double* dy);
	void cairo_select_font_face(cairo_t* cr, char* family, cairo_font_slant_t slant, cairo_font_weight_t weight);
	void cairo_set_font_size(cairo_t* cr, double size);
	void cairo_set_font_matrix(cairo_t* cr, cairo_matrix_t* matrix);
	void cairo_get_font_matrix(cairo_t* cr, cairo_matrix_t* matrix);
	void cairo_set_font_options(cairo_t* cr, cairo_font_options_t* options);
	void cairo_get_font_options(cairo_t* cr, cairo_font_options_t* options);
	void cairo_set_font_face(cairo_t* cr, cairo_font_face_t* fontFace);
	cairo_font_face_t* cairo_get_font_face(cairo_t* cr);
	void cairo_set_scaled_font(cairo_t* cr, cairo_scaled_font_t* scaledFont);
	cairo_scaled_font_t* cairo_get_scaled_font(cairo_t* cr);
	void cairo_show_text(cairo_t* cr, char* utf8);
	void cairo_show_glyphs(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs);
	void cairo_show_text_glyphs(cairo_t* cr, char* utf8, int utf8_Len, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_cluster_t* clusters, int numClusters, cairo_text_cluster_flags_t clusterFlags);
	void cairo_font_extents(cairo_t* cr, cairo_font_extents_t* extents);
	void cairo_text_extents(cairo_t* cr, char* utf8, cairo_text_extents_t* extents);
	void cairo_glyph_extents(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents);
	cairo_font_face_t* cairo_toy_font_face_create(char* family, cairo_font_slant_t slant, cairo_font_weight_t weight);
	char* cairo_toy_font_face_get_family(cairo_font_face_t* fontFace);
	cairo_font_slant_t cairo_toy_font_face_get_slant(cairo_font_face_t* fontFace);
	cairo_font_weight_t cairo_toy_font_face_get_weight(cairo_font_face_t* fontFace);
	cairo_glyph_t* cairo_glyph_allocate(int numGlyphs);
	void cairo_glyph_free(cairo_glyph_t* glyphs);
	cairo_text_cluster_t* cairo_text_cluster_allocate(int numClusters);
	void cairo_text_cluster_free(cairo_text_cluster_t* clusters);

	// cairo.Pattern

	void cairo_pattern_add_color_stop_rgb(cairo_pattern_t* pattern, double offset, double red, double green, double blue);
	void cairo_pattern_add_color_stop_rgba(cairo_pattern_t* pattern, double offset, double red, double green, double blue, double alpha);
	cairo_status_t cairo_pattern_get_color_stop_count(cairo_pattern_t* pattern, int* count);
	cairo_status_t cairo_pattern_get_color_stop_rgba(cairo_pattern_t* pattern, int index, double* offset, double* red, double* green, double* blue, double* alpha);
	cairo_pattern_t* cairo_pattern_create_rgb(double red, double green, double blue);
	cairo_pattern_t* cairo_pattern_create_rgba(double red, double green, double blue, double alpha);
	cairo_status_t cairo_pattern_get_rgba(cairo_pattern_t* pattern, double* red, double* green, double* blue, double* alpha);
	cairo_pattern_t* cairo_pattern_create_for_surface(cairo_surface_t* surface);
	cairo_status_t cairo_pattern_get_surface(cairo_pattern_t* pattern, cairo_surface_t** surface);
	cairo_pattern_t* cairo_pattern_create_linear(double x0, double y0, double x1, double y1);
	cairo_status_t cairo_pattern_get_linear_points(cairo_pattern_t* pattern, double* x0, double* y0, double* x1, double* y1);
	cairo_pattern_t* cairo_pattern_create_radial(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1);
	cairo_status_t cairo_pattern_get_radial_circles(cairo_pattern_t* pattern, double* x0, double* y0, double* r0, double* x1, double* y1, double* r1);
	cairo_pattern_t* cairo_pattern_create_mesh();
	cairo_pattern_t* cairo_pattern_reference(cairo_pattern_t* pattern);
	void cairo_pattern_destroy(cairo_pattern_t* pattern);
	cairo_status_t cairo_pattern_status(cairo_pattern_t* pattern);
	void cairo_pattern_set_extend(cairo_pattern_t* pattern, cairo_extend_t extend);
	cairo_extend_t cairo_pattern_get_extend(cairo_pattern_t* pattern);
	void cairo_pattern_set_filter(cairo_pattern_t* pattern, cairo_filter_t filter);
	cairo_filter_t cairo_pattern_get_filter(cairo_pattern_t* pattern);
	void cairo_pattern_set_matrix(cairo_pattern_t* pattern, cairo_matrix_t* matrix);
	void cairo_pattern_get_matrix(cairo_pattern_t* pattern, cairo_matrix_t* matrix);
	cairo_pattern_type_t cairo_pattern_get_type(cairo_pattern_t* pattern);
	uint cairo_pattern_get_reference_count(cairo_pattern_t* pattern);
	cairo_status_t cairo_pattern_set_user_data(cairo_pattern_t* pattern, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_pattern_get_user_data(cairo_pattern_t* pattern, cairo_user_data_key_t* key);

	// cairo.MeshPattern

	void cairo_mesh_pattern_begin_patch(cairo_pattern_t* pattern);
	void cairo_mesh_pattern_end_patch(cairo_pattern_t* pattern);
	void cairo_mesh_pattern_move_to(cairo_pattern_t* pattern, double x, double y);
	void cairo_mesh_pattern_line_to(cairo_pattern_t* pattern, double x, double y);
	void cairo_mesh_pattern_curve_to(cairo_pattern_t* pattern, double x1, double y1, double x2, double y2, double x3, double y3);
	void cairo_mesh_pattern_set_control_point(cairo_pattern_t* pattern, uint pointNum, double x, double y);
	void cairo_mesh_pattern_set_corner_color_rgb(cairo_pattern_t* pattern, uint cornerNum, double red, double green, double blue);
	void cairo_mesh_pattern_set_corner_color_rgba(cairo_pattern_t* pattern, uint cornerNum, double red, double green, double blue, double alpha);
	cairo_status_t cairo_mesh_pattern_get_patch_count(cairo_pattern_t* pattern, uint* count);
	cairo_path_t* cairo_mesh_pattern_get_path(cairo_pattern_t* pattern, uint patchNum);
	cairo_status_t cairo_mesh_pattern_get_control_point(cairo_pattern_t* pattern, uint patchNum, uint pointNum, double* x, double* y);
	cairo_status_t cairo_mesh_pattern_get_corner_color_rgba(cairo_pattern_t* pattern, uint patchNum, uint cornerNum, double* red, double* green, double* blue, double* alpha);

	// cairo.Region

	cairo_region_t* cairo_region_create();
	cairo_region_t* cairo_region_create_rectangle(cairo_rectangle_int_t* rectangle);
	cairo_region_t* cairo_region_create_rectangles(cairo_rectangle_int_t* rects, int count);
	cairo_region_t* cairo_region_copy(cairo_region_t* original);
	cairo_region_t* cairo_region_reference(cairo_region_t* region);
	void cairo_region_destroy(cairo_region_t* region);
	cairo_status_t cairo_region_status(cairo_region_t* region);
	void cairo_region_get_extents(cairo_region_t* region, cairo_rectangle_int_t* extents);
	int cairo_region_num_rectangles(cairo_region_t* region);
	void cairo_region_get_rectangle(cairo_region_t* region, int nth, cairo_rectangle_int_t* rectangle);
	cairo_bool_t cairo_region_is_empty(cairo_region_t* region);
	cairo_bool_t cairo_region_contains_point(cairo_region_t* region, int x, int y);
	cairo_region_overlap_t cairo_region_contains_rectangle(cairo_region_t* region, cairo_rectangle_int_t* rectangle);
	cairo_bool_t cairo_region_equal(cairo_region_t* a, cairo_region_t* b);
	void cairo_region_translate(cairo_region_t* region, int dx, int dy);
	cairo_status_t cairo_region_intersect(cairo_region_t* dst, cairo_region_t* other);
	cairo_status_t cairo_region_intersect_rectangle(cairo_region_t* dst, cairo_rectangle_int_t* rectangle);
	cairo_status_t cairo_region_subtract(cairo_region_t* dst, cairo_region_t* other);
	cairo_status_t cairo_region_subtract_rectangle(cairo_region_t* dst, cairo_rectangle_int_t* rectangle);
	cairo_status_t cairo_region_union(cairo_region_t* dst, cairo_region_t* other);
	cairo_status_t cairo_region_union_rectangle(cairo_region_t* dst, cairo_rectangle_int_t* rectangle);
	cairo_status_t cairo_region_xor(cairo_region_t* dst, cairo_region_t* other);
	cairo_status_t cairo_region_xor_rectangle(cairo_region_t* dst, cairo_rectangle_int_t* rectangle);

	// cairo.RasterSource

	cairo_pattern_t* cairo_pattern_create_raster_source(void* userData, cairo_content_t content, int width, int height);
	void cairo_raster_source_pattern_set_callback_data(cairo_pattern_t* pattern, void* data);
	void* cairo_raster_source_pattern_get_callback_data(cairo_pattern_t* pattern);
	void cairo_raster_source_pattern_set_acquire(cairo_pattern_t* pattern, cairo_raster_source_acquire_func_t acquire, cairo_raster_source_release_func_t release);
	void cairo_raster_source_pattern_get_acquire(cairo_pattern_t* pattern, cairo_raster_source_acquire_func_t* acquire, cairo_raster_source_release_func_t* release);
	void cairo_raster_source_pattern_set_snapshot(cairo_pattern_t* pattern, cairo_raster_source_snapshot_func_t snapshot);
	cairo_raster_source_snapshot_func_t cairo_raster_source_pattern_get_snapshot(cairo_pattern_t* pattern);
	void cairo_raster_source_pattern_set_copy(cairo_pattern_t* pattern, cairo_raster_source_copy_func_t copy);
	cairo_raster_source_copy_func_t cairo_raster_source_pattern_get_copy(cairo_pattern_t* pattern);
	void cairo_raster_source_pattern_set_finish(cairo_pattern_t* pattern, cairo_raster_source_finish_func_t finish);
	cairo_raster_source_finish_func_t cairo_raster_source_pattern_get_finish(cairo_pattern_t* pattern);

	// cairo.FontFace

	cairo_font_face_t* cairo_font_face_reference(cairo_font_face_t* fontFace);
	void cairo_font_face_destroy(cairo_font_face_t* fontFace);
	cairo_status_t cairo_font_face_status(cairo_font_face_t* fontFace);
	cairo_font_type_t cairo_font_face_get_type(cairo_font_face_t* fontFace);
	uint cairo_font_face_get_reference_count(cairo_font_face_t* fontFace);
	cairo_status_t cairo_font_face_set_user_data(cairo_font_face_t* fontFace, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_font_face_get_user_data(cairo_font_face_t* fontFace, cairo_user_data_key_t* key);

	// cairo.ScaledFont

	cairo_scaled_font_t* cairo_scaled_font_create(cairo_font_face_t* fontFace, cairo_matrix_t* fontMatrix, cairo_matrix_t* ctm, cairo_font_options_t* options);
	cairo_scaled_font_t* cairo_scaled_font_reference(cairo_scaled_font_t* scaledFont);
	void cairo_scaled_font_destroy(cairo_scaled_font_t* scaledFont);
	cairo_status_t cairo_scaled_font_status(cairo_scaled_font_t* scaledFont);
	void cairo_scaled_font_extents(cairo_scaled_font_t* scaledFont, cairo_font_extents_t* extents);
	void cairo_scaled_font_text_extents(cairo_scaled_font_t* scaledFont, char* utf8, cairo_text_extents_t* extents);
	void cairo_scaled_font_glyph_extents(cairo_scaled_font_t* scaledFont, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents);
	cairo_status_t cairo_scaled_font_text_to_glyphs(cairo_scaled_font_t* scaledFont, double x, double y, char* utf8, int utf8_Len, cairo_glyph_t** glyphs, int* numGlyphs, cairo_text_cluster_t** clusters, int* numClusters, cairo_text_cluster_flags_t* clusterFlags);
	cairo_font_face_t* cairo_scaled_font_get_font_face(cairo_scaled_font_t* scaledFont);
	void cairo_scaled_font_get_font_options(cairo_scaled_font_t* scaledFont, cairo_font_options_t* options);
	void cairo_scaled_font_get_font_matrix(cairo_scaled_font_t* scaledFont, cairo_matrix_t* fontMatrix);
	void cairo_scaled_font_get_ctm(cairo_scaled_font_t* scaledFont, cairo_matrix_t* ctm);
	void cairo_scaled_font_get_scale_matrix(cairo_scaled_font_t* scaledFont, cairo_matrix_t* scaleMatrix);
	cairo_font_type_t cairo_scaled_font_get_type(cairo_scaled_font_t* scaledFont);
	uint cairo_scaled_font_get_reference_count(cairo_scaled_font_t* scaledFont);
	cairo_status_t cairo_scaled_font_set_user_data(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_scaled_font_get_user_data(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key);

	// cairo.FontOption

	cairo_font_options_t* cairo_font_options_create();
	cairo_font_options_t* cairo_font_options_copy(cairo_font_options_t* original);
	void cairo_font_options_destroy(cairo_font_options_t* options);
	cairo_status_t cairo_font_options_status(cairo_font_options_t* options);
	void cairo_font_options_merge(cairo_font_options_t* options, cairo_font_options_t* other);
	ulong cairo_font_options_hash(cairo_font_options_t* options);
	cairo_bool_t cairo_font_options_equal(cairo_font_options_t* options, cairo_font_options_t* other);
	void cairo_font_options_set_antialias(cairo_font_options_t* options, cairo_antialias_t antialias);
	cairo_antialias_t cairo_font_options_get_antialias(cairo_font_options_t* options);
	void cairo_font_options_set_subpixel_order(cairo_font_options_t* options, cairo_subpixel_order_t subpixelOrder);
	cairo_subpixel_order_t cairo_font_options_get_subpixel_order(cairo_font_options_t* options);
	void cairo_font_options_set_hint_style(cairo_font_options_t* options, cairo_hint_style_t hintStyle);
	cairo_hint_style_t cairo_font_options_get_hint_style(cairo_font_options_t* options);
	void cairo_font_options_set_hint_metrics(cairo_font_options_t* options, cairo_hint_metrics_t hintMetrics);
	cairo_hint_metrics_t cairo_font_options_get_hint_metrics(cairo_font_options_t* options);

	// cairo.UserFontFace

	cairo_font_face_t* cairo_user_font_face_create();
	void cairo_user_font_face_set_init_func(cairo_font_face_t* fontFace, cairo_user_scaled_font_init_func_t initFunc);
	cairo_user_scaled_font_init_func_t cairo_user_font_face_get_init_func(cairo_font_face_t* fontFace);
	void cairo_user_font_face_set_render_glyph_func(cairo_font_face_t* fontFace, cairo_user_scaled_font_render_glyph_func_t renderGlyphFunc);
	cairo_user_scaled_font_render_glyph_func_t cairo_user_font_face_get_render_glyph_func(cairo_font_face_t* fontFace);
	void cairo_user_font_face_set_unicode_to_glyph_func(cairo_font_face_t* fontFace, cairo_user_scaled_font_unicode_to_glyph_func_t unicodeToGlyphFunc);
	cairo_user_scaled_font_unicode_to_glyph_func_t cairo_user_font_face_get_unicode_to_glyph_func(cairo_font_face_t* fontFace);
	void cairo_user_font_face_set_text_to_glyphs_func(cairo_font_face_t* fontFace, cairo_user_scaled_font_text_to_glyphs_func_t textToGlyphsFunc);
	cairo_user_scaled_font_text_to_glyphs_func_t cairo_user_font_face_get_text_to_glyphs_func(cairo_font_face_t* fontFace);

	// cairo.Device

	cairo_device_t* cairo_device_reference(cairo_device_t* device);
	void cairo_device_destroy(cairo_device_t* device);
	cairo_status_t cairo_device_status(cairo_device_t* device);
	void cairo_device_finish(cairo_device_t* device);
	void cairo_device_flush(cairo_device_t* device);
	cairo_device_type_t cairo_device_get_type(cairo_device_t* device);
	uint cairo_device_get_reference_count(cairo_device_t* device);
	cairo_status_t cairo_device_set_user_data(cairo_device_t* device, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_device_get_user_data(cairo_device_t* device, cairo_user_data_key_t* key);
	cairo_status_t cairo_device_acquire(cairo_device_t* device);
	void cairo_device_release(cairo_device_t* device);

	// cairo.Surface

	cairo_surface_t* cairo_surface_create_similar(cairo_surface_t* other, cairo_content_t content, int width, int height);
	cairo_surface_t* cairo_surface_create_similar_image(cairo_surface_t* other, cairo_format_t format, int width, int height);
	cairo_surface_t* cairo_surface_create_for_rectangle(cairo_surface_t* target, double x, double y, double width, double height);
	cairo_surface_t* cairo_surface_reference(cairo_surface_t* surface);
	void cairo_surface_destroy(cairo_surface_t* surface);
	cairo_status_t cairo_surface_status(cairo_surface_t* surface);
	void cairo_surface_finish(cairo_surface_t* surface);
	void cairo_surface_flush(cairo_surface_t* surface);
	cairo_device_t* cairo_surface_get_device(cairo_surface_t* surface);
	void cairo_surface_get_font_options(cairo_surface_t* surface, cairo_font_options_t* options);
	cairo_content_t cairo_surface_get_content(cairo_surface_t* surface);
	void cairo_surface_mark_dirty(cairo_surface_t* surface);
	void cairo_surface_mark_dirty_rectangle(cairo_surface_t* surface, int x, int y, int width, int height);
	void cairo_surface_set_device_offset(cairo_surface_t* surface, double xOffset, double yOffset);
	void cairo_surface_get_device_offset(cairo_surface_t* surface, double* xOffset, double* yOffset);
	void cairo_surface_set_fallback_resolution(cairo_surface_t* surface, double xPixelsPerInch, double yPixelsPerInch);
	void cairo_surface_get_fallback_resolution(cairo_surface_t* surface, double* xPixelsPerInch, double* yPixelsPerInch);
	cairo_surface_type_t cairo_surface_get_type(cairo_surface_t* surface);
	uint cairo_surface_get_reference_count(cairo_surface_t* surface);
	cairo_status_t cairo_surface_set_user_data(cairo_surface_t* surface, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy);
	void* cairo_surface_get_user_data(cairo_surface_t* surface, cairo_user_data_key_t* key);
	void cairo_surface_copy_page(cairo_surface_t* surface);
	void cairo_surface_show_page(cairo_surface_t* surface);
	cairo_bool_t cairo_surface_has_show_text_glyphs(cairo_surface_t* surface);
	cairo_status_t cairo_surface_set_mime_data(cairo_surface_t* surface, char* mimeType, uchar* data, ulong length, cairo_destroy_func_t destroy, void* closure);
	void cairo_surface_get_mime_data(cairo_surface_t* surface, char* mimeType, uchar** data, ulong* length);
	cairo_bool_t cairo_surface_supports_mime_type(cairo_surface_t* surface, char* mimeType);
	cairo_surface_t* cairo_surface_map_to_image(cairo_surface_t* surface, cairo_rectangle_int_t* extents);
	void cairo_surface_unmap_image(cairo_surface_t* surface, cairo_surface_t* image);

	// cairo.ImageSurface

	int cairo_format_stride_for_width(cairo_format_t format, int width);
	cairo_surface_t* cairo_image_surface_create(cairo_format_t format, int width, int height);
	cairo_surface_t* cairo_image_surface_create_for_data(uchar* data, cairo_format_t format, int width, int height, int stride);
	uchar* cairo_image_surface_get_data(cairo_surface_t* surface);
	cairo_format_t cairo_image_surface_get_format(cairo_surface_t* surface);
	int cairo_image_surface_get_width(cairo_surface_t* surface);
	int cairo_image_surface_get_height(cairo_surface_t* surface);
	int cairo_image_surface_get_stride(cairo_surface_t* surface);
	cairo_surface_t* cairo_image_surface_create_from_png(char* filename);
	cairo_surface_t* cairo_image_surface_create_from_png_stream(cairo_read_func_t readFunc, void* closure);
	cairo_status_t cairo_surface_write_to_png(cairo_surface_t* surface, char* filename);
	cairo_status_t cairo_surface_write_to_png_stream(cairo_surface_t* surface, cairo_write_func_t writeFunc, void* closure);

	// cairo.PdfSurface

	cairo_surface_t* cairo_pdf_surface_create(char* filename, double widthInPoints, double heightInPoints);
	cairo_surface_t* cairo_pdf_surface_create_for_stream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints);
	void cairo_pdf_surface_restrict_to_version(cairo_surface_t* surface, cairo_pdf_version_t versio);
	void cairo_pdf_get_versions(cairo_pdf_version_t** versions, int* numVersions);
	char* cairo_pdf_version_to_string(cairo_pdf_version_t versio);
	void cairo_pdf_surface_set_size(cairo_surface_t* surface, double widthInPoints, double heightInPoints);

	// cairo.PostScriptSurface

	cairo_surface_t* cairo_ps_surface_create(char* filename, double widthInPoints, double heightInPoints);
	cairo_surface_t* cairo_ps_surface_create_for_stream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints);
	void cairo_ps_surface_restrict_to_level(cairo_surface_t* surface, cairo_ps_level_t level);
	void cairo_ps_get_levels(cairo_ps_level_t** levels, int* numLevels);
	char* cairo_ps_level_to_string(cairo_ps_level_t level);
	void cairo_ps_surface_set_eps(cairo_surface_t* surface, cairo_bool_t eps);
	cairo_bool_t cairo_ps_surface_get_eps(cairo_surface_t* surface);
	void cairo_ps_surface_set_size(cairo_surface_t* surface, double widthInPoints, double heightInPoints);
	void cairo_ps_surface_dsc_begin_setup(cairo_surface_t* surface);
	void cairo_ps_surface_dsc_begin_page_setup(cairo_surface_t* surface);
	void cairo_ps_surface_dsc_comment(cairo_surface_t* surface, char* comment);

	// cairo.RecordingSurface

	cairo_surface_t* cairo_recording_surface_create(cairo_content_t content, cairo_rectangle_t* extents);
	void cairo_recording_surface_ink_extents(cairo_surface_t* surface, double* x0, double* y0, double* width, double* height);
	cairo_bool_t cairo_recording_surface_get_extents(cairo_surface_t* surface, cairo_rectangle_t* extents);

	// cairo.SvgSurface

	cairo_surface_t* cairo_svg_surface_create(char* filename, double widthInPoints, double heightInPoints);
	cairo_surface_t* cairo_svg_surface_create_for_stream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints);
	void cairo_svg_surface_restrict_to_version(cairo_surface_t* surface, cairo_svg_version_t versio);
	void cairo_svg_get_versions(cairo_svg_version_t** versions, int* numVersions);
	char* cairo_svg_version_to_string(cairo_svg_version_t versio);

	// cairo.Script

	cairo_device_t* cairo_script_create(char* filename);
	cairo_device_t* cairo_script_create_for_stream(cairo_write_func_t writeFunc, void* closure);
	cairo_status_t cairo_script_from_recording_surface(cairo_device_t* script, cairo_surface_t* recordingSurface);
	cairo_script_mode_t cairo_script_get_mode(cairo_device_t* script);
	void cairo_script_set_mode(cairo_device_t* script, cairo_script_mode_t mode);
	void cairo_script_write_comment(cairo_device_t* script, char* comment, int len);

	// cairo.ScriptSurface

	cairo_surface_t* cairo_script_surface_create(cairo_device_t* script, cairo_content_t content, double width, double height);
	cairo_surface_t* cairo_script_surface_create_for_target(cairo_device_t* script, cairo_surface_t* target);

	// cairo.Matrix

	void cairo_matrix_init(cairo_matrix_t* matrix, double xx, double yx, double xy, double yy, double x0, double y0);
	void cairo_matrix_init_identity(cairo_matrix_t* matrix);
	void cairo_matrix_init_translate(cairo_matrix_t* matrix, double tx, double ty);
	void cairo_matrix_init_scale(cairo_matrix_t* matrix, double sx, double sy);
	void cairo_matrix_init_rotate(cairo_matrix_t* matrix, double radians);
	void cairo_matrix_translate(cairo_matrix_t* matrix, double tx, double ty);
	void cairo_matrix_scale(cairo_matrix_t* matrix, double sx, double sy);
	void cairo_matrix_rotate(cairo_matrix_t* matrix, double radians);
	cairo_status_t cairo_matrix_invert(cairo_matrix_t* matrix);
	void cairo_matrix_multiply(cairo_matrix_t* result, cairo_matrix_t* a, cairo_matrix_t* b);
	void cairo_matrix_transform_distance(cairo_matrix_t* matrix, double* dx, double* dy);
	void cairo_matrix_transform_point(cairo_matrix_t* matrix, double* x, double* y);

	// cairo.Status

	char* cairo_status_to_string(cairo_status_t status);
	void cairo_debug_reset_static_data();

	// cairo.Version

	int cairo_version();
	char* cairo_version_string();

	// cairo.

}
