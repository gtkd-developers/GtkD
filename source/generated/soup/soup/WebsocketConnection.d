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


module soup.WebsocketConnection;

private import gio.IOStream;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.URI;
private import soup.WebsocketExtension;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/**
 * A class representing a WebSocket connection.
 *
 * Since: 2.50
 */
public class WebsocketConnection : ObjectG
{
	/** the main Gtk struct */
	protected SoupWebsocketConnection* soupWebsocketConnection;

	/** Get the main Gtk struct */
	public SoupWebsocketConnection* getWebsocketConnectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupWebsocketConnection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupWebsocketConnection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupWebsocketConnection* soupWebsocketConnection, bool ownedRef = false)
	{
		this.soupWebsocketConnection = soupWebsocketConnection;
		super(cast(GObject*)soupWebsocketConnection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_websocket_connection_get_type();
	}

	/**
	 * Creates a #SoupWebsocketConnection on @stream. This should be
	 * called after completing the handshake to begin using the WebSocket
	 * protocol.
	 *
	 * Params:
	 *     stream = a #GIOStream connected to the WebSocket server
	 *     uri = the URI of the connection
	 *     type = the type of connection (client/side)
	 *     origin = the Origin of the client
	 *     protocol = the subprotocol in use
	 *
	 * Returns: a new #SoupWebsocketConnection
	 *
	 * Since: 2.50
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IOStream stream, URI uri, SoupWebsocketConnectionType type, string origin, string protocol)
	{
		auto __p = soup_websocket_connection_new((stream is null) ? null : stream.getIOStreamStruct(), (uri is null) ? null : uri.getURIStruct(), type, Str.toStringz(origin), Str.toStringz(protocol));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupWebsocketConnection*) __p, true);
	}

	/**
	 * Creates a #SoupWebsocketConnection on @stream with the given active @extensions.
	 * This should be called after completing the handshake to begin using the WebSocket
	 * protocol.
	 *
	 * Params:
	 *     stream = a #GIOStream connected to the WebSocket server
	 *     uri = the URI of the connection
	 *     type = the type of connection (client/side)
	 *     origin = the Origin of the client
	 *     protocol = the subprotocol in use
	 *     extensions = a #GList of #SoupWebsocketExtension objects
	 *
	 * Returns: a new #SoupWebsocketConnection
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IOStream stream, URI uri, SoupWebsocketConnectionType type, string origin, string protocol, ListG extensions)
	{
		auto __p = soup_websocket_connection_new_with_extensions((stream is null) ? null : stream.getIOStreamStruct(), (uri is null) ? null : uri.getURIStruct(), type, Str.toStringz(origin), Str.toStringz(protocol), (extensions is null) ? null : extensions.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_extensions");
		}

		this(cast(SoupWebsocketConnection*) __p, true);
	}

	/**
	 * Close the connection in an orderly fashion.
	 *
	 * Note that until the #SoupWebsocketConnection::closed signal fires, the connection
	 * is not yet completely closed. The close message is not even sent until the
	 * main loop runs.
	 *
	 * The @code and @data are sent to the peer along with the close request.
	 * If @code is %SOUP_WEBSOCKET_CLOSE_NO_STATUS a close message with no body
	 * (without code and data) is sent.
	 * Note that the @data must be UTF-8 valid.
	 *
	 * Params:
	 *     code = close code
	 *     data = close data
	 *
	 * Since: 2.50
	 */
	public void close(ushort code, string data)
	{
		soup_websocket_connection_close(soupWebsocketConnection, code, Str.toStringz(data));
	}

	/**
	 * Get the close code received from the WebSocket peer.
	 *
	 * This only becomes valid once the WebSocket is in the
	 * %SOUP_WEBSOCKET_STATE_CLOSED state. The value will often be in the
	 * #SoupWebsocketCloseCode enumeration, but may also be an application
	 * defined close code.
	 *
	 * Returns: the close code or zero.
	 *
	 * Since: 2.50
	 */
	public ushort getCloseCode()
	{
		return soup_websocket_connection_get_close_code(soupWebsocketConnection);
	}

	/**
	 * Get the close data received from the WebSocket peer.
	 *
	 * This only becomes valid once the WebSocket is in the
	 * %SOUP_WEBSOCKET_STATE_CLOSED state. The data may be freed once
	 * the main loop is run, so copy it if you need to keep it around.
	 *
	 * Returns: the close data or %NULL
	 *
	 * Since: 2.50
	 */
	public string getCloseData()
	{
		return Str.toString(soup_websocket_connection_get_close_data(soupWebsocketConnection));
	}

	/**
	 * Get the connection type (client/server) of the connection.
	 *
	 * Returns: the connection type
	 *
	 * Since: 2.50
	 */
	public SoupWebsocketConnectionType getConnectionType()
	{
		return soup_websocket_connection_get_connection_type(soupWebsocketConnection);
	}

	/**
	 * Get the extensions chosen via negotiation with the peer.
	 *
	 * Returns: a #GList of #SoupWebsocketExtension objects
	 *
	 * Since: 2.68
	 */
	public ListG getExtensions()
	{
		auto __p = soup_websocket_connection_get_extensions(soupWebsocketConnection);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Get the I/O stream the WebSocket is communicating over.
	 *
	 * Returns: the WebSocket's I/O stream.
	 *
	 * Since: 2.50
	 */
	public IOStream getIoStream()
	{
		auto __p = soup_websocket_connection_get_io_stream(soupWebsocketConnection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p);
	}

	/**
	 * Gets the keepalive interval in seconds or 0 if disabled.
	 *
	 * Returns: the keepalive interval.
	 *
	 * Since: 2.58
	 */
	public uint getKeepaliveInterval()
	{
		return soup_websocket_connection_get_keepalive_interval(soupWebsocketConnection);
	}

	/**
	 * Gets the maximum payload size allowed for incoming packets.
	 *
	 * Returns: the maximum payload size.
	 *
	 * Since: 2.56
	 */
	public ulong getMaxIncomingPayloadSize()
	{
		return soup_websocket_connection_get_max_incoming_payload_size(soupWebsocketConnection);
	}

	/**
	 * Get the origin of the WebSocket.
	 *
	 * Returns: the origin, or %NULL
	 *
	 * Since: 2.50
	 */
	public string getOrigin()
	{
		return Str.toString(soup_websocket_connection_get_origin(soupWebsocketConnection));
	}

	/**
	 * Get the protocol chosen via negotiation with the peer.
	 *
	 * Returns: the chosen protocol, or %NULL
	 *
	 * Since: 2.50
	 */
	public string getProtocol()
	{
		return Str.toString(soup_websocket_connection_get_protocol(soupWebsocketConnection));
	}

	/**
	 * Get the current state of the WebSocket.
	 *
	 * Returns: the state
	 *
	 * Since: 2.50
	 */
	public SoupWebsocketState getState()
	{
		return soup_websocket_connection_get_state(soupWebsocketConnection);
	}

	/**
	 * Get the URI of the WebSocket.
	 *
	 * For servers this represents the address of the WebSocket, and
	 * for clients it is the address connected to.
	 *
	 * Returns: the URI
	 *
	 * Since: 2.50
	 */
	public URI getUri()
	{
		auto __p = soup_websocket_connection_get_uri(soupWebsocketConnection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p);
	}

	/**
	 * Send a binary message to the peer. If @length is 0, @data may be %NULL.
	 *
	 * The message is queued to be sent and will be sent when the main loop
	 * is run.
	 *
	 * Params:
	 *     data = the message contents
	 *
	 * Since: 2.50
	 */
	public void sendBinary(ubyte[] data)
	{
		soup_websocket_connection_send_binary(soupWebsocketConnection, data.ptr, cast(size_t)data.length);
	}

	/**
	 * Send a message of the given @type to the peer. Note that this method,
	 * allows to send text messages containing %NULL characters.
	 *
	 * The message is queued to be sent and will be sent when the main loop
	 * is run.
	 *
	 * Params:
	 *     type = the type of message contents
	 *     message = the message data as #GBytes
	 *
	 * Since: 2.68
	 */
	public void sendMessage(SoupWebsocketDataType type, Bytes message)
	{
		soup_websocket_connection_send_message(soupWebsocketConnection, type, (message is null) ? null : message.getBytesStruct());
	}

	/**
	 * Send a %NULL-terminated text (UTF-8) message to the peer. If you need
	 * to send text messages containing %NULL characters use
	 * soup_websocket_connection_send_message() instead.
	 *
	 * The message is queued to be sent and will be sent when the main loop
	 * is run.
	 *
	 * Params:
	 *     text = the message contents
	 *
	 * Since: 2.50
	 */
	public void sendText(string text)
	{
		soup_websocket_connection_send_text(soupWebsocketConnection, Str.toStringz(text));
	}

	/**
	 * Sets the interval in seconds on when to send a ping message which will serve
	 * as a keepalive message. If set to 0 the keepalive message is disabled.
	 *
	 * Params:
	 *     interval = the interval to send a ping message or 0 to disable it
	 *
	 * Since: 2.58
	 */
	public void setKeepaliveInterval(uint interval)
	{
		soup_websocket_connection_set_keepalive_interval(soupWebsocketConnection, interval);
	}

	/**
	 * Sets the maximum payload size allowed for incoming packets. It
	 * does not limit the outgoing packet size.
	 *
	 * Params:
	 *     maxIncomingPayloadSize = the maximum payload size
	 *
	 * Since: 2.56
	 */
	public void setMaxIncomingPayloadSize(ulong maxIncomingPayloadSize)
	{
		soup_websocket_connection_set_max_incoming_payload_size(soupWebsocketConnection, maxIncomingPayloadSize);
	}

	/**
	 * Emitted when the connection has completely closed, either
	 * due to an orderly close from the peer, one initiated via
	 * soup_websocket_connection_close() or a fatal error
	 * condition that caused a close.
	 *
	 * This signal will be emitted once.
	 *
	 * Since: 2.50
	 */
	gulong addOnClosed(void delegate(WebsocketConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal will be emitted during an orderly close.
	 *
	 * Since: 2.50
	 */
	gulong addOnClosing(void delegate(WebsocketConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closing", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an error occurred on the WebSocket. This may
	 * be fired multiple times. Fatal errors will be followed by
	 * the #SoupWebsocketConnection::closed signal being emitted.
	 *
	 * Params:
	 *     error = the error that occured
	 *
	 * Since: 2.50
	 */
	gulong addOnError(void delegate(ErrorG, WebsocketConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "error", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when we receive a message from the peer.
	 *
	 * As a convenience, the @message data will always be
	 * NUL-terminated, but the NUL byte will not be included in
	 * the length count.
	 *
	 * Params:
	 *     type = the type of message contents
	 *     message = the message data
	 *
	 * Since: 2.50
	 */
	gulong addOnMessage(void delegate(int, Bytes, WebsocketConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "message", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when we receive a Pong frame (solicited or
	 * unsolicited) from the peer.
	 *
	 * As a convenience, the @message data will always be
	 * NUL-terminated, but the NUL byte will not be included in
	 * the length count.
	 *
	 * Params:
	 *     message = the application data (if any)
	 *
	 * Since: 2.60
	 */
	gulong addOnPong(void delegate(Bytes, WebsocketConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pong", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
