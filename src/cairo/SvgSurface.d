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
 * inFile  = cairo-SVG-Surfaces.html
 * outPack = cairo
 * outFile = SvgSurface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = SvgSurface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_surface_t
 * implements:
 * prefixes:
 * 	- cairo_svg_surface_
 * 	- cairo_svg_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- cairo_surface_t* -> SvgSurface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.SvgSurface;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import glib.Str;



private import cairo.Surface;

/**
 * The SVG surface is used to render cairo graphics to
 * SVG files and is a multi-page vector surface backend.
 */
public class SvgSurface : Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getSvgSurfaceStruct()
	{
		return cairo_surface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)cairo_surface;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_surface_t* cairo_surface)
	{
		super(cast(cairo_surface_t*)cairo_surface);
		this.cairo_surface = cairo_surface;
	}
	
	/**
	 */
	
	/**
	 * Creates a SVG surface of the specified size in points to be written
	 * to filename.
	 * The SVG surface backend recognizes the following MIME types for the
	 * data attached to a surface (see cairo_surface_set_mime_data()) when
	 * Since 1.2
	 * Params:
	 * filename = a filename for the SVG output (must be writable), NULL may be
	 * used to specify no output. This will generate a SVG surface that
	 * may be queried and used as a source, without generating a
	 * temporary file.
	 * widthInPoints = width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints = height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
	 */
	public static SvgSurface create(string filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t * cairo_svg_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		auto p = cairo_svg_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
		
		if(p is null)
		{
			return null;
		}
		
		return new SvgSurface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Creates a SVG surface of the specified size in points to be written
	 * incrementally to the stream represented by write_func and closure.
	 * Since 1.2
	 * Params:
	 * writeFunc = a cairo_write_func_t to accept the output data, may be NULL
	 * to indicate a no-op write_func. With a no-op write_func,
	 * the surface may be queried or used as a source without
	 * generating any temporary files.
	 * closure = the closure argument for write_func
	 * widthInPoints = width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints = height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
	 */
	public static SvgSurface createForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t * cairo_svg_surface_create_for_stream (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		auto p = cairo_svg_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
		
		if(p is null)
		{
			return null;
		}
		
		return new SvgSurface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Restricts the generated SVG file to version. See cairo_svg_get_versions()
	 * for a list of available version values that can be used here.
	 * This function should only be called before any drawing operations
	 * have been performed on the given surface. The simplest way to do
	 * this is to call this function immediately after creating the
	 * surface.
	 * Since 1.2
	 * Params:
	 * version = SVG version
	 */
	public void restrictToVersion(cairo_svg_version_t versio)
	{
		// void cairo_svg_surface_restrict_to_version  (cairo_surface_t *surface,  cairo_svg_version_t version);
		cairo_svg_surface_restrict_to_version(cairo_surface, versio);
	}
	
	/**
	 * Used to retrieve the list of supported versions. See
	 * cairo_svg_surface_restrict_to_version().
	 * Since 1.2
	 * Params:
	 * versions = supported version list
	 */
	public static void getVersions(out cairo_svg_version_t[] versions)
	{
		// void cairo_svg_get_versions (cairo_svg_version_t const **versions,  int *num_versions);
		cairo_svg_version_t* outversions = null;
		int numVersions;
		
		cairo_svg_get_versions(&outversions, &numVersions);
		
		versions = outversions[0 .. numVersions];
	}
	
	/**
	 * Get the string representation of the given version id. This function
	 * will return NULL if version isn't valid. See cairo_svg_get_versions()
	 * for a way to get the list of valid version ids.
	 * Since 1.2
	 * Params:
	 * version = a version id
	 * Returns: the string associated to given version.
	 */
	public static string versionToString(cairo_svg_version_t versio)
	{
		// const char * cairo_svg_version_to_string (cairo_svg_version_t version);
		return Str.toString(cairo_svg_version_to_string(versio));
	}
}
