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
 * inFile  = gtkglext-gdkglpixmap.html
 * outPack = glgdk
 * outFile = GLPixmap
 * strct   = GdkGLPixmap
 * realStrct=
 * ctorStrct=
 * clss    = GLPixmap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_pixmap_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glgdk.GLConfig
 * structWrap:
 * 	- GdkGLCondif* -> GLConfig
 * module aliases:
 * local aliases:
 */

module glgdk.GLPixmap;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkglc.glgdktypes;

private import gtkglc.glgdk;


private import glgdk.GLConfig;




/**
 * Description
 */
private import gdk.Drawable;
public class GLPixmap : Drawable
{
	
	/** the main Gtk struct */
	protected GdkGLPixmap* gdkGLPixmap;
	
	
	public GdkGLPixmap* getGLPixmapStruct()
	{
		return gdkGLPixmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkGLPixmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLPixmap* gdkGLPixmap)
	{
		version(noAssert)
		{
			if ( gdkGLPixmap is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkGLPixmap is null on constructor").newline;
				}
				else
				{
					printf("struct gdkGLPixmap is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkGLPixmap !is null, "struct gdkGLPixmap is null on constructor");
		}
		super(cast(GdkDrawable*)gdkGLPixmap);
		this.gdkGLPixmap = gdkGLPixmap;
	}
	
	/**
	 */
	
	
	/**
	 * Creates an off-screen rendering area.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None). See GLX 1.3 spec.
	 * glconfig:
	 *  a GdkGLConfig.
	 * pixmap:
	 *  the GdkPixmap to be used as the rendering area.
	 * attrib_list:
	 *  this must be set to NULL or empty (first attribute of None).
	 * Returns:
	 *  the new GdkGLPixmap.
	 */
	public this (GdkGLConfig* glconfig, GdkPixmap* pixmap, int* attribList)
	{
		// GdkGLPixmap* gdk_gl_pixmap_new (GdkGLConfig *glconfig,  GdkPixmap *pixmap,  const int *attrib_list);
		this(cast(GdkGLPixmap*)gdk_gl_pixmap_new(glconfig, pixmap, attribList) );
	}
	
	/**
	 * Destroys the OpenGL resources associated with glpixmap and
	 * decrements glpixmap's reference count.
	 * glpixmap:
	 *  a GdkGLPixmap.
	 */
	public void destroy()
	{
		// void gdk_gl_pixmap_destroy (GdkGLPixmap *glpixmap);
		gdk_gl_pixmap_destroy(gdkGLPixmap);
	}
	
	/**
	 * Returns the GdkPixmap associated with glpixmap.
	 * Notice that GdkGLPixmap is not GdkPixmap, but another
	 * GdkDrawable which have an associated GdkPixmap.
	 * glpixmap:
	 *  a GdkGLPixmap.
	 * Returns:
	 *  the GdkPixmap associated with glpixmap.
	 */
	public GdkPixmap* getPixmap()
	{
		// GdkPixmap* gdk_gl_pixmap_get_pixmap (GdkGLPixmap *glpixmap);
		return gdk_gl_pixmap_get_pixmap(gdkGLPixmap);
	}
	
	/**
	 * Set the OpenGL-capability to the pixmap.
	 * This function creates a new GdkGLPixmap held by the pixmap.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None).
	 * pixmap:
	 *  the GdkPixmap to be used as the rendering area.
	 * glconfig:
	 *  a GdkGLConfig.
	 * attrib_list:
	 *  this must be set to NULL or empty (first attribute of None).
	 * Returns:
	 *  the GdkGLPixmap used by the pixmap if it is successful,
	 *  NULL otherwise.
	 */
	public static GdkGLPixmap* gdkPixmapSetGLCapability(GdkPixmap* pixmap, GdkGLConfig* glconfig, int* attribList)
	{
		// GdkGLPixmap* gdk_pixmap_set_gl_capability (GdkPixmap *pixmap,  GdkGLConfig *glconfig,  const int *attrib_list);
		return gdk_pixmap_set_gl_capability(pixmap, glconfig, attribList);
	}
	
	/**
	 * Unset the OpenGL-capability of the pixmap.
	 * This function destroys the GdkGLPixmap held by the pixmap.
	 * pixmap:
	 *  a GdkPixmap.
	 */
	public static void gdkPixmapUnsetGLCapability(GdkPixmap* pixmap)
	{
		// void gdk_pixmap_unset_gl_capability (GdkPixmap *pixmap);
		gdk_pixmap_unset_gl_capability(pixmap);
	}
	
	/**
	 * Returns whether the pixmap is OpenGL-capable.
	 * pixmap:
	 *  a GdkPixmap.
	 * Returns:
	 *  TRUE if the pixmap is OpenGL-capable, FALSE otherwise.
	 */
	public static int gdkPixmapIsGLCapable(GdkPixmap* pixmap)
	{
		// gboolean gdk_pixmap_is_gl_capable (GdkPixmap *pixmap);
		return gdk_pixmap_is_gl_capable(pixmap);
	}
	
	/**
	 * Returns the GdkGLPixmap held by the pixmap.
	 * pixmap:
	 *  a GdkPixmap.
	 * Returns:
	 *  the GdkGLPixmap.
	 */
	public static GdkGLPixmap* gdkPixmapGetGLPixmap(GdkPixmap* pixmap)
	{
		// GdkGLPixmap* gdk_pixmap_get_gl_pixmap (GdkPixmap *pixmap);
		return gdk_pixmap_get_gl_pixmap(pixmap);
	}
	
}
