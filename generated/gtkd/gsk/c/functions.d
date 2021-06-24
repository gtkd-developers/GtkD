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
version (Windows)
	static immutable LIBRARY_GSK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GSK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GSK = ["libgtk-4.so.1"];

__gshared extern(C)
{

	// gsk.BlendNode

	GType gsk_blend_node_get_type();
	GskRenderNode* gsk_blend_node_new(GskRenderNode* bottom, GskRenderNode* top, GskBlendMode blendMode);
	GskBlendMode gsk_blend_node_get_blend_mode(GskRenderNode* node);
	GskRenderNode* gsk_blend_node_get_bottom_child(GskRenderNode* node);
	GskRenderNode* gsk_blend_node_get_top_child(GskRenderNode* node);

	// gsk.BlurNode

	GType gsk_blur_node_get_type();
	GskRenderNode* gsk_blur_node_new(GskRenderNode* child, float radius);
	GskRenderNode* gsk_blur_node_get_child(GskRenderNode* node);
	float gsk_blur_node_get_radius(GskRenderNode* node);

	// gsk.BorderNode

	GType gsk_border_node_get_type();
	GskRenderNode* gsk_border_node_new(GskRoundedRect* outline, float* borderWidth, GdkRGBA* borderColor);
	GdkRGBA* gsk_border_node_get_colors(GskRenderNode* node);
	GskRoundedRect* gsk_border_node_get_outline(GskRenderNode* node);
	float* gsk_border_node_get_widths(GskRenderNode* node);

	// gsk.BroadwayRenderer

	GType gsk_broadway_renderer_get_type();
	GskRenderer* gsk_broadway_renderer_new();

	// gsk.CairoNode

	GType gsk_cairo_node_get_type();
	GskRenderNode* gsk_cairo_node_new(graphene_rect_t* bounds);
	cairo_t* gsk_cairo_node_get_draw_context(GskRenderNode* node);
	cairo_surface_t* gsk_cairo_node_get_surface(GskRenderNode* node);

	// gsk.CairoRenderer

	GType gsk_cairo_renderer_get_type();
	GskRenderer* gsk_cairo_renderer_new();

	// gsk.ClipNode

	GType gsk_clip_node_get_type();
	GskRenderNode* gsk_clip_node_new(GskRenderNode* child, graphene_rect_t* clip);
	GskRenderNode* gsk_clip_node_get_child(GskRenderNode* node);
	graphene_rect_t* gsk_clip_node_get_clip(GskRenderNode* node);

	// gsk.ColorMatrixNode

	GType gsk_color_matrix_node_get_type();
	GskRenderNode* gsk_color_matrix_node_new(GskRenderNode* child, graphene_matrix_t* colorMatrix, graphene_vec4_t* colorOffset);
	GskRenderNode* gsk_color_matrix_node_get_child(GskRenderNode* node);
	graphene_matrix_t* gsk_color_matrix_node_get_color_matrix(GskRenderNode* node);
	graphene_vec4_t* gsk_color_matrix_node_get_color_offset(GskRenderNode* node);

	// gsk.ColorNode

	GType gsk_color_node_get_type();
	GskRenderNode* gsk_color_node_new(GdkRGBA* rgba, graphene_rect_t* bounds);
	GdkRGBA* gsk_color_node_get_color(GskRenderNode* node);

	// gsk.ConicGradientNode

	GType gsk_conic_gradient_node_get_type();
	GskRenderNode* gsk_conic_gradient_node_new(graphene_rect_t* bounds, graphene_point_t* center, float rotation, GskColorStop* colorStops, size_t nColorStops);
	float gsk_conic_gradient_node_get_angle(GskRenderNode* node);
	graphene_point_t* gsk_conic_gradient_node_get_center(GskRenderNode* node);
	GskColorStop* gsk_conic_gradient_node_get_color_stops(GskRenderNode* node, size_t* nStops);
	size_t gsk_conic_gradient_node_get_n_color_stops(GskRenderNode* node);
	float gsk_conic_gradient_node_get_rotation(GskRenderNode* node);

	// gsk.ContainerNode

	GType gsk_container_node_get_type();
	GskRenderNode* gsk_container_node_new(GskRenderNode** children, uint nChildren);
	GskRenderNode* gsk_container_node_get_child(GskRenderNode* node, uint idx);
	uint gsk_container_node_get_n_children(GskRenderNode* node);

	// gsk.CrossFadeNode

	GType gsk_cross_fade_node_get_type();
	GskRenderNode* gsk_cross_fade_node_new(GskRenderNode* start, GskRenderNode* end, float progress);
	GskRenderNode* gsk_cross_fade_node_get_end_child(GskRenderNode* node);
	float gsk_cross_fade_node_get_progress(GskRenderNode* node);
	GskRenderNode* gsk_cross_fade_node_get_start_child(GskRenderNode* node);

	// gsk.DebugNode

	GType gsk_debug_node_get_type();
	GskRenderNode* gsk_debug_node_new(GskRenderNode* child, char* message);
	GskRenderNode* gsk_debug_node_get_child(GskRenderNode* node);
	const(char)* gsk_debug_node_get_message(GskRenderNode* node);

	// gsk.GLRenderer

	GType gsk_gl_renderer_get_type();
	GskRenderer* gsk_gl_renderer_new();

	// gsk.GLShader

	GType gsk_gl_shader_get_type();
	GskGLShader* gsk_gl_shader_new_from_bytes(GBytes* sourcecode);
	GskGLShader* gsk_gl_shader_new_from_resource(const(char)* resourcePath);
	int gsk_gl_shader_compile(GskGLShader* shader, GskRenderer* renderer, GError** err);
	int gsk_gl_shader_find_uniform_by_name(GskGLShader* shader, const(char)* name);
	GBytes* gsk_gl_shader_format_args(GskGLShader* shader, ... );
	GBytes* gsk_gl_shader_format_args_va(GskGLShader* shader, void* uniforms);
	int gsk_gl_shader_get_arg_bool(GskGLShader* shader, GBytes* args, int idx);
	float gsk_gl_shader_get_arg_float(GskGLShader* shader, GBytes* args, int idx);
	int gsk_gl_shader_get_arg_int(GskGLShader* shader, GBytes* args, int idx);
	uint gsk_gl_shader_get_arg_uint(GskGLShader* shader, GBytes* args, int idx);
	void gsk_gl_shader_get_arg_vec2(GskGLShader* shader, GBytes* args, int idx, graphene_vec2_t* outValue);
	void gsk_gl_shader_get_arg_vec3(GskGLShader* shader, GBytes* args, int idx, graphene_vec3_t* outValue);
	void gsk_gl_shader_get_arg_vec4(GskGLShader* shader, GBytes* args, int idx, graphene_vec4_t* outValue);
	size_t gsk_gl_shader_get_args_size(GskGLShader* shader);
	int gsk_gl_shader_get_n_textures(GskGLShader* shader);
	int gsk_gl_shader_get_n_uniforms(GskGLShader* shader);
	const(char)* gsk_gl_shader_get_resource(GskGLShader* shader);
	GBytes* gsk_gl_shader_get_source(GskGLShader* shader);
	const(char)* gsk_gl_shader_get_uniform_name(GskGLShader* shader, int idx);
	int gsk_gl_shader_get_uniform_offset(GskGLShader* shader, int idx);
	GskGLUniformType gsk_gl_shader_get_uniform_type(GskGLShader* shader, int idx);

	// gsk.GLShaderNode

	GType gsk_gl_shader_node_get_type();
	GskRenderNode* gsk_gl_shader_node_new(GskGLShader* shader, graphene_rect_t* bounds, GBytes* args, GskRenderNode** children, uint nChildren);
	GBytes* gsk_gl_shader_node_get_args(GskRenderNode* node);
	GskRenderNode* gsk_gl_shader_node_get_child(GskRenderNode* node, uint idx);
	uint gsk_gl_shader_node_get_n_children(GskRenderNode* node);
	GskGLShader* gsk_gl_shader_node_get_shader(GskRenderNode* node);

	// gsk.InsetShadowNode

	GType gsk_inset_shadow_node_get_type();
	GskRenderNode* gsk_inset_shadow_node_new(GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius);
	float gsk_inset_shadow_node_get_blur_radius(GskRenderNode* node);
	GdkRGBA* gsk_inset_shadow_node_get_color(GskRenderNode* node);
	float gsk_inset_shadow_node_get_dx(GskRenderNode* node);
	float gsk_inset_shadow_node_get_dy(GskRenderNode* node);
	GskRoundedRect* gsk_inset_shadow_node_get_outline(GskRenderNode* node);
	float gsk_inset_shadow_node_get_spread(GskRenderNode* node);

	// gsk.LinearGradientNode

	GType gsk_linear_gradient_node_get_type();
	GskRenderNode* gsk_linear_gradient_node_new(graphene_rect_t* bounds, graphene_point_t* start, graphene_point_t* end, GskColorStop* colorStops, size_t nColorStops);
	GskColorStop* gsk_linear_gradient_node_get_color_stops(GskRenderNode* node, size_t* nStops);
	graphene_point_t* gsk_linear_gradient_node_get_end(GskRenderNode* node);
	size_t gsk_linear_gradient_node_get_n_color_stops(GskRenderNode* node);
	graphene_point_t* gsk_linear_gradient_node_get_start(GskRenderNode* node);

	// gsk.NglRenderer

	GType gsk_ngl_renderer_get_type();
	GskRenderer* gsk_ngl_renderer_new();

	// gsk.OpacityNode

	GType gsk_opacity_node_get_type();
	GskRenderNode* gsk_opacity_node_new(GskRenderNode* child, float opacity);
	GskRenderNode* gsk_opacity_node_get_child(GskRenderNode* node);
	float gsk_opacity_node_get_opacity(GskRenderNode* node);

	// gsk.OutsetShadowNode

	GType gsk_outset_shadow_node_get_type();
	GskRenderNode* gsk_outset_shadow_node_new(GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius);
	float gsk_outset_shadow_node_get_blur_radius(GskRenderNode* node);
	GdkRGBA* gsk_outset_shadow_node_get_color(GskRenderNode* node);
	float gsk_outset_shadow_node_get_dx(GskRenderNode* node);
	float gsk_outset_shadow_node_get_dy(GskRenderNode* node);
	GskRoundedRect* gsk_outset_shadow_node_get_outline(GskRenderNode* node);
	float gsk_outset_shadow_node_get_spread(GskRenderNode* node);

	// gsk.RadialGradientNode

	GType gsk_radial_gradient_node_get_type();
	GskRenderNode* gsk_radial_gradient_node_new(graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* colorStops, size_t nColorStops);
	graphene_point_t* gsk_radial_gradient_node_get_center(GskRenderNode* node);
	GskColorStop* gsk_radial_gradient_node_get_color_stops(GskRenderNode* node, size_t* nStops);
	float gsk_radial_gradient_node_get_end(GskRenderNode* node);
	float gsk_radial_gradient_node_get_hradius(GskRenderNode* node);
	size_t gsk_radial_gradient_node_get_n_color_stops(GskRenderNode* node);
	float gsk_radial_gradient_node_get_start(GskRenderNode* node);
	float gsk_radial_gradient_node_get_vradius(GskRenderNode* node);

	// gsk.RenderNode

	GType gsk_render_node_get_type();
	GskRenderNode* gsk_render_node_deserialize(GBytes* bytes, GskParseErrorFunc errorFunc, void* userData);
	void gsk_render_node_draw(GskRenderNode* node, cairo_t* cr);
	void gsk_render_node_get_bounds(GskRenderNode* node, graphene_rect_t* bounds);
	GskRenderNodeType gsk_render_node_get_node_type(GskRenderNode* node);
	GskRenderNode* gsk_render_node_ref(GskRenderNode* node);
	GBytes* gsk_render_node_serialize(GskRenderNode* node);
	void gsk_render_node_unref(GskRenderNode* node);
	int gsk_render_node_write_to_file(GskRenderNode* node, const(char)* filename, GError** err);

	// gsk.Renderer

	GType gsk_renderer_get_type();
	GskRenderer* gsk_renderer_new_for_surface(GdkSurface* surface);
	GdkSurface* gsk_renderer_get_surface(GskRenderer* renderer);
	int gsk_renderer_is_realized(GskRenderer* renderer);
	int gsk_renderer_realize(GskRenderer* renderer, GdkSurface* surface, GError** err);
	void gsk_renderer_render(GskRenderer* renderer, GskRenderNode* root, cairo_region_t* region);
	GdkTexture* gsk_renderer_render_texture(GskRenderer* renderer, GskRenderNode* root, graphene_rect_t* viewport);
	void gsk_renderer_unrealize(GskRenderer* renderer);

	// gsk.RepeatNode

	GType gsk_repeat_node_get_type();
	GskRenderNode* gsk_repeat_node_new(graphene_rect_t* bounds, GskRenderNode* child, graphene_rect_t* childBounds);
	GskRenderNode* gsk_repeat_node_get_child(GskRenderNode* node);
	graphene_rect_t* gsk_repeat_node_get_child_bounds(GskRenderNode* node);

	// gsk.RepeatingLinearGradientNode

	GType gsk_repeating_linear_gradient_node_get_type();
	GskRenderNode* gsk_repeating_linear_gradient_node_new(graphene_rect_t* bounds, graphene_point_t* start, graphene_point_t* end, GskColorStop* colorStops, size_t nColorStops);

	// gsk.RepeatingRadialGradientNode

	GType gsk_repeating_radial_gradient_node_get_type();
	GskRenderNode* gsk_repeating_radial_gradient_node_new(graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* colorStops, size_t nColorStops);

	// gsk.RoundedClipNode

	GType gsk_rounded_clip_node_get_type();
	GskRenderNode* gsk_rounded_clip_node_new(GskRenderNode* child, GskRoundedRect* clip);
	GskRenderNode* gsk_rounded_clip_node_get_child(GskRenderNode* node);
	GskRoundedRect* gsk_rounded_clip_node_get_clip(GskRenderNode* node);

	// gsk.RoundedRect

	int gsk_rounded_rect_contains_point(GskRoundedRect* self, graphene_point_t* point);
	int gsk_rounded_rect_contains_rect(GskRoundedRect* self, graphene_rect_t* rect);
	GskRoundedRect* gsk_rounded_rect_init(GskRoundedRect* self, graphene_rect_t* bounds, graphene_size_t* topLeft, graphene_size_t* topRight, graphene_size_t* bottomRight, graphene_size_t* bottomLeft);
	GskRoundedRect* gsk_rounded_rect_init_copy(GskRoundedRect* self, GskRoundedRect* src);
	GskRoundedRect* gsk_rounded_rect_init_from_rect(GskRoundedRect* self, graphene_rect_t* bounds, float radius);
	int gsk_rounded_rect_intersects_rect(GskRoundedRect* self, graphene_rect_t* rect);
	int gsk_rounded_rect_is_rectilinear(GskRoundedRect* self);
	GskRoundedRect* gsk_rounded_rect_normalize(GskRoundedRect* self);
	GskRoundedRect* gsk_rounded_rect_offset(GskRoundedRect* self, float dx, float dy);
	GskRoundedRect* gsk_rounded_rect_shrink(GskRoundedRect* self, float top, float right, float bottom, float left);

	// gsk.ShaderArgsBuilder

	GType gsk_shader_args_builder_get_type();
	GskShaderArgsBuilder* gsk_shader_args_builder_new(GskGLShader* shader, GBytes* initialValues);
	GBytes* gsk_shader_args_builder_free_to_args(GskShaderArgsBuilder* builder);
	GskShaderArgsBuilder* gsk_shader_args_builder_ref(GskShaderArgsBuilder* builder);
	void gsk_shader_args_builder_set_bool(GskShaderArgsBuilder* builder, int idx, int value);
	void gsk_shader_args_builder_set_float(GskShaderArgsBuilder* builder, int idx, float value);
	void gsk_shader_args_builder_set_int(GskShaderArgsBuilder* builder, int idx, int value);
	void gsk_shader_args_builder_set_uint(GskShaderArgsBuilder* builder, int idx, uint value);
	void gsk_shader_args_builder_set_vec2(GskShaderArgsBuilder* builder, int idx, graphene_vec2_t* value);
	void gsk_shader_args_builder_set_vec3(GskShaderArgsBuilder* builder, int idx, graphene_vec3_t* value);
	void gsk_shader_args_builder_set_vec4(GskShaderArgsBuilder* builder, int idx, graphene_vec4_t* value);
	GBytes* gsk_shader_args_builder_to_args(GskShaderArgsBuilder* builder);
	void gsk_shader_args_builder_unref(GskShaderArgsBuilder* builder);

	// gsk.ShadowNode

	GType gsk_shadow_node_get_type();
	GskRenderNode* gsk_shadow_node_new(GskRenderNode* child, GskShadow* shadows, size_t nShadows);
	GskRenderNode* gsk_shadow_node_get_child(GskRenderNode* node);
	size_t gsk_shadow_node_get_n_shadows(GskRenderNode* node);
	GskShadow* gsk_shadow_node_get_shadow(GskRenderNode* node, size_t i);

	// gsk.TextNode

	GType gsk_text_node_get_type();
	GskRenderNode* gsk_text_node_new(PangoFont* font, PangoGlyphString* glyphs, GdkRGBA* color, graphene_point_t* offset);
	GdkRGBA* gsk_text_node_get_color(GskRenderNode* node);
	PangoFont* gsk_text_node_get_font(GskRenderNode* node);
	PangoGlyphInfo* gsk_text_node_get_glyphs(GskRenderNode* node, uint* nGlyphs);
	uint gsk_text_node_get_num_glyphs(GskRenderNode* node);
	graphene_point_t* gsk_text_node_get_offset(GskRenderNode* node);
	int gsk_text_node_has_color_glyphs(GskRenderNode* node);

	// gsk.TextureNode

	GType gsk_texture_node_get_type();
	GskRenderNode* gsk_texture_node_new(GdkTexture* texture, graphene_rect_t* bounds);
	GdkTexture* gsk_texture_node_get_texture(GskRenderNode* node);

	// gsk.Transform

	GType gsk_transform_get_type();
	GskTransform* gsk_transform_new();
	int gsk_transform_equal(GskTransform* first, GskTransform* second);
	GskTransformCategory gsk_transform_get_category(GskTransform* self);
	GskTransform* gsk_transform_invert(GskTransform* self);
	GskTransform* gsk_transform_matrix(GskTransform* next, graphene_matrix_t* matrix);
	GskTransform* gsk_transform_perspective(GskTransform* next, float depth);
	void gsk_transform_print(GskTransform* self, GString* string_);
	GskTransform* gsk_transform_ref(GskTransform* self);
	GskTransform* gsk_transform_rotate(GskTransform* next, float angle);
	GskTransform* gsk_transform_rotate_3d(GskTransform* next, float angle, graphene_vec3_t* axis);
	GskTransform* gsk_transform_scale(GskTransform* next, float factorX, float factorY);
	GskTransform* gsk_transform_scale_3d(GskTransform* next, float factorX, float factorY, float factorZ);
	void gsk_transform_to_2d(GskTransform* self, float* outXx, float* outYx, float* outXy, float* outYy, float* outDx, float* outDy);
	void gsk_transform_to_affine(GskTransform* self, float* outScaleX, float* outScaleY, float* outDx, float* outDy);
	void gsk_transform_to_matrix(GskTransform* self, graphene_matrix_t* outMatrix);
	char* gsk_transform_to_string(GskTransform* self);
	void gsk_transform_to_translate(GskTransform* self, float* outDx, float* outDy);
	GskTransform* gsk_transform_transform(GskTransform* next, GskTransform* other);
	void gsk_transform_transform_bounds(GskTransform* self, graphene_rect_t* rect, graphene_rect_t* outRect);
	void gsk_transform_transform_point(GskTransform* self, graphene_point_t* point, graphene_point_t* outPoint);
	GskTransform* gsk_transform_translate(GskTransform* next, graphene_point_t* point);
	GskTransform* gsk_transform_translate_3d(GskTransform* next, graphene_point3d_t* point);
	void gsk_transform_unref(GskTransform* self);
	int gsk_transform_parse(const(char)* string_, GskTransform** outTransform);

	// gsk.TransformNode

	GType gsk_transform_node_get_type();
	GskRenderNode* gsk_transform_node_new(GskRenderNode* child, GskTransform* transform);
	GskRenderNode* gsk_transform_node_get_child(GskRenderNode* node);
	GskTransform* gsk_transform_node_get_transform(GskRenderNode* node);

	// gsk.VulkanRenderer

	GType gsk_vulkan_renderer_get_type();
	GskRenderer* gsk_vulkan_renderer_new();
}