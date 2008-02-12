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
 * inFile  = cairo-PostScript-Surfaces.html
 * outPack = cairo
 * outFile = PostScriptSurface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = PostScriptSurface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_surface_t
 * implements:
 * prefixes:
 * 	- cairo_ps_surface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 */

module cairo.PostScriptSurface;

public  import gtkc.cairotypes;

private import gtkc.cairo;


private import glib.Str;



private import cairo.Surface;

/**
 * Description
 */
public class PostScriptSurface : Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getPostScriptSurfaceStruct()
	{
		return cairo_surface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	 * Creates a PostScript surface of the specified size in points to be
	 * written to filename. See cairo_ps_surface_create_for_stream() for
	 * a more flexible mechanism for handling the PostScript output than
	 * simply writing it to a named file.
	 * Note that the size of individual pages of the PostScript output can
	 * vary. See cairo_ps_surface_set_size().
	 * Since 1.2
	 * Params:
	 * filename =  a filename for the PS output (must be writable)
	 * widthInPoints =  width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints =  height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The callerowns the surface and should call cairo_surface_destroy when donewith it.This function always returns a valid pointer, but it will return apointer to a "nil" surface if an error such as out of memoryoccurs. You can use cairo_surface_status() to check for this.
	 */
	public static Surface create(char[] filename, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_ps_surface_create (const char *filename,  double width_in_points,  double height_in_points);
		auto p = cairo_ps_surface_create(Str.toStringz(filename), widthInPoints, heightInPoints);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Creates a PostScript surface of the specified size in points to be
	 * written incrementally to the stream represented by write_func and
	 * closure. See cairo_ps_surface_create() for a more convenient way
	 * to simply direct the PostScript output to a named file.
	 * Note that the size of individual pages of the PostScript
	 * output can vary. See cairo_ps_surface_set_size().
	 * Since 1.2
	 * Params:
	 * writeFunc =  a cairo_write_func_t to accept the output data
	 * closure =  the closure argument for write_func
	 * widthInPoints =  width of the surface, in points (1 point == 1/72.0 inch)
	 * heightInPoints =  height of the surface, in points (1 point == 1/72.0 inch)
	 * Returns: a pointer to the newly created surface. The callerowns the surface and should call cairo_surface_destroy when donewith it.This function always returns a valid pointer, but it will return apointer to a "nil" surface if an error such as out of memoryoccurs. You can use cairo_surface_status() to check for this.
	 */
	public static Surface createForStream(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints)
	{
		// cairo_surface_t* cairo_ps_surface_create_for_stream (cairo_write_func_t write_func,  void *closure,  double width_in_points,  double height_in_points);
		auto p = cairo_ps_surface_create_for_stream(writeFunc, closure, widthInPoints, heightInPoints);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Changes the size of a PostScript surface for the current (and
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
		// void cairo_ps_surface_set_size (cairo_surface_t *surface,  double width_in_points,  double height_in_points);
		cairo_ps_surface_set_size(cairo_surface, widthInPoints, heightInPoints);
	}
	
	/**
	 * This function indicates that subsequent calls to
	 * cairo_ps_surface_dsc_comment() should direct comments to the Setup
	 * section of the PostScript output.
	 * This function should be called at most once per surface, and must
	 * be called before any call to cairo_ps_surface_dsc_begin_page_setup()
	 * and before any drawing is performed to the surface.
	 * See cairo_ps_surface_dsc_comment() for more details.
	 * Since 1.2
	 */
	public void dscBeginSetup()
	{
		// void cairo_ps_surface_dsc_begin_setup (cairo_surface_t *surface);
		cairo_ps_surface_dsc_begin_setup(cairo_surface);
	}
	
	/**
	 * This function indicates that subsequent calls to
	 * cairo_ps_surface_dsc_comment() should direct comments to the
	 * PageSetup section of the PostScript output.
	 * This function call is only needed for the first page of a
	 * surface. It should be called after any call to
	 * cairo_ps_surface_dsc_begin_setup() and before any drawing is
	 * performed to the surface.
	 * See cairo_ps_surface_dsc_comment() for more details.
	 * Since 1.2
	 */
	public void dscBeginPageSetup()
	{
		// void cairo_ps_surface_dsc_begin_page_setup  (cairo_surface_t *surface);
		cairo_ps_surface_dsc_begin_page_setup(cairo_surface);
	}
	
	/**
	 * Emit a comment into the PostScript output for the given surface.
	 * The comment is expected to conform to the PostScript Language
	 * Document Structuring Conventions (DSC). Please see that manual for
	 * details on the available comments and their meanings. In
	 * particular, the %IncludeFeature comment allows a
	 * device-independent means of controlling printer device features. So
	 * the PostScript Printer Description Files Specification will also be
	 * a useful reference.
	 * The comment string must begin with a percent character (%) and the
	 * total length of the string (including any initial percent
	 * characters) must not exceed 255 characters. Violating either of
	 * these conditions will place surface into an error state. But
	 * beyond these two conditions, this function will not enforce
	 * conformance of the comment with any particular specification.
	 * The comment string should not have a trailing newline.
	 * The DSC specifies different sections in which particular comments
	 * can appear. This function provides for comments to be emitted
	 * within three sections: the header, the Setup section, and the
	 * PageSetup section. Comments appearing in the first two sections
	 * apply to the entire document while comments in the BeginPageSetup
	 * section apply only to a single page.
	 * For comments to appear in the header section, this function should
	 * be called after the surface is created, but before a call to
	 * cairo_ps_surface_begin_setup().
	 * For comments to appear in the Setup section, this function should
	 * be called after a call to cairo_ps_surface_begin_setup() but before
	 * a call to cairo_ps_surface_begin_page_setup().
	 * For comments to appear in the PageSetup section, this function
	 * should be called after a call to cairo_ps_surface_begin_page_setup().
	 * Note that it is only necessary to call cairo_ps_surface_begin_page_setup()
	 * for the first page of any surface. After a call to
	 * cairo_show_page() or cairo_copy_page() comments are unambiguously
	 * directed to the PageSetup section of the current page. But it
	 * doesn't hurt to call this function at the beginning of every page
	 * as that consistency may make the calling code simpler.
	 * As a final note, cairo automatically generates several comments on
	 * its own. As such, applications must not manually generate any of
	 * Since 1.2
	 * Params:
	 * comment =  a comment string to be emitted into the PostScript output
	 */
	public void dscComment(char[] comment)
	{
		// void cairo_ps_surface_dsc_comment (cairo_surface_t *surface,  const char *comment);
		cairo_ps_surface_dsc_comment(cairo_surface, Str.toStringz(comment));
	}
}
