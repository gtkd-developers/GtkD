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


module glgdk.GLDrawableT;

public  import glgdk.GLConfig;
public  import gobject.ObjectG;
public  import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
public template GLDrawableT(TStruct)
{
	/** Get the main Gtk struct */
	public GdkGLDrawable* getGLDrawableStruct()
	{
		return cast(GdkGLDrawable*)getStruct();
	}


	/**
	 * Gets #GdkGLConfig with which the @gldrawable is configured.
	 *
	 * Return: the #GdkGLConfig.
	 */
	public GLConfig getGlConfig()
	{
		auto p = gdk_gl_drawable_get_gl_config(getGLDrawableStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLConfig)(cast(GdkGLConfig*) p);
	}

	/**
	 * Returns whether the @gldrawable supports the double-buffered visual.
	 *
	 * Return: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public bool isDoubleBuffered()
	{
		return gdk_gl_drawable_is_double_buffered(getGLDrawableStruct()) != 0;
	}

	/**
	 * Exchange front and back buffers.
	 */
	public void swapBuffers()
	{
		gdk_gl_drawable_swap_buffers(getGLDrawableStruct());
	}

	/**
	 * Complete GDK drawing execution prior to subsequent OpenGL calls.
	 */
	public void waitGdk()
	{
		gdk_gl_drawable_wait_gdk(getGLDrawableStruct());
	}

	/**
	 * Complete OpenGL execution prior to subsequent GDK drawing calls.
	 */
	public void waitGl()
	{
		gdk_gl_drawable_wait_gl(getGLDrawableStruct());
	}
}
