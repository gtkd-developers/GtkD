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
 * inFile  = cairo-Script-Surfaces.html
 * outPack = cairo
 * outFile = Script
 * strct   = cairo_device_t
 * realStrct=
 * ctorStrct=
 * clss    = Script
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = cairo_device_t
 * implements:
 * prefixes:
 * 	- cairo_script_
 * omit structs:
 * omit prefixes:
 * 	- cairo_script_surface_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- cairo.Script
 * 	- cairo.RecordingSurface
 * structWrap:
 * 	- cairo_device_t* -> Script
 * 	- cairo_surface_t* -> RecordingSurface
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Script;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import glib.Str;
private import cairo.Script;
private import cairo.RecordingSurface;



private import cairo.Device;

/**
 * Description
 * The script surface provides the ability to render to a native
 * script that matches the cairo drawing model. The scripts can
 * be replayed using tools under the util/cairo-script directoriy,
 * or with cairo-perf-trace.
 */
public class Script : Device
{
	
	/** the main Gtk struct */
	protected cairo_device_t* cairo_device;
	
	
	public cairo_device_t* getScriptStruct()
	{
		return cairo_device;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)cairo_device;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_device_t* cairo_device)
	{
		super(cast(cairo_device_t*)cairo_device);
		this.cairo_device = cairo_device;
	}
	
	/**
	 */
	
	/**
	 * Creates a output device for emitting the script, used when
	 * creating the individual surfaces.
	 * Since 1.12
	 * Params:
	 * filename = the name (path) of the file to write the script to
	 * Returns: a pointer to the newly created device. The caller owns the surface and should call cairo_device_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" device if an error such as out of memory occurs. You can use cairo_device_status() to check for this.
	 */
	public static Script create(string filename)
	{
		// cairo_device_t * cairo_script_create (const char *filename);
		auto p = cairo_script_create(Str.toStringz(filename));
		
		if(p is null)
		{
			return null;
		}
		
		return new Script(cast(cairo_device_t*) p);
	}
	
	/**
	 * Creates a output device for emitting the script, used when
	 * creating the individual surfaces.
	 * Since 1.12
	 * Params:
	 * writeFunc = callback function passed the bytes written to the script
	 * closure = user data to be passed to the callback
	 * Returns: a pointer to the newly created device. The caller owns the surface and should call cairo_device_destroy() when done with it. This function always returns a valid pointer, but it will return a pointer to a "nil" device if an error such as out of memory occurs. You can use cairo_device_status() to check for this.
	 */
	public static Script createForStream(cairo_write_func_t writeFunc, void* closure)
	{
		// cairo_device_t * cairo_script_create_for_stream (cairo_write_func_t write_func,  void *closure);
		auto p = cairo_script_create_for_stream(writeFunc, closure);
		
		if(p is null)
		{
			return null;
		}
		
		return new Script(cast(cairo_device_t*) p);
	}
	
	/**
	 * Converts the record operations in recording_surface into a script.
	 * Since 1.12
	 * Params:
	 * recordingSurface = the recording surface to replay
	 * Returns: CAIRO_STATUS_SUCCESS on successful completion or an error code.
	 */
	public cairo_status_t fromRecordingSurface(RecordingSurface recordingSurface)
	{
		// cairo_status_t cairo_script_from_recording_surface (cairo_device_t *script,  cairo_surface_t *recording_surface);
		return cairo_script_from_recording_surface(cairo_device, (recordingSurface is null) ? null : recordingSurface.getRecordingSurfaceStruct());
	}
	
	/**
	 * Queries the script for its current output mode.
	 * Since 1.12
	 * Params:
	 * script = The script (output device) to query
	 * Returns: the current output mode of the script
	 */
	public cairo_script_mode_t getMode()
	{
		// cairo_script_mode_t cairo_script_get_mode (cairo_device_t *script);
		return cairo_script_get_mode(cairo_device);
	}
	
	/**
	 * Change the output mode of the script
	 * Since 1.12
	 * Params:
	 * script = The script (output device)
	 * mode = the new mode
	 */
	public void setMode(cairo_script_mode_t mode)
	{
		// void cairo_script_set_mode (cairo_device_t *script,  cairo_script_mode_t mode);
		cairo_script_set_mode(cairo_device, mode);
	}
	
	/**
	 * Emit a string verbatim into the script.
	 * Since 1.12
	 * Params:
	 * comment = the string to emit
	 */
	public void writeComment(string comment)
	{
		// void cairo_script_write_comment (cairo_device_t *script,  const char *comment,  int len);
		cairo_script_write_comment(cairo_device, cast(char*)comment.ptr, cast(int) comment.length);
	}
}
