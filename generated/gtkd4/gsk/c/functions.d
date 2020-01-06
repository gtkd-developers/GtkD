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
	static immutable LIBRARY_GSK = ["libgtk-4-0.dll;gtk-4-4.0.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GSK = ["libgtk-4.0.dylib"];
else
	static immutable LIBRARY_GSK = ["libgtk-4.so.0.9600.0"];

__gshared extern(C)
{

	// gsk.CairoRenderer

	GType gsk_cairo_renderer_get_type();
	GskRenderer* gsk_cairo_renderer_new();

	// gsk.GLRenderer

	GType gsk_gl_renderer_get_type();
	GskRenderer* gsk_gl_renderer_new();

	// gsk.RenderNode

	GType gsk_render_node_get_type();
	void gsk_render_node_draw(GskRenderNode* node, cairo_t* cr);
	void gsk_render_node_get_bounds(GskRenderNode* node, graphene_rect_t* bounds);
	GskRenderNodeType gsk_render_node_get_node_type(GskRenderNode* node);
	GskRenderNode* gsk_render_node_ref(GskRenderNode* node);
	GBytes* gsk_render_node_serialize(GskRenderNode* node);
	void gsk_render_node_unref(GskRenderNode* node);
	int gsk_render_node_write_to_file(GskRenderNode* node, const(char)* filename, GError** err);
	GskRenderNode* gsk_render_node_deserialize(GBytes* bytes, GskParseErrorFunc errorFunc, void* userData);

	// gsk.Renderer

	GType gsk_renderer_get_type();
	GskRenderer* gsk_renderer_new_for_surface(GdkSurface* surface);
	GdkSurface* gsk_renderer_get_surface(GskRenderer* renderer);
	int gsk_renderer_is_realized(GskRenderer* renderer);
	int gsk_renderer_realize(GskRenderer* renderer, GdkSurface* surface, GError** err);
	void gsk_renderer_render(GskRenderer* renderer, GskRenderNode* root, cairo_region_t* region);
	GdkTexture* gsk_renderer_render_texture(GskRenderer* renderer, GskRenderNode* root, graphene_rect_t* viewport);
	void gsk_renderer_unrealize(GskRenderer* renderer);

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

	// gsk.Shadow

	GskRenderNode* gsk_shadow_node_get_child(GskRenderNode* node);
	size_t gsk_shadow_node_get_n_shadows(GskRenderNode* node);
	GskRenderNode* gsk_shadow_node_new(GskRenderNode* child, GskShadow* shadows, size_t nShadows);
	GskShadow* gsk_shadow_node_peek_shadow(GskRenderNode* node, size_t i);

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
	GskTransform* gsk_transform_translate(GskTransform* next, graphene_point_t* point);
	GskTransform* gsk_transform_translate_3d(GskTransform* next, graphene_point3d_t* point);
	void gsk_transform_unref(GskTransform* self);
	GskRenderNode* gsk_transform_node_get_child(GskRenderNode* node);
	GskTransform* gsk_transform_node_get_transform(GskRenderNode* node);
	GskRenderNode* gsk_transform_node_new(GskRenderNode* child, GskTransform* transform);
	int gsk_transform_parse(const(char)* string_, GskTransform** outTransform);
}