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

module ggl.GLPixmap;

private import ggl.Types;
private import ggl.GLConfig;
private import ggl.GLDrawable;
private import ddi.WindowG;
private import ddi.Drawable;
private import ddi.Pixmap;

private import lib.gdkglext;

/+
private:
extern(C)
{
	GdkGLPixmap * gdk_gl_pixmap_new(GdkGLConfig * glconfig, GdkPixmap * pixmap, int * attrib_list);
	void gdk_gl_pixmap_destroy(GdkGLPixmap * glpixmap);
	GdkPixmap * gdk_gl_pixmap_get_pixmap(GdkGLPixmap * glpixmap);
	GdkGLPixmap * gdk_pixmap_set_gl_capability(GdkPixmap * pixmap, GdkGLConfig * glconfig, int * attrib_list);
	void gdk_pixmap_unset_gl_capability(GdkPixmap * pixmap);
	gboolean gdk_pixmap_is_gl_capable(GdkPixmap * pixmap);
	GdkGLPixmap * gdk_pixmap_get_gl_pixmap(GdkPixmap * pixmap);
	//#define gdk_pixmap_get_gl_drawable(pixmap) this is macro that casts the result of gdk_pixmap_get_gl_pixmap to GdkGLDrawable.
};
+/

/**
 * OpenGL pixmap which is maintained off-screen
 */
public:
class GLPixmap :
		Drawable
{

	
	
	protected:
	this(GdkGLPixmap * gdkGLPixmap)
	{
		super(cast(GObject *) gdkGLPixmap);
	}
	
	public:

	GdkGLPixmap* ggl()
	{
		return cast(GdkGLPixmap*)obj();
	}
	
	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Pixmap";
	}
	
	/**
	 * Creates a new GLPixmap
	 * @param glconfig
	 * @param pixmap
	 * @param attrib_list
	 */
	this(GLConfig glconfig, Pixmap pixmap, int[] attrib_list)
	{
		this(gdk_gl_pixmap_new(glconfig.ggl(), cast(GdkPixmap*)pixmap.obj(), cast(int*)attrib_list));
	}
	
	/**
	 * Destroy this GLPixmap
	 */
	void destroy()
	{
		gdk_gl_pixmap_destroy(ggl());
	}
	
	/**
	 * Gets the pixmap for this GLPixmap
	 * @return the pixmap for this GLPixmap
	 */
	Pixmap getPixmap()
	{
		return new Pixmap(gdk_gl_pixmap_get_pixmap(ggl()));
	}
	
	/**
	 * Sets GL Capabilities for a pixmap
	 * @param pixmap
	 * @param glconfig
	 * @param attrib_list
	 * @return a new GLPixmap
	 */
	static GLPixmap setGLCapability(Pixmap pixmap, GLConfig glconfig, int[] attrib_list)
	{
		return new GLPixmap(gdk_pixmap_set_gl_capability(cast(GdkPixmap*)pixmap.obj(), glconfig.ggl(), cast(int*) attrib_list));
	}
	
	/**
	 * Remove th GL capabilities to the pixmap
	 * @param pixmap
	 */
	static void unsetGLCapability(Pixmap pixmap)
	{
		gdk_pixmap_unset_gl_capability(cast(GdkPixmap*)pixmap.obj());
	}
	
	/**
	 * Checks if this pixmap is GL capable
	 * @param pixmap
	 * @return true if the pixmap is GL capable
	 */
	static bit isGLCapable(Pixmap pixmap)
	{
		return gdk_pixmap_is_gl_capable(cast(GdkPixmap*)pixmap.obj()) == 0 ? false : true;
	}
	
	/**
	 * Gets the GLPixmap of the pixmap
	 * @param pixmap
	 * @return a new GLPixmap
	 */
	static GLPixmap getGLPixmap(Pixmap pixmap)
	{
		return new GLPixmap(gdk_pixmap_get_gl_pixmap(cast(GdkPixmap*)pixmap.obj()));
	}
	
	/**
	 * Gets the GLDrawable of the pixmap
	 * @param pixmap
	 * @return a new GLPixmap
	 */
	GLDrawable getGLDrawable(Pixmap pixmap)
	{
		return new GLDrawable(cast(GdkGLDrawable*)gdk_pixmap_get_gl_pixmap(cast(GdkPixmap*)pixmap.obj()));
	}

}
