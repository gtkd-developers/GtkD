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
 * outPack = gstreamer
 * outFile = ParseContext
 * strct   = GstParseContext
 * realStrct=
 * ctorStrct=
 * clss    = ParseContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_parse_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ParseContext;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * These function allow to create a pipeline based on the syntax used in the
 * gst-launch utility (see man-page for syntax documentation).
 *
 * Please note that these functions take several measures to create
 * somewhat dynamic pipelines. Due to that such pipelines are not always
 * reusable (set the state to NULL and back to PLAYING).
 */
public class ParseContext
{
	
	/** the main Gtk struct */
	protected GstParseContext* gstParseContext;
	
	
	public GstParseContext* getParseContextStruct()
	{
		return gstParseContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstParseContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstParseContext* gstParseContext)
	{
		this.gstParseContext = gstParseContext;
	}
	
	/**
	 */
	
	/**
	 * Allocates a parse context for use with gst_parse_launch_full() or
	 * gst_parse_launchv_full().
	 * Free-function: gst_parse_context_free
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstParseContext * gst_parse_context_new (void);
		auto p = gst_parse_context_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_parse_context_new()");
		}
		this(cast(GstParseContext*) p);
	}
	
	/**
	 * Frees a parse context previously allocated with gst_parse_context_new().
	 */
	public void free()
	{
		// void gst_parse_context_free (GstParseContext *context);
		gst_parse_context_free(gstParseContext);
	}
	
	/**
	 * Retrieve missing elements from a previous run of gst_parse_launch_full()
	 * or gst_parse_launchv_full(). Will only return results if an error code
	 * of GST_PARSE_ERROR_NO_SUCH_ELEMENT was returned.
	 * Returns: a NULL-terminated array of element factory name strings of missing elements. Free with g_strfreev() when no longer needed. [transfer full][array zero-terminated=1][element-type gchar*]
	 */
	public string[] getMissingElements()
	{
		// gchar ** gst_parse_context_get_missing_elements  (GstParseContext *context);
		return Str.toStringArray(gst_parse_context_get_missing_elements(gstParseContext));
	}
}
