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
 * 	- glib.Str
 * 	- std.stdio
 * 	- gdk.Screen
 * 	- gdk.Colormap
 * 	- gdk.Visual
 * structWrap:
 * 	- GdkColormap* -> Colormap
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


private import glib.Str;
private import gdk.Screen;
private import gdk.Colormap;
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
		if(gdkGLConfig is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkGLConfig);
		if( ptr !is null )
		{
			this = cast(GLConfig)ptr;
			return;
		}
		super(cast(GObject*)gdkGLConfig);
		this.gdkGLConfig = gdkGLConfig;
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
	 * Available attributes are:
	 * GDK_GL_USE_GL, GDK_GL_BUFFER_SIZE, GDK_GL_LEVEL, GDK_GL_RGBA,
	 * GDK_GL_DOUBLEBUFFER, GDK_GL_STEREO, GDK_GL_AUX_BUFFERS,
	 * GDK_GL_RED_SIZE, GDK_GL_GREEN_SIZE, GDK_GL_BLUE_SIZE, GDK_GL_ALPHA_SIZE,
	 * GDK_GL_DEPTH_SIZE, GDK_GL_STENCIL_SIZE, GDK_GL_ACCUM_RED_SIZE,
	 * GDK_GL_ACCUM_GREEN_SIZE, GDK_GL_ACCUM_BLUE_SIZE, GDK_GL_ACCUM_ALPHA_SIZE.
	 * Params:
	 * attribList =  a list of attribute/value pairs. The last attribute must
	 *  be GDK_GL_ATTRIB_LIST_NONE.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int* attribList)
	{
		// GdkGLConfig* gdk_gl_config_new (const int *attrib_list);
		auto p = gdk_gl_config_new(attribList);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new(attribList)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * attributes.
	 * Params:
	 * screen =  target screen.
	 * attribList =  a list of attribute/value pairs. The last attribute must
	 *  be GDK_GL_ATTRIB_LIST_NONE.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Screen screen, int* attribList)
	{
		// GdkGLConfig* gdk_gl_config_new_for_screen (GdkScreen *screen,  const int *attrib_list);
		auto p = gdk_gl_config_new_for_screen((screen is null) ? null : screen.getScreenStruct(), attribList);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_config_new_for_screen((screen is null) ? null : screen.getScreenStruct(), attribList)");
		}
		this(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Returns an OpenGL frame buffer configuration that match the specified
	 * display mode.
	 * Params:
	 * mode =  display mode bit mask.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkGLConfigMode mode)
	{
		// GdkGLConfig* gdk_gl_config_new_by_mode (GdkGLConfigMode mode);
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
	 * screen =  target screen.
	 * mode =  display mode bit mask.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Screen screen, GdkGLConfigMode mode)
	{
		// GdkGLConfig* gdk_gl_config_new_by_mode_for_screen  (GdkScreen *screen,  GdkGLConfigMode mode);
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
		// GdkScreen* gdk_gl_config_get_screen (GdkGLConfig *glconfig);
		auto p = gdk_gl_config_get_screen(gdkGLConfig);
		if(p is null)
		{
			return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Gets information about a OpenGL frame buffer configuration.
	 * Params:
	 * attribute =  the attribute to be returned.
	 * value =  returns the requested value.
	 * Returns: TRUE if it succeeded, FALSE otherwise.
	 */
	public int getAttrib(int attribute, int* value)
	{
		// gboolean gdk_gl_config_get_attrib (GdkGLConfig *glconfig,  int attribute,  int *value);
		return gdk_gl_config_get_attrib(gdkGLConfig, attribute, value);
	}
	
	/**
	 * Gets the GdkColormap that is appropriate for the OpenGL frame buffer
	 * configuration.
	 * Returns: the appropriate GdkColormap.
	 */
	public Colormap getColormap()
	{
		// GdkColormap* gdk_gl_config_get_colormap (GdkGLConfig *glconfig);
		auto p = gdk_gl_config_get_colormap(gdkGLConfig);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Gets the GdkVisual that is appropriate for the OpenGL frame buffer
	 * configuration.
	 * Returns: the appropriate GdkVisual.
	 */
	public Visual getVisual()
	{
		// GdkVisual* gdk_gl_config_get_visual (GdkGLConfig *glconfig);
		auto p = gdk_gl_config_get_visual(gdkGLConfig);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
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
		// gint gdk_gl_config_get_n_sample_buffers  (GdkGLConfig *glconfig);
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
		// gboolean gdk_gl_config_is_double_buffered  (GdkGLConfig *glconfig);
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
		// gboolean gdk_gl_config_has_stencil_buffer  (GdkGLConfig *glconfig);
		return gdk_gl_config_has_stencil_buffer(gdkGLConfig);
	}
	
	/**
	 * Returns whether the configured frame buffer has accumulation buffer.
	 * Returns: TRUE if the frame buffer has accumulation buffer, FALSE otherwise.<<QueryRendering Context>>
	 */
	public int hasAccumBuffer()
	{
		// gboolean gdk_gl_config_has_accum_buffer (GdkGLConfig *glconfig);
		return gdk_gl_config_has_accum_buffer(gdkGLConfig);
	}
}
