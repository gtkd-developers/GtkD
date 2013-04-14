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
 * inFile  = gstreamer-GstUriHandler.html
 * outPack = gstreamer
 * outFile = UriHandlerIF
 * strct   = GstURIHandler
 * realStrct=
 * ctorStrct=
 * clss    = UriHandlerT
 * interf  = UriHandlerIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_uri_protocol_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gstreamer.Element
 * structWrap:
 * 	- GstElement* -> Element
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.UriHandlerIF;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gstreamer.Element;




/**
 * The URIHandler is an interface that is implemented by Source and Sink
 * GstElement to simplify then handling of URI.
 *
 * An application can use the following functions to quickly get an element
 * that handles the given URI for reading or writing
 * (gst_element_make_from_uri()).
 *
 * Source and Sink plugins should implement this interface when possible.
 *
 * Last reviewed on 2005-11-09 (0.9.4)
 */
public interface UriHandlerIF
{
	
	
	public GstURIHandler* getUriHandlerTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 */
	public static GQuark gstUriErrorQuark();
	
	/**
	 * Tests if the given string is a valid protocol identifier. Protocols
	 * must consist of alphanumeric characters, '+', '-' and '.' and must
	 * start with a alphabetic character. See RFC 3986 Section 3.1.
	 * Params:
	 * protocol = A string
	 * Returns: TRUE if the string is a valid protocol identifier, FALSE otherwise.
	 */
	public static int isValid(string protocol);
	
	/**
	 * Checks if an element exists that supports the given URI protocol. Note
	 * that a positive return value does not imply that a subsequent call to
	 * gst_element_make_from_uri() is guaranteed to work.
	 * Params:
	 * type = Whether to check for a source or a sink
	 * protocol = Protocol that should be checked for (e.g. "http" or "smb")
	 * Returns: TRUE
	 */
	public static int isSupported(GstURIType type, string protocol);
	
	/**
	 * Tests if the given string is a valid URI identifier. URIs start with a valid
	 * scheme followed by ":" and maybe a string identifying the location.
	 * Params:
	 * uri = A URI string
	 * Returns: TRUE if the string is a valid URI
	 */
	public static int gstUriIsValid(string uri);
	
	/**
	 * Checks if the protocol of a given valid URI matches protocol.
	 * Params:
	 * uri = a URI string
	 * protocol = a protocol string (e.g. "http")
	 * Returns: TRUE if the protocol matches.
	 */
	public static int gstUriHasProtocol(string uri, string protocol);
	
	/**
	 * Extracts the protocol out of a given valid URI. The returned string must be
	 * freed using g_free().
	 * Params:
	 * uri = A URI string
	 * Returns: The protocol for this URI.
	 */
	public static string gstUriGetProtocol(string uri);
	
	/**
	 * Extracts the location out of a given valid URI, ie. the protocol and "://"
	 * are stripped from the URI, which means that the location returned includes
	 * the hostname if one is specified. The returned string must be freed using
	 * g_free().
	 * Free-function: g_free
	 * Params:
	 * uri = A URI string
	 * Returns: the location for this URI. Returns NULL if the URI isn't valid. If the URI does not contain a location, an empty string is returned. [transfer full]
	 */
	public static string gstUriGetLocation(string uri);
	
	/**
	 * Constructs a URI for a given valid protocol and location.
	 * Free-function: g_free
	 * Params:
	 * protocol = Protocol for URI
	 * location = Location for URI. [transfer none]
	 * Returns: a new string for this URI. Returns NULL if the given URI protocol is not valid, or the given location is NULL. [transfer full]
	 */
	public static string gstUriConstruct(string protocol, string location);
	
	/**
	 * Similar to g_filename_to_uri(), but attempts to handle relative file paths
	 * as well. Before converting filename into an URI, it will be prefixed by
	 * the current working directory if it is a relative path, and then the path
	 * will be canonicalised so that it doesn't contain any './' or '../' segments.
	 * On Windows filename should be in UTF-8 encoding.
	 * Params:
	 * filename = absolute or relative file name path
	 * Throws: GException on failure.
	 */
	public static string gstFilenameToUri(string filename);
	
	/**
	 * Creates an element for handling the given URI.
	 * Params:
	 * type = Whether to create a source or a sink
	 * uri = URI to create an element for
	 * elementname = Name of created element, can be NULL. [allow-none]
	 * Returns: a new element or NULL if none could be created. [transfer floating]
	 * Throws: GException on failure.
	 */
	public static Element gstElementMakeFromUri(GstURIType type, string uri, string elementname);
	
	/**
	 * Gets the type of the given URI handler
	 * Returns: the GstURIType of the URI handler. Returns GST_URI_UNKNOWN if the handler isn't implemented correctly.
	 */
	public GstURIType gstUriHandlerGetUriType();
	
	/**
	 * Gets the list of protocols supported by handler. This list may not be
	 * modified.
	 * Returns: the supported protocols. Returns NULL if the handler isn't implemented properly, or the handler doesn't support any protocols. [transfer none][element-type utf8]
	 */
	public string[] gstUriHandlerGetProtocols();
	
	/**
	 * Gets the currently handled URI.
	 * Returns: the URI currently handled by the handler. Returns NULL if there are no URI currently handled. The returned string must be freed with g_free() when no longer needed. [transfer full]
	 */
	public string gstUriHandlerGetUri();
	
	/**
	 * Tries to set the URI of the given handler.
	 * Params:
	 * uri = URI to set
	 * Returns: TRUE if the URI was set successfully, else FALSE.
	 * Throws: GException on failure.
	 */
	public int gstUriHandlerSetUri(string uri);
}
