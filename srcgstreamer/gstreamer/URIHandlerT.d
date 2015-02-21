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


module gstreamer.URIHandlerT;

public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * The URIHandler is an interface that is implemented by Source and Sink
 * #GstElement to simplify then handling of URI.
 * 
 * An application can use the following functions to quickly get an element
 * that handles the given URI for reading or writing
 * (gst_element_make_from_uri()).
 * 
 * Source and Sink plugins should implement this interface when possible.
 */
public template URIHandlerT(TStruct)
{
	/** Get the main Gtk struct */
	public GstURIHandler* getURIHandlerStruct()
	{
		return cast(GstURIHandler*)getStruct();
	}

	/**
	 */

	/**
	 * Gets the list of protocols supported by @handler. This list may not be
	 * modified.
	 *
	 * Return: the
	 *     supported protocols.  Returns %NULL if the @handler isn't
	 *     implemented properly, or the @handler doesn't support any
	 *     protocols.
	 */
	public string[] getProtocols()
	{
		return Str.toStringArray(gst_uri_handler_get_protocols(getURIHandlerStruct()));
	}

	/**
	 * Gets the currently handled URI.
	 *
	 * Return: the URI currently handled by
	 *     the @handler.  Returns %NULL if there are no URI currently
	 *     handled. The returned string must be freed with g_free() when no
	 *     longer needed.
	 */
	public string getUri()
	{
		return Str.toString(gst_uri_handler_get_uri(getURIHandlerStruct()));
	}

	/**
	 * Gets the type of the given URI handler
	 *
	 * Return: the #GstURIType of the URI handler.
	 *     Returns #GST_URI_UNKNOWN if the @handler isn't implemented correctly.
	 */
	public GstURIType getUriType()
	{
		return gst_uri_handler_get_uri_type(getURIHandlerStruct());
	}

	/**
	 * Tries to set the URI of the given handler.
	 *
	 * Params:
	 *     uri = URI to set
	 *
	 * Return: %TRUE if the URI was set successfully, else %FALSE.
	 *
	 * Throws: GException on failure.
	 */
	public bool setUri(string uri)
	{
		GError* err = null;
		
		auto p = gst_uri_handler_set_uri(getURIHandlerStruct(), Str.toStringz(uri), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Similar to g_filename_to_uri(), but attempts to handle relative file paths
	 * as well. Before converting @filename into an URI, it will be prefixed by
	 * the current working directory if it is a relative path, and then the path
	 * will be canonicalised so that it doesn't contain any './' or '../' segments.
	 *
	 * On Windows #filename should be in UTF-8 encoding.
	 *
	 * Params:
	 *     filename = absolute or relative file name path
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameToUri(string filename)
	{
		GError* err = null;
		
		auto p = gst_filename_to_uri(Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}

	/**
	 * Constructs a URI for a given valid protocol and location.
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     protocol = Protocol for URI
	 *     location = Location for URI
	 *
	 * Return: a new string for this URI. Returns %NULL if the
	 *     given URI protocol is not valid, or the given location is %NULL.
	 */
	public static string uriConstruct(string protocol, string location)
	{
		return Str.toString(gst_uri_construct(Str.toStringz(protocol), Str.toStringz(location)));
	}

	public static GQuark uriErrorQuark()
	{
		return gst_uri_error_quark();
	}

	/**
	 * Extracts the location out of a given valid URI, ie. the protocol and "://"
	 * are stripped from the URI, which means that the location returned includes
	 * the hostname if one is specified. The returned string must be freed using
	 * g_free().
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Return: the location for this URI. Returns %NULL if the
	 *     URI isn't valid. If the URI does not contain a location, an empty
	 *     string is returned.
	 */
	public static string uriGetLocation(string uri)
	{
		return Str.toString(gst_uri_get_location(Str.toStringz(uri)));
	}

	/**
	 * Extracts the protocol out of a given valid URI. The returned string must be
	 * freed using g_free().
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Return: The protocol for this URI.
	 */
	public static string uriGetProtocol(string uri)
	{
		return Str.toString(gst_uri_get_protocol(Str.toStringz(uri)));
	}

	/**
	 * Checks if the protocol of a given valid URI matches @protocol.
	 *
	 * Params:
	 *     uri = a URI string
	 *     protocol = a protocol string (e.g. "http")
	 *
	 * Return: %TRUE if the protocol matches.
	 */
	public static bool uriHasProtocol(string uri, string protocol)
	{
		return gst_uri_has_protocol(Str.toStringz(uri), Str.toStringz(protocol)) != 0;
	}

	/**
	 * Tests if the given string is a valid URI identifier. URIs start with a valid
	 * scheme followed by ":" and maybe a string identifying the location.
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Return: %TRUE if the string is a valid URI
	 */
	public static bool uriIsValid(string uri)
	{
		return gst_uri_is_valid(Str.toStringz(uri)) != 0;
	}

	/**
	 * Checks if an element exists that supports the given URI protocol. Note
	 * that a positive return value does not imply that a subsequent call to
	 * gst_element_make_from_uri() is guaranteed to work.
	 *
	 * Params:
	 *     type = Whether to check for a source or a sink
	 *     protocol = Protocol that should be checked for (e.g. "http" or "smb")
	 *
	 * Return: %TRUE
	 */
	public static bool uriProtocolIsSupported(GstURIType type, string protocol)
	{
		return gst_uri_protocol_is_supported(type, Str.toStringz(protocol)) != 0;
	}

	/**
	 * Tests if the given string is a valid protocol identifier. Protocols
	 * must consist of alphanumeric characters, '+', '-' and '.' and must
	 * start with a alphabetic character. See RFC 3986 Section 3.1.
	 *
	 * Params:
	 *     protocol = A string
	 *
	 * Return: %TRUE if the string is a valid protocol identifier, %FALSE otherwise.
	 */
	public static bool uriProtocolIsValid(string protocol)
	{
		return gst_uri_protocol_is_valid(Str.toStringz(protocol)) != 0;
	}
}
