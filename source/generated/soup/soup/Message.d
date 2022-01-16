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


module soup.Message;

private import gio.IOStream;
private import gio.TlsCertificate;
private import glib.ConstructionException;
private import glib.HashTable;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Address;
private import soup.Buffer;
private import soup.Request;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/**
 * Represents an HTTP message being sent or received.
 * 
 * @status_code will normally be a #SoupStatus value, eg,
 * %SOUP_STATUS_OK, though of course it might actually be an unknown
 * status code. @reason_phrase is the actual text returned from the
 * server, which may or may not correspond to the "standard"
 * description of @status_code. At any rate, it is almost certainly
 * not localized, and not very descriptive even if it is in the user's
 * language; you should not use @reason_phrase in user-visible
 * messages. Rather, you should look at @status_code, and determine an
 * end-user-appropriate message based on that and on what you were
 * trying to do.
 * 
 * As described in the #SoupMessageBody documentation, the
 * @request_body and @response_body <literal>data</literal> fields
 * will not necessarily be filled in at all times. When the body
 * fields are filled in, they will be terminated with a '\0' byte
 * (which is not included in the <literal>length</literal>), so you
 * can use them as ordinary C strings (assuming that you know that the
 * body doesn't have any other '\0' bytes).
 * 
 * For a client-side #SoupMessage, @request_body's
 * <literal>data</literal> is usually filled in right before libsoup
 * writes the request to the network, but you should not count on
 * this; use soup_message_body_flatten() if you want to ensure that
 * <literal>data</literal> is filled in. If you are not using
 * #SoupRequest to read the response, then @response_body's
 * <literal>data</literal> will be filled in before
 * #SoupMessage::finished is emitted. (If you are using #SoupRequest,
 * then the message body is not accumulated by default, so
 * @response_body's <literal>data</literal> will always be %NULL.)
 * 
 * For a server-side #SoupMessage, @request_body's %data will be
 * filled in before #SoupMessage::got_body is emitted.
 * 
 * To prevent the %data field from being filled in at all (eg, if you
 * are handling the data from a #SoupMessage::got_chunk, and so don't
 * need to see it all at the end), call
 * soup_message_body_set_accumulate() on @response_body or
 * @request_body as appropriate, passing %FALSE.
 */
public class Message : ObjectG
{
	/** the main Gtk struct */
	protected SoupMessage* soupMessage;

	/** Get the main Gtk struct */
	public SoupMessage* getMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMessage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMessage* soupMessage, bool ownedRef = false)
	{
		this.soupMessage = soupMessage;
		super(cast(GObject*)soupMessage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_message_get_type();
	}

	/**
	 * Creates a new empty #SoupMessage, which will connect to @uri
	 *
	 * Params:
	 *     method = the HTTP method for the created request
	 *     uriString = the destination endpoint (as a string)
	 *
	 * Returns: the new #SoupMessage (or %NULL if @uri
	 *     could not be parsed).
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string method, string uriString)
	{
		auto __p = soup_message_new(Str.toStringz(method), Str.toStringz(uriString));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupMessage*) __p, true);
	}

	/**
	 * Creates a new empty #SoupMessage, which will connect to @uri
	 *
	 * Params:
	 *     method = the HTTP method for the created request
	 *     uri = the destination endpoint (as a #SoupURI)
	 *
	 * Returns: the new #SoupMessage
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string method, URI uri)
	{
		auto __p = soup_message_new_from_uri(Str.toStringz(method), (uri is null) ? null : uri.getURIStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_uri");
		}

		this(cast(SoupMessage*) __p, true);
	}

	/**
	 * Adds a signal handler to @msg for @signal, as with
	 * g_signal_connect(), but the @callback will only be run if @msg's
	 * incoming messages headers (that is, the
	 * <literal>request_headers</literal> for a client #SoupMessage, or
	 * the <literal>response_headers</literal> for a server #SoupMessage)
	 * contain a header named @header.
	 *
	 * Params:
	 *     signal = signal to connect the handler to.
	 *     header = HTTP response header to match against
	 *     callback = the header handler
	 *     userData = data to pass to @handler_cb
	 *
	 * Returns: the handler ID from g_signal_connect()
	 */
	public uint addHeaderHandler(string signal, string header, GCallback callback, void* userData)
	{
		return soup_message_add_header_handler(soupMessage, Str.toStringz(signal), Str.toStringz(header), callback, userData);
	}

	/**
	 * Adds a signal handler to @msg for @signal, as with
	 * g_signal_connect(), but the @callback will only be run if @msg has
	 * the status @status_code.
	 *
	 * @signal must be a signal that will be emitted after @msg's status
	 * is set. For a client #SoupMessage, this means it can't be a "wrote"
	 * signal. For a server #SoupMessage, this means it can't be a "got"
	 * signal.
	 *
	 * Params:
	 *     signal = signal to connect the handler to.
	 *     statusCode = status code to match against
	 *     callback = the header handler
	 *     userData = data to pass to @handler_cb
	 *
	 * Returns: the handler ID from g_signal_connect()
	 */
	public uint addStatusCodeHandler(string signal, uint statusCode, GCallback callback, void* userData)
	{
		return soup_message_add_status_code_handler(soupMessage, Str.toStringz(signal), statusCode, callback, userData);
	}

	/** */
	public void contentSniffed(string contentType, HashTable params)
	{
		soup_message_content_sniffed(soupMessage, Str.toStringz(contentType), (params is null) ? null : params.getHashTableStruct());
	}

	/**
	 * This disables the actions of #SoupSessionFeature<!-- -->s with the
	 * given @feature_type (or a subclass of that type) on @msg, so that
	 * @msg is processed as though the feature(s) hadn't been added to the
	 * session. Eg, passing #SOUP_TYPE_CONTENT_SNIFFER for @feature_type
	 * will disable Content-Type sniffing on the message.
	 *
	 * You must call this before queueing @msg on a session; calling it on
	 * a message that has already been queued is undefined. In particular,
	 * you cannot call this on a message that is being requeued after a
	 * redirect or authentication.
	 *
	 * Params:
	 *     featureType = the #GType of a #SoupSessionFeature
	 *
	 * Since: 2.28
	 */
	public void disableFeature(GType featureType)
	{
		soup_message_disable_feature(soupMessage, featureType);
	}

	/** */
	public void finished()
	{
		soup_message_finished(soupMessage);
	}

	/**
	 * Gets the address @msg's URI points to. After first setting the
	 * URI on a message, this will be unresolved, although the message's
	 * session will resolve it before sending the message.
	 *
	 * Returns: the address @msg's URI points to
	 *
	 * Since: 2.26
	 */
	public Address getAddress()
	{
		auto __p = soup_message_get_address(soupMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Address)(cast(SoupAddress*) __p);
	}

	/**
	 * Gets @msg's first-party #SoupURI
	 *
	 * Returns: the @msg's first party #SoupURI
	 *
	 * Since: 2.30
	 */
	public URI getFirstParty()
	{
		auto __p = soup_message_get_first_party(soupMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p);
	}

	/**
	 * Gets the flags on @msg
	 *
	 * Returns: the flags
	 */
	public SoupMessageFlags getFlags()
	{
		return soup_message_get_flags(soupMessage);
	}

	/**
	 * Gets the HTTP version of @msg. This is the minimum of the
	 * version from the request and the version from the response.
	 *
	 * Returns: the HTTP version
	 */
	public SoupHTTPVersion getHttpVersion()
	{
		return soup_message_get_http_version(soupMessage);
	}

	/**
	 * If @msg is using https (or attempted to use https but got
	 * %SOUP_STATUS_SSL_FAILED), this retrieves the #GTlsCertificate
	 * associated with its connection, and the #GTlsCertificateFlags
	 * showing what problems, if any, have been found with that
	 * certificate.
	 *
	 * <note><para>This is only meaningful with messages processed by a #SoupSession and is
	 * not useful for messages received by a #SoupServer</para></note>
	 *
	 * Params:
	 *     certificate = @msg's TLS certificate
	 *     errors = the verification status of @certificate
	 *
	 * Returns: %TRUE if @msg used/attempted https, %FALSE if not
	 *
	 * Since: 2.34
	 */
	public bool getHttpsStatus(out TlsCertificate certificate, out GTlsCertificateFlags errors)
	{
		GTlsCertificate* outcertificate = null;

		auto __p = soup_message_get_https_status(soupMessage, &outcertificate, &errors) != 0;

		certificate = ObjectG.getDObject!(TlsCertificate)(outcertificate);

		return __p;
	}

	/** */
	public bool getIsTopLevelNavigation()
	{
		return soup_message_get_is_top_level_navigation(soupMessage) != 0;
	}

	/**
	 * Retrieves the #SoupMessagePriority. If not set this value defaults
	 * to #SOUP_MESSAGE_PRIORITY_NORMAL.
	 *
	 * Returns: the priority of the message.
	 *
	 * Since: 2.44
	 */
	public SoupMessagePriority getPriority()
	{
		return soup_message_get_priority(soupMessage);
	}

	/**
	 * Gets @msg's site for cookies #SoupURI
	 *
	 * Returns: the @msg's site for cookies #SoupURI
	 *
	 * Since: 2.70
	 */
	public URI getSiteForCookies()
	{
		auto __p = soup_message_get_site_for_cookies(soupMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p);
	}

	/**
	 * If @msg is associated with a #SoupRequest, this returns that
	 * request. Otherwise it returns %NULL.
	 *
	 * Returns: @msg's associated #SoupRequest
	 *
	 * Since: 2.42
	 */
	public Request getSoupRequest()
	{
		auto __p = soup_message_get_soup_request(soupMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p);
	}

	/**
	 * Gets @msg's URI
	 *
	 * Returns: the URI @msg is targeted for.
	 */
	public URI getUri()
	{
		auto __p = soup_message_get_uri(soupMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p);
	}

	/** */
	public void gotBody()
	{
		soup_message_got_body(soupMessage);
	}

	/** */
	public void gotChunk(Buffer chunk)
	{
		soup_message_got_chunk(soupMessage, (chunk is null) ? null : chunk.getBufferStruct());
	}

	/** */
	public void gotHeaders()
	{
		soup_message_got_headers(soupMessage);
	}

	/** */
	public void gotInformational()
	{
		soup_message_got_informational(soupMessage);
	}

	/**
	 * Get whether #SoupSessionFeature<!-- -->s of the given @feature_type
	 * (or a subclass of that type) are disabled on @msg.
	 * See soup_message_disable_feature().
	 *
	 * Params:
	 *     featureType = the #GType of a #SoupSessionFeature
	 *
	 * Returns: %TRUE if feature is disabled, or %FALSE otherwise.
	 *
	 * Since: 2.72
	 */
	public bool isFeatureDisabled(GType featureType)
	{
		return soup_message_is_feature_disabled(soupMessage, featureType) != 0;
	}

	/**
	 * Determines whether or not @msg's connection can be kept alive for
	 * further requests after processing @msg, based on the HTTP version,
	 * Connection header, etc.
	 *
	 * Returns: %TRUE or %FALSE.
	 */
	public bool isKeepalive()
	{
		return soup_message_is_keepalive(soupMessage) != 0;
	}

	/** */
	public void restarted()
	{
		soup_message_restarted(soupMessage);
	}

	/**
	 * Sets an alternate chunk-allocation function to use when reading
	 * @msg's body when using the traditional (ie,
	 * non-#SoupRequest<!-- -->-based) API. Every time data is available
	 * to read, libsoup will call @allocator, which should return a
	 * #SoupBuffer. (See #SoupChunkAllocator for additional details.)
	 * Libsoup will then read data from the network into that buffer, and
	 * update the buffer's <literal>length</literal> to indicate how much
	 * data it read.
	 *
	 * Generally, a custom chunk allocator would be used in conjunction
	 * with soup_message_body_set_accumulate() %FALSE and
	 * #SoupMessage::got_chunk, as part of a strategy to avoid unnecessary
	 * copying of data. However, you cannot assume that every call to the
	 * allocator will be followed by a call to your
	 * #SoupMessage::got_chunk handler; if an I/O error occurs, then the
	 * buffer will be unreffed without ever having been used. If your
	 * buffer-allocation strategy requires special cleanup, use
	 * soup_buffer_new_with_owner() rather than doing the cleanup from the
	 * #SoupMessage::got_chunk handler.
	 *
	 * The other thing to remember when using non-accumulating message
	 * bodies is that the buffer passed to the #SoupMessage::got_chunk
	 * handler will be unreffed after the handler returns, just as it
	 * would be in the non-custom-allocated case. If you want to hand the
	 * chunk data off to some other part of your program to use later,
	 * you'll need to ref the #SoupBuffer (or its owner, in the
	 * soup_buffer_new_with_owner() case) to ensure that the data remains
	 * valid.
	 *
	 * Deprecated: #SoupRequest provides a much simpler API that lets you
	 * read the response directly into your own buffers without needing to
	 * mess with callbacks, pausing/unpausing, etc.
	 *
	 * Params:
	 *     allocator = the chunk allocator callback
	 *     userData = data to pass to @allocator
	 *     destroyNotify = destroy notifier to free @user_data when @msg is
	 *         destroyed
	 */
	public void setChunkAllocator(SoupChunkAllocator allocator, void* userData, GDestroyNotify destroyNotify)
	{
		soup_message_set_chunk_allocator(soupMessage, allocator, userData, destroyNotify);
	}

	/**
	 * Sets @first_party as the main document #SoupURI for @msg. For
	 * details of when and how this is used refer to the documentation for
	 * #SoupCookieJarAcceptPolicy.
	 *
	 * Params:
	 *     firstParty = the #SoupURI for the @msg's first party
	 *
	 * Since: 2.30
	 */
	public void setFirstParty(URI firstParty)
	{
		soup_message_set_first_party(soupMessage, (firstParty is null) ? null : firstParty.getURIStruct());
	}

	/**
	 * Sets the specified flags on @msg.
	 *
	 * Params:
	 *     flags = a set of #SoupMessageFlags values
	 */
	public void setFlags(SoupMessageFlags flags)
	{
		soup_message_set_flags(soupMessage, flags);
	}

	/**
	 * Sets the HTTP version on @msg. The default version is
	 * %SOUP_HTTP_1_1. Setting it to %SOUP_HTTP_1_0 will prevent certain
	 * functionality from being used.
	 *
	 * Params:
	 *     version_ = the HTTP version
	 */
	public void setHttpVersion(SoupHTTPVersion version_)
	{
		soup_message_set_http_version(soupMessage, version_);
	}

	/**
	 * See the [same-site spec](https://tools.ietf.org/html/draft-ietf-httpbis-cookie-same-site-00)
	 * for more information.
	 *
	 * Params:
	 *     isTopLevelNavigation = if %TRUE indicate the current request is a top-level navigation
	 *
	 * Since: 2.70
	 */
	public void setIsTopLevelNavigation(bool isTopLevelNavigation)
	{
		soup_message_set_is_top_level_navigation(soupMessage, isTopLevelNavigation);
	}

	/**
	 * Sets the priority of a message. Note that this won't have any
	 * effect unless used before the message is added to the session's
	 * message processing queue.
	 *
	 * The message will be placed just before any other previously added
	 * message with lower priority (messages with the same priority are
	 * processed on a FIFO basis).
	 *
	 * Setting priorities does not currently work with #SoupSessionSync
	 * (or with synchronous messages on a plain #SoupSession) because in
	 * the synchronous/blocking case, priority ends up being determined
	 * semi-randomly by thread scheduling.
	 *
	 * Params:
	 *     priority = the #SoupMessagePriority
	 *
	 * Since: 2.44
	 */
	public void setPriority(SoupMessagePriority priority)
	{
		soup_message_set_priority(soupMessage, priority);
	}

	/**
	 * Sets @msg's status_code to @status_code and adds a Location header
	 * pointing to @redirect_uri. Use this from a #SoupServer when you
	 * want to redirect the client to another URI.
	 *
	 * @redirect_uri can be a relative URI, in which case it is
	 * interpreted relative to @msg's current URI. In particular, if
	 * @redirect_uri is just a path, it will replace the path
	 * <emphasis>and query</emphasis> of @msg's URI.
	 *
	 * Params:
	 *     statusCode = a 3xx status code
	 *     redirectUri = the URI to redirect @msg to
	 *
	 * Since: 2.38
	 */
	public void setRedirect(uint statusCode, string redirectUri)
	{
		soup_message_set_redirect(soupMessage, statusCode, Str.toStringz(redirectUri));
	}

	/**
	 * Convenience function to set the request body of a #SoupMessage. If
	 * @content_type is %NULL, the request body must be empty as well.
	 *
	 * Params:
	 *     contentType = MIME Content-Type of the body
	 *     reqUse = a #SoupMemoryUse describing how to handle @req_body
	 *     reqBody = a data buffer containing the body of the message request.
	 */
	public void setRequest(string contentType, SoupMemoryUse reqUse, string reqBody)
	{
		soup_message_set_request(soupMessage, Str.toStringz(contentType), reqUse, Str.toStringz(reqBody), cast(size_t)reqBody.length);
	}

	/**
	 * Convenience function to set the response body of a #SoupMessage. If
	 * @content_type is %NULL, the response body must be empty as well.
	 *
	 * Params:
	 *     contentType = MIME Content-Type of the body
	 *     respUse = a #SoupMemoryUse describing how to handle @resp_body
	 *     respBody = a data buffer containing the body of the message response.
	 */
	public void setResponse(string contentType, SoupMemoryUse respUse, string respBody)
	{
		soup_message_set_response(soupMessage, Str.toStringz(contentType), respUse, Str.toStringz(respBody), cast(size_t)respBody.length);
	}

	/**
	 * Sets @site_for_cookies as the policy URL for same-site cookies for @msg.
	 *
	 * It is either the URL of the top-level document or %NULL depending on whether the registrable
	 * domain of this document's URL matches the registrable domain of its parent's/opener's
	 * URL. For the top-level document it is set to the document's URL.
	 *
	 * See the [same-site spec](https://tools.ietf.org/html/draft-ietf-httpbis-cookie-same-site-00)
	 * for more information.
	 *
	 * Params:
	 *     siteForCookies = the #SoupURI for the @msg's site for cookies
	 *
	 * Since: 2.70
	 */
	public void setSiteForCookies(URI siteForCookies)
	{
		soup_message_set_site_for_cookies(soupMessage, (siteForCookies is null) ? null : siteForCookies.getURIStruct());
	}

	/**
	 * Sets @msg's status code to @status_code. If @status_code is a
	 * known value, it will also set @msg's reason_phrase.
	 *
	 * Params:
	 *     statusCode = an HTTP status code
	 */
	public void setStatus(uint statusCode)
	{
		soup_message_set_status(soupMessage, statusCode);
	}

	/**
	 * Sets @msg's status code and reason phrase.
	 *
	 * Params:
	 *     statusCode = an HTTP status code
	 *     reasonPhrase = a description of the status
	 */
	public void setStatusFull(uint statusCode, string reasonPhrase)
	{
		soup_message_set_status_full(soupMessage, statusCode, Str.toStringz(reasonPhrase));
	}

	/**
	 * Sets @msg's URI to @uri. If @msg has already been sent and you want
	 * to re-send it with the new URI, you need to call
	 * soup_session_requeue_message().
	 *
	 * Params:
	 *     uri = the new #SoupURI
	 */
	public void setUri(URI uri)
	{
		soup_message_set_uri(soupMessage, (uri is null) ? null : uri.getURIStruct());
	}

	/** */
	public void starting()
	{
		soup_message_starting(soupMessage);
	}

	/** */
	public void wroteBody()
	{
		soup_message_wrote_body(soupMessage);
	}

	/** */
	public void wroteBodyData(Buffer chunk)
	{
		soup_message_wrote_body_data(soupMessage, (chunk is null) ? null : chunk.getBufferStruct());
	}

	/** */
	public void wroteChunk()
	{
		soup_message_wrote_chunk(soupMessage);
	}

	/** */
	public void wroteHeaders()
	{
		soup_message_wrote_headers(soupMessage);
	}

	/** */
	public void wroteInformational()
	{
		soup_message_wrote_informational(soupMessage);
	}

	/**
	 * This signal is emitted after #SoupMessage::got-headers, and
	 * before the first #SoupMessage::got-chunk. If content
	 * sniffing is disabled, or no content sniffing will be
	 * performed, due to the sniffer deciding to trust the
	 * Content-Type sent by the server, this signal is emitted
	 * immediately after #SoupMessage::got-headers, and @type is
	 * %NULL.
	 *
	 * If the #SoupContentSniffer feature is enabled, and the
	 * sniffer decided to perform sniffing, the first
	 * #SoupMessage::got-chunk emission may be delayed, so that the
	 * sniffer has enough data to correctly sniff the content. It
	 * notified the library user that the content has been
	 * sniffed, and allows it to change the header contents in the
	 * message, if desired.
	 *
	 * After this signal is emitted, the data that was spooled so
	 * that sniffing could be done is delivered on the first
	 * emission of #SoupMessage::got-chunk.
	 *
	 * Params:
	 *     type = the content type that we got from sniffing
	 *     params = a #GHashTable with the parameters
	 *
	 * Since: 2.28
	 */
	gulong addOnContentSniffed(void delegate(string, HashTable, Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "content-sniffed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when all HTTP processing is finished for a message.
	 * (After #SoupMessage::got_body for client-side messages, or
	 * after #SoupMessage::wrote_body for server-side messages.)
	 */
	gulong addOnFinished(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after receiving the complete message body. (For a
	 * server-side message, this means it has received the request
	 * body. For a client-side message, this means it has received
	 * the response body and is nearly done with the message.)
	 *
	 * See also soup_message_add_header_handler() and
	 * soup_message_add_status_code_handler(), which can be used
	 * to connect to a subset of emissions of this signal.
	 */
	gulong addOnGotBody(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "got-body", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after receiving a chunk of a message body. Note
	 * that "chunk" in this context means any subpiece of the
	 * body, not necessarily the specific HTTP 1.1 chunks sent by
	 * the other side.
	 *
	 * If you cancel or requeue @msg while processing this signal,
	 * then the current HTTP I/O will be stopped after this signal
	 * emission finished, and @msg's connection will be closed.
	 *
	 * Params:
	 *     chunk = the just-read chunk
	 */
	gulong addOnGotChunk(void delegate(Buffer, Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "got-chunk", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after receiving all message headers for a message.
	 * (For a client-side message, this is after receiving the
	 * Status-Line and response headers; for a server-side
	 * message, it is after receiving the Request-Line and request
	 * headers.)
	 *
	 * See also soup_message_add_header_handler() and
	 * soup_message_add_status_code_handler(), which can be used
	 * to connect to a subset of emissions of this signal.
	 *
	 * If you cancel or requeue @msg while processing this signal,
	 * then the current HTTP I/O will be stopped after this signal
	 * emission finished, and @msg's connection will be closed.
	 * (If you need to requeue a message--eg, after handling
	 * authentication or redirection--it is usually better to
	 * requeue it from a #SoupMessage::got_body handler rather
	 * than a #SoupMessage::got_headers handler, so that the
	 * existing HTTP connection can be reused.)
	 */
	gulong addOnGotHeaders(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "got-headers", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after receiving a 1xx (Informational) response for
	 * a (client-side) message. The response_headers will be
	 * filled in with the headers associated with the
	 * informational response; however, those header values will
	 * be erased after this signal is done.
	 *
	 * If you cancel or requeue @msg while processing this signal,
	 * then the current HTTP I/O will be stopped after this signal
	 * emission finished, and @msg's connection will be closed.
	 */
	gulong addOnGotInformational(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "got-informational", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to indicate that some network-related event
	 * related to @msg has occurred. This essentially proxies the
	 * #GSocketClient::event signal, but only for events that
	 * occur while @msg "owns" the connection; if @msg is sent on
	 * an existing persistent connection, then this signal will
	 * not be emitted. (If you want to force the message to be
	 * sent on a new connection, set the
	 * %SOUP_MESSAGE_NEW_CONNECTION flag on it.)
	 *
	 * See #GSocketClient::event for more information on what
	 * the different values of @event correspond to, and what
	 * @connection will be in each case.
	 *
	 * Params:
	 *     event = the network event
	 *     connection = the current state of the network connection
	 *
	 * Since: 2.38
	 */
	gulong addOnNetwork(void delegate(GSocketClientEvent, IOStream, Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "network-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a request that was already sent once is now
	 * being sent again (eg, because the first attempt received a
	 * redirection response, or because we needed to use
	 * authentication).
	 */
	gulong addOnRestarted(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "restarted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted just before a message is sent.
	 *
	 * Since: 2.50
	 */
	gulong addOnStarting(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "starting", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted immediately after writing the complete body for a
	 * message. (For a client-side message, this means that
	 * libsoup is done writing and is now waiting for the response
	 * from the server. For a server-side message, this means that
	 * libsoup has finished writing the response and is nearly
	 * done with the message.)
	 */
	gulong addOnWroteBody(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrote-body", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted immediately after writing a portion of the message
	 * body to the network.
	 *
	 * Unlike #SoupMessage::wrote_chunk, this is emitted after
	 * every successful write() call, not only after finishing a
	 * complete "chunk".
	 *
	 * Params:
	 *     chunk = the data written
	 *
	 * Since: 2.24
	 */
	gulong addOnWroteBodyData(void delegate(Buffer, Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrote-body-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted immediately after writing a body chunk for a message.
	 *
	 * Note that this signal is not parallel to
	 * #SoupMessage::got_chunk; it is emitted only when a complete
	 * chunk (added with soup_message_body_append() or
	 * soup_message_body_append_buffer()) has been written. To get
	 * more useful continuous progress information, use
	 * #SoupMessage::wrote_body_data.
	 */
	gulong addOnWroteChunk(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrote-chunk", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted immediately after writing the headers for a
	 * message. (For a client-side message, this is after writing
	 * the request headers; for a server-side message, it is after
	 * writing the response headers.)
	 */
	gulong addOnWroteHeaders(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrote-headers", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted immediately after writing a 1xx (Informational)
	 * response for a (server-side) message.
	 */
	gulong addOnWroteInformational(void delegate(Message) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrote-informational", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
