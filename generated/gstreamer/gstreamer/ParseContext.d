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


module gstreamer.ParseContext;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
private import gtkd.Loader;


/**
 * Opaque structure.
 */
public class ParseContext
{
	/** the main Gtk struct */
	protected GstParseContext* gstParseContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstParseContext* getParseContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstParseContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstParseContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstParseContext* gstParseContext, bool ownedRef = false)
	{
		this.gstParseContext = gstParseContext;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_parse_context_free(gstParseContext);
	}


	/** */
	public static GType getType()
	{
		return gst_parse_context_get_type();
	}

	/**
	 * Allocates a parse context for use with gst_parse_launch_full() or
	 * gst_parse_launchv_full().
	 *
	 * Free-function: gst_parse_context_free
	 *
	 * Returns: a newly-allocated parse context. Free
	 *     with gst_parse_context_free() when no longer needed.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_parse_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstParseContext*) __p);
	}

	/**
	 * Copies the @context.
	 *
	 * Returns: A copied #GstParseContext
	 *
	 * Since: 1.12.1
	 */
	public ParseContext copy()
	{
		auto __p = gst_parse_context_copy(gstParseContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParseContext)(cast(GstParseContext*) __p, true);
	}

	/**
	 * Frees a parse context previously allocated with gst_parse_context_new().
	 */
	public void free()
	{
		gst_parse_context_free(gstParseContext);
		ownedRef = false;
	}

	/**
	 * Retrieve missing elements from a previous run of gst_parse_launch_full()
	 * or gst_parse_launchv_full(). Will only return results if an error code
	 * of %GST_PARSE_ERROR_NO_SUCH_ELEMENT was returned.
	 *
	 * Returns: a
	 *     %NULL-terminated array of element factory name strings of missing
	 *     elements. Free with g_strfreev() when no longer needed.
	 */
	public string[] getMissingElements()
	{
		auto retStr = gst_parse_context_get_missing_elements(gstParseContext);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}
}
