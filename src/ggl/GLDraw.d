/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ggl.GLDraw;

private import ggl.Types;

private:
extern(C)
{
	void gdk_gl_draw_cube(gboolean solid, double size);
	void gdk_gl_draw_sphere(gboolean solid, double radius, int slices, int stacks);
	void gdk_gl_draw_cone(gboolean solid, double base, double height, int slices, int stacks);
	void gdk_gl_draw_torus(gboolean solid, double inner_radius, double outer_radius, int nsides, int rings);
	void gdk_gl_draw_tetrahedron(gboolean solid);
	void gdk_gl_draw_octahedron(gboolean solid);
	void gdk_gl_draw_dodecahedron(gboolean solid);
	void gdk_gl_draw_icosahedron(gboolean solid);
	void gdk_gl_draw_teapot(gboolean solid, double scale);
};

/**
 * Functions for generating easily recognizable 3D geometric objects.
 */
public:
class GLDraw
{

	this()
	{
	}

	public:

	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Draw";
	}

	/**
	 * Renders a cube.
	 * The cube is centered at the modeling coordinates origin with sides of length size.
	 */
	static void cube(bit solid, double size)
	{
		gdk_gl_draw_cube(solid, size);
	}

	/**
	 * Renders a sphere centered at the modeling coordinates origin of the specified radius.
	 * The sphere is subdivided around the Z axis into slices and along the Z axis into stacks.
	 */
	static void sphere(bit solid, double radius, int slices, int stacks)
	{
		gdk_gl_draw_sphere(solid, radius, slices, stacks);
	}

	/**
	 * Renders a cone oriented along the Z axis.
	 * The base of the cone is placed at Z = 0, and the top at Z = height.
	 * The cone is subdivided around the Z axis into slices, and along the Z axis into stacks.
	 */
	static void cone(bit solid, double base, double height, int slices, int stacks)
	{
		gdk_gl_draw_cone(solid, base, height, slices, stacks);
	}
	
	/**
	 * Renders a torus (doughnut) centered at the modeling coordinates origin whose axis is aligned with the Z axis.
	 */
	static void torus(bit solid, double inner_radius, double outer_radius, int nsides, int rings)
	{
		gdk_gl_draw_torus(solid, inner_radius, outer_radius, nsides, rings);
	}
	
	/**
	 * Renders a tetrahedron centered at the modeling coordinates origin with a radius of the square root of 3.
	 */
	static void tetrahedron(bit solid)
	{
		gdk_gl_draw_tetrahedron(solid);
	}
	
	/**
	 * Renders a octahedron centered at the modeling coordinates origin with a radius of 1.0.
	 */
	static void octahedron(bit solid)
	{
		gdk_gl_draw_octahedron(solid);
	}
	

	/**
	 * Renders a dodecahedron centered at the modeling coordinates origin with a radius of the square root of 3.
	 */
	static void dodecahedron(bit solid)
	{
		gdk_gl_draw_dodecahedron(solid);
	}
	
	/**
	 * Renders a icosahedron.
	 * The icosahedron is centered at the modeling coordinates origin and has a radius of 1.0.
	 */
	static void icosahedron(bit solid)
	{
		gdk_gl_draw_icosahedron(solid);
	}
	
	/**
	 * Renders a teapot. Both surface normals and texture coordinates for the teapot are generated.
	 * The teapot is generated with OpenGL evaluators.
	 */
	static void teapot(bit solid, double scale)
	{
		gdk_gl_draw_teapot(solid, scale);
	}

}
