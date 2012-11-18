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
 * inFile  = gtkglext-gdkglconfig.html
 * outPack = glgdk
 * outFile = GLConfig
 * strct   = GdkGLConfig
 * realStrct=
 * ctorStrct=
 * clss    = GLConfig
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_config_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdio
 * 	- glib.Str
 * 	- gdk.Screen
 * 	- gdk.Visual
 * structWrap:
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLConfig;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Screen;
private import gdk.Visual;


version(Tango) {
	private import tango.io.Stdout;
} else {
	private import std.stdio;
}


private import gobject.ObjectG;

/**
 * Description
 */
public class GLConfig : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkGLConfig* gdkGLConfig;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLConfig* gdkGLConfig)
	{
		super(cast(GObject*)gdkGLConfig);
		this.gdkGLConfig = gdkGLConfig;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkGLConfig = cast(GdkGLConfig*)obj;
	}
	
	/**
	 * Creates a mew OpenGL frame buffer configuration that match the specified display mode,
	 * or the fallback mode.
	 * Params:
	 *  mode = display mode bit mask.
	 *  fallback = Try this mode if first fails.
	 * Throws: ConstructionException if configuring GL fails
	 */
	this(GLConfigMode mode, GLConfigMode fallback)
	{
		
		gdkGLConfig = cast(GdkGLConfig*)gdk_gl_config_new_by_mode(mode);
		if ( gdkGLConfig is null )
		{
			version(Tango)
			{
				Stdout("*** Cannot find the double-buffered visual.").newline;
				Stdout("*** Trying single-buffered visual.").newline;
			}
			else
			{
				writefln("*** Cannot find the double-buffered visual.");
				writefln("*** Trying single-buffered visual.");
			}
			gdkGLConfig = cast(GdkGLConfig*)gdk_gl_config_new_by_mode(fallback);
		}
		if ( gdkGLConfig is null )
		{
			version(Tango)
			{
				Stdout("*** No appropriate OpenGL-capable visual found.").newline;
			}
			else
			{
				writefln("*** No appropriate OpenGL-capable visual found.");
			}
			throw new ConstructionException("GL configure failed");
		}
		this(gdkGLConfig);
	}
	
	/**
	 */
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 * attrib_list is a int array that contains the attribute/value pairs.
	 * Params:
	 * attribList = a list of attribute/value pairs. [array length=n_attribs]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int[] attribList)
	{
		// GdkGLConfig * gdk_gl_config_new (const int *attrib_list,  gsize n_attribs);
		auto p = gdk_gl_config_new(attribList.ptr, cast(int) attribList.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new(attribList.ptr, cast(int) attribList.length)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 * attrib_list is a int array that contains the attribute/value pairs.
	 * Params:
	 * screen = target screen.
	 * attribList = a list of attribute/value pairs. [array length=n_attribs]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Screen screen, int[] attribList)
	{
		// GdkGLConfig * gdk_gl_config_new_for_screen (GdkScreen *screen,  const int *attrib_list,  gsize n_attribs);
		auto p = gdk_gl_config_new_for_screen((screen is null) ? null : screen.getScreenStruct(), attribList.ptr, cast(int) attribList.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new_for_screen((screen is null) ? null : screen.getScreenStruct(), attribList.ptr, cast(int) attribList.length)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * display mode.
	 * Params:
	 * mode = display mode bit mask.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkGLConfigMode mode)
	{
		// GdkGLConfig * gdk_gl_config_new_by_mode (GdkGLConfigMode mode);
		auto p = gdk_gl_config_new_by_mode(mode);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new_by_mode(mode)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * display mode.
	 * Params:
	 * screen = target screen.
	 * mode = display mode bit mask.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Screen screen, GdkGLConfigMode mode)
	{
		// GdkGLConfig * gdk_gl_config_new_by_mode_for_screen  (GdkScreen *screen,  GdkGLConfigMode mode);
		auto p = gdk_gl_config_new_by_mode_for_screen((screen is null) ? null : screen.getScreenStruct(), mode);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new_by_mode_for_screen((screen is null) ? null : screen.getScreenStruct(), mode)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Gets GdkScreen.
	 * Returns: the GdkScreen.
	 */
	public Screen getScreen()
	{
		// GdkScreen * gdk_gl_config_get_screen (GdkGLConfig *glconfig);
		auto p = gdk_gl_config_get_screen(gdkGLConfig);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * Gets information about a OpenGL frame buffer configuration.
	 * Params:
	 * attribute = the attribute to be returned.
	 * value = returns the requested value.
	 * Returns: TRUE if it succeeded, FALSE otherwise.
	 */
	public int getAttrib(int attribute, out int value)
	{
		// gboolean gdk_gl_config_get_attrib (GdkGLConfig *glconfig,  int attribute,  int *value);
		return gdk_gl_config_get_attrib(gdkGLConfig, attribute, &value);
	}
	
	/**
	 * Gets the GdkVisual that is appropriate for the OpenGL frame buffer
	 * configuration.
	 * Returns: the appropriate GdkVisual.
	 */
	public Visual getVisual()
	{
		// GdkVisual * gdk_gl_config_get_visual (GdkGLConfig *glconfig);
		auto p = gdk_gl_config_get_visual(gdkGLConfig);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}
	
	/**
	 * Gets the color depth of the OpenGL-capable visual.
	 * Returns: number of bits per pixel
	 */
	public int getDepth()
	{
		// gint gdk_gl_config_get_depth (GdkGLConfig *glconfig);
		return gdk_gl_config_get_depth(gdkGLConfig);
	}
	
	/**
	 * Gets the layer plane (level) of the frame buffer.
	 * Zero is the default frame buffer.
	 * Positive layer planes correspond to frame buffers that overlay the default
	 * buffer, and negative layer planes correspond to frame buffers that underlie
	 * the default frame buffer.
	 * Returns: layer plane.
	 */
	public int getLayerPlane()
	{
		// gint gdk_gl_config_get_layer_plane (GdkGLConfig *glconfig);
		return gdk_gl_config_get_layer_plane(gdkGLConfig);
	}
	
	/**
	 * Gets the number of auxiliary color buffers.
	 * Returns: number of auxiliary color buffers.
	 */
	public int getNAuxBuffers()
	{
		// gint gdk_gl_config_get_n_aux_buffers (GdkGLConfig *glconfig);
		return gdk_gl_config_get_n_aux_buffers(gdkGLConfig);
	}
	
	/**
	 * Gets the number of multisample buffers.
	 * Returns: number of multisample buffers.
	 */
	public int getNSampleBuffers()
	{
		// gint gdk_gl_config_get_n_sample_buffers (GdkGLConfig *glconfig);
		return gdk_gl_config_get_n_sample_buffers(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured frame buffer is RGBA mode.
	 * Returns: TRUE if the configured frame buffer is RGBA mode, FALSE otherwise.
	 */
	public int isRgba()
	{
		// gboolean gdk_gl_config_is_rgba (GdkGLConfig *glconfig);
		return gdk_gl_config_is_rgba(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configuration supports the double-buffered visual.
	 * Returns: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public int isDoubleBuffered()
	{
		// gboolean gdk_gl_config_is_double_buffered (GdkGLConfig *glconfig);
		return gdk_gl_config_is_double_buffered(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configuration supports the stereo visual.
	 * Returns: TRUE if the stereo visual is supported, FALSE otherwise.
	 */
	public int isStereo()
	{
		// gboolean gdk_gl_config_is_stereo (GdkGLConfig *glconfig);
		return gdk_gl_config_is_stereo(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured color buffer has alpha bits.
	 * Returns: TRUE if the color buffer has alpha bits, FALSE otherwise.
	 */
	public int hasAlpha()
	{
		// gboolean gdk_gl_config_has_alpha (GdkGLConfig *glconfig);
		return gdk_gl_config_has_alpha(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured frame buffer has depth buffer.
	 * Returns: TRUE if the frame buffer has depth buffer, FALSE otherwise.
	 */
	public int hasDepthBuffer()
	{
		// gboolean gdk_gl_config_has_depth_buffer (GdkGLConfig *glconfig);
		return gdk_gl_config_has_depth_buffer(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured frame buffer has stencil buffer.
	 * Returns: TRUE if the frame buffer has stencil buffer, FALSE otherwise.
	 */
	public int hasStencilBuffer()
	{
		// gboolean gdk_gl_config_has_stencil_buffer (GdkGLConfig *glconfig);
		return gdk_gl_config_has_stencil_buffer(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured frame buffer has accumulation buffer.
	 * Returns: TRUE if the frame buffer has accumulation buffer, FALSE otherwise.
	 */
	public int hasAccumBuffer()
	{
		// gboolean gdk_gl_config_has_accum_buffer (GdkGLConfig *glconfig);
		return gdk_gl_config_has_accum_buffer(gdkGLConfig);
	}
}
