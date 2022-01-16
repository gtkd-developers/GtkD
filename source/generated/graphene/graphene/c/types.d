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


module graphene.c.types;

public import gobject.c.types;


/**
 * Specify the order of the rotations on each axis.
 *
 * The %GRAPHENE_EULER_ORDER_DEFAULT value is special, and is used
 * as an alias for one of the other orders.
 *
 * Since: 1.2
 */
public enum graphene_euler_order_t
{
	/**
	 * Rotate in the default order; the
	 * default order is one of the following enumeration values
	 */
	DEFAULT = -1,
	/**
	 * Rotate in the X, Y, and Z order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SXYZ
	 */
	XYZ = 0,
	/**
	 * Rotate in the Y, Z, and X order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SYZX
	 */
	YZX = 1,
	/**
	 * Rotate in the Z, X, and Y order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SZXY
	 */
	ZXY = 2,
	/**
	 * Rotate in the X, Z, and Y order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SXZY
	 */
	XZY = 3,
	/**
	 * Rotate in the Y, X, and Z order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SYXZ
	 */
	YXZ = 4,
	/**
	 * Rotate in the Z, Y, and X order. Deprecated in
	 * Graphene 1.10, it's an alias for %GRAPHENE_EULER_ORDER_SZYX
	 */
	ZYX = 5,
	/**
	 * Defines a static rotation along the X, Y, and Z axes (Since: 1.10)
	 */
	SXYZ = 6,
	/**
	 * Defines a static rotation along the X, Y, and X axes (Since: 1.10)
	 */
	SXYX = 7,
	/**
	 * Defines a static rotation along the X, Z, and Y axes (Since: 1.10)
	 */
	SXZY = 8,
	/**
	 * Defines a static rotation along the X, Z, and X axes (Since: 1.10)
	 */
	SXZX = 9,
	/**
	 * Defines a static rotation along the Y, Z, and X axes (Since: 1.10)
	 */
	SYZX = 10,
	/**
	 * Defines a static rotation along the Y, Z, and Y axes (Since: 1.10)
	 */
	SYZY = 11,
	/**
	 * Defines a static rotation along the Y, X, and Z axes (Since: 1.10)
	 */
	SYXZ = 12,
	/**
	 * Defines a static rotation along the Y, X, and Y axes (Since: 1.10)
	 */
	SYXY = 13,
	/**
	 * Defines a static rotation along the Z, X, and Y axes (Since: 1.10)
	 */
	SZXY = 14,
	/**
	 * Defines a static rotation along the Z, X, and Z axes (Since: 1.10)
	 */
	SZXZ = 15,
	/**
	 * Defines a static rotation along the Z, Y, and X axes (Since: 1.10)
	 */
	SZYX = 16,
	/**
	 * Defines a static rotation along the Z, Y, and Z axes (Since: 1.10)
	 */
	SZYZ = 17,
	/**
	 * Defines a relative rotation along the Z, Y, and X axes (Since: 1.10)
	 */
	RZYX = 18,
	/**
	 * Defines a relative rotation along the X, Y, and X axes (Since: 1.10)
	 */
	RXYX = 19,
	/**
	 * Defines a relative rotation along the Y, Z, and X axes (Since: 1.10)
	 */
	RYZX = 20,
	/**
	 * Defines a relative rotation along the X, Z, and X axes (Since: 1.10)
	 */
	RXZX = 21,
	/**
	 * Defines a relative rotation along the X, Z, and Y axes (Since: 1.10)
	 */
	RXZY = 22,
	/**
	 * Defines a relative rotation along the Y, Z, and Y axes (Since: 1.10)
	 */
	RYZY = 23,
	/**
	 * Defines a relative rotation along the Z, X, and Y axes (Since: 1.10)
	 */
	RZXY = 24,
	/**
	 * Defines a relative rotation along the Y, X, and Y axes (Since: 1.10)
	 */
	RYXY = 25,
	/**
	 * Defines a relative rotation along the Y, X, and Z axes (Since: 1.10)
	 */
	RYXZ = 26,
	/**
	 * Defines a relative rotation along the Z, X, and Z axes (Since: 1.10)
	 */
	RZXZ = 27,
	/**
	 * Defines a relative rotation along the X, Y, and Z axes (Since: 1.10)
	 */
	RXYZ = 28,
	/**
	 * Defines a relative rotation along the Z, Y, and Z axes (Since: 1.10)
	 */
	RZYZ = 29,
}
alias graphene_euler_order_t EulerOrder;

/**
 * The type of intersection.
 *
 * Since: 1.10
 */
public enum graphene_ray_intersection_kind_t
{
	/**
	 * No intersection
	 */
	NONE = 0,
	/**
	 * The ray is entering the intersected
	 * object
	 */
	ENTER = 1,
	/**
	 * The ray is leaving the intersected
	 * object
	 */
	LEAVE = 2,
}
alias graphene_ray_intersection_kind_t RayIntersectionKind;

struct graphene_box_t
{
	graphene_vec3_t min;
	graphene_vec3_t max;
}

struct graphene_euler_t
{
	graphene_vec3_t angles;
	graphene_euler_order_t order;
}

struct graphene_frustum_t
{
	graphene_plane_t[6] planes;
}

struct graphene_matrix_t
{
	graphene_simd4x4f_t value;
}

struct graphene_plane_t
{
	graphene_vec3_t normal;
	float constant;
}

struct graphene_point_t
{
	/**
	 * the X coordinate of the point
	 */
	float x;
	/**
	 * the Y coordinate of the point
	 */
	float y;
}

struct graphene_point3d_t
{
	/**
	 * the X coordinate
	 */
	float x;
	/**
	 * the Y coordinate
	 */
	float y;
	/**
	 * the Z coordinate
	 */
	float z;
}

struct graphene_quad_t
{
	graphene_point_t[4] points;
}

struct graphene_quaternion_t
{
	float x;
	float y;
	float z;
	float w;
}

struct graphene_ray_t
{
	graphene_vec3_t origin;
	graphene_vec3_t direction;
}

struct graphene_rect_t
{
	/**
	 * the coordinates of the origin of the rectangle
	 */
	graphene_point_t origin;
	/**
	 * the size of the rectangle
	 */
	graphene_size_t size;
}

struct graphene_simd4f_t
{
	float x;
	float y;
	float z;
	float w;
}

struct graphene_simd4x4f_t
{
	graphene_simd4f_t x;
	graphene_simd4f_t y;
	graphene_simd4f_t z;
	graphene_simd4f_t w;
}

struct graphene_size_t
{
	/**
	 * the width
	 */
	float width;
	/**
	 * the height
	 */
	float height;
}

struct graphene_sphere_t
{
	graphene_vec3_t center;
	float radius;
}

struct graphene_triangle_t
{
	graphene_vec3_t a;
	graphene_vec3_t b;
	graphene_vec3_t c;
}

struct graphene_vec2_t
{
	graphene_simd4f_t value;
}

struct graphene_vec3_t
{
	graphene_simd4f_t value;
}

struct graphene_vec4_t
{
	graphene_simd4f_t value;
}

enum PI = 3.141593;
alias GRAPHENE_PI = PI;

enum PI_2 = 1.570796;
alias GRAPHENE_PI_2 = PI_2;

/**
 * Evaluates to the number of components of a #graphene_vec2_t.
 *
 * This symbol is useful when declaring a C array of floating
 * point values to be used with graphene_vec2_init_from_float() and
 * graphene_vec2_to_float(), e.g.
 *
 * |[
 * float v[GRAPHENE_VEC2_LEN];
 *
 * // vec is defined elsewhere
 * graphene_vec2_to_float (&vec, v);
 *
 * for (int i = 0; i < GRAPHENE_VEC2_LEN; i++)
 * fprintf (stdout, "component %d: %g\n", i, v[i]);
 * ]|
 */
enum VEC2_LEN = 2;
alias GRAPHENE_VEC2_LEN = VEC2_LEN;

/**
 * Evaluates to the number of components of a #graphene_vec3_t.
 *
 * This symbol is useful when declaring a C array of floating
 * point values to be used with graphene_vec3_init_from_float() and
 * graphene_vec3_to_float(), e.g.
 *
 * |[
 * float v[GRAPHENE_VEC3_LEN];
 *
 * // vec is defined elsewhere
 * graphene_vec3_to_float (&vec, v);
 *
 * for (int i = 0; i < GRAPHENE_VEC2_LEN; i++)
 * fprintf (stdout, "component %d: %g\n", i, v[i]);
 * ]|
 */
enum VEC3_LEN = 3;
alias GRAPHENE_VEC3_LEN = VEC3_LEN;

/**
 * Evaluates to the number of components of a #graphene_vec4_t.
 *
 * This symbol is useful when declaring a C array of floating
 * point values to be used with graphene_vec4_init_from_float() and
 * graphene_vec4_to_float(), e.g.
 *
 * |[
 * float v[GRAPHENE_VEC4_LEN];
 *
 * // vec is defined elsewhere
 * graphene_vec4_to_float (&vec, v);
 *
 * for (int i = 0; i < GRAPHENE_VEC4_LEN; i++)
 * fprintf (stdout, "component %d: %g\n", i, v[i]);
 * ]|
 */
enum VEC4_LEN = 4;
alias GRAPHENE_VEC4_LEN = VEC4_LEN;
