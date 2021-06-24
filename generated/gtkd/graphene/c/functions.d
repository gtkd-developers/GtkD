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


module graphene.c.functions;

import std.stdio;
import graphene.c.types;
version (Windows)
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0-0.dll;graphene-1.0-0.dll;graphene-1.dll"];
else version (OSX)
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0.0.dylib"];
else
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0.so.0"];

__gshared extern(C)
{

	// graphene.Box

	GType graphene_box_get_type();
	graphene_box_t* graphene_box_alloc();
	int graphene_box_contains_box(graphene_box_t* a, graphene_box_t* b);
	int graphene_box_contains_point(graphene_box_t* box, graphene_point3d_t* point);
	int graphene_box_equal(graphene_box_t* a, graphene_box_t* b);
	void graphene_box_expand(graphene_box_t* box, graphene_point3d_t* point, graphene_box_t* res);
	void graphene_box_expand_scalar(graphene_box_t* box, float scalar, graphene_box_t* res);
	void graphene_box_expand_vec3(graphene_box_t* box, graphene_vec3_t* vec, graphene_box_t* res);
	void graphene_box_free(graphene_box_t* box);
	void graphene_box_get_bounding_sphere(graphene_box_t* box, graphene_sphere_t* sphere);
	void graphene_box_get_center(graphene_box_t* box, graphene_point3d_t* center);
	float graphene_box_get_depth(graphene_box_t* box);
	float graphene_box_get_height(graphene_box_t* box);
	void graphene_box_get_max(graphene_box_t* box, graphene_point3d_t* max);
	void graphene_box_get_min(graphene_box_t* box, graphene_point3d_t* min);
	void graphene_box_get_size(graphene_box_t* box, graphene_vec3_t* size);
	void graphene_box_get_vertices(graphene_box_t* box, graphene_vec3_t* vertices);
	float graphene_box_get_width(graphene_box_t* box);
	graphene_box_t* graphene_box_init(graphene_box_t* box, graphene_point3d_t* min, graphene_point3d_t* max);
	graphene_box_t* graphene_box_init_from_box(graphene_box_t* box, graphene_box_t* src);
	graphene_box_t* graphene_box_init_from_points(graphene_box_t* box, uint nPoints, graphene_point3d_t* points);
	graphene_box_t* graphene_box_init_from_vec3(graphene_box_t* box, graphene_vec3_t* min, graphene_vec3_t* max);
	graphene_box_t* graphene_box_init_from_vectors(graphene_box_t* box, uint nVectors, graphene_vec3_t* vectors);
	int graphene_box_intersection(graphene_box_t* a, graphene_box_t* b, graphene_box_t* res);
	void graphene_box_union(graphene_box_t* a, graphene_box_t* b, graphene_box_t* res);
	graphene_box_t* graphene_box_empty();
	graphene_box_t* graphene_box_infinite();
	graphene_box_t* graphene_box_minus_one();
	graphene_box_t* graphene_box_one();
	graphene_box_t* graphene_box_one_minus_one();
	graphene_box_t* graphene_box_zero();

	// graphene.Euler

	GType graphene_euler_get_type();
	graphene_euler_t* graphene_euler_alloc();
	int graphene_euler_equal(graphene_euler_t* a, graphene_euler_t* b);
	void graphene_euler_free(graphene_euler_t* e);
	float graphene_euler_get_alpha(graphene_euler_t* e);
	float graphene_euler_get_beta(graphene_euler_t* e);
	float graphene_euler_get_gamma(graphene_euler_t* e);
	graphene_euler_order_t graphene_euler_get_order(graphene_euler_t* e);
	float graphene_euler_get_x(graphene_euler_t* e);
	float graphene_euler_get_y(graphene_euler_t* e);
	float graphene_euler_get_z(graphene_euler_t* e);
	graphene_euler_t* graphene_euler_init(graphene_euler_t* e, float x, float y, float z);
	graphene_euler_t* graphene_euler_init_from_euler(graphene_euler_t* e, graphene_euler_t* src);
	graphene_euler_t* graphene_euler_init_from_matrix(graphene_euler_t* e, graphene_matrix_t* m, graphene_euler_order_t order);
	graphene_euler_t* graphene_euler_init_from_quaternion(graphene_euler_t* e, graphene_quaternion_t* q, graphene_euler_order_t order);
	graphene_euler_t* graphene_euler_init_from_radians(graphene_euler_t* e, float x, float y, float z, graphene_euler_order_t order);
	graphene_euler_t* graphene_euler_init_from_vec3(graphene_euler_t* e, graphene_vec3_t* v, graphene_euler_order_t order);
	graphene_euler_t* graphene_euler_init_with_order(graphene_euler_t* e, float x, float y, float z, graphene_euler_order_t order);
	void graphene_euler_reorder(graphene_euler_t* e, graphene_euler_order_t order, graphene_euler_t* res);
	void graphene_euler_to_matrix(graphene_euler_t* e, graphene_matrix_t* res);
	void graphene_euler_to_quaternion(graphene_euler_t* e, graphene_quaternion_t* res);
	void graphene_euler_to_vec3(graphene_euler_t* e, graphene_vec3_t* res);

	// graphene.Frustum

	GType graphene_frustum_get_type();
	graphene_frustum_t* graphene_frustum_alloc();
	int graphene_frustum_contains_point(graphene_frustum_t* f, graphene_point3d_t* point);
	int graphene_frustum_equal(graphene_frustum_t* a, graphene_frustum_t* b);
	void graphene_frustum_free(graphene_frustum_t* f);
	void graphene_frustum_get_planes(graphene_frustum_t* f, graphene_plane_t* planes);
	graphene_frustum_t* graphene_frustum_init(graphene_frustum_t* f, graphene_plane_t* p0, graphene_plane_t* p1, graphene_plane_t* p2, graphene_plane_t* p3, graphene_plane_t* p4, graphene_plane_t* p5);
	graphene_frustum_t* graphene_frustum_init_from_frustum(graphene_frustum_t* f, graphene_frustum_t* src);
	graphene_frustum_t* graphene_frustum_init_from_matrix(graphene_frustum_t* f, graphene_matrix_t* matrix);
	int graphene_frustum_intersects_box(graphene_frustum_t* f, graphene_box_t* box);
	int graphene_frustum_intersects_sphere(graphene_frustum_t* f, graphene_sphere_t* sphere);

	// graphene.Matrix

	GType graphene_matrix_get_type();
	graphene_matrix_t* graphene_matrix_alloc();
	int graphene_matrix_decompose(graphene_matrix_t* m, graphene_vec3_t* translate, graphene_vec3_t* scale, graphene_quaternion_t* rotate, graphene_vec3_t* shear, graphene_vec4_t* perspective);
	float graphene_matrix_determinant(graphene_matrix_t* m);
	int graphene_matrix_equal(graphene_matrix_t* a, graphene_matrix_t* b);
	int graphene_matrix_equal_fast(graphene_matrix_t* a, graphene_matrix_t* b);
	void graphene_matrix_free(graphene_matrix_t* m);
	void graphene_matrix_get_row(graphene_matrix_t* m, uint index, graphene_vec4_t* res);
	float graphene_matrix_get_value(graphene_matrix_t* m, uint row, uint col);
	float graphene_matrix_get_x_scale(graphene_matrix_t* m);
	float graphene_matrix_get_x_translation(graphene_matrix_t* m);
	float graphene_matrix_get_y_scale(graphene_matrix_t* m);
	float graphene_matrix_get_y_translation(graphene_matrix_t* m);
	float graphene_matrix_get_z_scale(graphene_matrix_t* m);
	float graphene_matrix_get_z_translation(graphene_matrix_t* m);
	graphene_matrix_t* graphene_matrix_init_from_2d(graphene_matrix_t* m, double xx, double yx, double xy, double yy, double x0, double y0);
	graphene_matrix_t* graphene_matrix_init_from_float(graphene_matrix_t* m, float* v);
	graphene_matrix_t* graphene_matrix_init_from_matrix(graphene_matrix_t* m, graphene_matrix_t* src);
	graphene_matrix_t* graphene_matrix_init_from_vec4(graphene_matrix_t* m, graphene_vec4_t* v0, graphene_vec4_t* v1, graphene_vec4_t* v2, graphene_vec4_t* v3);
	graphene_matrix_t* graphene_matrix_init_frustum(graphene_matrix_t* m, float left, float right, float bottom, float top, float zNear, float zFar);
	graphene_matrix_t* graphene_matrix_init_identity(graphene_matrix_t* m);
	graphene_matrix_t* graphene_matrix_init_look_at(graphene_matrix_t* m, graphene_vec3_t* eye, graphene_vec3_t* center, graphene_vec3_t* up);
	graphene_matrix_t* graphene_matrix_init_ortho(graphene_matrix_t* m, float left, float right, float top, float bottom, float zNear, float zFar);
	graphene_matrix_t* graphene_matrix_init_perspective(graphene_matrix_t* m, float fovy, float aspect, float zNear, float zFar);
	graphene_matrix_t* graphene_matrix_init_rotate(graphene_matrix_t* m, float angle, graphene_vec3_t* axis);
	graphene_matrix_t* graphene_matrix_init_scale(graphene_matrix_t* m, float x, float y, float z);
	graphene_matrix_t* graphene_matrix_init_skew(graphene_matrix_t* m, float xSkew, float ySkew);
	graphene_matrix_t* graphene_matrix_init_translate(graphene_matrix_t* m, graphene_point3d_t* p);
	void graphene_matrix_interpolate(graphene_matrix_t* a, graphene_matrix_t* b, double factor, graphene_matrix_t* res);
	int graphene_matrix_inverse(graphene_matrix_t* m, graphene_matrix_t* res);
	int graphene_matrix_is_2d(graphene_matrix_t* m);
	int graphene_matrix_is_backface_visible(graphene_matrix_t* m);
	int graphene_matrix_is_identity(graphene_matrix_t* m);
	int graphene_matrix_is_singular(graphene_matrix_t* m);
	void graphene_matrix_multiply(graphene_matrix_t* a, graphene_matrix_t* b, graphene_matrix_t* res);
	int graphene_matrix_near(graphene_matrix_t* a, graphene_matrix_t* b, float epsilon);
	void graphene_matrix_normalize(graphene_matrix_t* m, graphene_matrix_t* res);
	void graphene_matrix_perspective(graphene_matrix_t* m, float depth, graphene_matrix_t* res);
	void graphene_matrix_print(graphene_matrix_t* m);
	void graphene_matrix_project_point(graphene_matrix_t* m, graphene_point_t* p, graphene_point_t* res);
	void graphene_matrix_project_rect(graphene_matrix_t* m, graphene_rect_t* r, graphene_quad_t* res);
	void graphene_matrix_project_rect_bounds(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* res);
	void graphene_matrix_rotate(graphene_matrix_t* m, float angle, graphene_vec3_t* axis);
	void graphene_matrix_rotate_euler(graphene_matrix_t* m, graphene_euler_t* e);
	void graphene_matrix_rotate_quaternion(graphene_matrix_t* m, graphene_quaternion_t* q);
	void graphene_matrix_rotate_x(graphene_matrix_t* m, float angle);
	void graphene_matrix_rotate_y(graphene_matrix_t* m, float angle);
	void graphene_matrix_rotate_z(graphene_matrix_t* m, float angle);
	void graphene_matrix_scale(graphene_matrix_t* m, float factorX, float factorY, float factorZ);
	void graphene_matrix_skew_xy(graphene_matrix_t* m, float factor);
	void graphene_matrix_skew_xz(graphene_matrix_t* m, float factor);
	void graphene_matrix_skew_yz(graphene_matrix_t* m, float factor);
	int graphene_matrix_to_2d(graphene_matrix_t* m, double* xx, double* yx, double* xy, double* yy, double* x0, double* y0);
	void graphene_matrix_to_float(graphene_matrix_t* m, float* v);
	void graphene_matrix_transform_bounds(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* res);
	void graphene_matrix_transform_box(graphene_matrix_t* m, graphene_box_t* b, graphene_box_t* res);
	void graphene_matrix_transform_point(graphene_matrix_t* m, graphene_point_t* p, graphene_point_t* res);
	void graphene_matrix_transform_point3d(graphene_matrix_t* m, graphene_point3d_t* p, graphene_point3d_t* res);
	void graphene_matrix_transform_ray(graphene_matrix_t* m, graphene_ray_t* r, graphene_ray_t* res);
	void graphene_matrix_transform_rect(graphene_matrix_t* m, graphene_rect_t* r, graphene_quad_t* res);
	void graphene_matrix_transform_sphere(graphene_matrix_t* m, graphene_sphere_t* s, graphene_sphere_t* res);
	void graphene_matrix_transform_vec3(graphene_matrix_t* m, graphene_vec3_t* v, graphene_vec3_t* res);
	void graphene_matrix_transform_vec4(graphene_matrix_t* m, graphene_vec4_t* v, graphene_vec4_t* res);
	void graphene_matrix_translate(graphene_matrix_t* m, graphene_point3d_t* pos);
	void graphene_matrix_transpose(graphene_matrix_t* m, graphene_matrix_t* res);
	void graphene_matrix_unproject_point3d(graphene_matrix_t* projection, graphene_matrix_t* modelview, graphene_point3d_t* point, graphene_point3d_t* res);
	void graphene_matrix_untransform_bounds(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* bounds, graphene_rect_t* res);
	int graphene_matrix_untransform_point(graphene_matrix_t* m, graphene_point_t* p, graphene_rect_t* bounds, graphene_point_t* res);

	// graphene.Plane

	GType graphene_plane_get_type();
	graphene_plane_t* graphene_plane_alloc();
	float graphene_plane_distance(graphene_plane_t* p, graphene_point3d_t* point);
	int graphene_plane_equal(graphene_plane_t* a, graphene_plane_t* b);
	void graphene_plane_free(graphene_plane_t* p);
	float graphene_plane_get_constant(graphene_plane_t* p);
	void graphene_plane_get_normal(graphene_plane_t* p, graphene_vec3_t* normal);
	graphene_plane_t* graphene_plane_init(graphene_plane_t* p, graphene_vec3_t* normal, float constant);
	graphene_plane_t* graphene_plane_init_from_plane(graphene_plane_t* p, graphene_plane_t* src);
	graphene_plane_t* graphene_plane_init_from_point(graphene_plane_t* p, graphene_vec3_t* normal, graphene_point3d_t* point);
	graphene_plane_t* graphene_plane_init_from_points(graphene_plane_t* p, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c);
	graphene_plane_t* graphene_plane_init_from_vec4(graphene_plane_t* p, graphene_vec4_t* src);
	void graphene_plane_negate(graphene_plane_t* p, graphene_plane_t* res);
	void graphene_plane_normalize(graphene_plane_t* p, graphene_plane_t* res);
	void graphene_plane_transform(graphene_plane_t* p, graphene_matrix_t* matrix, graphene_matrix_t* normalMatrix, graphene_plane_t* res);

	// graphene.Point

	GType graphene_point_get_type();
	graphene_point_t* graphene_point_alloc();
	float graphene_point_distance(graphene_point_t* a, graphene_point_t* b, float* dX, float* dY);
	int graphene_point_equal(graphene_point_t* a, graphene_point_t* b);
	void graphene_point_free(graphene_point_t* p);
	graphene_point_t* graphene_point_init(graphene_point_t* p, float x, float y);
	graphene_point_t* graphene_point_init_from_point(graphene_point_t* p, graphene_point_t* src);
	graphene_point_t* graphene_point_init_from_vec2(graphene_point_t* p, graphene_vec2_t* src);
	void graphene_point_interpolate(graphene_point_t* a, graphene_point_t* b, double factor, graphene_point_t* res);
	int graphene_point_near(graphene_point_t* a, graphene_point_t* b, float epsilon);
	void graphene_point_to_vec2(graphene_point_t* p, graphene_vec2_t* v);
	graphene_point_t* graphene_point_zero();

	// graphene.Point3D

	GType graphene_point3d_get_type();
	graphene_point3d_t* graphene_point3d_alloc();
	void graphene_point3d_cross(graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* res);
	float graphene_point3d_distance(graphene_point3d_t* a, graphene_point3d_t* b, graphene_vec3_t* delta);
	float graphene_point3d_dot(graphene_point3d_t* a, graphene_point3d_t* b);
	int graphene_point3d_equal(graphene_point3d_t* a, graphene_point3d_t* b);
	void graphene_point3d_free(graphene_point3d_t* p);
	graphene_point3d_t* graphene_point3d_init(graphene_point3d_t* p, float x, float y, float z);
	graphene_point3d_t* graphene_point3d_init_from_point(graphene_point3d_t* p, graphene_point3d_t* src);
	graphene_point3d_t* graphene_point3d_init_from_vec3(graphene_point3d_t* p, graphene_vec3_t* v);
	void graphene_point3d_interpolate(graphene_point3d_t* a, graphene_point3d_t* b, double factor, graphene_point3d_t* res);
	float graphene_point3d_length(graphene_point3d_t* p);
	int graphene_point3d_near(graphene_point3d_t* a, graphene_point3d_t* b, float epsilon);
	void graphene_point3d_normalize(graphene_point3d_t* p, graphene_point3d_t* res);
	void graphene_point3d_normalize_viewport(graphene_point3d_t* p, graphene_rect_t* viewport, float zNear, float zFar, graphene_point3d_t* res);
	void graphene_point3d_scale(graphene_point3d_t* p, float factor, graphene_point3d_t* res);
	void graphene_point3d_to_vec3(graphene_point3d_t* p, graphene_vec3_t* v);
	graphene_point3d_t* graphene_point3d_zero();

	// graphene.Quad

	GType graphene_quad_get_type();
	graphene_quad_t* graphene_quad_alloc();
	void graphene_quad_bounds(graphene_quad_t* q, graphene_rect_t* r);
	int graphene_quad_contains(graphene_quad_t* q, graphene_point_t* p);
	void graphene_quad_free(graphene_quad_t* q);
	graphene_point_t* graphene_quad_get_point(graphene_quad_t* q, uint index);
	graphene_quad_t* graphene_quad_init(graphene_quad_t* q, graphene_point_t* p1, graphene_point_t* p2, graphene_point_t* p3, graphene_point_t* p4);
	graphene_quad_t* graphene_quad_init_from_points(graphene_quad_t* q, graphene_point_t* points);
	graphene_quad_t* graphene_quad_init_from_rect(graphene_quad_t* q, graphene_rect_t* r);

	// graphene.Quaternion

	GType graphene_quaternion_get_type();
	graphene_quaternion_t* graphene_quaternion_alloc();
	void graphene_quaternion_add(graphene_quaternion_t* a, graphene_quaternion_t* b, graphene_quaternion_t* res);
	float graphene_quaternion_dot(graphene_quaternion_t* a, graphene_quaternion_t* b);
	int graphene_quaternion_equal(graphene_quaternion_t* a, graphene_quaternion_t* b);
	void graphene_quaternion_free(graphene_quaternion_t* q);
	graphene_quaternion_t* graphene_quaternion_init(graphene_quaternion_t* q, float x, float y, float z, float w);
	graphene_quaternion_t* graphene_quaternion_init_from_angle_vec3(graphene_quaternion_t* q, float angle, graphene_vec3_t* axis);
	graphene_quaternion_t* graphene_quaternion_init_from_angles(graphene_quaternion_t* q, float degX, float degY, float degZ);
	graphene_quaternion_t* graphene_quaternion_init_from_euler(graphene_quaternion_t* q, graphene_euler_t* e);
	graphene_quaternion_t* graphene_quaternion_init_from_matrix(graphene_quaternion_t* q, graphene_matrix_t* m);
	graphene_quaternion_t* graphene_quaternion_init_from_quaternion(graphene_quaternion_t* q, graphene_quaternion_t* src);
	graphene_quaternion_t* graphene_quaternion_init_from_radians(graphene_quaternion_t* q, float radX, float radY, float radZ);
	graphene_quaternion_t* graphene_quaternion_init_from_vec4(graphene_quaternion_t* q, graphene_vec4_t* src);
	graphene_quaternion_t* graphene_quaternion_init_identity(graphene_quaternion_t* q);
	void graphene_quaternion_invert(graphene_quaternion_t* q, graphene_quaternion_t* res);
	void graphene_quaternion_multiply(graphene_quaternion_t* a, graphene_quaternion_t* b, graphene_quaternion_t* res);
	void graphene_quaternion_normalize(graphene_quaternion_t* q, graphene_quaternion_t* res);
	void graphene_quaternion_scale(graphene_quaternion_t* q, float factor, graphene_quaternion_t* res);
	void graphene_quaternion_slerp(graphene_quaternion_t* a, graphene_quaternion_t* b, float factor, graphene_quaternion_t* res);
	void graphene_quaternion_to_angle_vec3(graphene_quaternion_t* q, float* angle, graphene_vec3_t* axis);
	void graphene_quaternion_to_angles(graphene_quaternion_t* q, float* degX, float* degY, float* degZ);
	void graphene_quaternion_to_matrix(graphene_quaternion_t* q, graphene_matrix_t* m);
	void graphene_quaternion_to_radians(graphene_quaternion_t* q, float* radX, float* radY, float* radZ);
	void graphene_quaternion_to_vec4(graphene_quaternion_t* q, graphene_vec4_t* res);

	// graphene.Ray

	GType graphene_ray_get_type();
	graphene_ray_t* graphene_ray_alloc();
	int graphene_ray_equal(graphene_ray_t* a, graphene_ray_t* b);
	void graphene_ray_free(graphene_ray_t* r);
	void graphene_ray_get_closest_point_to_point(graphene_ray_t* r, graphene_point3d_t* p, graphene_point3d_t* res);
	void graphene_ray_get_direction(graphene_ray_t* r, graphene_vec3_t* direction);
	float graphene_ray_get_distance_to_plane(graphene_ray_t* r, graphene_plane_t* p);
	float graphene_ray_get_distance_to_point(graphene_ray_t* r, graphene_point3d_t* p);
	void graphene_ray_get_origin(graphene_ray_t* r, graphene_point3d_t* origin);
	void graphene_ray_get_position_at(graphene_ray_t* r, float t, graphene_point3d_t* position);
	graphene_ray_t* graphene_ray_init(graphene_ray_t* r, graphene_point3d_t* origin, graphene_vec3_t* direction);
	graphene_ray_t* graphene_ray_init_from_ray(graphene_ray_t* r, graphene_ray_t* src);
	graphene_ray_t* graphene_ray_init_from_vec3(graphene_ray_t* r, graphene_vec3_t* origin, graphene_vec3_t* direction);
	graphene_ray_intersection_kind_t graphene_ray_intersect_box(graphene_ray_t* r, graphene_box_t* b, float* tOut);
	graphene_ray_intersection_kind_t graphene_ray_intersect_sphere(graphene_ray_t* r, graphene_sphere_t* s, float* tOut);
	graphene_ray_intersection_kind_t graphene_ray_intersect_triangle(graphene_ray_t* r, graphene_triangle_t* t, float* tOut);
	int graphene_ray_intersects_box(graphene_ray_t* r, graphene_box_t* b);
	int graphene_ray_intersects_sphere(graphene_ray_t* r, graphene_sphere_t* s);
	int graphene_ray_intersects_triangle(graphene_ray_t* r, graphene_triangle_t* t);

	// graphene.Rect

	GType graphene_rect_get_type();
	int graphene_rect_contains_point(graphene_rect_t* r, graphene_point_t* p);
	int graphene_rect_contains_rect(graphene_rect_t* a, graphene_rect_t* b);
	int graphene_rect_equal(graphene_rect_t* a, graphene_rect_t* b);
	void graphene_rect_expand(graphene_rect_t* r, graphene_point_t* p, graphene_rect_t* res);
	void graphene_rect_free(graphene_rect_t* r);
	float graphene_rect_get_area(graphene_rect_t* r);
	void graphene_rect_get_bottom_left(graphene_rect_t* r, graphene_point_t* p);
	void graphene_rect_get_bottom_right(graphene_rect_t* r, graphene_point_t* p);
	void graphene_rect_get_center(graphene_rect_t* r, graphene_point_t* p);
	float graphene_rect_get_height(graphene_rect_t* r);
	void graphene_rect_get_top_left(graphene_rect_t* r, graphene_point_t* p);
	void graphene_rect_get_top_right(graphene_rect_t* r, graphene_point_t* p);
	void graphene_rect_get_vertices(graphene_rect_t* r, graphene_vec2_t* vertices);
	float graphene_rect_get_width(graphene_rect_t* r);
	float graphene_rect_get_x(graphene_rect_t* r);
	float graphene_rect_get_y(graphene_rect_t* r);
	graphene_rect_t* graphene_rect_init(graphene_rect_t* r, float x, float y, float width, float height);
	graphene_rect_t* graphene_rect_init_from_rect(graphene_rect_t* r, graphene_rect_t* src);
	graphene_rect_t* graphene_rect_inset(graphene_rect_t* r, float dX, float dY);
	void graphene_rect_inset_r(graphene_rect_t* r, float dX, float dY, graphene_rect_t* res);
	void graphene_rect_interpolate(graphene_rect_t* a, graphene_rect_t* b, double factor, graphene_rect_t* res);
	int graphene_rect_intersection(graphene_rect_t* a, graphene_rect_t* b, graphene_rect_t* res);
	graphene_rect_t* graphene_rect_normalize(graphene_rect_t* r);
	void graphene_rect_normalize_r(graphene_rect_t* r, graphene_rect_t* res);
	graphene_rect_t* graphene_rect_offset(graphene_rect_t* r, float dX, float dY);
	void graphene_rect_offset_r(graphene_rect_t* r, float dX, float dY, graphene_rect_t* res);
	void graphene_rect_round(graphene_rect_t* r, graphene_rect_t* res);
	void graphene_rect_round_extents(graphene_rect_t* r, graphene_rect_t* res);
	graphene_rect_t* graphene_rect_round_to_pixel(graphene_rect_t* r);
	void graphene_rect_scale(graphene_rect_t* r, float sH, float sV, graphene_rect_t* res);
	void graphene_rect_union(graphene_rect_t* a, graphene_rect_t* b, graphene_rect_t* res);
	graphene_rect_t* graphene_rect_alloc();
	graphene_rect_t* graphene_rect_zero();

	// graphene.Size

	GType graphene_size_get_type();
	graphene_size_t* graphene_size_alloc();
	int graphene_size_equal(graphene_size_t* a, graphene_size_t* b);
	void graphene_size_free(graphene_size_t* s);
	graphene_size_t* graphene_size_init(graphene_size_t* s, float width, float height);
	graphene_size_t* graphene_size_init_from_size(graphene_size_t* s, graphene_size_t* src);
	void graphene_size_interpolate(graphene_size_t* a, graphene_size_t* b, double factor, graphene_size_t* res);
	void graphene_size_scale(graphene_size_t* s, float factor, graphene_size_t* res);
	graphene_size_t* graphene_size_zero();

	// graphene.Sphere

	GType graphene_sphere_get_type();
	graphene_sphere_t* graphene_sphere_alloc();
	int graphene_sphere_contains_point(graphene_sphere_t* s, graphene_point3d_t* point);
	float graphene_sphere_distance(graphene_sphere_t* s, graphene_point3d_t* point);
	int graphene_sphere_equal(graphene_sphere_t* a, graphene_sphere_t* b);
	void graphene_sphere_free(graphene_sphere_t* s);
	void graphene_sphere_get_bounding_box(graphene_sphere_t* s, graphene_box_t* box);
	void graphene_sphere_get_center(graphene_sphere_t* s, graphene_point3d_t* center);
	float graphene_sphere_get_radius(graphene_sphere_t* s);
	graphene_sphere_t* graphene_sphere_init(graphene_sphere_t* s, graphene_point3d_t* center, float radius);
	graphene_sphere_t* graphene_sphere_init_from_points(graphene_sphere_t* s, uint nPoints, graphene_point3d_t* points, graphene_point3d_t* center);
	graphene_sphere_t* graphene_sphere_init_from_vectors(graphene_sphere_t* s, uint nVectors, graphene_vec3_t* vectors, graphene_point3d_t* center);
	int graphene_sphere_is_empty(graphene_sphere_t* s);
	void graphene_sphere_translate(graphene_sphere_t* s, graphene_point3d_t* point, graphene_sphere_t* res);

	// graphene.Triangle

	GType graphene_triangle_get_type();
	graphene_triangle_t* graphene_triangle_alloc();
	int graphene_triangle_contains_point(graphene_triangle_t* t, graphene_point3d_t* p);
	int graphene_triangle_equal(graphene_triangle_t* a, graphene_triangle_t* b);
	void graphene_triangle_free(graphene_triangle_t* t);
	float graphene_triangle_get_area(graphene_triangle_t* t);
	int graphene_triangle_get_barycoords(graphene_triangle_t* t, graphene_point3d_t* p, graphene_vec2_t* res);
	void graphene_triangle_get_bounding_box(graphene_triangle_t* t, graphene_box_t* res);
	void graphene_triangle_get_midpoint(graphene_triangle_t* t, graphene_point3d_t* res);
	void graphene_triangle_get_normal(graphene_triangle_t* t, graphene_vec3_t* res);
	void graphene_triangle_get_plane(graphene_triangle_t* t, graphene_plane_t* res);
	void graphene_triangle_get_points(graphene_triangle_t* t, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c);
	int graphene_triangle_get_uv(graphene_triangle_t* t, graphene_point3d_t* p, graphene_vec2_t* uvA, graphene_vec2_t* uvB, graphene_vec2_t* uvC, graphene_vec2_t* res);
	void graphene_triangle_get_vertices(graphene_triangle_t* t, graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* c);
	graphene_triangle_t* graphene_triangle_init_from_float(graphene_triangle_t* t, float* a, float* b, float* c);
	graphene_triangle_t* graphene_triangle_init_from_point3d(graphene_triangle_t* t, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c);
	graphene_triangle_t* graphene_triangle_init_from_vec3(graphene_triangle_t* t, graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* c);

	// graphene.Vec2

	GType graphene_vec2_get_type();
	graphene_vec2_t* graphene_vec2_alloc();
	void graphene_vec2_add(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	void graphene_vec2_divide(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	float graphene_vec2_dot(graphene_vec2_t* a, graphene_vec2_t* b);
	int graphene_vec2_equal(graphene_vec2_t* v1, graphene_vec2_t* v2);
	void graphene_vec2_free(graphene_vec2_t* v);
	float graphene_vec2_get_x(graphene_vec2_t* v);
	float graphene_vec2_get_y(graphene_vec2_t* v);
	graphene_vec2_t* graphene_vec2_init(graphene_vec2_t* v, float x, float y);
	graphene_vec2_t* graphene_vec2_init_from_float(graphene_vec2_t* v, float* src);
	graphene_vec2_t* graphene_vec2_init_from_vec2(graphene_vec2_t* v, graphene_vec2_t* src);
	void graphene_vec2_interpolate(graphene_vec2_t* v1, graphene_vec2_t* v2, double factor, graphene_vec2_t* res);
	float graphene_vec2_length(graphene_vec2_t* v);
	void graphene_vec2_max(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	void graphene_vec2_min(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	void graphene_vec2_multiply(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	int graphene_vec2_near(graphene_vec2_t* v1, graphene_vec2_t* v2, float epsilon);
	void graphene_vec2_negate(graphene_vec2_t* v, graphene_vec2_t* res);
	void graphene_vec2_normalize(graphene_vec2_t* v, graphene_vec2_t* res);
	void graphene_vec2_scale(graphene_vec2_t* v, float factor, graphene_vec2_t* res);
	void graphene_vec2_subtract(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res);
	void graphene_vec2_to_float(graphene_vec2_t* v, float* dest);
	graphene_vec2_t* graphene_vec2_one();
	graphene_vec2_t* graphene_vec2_x_axis();
	graphene_vec2_t* graphene_vec2_y_axis();
	graphene_vec2_t* graphene_vec2_zero();

	// graphene.Vec3

	GType graphene_vec3_get_type();
	graphene_vec3_t* graphene_vec3_alloc();
	void graphene_vec3_add(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	void graphene_vec3_cross(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	void graphene_vec3_divide(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	float graphene_vec3_dot(graphene_vec3_t* a, graphene_vec3_t* b);
	int graphene_vec3_equal(graphene_vec3_t* v1, graphene_vec3_t* v2);
	void graphene_vec3_free(graphene_vec3_t* v);
	float graphene_vec3_get_x(graphene_vec3_t* v);
	void graphene_vec3_get_xy(graphene_vec3_t* v, graphene_vec2_t* res);
	void graphene_vec3_get_xy0(graphene_vec3_t* v, graphene_vec3_t* res);
	void graphene_vec3_get_xyz0(graphene_vec3_t* v, graphene_vec4_t* res);
	void graphene_vec3_get_xyz1(graphene_vec3_t* v, graphene_vec4_t* res);
	void graphene_vec3_get_xyzw(graphene_vec3_t* v, float w, graphene_vec4_t* res);
	float graphene_vec3_get_y(graphene_vec3_t* v);
	float graphene_vec3_get_z(graphene_vec3_t* v);
	graphene_vec3_t* graphene_vec3_init(graphene_vec3_t* v, float x, float y, float z);
	graphene_vec3_t* graphene_vec3_init_from_float(graphene_vec3_t* v, float* src);
	graphene_vec3_t* graphene_vec3_init_from_vec3(graphene_vec3_t* v, graphene_vec3_t* src);
	void graphene_vec3_interpolate(graphene_vec3_t* v1, graphene_vec3_t* v2, double factor, graphene_vec3_t* res);
	float graphene_vec3_length(graphene_vec3_t* v);
	void graphene_vec3_max(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	void graphene_vec3_min(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	void graphene_vec3_multiply(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	int graphene_vec3_near(graphene_vec3_t* v1, graphene_vec3_t* v2, float epsilon);
	void graphene_vec3_negate(graphene_vec3_t* v, graphene_vec3_t* res);
	void graphene_vec3_normalize(graphene_vec3_t* v, graphene_vec3_t* res);
	void graphene_vec3_scale(graphene_vec3_t* v, float factor, graphene_vec3_t* res);
	void graphene_vec3_subtract(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res);
	void graphene_vec3_to_float(graphene_vec3_t* v, float* dest);
	graphene_vec3_t* graphene_vec3_one();
	graphene_vec3_t* graphene_vec3_x_axis();
	graphene_vec3_t* graphene_vec3_y_axis();
	graphene_vec3_t* graphene_vec3_z_axis();
	graphene_vec3_t* graphene_vec3_zero();

	// graphene.Vec4

	GType graphene_vec4_get_type();
	graphene_vec4_t* graphene_vec4_alloc();
	void graphene_vec4_add(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	void graphene_vec4_divide(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	float graphene_vec4_dot(graphene_vec4_t* a, graphene_vec4_t* b);
	int graphene_vec4_equal(graphene_vec4_t* v1, graphene_vec4_t* v2);
	void graphene_vec4_free(graphene_vec4_t* v);
	float graphene_vec4_get_w(graphene_vec4_t* v);
	float graphene_vec4_get_x(graphene_vec4_t* v);
	void graphene_vec4_get_xy(graphene_vec4_t* v, graphene_vec2_t* res);
	void graphene_vec4_get_xyz(graphene_vec4_t* v, graphene_vec3_t* res);
	float graphene_vec4_get_y(graphene_vec4_t* v);
	float graphene_vec4_get_z(graphene_vec4_t* v);
	graphene_vec4_t* graphene_vec4_init(graphene_vec4_t* v, float x, float y, float z, float w);
	graphene_vec4_t* graphene_vec4_init_from_float(graphene_vec4_t* v, float* src);
	graphene_vec4_t* graphene_vec4_init_from_vec2(graphene_vec4_t* v, graphene_vec2_t* src, float z, float w);
	graphene_vec4_t* graphene_vec4_init_from_vec3(graphene_vec4_t* v, graphene_vec3_t* src, float w);
	graphene_vec4_t* graphene_vec4_init_from_vec4(graphene_vec4_t* v, graphene_vec4_t* src);
	void graphene_vec4_interpolate(graphene_vec4_t* v1, graphene_vec4_t* v2, double factor, graphene_vec4_t* res);
	float graphene_vec4_length(graphene_vec4_t* v);
	void graphene_vec4_max(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	void graphene_vec4_min(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	void graphene_vec4_multiply(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	int graphene_vec4_near(graphene_vec4_t* v1, graphene_vec4_t* v2, float epsilon);
	void graphene_vec4_negate(graphene_vec4_t* v, graphene_vec4_t* res);
	void graphene_vec4_normalize(graphene_vec4_t* v, graphene_vec4_t* res);
	void graphene_vec4_scale(graphene_vec4_t* v, float factor, graphene_vec4_t* res);
	void graphene_vec4_subtract(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res);
	void graphene_vec4_to_float(graphene_vec4_t* v, float* dest);
	graphene_vec4_t* graphene_vec4_one();
	graphene_vec4_t* graphene_vec4_w_axis();
	graphene_vec4_t* graphene_vec4_x_axis();
	graphene_vec4_t* graphene_vec4_y_axis();
	graphene_vec4_t* graphene_vec4_z_axis();
	graphene_vec4_t* graphene_vec4_zero();
}