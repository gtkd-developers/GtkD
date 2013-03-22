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
 * outFile = GLDrawableIF
 * strct   = GdkGLDrawable
 * realStrct=
 * ctorStrct=
 * clss    = GLDrawableT
 * interf  = GLDrawableIF
 * class Code: No
 * interface Code: No
 * template for:
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

module glgdk.GLDrawableIF;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glgdk.GLConfig;




/**
 */
public interface GLDrawableIF
{
	
	
	public GdkGLDrawable* getGLDrawableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Returns whether the gldrawable supports the double-buffered visual.
	 * Returns: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public int isDoubleBuffered();
	
	/**
	 * Exchange front and back buffers.
	 */
	public void swapBuffers();
	
	/**
	 * Complete OpenGL execution prior to subsequent GDK drawing calls.
	 */
	public void waitGl();
	
	/**
	 * Complete GDK drawing execution prior to subsequent OpenGL calls.
	 */
	public void waitGdk();
	
	/**
	 * Gets GdkGLConfig with which the gldrawable is configured.
	 * Returns: the GdkGLConfig.
	 */
	public GLConfig getGLConfig();
}
