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
 * inFile  = 
 * outPack = cairo
 * outFile = ScriptSurface
 * strct   = cairo_surface_t
 * realStrct=
 * ctorStrct=
 * clss    = ScriptSurface
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_surface_t
 * implements:
 * prefixes:
 * 	- cairo_script_surface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Device
 * 	- cairo.Surface
 * structWrap:
 * 	- cairo_device_t* -> Device
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.ScriptSurface;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import cairo.Device;
private import cairo.Surface;



private import cairo.Surface;

/**
 * The script surface provides the ability to render to a native
 * script that matches the cairo drawing model. The scripts can
 * be replayed using tools under the util/cairo-script directoriy,
 * or with cairo-perf-trace.
 */
public class ScriptSurface : Surface
{
	
	/** the main Gtk struct */
	protected cairo_surface_t* cairo_surface;
	
	
	public cairo_surface_t* getScriptSurfaceStruct()
	{
		return cairo_surface;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)cairo_surface;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_surface_t* cairo_surface)
	{
		super(cast(cairo_surface_t*)cairo_surface);
		this.cairo_surface = cairo_surface;
	}
	
	/**
	 */
	
	/**
	 * Create a new surface that will emit its rendering through script
	 * Since 1.12
	 * Params:
	 * script = the script (output device)
	 * content = the content of the surface
	 * width = width in pixels
	 * height = height in pixels
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
	 */
	public static Surface create(Device script, cairo_content_t content, double width, double height)
	{
		// cairo_surface_t * cairo_script_surface_create (cairo_device_t *script,  cairo_content_t content,  double width,  double height);
		auto p = cairo_script_surface_create((script is null) ? null : script.getDeviceStruct(), content, width, height);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Create a pxoy surface that will render to target and record
	 * the operations to device.
	 * Since 1.12
	 * Params:
	 * script = the script (output device)
	 * target = a target surface to wrap
	 * Returns: a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
	 */
	public static Surface createForTarget(Device script, Surface target)
	{
		// cairo_surface_t * cairo_script_surface_create_for_target  (cairo_device_t *script,  cairo_surface_t *target);
		auto p = cairo_script_surface_create_for_target((script is null) ? null : script.getDeviceStruct(), (target is null) ? null : target.getSurfaceStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
}
