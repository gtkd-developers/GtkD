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


module glgdk.GLConfig;

private import gdk.Display;
private import gdk.Screen;
private import gdk.Visual;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
public class GLConfig : ObjectG
{
	/** the main Gtk struct */
	protected GdkGLConfig* gdkGLConfig;

	/** Get the main Gtk struct */
	public GdkGLConfig* getGLConfigStruct()
	{
		return gdkGLConfig;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGLConfig;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkGLConfig* gdkGLConfig, bool ownedRef = false)
	{
		this.gdkGLConfig = gdkGLConfig;
		super(cast(GObject*)gdkGLConfig, ownedRef);
	}

	/**
	 * Creates a mew OpenGL frame buffer configuration that match the specified display mode,
	 * or the fallback mode.
	 * Params:
	 *  mode = display mode bit mask.
	 *  fallback = Try this mode if first fails.
	 * Throws: ConstructionException if configuring GL fails
	 */
	this(GdkGLConfigMode mode, GdkGLConfigMode fallback)
	{
		gdkGLConfig = cast(GdkGLConfig*)gdk_gl_config_new_by_mode(mode);
		
		if ( gdkGLConfig is null )
		{
			gdkGLConfig = cast(GdkGLConfig*)gdk_gl_config_new_by_mode(fallback);
		}
		if ( gdkGLConfig is null )
		{
			throw new ConstructionException("GL configure failed");
		}
		
		this(gdkGLConfig);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gdk_gl_config_get_type();
	}

	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 *
	 * attrib_list is a int array that contains the attribute/value pairs.
	 * Available attributes are:
	 * GDK_GL_USE_GL, GDK_GL_BUFFER_SIZE, GDK_GL_LEVEL, GDK_GL_RGBA,
	 * GDK_GL_DOUBLEBUFFER, GDK_GL_STEREO, GDK_GL_AUX_BUFFERS,
	 * GDK_GL_RED_SIZE, GDK_GL_GREEN_SIZE, GDK_GL_BLUE_SIZE, GDK_GL_ALPHA_SIZE,
	 * GDK_GL_DEPTH_SIZE, GDK_GL_STENCIL_SIZE, GDK_GL_ACCUM_RED_SIZE,
	 * GDK_GL_ACCUM_GREEN_SIZE, GDK_GL_ACCUM_BLUE_SIZE, GDK_GL_ACCUM_ALPHA_SIZE.
	 *
	 * Params:
	 *     attribList = a list of attribute/value pairs.
	 *     nAttribs = the number of attributes and values in attrib_list.
	 *
	 * Return: the new #GdkGLConfig.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int[] attribList)
	{
		auto p = gdk_gl_config_new(attribList.ptr, cast(size_t)attribList.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GdkGLConfig*) p, true);
	}

	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * display mode.
	 *
	 * Params:
	 *     mode = display mode bit mask.
	 *
	 * Return: the new #GdkGLConfig.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkGLConfigMode mode)
	{
		auto p = gdk_gl_config_new_by_mode(mode);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_by_mode");
		}
		
		this(cast(GdkGLConfig*) p, true);
	}

	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * display mode.
	 *
	 * Params:
	 *     screen = target screen.
	 *     mode = display mode bit mask.
	 *
	 * Return: the new #GdkGLConfig.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Screen screen, GdkGLConfigMode mode)
	{
		auto p = gdk_gl_config_new_by_mode_for_screen((screen is null) ? null : screen.getScreenStruct(), mode);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_by_mode_for_screen");
		}
		
		this(cast(GdkGLConfig*) p, true);
	}

	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 *
	 * attrib_list is a int array that contains the attribute/value pairs.
	 * Available attributes are:
	 * GDK_GL_USE_GL, GDK_GL_BUFFER_SIZE, GDK_GL_LEVEL, GDK_GL_RGBA,
	 * GDK_GL_DOUBLEBUFFER, GDK_GL_STEREO, GDK_GL_AUX_BUFFERS,
	 * GDK_GL_RED_SIZE, GDK_GL_GREEN_SIZE, GDK_GL_BLUE_SIZE, GDK_GL_ALPHA_SIZE,
	 * GDK_GL_DEPTH_SIZE, GDK_GL_STENCIL_SIZE, GDK_GL_ACCUM_RED_SIZE,
	 * GDK_GL_ACCUM_GREEN_SIZE, GDK_GL_ACCUM_BLUE_SIZE, GDK_GL_ACCUM_ALPHA_SIZE.
	 *
	 * Params:
	 *     attribList = a list of attribute/value pairs.
	 *     nAttribs = the number of attributes and values in attrib_list.
	 *
	 * Return: the new #GdkGLConfig.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, int[] attribList)
	{
		auto p = gdk_gl_config_new_for_display((display is null) ? null : display.getDisplayStruct(), attribList.ptr, cast(size_t)attribList.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_display");
		}
		
		this(cast(GdkGLConfig*) p, true);
	}

	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 *
	 * attrib_list is a int array that contains the attribute/value pairs.
	 * Available attributes are:
	 * GDK_GL_USE_GL, GDK_GL_BUFFER_SIZE, GDK_GL_LEVEL, GDK_GL_RGBA,
	 * GDK_GL_DOUBLEBUFFER, GDK_GL_STEREO, GDK_GL_AUX_BUFFERS,
	 * GDK_GL_RED_SIZE, GDK_GL_GREEN_SIZE, GDK_GL_BLUE_SIZE, GDK_GL_ALPHA_SIZE,
	 * GDK_GL_DEPTH_SIZE, GDK_GL_STENCIL_SIZE, GDK_GL_ACCUM_RED_SIZE,
	 * GDK_GL_ACCUM_GREEN_SIZE, GDK_GL_ACCUM_BLUE_SIZE, GDK_GL_ACCUM_ALPHA_SIZE.
	 *
	 * Params:
	 *     screen = target screen.
	 *     attribList = a list of attribute/value pairs.
	 *     nAttribs = the number of attributes and values in attrib_list.
	 *
	 * Return: the new #GdkGLConfig.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Screen screen, int[] attribList)
	{
		auto p = gdk_gl_config_new_for_screen((screen is null) ? null : screen.getScreenStruct(), attribList.ptr, cast(size_t)attribList.length);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_screen");
		}
		
		this(cast(GdkGLConfig*) p, true);
	}

	/**
	 * Gets information about a OpenGL frame buffer configuration.
	 *
	 * Params:
	 *     attribute = the attribute to be returned.
	 *     value = returns the requested value.
	 *
	 * Return: TRUE if it succeeded, FALSE otherwise.
	 */
	public bool getAttrib(int attribute, out int value)
	{
		return gdk_gl_config_get_attrib(gdkGLConfig, attribute, &value) != 0;
	}

	/**
	 * Gets the color depth of the OpenGL-capable visual.
	 *
	 * Return: number of bits per pixel
	 */
	public int getDepth()
	{
		return gdk_gl_config_get_depth(gdkGLConfig);
	}

	/**
	 * Gets the layer plane (level) of the frame buffer.
	 * Zero is the default frame buffer.
	 * Positive layer planes correspond to frame buffers that overlay the default
	 * buffer, and negative layer planes correspond to frame buffers that underlie
	 * the default frame buffer.
	 *
	 * Return: layer plane.
	 */
	public int getLayerPlane()
	{
		return gdk_gl_config_get_layer_plane(gdkGLConfig);
	}

	/**
	 * Gets the number of auxiliary color buffers.
	 *
	 * Return: number of auxiliary color buffers.
	 */
	public int getNAuxBuffers()
	{
		return gdk_gl_config_get_n_aux_buffers(gdkGLConfig);
	}

	/**
	 * Gets the number of multisample buffers.
	 *
	 * Return: number of multisample buffers.
	 */
	public int getNSampleBuffers()
	{
		return gdk_gl_config_get_n_sample_buffers(gdkGLConfig);
	}

	/**
	 * Gets #GdkScreen.
	 *
	 * Return: the #GdkScreen.
	 */
	public Screen getScreen()
	{
		auto p = gdk_gl_config_get_screen(gdkGLConfig);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Gets the #GdkVisual that is appropriate for the OpenGL frame buffer
	 * configuration.
	 *
	 * Return: the appropriate #GdkVisual.
	 */
	public Visual getVisual()
	{
		auto p = gdk_gl_config_get_visual(gdkGLConfig);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Returns whether the configured frame buffer has accumulation buffer.
	 *
	 * Return: TRUE if the frame buffer has accumulation buffer, FALSE otherwise.
	 */
	public bool hasAccumBuffer()
	{
		return gdk_gl_config_has_accum_buffer(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configured color buffer has alpha bits.
	 *
	 * Return: TRUE if the color buffer has alpha bits, FALSE otherwise.
	 */
	public bool hasAlpha()
	{
		return gdk_gl_config_has_alpha(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configured frame buffer has depth buffer.
	 *
	 * Return: TRUE if the frame buffer has depth buffer, FALSE otherwise.
	 */
	public bool hasDepthBuffer()
	{
		return gdk_gl_config_has_depth_buffer(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configured frame buffer has stencil buffer.
	 *
	 * Return: TRUE if the frame buffer has stencil buffer, FALSE otherwise.
	 */
	public bool hasStencilBuffer()
	{
		return gdk_gl_config_has_stencil_buffer(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configuration supports the double-buffered visual.
	 *
	 * Return: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public bool isDoubleBuffered()
	{
		return gdk_gl_config_is_double_buffered(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configured frame buffer is RGBA mode.
	 *
	 * Return: TRUE if the configured frame buffer is RGBA mode, FALSE otherwise.
	 */
	public bool isRgba()
	{
		return gdk_gl_config_is_rgba(gdkGLConfig) != 0;
	}

	/**
	 * Returns whether the configuration supports the stereo visual.
	 *
	 * Return: TRUE if the stereo visual is supported, FALSE otherwise.
	 */
	public bool isStereo()
	{
		return gdk_gl_config_is_stereo(gdkGLConfig) != 0;
	}
}
