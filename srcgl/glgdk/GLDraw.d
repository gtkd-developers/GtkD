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

/*
 * Conversion parameters:
 * inFile  = gtkglext-gdkglshapes.html
 * outPack = glgdk
 * outFile = GLDraw
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLDraw
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_draw_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLDraw;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;






/**
 * Description
 */
public class GLDraw
{
	
	/**
	 */
	
	/**
	 * Renders a cube.
	 * The cube is centered at the modeling coordinates origin with sides of
	 * length size.
	 * Params:
	 * solid = TRUE if the cube should be solid.
	 * size = length of cube sides.
	 */
	public static void cube(int solid, double size)
	{
		// void gdk_gl_draw_cube (gboolean solid,  double size);
		gdk_gl_draw_cube(solid, size);
	}
	
	/**
	 * Renders a sphere centered at the modeling coordinates origin of
	 * the specified radius. The sphere is subdivided around the Z axis into
	 * slices and along the Z axis into stacks.
	 * Params:
	 * solid = TRUE if the sphere should be solid.
	 * radius = the radius of the sphere.
	 * slices = the number of subdivisions around the Z axis (similar to lines of
	 *  longitude).
	 * stacks = the number of subdivisions along the Z axis (similar to lines of
	 *  latitude).
	 */
	public static void sphere(int solid, double radius, int slices, int stacks)
	{
		// void gdk_gl_draw_sphere (gboolean solid,  double radius,  int slices,  int stacks);
		gdk_gl_draw_sphere(solid, radius, slices, stacks);
	}
	
	/**
	 * Renders a cone oriented along the Z axis.
	 * The base of the cone is placed at Z = 0, and the top at Z = height.
	 * The cone is subdivided around the Z axis into slices, and along
	 * the Z axis into stacks.
	 * Params:
	 * solid = TRUE if the cone should be solid.
	 * base = the radius of the base of the cone.
	 * height = the height of the cone.
	 * slices = the number of subdivisions around the Z axis.
	 * stacks = the number of subdivisions along the Z axis.
	 */
	public static void cone(int solid, double base, double height, int slices, int stacks)
	{
		// void gdk_gl_draw_cone (gboolean solid,  double base,  double height,  int slices,  int stacks);
		gdk_gl_draw_cone(solid, base, height, slices, stacks);
	}
	
	/**
	 * Renders a torus (doughnut) centered at the modeling coordinates
	 * origin whose axis is aligned with the Z axis.
	 * Params:
	 * solid = TRUE if the torus should be solid.
	 * innerRadius = inner radius of the torus.
	 * outerRadius = outer radius of the torus.
	 * nsides = number of sides for each radial section.
	 * rings = number of radial divisions for the torus.
	 */
	public static void torus(int solid, double innerRadius, double outerRadius, int nsides, int rings)
	{
		// void gdk_gl_draw_torus (gboolean solid,  double inner_radius,  double outer_radius,  int nsides,  int rings);
		gdk_gl_draw_torus(solid, innerRadius, outerRadius, nsides, rings);
	}
	
	/**
	 * Renders a tetrahedron centered at the modeling coordinates
	 * origin with a radius of the square root of 3.
	 * Params:
	 * solid = TRUE if the tetrahedron should be solid.
	 */
	public static void tetrahedron(int solid)
	{
		// void gdk_gl_draw_tetrahedron (gboolean solid);
		gdk_gl_draw_tetrahedron(solid);
	}
	
	/**
	 * Renders a octahedron centered at the modeling coordinates
	 * origin with a radius of 1.0.
	 * Params:
	 * solid = TRUE if the octahedron should be solid.
	 */
	public static void octahedron(int solid)
	{
		// void gdk_gl_draw_octahedron (gboolean solid);
		gdk_gl_draw_octahedron(solid);
	}
	
	/**
	 * Renders a dodecahedron centered at the modeling coordinates
	 * origin with a radius of the square root of 3.
	 * Params:
	 * solid = TRUE if the dodecahedron should be solid.
	 */
	public static void dodecahedron(int solid)
	{
		// void gdk_gl_draw_dodecahedron (gboolean solid);
		gdk_gl_draw_dodecahedron(solid);
	}
	
	/**
	 * Renders a icosahedron.
	 * The icosahedron is centered at the modeling coordinates origin
	 * and has a radius of 1.0.
	 * Params:
	 * solid = TRUE if the icosahedron should be solid.
	 */
	public static void icosahedron(int solid)
	{
		// void gdk_gl_draw_icosahedron (gboolean solid);
		gdk_gl_draw_icosahedron(solid);
	}
	
	/**
	 * Renders a teapot.
	 * Both surface normals and texture coordinates for the teapot are generated.
	 * The teapot is generated with OpenGL evaluators.
	 * Params:
	 * solid = TRUE if the teapot should be solid.
	 * scale = relative size of the teapot.
	 * <<Font Rendering
	 * Tokens>>
	 */
	public static void teapot(int solid, double scale)
	{
		// void gdk_gl_draw_teapot (gboolean solid,  double scale);
		gdk_gl_draw_teapot(solid, scale);
	}
}
