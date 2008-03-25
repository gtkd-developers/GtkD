/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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


private import glib.Str;



private import cairo.Surface;

/**
 * Description
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
		if(cairo_surface is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null cairo_surface passed to constructor.");
			else return;
		}
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
	 * filename =  a filename for the PDF output (must be writable)
	 * widthInPoints =  width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints =  height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The callerowns the surface and should call cairo_surface_destroy when donewith it.This function always returns a valid pointer, but it will return apointer to a "nil" surface if an error such as out of memoryoccurs. You can use cairo_surface_status() to check for this.
	 */
	public static PdfSurface create(string filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_pdf_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		auto p = cairo_pdf_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PdfSurface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Creates a PDF surface of the specified size in points to be written
	 * incrementally to the stream represented by write_func and closure.
	 * Since 1.2
	 * Params:
	 * writeFunc =  a cairo_write_func_t to accept the output data
	 * closure =  the closure argument for write_func
	 * widthInPoints =  width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints =  height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The callerowns the surface and should call cairo_surface_destroy when donewith it.This function always returns a valid pointer, but it will return apointer to a "nil" surface if an error such as out of memoryoccurs. You can use cairo_surface_status() to check for this.
	 */
	public static PdfSurface createForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_pdf_surface_create_for_stream (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		auto p = cairo_pdf_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PdfSurface(cast(cairo_surface_t*) p);
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
	 * widthInPoints =  new surface width, in points (1 point == 1/72.0 inch)
	 * heightInPoints =  new surface height, in points (1 point == 1/72.0 inch)
	 */
	public void setSize(double widthInPoints, double heightInPoints)
	{
		// void cairo_pdf_surface_set_size (cairo_surface_t *surface,  double width_in_points,  double height_in_points);
		cairo_pdf_surface_set_size(cairo_surface, widthInPoints, heightInPoints);
	}
}
