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


module gsk.c.functions;

import std.stdio;
import gsk.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GSK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GSK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GSK = ["libgtk-4.so.1"];

shared static this()
{
	// gsk.BlendNode

	Linker.link(gsk_blend_node_get_type, "gsk_blend_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_blend_node_new, "gsk_blend_node_new", LIBRARY_GSK);
	Linker.link(gsk_blend_node_get_blend_mode, "gsk_blend_node_get_blend_mode", LIBRARY_GSK);
	Linker.link(gsk_blend_node_get_bottom_child, "gsk_blend_node_get_bottom_child", LIBRARY_GSK);
	Linker.link(gsk_blend_node_get_top_child, "gsk_blend_node_get_top_child", LIBRARY_GSK);

	// gsk.BlurNode

	Linker.link(gsk_blur_node_get_type, "gsk_blur_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_blur_node_new, "gsk_blur_node_new", LIBRARY_GSK);
	Linker.link(gsk_blur_node_get_child, "gsk_blur_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_blur_node_get_radius, "gsk_blur_node_get_radius", LIBRARY_GSK);

	// gsk.BorderNode

	Linker.link(gsk_border_node_get_type, "gsk_border_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_border_node_new, "gsk_border_node_new", LIBRARY_GSK);
	Linker.link(gsk_border_node_get_colors, "gsk_border_node_get_colors", LIBRARY_GSK);
	Linker.link(gsk_border_node_get_outline, "gsk_border_node_get_outline", LIBRARY_GSK);
	Linker.link(gsk_border_node_get_widths, "gsk_border_node_get_widths", LIBRARY_GSK);

	// gsk.BroadwayRenderer

	Linker.link(gsk_broadway_renderer_get_type, "gsk_broadway_renderer_get_type", LIBRARY_GSK);
	Linker.link(gsk_broadway_renderer_new, "gsk_broadway_renderer_new", LIBRARY_GSK);

	// gsk.CairoNode

	Linker.link(gsk_cairo_node_get_type, "gsk_cairo_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_cairo_node_new, "gsk_cairo_node_new", LIBRARY_GSK);
	Linker.link(gsk_cairo_node_get_draw_context, "gsk_cairo_node_get_draw_context", LIBRARY_GSK);
	Linker.link(gsk_cairo_node_get_surface, "gsk_cairo_node_get_surface", LIBRARY_GSK);

	// gsk.CairoRenderer

	Linker.link(gsk_cairo_renderer_get_type, "gsk_cairo_renderer_get_type", LIBRARY_GSK);
	Linker.link(gsk_cairo_renderer_new, "gsk_cairo_renderer_new", LIBRARY_GSK);

	// gsk.ClipNode

	Linker.link(gsk_clip_node_get_type, "gsk_clip_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_clip_node_new, "gsk_clip_node_new", LIBRARY_GSK);
	Linker.link(gsk_clip_node_get_child, "gsk_clip_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_clip_node_get_clip, "gsk_clip_node_get_clip", LIBRARY_GSK);

	// gsk.ColorMatrixNode

	Linker.link(gsk_color_matrix_node_get_type, "gsk_color_matrix_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_color_matrix_node_new, "gsk_color_matrix_node_new", LIBRARY_GSK);
	Linker.link(gsk_color_matrix_node_get_child, "gsk_color_matrix_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_color_matrix_node_get_color_matrix, "gsk_color_matrix_node_get_color_matrix", LIBRARY_GSK);
	Linker.link(gsk_color_matrix_node_get_color_offset, "gsk_color_matrix_node_get_color_offset", LIBRARY_GSK);

	// gsk.ColorNode

	Linker.link(gsk_color_node_get_type, "gsk_color_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_color_node_new, "gsk_color_node_new", LIBRARY_GSK);
	Linker.link(gsk_color_node_get_color, "gsk_color_node_get_color", LIBRARY_GSK);

	// gsk.ConicGradientNode

	Linker.link(gsk_conic_gradient_node_get_type, "gsk_conic_gradient_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_new, "gsk_conic_gradient_node_new", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_get_angle, "gsk_conic_gradient_node_get_angle", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_get_center, "gsk_conic_gradient_node_get_center", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_get_color_stops, "gsk_conic_gradient_node_get_color_stops", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_get_n_color_stops, "gsk_conic_gradient_node_get_n_color_stops", LIBRARY_GSK);
	Linker.link(gsk_conic_gradient_node_get_rotation, "gsk_conic_gradient_node_get_rotation", LIBRARY_GSK);

	// gsk.ContainerNode

	Linker.link(gsk_container_node_get_type, "gsk_container_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_container_node_new, "gsk_container_node_new", LIBRARY_GSK);
	Linker.link(gsk_container_node_get_child, "gsk_container_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_container_node_get_n_children, "gsk_container_node_get_n_children", LIBRARY_GSK);

	// gsk.CrossFadeNode

	Linker.link(gsk_cross_fade_node_get_type, "gsk_cross_fade_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_cross_fade_node_new, "gsk_cross_fade_node_new", LIBRARY_GSK);
	Linker.link(gsk_cross_fade_node_get_end_child, "gsk_cross_fade_node_get_end_child", LIBRARY_GSK);
	Linker.link(gsk_cross_fade_node_get_progress, "gsk_cross_fade_node_get_progress", LIBRARY_GSK);
	Linker.link(gsk_cross_fade_node_get_start_child, "gsk_cross_fade_node_get_start_child", LIBRARY_GSK);

	// gsk.DebugNode

	Linker.link(gsk_debug_node_get_type, "gsk_debug_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_debug_node_new, "gsk_debug_node_new", LIBRARY_GSK);
	Linker.link(gsk_debug_node_get_child, "gsk_debug_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_debug_node_get_message, "gsk_debug_node_get_message", LIBRARY_GSK);

	// gsk.GLRenderer

	Linker.link(gsk_gl_renderer_get_type, "gsk_gl_renderer_get_type", LIBRARY_GSK);
	Linker.link(gsk_gl_renderer_new, "gsk_gl_renderer_new", LIBRARY_GSK);

	// gsk.GLShader

	Linker.link(gsk_gl_shader_get_type, "gsk_gl_shader_get_type", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_new_from_bytes, "gsk_gl_shader_new_from_bytes", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_new_from_resource, "gsk_gl_shader_new_from_resource", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_compile, "gsk_gl_shader_compile", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_find_uniform_by_name, "gsk_gl_shader_find_uniform_by_name", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_format_args, "gsk_gl_shader_format_args", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_format_args_va, "gsk_gl_shader_format_args_va", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_bool, "gsk_gl_shader_get_arg_bool", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_float, "gsk_gl_shader_get_arg_float", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_int, "gsk_gl_shader_get_arg_int", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_uint, "gsk_gl_shader_get_arg_uint", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_vec2, "gsk_gl_shader_get_arg_vec2", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_vec3, "gsk_gl_shader_get_arg_vec3", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_arg_vec4, "gsk_gl_shader_get_arg_vec4", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_args_size, "gsk_gl_shader_get_args_size", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_n_textures, "gsk_gl_shader_get_n_textures", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_n_uniforms, "gsk_gl_shader_get_n_uniforms", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_resource, "gsk_gl_shader_get_resource", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_source, "gsk_gl_shader_get_source", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_uniform_name, "gsk_gl_shader_get_uniform_name", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_uniform_offset, "gsk_gl_shader_get_uniform_offset", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_get_uniform_type, "gsk_gl_shader_get_uniform_type", LIBRARY_GSK);

	// gsk.GLShaderNode

	Linker.link(gsk_gl_shader_node_get_type, "gsk_gl_shader_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_node_new, "gsk_gl_shader_node_new", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_node_get_args, "gsk_gl_shader_node_get_args", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_node_get_child, "gsk_gl_shader_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_node_get_n_children, "gsk_gl_shader_node_get_n_children", LIBRARY_GSK);
	Linker.link(gsk_gl_shader_node_get_shader, "gsk_gl_shader_node_get_shader", LIBRARY_GSK);

	// gsk.InsetShadowNode

	Linker.link(gsk_inset_shadow_node_get_type, "gsk_inset_shadow_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_new, "gsk_inset_shadow_node_new", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_blur_radius, "gsk_inset_shadow_node_get_blur_radius", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_color, "gsk_inset_shadow_node_get_color", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_dx, "gsk_inset_shadow_node_get_dx", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_dy, "gsk_inset_shadow_node_get_dy", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_outline, "gsk_inset_shadow_node_get_outline", LIBRARY_GSK);
	Linker.link(gsk_inset_shadow_node_get_spread, "gsk_inset_shadow_node_get_spread", LIBRARY_GSK);

	// gsk.LinearGradientNode

	Linker.link(gsk_linear_gradient_node_get_type, "gsk_linear_gradient_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_linear_gradient_node_new, "gsk_linear_gradient_node_new", LIBRARY_GSK);
	Linker.link(gsk_linear_gradient_node_get_color_stops, "gsk_linear_gradient_node_get_color_stops", LIBRARY_GSK);
	Linker.link(gsk_linear_gradient_node_get_end, "gsk_linear_gradient_node_get_end", LIBRARY_GSK);
	Linker.link(gsk_linear_gradient_node_get_n_color_stops, "gsk_linear_gradient_node_get_n_color_stops", LIBRARY_GSK);
	Linker.link(gsk_linear_gradient_node_get_start, "gsk_linear_gradient_node_get_start", LIBRARY_GSK);

	// gsk.NglRenderer

	Linker.link(gsk_ngl_renderer_get_type, "gsk_ngl_renderer_get_type", LIBRARY_GSK);
	Linker.link(gsk_ngl_renderer_new, "gsk_ngl_renderer_new", LIBRARY_GSK);

	// gsk.OpacityNode

	Linker.link(gsk_opacity_node_get_type, "gsk_opacity_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_opacity_node_new, "gsk_opacity_node_new", LIBRARY_GSK);
	Linker.link(gsk_opacity_node_get_child, "gsk_opacity_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_opacity_node_get_opacity, "gsk_opacity_node_get_opacity", LIBRARY_GSK);

	// gsk.OutsetShadowNode

	Linker.link(gsk_outset_shadow_node_get_type, "gsk_outset_shadow_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_new, "gsk_outset_shadow_node_new", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_blur_radius, "gsk_outset_shadow_node_get_blur_radius", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_color, "gsk_outset_shadow_node_get_color", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_dx, "gsk_outset_shadow_node_get_dx", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_dy, "gsk_outset_shadow_node_get_dy", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_outline, "gsk_outset_shadow_node_get_outline", LIBRARY_GSK);
	Linker.link(gsk_outset_shadow_node_get_spread, "gsk_outset_shadow_node_get_spread", LIBRARY_GSK);

	// gsk.RadialGradientNode

	Linker.link(gsk_radial_gradient_node_get_type, "gsk_radial_gradient_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_new, "gsk_radial_gradient_node_new", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_center, "gsk_radial_gradient_node_get_center", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_color_stops, "gsk_radial_gradient_node_get_color_stops", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_end, "gsk_radial_gradient_node_get_end", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_hradius, "gsk_radial_gradient_node_get_hradius", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_n_color_stops, "gsk_radial_gradient_node_get_n_color_stops", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_start, "gsk_radial_gradient_node_get_start", LIBRARY_GSK);
	Linker.link(gsk_radial_gradient_node_get_vradius, "gsk_radial_gradient_node_get_vradius", LIBRARY_GSK);

	// gsk.RenderNode

	Linker.link(gsk_render_node_get_type, "gsk_render_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_render_node_deserialize, "gsk_render_node_deserialize", LIBRARY_GSK);
	Linker.link(gsk_render_node_draw, "gsk_render_node_draw", LIBRARY_GSK);
	Linker.link(gsk_render_node_get_bounds, "gsk_render_node_get_bounds", LIBRARY_GSK);
	Linker.link(gsk_render_node_get_node_type, "gsk_render_node_get_node_type", LIBRARY_GSK);
	Linker.link(gsk_render_node_ref, "gsk_render_node_ref", LIBRARY_GSK);
	Linker.link(gsk_render_node_serialize, "gsk_render_node_serialize", LIBRARY_GSK);
	Linker.link(gsk_render_node_unref, "gsk_render_node_unref", LIBRARY_GSK);
	Linker.link(gsk_render_node_write_to_file, "gsk_render_node_write_to_file", LIBRARY_GSK);

	// gsk.Renderer

	Linker.link(gsk_renderer_get_type, "gsk_renderer_get_type", LIBRARY_GSK);
	Linker.link(gsk_renderer_new_for_surface, "gsk_renderer_new_for_surface", LIBRARY_GSK);
	Linker.link(gsk_renderer_get_surface, "gsk_renderer_get_surface", LIBRARY_GSK);
	Linker.link(gsk_renderer_is_realized, "gsk_renderer_is_realized", LIBRARY_GSK);
	Linker.link(gsk_renderer_realize, "gsk_renderer_realize", LIBRARY_GSK);
	Linker.link(gsk_renderer_render, "gsk_renderer_render", LIBRARY_GSK);
	Linker.link(gsk_renderer_render_texture, "gsk_renderer_render_texture", LIBRARY_GSK);
	Linker.link(gsk_renderer_unrealize, "gsk_renderer_unrealize", LIBRARY_GSK);

	// gsk.RepeatNode

	Linker.link(gsk_repeat_node_get_type, "gsk_repeat_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_repeat_node_new, "gsk_repeat_node_new", LIBRARY_GSK);
	Linker.link(gsk_repeat_node_get_child, "gsk_repeat_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_repeat_node_get_child_bounds, "gsk_repeat_node_get_child_bounds", LIBRARY_GSK);

	// gsk.RepeatingLinearGradientNode

	Linker.link(gsk_repeating_linear_gradient_node_get_type, "gsk_repeating_linear_gradient_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_repeating_linear_gradient_node_new, "gsk_repeating_linear_gradient_node_new", LIBRARY_GSK);

	// gsk.RepeatingRadialGradientNode

	Linker.link(gsk_repeating_radial_gradient_node_get_type, "gsk_repeating_radial_gradient_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_repeating_radial_gradient_node_new, "gsk_repeating_radial_gradient_node_new", LIBRARY_GSK);

	// gsk.RoundedClipNode

	Linker.link(gsk_rounded_clip_node_get_type, "gsk_rounded_clip_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_rounded_clip_node_new, "gsk_rounded_clip_node_new", LIBRARY_GSK);
	Linker.link(gsk_rounded_clip_node_get_child, "gsk_rounded_clip_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_rounded_clip_node_get_clip, "gsk_rounded_clip_node_get_clip", LIBRARY_GSK);

	// gsk.RoundedRect

	Linker.link(gsk_rounded_rect_contains_point, "gsk_rounded_rect_contains_point", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_contains_rect, "gsk_rounded_rect_contains_rect", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_init, "gsk_rounded_rect_init", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_init_copy, "gsk_rounded_rect_init_copy", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_init_from_rect, "gsk_rounded_rect_init_from_rect", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_intersects_rect, "gsk_rounded_rect_intersects_rect", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_is_rectilinear, "gsk_rounded_rect_is_rectilinear", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_normalize, "gsk_rounded_rect_normalize", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_offset, "gsk_rounded_rect_offset", LIBRARY_GSK);
	Linker.link(gsk_rounded_rect_shrink, "gsk_rounded_rect_shrink", LIBRARY_GSK);

	// gsk.ShaderArgsBuilder

	Linker.link(gsk_shader_args_builder_get_type, "gsk_shader_args_builder_get_type", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_new, "gsk_shader_args_builder_new", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_free_to_args, "gsk_shader_args_builder_free_to_args", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_ref, "gsk_shader_args_builder_ref", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_bool, "gsk_shader_args_builder_set_bool", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_float, "gsk_shader_args_builder_set_float", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_int, "gsk_shader_args_builder_set_int", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_uint, "gsk_shader_args_builder_set_uint", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_vec2, "gsk_shader_args_builder_set_vec2", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_vec3, "gsk_shader_args_builder_set_vec3", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_set_vec4, "gsk_shader_args_builder_set_vec4", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_to_args, "gsk_shader_args_builder_to_args", LIBRARY_GSK);
	Linker.link(gsk_shader_args_builder_unref, "gsk_shader_args_builder_unref", LIBRARY_GSK);

	// gsk.ShadowNode

	Linker.link(gsk_shadow_node_get_type, "gsk_shadow_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_shadow_node_new, "gsk_shadow_node_new", LIBRARY_GSK);
	Linker.link(gsk_shadow_node_get_child, "gsk_shadow_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_shadow_node_get_n_shadows, "gsk_shadow_node_get_n_shadows", LIBRARY_GSK);
	Linker.link(gsk_shadow_node_get_shadow, "gsk_shadow_node_get_shadow", LIBRARY_GSK);

	// gsk.TextNode

	Linker.link(gsk_text_node_get_type, "gsk_text_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_text_node_new, "gsk_text_node_new", LIBRARY_GSK);
	Linker.link(gsk_text_node_get_color, "gsk_text_node_get_color", LIBRARY_GSK);
	Linker.link(gsk_text_node_get_font, "gsk_text_node_get_font", LIBRARY_GSK);
	Linker.link(gsk_text_node_get_glyphs, "gsk_text_node_get_glyphs", LIBRARY_GSK);
	Linker.link(gsk_text_node_get_num_glyphs, "gsk_text_node_get_num_glyphs", LIBRARY_GSK);
	Linker.link(gsk_text_node_get_offset, "gsk_text_node_get_offset", LIBRARY_GSK);
	Linker.link(gsk_text_node_has_color_glyphs, "gsk_text_node_has_color_glyphs", LIBRARY_GSK);

	// gsk.TextureNode

	Linker.link(gsk_texture_node_get_type, "gsk_texture_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_texture_node_new, "gsk_texture_node_new", LIBRARY_GSK);
	Linker.link(gsk_texture_node_get_texture, "gsk_texture_node_get_texture", LIBRARY_GSK);

	// gsk.Transform

	Linker.link(gsk_transform_get_type, "gsk_transform_get_type", LIBRARY_GSK);
	Linker.link(gsk_transform_new, "gsk_transform_new", LIBRARY_GSK);
	Linker.link(gsk_transform_equal, "gsk_transform_equal", LIBRARY_GSK);
	Linker.link(gsk_transform_get_category, "gsk_transform_get_category", LIBRARY_GSK);
	Linker.link(gsk_transform_invert, "gsk_transform_invert", LIBRARY_GSK);
	Linker.link(gsk_transform_matrix, "gsk_transform_matrix", LIBRARY_GSK);
	Linker.link(gsk_transform_perspective, "gsk_transform_perspective", LIBRARY_GSK);
	Linker.link(gsk_transform_print, "gsk_transform_print", LIBRARY_GSK);
	Linker.link(gsk_transform_ref, "gsk_transform_ref", LIBRARY_GSK);
	Linker.link(gsk_transform_rotate, "gsk_transform_rotate", LIBRARY_GSK);
	Linker.link(gsk_transform_rotate_3d, "gsk_transform_rotate_3d", LIBRARY_GSK);
	Linker.link(gsk_transform_scale, "gsk_transform_scale", LIBRARY_GSK);
	Linker.link(gsk_transform_scale_3d, "gsk_transform_scale_3d", LIBRARY_GSK);
	Linker.link(gsk_transform_skew, "gsk_transform_skew", LIBRARY_GSK);
	Linker.link(gsk_transform_to_2d, "gsk_transform_to_2d", LIBRARY_GSK);
	Linker.link(gsk_transform_to_2d_components, "gsk_transform_to_2d_components", LIBRARY_GSK);
	Linker.link(gsk_transform_to_affine, "gsk_transform_to_affine", LIBRARY_GSK);
	Linker.link(gsk_transform_to_matrix, "gsk_transform_to_matrix", LIBRARY_GSK);
	Linker.link(gsk_transform_to_string, "gsk_transform_to_string", LIBRARY_GSK);
	Linker.link(gsk_transform_to_translate, "gsk_transform_to_translate", LIBRARY_GSK);
	Linker.link(gsk_transform_transform, "gsk_transform_transform", LIBRARY_GSK);
	Linker.link(gsk_transform_transform_bounds, "gsk_transform_transform_bounds", LIBRARY_GSK);
	Linker.link(gsk_transform_transform_point, "gsk_transform_transform_point", LIBRARY_GSK);
	Linker.link(gsk_transform_translate, "gsk_transform_translate", LIBRARY_GSK);
	Linker.link(gsk_transform_translate_3d, "gsk_transform_translate_3d", LIBRARY_GSK);
	Linker.link(gsk_transform_unref, "gsk_transform_unref", LIBRARY_GSK);
	Linker.link(gsk_transform_parse, "gsk_transform_parse", LIBRARY_GSK);

	// gsk.TransformNode

	Linker.link(gsk_transform_node_get_type, "gsk_transform_node_get_type", LIBRARY_GSK);
	Linker.link(gsk_transform_node_new, "gsk_transform_node_new", LIBRARY_GSK);
	Linker.link(gsk_transform_node_get_child, "gsk_transform_node_get_child", LIBRARY_GSK);
	Linker.link(gsk_transform_node_get_transform, "gsk_transform_node_get_transform", LIBRARY_GSK);
}

__gshared extern(C)
{

	// gsk.BlendNode

	GType function() c_gsk_blend_node_get_type;
	GskRenderNode* function(GskRenderNode* bottom, GskRenderNode* top, GskBlendMode blendMode) c_gsk_blend_node_new;
	GskBlendMode function(GskRenderNode* node) c_gsk_blend_node_get_blend_mode;
	GskRenderNode* function(GskRenderNode* node) c_gsk_blend_node_get_bottom_child;
	GskRenderNode* function(GskRenderNode* node) c_gsk_blend_node_get_top_child;

	// gsk.BlurNode

	GType function() c_gsk_blur_node_get_type;
	GskRenderNode* function(GskRenderNode* child, float radius) c_gsk_blur_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_blur_node_get_child;
	float function(GskRenderNode* node) c_gsk_blur_node_get_radius;

	// gsk.BorderNode

	GType function() c_gsk_border_node_get_type;
	GskRenderNode* function(GskRoundedRect* outline, float* borderWidth, GdkRGBA* borderColor) c_gsk_border_node_new;
	GdkRGBA* function(GskRenderNode* node) c_gsk_border_node_get_colors;
	GskRoundedRect* function(GskRenderNode* node) c_gsk_border_node_get_outline;
	float* function(GskRenderNode* node) c_gsk_border_node_get_widths;

	// gsk.BroadwayRenderer

	GType function() c_gsk_broadway_renderer_get_type;
	GskRenderer* function() c_gsk_broadway_renderer_new;

	// gsk.CairoNode

	GType function() c_gsk_cairo_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds) c_gsk_cairo_node_new;
	cairo_t* function(GskRenderNode* node) c_gsk_cairo_node_get_draw_context;
	cairo_surface_t* function(GskRenderNode* node) c_gsk_cairo_node_get_surface;

	// gsk.CairoRenderer

	GType function() c_gsk_cairo_renderer_get_type;
	GskRenderer* function() c_gsk_cairo_renderer_new;

	// gsk.ClipNode

	GType function() c_gsk_clip_node_get_type;
	GskRenderNode* function(GskRenderNode* child, graphene_rect_t* clip) c_gsk_clip_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_clip_node_get_child;
	graphene_rect_t* function(GskRenderNode* node) c_gsk_clip_node_get_clip;

	// gsk.ColorMatrixNode

	GType function() c_gsk_color_matrix_node_get_type;
	GskRenderNode* function(GskRenderNode* child, graphene_matrix_t* colorMatrix, graphene_vec4_t* colorOffset) c_gsk_color_matrix_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_color_matrix_node_get_child;
	graphene_matrix_t* function(GskRenderNode* node) c_gsk_color_matrix_node_get_color_matrix;
	graphene_vec4_t* function(GskRenderNode* node) c_gsk_color_matrix_node_get_color_offset;

	// gsk.ColorNode

	GType function() c_gsk_color_node_get_type;
	GskRenderNode* function(GdkRGBA* rgba, graphene_rect_t* bounds) c_gsk_color_node_new;
	GdkRGBA* function(GskRenderNode* node) c_gsk_color_node_get_color;

	// gsk.ConicGradientNode

	GType function() c_gsk_conic_gradient_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, graphene_point_t* center, float rotation, GskColorStop* colorStops, size_t nColorStops) c_gsk_conic_gradient_node_new;
	float function(GskRenderNode* node) c_gsk_conic_gradient_node_get_angle;
	graphene_point_t* function(GskRenderNode* node) c_gsk_conic_gradient_node_get_center;
	GskColorStop* function(GskRenderNode* node, size_t* nStops) c_gsk_conic_gradient_node_get_color_stops;
	size_t function(GskRenderNode* node) c_gsk_conic_gradient_node_get_n_color_stops;
	float function(GskRenderNode* node) c_gsk_conic_gradient_node_get_rotation;

	// gsk.ContainerNode

	GType function() c_gsk_container_node_get_type;
	GskRenderNode* function(GskRenderNode** children, uint nChildren) c_gsk_container_node_new;
	GskRenderNode* function(GskRenderNode* node, uint idx) c_gsk_container_node_get_child;
	uint function(GskRenderNode* node) c_gsk_container_node_get_n_children;

	// gsk.CrossFadeNode

	GType function() c_gsk_cross_fade_node_get_type;
	GskRenderNode* function(GskRenderNode* start, GskRenderNode* end, float progress) c_gsk_cross_fade_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_cross_fade_node_get_end_child;
	float function(GskRenderNode* node) c_gsk_cross_fade_node_get_progress;
	GskRenderNode* function(GskRenderNode* node) c_gsk_cross_fade_node_get_start_child;

	// gsk.DebugNode

	GType function() c_gsk_debug_node_get_type;
	GskRenderNode* function(GskRenderNode* child, char* message) c_gsk_debug_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_debug_node_get_child;
	const(char)* function(GskRenderNode* node) c_gsk_debug_node_get_message;

	// gsk.GLRenderer

	GType function() c_gsk_gl_renderer_get_type;
	GskRenderer* function() c_gsk_gl_renderer_new;

	// gsk.GLShader

	GType function() c_gsk_gl_shader_get_type;
	GskGLShader* function(GBytes* sourcecode) c_gsk_gl_shader_new_from_bytes;
	GskGLShader* function(const(char)* resourcePath) c_gsk_gl_shader_new_from_resource;
	int function(GskGLShader* shader, GskRenderer* renderer, GError** err) c_gsk_gl_shader_compile;
	int function(GskGLShader* shader, const(char)* name) c_gsk_gl_shader_find_uniform_by_name;
	GBytes* function(GskGLShader* shader, ... ) c_gsk_gl_shader_format_args;
	GBytes* function(GskGLShader* shader, void* uniforms) c_gsk_gl_shader_format_args_va;
	int function(GskGLShader* shader, GBytes* args, int idx) c_gsk_gl_shader_get_arg_bool;
	float function(GskGLShader* shader, GBytes* args, int idx) c_gsk_gl_shader_get_arg_float;
	int function(GskGLShader* shader, GBytes* args, int idx) c_gsk_gl_shader_get_arg_int;
	uint function(GskGLShader* shader, GBytes* args, int idx) c_gsk_gl_shader_get_arg_uint;
	void function(GskGLShader* shader, GBytes* args, int idx, graphene_vec2_t* outValue) c_gsk_gl_shader_get_arg_vec2;
	void function(GskGLShader* shader, GBytes* args, int idx, graphene_vec3_t* outValue) c_gsk_gl_shader_get_arg_vec3;
	void function(GskGLShader* shader, GBytes* args, int idx, graphene_vec4_t* outValue) c_gsk_gl_shader_get_arg_vec4;
	size_t function(GskGLShader* shader) c_gsk_gl_shader_get_args_size;
	int function(GskGLShader* shader) c_gsk_gl_shader_get_n_textures;
	int function(GskGLShader* shader) c_gsk_gl_shader_get_n_uniforms;
	const(char)* function(GskGLShader* shader) c_gsk_gl_shader_get_resource;
	GBytes* function(GskGLShader* shader) c_gsk_gl_shader_get_source;
	const(char)* function(GskGLShader* shader, int idx) c_gsk_gl_shader_get_uniform_name;
	int function(GskGLShader* shader, int idx) c_gsk_gl_shader_get_uniform_offset;
	GskGLUniformType function(GskGLShader* shader, int idx) c_gsk_gl_shader_get_uniform_type;

	// gsk.GLShaderNode

	GType function() c_gsk_gl_shader_node_get_type;
	GskRenderNode* function(GskGLShader* shader, graphene_rect_t* bounds, GBytes* args, GskRenderNode** children, uint nChildren) c_gsk_gl_shader_node_new;
	GBytes* function(GskRenderNode* node) c_gsk_gl_shader_node_get_args;
	GskRenderNode* function(GskRenderNode* node, uint idx) c_gsk_gl_shader_node_get_child;
	uint function(GskRenderNode* node) c_gsk_gl_shader_node_get_n_children;
	GskGLShader* function(GskRenderNode* node) c_gsk_gl_shader_node_get_shader;

	// gsk.InsetShadowNode

	GType function() c_gsk_inset_shadow_node_get_type;
	GskRenderNode* function(GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius) c_gsk_inset_shadow_node_new;
	float function(GskRenderNode* node) c_gsk_inset_shadow_node_get_blur_radius;
	GdkRGBA* function(GskRenderNode* node) c_gsk_inset_shadow_node_get_color;
	float function(GskRenderNode* node) c_gsk_inset_shadow_node_get_dx;
	float function(GskRenderNode* node) c_gsk_inset_shadow_node_get_dy;
	GskRoundedRect* function(GskRenderNode* node) c_gsk_inset_shadow_node_get_outline;
	float function(GskRenderNode* node) c_gsk_inset_shadow_node_get_spread;

	// gsk.LinearGradientNode

	GType function() c_gsk_linear_gradient_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, graphene_point_t* start, graphene_point_t* end, GskColorStop* colorStops, size_t nColorStops) c_gsk_linear_gradient_node_new;
	GskColorStop* function(GskRenderNode* node, size_t* nStops) c_gsk_linear_gradient_node_get_color_stops;
	graphene_point_t* function(GskRenderNode* node) c_gsk_linear_gradient_node_get_end;
	size_t function(GskRenderNode* node) c_gsk_linear_gradient_node_get_n_color_stops;
	graphene_point_t* function(GskRenderNode* node) c_gsk_linear_gradient_node_get_start;

	// gsk.NglRenderer

	GType function() c_gsk_ngl_renderer_get_type;
	GskRenderer* function() c_gsk_ngl_renderer_new;

	// gsk.OpacityNode

	GType function() c_gsk_opacity_node_get_type;
	GskRenderNode* function(GskRenderNode* child, float opacity) c_gsk_opacity_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_opacity_node_get_child;
	float function(GskRenderNode* node) c_gsk_opacity_node_get_opacity;

	// gsk.OutsetShadowNode

	GType function() c_gsk_outset_shadow_node_get_type;
	GskRenderNode* function(GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius) c_gsk_outset_shadow_node_new;
	float function(GskRenderNode* node) c_gsk_outset_shadow_node_get_blur_radius;
	GdkRGBA* function(GskRenderNode* node) c_gsk_outset_shadow_node_get_color;
	float function(GskRenderNode* node) c_gsk_outset_shadow_node_get_dx;
	float function(GskRenderNode* node) c_gsk_outset_shadow_node_get_dy;
	GskRoundedRect* function(GskRenderNode* node) c_gsk_outset_shadow_node_get_outline;
	float function(GskRenderNode* node) c_gsk_outset_shadow_node_get_spread;

	// gsk.RadialGradientNode

	GType function() c_gsk_radial_gradient_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* colorStops, size_t nColorStops) c_gsk_radial_gradient_node_new;
	graphene_point_t* function(GskRenderNode* node) c_gsk_radial_gradient_node_get_center;
	GskColorStop* function(GskRenderNode* node, size_t* nStops) c_gsk_radial_gradient_node_get_color_stops;
	float function(GskRenderNode* node) c_gsk_radial_gradient_node_get_end;
	float function(GskRenderNode* node) c_gsk_radial_gradient_node_get_hradius;
	size_t function(GskRenderNode* node) c_gsk_radial_gradient_node_get_n_color_stops;
	float function(GskRenderNode* node) c_gsk_radial_gradient_node_get_start;
	float function(GskRenderNode* node) c_gsk_radial_gradient_node_get_vradius;

	// gsk.RenderNode

	GType function() c_gsk_render_node_get_type;
	GskRenderNode* function(GBytes* bytes, GskParseErrorFunc errorFunc, void* userData) c_gsk_render_node_deserialize;
	void function(GskRenderNode* node, cairo_t* cr) c_gsk_render_node_draw;
	void function(GskRenderNode* node, graphene_rect_t* bounds) c_gsk_render_node_get_bounds;
	GskRenderNodeType function(GskRenderNode* node) c_gsk_render_node_get_node_type;
	GskRenderNode* function(GskRenderNode* node) c_gsk_render_node_ref;
	GBytes* function(GskRenderNode* node) c_gsk_render_node_serialize;
	void function(GskRenderNode* node) c_gsk_render_node_unref;
	int function(GskRenderNode* node, char* filename, GError** err) c_gsk_render_node_write_to_file;

	// gsk.Renderer

	GType function() c_gsk_renderer_get_type;
	GskRenderer* function(GdkSurface* surface) c_gsk_renderer_new_for_surface;
	GdkSurface* function(GskRenderer* renderer) c_gsk_renderer_get_surface;
	int function(GskRenderer* renderer) c_gsk_renderer_is_realized;
	int function(GskRenderer* renderer, GdkSurface* surface, GError** err) c_gsk_renderer_realize;
	void function(GskRenderer* renderer, GskRenderNode* root, cairo_region_t* region) c_gsk_renderer_render;
	GdkTexture* function(GskRenderer* renderer, GskRenderNode* root, graphene_rect_t* viewport) c_gsk_renderer_render_texture;
	void function(GskRenderer* renderer) c_gsk_renderer_unrealize;

	// gsk.RepeatNode

	GType function() c_gsk_repeat_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, GskRenderNode* child, graphene_rect_t* childBounds) c_gsk_repeat_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_repeat_node_get_child;
	graphene_rect_t* function(GskRenderNode* node) c_gsk_repeat_node_get_child_bounds;

	// gsk.RepeatingLinearGradientNode

	GType function() c_gsk_repeating_linear_gradient_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, graphene_point_t* start, graphene_point_t* end, GskColorStop* colorStops, size_t nColorStops) c_gsk_repeating_linear_gradient_node_new;

	// gsk.RepeatingRadialGradientNode

	GType function() c_gsk_repeating_radial_gradient_node_get_type;
	GskRenderNode* function(graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* colorStops, size_t nColorStops) c_gsk_repeating_radial_gradient_node_new;

	// gsk.RoundedClipNode

	GType function() c_gsk_rounded_clip_node_get_type;
	GskRenderNode* function(GskRenderNode* child, GskRoundedRect* clip) c_gsk_rounded_clip_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_rounded_clip_node_get_child;
	GskRoundedRect* function(GskRenderNode* node) c_gsk_rounded_clip_node_get_clip;

	// gsk.RoundedRect

	int function(GskRoundedRect* self, graphene_point_t* point) c_gsk_rounded_rect_contains_point;
	int function(GskRoundedRect* self, graphene_rect_t* rect) c_gsk_rounded_rect_contains_rect;
	GskRoundedRect* function(GskRoundedRect* self, graphene_rect_t* bounds, graphene_size_t* topLeft, graphene_size_t* topRight, graphene_size_t* bottomRight, graphene_size_t* bottomLeft) c_gsk_rounded_rect_init;
	GskRoundedRect* function(GskRoundedRect* self, GskRoundedRect* src) c_gsk_rounded_rect_init_copy;
	GskRoundedRect* function(GskRoundedRect* self, graphene_rect_t* bounds, float radius) c_gsk_rounded_rect_init_from_rect;
	int function(GskRoundedRect* self, graphene_rect_t* rect) c_gsk_rounded_rect_intersects_rect;
	int function(GskRoundedRect* self) c_gsk_rounded_rect_is_rectilinear;
	GskRoundedRect* function(GskRoundedRect* self) c_gsk_rounded_rect_normalize;
	GskRoundedRect* function(GskRoundedRect* self, float dx, float dy) c_gsk_rounded_rect_offset;
	GskRoundedRect* function(GskRoundedRect* self, float top, float right, float bottom, float left) c_gsk_rounded_rect_shrink;

	// gsk.ShaderArgsBuilder

	GType function() c_gsk_shader_args_builder_get_type;
	GskShaderArgsBuilder* function(GskGLShader* shader, GBytes* initialValues) c_gsk_shader_args_builder_new;
	GBytes* function(GskShaderArgsBuilder* builder) c_gsk_shader_args_builder_free_to_args;
	GskShaderArgsBuilder* function(GskShaderArgsBuilder* builder) c_gsk_shader_args_builder_ref;
	void function(GskShaderArgsBuilder* builder, int idx, int value) c_gsk_shader_args_builder_set_bool;
	void function(GskShaderArgsBuilder* builder, int idx, float value) c_gsk_shader_args_builder_set_float;
	void function(GskShaderArgsBuilder* builder, int idx, int value) c_gsk_shader_args_builder_set_int;
	void function(GskShaderArgsBuilder* builder, int idx, uint value) c_gsk_shader_args_builder_set_uint;
	void function(GskShaderArgsBuilder* builder, int idx, graphene_vec2_t* value) c_gsk_shader_args_builder_set_vec2;
	void function(GskShaderArgsBuilder* builder, int idx, graphene_vec3_t* value) c_gsk_shader_args_builder_set_vec3;
	void function(GskShaderArgsBuilder* builder, int idx, graphene_vec4_t* value) c_gsk_shader_args_builder_set_vec4;
	GBytes* function(GskShaderArgsBuilder* builder) c_gsk_shader_args_builder_to_args;
	void function(GskShaderArgsBuilder* builder) c_gsk_shader_args_builder_unref;

	// gsk.ShadowNode

	GType function() c_gsk_shadow_node_get_type;
	GskRenderNode* function(GskRenderNode* child, GskShadow* shadows, size_t nShadows) c_gsk_shadow_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_shadow_node_get_child;
	size_t function(GskRenderNode* node) c_gsk_shadow_node_get_n_shadows;
	GskShadow* function(GskRenderNode* node, size_t i) c_gsk_shadow_node_get_shadow;

	// gsk.TextNode

	GType function() c_gsk_text_node_get_type;
	GskRenderNode* function(PangoFont* font, PangoGlyphString* glyphs, GdkRGBA* color, graphene_point_t* offset) c_gsk_text_node_new;
	GdkRGBA* function(GskRenderNode* node) c_gsk_text_node_get_color;
	PangoFont* function(GskRenderNode* node) c_gsk_text_node_get_font;
	PangoGlyphInfo* function(GskRenderNode* node, uint* nGlyphs) c_gsk_text_node_get_glyphs;
	uint function(GskRenderNode* node) c_gsk_text_node_get_num_glyphs;
	graphene_point_t* function(GskRenderNode* node) c_gsk_text_node_get_offset;
	int function(GskRenderNode* node) c_gsk_text_node_has_color_glyphs;

	// gsk.TextureNode

	GType function() c_gsk_texture_node_get_type;
	GskRenderNode* function(GdkTexture* texture, graphene_rect_t* bounds) c_gsk_texture_node_new;
	GdkTexture* function(GskRenderNode* node) c_gsk_texture_node_get_texture;

	// gsk.Transform

	GType function() c_gsk_transform_get_type;
	GskTransform* function() c_gsk_transform_new;
	int function(GskTransform* first, GskTransform* second) c_gsk_transform_equal;
	GskTransformCategory function(GskTransform* self) c_gsk_transform_get_category;
	GskTransform* function(GskTransform* self) c_gsk_transform_invert;
	GskTransform* function(GskTransform* next, graphene_matrix_t* matrix) c_gsk_transform_matrix;
	GskTransform* function(GskTransform* next, float depth) c_gsk_transform_perspective;
	void function(GskTransform* self, GString* string_) c_gsk_transform_print;
	GskTransform* function(GskTransform* self) c_gsk_transform_ref;
	GskTransform* function(GskTransform* next, float angle) c_gsk_transform_rotate;
	GskTransform* function(GskTransform* next, float angle, graphene_vec3_t* axis) c_gsk_transform_rotate_3d;
	GskTransform* function(GskTransform* next, float factorX, float factorY) c_gsk_transform_scale;
	GskTransform* function(GskTransform* next, float factorX, float factorY, float factorZ) c_gsk_transform_scale_3d;
	GskTransform* function(GskTransform* next, float skewX, float skewY) c_gsk_transform_skew;
	void function(GskTransform* self, float* outXx, float* outYx, float* outXy, float* outYy, float* outDx, float* outDy) c_gsk_transform_to_2d;
	void function(GskTransform* self, float* outSkewX, float* outSkewY, float* outScaleX, float* outScaleY, float* outAngle, float* outDx, float* outDy) c_gsk_transform_to_2d_components;
	void function(GskTransform* self, float* outScaleX, float* outScaleY, float* outDx, float* outDy) c_gsk_transform_to_affine;
	void function(GskTransform* self, graphene_matrix_t* outMatrix) c_gsk_transform_to_matrix;
	char* function(GskTransform* self) c_gsk_transform_to_string;
	void function(GskTransform* self, float* outDx, float* outDy) c_gsk_transform_to_translate;
	GskTransform* function(GskTransform* next, GskTransform* other) c_gsk_transform_transform;
	void function(GskTransform* self, graphene_rect_t* rect, graphene_rect_t* outRect) c_gsk_transform_transform_bounds;
	void function(GskTransform* self, graphene_point_t* point, graphene_point_t* outPoint) c_gsk_transform_transform_point;
	GskTransform* function(GskTransform* next, graphene_point_t* point) c_gsk_transform_translate;
	GskTransform* function(GskTransform* next, graphene_point3d_t* point) c_gsk_transform_translate_3d;
	void function(GskTransform* self) c_gsk_transform_unref;
	int function(const(char)* string_, GskTransform** outTransform) c_gsk_transform_parse;

	// gsk.TransformNode

	GType function() c_gsk_transform_node_get_type;
	GskRenderNode* function(GskRenderNode* child, GskTransform* transform) c_gsk_transform_node_new;
	GskRenderNode* function(GskRenderNode* node) c_gsk_transform_node_get_child;
	GskTransform* function(GskRenderNode* node) c_gsk_transform_node_get_transform;
}


// gsk.BlendNode

alias c_gsk_blend_node_get_type gsk_blend_node_get_type;
alias c_gsk_blend_node_new gsk_blend_node_new;
alias c_gsk_blend_node_get_blend_mode gsk_blend_node_get_blend_mode;
alias c_gsk_blend_node_get_bottom_child gsk_blend_node_get_bottom_child;
alias c_gsk_blend_node_get_top_child gsk_blend_node_get_top_child;

// gsk.BlurNode

alias c_gsk_blur_node_get_type gsk_blur_node_get_type;
alias c_gsk_blur_node_new gsk_blur_node_new;
alias c_gsk_blur_node_get_child gsk_blur_node_get_child;
alias c_gsk_blur_node_get_radius gsk_blur_node_get_radius;

// gsk.BorderNode

alias c_gsk_border_node_get_type gsk_border_node_get_type;
alias c_gsk_border_node_new gsk_border_node_new;
alias c_gsk_border_node_get_colors gsk_border_node_get_colors;
alias c_gsk_border_node_get_outline gsk_border_node_get_outline;
alias c_gsk_border_node_get_widths gsk_border_node_get_widths;

// gsk.BroadwayRenderer

alias c_gsk_broadway_renderer_get_type gsk_broadway_renderer_get_type;
alias c_gsk_broadway_renderer_new gsk_broadway_renderer_new;

// gsk.CairoNode

alias c_gsk_cairo_node_get_type gsk_cairo_node_get_type;
alias c_gsk_cairo_node_new gsk_cairo_node_new;
alias c_gsk_cairo_node_get_draw_context gsk_cairo_node_get_draw_context;
alias c_gsk_cairo_node_get_surface gsk_cairo_node_get_surface;

// gsk.CairoRenderer

alias c_gsk_cairo_renderer_get_type gsk_cairo_renderer_get_type;
alias c_gsk_cairo_renderer_new gsk_cairo_renderer_new;

// gsk.ClipNode

alias c_gsk_clip_node_get_type gsk_clip_node_get_type;
alias c_gsk_clip_node_new gsk_clip_node_new;
alias c_gsk_clip_node_get_child gsk_clip_node_get_child;
alias c_gsk_clip_node_get_clip gsk_clip_node_get_clip;

// gsk.ColorMatrixNode

alias c_gsk_color_matrix_node_get_type gsk_color_matrix_node_get_type;
alias c_gsk_color_matrix_node_new gsk_color_matrix_node_new;
alias c_gsk_color_matrix_node_get_child gsk_color_matrix_node_get_child;
alias c_gsk_color_matrix_node_get_color_matrix gsk_color_matrix_node_get_color_matrix;
alias c_gsk_color_matrix_node_get_color_offset gsk_color_matrix_node_get_color_offset;

// gsk.ColorNode

alias c_gsk_color_node_get_type gsk_color_node_get_type;
alias c_gsk_color_node_new gsk_color_node_new;
alias c_gsk_color_node_get_color gsk_color_node_get_color;

// gsk.ConicGradientNode

alias c_gsk_conic_gradient_node_get_type gsk_conic_gradient_node_get_type;
alias c_gsk_conic_gradient_node_new gsk_conic_gradient_node_new;
alias c_gsk_conic_gradient_node_get_angle gsk_conic_gradient_node_get_angle;
alias c_gsk_conic_gradient_node_get_center gsk_conic_gradient_node_get_center;
alias c_gsk_conic_gradient_node_get_color_stops gsk_conic_gradient_node_get_color_stops;
alias c_gsk_conic_gradient_node_get_n_color_stops gsk_conic_gradient_node_get_n_color_stops;
alias c_gsk_conic_gradient_node_get_rotation gsk_conic_gradient_node_get_rotation;

// gsk.ContainerNode

alias c_gsk_container_node_get_type gsk_container_node_get_type;
alias c_gsk_container_node_new gsk_container_node_new;
alias c_gsk_container_node_get_child gsk_container_node_get_child;
alias c_gsk_container_node_get_n_children gsk_container_node_get_n_children;

// gsk.CrossFadeNode

alias c_gsk_cross_fade_node_get_type gsk_cross_fade_node_get_type;
alias c_gsk_cross_fade_node_new gsk_cross_fade_node_new;
alias c_gsk_cross_fade_node_get_end_child gsk_cross_fade_node_get_end_child;
alias c_gsk_cross_fade_node_get_progress gsk_cross_fade_node_get_progress;
alias c_gsk_cross_fade_node_get_start_child gsk_cross_fade_node_get_start_child;

// gsk.DebugNode

alias c_gsk_debug_node_get_type gsk_debug_node_get_type;
alias c_gsk_debug_node_new gsk_debug_node_new;
alias c_gsk_debug_node_get_child gsk_debug_node_get_child;
alias c_gsk_debug_node_get_message gsk_debug_node_get_message;

// gsk.GLRenderer

alias c_gsk_gl_renderer_get_type gsk_gl_renderer_get_type;
alias c_gsk_gl_renderer_new gsk_gl_renderer_new;

// gsk.GLShader

alias c_gsk_gl_shader_get_type gsk_gl_shader_get_type;
alias c_gsk_gl_shader_new_from_bytes gsk_gl_shader_new_from_bytes;
alias c_gsk_gl_shader_new_from_resource gsk_gl_shader_new_from_resource;
alias c_gsk_gl_shader_compile gsk_gl_shader_compile;
alias c_gsk_gl_shader_find_uniform_by_name gsk_gl_shader_find_uniform_by_name;
alias c_gsk_gl_shader_format_args gsk_gl_shader_format_args;
alias c_gsk_gl_shader_format_args_va gsk_gl_shader_format_args_va;
alias c_gsk_gl_shader_get_arg_bool gsk_gl_shader_get_arg_bool;
alias c_gsk_gl_shader_get_arg_float gsk_gl_shader_get_arg_float;
alias c_gsk_gl_shader_get_arg_int gsk_gl_shader_get_arg_int;
alias c_gsk_gl_shader_get_arg_uint gsk_gl_shader_get_arg_uint;
alias c_gsk_gl_shader_get_arg_vec2 gsk_gl_shader_get_arg_vec2;
alias c_gsk_gl_shader_get_arg_vec3 gsk_gl_shader_get_arg_vec3;
alias c_gsk_gl_shader_get_arg_vec4 gsk_gl_shader_get_arg_vec4;
alias c_gsk_gl_shader_get_args_size gsk_gl_shader_get_args_size;
alias c_gsk_gl_shader_get_n_textures gsk_gl_shader_get_n_textures;
alias c_gsk_gl_shader_get_n_uniforms gsk_gl_shader_get_n_uniforms;
alias c_gsk_gl_shader_get_resource gsk_gl_shader_get_resource;
alias c_gsk_gl_shader_get_source gsk_gl_shader_get_source;
alias c_gsk_gl_shader_get_uniform_name gsk_gl_shader_get_uniform_name;
alias c_gsk_gl_shader_get_uniform_offset gsk_gl_shader_get_uniform_offset;
alias c_gsk_gl_shader_get_uniform_type gsk_gl_shader_get_uniform_type;

// gsk.GLShaderNode

alias c_gsk_gl_shader_node_get_type gsk_gl_shader_node_get_type;
alias c_gsk_gl_shader_node_new gsk_gl_shader_node_new;
alias c_gsk_gl_shader_node_get_args gsk_gl_shader_node_get_args;
alias c_gsk_gl_shader_node_get_child gsk_gl_shader_node_get_child;
alias c_gsk_gl_shader_node_get_n_children gsk_gl_shader_node_get_n_children;
alias c_gsk_gl_shader_node_get_shader gsk_gl_shader_node_get_shader;

// gsk.InsetShadowNode

alias c_gsk_inset_shadow_node_get_type gsk_inset_shadow_node_get_type;
alias c_gsk_inset_shadow_node_new gsk_inset_shadow_node_new;
alias c_gsk_inset_shadow_node_get_blur_radius gsk_inset_shadow_node_get_blur_radius;
alias c_gsk_inset_shadow_node_get_color gsk_inset_shadow_node_get_color;
alias c_gsk_inset_shadow_node_get_dx gsk_inset_shadow_node_get_dx;
alias c_gsk_inset_shadow_node_get_dy gsk_inset_shadow_node_get_dy;
alias c_gsk_inset_shadow_node_get_outline gsk_inset_shadow_node_get_outline;
alias c_gsk_inset_shadow_node_get_spread gsk_inset_shadow_node_get_spread;

// gsk.LinearGradientNode

alias c_gsk_linear_gradient_node_get_type gsk_linear_gradient_node_get_type;
alias c_gsk_linear_gradient_node_new gsk_linear_gradient_node_new;
alias c_gsk_linear_gradient_node_get_color_stops gsk_linear_gradient_node_get_color_stops;
alias c_gsk_linear_gradient_node_get_end gsk_linear_gradient_node_get_end;
alias c_gsk_linear_gradient_node_get_n_color_stops gsk_linear_gradient_node_get_n_color_stops;
alias c_gsk_linear_gradient_node_get_start gsk_linear_gradient_node_get_start;

// gsk.NglRenderer

alias c_gsk_ngl_renderer_get_type gsk_ngl_renderer_get_type;
alias c_gsk_ngl_renderer_new gsk_ngl_renderer_new;

// gsk.OpacityNode

alias c_gsk_opacity_node_get_type gsk_opacity_node_get_type;
alias c_gsk_opacity_node_new gsk_opacity_node_new;
alias c_gsk_opacity_node_get_child gsk_opacity_node_get_child;
alias c_gsk_opacity_node_get_opacity gsk_opacity_node_get_opacity;

// gsk.OutsetShadowNode

alias c_gsk_outset_shadow_node_get_type gsk_outset_shadow_node_get_type;
alias c_gsk_outset_shadow_node_new gsk_outset_shadow_node_new;
alias c_gsk_outset_shadow_node_get_blur_radius gsk_outset_shadow_node_get_blur_radius;
alias c_gsk_outset_shadow_node_get_color gsk_outset_shadow_node_get_color;
alias c_gsk_outset_shadow_node_get_dx gsk_outset_shadow_node_get_dx;
alias c_gsk_outset_shadow_node_get_dy gsk_outset_shadow_node_get_dy;
alias c_gsk_outset_shadow_node_get_outline gsk_outset_shadow_node_get_outline;
alias c_gsk_outset_shadow_node_get_spread gsk_outset_shadow_node_get_spread;

// gsk.RadialGradientNode

alias c_gsk_radial_gradient_node_get_type gsk_radial_gradient_node_get_type;
alias c_gsk_radial_gradient_node_new gsk_radial_gradient_node_new;
alias c_gsk_radial_gradient_node_get_center gsk_radial_gradient_node_get_center;
alias c_gsk_radial_gradient_node_get_color_stops gsk_radial_gradient_node_get_color_stops;
alias c_gsk_radial_gradient_node_get_end gsk_radial_gradient_node_get_end;
alias c_gsk_radial_gradient_node_get_hradius gsk_radial_gradient_node_get_hradius;
alias c_gsk_radial_gradient_node_get_n_color_stops gsk_radial_gradient_node_get_n_color_stops;
alias c_gsk_radial_gradient_node_get_start gsk_radial_gradient_node_get_start;
alias c_gsk_radial_gradient_node_get_vradius gsk_radial_gradient_node_get_vradius;

// gsk.RenderNode

alias c_gsk_render_node_get_type gsk_render_node_get_type;
alias c_gsk_render_node_deserialize gsk_render_node_deserialize;
alias c_gsk_render_node_draw gsk_render_node_draw;
alias c_gsk_render_node_get_bounds gsk_render_node_get_bounds;
alias c_gsk_render_node_get_node_type gsk_render_node_get_node_type;
alias c_gsk_render_node_ref gsk_render_node_ref;
alias c_gsk_render_node_serialize gsk_render_node_serialize;
alias c_gsk_render_node_unref gsk_render_node_unref;
alias c_gsk_render_node_write_to_file gsk_render_node_write_to_file;

// gsk.Renderer

alias c_gsk_renderer_get_type gsk_renderer_get_type;
alias c_gsk_renderer_new_for_surface gsk_renderer_new_for_surface;
alias c_gsk_renderer_get_surface gsk_renderer_get_surface;
alias c_gsk_renderer_is_realized gsk_renderer_is_realized;
alias c_gsk_renderer_realize gsk_renderer_realize;
alias c_gsk_renderer_render gsk_renderer_render;
alias c_gsk_renderer_render_texture gsk_renderer_render_texture;
alias c_gsk_renderer_unrealize gsk_renderer_unrealize;

// gsk.RepeatNode

alias c_gsk_repeat_node_get_type gsk_repeat_node_get_type;
alias c_gsk_repeat_node_new gsk_repeat_node_new;
alias c_gsk_repeat_node_get_child gsk_repeat_node_get_child;
alias c_gsk_repeat_node_get_child_bounds gsk_repeat_node_get_child_bounds;

// gsk.RepeatingLinearGradientNode

alias c_gsk_repeating_linear_gradient_node_get_type gsk_repeating_linear_gradient_node_get_type;
alias c_gsk_repeating_linear_gradient_node_new gsk_repeating_linear_gradient_node_new;

// gsk.RepeatingRadialGradientNode

alias c_gsk_repeating_radial_gradient_node_get_type gsk_repeating_radial_gradient_node_get_type;
alias c_gsk_repeating_radial_gradient_node_new gsk_repeating_radial_gradient_node_new;

// gsk.RoundedClipNode

alias c_gsk_rounded_clip_node_get_type gsk_rounded_clip_node_get_type;
alias c_gsk_rounded_clip_node_new gsk_rounded_clip_node_new;
alias c_gsk_rounded_clip_node_get_child gsk_rounded_clip_node_get_child;
alias c_gsk_rounded_clip_node_get_clip gsk_rounded_clip_node_get_clip;

// gsk.RoundedRect

alias c_gsk_rounded_rect_contains_point gsk_rounded_rect_contains_point;
alias c_gsk_rounded_rect_contains_rect gsk_rounded_rect_contains_rect;
alias c_gsk_rounded_rect_init gsk_rounded_rect_init;
alias c_gsk_rounded_rect_init_copy gsk_rounded_rect_init_copy;
alias c_gsk_rounded_rect_init_from_rect gsk_rounded_rect_init_from_rect;
alias c_gsk_rounded_rect_intersects_rect gsk_rounded_rect_intersects_rect;
alias c_gsk_rounded_rect_is_rectilinear gsk_rounded_rect_is_rectilinear;
alias c_gsk_rounded_rect_normalize gsk_rounded_rect_normalize;
alias c_gsk_rounded_rect_offset gsk_rounded_rect_offset;
alias c_gsk_rounded_rect_shrink gsk_rounded_rect_shrink;

// gsk.ShaderArgsBuilder

alias c_gsk_shader_args_builder_get_type gsk_shader_args_builder_get_type;
alias c_gsk_shader_args_builder_new gsk_shader_args_builder_new;
alias c_gsk_shader_args_builder_free_to_args gsk_shader_args_builder_free_to_args;
alias c_gsk_shader_args_builder_ref gsk_shader_args_builder_ref;
alias c_gsk_shader_args_builder_set_bool gsk_shader_args_builder_set_bool;
alias c_gsk_shader_args_builder_set_float gsk_shader_args_builder_set_float;
alias c_gsk_shader_args_builder_set_int gsk_shader_args_builder_set_int;
alias c_gsk_shader_args_builder_set_uint gsk_shader_args_builder_set_uint;
alias c_gsk_shader_args_builder_set_vec2 gsk_shader_args_builder_set_vec2;
alias c_gsk_shader_args_builder_set_vec3 gsk_shader_args_builder_set_vec3;
alias c_gsk_shader_args_builder_set_vec4 gsk_shader_args_builder_set_vec4;
alias c_gsk_shader_args_builder_to_args gsk_shader_args_builder_to_args;
alias c_gsk_shader_args_builder_unref gsk_shader_args_builder_unref;

// gsk.ShadowNode

alias c_gsk_shadow_node_get_type gsk_shadow_node_get_type;
alias c_gsk_shadow_node_new gsk_shadow_node_new;
alias c_gsk_shadow_node_get_child gsk_shadow_node_get_child;
alias c_gsk_shadow_node_get_n_shadows gsk_shadow_node_get_n_shadows;
alias c_gsk_shadow_node_get_shadow gsk_shadow_node_get_shadow;

// gsk.TextNode

alias c_gsk_text_node_get_type gsk_text_node_get_type;
alias c_gsk_text_node_new gsk_text_node_new;
alias c_gsk_text_node_get_color gsk_text_node_get_color;
alias c_gsk_text_node_get_font gsk_text_node_get_font;
alias c_gsk_text_node_get_glyphs gsk_text_node_get_glyphs;
alias c_gsk_text_node_get_num_glyphs gsk_text_node_get_num_glyphs;
alias c_gsk_text_node_get_offset gsk_text_node_get_offset;
alias c_gsk_text_node_has_color_glyphs gsk_text_node_has_color_glyphs;

// gsk.TextureNode

alias c_gsk_texture_node_get_type gsk_texture_node_get_type;
alias c_gsk_texture_node_new gsk_texture_node_new;
alias c_gsk_texture_node_get_texture gsk_texture_node_get_texture;

// gsk.Transform

alias c_gsk_transform_get_type gsk_transform_get_type;
alias c_gsk_transform_new gsk_transform_new;
alias c_gsk_transform_equal gsk_transform_equal;
alias c_gsk_transform_get_category gsk_transform_get_category;
alias c_gsk_transform_invert gsk_transform_invert;
alias c_gsk_transform_matrix gsk_transform_matrix;
alias c_gsk_transform_perspective gsk_transform_perspective;
alias c_gsk_transform_print gsk_transform_print;
alias c_gsk_transform_ref gsk_transform_ref;
alias c_gsk_transform_rotate gsk_transform_rotate;
alias c_gsk_transform_rotate_3d gsk_transform_rotate_3d;
alias c_gsk_transform_scale gsk_transform_scale;
alias c_gsk_transform_scale_3d gsk_transform_scale_3d;
alias c_gsk_transform_skew gsk_transform_skew;
alias c_gsk_transform_to_2d gsk_transform_to_2d;
alias c_gsk_transform_to_2d_components gsk_transform_to_2d_components;
alias c_gsk_transform_to_affine gsk_transform_to_affine;
alias c_gsk_transform_to_matrix gsk_transform_to_matrix;
alias c_gsk_transform_to_string gsk_transform_to_string;
alias c_gsk_transform_to_translate gsk_transform_to_translate;
alias c_gsk_transform_transform gsk_transform_transform;
alias c_gsk_transform_transform_bounds gsk_transform_transform_bounds;
alias c_gsk_transform_transform_point gsk_transform_transform_point;
alias c_gsk_transform_translate gsk_transform_translate;
alias c_gsk_transform_translate_3d gsk_transform_translate_3d;
alias c_gsk_transform_unref gsk_transform_unref;
alias c_gsk_transform_parse gsk_transform_parse;

// gsk.TransformNode

alias c_gsk_transform_node_get_type gsk_transform_node_get_type;
alias c_gsk_transform_node_new gsk_transform_node_new;
alias c_gsk_transform_node_get_child gsk_transform_node_get_child;
alias c_gsk_transform_node_get_transform gsk_transform_node_get_transform;
