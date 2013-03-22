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
 * inFile  = cairo-PDF-Surfaces.html
 * outPack = cairo
 * outFile = PdfSurface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = PdfSurface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_surface_t
 * implements:
 * prefixes:
 * 	- cairo_pdf_surface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- cairo_surface_t* -> PdfSurface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.PdfSurface;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import glib.Str;



private import cairo.Surface;

/**
 * The PDF surface is used to render cairo graphics to Adobe
 * PDF files and is a multi-page vector surface backend.
 */
public class PdfSurface : Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getPdfSurfaceStruct()
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
	 * Creates a PDF surface of the specified size in points to be written
	 * to filename.
	 * Since 1.2
	 * Params:
	 * filename = a filename for the PDF output (must be writable), NULL may be
	 * used to specify no output. This will generate a PDF surface that
	 * may be queried and used as a source, without generating a
	 * temporary file.
	 * widthInPoints = width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints = height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
	 */
	public static PdfSurface create(string filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t * cairo_pdf_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		auto p = cairo_pdf_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
		
		if(p is null)
		{
			return null;
		}
		
		return new PdfSurface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Creates a PDF surface of the specified size in points to be written
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
	public static PdfSurface createForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t * cairo_pdf_surface_create_for_stream (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		auto p = cairo_pdf_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
		
		if(p is null)
		{
			return null;
		}
		
		return new PdfSurface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Restricts the generated PDF file to version. See cairo_pdf_get_versions()
	 * for a list of available version values that can be used here.
	 * This function should only be called before any drawing operations
	 * have been performed on the given surface. The simplest way to do
	 * this is to call this function immediately after creating the
	 * surface.
	 * Since 1.10
	 * Params:
	 * version = PDF version
	 */
	public void restrictToVersion(cairo_pdf_version_t versio)
	{
		// void cairo_pdf_surface_restrict_to_version  (cairo_surface_t *surface,  cairo_pdf_version_t version);
		cairo_pdf_surface_restrict_to_version(cairo_surface, versio);
	}
	
	/**
	 * Used to retrieve the list of supported versions. See
	 * cairo_pdf_surface_restrict_to_version().
	 * Since 1.10
	 * Params:
	 * versions = supported version list
	 */
	public static void cairoPdfGetVersions(out cairo_pdf_version_t[] versions)
	{
		// void cairo_pdf_get_versions (cairo_pdf_version_t const **versions,  int *num_versions);
		cairo_pdf_version_t* outversions = null;
		int numVersions;
		
		cairo_pdf_get_versions(&outversions, &numVersions);
		
		versions = outversions[0 .. numVersions];
	}
	
	/**
	 * Get the string representation of the given version id. This function
	 * will return NULL if version isn't valid. See cairo_pdf_get_versions()
	 * for a way to get the list of valid version ids.
	 * Since 1.10
	 * Params:
	 * version = a version id
	 * Returns: the string associated to given version.
	 */
	public static string cairoPdfVersionToString(cairo_pdf_version_t versio)
	{
		// const char * cairo_pdf_version_to_string (cairo_pdf_version_t version);
		return Str.toString(cairo_pdf_version_to_string(versio));
	}
	
	/**
	 * Changes the size of a PDF surface for the current (and
	 * subsequent) pages.
	 * This function should only be called before any drawing operations
	 * have been performed on the current page. The simplest way to do
	 * this is to call this function immediately after creating the
	 * surface or immediately after completing a page with either
	 * cairo_show_page() or cairo_copy_page().
	 * Since 1.2
	 * Params:
	 * widthInPoints = new surface width, in points (1 point == 1/72.0 inch)
	 * heightInPoints = new surface height, in points (1 point == 1/72.0 inch)
	 */
	public void setSize(double widthInPoints, double heightInPoints)
	{
		// void cairo_pdf_surface_set_size (cairo_surface_t *surface,  double width_in_points,  double height_in_points);
		cairo_pdf_surface_set_size(cairo_surface, widthInPoints, heightInPoints);
	}
}
