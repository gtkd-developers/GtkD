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


module soup.WebsocketExtension;

private import glib.Bytes;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class WebsocketExtension : ObjectG
{
	/** the main Gtk struct */
	protected SoupWebsocketExtension* soupWebsocketExtension;

	/** Get the main Gtk struct */
	public SoupWebsocketExtension* getWebsocketExtensionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupWebsocketExtension;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupWebsocketExtension;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupWebsocketExtension* soupWebsocketExtension, bool ownedRef = false)
	{
		this.soupWebsocketExtension = soupWebsocketExtension;
		super(cast(GObject*)soupWebsocketExtension, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_websocket_extension_get_type();
	}

	/**
	 * Configures @extension with the given @params
	 *
	 * Params:
	 *     connectionType = either %SOUP_WEBSOCKET_CONNECTION_CLIENT or %SOUP_WEBSOCKET_CONNECTION_SERVER
	 *     params = the parameters, or %NULL
	 *
	 * Returns: %TRUE if extension could be configured with the given parameters, or %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	public bool configure(SoupWebsocketConnectionType connectionType, HashTable params)
	{
		GError* err = null;

		auto __p = soup_websocket_extension_configure(soupWebsocketExtension, connectionType, (params is null) ? null : params.getHashTableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Get the parameters strings to be included in the request header. If the extension
	 * doesn't include any parameter in the request, this function returns %NULL.
	 *
	 * Returns: a new allocated string with the parameters
	 *
	 * Since: 2.68
	 */
	public string getRequestParams()
	{
		auto retStr = soup_websocket_extension_get_request_params(soupWebsocketExtension);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the parameters strings to be included in the response header. If the extension
	 * doesn't include any parameter in the response, this function returns %NULL.
	 *
	 * Returns: a new allocated string with the parameters
	 *
	 * Since: 2.68
	 */
	public string getResponseParams()
	{
		auto retStr = soup_websocket_extension_get_response_params(soupWebsocketExtension);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Process a message after it's received. If the payload isn't changed the given
	 * @payload is just returned, otherwise g_bytes_unref() is called on the given
	 * @payload and a new #GBytes is returned with the new data.
	 *
	 * Extensions using reserved bits of the header will reset them in @header.
	 *
	 * Params:
	 *     header = the message header
	 *     payload = the payload data
	 *
	 * Returns: the message payload data, or %NULL in case of error
	 *
	 * Since: 2.68
	 *
	 * Throws: GException on failure.
	 */
	public Bytes processIncomingMessage(ref ubyte header, Bytes payload)
	{
		GError* err = null;

		auto __p = soup_websocket_extension_process_incoming_message(soupWebsocketExtension, &header, (payload is null) ? null : payload.getBytesStruct(true), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Process a message before it's sent. If the payload isn't changed the given
	 * @payload is just returned, otherwise g_bytes_unref() is called on the given
	 * @payload and a new #GBytes is returned with the new data.
	 *
	 * Extensions using reserved bits of the header will change them in @header.
	 *
	 * Params:
	 *     header = the message header
	 *     payload = the payload data
	 *
	 * Returns: the message payload data, or %NULL in case of error
	 *
	 * Since: 2.68
	 *
	 * Throws: GException on failure.
	 */
	public Bytes processOutgoingMessage(ref ubyte header, Bytes payload)
	{
		GError* err = null;

		auto __p = soup_websocket_extension_process_outgoing_message(soupWebsocketExtension, &header, (payload is null) ? null : payload.getBytesStruct(true), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
