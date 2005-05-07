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

module ggl.GLX11;


private import ggl.Types;
private import ggl.GLConfig;
private import lib.gdkglext;

/+
private:
extern(C)
{
	gboolean gdk_x11_gl_query_glx_extension(GdkGLConfig * glconfig, char * extension);
	GdkGLConfig * gdk_x11_gl_config_new_from_visualid(VisualID xvisualid);
	GdkGLConfig * gdk_x11_gl_config_new_from_visualid_for_screen(GdkScreen * screen, VisualID xvisualid);
	//Display * gdk_x11_gl_config_get_xdisplay(GdkGLConfig * glconfig);
	int gdk_x11_gl_config_get_screen_number(GdkGLConfig * glconfig);
	//XVisualInfo * gdk_x11_gl_config_get_xvinfo(GdkGLConfig * glconfig);
	gboolean gdk_x11_gl_config_is_mesa_glx(GdkGLConfig * glconfig);
	//GdkGLContext * gdk_x11_gl_context_foreign_new(GdkGLConfig * glconfig, GdkGLContext * share_list, GLXContext glxcontext);
	//GLXContext gdk_x11_gl_context_get_glxcontext(GdkGLContext * glcontext);
	//GLXPixmap gdk_x11_gl_pixmap_get_glxpixmap(GdkGLPixmap * glpixmap);
	//Window gdk_x11_gl_window_get_glxwindow(GdkGLWindow * glwindow);
	//#define     GDK_GL_CONFIG_XDISPLAY          (glconfig)
	//#define     GDK_GL_CONFIG_SCREEN_XNUMBER    (glconfig)
	//#define     GDK_GL_CONFIG_XVINFO            (glconfig)
	//#define     GDK_GL_CONFIG_XCOLORMAP         (glconfig)
	//#define     GDK_GL_CONTEXT_GLXCONTEXT       (glcontext)
	//#define     GDK_GL_PIXMAP_GLXPIXMAP         (glpixmap)
	//#define     GDK_GL_WINDOW_GLXWINDOW         (glwindow)
};
+/

/**
 * Internal X-related functions
 */
public:
class GLX11
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
		return "OpenGL X11";
	}

//	static bit queryGLXExtension(GdkGLConfig glconfig, char[] extension)
//	{
//		return gdk_x11_gl_query_glx_extension(glconfig.ggl(), cChar(extension)) == 0 ? false : true;
//	}
	
	//GdkGLConfig * gdk_x11_gl_config_new_from_visualid(VisualID xvisualid);
	//GdkGLConfig * gdk_x11_gl_config_new_from_visualid_for_screen(GdkScreen * screen, VisualID xvisualid);
	//Display * gdk_x11_gl_config_get_xdisplay(GdkGLConfig * glconfig);
	
	/**
	 * Gets the screen number
	 * @param glconfig GLConfig
	 * @return the screen number
	 */
	static int getScreenNumber(GLConfig glconfig)
	{
		return gdk_x11_gl_config_get_screen_number(glconfig.ggl());
	}
	//XVisualInfo * gdk_x11_gl_config_get_xvinfo(GdkGLConfig * glconfig);

	/**
	 * check if gl support is MesaGL
	 * @param glconfig GLConfig
	 * @return true if true
	 */
	static bit isMesaGLX(GLConfig glconfig)
	{
		return gdk_x11_gl_config_is_mesa_glx(glconfig.ggl()) == 0 ? false : true;
	}
	//GdkGLContext * gdk_x11_gl_context_foreign_new(GdkGLConfig * glconfig, GdkGLContext * share_list, GLXContext glxcontext);
	//GLXContext gdk_x11_gl_context_get_glxcontext(GdkGLContext * glcontext);
	//GLXPixmap gdk_x11_gl_pixmap_get_glxpixmap(GdkGLPixmap * glpixmap);
	//Window gdk_x11_gl_window_get_glxwindow(GdkGLWindow * glwindow);
	//#define     GDK_GL_CONFIG_XDISPLAY          (glconfig)
	//#define     GDK_GL_CONFIG_SCREEN_XNUMBER    (glconfig)
	//#define     GDK_GL_CONFIG_XVINFO            (glconfig)
	//#define     GDK_GL_CONFIG_XCOLORMAP         (glconfig)
	//#define     GDK_GL_CONTEXT_GLXCONTEXT       (glcontext)
	//#define     GDK_GL_PIXMAP_GLXPIXMAP         (glpixmap)
	//#define     GDK_GL_WINDOW_GLXWINDOW         (glwindow)

}
