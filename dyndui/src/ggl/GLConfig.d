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

module ggl.GLConfig;

private import ggl.Types;
private import ddi.Screen;
private import ddi.Color;

alias GLConfigMode GdkGLConfigMode;

private:
extern(C)
{
	GdkGLConfig * gdk_gl_config_new(int * attrib_list);
	GdkGLConfig * gdk_gl_config_new_for_screen(GdkScreen * screen, int * attrib_list);
	GdkGLConfig * gdk_gl_config_new_by_mode(GdkGLConfigMode mode);
	GdkGLConfig * gdk_gl_config_new_by_mode_for_screen(GdkScreen * screen, GdkGLConfigMode mode);
	GdkScreen * gdk_gl_config_get_screen(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_get_attrib(GdkGLConfig * glconfig, int attribute, int * value);
	GdkColormap * gdk_gl_config_get_colormap(GdkGLConfig * glconfig);
	GdkVisual * gdk_gl_config_get_visual(GdkGLConfig * glconfig);
	gint gdk_gl_config_get_depth(GdkGLConfig * glconfig);
	gint gdk_gl_config_get_layer_plane(GdkGLConfig * glconfig);
	gint gdk_gl_config_get_n_aux_buffers(GdkGLConfig * glconfig);
	gint gdk_gl_config_get_n_sample_buffers(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_is_rgba(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_is_double_buffered(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_is_stereo(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_has_alpha(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_has_depth_buffer(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_has_stencil_buffer(GdkGLConfig * glconfig);
	gboolean gdk_gl_config_has_accum_buffer(GdkGLConfig * glconfig);
};

/**
 * OpenGL frame buffer configuration object
 */
public:
class GLConfig
{

	GdkGLConfig* config;
	
	this(GdkGLConfig* config)
	{
		this.config = config;
	}

	public:

	GdkGLConfig* ggl()
	{
		return config;
	}
	
	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Config";
	}

	/**
	 * Creates a new OpenGL frame buffer configuration that match the specified attributes.
	 * @param attrib_list a list of attribute/value pairs. The last attribute must be GDK_GL_ATTRIB_LIST_NONE.
	 */
	this(int[] attrib_list)
	{
		this(gdk_gl_config_new(cast(int*) attrib_list));
	}
	
	/**
	 * Creates a new OpenGL frame buffer configuration that match the specified attributes.
	 * @param screen target screen.
	 * @param attrib_list a list of attribute/value pairs. The last attribute must be GDK_GL_ATTRIB_LIST_NONE.
	 */
	this(Screen screen, int[] attrib_list)
	{
		this(gdk_gl_config_new_for_screen(screen.gdkScreen(), cast(int*)attrib_list));
	}
	
	/**
	 * Creates a mew OpenGL frame buffer configuration that match the specified display mode.
	 * @param mode display mode bit mask.
	 */
	this(GLConfigMode mode)
	{
		this(gdk_gl_config_new_by_mode(mode));
	}
	
	/**
	 * Creates a mew OpenGL frame buffer configuration that match the specified display mode,
	 * or the fallback mode.
	 * @param mode display mode bit mask.
	 */
	this(GLConfigMode mode, GLConfigMode fallback)
	{
		
		config = gdk_gl_config_new_by_mode(mode);
		if ( config === null )
		{
			printf ("*** Cannot find the double-buffered visual.\n");
			printf ("*** Trying single-buffered visual.\n");
			config = gdk_gl_config_new_by_mode(fallback);
		}
		if ( config === null )
		{
			printf ("*** No appropriate OpenGL-capable visual found.\n");
			throw new Error("GL configure failed");
		}
	}
	
	/**
	 * Creates a new OpenGL frame buffer configuration that match the specified display mode.
	 * @param screen  target screen.
	 * @param mode isplay mode bit mask.
	 */ 
	this(Screen screen, GLConfigMode mode)
	{
		this(gdk_gl_config_new_by_mode_for_screen(screen.gdkScreen(), mode));
	}
	
	/**
	 * Gets the Screen.
	 * @return the screen
	 */
	Screen getScreen()
	{
		return new Screen(gdk_gl_config_get_screen(ggl()));
	}

	/**
	 * Gets information about a OpenGL frame buffer configuration.
	 * @param attribute the attribute to be returned.
	 * @param value returns the requested value.
	 * @return true if it succeeded, false otherwise.
	 */
	bit getAttribute(int attribute, int * value)
	{
		return gdk_gl_config_get_attrib(ggl(), attribute, value) == 0 ? false : true;
	}
	
	//Colormap getColormap()
	//{
	//	return new ColorMap(gdk_gl_config_get_colormap(ggl()));
	//}
	
	//GdkVisual * gdk_gl_config_get_visual(ggl());
	
	/**
	 * Gets the color depth of the OpenGL-capable visual.
	 * @return  number of bits per pixel
	 */
	gint getDepth()
	{
		return gdk_gl_config_get_depth(ggl());
	}
	
	/**
	 * Gets the layer plane (level) of the frame buffer.
	 * Zero is the default frame buffer.
	 * Positive layer planes correspond to frame buffers that overlay the default buffer,
	 * and negative layer planes correspond to frame buffers that underlie the default frame buffer.
	 * @return  layer plane.
	 */
	gint getLayerPlane()
	{
		return gdk_gl_config_get_layer_plane(ggl());
	}
	
	/**
	 * Gets the number of auxiliary color buffers.
	 * @return  number of auxiliary color buffers.
	 */
	gint getNAuxBuffers()
	{
		return gdk_gl_config_get_n_aux_buffers(ggl());
	}
	
	/**
	 * Gets the number of multisample buffers.
	 * @return  number of multisample buffers.
	 */
	gint getNSampleBuffers()
	{
		return gdk_gl_config_get_n_sample_buffers(ggl());
	}
	
	/**
	 * Returns whether the configured frame buffer is RGBA mode.
	 * @return  true if the configured frame buffer is RGBA mode, false otherwise.
	 */
	gboolean isRGBA()
	{
		return gdk_gl_config_is_rgba(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configuration supports the double-buffered visual.
	 * @return true if the double-buffered visual is supported, false otherwise.
	 */
	gboolean isDoubleBuffered()
	{
		return gdk_gl_config_is_double_buffered(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configuration supports the stereo visual.
	 * @return true if the stereo visual is supported, false otherwise.
	 */
	gboolean isStereo()
	{
		return gdk_gl_config_is_stereo(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configured color buffer has alpha bits.
	 * @return true if the color buffer has alpha bits, false otherwise.
	 */
	gboolean hasAlpha()
	{
		return gdk_gl_config_has_alpha(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configured frame buffer has depth buffer.
	 * @return true if the frame buffer has depth buffer, false otherwise.
	 */
	gboolean hasDepthBuffer()
	{
		return gdk_gl_config_has_depth_buffer(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configured frame buffer has stencil buffer.
	 * @return true if the frame buffer has stencil buffer, false otherwise.
	 */
	gboolean hasStencilBuffer()
	{
		return gdk_gl_config_has_stencil_buffer(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Returns whether the configured frame buffer has accumulation buffer.
	 * @return true if the frame buffer has accumulation buffer, false otherwise.
	 */
	gboolean hasAccumBuffer()
	{
		return gdk_gl_config_has_accum_buffer(ggl()) == 0 ? false : true;
	}

}
