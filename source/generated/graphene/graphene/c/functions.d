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
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0-0.dll;graphene-1.0-0.dll;graphene-1.dll"];
else version (OSX)
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0.0.dylib"];
else
	static immutable LIBRARY_GRAPHENE = ["libgraphene-1.0.so.0"];

shared static this()
{
	// graphene.Box

	Linker.link(graphene_box_get_type, "graphene_box_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_alloc, "graphene_box_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_contains_box, "graphene_box_contains_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_contains_point, "graphene_box_contains_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_equal, "graphene_box_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_expand, "graphene_box_expand", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_expand_scalar, "graphene_box_expand_scalar", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_expand_vec3, "graphene_box_expand_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_free, "graphene_box_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_bounding_sphere, "graphene_box_get_bounding_sphere", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_center, "graphene_box_get_center", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_depth, "graphene_box_get_depth", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_height, "graphene_box_get_height", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_max, "graphene_box_get_max", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_min, "graphene_box_get_min", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_size, "graphene_box_get_size", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_vertices, "graphene_box_get_vertices", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_get_width, "graphene_box_get_width", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_init, "graphene_box_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_init_from_box, "graphene_box_init_from_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_init_from_points, "graphene_box_init_from_points", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_init_from_vec3, "graphene_box_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_init_from_vectors, "graphene_box_init_from_vectors", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_intersection, "graphene_box_intersection", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_union, "graphene_box_union", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_empty, "graphene_box_empty", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_infinite, "graphene_box_infinite", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_minus_one, "graphene_box_minus_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_one, "graphene_box_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_one_minus_one, "graphene_box_one_minus_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_box_zero, "graphene_box_zero", LIBRARY_GRAPHENE);

	// graphene.Euler

	Linker.link(graphene_euler_get_type, "graphene_euler_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_alloc, "graphene_euler_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_equal, "graphene_euler_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_free, "graphene_euler_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_alpha, "graphene_euler_get_alpha", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_beta, "graphene_euler_get_beta", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_gamma, "graphene_euler_get_gamma", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_order, "graphene_euler_get_order", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_x, "graphene_euler_get_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_y, "graphene_euler_get_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_get_z, "graphene_euler_get_z", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init, "graphene_euler_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_from_euler, "graphene_euler_init_from_euler", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_from_matrix, "graphene_euler_init_from_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_from_quaternion, "graphene_euler_init_from_quaternion", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_from_radians, "graphene_euler_init_from_radians", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_from_vec3, "graphene_euler_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_init_with_order, "graphene_euler_init_with_order", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_reorder, "graphene_euler_reorder", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_to_matrix, "graphene_euler_to_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_to_quaternion, "graphene_euler_to_quaternion", LIBRARY_GRAPHENE);
	Linker.link(graphene_euler_to_vec3, "graphene_euler_to_vec3", LIBRARY_GRAPHENE);

	// graphene.Frustum

	Linker.link(graphene_frustum_get_type, "graphene_frustum_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_alloc, "graphene_frustum_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_contains_point, "graphene_frustum_contains_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_equal, "graphene_frustum_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_free, "graphene_frustum_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_get_planes, "graphene_frustum_get_planes", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_init, "graphene_frustum_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_init_from_frustum, "graphene_frustum_init_from_frustum", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_init_from_matrix, "graphene_frustum_init_from_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_intersects_box, "graphene_frustum_intersects_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_frustum_intersects_sphere, "graphene_frustum_intersects_sphere", LIBRARY_GRAPHENE);

	// graphene.Matrix

	Linker.link(graphene_matrix_get_type, "graphene_matrix_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_alloc, "graphene_matrix_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_decompose, "graphene_matrix_decompose", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_determinant, "graphene_matrix_determinant", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_equal, "graphene_matrix_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_equal_fast, "graphene_matrix_equal_fast", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_free, "graphene_matrix_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_row, "graphene_matrix_get_row", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_value, "graphene_matrix_get_value", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_x_scale, "graphene_matrix_get_x_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_x_translation, "graphene_matrix_get_x_translation", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_y_scale, "graphene_matrix_get_y_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_y_translation, "graphene_matrix_get_y_translation", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_z_scale, "graphene_matrix_get_z_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_get_z_translation, "graphene_matrix_get_z_translation", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_from_2d, "graphene_matrix_init_from_2d", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_from_float, "graphene_matrix_init_from_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_from_matrix, "graphene_matrix_init_from_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_from_vec4, "graphene_matrix_init_from_vec4", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_frustum, "graphene_matrix_init_frustum", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_identity, "graphene_matrix_init_identity", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_look_at, "graphene_matrix_init_look_at", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_ortho, "graphene_matrix_init_ortho", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_perspective, "graphene_matrix_init_perspective", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_rotate, "graphene_matrix_init_rotate", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_scale, "graphene_matrix_init_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_skew, "graphene_matrix_init_skew", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_init_translate, "graphene_matrix_init_translate", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_interpolate, "graphene_matrix_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_inverse, "graphene_matrix_inverse", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_is_2d, "graphene_matrix_is_2d", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_is_backface_visible, "graphene_matrix_is_backface_visible", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_is_identity, "graphene_matrix_is_identity", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_is_singular, "graphene_matrix_is_singular", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_multiply, "graphene_matrix_multiply", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_near, "graphene_matrix_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_normalize, "graphene_matrix_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_perspective, "graphene_matrix_perspective", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_print, "graphene_matrix_print", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_project_point, "graphene_matrix_project_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_project_rect, "graphene_matrix_project_rect", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_project_rect_bounds, "graphene_matrix_project_rect_bounds", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate, "graphene_matrix_rotate", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate_euler, "graphene_matrix_rotate_euler", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate_quaternion, "graphene_matrix_rotate_quaternion", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate_x, "graphene_matrix_rotate_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate_y, "graphene_matrix_rotate_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_rotate_z, "graphene_matrix_rotate_z", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_scale, "graphene_matrix_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_skew_xy, "graphene_matrix_skew_xy", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_skew_xz, "graphene_matrix_skew_xz", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_skew_yz, "graphene_matrix_skew_yz", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_to_2d, "graphene_matrix_to_2d", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_to_float, "graphene_matrix_to_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_bounds, "graphene_matrix_transform_bounds", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_box, "graphene_matrix_transform_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_point, "graphene_matrix_transform_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_point3d, "graphene_matrix_transform_point3d", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_ray, "graphene_matrix_transform_ray", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_rect, "graphene_matrix_transform_rect", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_sphere, "graphene_matrix_transform_sphere", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_vec3, "graphene_matrix_transform_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transform_vec4, "graphene_matrix_transform_vec4", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_translate, "graphene_matrix_translate", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_transpose, "graphene_matrix_transpose", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_unproject_point3d, "graphene_matrix_unproject_point3d", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_untransform_bounds, "graphene_matrix_untransform_bounds", LIBRARY_GRAPHENE);
	Linker.link(graphene_matrix_untransform_point, "graphene_matrix_untransform_point", LIBRARY_GRAPHENE);

	// graphene.Plane

	Linker.link(graphene_plane_get_type, "graphene_plane_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_alloc, "graphene_plane_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_distance, "graphene_plane_distance", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_equal, "graphene_plane_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_free, "graphene_plane_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_get_constant, "graphene_plane_get_constant", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_get_normal, "graphene_plane_get_normal", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_init, "graphene_plane_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_init_from_plane, "graphene_plane_init_from_plane", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_init_from_point, "graphene_plane_init_from_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_init_from_points, "graphene_plane_init_from_points", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_init_from_vec4, "graphene_plane_init_from_vec4", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_negate, "graphene_plane_negate", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_normalize, "graphene_plane_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_plane_transform, "graphene_plane_transform", LIBRARY_GRAPHENE);

	// graphene.Point

	Linker.link(graphene_point_get_type, "graphene_point_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_alloc, "graphene_point_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_distance, "graphene_point_distance", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_equal, "graphene_point_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_free, "graphene_point_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_init, "graphene_point_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_init_from_point, "graphene_point_init_from_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_init_from_vec2, "graphene_point_init_from_vec2", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_interpolate, "graphene_point_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_near, "graphene_point_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_to_vec2, "graphene_point_to_vec2", LIBRARY_GRAPHENE);
	Linker.link(graphene_point_zero, "graphene_point_zero", LIBRARY_GRAPHENE);

	// graphene.Point3D

	Linker.link(graphene_point3d_get_type, "graphene_point3d_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_alloc, "graphene_point3d_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_cross, "graphene_point3d_cross", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_distance, "graphene_point3d_distance", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_dot, "graphene_point3d_dot", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_equal, "graphene_point3d_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_free, "graphene_point3d_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_init, "graphene_point3d_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_init_from_point, "graphene_point3d_init_from_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_init_from_vec3, "graphene_point3d_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_interpolate, "graphene_point3d_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_length, "graphene_point3d_length", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_near, "graphene_point3d_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_normalize, "graphene_point3d_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_normalize_viewport, "graphene_point3d_normalize_viewport", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_scale, "graphene_point3d_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_to_vec3, "graphene_point3d_to_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_point3d_zero, "graphene_point3d_zero", LIBRARY_GRAPHENE);

	// graphene.Quad

	Linker.link(graphene_quad_get_type, "graphene_quad_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_alloc, "graphene_quad_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_bounds, "graphene_quad_bounds", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_contains, "graphene_quad_contains", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_free, "graphene_quad_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_get_point, "graphene_quad_get_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_init, "graphene_quad_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_init_from_points, "graphene_quad_init_from_points", LIBRARY_GRAPHENE);
	Linker.link(graphene_quad_init_from_rect, "graphene_quad_init_from_rect", LIBRARY_GRAPHENE);

	// graphene.Quaternion

	Linker.link(graphene_quaternion_get_type, "graphene_quaternion_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_alloc, "graphene_quaternion_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_add, "graphene_quaternion_add", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_dot, "graphene_quaternion_dot", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_equal, "graphene_quaternion_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_free, "graphene_quaternion_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init, "graphene_quaternion_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_angle_vec3, "graphene_quaternion_init_from_angle_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_angles, "graphene_quaternion_init_from_angles", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_euler, "graphene_quaternion_init_from_euler", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_matrix, "graphene_quaternion_init_from_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_quaternion, "graphene_quaternion_init_from_quaternion", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_radians, "graphene_quaternion_init_from_radians", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_from_vec4, "graphene_quaternion_init_from_vec4", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_init_identity, "graphene_quaternion_init_identity", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_invert, "graphene_quaternion_invert", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_multiply, "graphene_quaternion_multiply", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_normalize, "graphene_quaternion_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_scale, "graphene_quaternion_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_slerp, "graphene_quaternion_slerp", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_to_angle_vec3, "graphene_quaternion_to_angle_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_to_angles, "graphene_quaternion_to_angles", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_to_matrix, "graphene_quaternion_to_matrix", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_to_radians, "graphene_quaternion_to_radians", LIBRARY_GRAPHENE);
	Linker.link(graphene_quaternion_to_vec4, "graphene_quaternion_to_vec4", LIBRARY_GRAPHENE);

	// graphene.Ray

	Linker.link(graphene_ray_get_type, "graphene_ray_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_alloc, "graphene_ray_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_equal, "graphene_ray_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_free, "graphene_ray_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_closest_point_to_point, "graphene_ray_get_closest_point_to_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_direction, "graphene_ray_get_direction", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_distance_to_plane, "graphene_ray_get_distance_to_plane", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_distance_to_point, "graphene_ray_get_distance_to_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_origin, "graphene_ray_get_origin", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_get_position_at, "graphene_ray_get_position_at", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_init, "graphene_ray_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_init_from_ray, "graphene_ray_init_from_ray", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_init_from_vec3, "graphene_ray_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersect_box, "graphene_ray_intersect_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersect_sphere, "graphene_ray_intersect_sphere", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersect_triangle, "graphene_ray_intersect_triangle", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersects_box, "graphene_ray_intersects_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersects_sphere, "graphene_ray_intersects_sphere", LIBRARY_GRAPHENE);
	Linker.link(graphene_ray_intersects_triangle, "graphene_ray_intersects_triangle", LIBRARY_GRAPHENE);

	// graphene.Rect

	Linker.link(graphene_rect_get_type, "graphene_rect_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_contains_point, "graphene_rect_contains_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_contains_rect, "graphene_rect_contains_rect", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_equal, "graphene_rect_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_expand, "graphene_rect_expand", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_free, "graphene_rect_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_area, "graphene_rect_get_area", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_bottom_left, "graphene_rect_get_bottom_left", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_bottom_right, "graphene_rect_get_bottom_right", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_center, "graphene_rect_get_center", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_height, "graphene_rect_get_height", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_top_left, "graphene_rect_get_top_left", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_top_right, "graphene_rect_get_top_right", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_vertices, "graphene_rect_get_vertices", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_width, "graphene_rect_get_width", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_x, "graphene_rect_get_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_get_y, "graphene_rect_get_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_init, "graphene_rect_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_init_from_rect, "graphene_rect_init_from_rect", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_inset, "graphene_rect_inset", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_inset_r, "graphene_rect_inset_r", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_interpolate, "graphene_rect_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_intersection, "graphene_rect_intersection", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_normalize, "graphene_rect_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_normalize_r, "graphene_rect_normalize_r", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_offset, "graphene_rect_offset", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_offset_r, "graphene_rect_offset_r", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_round, "graphene_rect_round", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_round_extents, "graphene_rect_round_extents", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_round_to_pixel, "graphene_rect_round_to_pixel", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_scale, "graphene_rect_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_union, "graphene_rect_union", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_alloc, "graphene_rect_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_rect_zero, "graphene_rect_zero", LIBRARY_GRAPHENE);

	// graphene.Size

	Linker.link(graphene_size_get_type, "graphene_size_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_alloc, "graphene_size_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_equal, "graphene_size_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_free, "graphene_size_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_init, "graphene_size_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_init_from_size, "graphene_size_init_from_size", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_interpolate, "graphene_size_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_scale, "graphene_size_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_size_zero, "graphene_size_zero", LIBRARY_GRAPHENE);

	// graphene.Sphere

	Linker.link(graphene_sphere_get_type, "graphene_sphere_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_alloc, "graphene_sphere_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_contains_point, "graphene_sphere_contains_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_distance, "graphene_sphere_distance", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_equal, "graphene_sphere_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_free, "graphene_sphere_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_get_bounding_box, "graphene_sphere_get_bounding_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_get_center, "graphene_sphere_get_center", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_get_radius, "graphene_sphere_get_radius", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_init, "graphene_sphere_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_init_from_points, "graphene_sphere_init_from_points", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_init_from_vectors, "graphene_sphere_init_from_vectors", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_is_empty, "graphene_sphere_is_empty", LIBRARY_GRAPHENE);
	Linker.link(graphene_sphere_translate, "graphene_sphere_translate", LIBRARY_GRAPHENE);

	// graphene.Triangle

	Linker.link(graphene_triangle_get_type, "graphene_triangle_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_alloc, "graphene_triangle_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_contains_point, "graphene_triangle_contains_point", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_equal, "graphene_triangle_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_free, "graphene_triangle_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_area, "graphene_triangle_get_area", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_barycoords, "graphene_triangle_get_barycoords", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_bounding_box, "graphene_triangle_get_bounding_box", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_midpoint, "graphene_triangle_get_midpoint", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_normal, "graphene_triangle_get_normal", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_plane, "graphene_triangle_get_plane", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_points, "graphene_triangle_get_points", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_uv, "graphene_triangle_get_uv", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_get_vertices, "graphene_triangle_get_vertices", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_init_from_float, "graphene_triangle_init_from_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_init_from_point3d, "graphene_triangle_init_from_point3d", LIBRARY_GRAPHENE);
	Linker.link(graphene_triangle_init_from_vec3, "graphene_triangle_init_from_vec3", LIBRARY_GRAPHENE);

	// graphene.Vec2

	Linker.link(graphene_vec2_get_type, "graphene_vec2_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_alloc, "graphene_vec2_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_add, "graphene_vec2_add", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_divide, "graphene_vec2_divide", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_dot, "graphene_vec2_dot", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_equal, "graphene_vec2_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_free, "graphene_vec2_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_get_x, "graphene_vec2_get_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_get_y, "graphene_vec2_get_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_init, "graphene_vec2_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_init_from_float, "graphene_vec2_init_from_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_init_from_vec2, "graphene_vec2_init_from_vec2", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_interpolate, "graphene_vec2_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_length, "graphene_vec2_length", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_max, "graphene_vec2_max", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_min, "graphene_vec2_min", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_multiply, "graphene_vec2_multiply", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_near, "graphene_vec2_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_negate, "graphene_vec2_negate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_normalize, "graphene_vec2_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_scale, "graphene_vec2_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_subtract, "graphene_vec2_subtract", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_to_float, "graphene_vec2_to_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_one, "graphene_vec2_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_x_axis, "graphene_vec2_x_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_y_axis, "graphene_vec2_y_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec2_zero, "graphene_vec2_zero", LIBRARY_GRAPHENE);

	// graphene.Vec3

	Linker.link(graphene_vec3_get_type, "graphene_vec3_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_alloc, "graphene_vec3_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_add, "graphene_vec3_add", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_cross, "graphene_vec3_cross", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_divide, "graphene_vec3_divide", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_dot, "graphene_vec3_dot", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_equal, "graphene_vec3_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_free, "graphene_vec3_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_x, "graphene_vec3_get_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_xy, "graphene_vec3_get_xy", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_xy0, "graphene_vec3_get_xy0", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_xyz0, "graphene_vec3_get_xyz0", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_xyz1, "graphene_vec3_get_xyz1", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_xyzw, "graphene_vec3_get_xyzw", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_y, "graphene_vec3_get_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_get_z, "graphene_vec3_get_z", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_init, "graphene_vec3_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_init_from_float, "graphene_vec3_init_from_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_init_from_vec3, "graphene_vec3_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_interpolate, "graphene_vec3_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_length, "graphene_vec3_length", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_max, "graphene_vec3_max", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_min, "graphene_vec3_min", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_multiply, "graphene_vec3_multiply", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_near, "graphene_vec3_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_negate, "graphene_vec3_negate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_normalize, "graphene_vec3_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_scale, "graphene_vec3_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_subtract, "graphene_vec3_subtract", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_to_float, "graphene_vec3_to_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_one, "graphene_vec3_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_x_axis, "graphene_vec3_x_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_y_axis, "graphene_vec3_y_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_z_axis, "graphene_vec3_z_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec3_zero, "graphene_vec3_zero", LIBRARY_GRAPHENE);

	// graphene.Vec4

	Linker.link(graphene_vec4_get_type, "graphene_vec4_get_type", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_alloc, "graphene_vec4_alloc", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_add, "graphene_vec4_add", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_divide, "graphene_vec4_divide", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_dot, "graphene_vec4_dot", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_equal, "graphene_vec4_equal", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_free, "graphene_vec4_free", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_w, "graphene_vec4_get_w", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_x, "graphene_vec4_get_x", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_xy, "graphene_vec4_get_xy", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_xyz, "graphene_vec4_get_xyz", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_y, "graphene_vec4_get_y", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_get_z, "graphene_vec4_get_z", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_init, "graphene_vec4_init", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_init_from_float, "graphene_vec4_init_from_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_init_from_vec2, "graphene_vec4_init_from_vec2", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_init_from_vec3, "graphene_vec4_init_from_vec3", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_init_from_vec4, "graphene_vec4_init_from_vec4", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_interpolate, "graphene_vec4_interpolate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_length, "graphene_vec4_length", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_max, "graphene_vec4_max", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_min, "graphene_vec4_min", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_multiply, "graphene_vec4_multiply", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_near, "graphene_vec4_near", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_negate, "graphene_vec4_negate", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_normalize, "graphene_vec4_normalize", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_scale, "graphene_vec4_scale", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_subtract, "graphene_vec4_subtract", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_to_float, "graphene_vec4_to_float", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_one, "graphene_vec4_one", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_w_axis, "graphene_vec4_w_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_x_axis, "graphene_vec4_x_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_y_axis, "graphene_vec4_y_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_z_axis, "graphene_vec4_z_axis", LIBRARY_GRAPHENE);
	Linker.link(graphene_vec4_zero, "graphene_vec4_zero", LIBRARY_GRAPHENE);
}

__gshared extern(C)
{

	// graphene.Box

	GType function() c_graphene_box_get_type;
	graphene_box_t* function() c_graphene_box_alloc;
	int function(graphene_box_t* a, graphene_box_t* b) c_graphene_box_contains_box;
	int function(graphene_box_t* box, graphene_point3d_t* point) c_graphene_box_contains_point;
	int function(graphene_box_t* a, graphene_box_t* b) c_graphene_box_equal;
	void function(graphene_box_t* box, graphene_point3d_t* point, graphene_box_t* res) c_graphene_box_expand;
	void function(graphene_box_t* box, float scalar, graphene_box_t* res) c_graphene_box_expand_scalar;
	void function(graphene_box_t* box, graphene_vec3_t* vec, graphene_box_t* res) c_graphene_box_expand_vec3;
	void function(graphene_box_t* box) c_graphene_box_free;
	void function(graphene_box_t* box, graphene_sphere_t* sphere) c_graphene_box_get_bounding_sphere;
	void function(graphene_box_t* box, graphene_point3d_t* center) c_graphene_box_get_center;
	float function(graphene_box_t* box) c_graphene_box_get_depth;
	float function(graphene_box_t* box) c_graphene_box_get_height;
	void function(graphene_box_t* box, graphene_point3d_t* max) c_graphene_box_get_max;
	void function(graphene_box_t* box, graphene_point3d_t* min) c_graphene_box_get_min;
	void function(graphene_box_t* box, graphene_vec3_t* size) c_graphene_box_get_size;
	void function(graphene_box_t* box, graphene_vec3_t* vertices) c_graphene_box_get_vertices;
	float function(graphene_box_t* box) c_graphene_box_get_width;
	graphene_box_t* function(graphene_box_t* box, graphene_point3d_t* min, graphene_point3d_t* max) c_graphene_box_init;
	graphene_box_t* function(graphene_box_t* box, graphene_box_t* src) c_graphene_box_init_from_box;
	graphene_box_t* function(graphene_box_t* box, uint nPoints, graphene_point3d_t* points) c_graphene_box_init_from_points;
	graphene_box_t* function(graphene_box_t* box, graphene_vec3_t* min, graphene_vec3_t* max) c_graphene_box_init_from_vec3;
	graphene_box_t* function(graphene_box_t* box, uint nVectors, graphene_vec3_t* vectors) c_graphene_box_init_from_vectors;
	int function(graphene_box_t* a, graphene_box_t* b, graphene_box_t* res) c_graphene_box_intersection;
	void function(graphene_box_t* a, graphene_box_t* b, graphene_box_t* res) c_graphene_box_union;
	graphene_box_t* function() c_graphene_box_empty;
	graphene_box_t* function() c_graphene_box_infinite;
	graphene_box_t* function() c_graphene_box_minus_one;
	graphene_box_t* function() c_graphene_box_one;
	graphene_box_t* function() c_graphene_box_one_minus_one;
	graphene_box_t* function() c_graphene_box_zero;

	// graphene.Euler

	GType function() c_graphene_euler_get_type;
	graphene_euler_t* function() c_graphene_euler_alloc;
	int function(graphene_euler_t* a, graphene_euler_t* b) c_graphene_euler_equal;
	void function(graphene_euler_t* e) c_graphene_euler_free;
	float function(graphene_euler_t* e) c_graphene_euler_get_alpha;
	float function(graphene_euler_t* e) c_graphene_euler_get_beta;
	float function(graphene_euler_t* e) c_graphene_euler_get_gamma;
	graphene_euler_order_t function(graphene_euler_t* e) c_graphene_euler_get_order;
	float function(graphene_euler_t* e) c_graphene_euler_get_x;
	float function(graphene_euler_t* e) c_graphene_euler_get_y;
	float function(graphene_euler_t* e) c_graphene_euler_get_z;
	graphene_euler_t* function(graphene_euler_t* e, float x, float y, float z) c_graphene_euler_init;
	graphene_euler_t* function(graphene_euler_t* e, graphene_euler_t* src) c_graphene_euler_init_from_euler;
	graphene_euler_t* function(graphene_euler_t* e, graphene_matrix_t* m, graphene_euler_order_t order) c_graphene_euler_init_from_matrix;
	graphene_euler_t* function(graphene_euler_t* e, graphene_quaternion_t* q, graphene_euler_order_t order) c_graphene_euler_init_from_quaternion;
	graphene_euler_t* function(graphene_euler_t* e, float x, float y, float z, graphene_euler_order_t order) c_graphene_euler_init_from_radians;
	graphene_euler_t* function(graphene_euler_t* e, graphene_vec3_t* v, graphene_euler_order_t order) c_graphene_euler_init_from_vec3;
	graphene_euler_t* function(graphene_euler_t* e, float x, float y, float z, graphene_euler_order_t order) c_graphene_euler_init_with_order;
	void function(graphene_euler_t* e, graphene_euler_order_t order, graphene_euler_t* res) c_graphene_euler_reorder;
	void function(graphene_euler_t* e, graphene_matrix_t* res) c_graphene_euler_to_matrix;
	void function(graphene_euler_t* e, graphene_quaternion_t* res) c_graphene_euler_to_quaternion;
	void function(graphene_euler_t* e, graphene_vec3_t* res) c_graphene_euler_to_vec3;

	// graphene.Frustum

	GType function() c_graphene_frustum_get_type;
	graphene_frustum_t* function() c_graphene_frustum_alloc;
	int function(graphene_frustum_t* f, graphene_point3d_t* point) c_graphene_frustum_contains_point;
	int function(graphene_frustum_t* a, graphene_frustum_t* b) c_graphene_frustum_equal;
	void function(graphene_frustum_t* f) c_graphene_frustum_free;
	void function(graphene_frustum_t* f, graphene_plane_t* planes) c_graphene_frustum_get_planes;
	graphene_frustum_t* function(graphene_frustum_t* f, graphene_plane_t* p0, graphene_plane_t* p1, graphene_plane_t* p2, graphene_plane_t* p3, graphene_plane_t* p4, graphene_plane_t* p5) c_graphene_frustum_init;
	graphene_frustum_t* function(graphene_frustum_t* f, graphene_frustum_t* src) c_graphene_frustum_init_from_frustum;
	graphene_frustum_t* function(graphene_frustum_t* f, graphene_matrix_t* matrix) c_graphene_frustum_init_from_matrix;
	int function(graphene_frustum_t* f, graphene_box_t* box) c_graphene_frustum_intersects_box;
	int function(graphene_frustum_t* f, graphene_sphere_t* sphere) c_graphene_frustum_intersects_sphere;

	// graphene.Matrix

	GType function() c_graphene_matrix_get_type;
	graphene_matrix_t* function() c_graphene_matrix_alloc;
	int function(graphene_matrix_t* m, graphene_vec3_t* translate, graphene_vec3_t* scale, graphene_quaternion_t* rotate, graphene_vec3_t* shear, graphene_vec4_t* perspective) c_graphene_matrix_decompose;
	float function(graphene_matrix_t* m) c_graphene_matrix_determinant;
	int function(graphene_matrix_t* a, graphene_matrix_t* b) c_graphene_matrix_equal;
	int function(graphene_matrix_t* a, graphene_matrix_t* b) c_graphene_matrix_equal_fast;
	void function(graphene_matrix_t* m) c_graphene_matrix_free;
	void function(graphene_matrix_t* m, uint index, graphene_vec4_t* res) c_graphene_matrix_get_row;
	float function(graphene_matrix_t* m, uint row, uint col) c_graphene_matrix_get_value;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_x_scale;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_x_translation;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_y_scale;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_y_translation;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_z_scale;
	float function(graphene_matrix_t* m) c_graphene_matrix_get_z_translation;
	graphene_matrix_t* function(graphene_matrix_t* m, double xx, double yx, double xy, double yy, double x0, double y0) c_graphene_matrix_init_from_2d;
	graphene_matrix_t* function(graphene_matrix_t* m, float* v) c_graphene_matrix_init_from_float;
	graphene_matrix_t* function(graphene_matrix_t* m, graphene_matrix_t* src) c_graphene_matrix_init_from_matrix;
	graphene_matrix_t* function(graphene_matrix_t* m, graphene_vec4_t* v0, graphene_vec4_t* v1, graphene_vec4_t* v2, graphene_vec4_t* v3) c_graphene_matrix_init_from_vec4;
	graphene_matrix_t* function(graphene_matrix_t* m, float left, float right, float bottom, float top, float zNear, float zFar) c_graphene_matrix_init_frustum;
	graphene_matrix_t* function(graphene_matrix_t* m) c_graphene_matrix_init_identity;
	graphene_matrix_t* function(graphene_matrix_t* m, graphene_vec3_t* eye, graphene_vec3_t* center, graphene_vec3_t* up) c_graphene_matrix_init_look_at;
	graphene_matrix_t* function(graphene_matrix_t* m, float left, float right, float top, float bottom, float zNear, float zFar) c_graphene_matrix_init_ortho;
	graphene_matrix_t* function(graphene_matrix_t* m, float fovy, float aspect, float zNear, float zFar) c_graphene_matrix_init_perspective;
	graphene_matrix_t* function(graphene_matrix_t* m, float angle, graphene_vec3_t* axis) c_graphene_matrix_init_rotate;
	graphene_matrix_t* function(graphene_matrix_t* m, float x, float y, float z) c_graphene_matrix_init_scale;
	graphene_matrix_t* function(graphene_matrix_t* m, float xSkew, float ySkew) c_graphene_matrix_init_skew;
	graphene_matrix_t* function(graphene_matrix_t* m, graphene_point3d_t* p) c_graphene_matrix_init_translate;
	void function(graphene_matrix_t* a, graphene_matrix_t* b, double factor, graphene_matrix_t* res) c_graphene_matrix_interpolate;
	int function(graphene_matrix_t* m, graphene_matrix_t* res) c_graphene_matrix_inverse;
	int function(graphene_matrix_t* m) c_graphene_matrix_is_2d;
	int function(graphene_matrix_t* m) c_graphene_matrix_is_backface_visible;
	int function(graphene_matrix_t* m) c_graphene_matrix_is_identity;
	int function(graphene_matrix_t* m) c_graphene_matrix_is_singular;
	void function(graphene_matrix_t* a, graphene_matrix_t* b, graphene_matrix_t* res) c_graphene_matrix_multiply;
	int function(graphene_matrix_t* a, graphene_matrix_t* b, float epsilon) c_graphene_matrix_near;
	void function(graphene_matrix_t* m, graphene_matrix_t* res) c_graphene_matrix_normalize;
	void function(graphene_matrix_t* m, float depth, graphene_matrix_t* res) c_graphene_matrix_perspective;
	void function(graphene_matrix_t* m) c_graphene_matrix_print;
	void function(graphene_matrix_t* m, graphene_point_t* p, graphene_point_t* res) c_graphene_matrix_project_point;
	void function(graphene_matrix_t* m, graphene_rect_t* r, graphene_quad_t* res) c_graphene_matrix_project_rect;
	void function(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* res) c_graphene_matrix_project_rect_bounds;
	void function(graphene_matrix_t* m, float angle, graphene_vec3_t* axis) c_graphene_matrix_rotate;
	void function(graphene_matrix_t* m, graphene_euler_t* e) c_graphene_matrix_rotate_euler;
	void function(graphene_matrix_t* m, graphene_quaternion_t* q) c_graphene_matrix_rotate_quaternion;
	void function(graphene_matrix_t* m, float angle) c_graphene_matrix_rotate_x;
	void function(graphene_matrix_t* m, float angle) c_graphene_matrix_rotate_y;
	void function(graphene_matrix_t* m, float angle) c_graphene_matrix_rotate_z;
	void function(graphene_matrix_t* m, float factorX, float factorY, float factorZ) c_graphene_matrix_scale;
	void function(graphene_matrix_t* m, float factor) c_graphene_matrix_skew_xy;
	void function(graphene_matrix_t* m, float factor) c_graphene_matrix_skew_xz;
	void function(graphene_matrix_t* m, float factor) c_graphene_matrix_skew_yz;
	int function(graphene_matrix_t* m, double* xx, double* yx, double* xy, double* yy, double* x0, double* y0) c_graphene_matrix_to_2d;
	void function(graphene_matrix_t* m, float* v) c_graphene_matrix_to_float;
	void function(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* res) c_graphene_matrix_transform_bounds;
	void function(graphene_matrix_t* m, graphene_box_t* b, graphene_box_t* res) c_graphene_matrix_transform_box;
	void function(graphene_matrix_t* m, graphene_point_t* p, graphene_point_t* res) c_graphene_matrix_transform_point;
	void function(graphene_matrix_t* m, graphene_point3d_t* p, graphene_point3d_t* res) c_graphene_matrix_transform_point3d;
	void function(graphene_matrix_t* m, graphene_ray_t* r, graphene_ray_t* res) c_graphene_matrix_transform_ray;
	void function(graphene_matrix_t* m, graphene_rect_t* r, graphene_quad_t* res) c_graphene_matrix_transform_rect;
	void function(graphene_matrix_t* m, graphene_sphere_t* s, graphene_sphere_t* res) c_graphene_matrix_transform_sphere;
	void function(graphene_matrix_t* m, graphene_vec3_t* v, graphene_vec3_t* res) c_graphene_matrix_transform_vec3;
	void function(graphene_matrix_t* m, graphene_vec4_t* v, graphene_vec4_t* res) c_graphene_matrix_transform_vec4;
	void function(graphene_matrix_t* m, graphene_point3d_t* pos) c_graphene_matrix_translate;
	void function(graphene_matrix_t* m, graphene_matrix_t* res) c_graphene_matrix_transpose;
	void function(graphene_matrix_t* projection, graphene_matrix_t* modelview, graphene_point3d_t* point, graphene_point3d_t* res) c_graphene_matrix_unproject_point3d;
	void function(graphene_matrix_t* m, graphene_rect_t* r, graphene_rect_t* bounds, graphene_rect_t* res) c_graphene_matrix_untransform_bounds;
	int function(graphene_matrix_t* m, graphene_point_t* p, graphene_rect_t* bounds, graphene_point_t* res) c_graphene_matrix_untransform_point;

	// graphene.Plane

	GType function() c_graphene_plane_get_type;
	graphene_plane_t* function() c_graphene_plane_alloc;
	float function(graphene_plane_t* p, graphene_point3d_t* point) c_graphene_plane_distance;
	int function(graphene_plane_t* a, graphene_plane_t* b) c_graphene_plane_equal;
	void function(graphene_plane_t* p) c_graphene_plane_free;
	float function(graphene_plane_t* p) c_graphene_plane_get_constant;
	void function(graphene_plane_t* p, graphene_vec3_t* normal) c_graphene_plane_get_normal;
	graphene_plane_t* function(graphene_plane_t* p, graphene_vec3_t* normal, float constant) c_graphene_plane_init;
	graphene_plane_t* function(graphene_plane_t* p, graphene_plane_t* src) c_graphene_plane_init_from_plane;
	graphene_plane_t* function(graphene_plane_t* p, graphene_vec3_t* normal, graphene_point3d_t* point) c_graphene_plane_init_from_point;
	graphene_plane_t* function(graphene_plane_t* p, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c) c_graphene_plane_init_from_points;
	graphene_plane_t* function(graphene_plane_t* p, graphene_vec4_t* src) c_graphene_plane_init_from_vec4;
	void function(graphene_plane_t* p, graphene_plane_t* res) c_graphene_plane_negate;
	void function(graphene_plane_t* p, graphene_plane_t* res) c_graphene_plane_normalize;
	void function(graphene_plane_t* p, graphene_matrix_t* matrix, graphene_matrix_t* normalMatrix, graphene_plane_t* res) c_graphene_plane_transform;

	// graphene.Point

	GType function() c_graphene_point_get_type;
	graphene_point_t* function() c_graphene_point_alloc;
	float function(graphene_point_t* a, graphene_point_t* b, float* dX, float* dY) c_graphene_point_distance;
	int function(graphene_point_t* a, graphene_point_t* b) c_graphene_point_equal;
	void function(graphene_point_t* p) c_graphene_point_free;
	graphene_point_t* function(graphene_point_t* p, float x, float y) c_graphene_point_init;
	graphene_point_t* function(graphene_point_t* p, graphene_point_t* src) c_graphene_point_init_from_point;
	graphene_point_t* function(graphene_point_t* p, graphene_vec2_t* src) c_graphene_point_init_from_vec2;
	void function(graphene_point_t* a, graphene_point_t* b, double factor, graphene_point_t* res) c_graphene_point_interpolate;
	int function(graphene_point_t* a, graphene_point_t* b, float epsilon) c_graphene_point_near;
	void function(graphene_point_t* p, graphene_vec2_t* v) c_graphene_point_to_vec2;
	graphene_point_t* function() c_graphene_point_zero;

	// graphene.Point3D

	GType function() c_graphene_point3d_get_type;
	graphene_point3d_t* function() c_graphene_point3d_alloc;
	void function(graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* res) c_graphene_point3d_cross;
	float function(graphene_point3d_t* a, graphene_point3d_t* b, graphene_vec3_t* delta) c_graphene_point3d_distance;
	float function(graphene_point3d_t* a, graphene_point3d_t* b) c_graphene_point3d_dot;
	int function(graphene_point3d_t* a, graphene_point3d_t* b) c_graphene_point3d_equal;
	void function(graphene_point3d_t* p) c_graphene_point3d_free;
	graphene_point3d_t* function(graphene_point3d_t* p, float x, float y, float z) c_graphene_point3d_init;
	graphene_point3d_t* function(graphene_point3d_t* p, graphene_point3d_t* src) c_graphene_point3d_init_from_point;
	graphene_point3d_t* function(graphene_point3d_t* p, graphene_vec3_t* v) c_graphene_point3d_init_from_vec3;
	void function(graphene_point3d_t* a, graphene_point3d_t* b, double factor, graphene_point3d_t* res) c_graphene_point3d_interpolate;
	float function(graphene_point3d_t* p) c_graphene_point3d_length;
	int function(graphene_point3d_t* a, graphene_point3d_t* b, float epsilon) c_graphene_point3d_near;
	void function(graphene_point3d_t* p, graphene_point3d_t* res) c_graphene_point3d_normalize;
	void function(graphene_point3d_t* p, graphene_rect_t* viewport, float zNear, float zFar, graphene_point3d_t* res) c_graphene_point3d_normalize_viewport;
	void function(graphene_point3d_t* p, float factor, graphene_point3d_t* res) c_graphene_point3d_scale;
	void function(graphene_point3d_t* p, graphene_vec3_t* v) c_graphene_point3d_to_vec3;
	graphene_point3d_t* function() c_graphene_point3d_zero;

	// graphene.Quad

	GType function() c_graphene_quad_get_type;
	graphene_quad_t* function() c_graphene_quad_alloc;
	void function(graphene_quad_t* q, graphene_rect_t* r) c_graphene_quad_bounds;
	int function(graphene_quad_t* q, graphene_point_t* p) c_graphene_quad_contains;
	void function(graphene_quad_t* q) c_graphene_quad_free;
	graphene_point_t* function(graphene_quad_t* q, uint index) c_graphene_quad_get_point;
	graphene_quad_t* function(graphene_quad_t* q, graphene_point_t* p1, graphene_point_t* p2, graphene_point_t* p3, graphene_point_t* p4) c_graphene_quad_init;
	graphene_quad_t* function(graphene_quad_t* q, graphene_point_t* points) c_graphene_quad_init_from_points;
	graphene_quad_t* function(graphene_quad_t* q, graphene_rect_t* r) c_graphene_quad_init_from_rect;

	// graphene.Quaternion

	GType function() c_graphene_quaternion_get_type;
	graphene_quaternion_t* function() c_graphene_quaternion_alloc;
	void function(graphene_quaternion_t* a, graphene_quaternion_t* b, graphene_quaternion_t* res) c_graphene_quaternion_add;
	float function(graphene_quaternion_t* a, graphene_quaternion_t* b) c_graphene_quaternion_dot;
	int function(graphene_quaternion_t* a, graphene_quaternion_t* b) c_graphene_quaternion_equal;
	void function(graphene_quaternion_t* q) c_graphene_quaternion_free;
	graphene_quaternion_t* function(graphene_quaternion_t* q, float x, float y, float z, float w) c_graphene_quaternion_init;
	graphene_quaternion_t* function(graphene_quaternion_t* q, float angle, graphene_vec3_t* axis) c_graphene_quaternion_init_from_angle_vec3;
	graphene_quaternion_t* function(graphene_quaternion_t* q, float degX, float degY, float degZ) c_graphene_quaternion_init_from_angles;
	graphene_quaternion_t* function(graphene_quaternion_t* q, graphene_euler_t* e) c_graphene_quaternion_init_from_euler;
	graphene_quaternion_t* function(graphene_quaternion_t* q, graphene_matrix_t* m) c_graphene_quaternion_init_from_matrix;
	graphene_quaternion_t* function(graphene_quaternion_t* q, graphene_quaternion_t* src) c_graphene_quaternion_init_from_quaternion;
	graphene_quaternion_t* function(graphene_quaternion_t* q, float radX, float radY, float radZ) c_graphene_quaternion_init_from_radians;
	graphene_quaternion_t* function(graphene_quaternion_t* q, graphene_vec4_t* src) c_graphene_quaternion_init_from_vec4;
	graphene_quaternion_t* function(graphene_quaternion_t* q) c_graphene_quaternion_init_identity;
	void function(graphene_quaternion_t* q, graphene_quaternion_t* res) c_graphene_quaternion_invert;
	void function(graphene_quaternion_t* a, graphene_quaternion_t* b, graphene_quaternion_t* res) c_graphene_quaternion_multiply;
	void function(graphene_quaternion_t* q, graphene_quaternion_t* res) c_graphene_quaternion_normalize;
	void function(graphene_quaternion_t* q, float factor, graphene_quaternion_t* res) c_graphene_quaternion_scale;
	void function(graphene_quaternion_t* a, graphene_quaternion_t* b, float factor, graphene_quaternion_t* res) c_graphene_quaternion_slerp;
	void function(graphene_quaternion_t* q, float* angle, graphene_vec3_t* axis) c_graphene_quaternion_to_angle_vec3;
	void function(graphene_quaternion_t* q, float* degX, float* degY, float* degZ) c_graphene_quaternion_to_angles;
	void function(graphene_quaternion_t* q, graphene_matrix_t* m) c_graphene_quaternion_to_matrix;
	void function(graphene_quaternion_t* q, float* radX, float* radY, float* radZ) c_graphene_quaternion_to_radians;
	void function(graphene_quaternion_t* q, graphene_vec4_t* res) c_graphene_quaternion_to_vec4;

	// graphene.Ray

	GType function() c_graphene_ray_get_type;
	graphene_ray_t* function() c_graphene_ray_alloc;
	int function(graphene_ray_t* a, graphene_ray_t* b) c_graphene_ray_equal;
	void function(graphene_ray_t* r) c_graphene_ray_free;
	void function(graphene_ray_t* r, graphene_point3d_t* p, graphene_point3d_t* res) c_graphene_ray_get_closest_point_to_point;
	void function(graphene_ray_t* r, graphene_vec3_t* direction) c_graphene_ray_get_direction;
	float function(graphene_ray_t* r, graphene_plane_t* p) c_graphene_ray_get_distance_to_plane;
	float function(graphene_ray_t* r, graphene_point3d_t* p) c_graphene_ray_get_distance_to_point;
	void function(graphene_ray_t* r, graphene_point3d_t* origin) c_graphene_ray_get_origin;
	void function(graphene_ray_t* r, float t, graphene_point3d_t* position) c_graphene_ray_get_position_at;
	graphene_ray_t* function(graphene_ray_t* r, graphene_point3d_t* origin, graphene_vec3_t* direction) c_graphene_ray_init;
	graphene_ray_t* function(graphene_ray_t* r, graphene_ray_t* src) c_graphene_ray_init_from_ray;
	graphene_ray_t* function(graphene_ray_t* r, graphene_vec3_t* origin, graphene_vec3_t* direction) c_graphene_ray_init_from_vec3;
	graphene_ray_intersection_kind_t function(graphene_ray_t* r, graphene_box_t* b, float* tOut) c_graphene_ray_intersect_box;
	graphene_ray_intersection_kind_t function(graphene_ray_t* r, graphene_sphere_t* s, float* tOut) c_graphene_ray_intersect_sphere;
	graphene_ray_intersection_kind_t function(graphene_ray_t* r, graphene_triangle_t* t, float* tOut) c_graphene_ray_intersect_triangle;
	int function(graphene_ray_t* r, graphene_box_t* b) c_graphene_ray_intersects_box;
	int function(graphene_ray_t* r, graphene_sphere_t* s) c_graphene_ray_intersects_sphere;
	int function(graphene_ray_t* r, graphene_triangle_t* t) c_graphene_ray_intersects_triangle;

	// graphene.Rect

	GType function() c_graphene_rect_get_type;
	int function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_contains_point;
	int function(graphene_rect_t* a, graphene_rect_t* b) c_graphene_rect_contains_rect;
	int function(graphene_rect_t* a, graphene_rect_t* b) c_graphene_rect_equal;
	void function(graphene_rect_t* r, graphene_point_t* p, graphene_rect_t* res) c_graphene_rect_expand;
	void function(graphene_rect_t* r) c_graphene_rect_free;
	float function(graphene_rect_t* r) c_graphene_rect_get_area;
	void function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_get_bottom_left;
	void function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_get_bottom_right;
	void function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_get_center;
	float function(graphene_rect_t* r) c_graphene_rect_get_height;
	void function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_get_top_left;
	void function(graphene_rect_t* r, graphene_point_t* p) c_graphene_rect_get_top_right;
	void function(graphene_rect_t* r, graphene_vec2_t* vertices) c_graphene_rect_get_vertices;
	float function(graphene_rect_t* r) c_graphene_rect_get_width;
	float function(graphene_rect_t* r) c_graphene_rect_get_x;
	float function(graphene_rect_t* r) c_graphene_rect_get_y;
	graphene_rect_t* function(graphene_rect_t* r, float x, float y, float width, float height) c_graphene_rect_init;
	graphene_rect_t* function(graphene_rect_t* r, graphene_rect_t* src) c_graphene_rect_init_from_rect;
	graphene_rect_t* function(graphene_rect_t* r, float dX, float dY) c_graphene_rect_inset;
	void function(graphene_rect_t* r, float dX, float dY, graphene_rect_t* res) c_graphene_rect_inset_r;
	void function(graphene_rect_t* a, graphene_rect_t* b, double factor, graphene_rect_t* res) c_graphene_rect_interpolate;
	int function(graphene_rect_t* a, graphene_rect_t* b, graphene_rect_t* res) c_graphene_rect_intersection;
	graphene_rect_t* function(graphene_rect_t* r) c_graphene_rect_normalize;
	void function(graphene_rect_t* r, graphene_rect_t* res) c_graphene_rect_normalize_r;
	graphene_rect_t* function(graphene_rect_t* r, float dX, float dY) c_graphene_rect_offset;
	void function(graphene_rect_t* r, float dX, float dY, graphene_rect_t* res) c_graphene_rect_offset_r;
	void function(graphene_rect_t* r, graphene_rect_t* res) c_graphene_rect_round;
	void function(graphene_rect_t* r, graphene_rect_t* res) c_graphene_rect_round_extents;
	graphene_rect_t* function(graphene_rect_t* r) c_graphene_rect_round_to_pixel;
	void function(graphene_rect_t* r, float sH, float sV, graphene_rect_t* res) c_graphene_rect_scale;
	void function(graphene_rect_t* a, graphene_rect_t* b, graphene_rect_t* res) c_graphene_rect_union;
	graphene_rect_t* function() c_graphene_rect_alloc;
	graphene_rect_t* function() c_graphene_rect_zero;

	// graphene.Size

	GType function() c_graphene_size_get_type;
	graphene_size_t* function() c_graphene_size_alloc;
	int function(graphene_size_t* a, graphene_size_t* b) c_graphene_size_equal;
	void function(graphene_size_t* s) c_graphene_size_free;
	graphene_size_t* function(graphene_size_t* s, float width, float height) c_graphene_size_init;
	graphene_size_t* function(graphene_size_t* s, graphene_size_t* src) c_graphene_size_init_from_size;
	void function(graphene_size_t* a, graphene_size_t* b, double factor, graphene_size_t* res) c_graphene_size_interpolate;
	void function(graphene_size_t* s, float factor, graphene_size_t* res) c_graphene_size_scale;
	graphene_size_t* function() c_graphene_size_zero;

	// graphene.Sphere

	GType function() c_graphene_sphere_get_type;
	graphene_sphere_t* function() c_graphene_sphere_alloc;
	int function(graphene_sphere_t* s, graphene_point3d_t* point) c_graphene_sphere_contains_point;
	float function(graphene_sphere_t* s, graphene_point3d_t* point) c_graphene_sphere_distance;
	int function(graphene_sphere_t* a, graphene_sphere_t* b) c_graphene_sphere_equal;
	void function(graphene_sphere_t* s) c_graphene_sphere_free;
	void function(graphene_sphere_t* s, graphene_box_t* box) c_graphene_sphere_get_bounding_box;
	void function(graphene_sphere_t* s, graphene_point3d_t* center) c_graphene_sphere_get_center;
	float function(graphene_sphere_t* s) c_graphene_sphere_get_radius;
	graphene_sphere_t* function(graphene_sphere_t* s, graphene_point3d_t* center, float radius) c_graphene_sphere_init;
	graphene_sphere_t* function(graphene_sphere_t* s, uint nPoints, graphene_point3d_t* points, graphene_point3d_t* center) c_graphene_sphere_init_from_points;
	graphene_sphere_t* function(graphene_sphere_t* s, uint nVectors, graphene_vec3_t* vectors, graphene_point3d_t* center) c_graphene_sphere_init_from_vectors;
	int function(graphene_sphere_t* s) c_graphene_sphere_is_empty;
	void function(graphene_sphere_t* s, graphene_point3d_t* point, graphene_sphere_t* res) c_graphene_sphere_translate;

	// graphene.Triangle

	GType function() c_graphene_triangle_get_type;
	graphene_triangle_t* function() c_graphene_triangle_alloc;
	int function(graphene_triangle_t* t, graphene_point3d_t* p) c_graphene_triangle_contains_point;
	int function(graphene_triangle_t* a, graphene_triangle_t* b) c_graphene_triangle_equal;
	void function(graphene_triangle_t* t) c_graphene_triangle_free;
	float function(graphene_triangle_t* t) c_graphene_triangle_get_area;
	int function(graphene_triangle_t* t, graphene_point3d_t* p, graphene_vec2_t* res) c_graphene_triangle_get_barycoords;
	void function(graphene_triangle_t* t, graphene_box_t* res) c_graphene_triangle_get_bounding_box;
	void function(graphene_triangle_t* t, graphene_point3d_t* res) c_graphene_triangle_get_midpoint;
	void function(graphene_triangle_t* t, graphene_vec3_t* res) c_graphene_triangle_get_normal;
	void function(graphene_triangle_t* t, graphene_plane_t* res) c_graphene_triangle_get_plane;
	void function(graphene_triangle_t* t, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c) c_graphene_triangle_get_points;
	int function(graphene_triangle_t* t, graphene_point3d_t* p, graphene_vec2_t* uvA, graphene_vec2_t* uvB, graphene_vec2_t* uvC, graphene_vec2_t* res) c_graphene_triangle_get_uv;
	void function(graphene_triangle_t* t, graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* c) c_graphene_triangle_get_vertices;
	graphene_triangle_t* function(graphene_triangle_t* t, float* a, float* b, float* c) c_graphene_triangle_init_from_float;
	graphene_triangle_t* function(graphene_triangle_t* t, graphene_point3d_t* a, graphene_point3d_t* b, graphene_point3d_t* c) c_graphene_triangle_init_from_point3d;
	graphene_triangle_t* function(graphene_triangle_t* t, graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* c) c_graphene_triangle_init_from_vec3;

	// graphene.Vec2

	GType function() c_graphene_vec2_get_type;
	graphene_vec2_t* function() c_graphene_vec2_alloc;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_add;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_divide;
	float function(graphene_vec2_t* a, graphene_vec2_t* b) c_graphene_vec2_dot;
	int function(graphene_vec2_t* v1, graphene_vec2_t* v2) c_graphene_vec2_equal;
	void function(graphene_vec2_t* v) c_graphene_vec2_free;
	float function(graphene_vec2_t* v) c_graphene_vec2_get_x;
	float function(graphene_vec2_t* v) c_graphene_vec2_get_y;
	graphene_vec2_t* function(graphene_vec2_t* v, float x, float y) c_graphene_vec2_init;
	graphene_vec2_t* function(graphene_vec2_t* v, float* src) c_graphene_vec2_init_from_float;
	graphene_vec2_t* function(graphene_vec2_t* v, graphene_vec2_t* src) c_graphene_vec2_init_from_vec2;
	void function(graphene_vec2_t* v1, graphene_vec2_t* v2, double factor, graphene_vec2_t* res) c_graphene_vec2_interpolate;
	float function(graphene_vec2_t* v) c_graphene_vec2_length;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_max;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_min;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_multiply;
	int function(graphene_vec2_t* v1, graphene_vec2_t* v2, float epsilon) c_graphene_vec2_near;
	void function(graphene_vec2_t* v, graphene_vec2_t* res) c_graphene_vec2_negate;
	void function(graphene_vec2_t* v, graphene_vec2_t* res) c_graphene_vec2_normalize;
	void function(graphene_vec2_t* v, float factor, graphene_vec2_t* res) c_graphene_vec2_scale;
	void function(graphene_vec2_t* a, graphene_vec2_t* b, graphene_vec2_t* res) c_graphene_vec2_subtract;
	void function(graphene_vec2_t* v, float* dest) c_graphene_vec2_to_float;
	graphene_vec2_t* function() c_graphene_vec2_one;
	graphene_vec2_t* function() c_graphene_vec2_x_axis;
	graphene_vec2_t* function() c_graphene_vec2_y_axis;
	graphene_vec2_t* function() c_graphene_vec2_zero;

	// graphene.Vec3

	GType function() c_graphene_vec3_get_type;
	graphene_vec3_t* function() c_graphene_vec3_alloc;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_add;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_cross;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_divide;
	float function(graphene_vec3_t* a, graphene_vec3_t* b) c_graphene_vec3_dot;
	int function(graphene_vec3_t* v1, graphene_vec3_t* v2) c_graphene_vec3_equal;
	void function(graphene_vec3_t* v) c_graphene_vec3_free;
	float function(graphene_vec3_t* v) c_graphene_vec3_get_x;
	void function(graphene_vec3_t* v, graphene_vec2_t* res) c_graphene_vec3_get_xy;
	void function(graphene_vec3_t* v, graphene_vec3_t* res) c_graphene_vec3_get_xy0;
	void function(graphene_vec3_t* v, graphene_vec4_t* res) c_graphene_vec3_get_xyz0;
	void function(graphene_vec3_t* v, graphene_vec4_t* res) c_graphene_vec3_get_xyz1;
	void function(graphene_vec3_t* v, float w, graphene_vec4_t* res) c_graphene_vec3_get_xyzw;
	float function(graphene_vec3_t* v) c_graphene_vec3_get_y;
	float function(graphene_vec3_t* v) c_graphene_vec3_get_z;
	graphene_vec3_t* function(graphene_vec3_t* v, float x, float y, float z) c_graphene_vec3_init;
	graphene_vec3_t* function(graphene_vec3_t* v, float* src) c_graphene_vec3_init_from_float;
	graphene_vec3_t* function(graphene_vec3_t* v, graphene_vec3_t* src) c_graphene_vec3_init_from_vec3;
	void function(graphene_vec3_t* v1, graphene_vec3_t* v2, double factor, graphene_vec3_t* res) c_graphene_vec3_interpolate;
	float function(graphene_vec3_t* v) c_graphene_vec3_length;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_max;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_min;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_multiply;
	int function(graphene_vec3_t* v1, graphene_vec3_t* v2, float epsilon) c_graphene_vec3_near;
	void function(graphene_vec3_t* v, graphene_vec3_t* res) c_graphene_vec3_negate;
	void function(graphene_vec3_t* v, graphene_vec3_t* res) c_graphene_vec3_normalize;
	void function(graphene_vec3_t* v, float factor, graphene_vec3_t* res) c_graphene_vec3_scale;
	void function(graphene_vec3_t* a, graphene_vec3_t* b, graphene_vec3_t* res) c_graphene_vec3_subtract;
	void function(graphene_vec3_t* v, float* dest) c_graphene_vec3_to_float;
	graphene_vec3_t* function() c_graphene_vec3_one;
	graphene_vec3_t* function() c_graphene_vec3_x_axis;
	graphene_vec3_t* function() c_graphene_vec3_y_axis;
	graphene_vec3_t* function() c_graphene_vec3_z_axis;
	graphene_vec3_t* function() c_graphene_vec3_zero;

	// graphene.Vec4

	GType function() c_graphene_vec4_get_type;
	graphene_vec4_t* function() c_graphene_vec4_alloc;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_add;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_divide;
	float function(graphene_vec4_t* a, graphene_vec4_t* b) c_graphene_vec4_dot;
	int function(graphene_vec4_t* v1, graphene_vec4_t* v2) c_graphene_vec4_equal;
	void function(graphene_vec4_t* v) c_graphene_vec4_free;
	float function(graphene_vec4_t* v) c_graphene_vec4_get_w;
	float function(graphene_vec4_t* v) c_graphene_vec4_get_x;
	void function(graphene_vec4_t* v, graphene_vec2_t* res) c_graphene_vec4_get_xy;
	void function(graphene_vec4_t* v, graphene_vec3_t* res) c_graphene_vec4_get_xyz;
	float function(graphene_vec4_t* v) c_graphene_vec4_get_y;
	float function(graphene_vec4_t* v) c_graphene_vec4_get_z;
	graphene_vec4_t* function(graphene_vec4_t* v, float x, float y, float z, float w) c_graphene_vec4_init;
	graphene_vec4_t* function(graphene_vec4_t* v, float* src) c_graphene_vec4_init_from_float;
	graphene_vec4_t* function(graphene_vec4_t* v, graphene_vec2_t* src, float z, float w) c_graphene_vec4_init_from_vec2;
	graphene_vec4_t* function(graphene_vec4_t* v, graphene_vec3_t* src, float w) c_graphene_vec4_init_from_vec3;
	graphene_vec4_t* function(graphene_vec4_t* v, graphene_vec4_t* src) c_graphene_vec4_init_from_vec4;
	void function(graphene_vec4_t* v1, graphene_vec4_t* v2, double factor, graphene_vec4_t* res) c_graphene_vec4_interpolate;
	float function(graphene_vec4_t* v) c_graphene_vec4_length;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_max;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_min;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_multiply;
	int function(graphene_vec4_t* v1, graphene_vec4_t* v2, float epsilon) c_graphene_vec4_near;
	void function(graphene_vec4_t* v, graphene_vec4_t* res) c_graphene_vec4_negate;
	void function(graphene_vec4_t* v, graphene_vec4_t* res) c_graphene_vec4_normalize;
	void function(graphene_vec4_t* v, float factor, graphene_vec4_t* res) c_graphene_vec4_scale;
	void function(graphene_vec4_t* a, graphene_vec4_t* b, graphene_vec4_t* res) c_graphene_vec4_subtract;
	void function(graphene_vec4_t* v, float* dest) c_graphene_vec4_to_float;
	graphene_vec4_t* function() c_graphene_vec4_one;
	graphene_vec4_t* function() c_graphene_vec4_w_axis;
	graphene_vec4_t* function() c_graphene_vec4_x_axis;
	graphene_vec4_t* function() c_graphene_vec4_y_axis;
	graphene_vec4_t* function() c_graphene_vec4_z_axis;
	graphene_vec4_t* function() c_graphene_vec4_zero;
}


// graphene.Box

alias c_graphene_box_get_type graphene_box_get_type;
alias c_graphene_box_alloc graphene_box_alloc;
alias c_graphene_box_contains_box graphene_box_contains_box;
alias c_graphene_box_contains_point graphene_box_contains_point;
alias c_graphene_box_equal graphene_box_equal;
alias c_graphene_box_expand graphene_box_expand;
alias c_graphene_box_expand_scalar graphene_box_expand_scalar;
alias c_graphene_box_expand_vec3 graphene_box_expand_vec3;
alias c_graphene_box_free graphene_box_free;
alias c_graphene_box_get_bounding_sphere graphene_box_get_bounding_sphere;
alias c_graphene_box_get_center graphene_box_get_center;
alias c_graphene_box_get_depth graphene_box_get_depth;
alias c_graphene_box_get_height graphene_box_get_height;
alias c_graphene_box_get_max graphene_box_get_max;
alias c_graphene_box_get_min graphene_box_get_min;
alias c_graphene_box_get_size graphene_box_get_size;
alias c_graphene_box_get_vertices graphene_box_get_vertices;
alias c_graphene_box_get_width graphene_box_get_width;
alias c_graphene_box_init graphene_box_init;
alias c_graphene_box_init_from_box graphene_box_init_from_box;
alias c_graphene_box_init_from_points graphene_box_init_from_points;
alias c_graphene_box_init_from_vec3 graphene_box_init_from_vec3;
alias c_graphene_box_init_from_vectors graphene_box_init_from_vectors;
alias c_graphene_box_intersection graphene_box_intersection;
alias c_graphene_box_union graphene_box_union;
alias c_graphene_box_empty graphene_box_empty;
alias c_graphene_box_infinite graphene_box_infinite;
alias c_graphene_box_minus_one graphene_box_minus_one;
alias c_graphene_box_one graphene_box_one;
alias c_graphene_box_one_minus_one graphene_box_one_minus_one;
alias c_graphene_box_zero graphene_box_zero;

// graphene.Euler

alias c_graphene_euler_get_type graphene_euler_get_type;
alias c_graphene_euler_alloc graphene_euler_alloc;
alias c_graphene_euler_equal graphene_euler_equal;
alias c_graphene_euler_free graphene_euler_free;
alias c_graphene_euler_get_alpha graphene_euler_get_alpha;
alias c_graphene_euler_get_beta graphene_euler_get_beta;
alias c_graphene_euler_get_gamma graphene_euler_get_gamma;
alias c_graphene_euler_get_order graphene_euler_get_order;
alias c_graphene_euler_get_x graphene_euler_get_x;
alias c_graphene_euler_get_y graphene_euler_get_y;
alias c_graphene_euler_get_z graphene_euler_get_z;
alias c_graphene_euler_init graphene_euler_init;
alias c_graphene_euler_init_from_euler graphene_euler_init_from_euler;
alias c_graphene_euler_init_from_matrix graphene_euler_init_from_matrix;
alias c_graphene_euler_init_from_quaternion graphene_euler_init_from_quaternion;
alias c_graphene_euler_init_from_radians graphene_euler_init_from_radians;
alias c_graphene_euler_init_from_vec3 graphene_euler_init_from_vec3;
alias c_graphene_euler_init_with_order graphene_euler_init_with_order;
alias c_graphene_euler_reorder graphene_euler_reorder;
alias c_graphene_euler_to_matrix graphene_euler_to_matrix;
alias c_graphene_euler_to_quaternion graphene_euler_to_quaternion;
alias c_graphene_euler_to_vec3 graphene_euler_to_vec3;

// graphene.Frustum

alias c_graphene_frustum_get_type graphene_frustum_get_type;
alias c_graphene_frustum_alloc graphene_frustum_alloc;
alias c_graphene_frustum_contains_point graphene_frustum_contains_point;
alias c_graphene_frustum_equal graphene_frustum_equal;
alias c_graphene_frustum_free graphene_frustum_free;
alias c_graphene_frustum_get_planes graphene_frustum_get_planes;
alias c_graphene_frustum_init graphene_frustum_init;
alias c_graphene_frustum_init_from_frustum graphene_frustum_init_from_frustum;
alias c_graphene_frustum_init_from_matrix graphene_frustum_init_from_matrix;
alias c_graphene_frustum_intersects_box graphene_frustum_intersects_box;
alias c_graphene_frustum_intersects_sphere graphene_frustum_intersects_sphere;

// graphene.Matrix

alias c_graphene_matrix_get_type graphene_matrix_get_type;
alias c_graphene_matrix_alloc graphene_matrix_alloc;
alias c_graphene_matrix_decompose graphene_matrix_decompose;
alias c_graphene_matrix_determinant graphene_matrix_determinant;
alias c_graphene_matrix_equal graphene_matrix_equal;
alias c_graphene_matrix_equal_fast graphene_matrix_equal_fast;
alias c_graphene_matrix_free graphene_matrix_free;
alias c_graphene_matrix_get_row graphene_matrix_get_row;
alias c_graphene_matrix_get_value graphene_matrix_get_value;
alias c_graphene_matrix_get_x_scale graphene_matrix_get_x_scale;
alias c_graphene_matrix_get_x_translation graphene_matrix_get_x_translation;
alias c_graphene_matrix_get_y_scale graphene_matrix_get_y_scale;
alias c_graphene_matrix_get_y_translation graphene_matrix_get_y_translation;
alias c_graphene_matrix_get_z_scale graphene_matrix_get_z_scale;
alias c_graphene_matrix_get_z_translation graphene_matrix_get_z_translation;
alias c_graphene_matrix_init_from_2d graphene_matrix_init_from_2d;
alias c_graphene_matrix_init_from_float graphene_matrix_init_from_float;
alias c_graphene_matrix_init_from_matrix graphene_matrix_init_from_matrix;
alias c_graphene_matrix_init_from_vec4 graphene_matrix_init_from_vec4;
alias c_graphene_matrix_init_frustum graphene_matrix_init_frustum;
alias c_graphene_matrix_init_identity graphene_matrix_init_identity;
alias c_graphene_matrix_init_look_at graphene_matrix_init_look_at;
alias c_graphene_matrix_init_ortho graphene_matrix_init_ortho;
alias c_graphene_matrix_init_perspective graphene_matrix_init_perspective;
alias c_graphene_matrix_init_rotate graphene_matrix_init_rotate;
alias c_graphene_matrix_init_scale graphene_matrix_init_scale;
alias c_graphene_matrix_init_skew graphene_matrix_init_skew;
alias c_graphene_matrix_init_translate graphene_matrix_init_translate;
alias c_graphene_matrix_interpolate graphene_matrix_interpolate;
alias c_graphene_matrix_inverse graphene_matrix_inverse;
alias c_graphene_matrix_is_2d graphene_matrix_is_2d;
alias c_graphene_matrix_is_backface_visible graphene_matrix_is_backface_visible;
alias c_graphene_matrix_is_identity graphene_matrix_is_identity;
alias c_graphene_matrix_is_singular graphene_matrix_is_singular;
alias c_graphene_matrix_multiply graphene_matrix_multiply;
alias c_graphene_matrix_near graphene_matrix_near;
alias c_graphene_matrix_normalize graphene_matrix_normalize;
alias c_graphene_matrix_perspective graphene_matrix_perspective;
alias c_graphene_matrix_print graphene_matrix_print;
alias c_graphene_matrix_project_point graphene_matrix_project_point;
alias c_graphene_matrix_project_rect graphene_matrix_project_rect;
alias c_graphene_matrix_project_rect_bounds graphene_matrix_project_rect_bounds;
alias c_graphene_matrix_rotate graphene_matrix_rotate;
alias c_graphene_matrix_rotate_euler graphene_matrix_rotate_euler;
alias c_graphene_matrix_rotate_quaternion graphene_matrix_rotate_quaternion;
alias c_graphene_matrix_rotate_x graphene_matrix_rotate_x;
alias c_graphene_matrix_rotate_y graphene_matrix_rotate_y;
alias c_graphene_matrix_rotate_z graphene_matrix_rotate_z;
alias c_graphene_matrix_scale graphene_matrix_scale;
alias c_graphene_matrix_skew_xy graphene_matrix_skew_xy;
alias c_graphene_matrix_skew_xz graphene_matrix_skew_xz;
alias c_graphene_matrix_skew_yz graphene_matrix_skew_yz;
alias c_graphene_matrix_to_2d graphene_matrix_to_2d;
alias c_graphene_matrix_to_float graphene_matrix_to_float;
alias c_graphene_matrix_transform_bounds graphene_matrix_transform_bounds;
alias c_graphene_matrix_transform_box graphene_matrix_transform_box;
alias c_graphene_matrix_transform_point graphene_matrix_transform_point;
alias c_graphene_matrix_transform_point3d graphene_matrix_transform_point3d;
alias c_graphene_matrix_transform_ray graphene_matrix_transform_ray;
alias c_graphene_matrix_transform_rect graphene_matrix_transform_rect;
alias c_graphene_matrix_transform_sphere graphene_matrix_transform_sphere;
alias c_graphene_matrix_transform_vec3 graphene_matrix_transform_vec3;
alias c_graphene_matrix_transform_vec4 graphene_matrix_transform_vec4;
alias c_graphene_matrix_translate graphene_matrix_translate;
alias c_graphene_matrix_transpose graphene_matrix_transpose;
alias c_graphene_matrix_unproject_point3d graphene_matrix_unproject_point3d;
alias c_graphene_matrix_untransform_bounds graphene_matrix_untransform_bounds;
alias c_graphene_matrix_untransform_point graphene_matrix_untransform_point;

// graphene.Plane

alias c_graphene_plane_get_type graphene_plane_get_type;
alias c_graphene_plane_alloc graphene_plane_alloc;
alias c_graphene_plane_distance graphene_plane_distance;
alias c_graphene_plane_equal graphene_plane_equal;
alias c_graphene_plane_free graphene_plane_free;
alias c_graphene_plane_get_constant graphene_plane_get_constant;
alias c_graphene_plane_get_normal graphene_plane_get_normal;
alias c_graphene_plane_init graphene_plane_init;
alias c_graphene_plane_init_from_plane graphene_plane_init_from_plane;
alias c_graphene_plane_init_from_point graphene_plane_init_from_point;
alias c_graphene_plane_init_from_points graphene_plane_init_from_points;
alias c_graphene_plane_init_from_vec4 graphene_plane_init_from_vec4;
alias c_graphene_plane_negate graphene_plane_negate;
alias c_graphene_plane_normalize graphene_plane_normalize;
alias c_graphene_plane_transform graphene_plane_transform;

// graphene.Point

alias c_graphene_point_get_type graphene_point_get_type;
alias c_graphene_point_alloc graphene_point_alloc;
alias c_graphene_point_distance graphene_point_distance;
alias c_graphene_point_equal graphene_point_equal;
alias c_graphene_point_free graphene_point_free;
alias c_graphene_point_init graphene_point_init;
alias c_graphene_point_init_from_point graphene_point_init_from_point;
alias c_graphene_point_init_from_vec2 graphene_point_init_from_vec2;
alias c_graphene_point_interpolate graphene_point_interpolate;
alias c_graphene_point_near graphene_point_near;
alias c_graphene_point_to_vec2 graphene_point_to_vec2;
alias c_graphene_point_zero graphene_point_zero;

// graphene.Point3D

alias c_graphene_point3d_get_type graphene_point3d_get_type;
alias c_graphene_point3d_alloc graphene_point3d_alloc;
alias c_graphene_point3d_cross graphene_point3d_cross;
alias c_graphene_point3d_distance graphene_point3d_distance;
alias c_graphene_point3d_dot graphene_point3d_dot;
alias c_graphene_point3d_equal graphene_point3d_equal;
alias c_graphene_point3d_free graphene_point3d_free;
alias c_graphene_point3d_init graphene_point3d_init;
alias c_graphene_point3d_init_from_point graphene_point3d_init_from_point;
alias c_graphene_point3d_init_from_vec3 graphene_point3d_init_from_vec3;
alias c_graphene_point3d_interpolate graphene_point3d_interpolate;
alias c_graphene_point3d_length graphene_point3d_length;
alias c_graphene_point3d_near graphene_point3d_near;
alias c_graphene_point3d_normalize graphene_point3d_normalize;
alias c_graphene_point3d_normalize_viewport graphene_point3d_normalize_viewport;
alias c_graphene_point3d_scale graphene_point3d_scale;
alias c_graphene_point3d_to_vec3 graphene_point3d_to_vec3;
alias c_graphene_point3d_zero graphene_point3d_zero;

// graphene.Quad

alias c_graphene_quad_get_type graphene_quad_get_type;
alias c_graphene_quad_alloc graphene_quad_alloc;
alias c_graphene_quad_bounds graphene_quad_bounds;
alias c_graphene_quad_contains graphene_quad_contains;
alias c_graphene_quad_free graphene_quad_free;
alias c_graphene_quad_get_point graphene_quad_get_point;
alias c_graphene_quad_init graphene_quad_init;
alias c_graphene_quad_init_from_points graphene_quad_init_from_points;
alias c_graphene_quad_init_from_rect graphene_quad_init_from_rect;

// graphene.Quaternion

alias c_graphene_quaternion_get_type graphene_quaternion_get_type;
alias c_graphene_quaternion_alloc graphene_quaternion_alloc;
alias c_graphene_quaternion_add graphene_quaternion_add;
alias c_graphene_quaternion_dot graphene_quaternion_dot;
alias c_graphene_quaternion_equal graphene_quaternion_equal;
alias c_graphene_quaternion_free graphene_quaternion_free;
alias c_graphene_quaternion_init graphene_quaternion_init;
alias c_graphene_quaternion_init_from_angle_vec3 graphene_quaternion_init_from_angle_vec3;
alias c_graphene_quaternion_init_from_angles graphene_quaternion_init_from_angles;
alias c_graphene_quaternion_init_from_euler graphene_quaternion_init_from_euler;
alias c_graphene_quaternion_init_from_matrix graphene_quaternion_init_from_matrix;
alias c_graphene_quaternion_init_from_quaternion graphene_quaternion_init_from_quaternion;
alias c_graphene_quaternion_init_from_radians graphene_quaternion_init_from_radians;
alias c_graphene_quaternion_init_from_vec4 graphene_quaternion_init_from_vec4;
alias c_graphene_quaternion_init_identity graphene_quaternion_init_identity;
alias c_graphene_quaternion_invert graphene_quaternion_invert;
alias c_graphene_quaternion_multiply graphene_quaternion_multiply;
alias c_graphene_quaternion_normalize graphene_quaternion_normalize;
alias c_graphene_quaternion_scale graphene_quaternion_scale;
alias c_graphene_quaternion_slerp graphene_quaternion_slerp;
alias c_graphene_quaternion_to_angle_vec3 graphene_quaternion_to_angle_vec3;
alias c_graphene_quaternion_to_angles graphene_quaternion_to_angles;
alias c_graphene_quaternion_to_matrix graphene_quaternion_to_matrix;
alias c_graphene_quaternion_to_radians graphene_quaternion_to_radians;
alias c_graphene_quaternion_to_vec4 graphene_quaternion_to_vec4;

// graphene.Ray

alias c_graphene_ray_get_type graphene_ray_get_type;
alias c_graphene_ray_alloc graphene_ray_alloc;
alias c_graphene_ray_equal graphene_ray_equal;
alias c_graphene_ray_free graphene_ray_free;
alias c_graphene_ray_get_closest_point_to_point graphene_ray_get_closest_point_to_point;
alias c_graphene_ray_get_direction graphene_ray_get_direction;
alias c_graphene_ray_get_distance_to_plane graphene_ray_get_distance_to_plane;
alias c_graphene_ray_get_distance_to_point graphene_ray_get_distance_to_point;
alias c_graphene_ray_get_origin graphene_ray_get_origin;
alias c_graphene_ray_get_position_at graphene_ray_get_position_at;
alias c_graphene_ray_init graphene_ray_init;
alias c_graphene_ray_init_from_ray graphene_ray_init_from_ray;
alias c_graphene_ray_init_from_vec3 graphene_ray_init_from_vec3;
alias c_graphene_ray_intersect_box graphene_ray_intersect_box;
alias c_graphene_ray_intersect_sphere graphene_ray_intersect_sphere;
alias c_graphene_ray_intersect_triangle graphene_ray_intersect_triangle;
alias c_graphene_ray_intersects_box graphene_ray_intersects_box;
alias c_graphene_ray_intersects_sphere graphene_ray_intersects_sphere;
alias c_graphene_ray_intersects_triangle graphene_ray_intersects_triangle;

// graphene.Rect

alias c_graphene_rect_get_type graphene_rect_get_type;
alias c_graphene_rect_contains_point graphene_rect_contains_point;
alias c_graphene_rect_contains_rect graphene_rect_contains_rect;
alias c_graphene_rect_equal graphene_rect_equal;
alias c_graphene_rect_expand graphene_rect_expand;
alias c_graphene_rect_free graphene_rect_free;
alias c_graphene_rect_get_area graphene_rect_get_area;
alias c_graphene_rect_get_bottom_left graphene_rect_get_bottom_left;
alias c_graphene_rect_get_bottom_right graphene_rect_get_bottom_right;
alias c_graphene_rect_get_center graphene_rect_get_center;
alias c_graphene_rect_get_height graphene_rect_get_height;
alias c_graphene_rect_get_top_left graphene_rect_get_top_left;
alias c_graphene_rect_get_top_right graphene_rect_get_top_right;
alias c_graphene_rect_get_vertices graphene_rect_get_vertices;
alias c_graphene_rect_get_width graphene_rect_get_width;
alias c_graphene_rect_get_x graphene_rect_get_x;
alias c_graphene_rect_get_y graphene_rect_get_y;
alias c_graphene_rect_init graphene_rect_init;
alias c_graphene_rect_init_from_rect graphene_rect_init_from_rect;
alias c_graphene_rect_inset graphene_rect_inset;
alias c_graphene_rect_inset_r graphene_rect_inset_r;
alias c_graphene_rect_interpolate graphene_rect_interpolate;
alias c_graphene_rect_intersection graphene_rect_intersection;
alias c_graphene_rect_normalize graphene_rect_normalize;
alias c_graphene_rect_normalize_r graphene_rect_normalize_r;
alias c_graphene_rect_offset graphene_rect_offset;
alias c_graphene_rect_offset_r graphene_rect_offset_r;
alias c_graphene_rect_round graphene_rect_round;
alias c_graphene_rect_round_extents graphene_rect_round_extents;
alias c_graphene_rect_round_to_pixel graphene_rect_round_to_pixel;
alias c_graphene_rect_scale graphene_rect_scale;
alias c_graphene_rect_union graphene_rect_union;
alias c_graphene_rect_alloc graphene_rect_alloc;
alias c_graphene_rect_zero graphene_rect_zero;

// graphene.Size

alias c_graphene_size_get_type graphene_size_get_type;
alias c_graphene_size_alloc graphene_size_alloc;
alias c_graphene_size_equal graphene_size_equal;
alias c_graphene_size_free graphene_size_free;
alias c_graphene_size_init graphene_size_init;
alias c_graphene_size_init_from_size graphene_size_init_from_size;
alias c_graphene_size_interpolate graphene_size_interpolate;
alias c_graphene_size_scale graphene_size_scale;
alias c_graphene_size_zero graphene_size_zero;

// graphene.Sphere

alias c_graphene_sphere_get_type graphene_sphere_get_type;
alias c_graphene_sphere_alloc graphene_sphere_alloc;
alias c_graphene_sphere_contains_point graphene_sphere_contains_point;
alias c_graphene_sphere_distance graphene_sphere_distance;
alias c_graphene_sphere_equal graphene_sphere_equal;
alias c_graphene_sphere_free graphene_sphere_free;
alias c_graphene_sphere_get_bounding_box graphene_sphere_get_bounding_box;
alias c_graphene_sphere_get_center graphene_sphere_get_center;
alias c_graphene_sphere_get_radius graphene_sphere_get_radius;
alias c_graphene_sphere_init graphene_sphere_init;
alias c_graphene_sphere_init_from_points graphene_sphere_init_from_points;
alias c_graphene_sphere_init_from_vectors graphene_sphere_init_from_vectors;
alias c_graphene_sphere_is_empty graphene_sphere_is_empty;
alias c_graphene_sphere_translate graphene_sphere_translate;

// graphene.Triangle

alias c_graphene_triangle_get_type graphene_triangle_get_type;
alias c_graphene_triangle_alloc graphene_triangle_alloc;
alias c_graphene_triangle_contains_point graphene_triangle_contains_point;
alias c_graphene_triangle_equal graphene_triangle_equal;
alias c_graphene_triangle_free graphene_triangle_free;
alias c_graphene_triangle_get_area graphene_triangle_get_area;
alias c_graphene_triangle_get_barycoords graphene_triangle_get_barycoords;
alias c_graphene_triangle_get_bounding_box graphene_triangle_get_bounding_box;
alias c_graphene_triangle_get_midpoint graphene_triangle_get_midpoint;
alias c_graphene_triangle_get_normal graphene_triangle_get_normal;
alias c_graphene_triangle_get_plane graphene_triangle_get_plane;
alias c_graphene_triangle_get_points graphene_triangle_get_points;
alias c_graphene_triangle_get_uv graphene_triangle_get_uv;
alias c_graphene_triangle_get_vertices graphene_triangle_get_vertices;
alias c_graphene_triangle_init_from_float graphene_triangle_init_from_float;
alias c_graphene_triangle_init_from_point3d graphene_triangle_init_from_point3d;
alias c_graphene_triangle_init_from_vec3 graphene_triangle_init_from_vec3;

// graphene.Vec2

alias c_graphene_vec2_get_type graphene_vec2_get_type;
alias c_graphene_vec2_alloc graphene_vec2_alloc;
alias c_graphene_vec2_add graphene_vec2_add;
alias c_graphene_vec2_divide graphene_vec2_divide;
alias c_graphene_vec2_dot graphene_vec2_dot;
alias c_graphene_vec2_equal graphene_vec2_equal;
alias c_graphene_vec2_free graphene_vec2_free;
alias c_graphene_vec2_get_x graphene_vec2_get_x;
alias c_graphene_vec2_get_y graphene_vec2_get_y;
alias c_graphene_vec2_init graphene_vec2_init;
alias c_graphene_vec2_init_from_float graphene_vec2_init_from_float;
alias c_graphene_vec2_init_from_vec2 graphene_vec2_init_from_vec2;
alias c_graphene_vec2_interpolate graphene_vec2_interpolate;
alias c_graphene_vec2_length graphene_vec2_length;
alias c_graphene_vec2_max graphene_vec2_max;
alias c_graphene_vec2_min graphene_vec2_min;
alias c_graphene_vec2_multiply graphene_vec2_multiply;
alias c_graphene_vec2_near graphene_vec2_near;
alias c_graphene_vec2_negate graphene_vec2_negate;
alias c_graphene_vec2_normalize graphene_vec2_normalize;
alias c_graphene_vec2_scale graphene_vec2_scale;
alias c_graphene_vec2_subtract graphene_vec2_subtract;
alias c_graphene_vec2_to_float graphene_vec2_to_float;
alias c_graphene_vec2_one graphene_vec2_one;
alias c_graphene_vec2_x_axis graphene_vec2_x_axis;
alias c_graphene_vec2_y_axis graphene_vec2_y_axis;
alias c_graphene_vec2_zero graphene_vec2_zero;

// graphene.Vec3

alias c_graphene_vec3_get_type graphene_vec3_get_type;
alias c_graphene_vec3_alloc graphene_vec3_alloc;
alias c_graphene_vec3_add graphene_vec3_add;
alias c_graphene_vec3_cross graphene_vec3_cross;
alias c_graphene_vec3_divide graphene_vec3_divide;
alias c_graphene_vec3_dot graphene_vec3_dot;
alias c_graphene_vec3_equal graphene_vec3_equal;
alias c_graphene_vec3_free graphene_vec3_free;
alias c_graphene_vec3_get_x graphene_vec3_get_x;
alias c_graphene_vec3_get_xy graphene_vec3_get_xy;
alias c_graphene_vec3_get_xy0 graphene_vec3_get_xy0;
alias c_graphene_vec3_get_xyz0 graphene_vec3_get_xyz0;
alias c_graphene_vec3_get_xyz1 graphene_vec3_get_xyz1;
alias c_graphene_vec3_get_xyzw graphene_vec3_get_xyzw;
alias c_graphene_vec3_get_y graphene_vec3_get_y;
alias c_graphene_vec3_get_z graphene_vec3_get_z;
alias c_graphene_vec3_init graphene_vec3_init;
alias c_graphene_vec3_init_from_float graphene_vec3_init_from_float;
alias c_graphene_vec3_init_from_vec3 graphene_vec3_init_from_vec3;
alias c_graphene_vec3_interpolate graphene_vec3_interpolate;
alias c_graphene_vec3_length graphene_vec3_length;
alias c_graphene_vec3_max graphene_vec3_max;
alias c_graphene_vec3_min graphene_vec3_min;
alias c_graphene_vec3_multiply graphene_vec3_multiply;
alias c_graphene_vec3_near graphene_vec3_near;
alias c_graphene_vec3_negate graphene_vec3_negate;
alias c_graphene_vec3_normalize graphene_vec3_normalize;
alias c_graphene_vec3_scale graphene_vec3_scale;
alias c_graphene_vec3_subtract graphene_vec3_subtract;
alias c_graphene_vec3_to_float graphene_vec3_to_float;
alias c_graphene_vec3_one graphene_vec3_one;
alias c_graphene_vec3_x_axis graphene_vec3_x_axis;
alias c_graphene_vec3_y_axis graphene_vec3_y_axis;
alias c_graphene_vec3_z_axis graphene_vec3_z_axis;
alias c_graphene_vec3_zero graphene_vec3_zero;

// graphene.Vec4

alias c_graphene_vec4_get_type graphene_vec4_get_type;
alias c_graphene_vec4_alloc graphene_vec4_alloc;
alias c_graphene_vec4_add graphene_vec4_add;
alias c_graphene_vec4_divide graphene_vec4_divide;
alias c_graphene_vec4_dot graphene_vec4_dot;
alias c_graphene_vec4_equal graphene_vec4_equal;
alias c_graphene_vec4_free graphene_vec4_free;
alias c_graphene_vec4_get_w graphene_vec4_get_w;
alias c_graphene_vec4_get_x graphene_vec4_get_x;
alias c_graphene_vec4_get_xy graphene_vec4_get_xy;
alias c_graphene_vec4_get_xyz graphene_vec4_get_xyz;
alias c_graphene_vec4_get_y graphene_vec4_get_y;
alias c_graphene_vec4_get_z graphene_vec4_get_z;
alias c_graphene_vec4_init graphene_vec4_init;
alias c_graphene_vec4_init_from_float graphene_vec4_init_from_float;
alias c_graphene_vec4_init_from_vec2 graphene_vec4_init_from_vec2;
alias c_graphene_vec4_init_from_vec3 graphene_vec4_init_from_vec3;
alias c_graphene_vec4_init_from_vec4 graphene_vec4_init_from_vec4;
alias c_graphene_vec4_interpolate graphene_vec4_interpolate;
alias c_graphene_vec4_length graphene_vec4_length;
alias c_graphene_vec4_max graphene_vec4_max;
alias c_graphene_vec4_min graphene_vec4_min;
alias c_graphene_vec4_multiply graphene_vec4_multiply;
alias c_graphene_vec4_near graphene_vec4_near;
alias c_graphene_vec4_negate graphene_vec4_negate;
alias c_graphene_vec4_normalize graphene_vec4_normalize;
alias c_graphene_vec4_scale graphene_vec4_scale;
alias c_graphene_vec4_subtract graphene_vec4_subtract;
alias c_graphene_vec4_to_float graphene_vec4_to_float;
alias c_graphene_vec4_one graphene_vec4_one;
alias c_graphene_vec4_w_axis graphene_vec4_w_axis;
alias c_graphene_vec4_x_axis graphene_vec4_x_axis;
alias c_graphene_vec4_y_axis graphene_vec4_y_axis;
alias c_graphene_vec4_z_axis graphene_vec4_z_axis;
alias c_graphene_vec4_zero graphene_vec4_zero;
