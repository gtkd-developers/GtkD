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
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glgdk.GLConfig
 * 	- gdk.Pixmap
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * 	- GdkGLPixmap* -> GLPixmap
 * 	- GdkPixmap* -> Pixmap
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLPixmap;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;


private import glgdk.GLConfig;
private import gdk.Pixmap;



private import gdk.Drawable;

/**
 * Description
 */
public class GLPixmap : Drawable
{
	
	/** the main Gtk struct */
	protected GdkGLPixmap* gdkGLPixmap;
	
	
	public GdkGLPixmap* getGLPixmapStruct()
	{
		return gdkGLPixmap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGLPixmap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLPixmap* gdkGLPixmap)
	{
		if(gdkGLPixmap is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkGLPixmap);
		if( ptr !is null )
		{
			this = cast(GLPixmap)ptr;
			return;
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
	 * Params:
	 * glconfig = a GdkGLConfig.
	 * pixmap = the GdkPixmap to be used as the rendering area.
	 * attribList = this must be set to NULL or empty (first attribute of None).
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GLConfig glconfig, Pixmap pixmap, int* attribList)
	{
		// GdkGLPixmap* gdk_gl_pixmap_new (GdkGLConfig *glconfig,  GdkPixmap *pixmap,  const int *attrib_list);
		auto p = gdk_gl_pixmap_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), attribList);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_pixmap_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), attribList)");
		}
		this(cast(GdkGLPixmap*) p);
	}
	
	/**
	 * Destroys the OpenGL resources associated with glpixmap and
	 * decrements glpixmap's reference count.
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
	 * Returns: the GdkPixmap associated with glpixmap.
	 */
	public Pixmap getPixmap()
	{
		// GdkPixmap* gdk_gl_pixmap_get_pixmap (GdkGLPixmap *glpixmap);
		auto p = gdk_gl_pixmap_get_pixmap(gdkGLPixmap);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Set the OpenGL-capability to the pixmap.
	 * This function creates a new GdkGLPixmap held by the pixmap.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None).
	 * Params:
	 * pixmap = the GdkPixmap to be used as the rendering area.
	 * glconfig = a GdkGLConfig.
	 * attribList = this must be set to NULL or empty (first attribute of None).
	 * Returns: the GdkGLPixmap used by the pixmap if it is successful, NULL otherwise.
	 */
	public static GLPixmap pixmapSetGLCapability(Pixmap pixmap, GLConfig glconfig, int* attribList)
	{
		// GdkGLPixmap* gdk_pixmap_set_gl_capability (GdkPixmap *pixmap,  GdkGLConfig *glconfig,  const int *attrib_list);
		auto p = gdk_pixmap_set_gl_capability((pixmap is null) ? null : pixmap.getPixmapStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), attribList);
		if(p is null)
		{
			return null;
		}
		return new GLPixmap(cast(GdkGLPixmap*) p);
	}
	
	/**
	 * Unset the OpenGL-capability of the pixmap.
	 * This function destroys the GdkGLPixmap held by the pixmap.
	 * Params:
	 * pixmap = a GdkPixmap.
	 */
	public static void pixmapUnsetGLCapability(Pixmap pixmap)
	{
		// void gdk_pixmap_unset_gl_capability (GdkPixmap *pixmap);
		gdk_pixmap_unset_gl_capability((pixmap is null) ? null : pixmap.getPixmapStruct());
	}
	
	/**
	 * Returns whether the pixmap is OpenGL-capable.
	 * Params:
	 * pixmap = a GdkPixmap.
	 * Returns: TRUE if the pixmap is OpenGL-capable, FALSE otherwise.
	 */
	public static int pixmapIsGLCapable(Pixmap pixmap)
	{
		// gboolean gdk_pixmap_is_gl_capable (GdkPixmap *pixmap);
		return gdk_pixmap_is_gl_capable((pixmap is null) ? null : pixmap.getPixmapStruct());
	}
	
	/**
	 * Returns the GdkGLPixmap held by the pixmap.
	 * Params:
	 * pixmap = a GdkPixmap.
	 * Returns: the GdkGLPixmap.
	 */
	public static GLPixmap pixmapGetGLPixmap(Pixmap pixmap)
	{
		// GdkGLPixmap* gdk_pixmap_get_gl_pixmap (GdkPixmap *pixmap);
		auto p = gdk_pixmap_get_gl_pixmap((pixmap is null) ? null : pixmap.getPixmapStruct());
		if(p is null)
		{
			return null;
		}
		return new GLPixmap(cast(GdkGLPixmap*) p);
	}
}
