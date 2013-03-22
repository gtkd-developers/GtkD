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
 * inFile  = gtkglext-gdkgldrawable.html
 * outPack = glgdk
 * outFile = GLDrawableT
 * strct   = GdkGLDrawable
 * realStrct=
 * ctorStrct=
 * clss    = GLDrawableT
 * interf  = GLDrawableIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_drawable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glgdk.GLConfig
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLDrawableT;

public  import gtkglc.glgdktypes;

public import gtkglc.glgdk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glgdk.GLConfig;




/**
 */
public template GLDrawableT(TStruct)
{
	
	/** the main Gtk struct */
	protected GdkGLDrawable* gdkGLDrawable;
	
	
	public GdkGLDrawable* getGLDrawableTStruct()
	{
		return cast(GdkGLDrawable*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Returns whether the gldrawable supports the double-buffered visual.
	 * Returns: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public int isDoubleBuffered()
	{
		// gboolean gdk_gl_drawable_is_double_buffered (GdkGLDrawable *gldrawable);
		return gdk_gl_drawable_is_double_buffered(getGLDrawableTStruct());
	}
	
	/**
	 * Exchange front and back buffers.
	 */
	public void swapBuffers()
	{
		// void gdk_gl_drawable_swap_buffers (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_swap_buffers(getGLDrawableTStruct());
	}
	
	/**
	 * Complete OpenGL execution prior to subsequent GDK drawing calls.
	 */
	public void waitGl()
	{
		// void gdk_gl_drawable_wait_gl (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_wait_gl(getGLDrawableTStruct());
	}
	
	/**
	 * Complete GDK drawing execution prior to subsequent OpenGL calls.
	 */
	public void waitGdk()
	{
		// void gdk_gl_drawable_wait_gdk (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_wait_gdk(getGLDrawableTStruct());
	}
	
	/**
	 * Gets GdkGLConfig with which the gldrawable is configured.
	 * Returns: the GdkGLConfig.
	 */
	public GLConfig getGLConfig()
	{
		// GdkGLConfig * gdk_gl_drawable_get_gl_config (GdkGLDrawable *gldrawable);
		auto p = gdk_gl_drawable_get_gl_config(getGLDrawableTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLConfig)(cast(GdkGLConfig*) p);
	}
}
