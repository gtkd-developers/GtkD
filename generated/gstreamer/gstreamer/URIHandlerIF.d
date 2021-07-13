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


module gstreamer.URIHandlerIF;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * The #GstURIHandler is an interface that is implemented by Source and Sink
 * #GstElement to unify handling of URI.
 * 
 * An application can use the following functions to quickly get an element
 * that handles the given URI for reading or writing
 * (gst_element_make_from_uri()).
 * 
 * Source and Sink plugins should implement this interface when possible.
 */
public interface URIHandlerIF{
	/** Get the main Gtk struct */
	public GstURIHandler* getURIHandlerStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gst_uri_handler_get_type();
	}

	/**
	 * Gets the list of protocols supported by @handler. This list may not be
	 * modified.
	 *
	 * Returns: the
	 *     supported protocols.  Returns %NULL if the @handler isn't
	 *     implemented properly, or the @handler doesn't support any
	 *     protocols.
	 */
	public string[] getProtocols();

	/**
	 * Gets the currently handled URI.
	 *
	 * Returns: the URI currently handled by
	 *     the @handler.  Returns %NULL if there are no URI currently
	 *     handled. The returned string must be freed with g_free() when no
	 *     longer needed.
	 */
	public string getUri();

	/**
	 * Gets the type of the given URI handler
	 *
	 * Returns: the #GstURIType of the URI handler.
	 *     Returns #GST_URI_UNKNOWN if the @handler isn't implemented correctly.
	 */
	public GstURIType getUriType();

	/**
	 * Tries to set the URI of the given handler.
	 *
	 * Params:
	 *     uri = URI to set
	 *
	 * Returns: %TRUE if the URI was set successfully, else %FALSE.
	 *
	 * Throws: GException on failure.
	 */
	public bool setUri(string uri);
}
