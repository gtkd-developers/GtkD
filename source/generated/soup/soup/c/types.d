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


module soup.c.types;

public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;


/**
 * The supported address families.
 */
public enum SoupAddressFamily
{
	/**
	 * an invalid %SoupAddress
	 */
	INVALID = -1,
	/**
	 * an IPv4 address
	 */
	IPV4 = 2,
	/**
	 * an IPv6 address
	 */
	IPV6 = 10,
}
alias SoupAddressFamily AddressFamily;

public enum SoupCacheResponse
{
	FRESH = 0,
	NEEDS_VALIDATION = 1,
	STALE = 2,
}
alias SoupCacheResponse CacheResponse;

/**
 * The type of cache; this affects what kinds of responses will be
 * saved.
 *
 * Since: 2.34
 */
public enum SoupCacheType
{
	/**
	 * a single-user cache
	 */
	SINGLE_USER = 0,
	/**
	 * a shared cache
	 */
	SHARED = 1,
}
alias SoupCacheType CacheType;

public enum SoupCacheability
{
	CACHEABLE = 1,
	UNCACHEABLE = 2,
	INVALIDATES = 4,
	VALIDATES = 8,
}
alias SoupCacheability Cacheability;

public enum SoupConnectionState
{
	NEW = 0,
	CONNECTING = 1,
	IDLE = 2,
	IN_USE = 3,
	REMOTE_DISCONNECTED = 4,
	DISCONNECTED = 5,
}
alias SoupConnectionState ConnectionState;

/**
 * The policy for accepting or rejecting cookies returned in
 * responses.
 *
 * Since: 2.30
 */
public enum SoupCookieJarAcceptPolicy
{
	/**
	 * accept all cookies unconditionally.
	 */
	ALWAYS = 0,
	/**
	 * reject all cookies unconditionally.
	 */
	NEVER = 1,
	/**
	 * accept all cookies set by
	 * the main document loaded in the application using libsoup. An
	 * example of the most common case, web browsers, would be: If
	 * http://www.example.com is the page loaded, accept all cookies set
	 * by example.com, but if a resource from http://www.third-party.com
	 * is loaded from that page reject any cookie that it could try to
	 * set. For libsoup to be able to tell apart first party cookies from
	 * the rest, the application must call soup_message_set_first_party()
	 * on each outgoing #SoupMessage, setting the #SoupURI of the main
	 * document. If no first party is set in a message when this policy is
	 * in effect, cookies will be assumed to be third party by default.
	 */
	NO_THIRD_PARTY = 2,
	/**
	 * accept all cookies
	 * set by the main document loaded in the application using libsoup, and
	 * from domains that have previously set at least one cookie when loaded
	 * as the main document. An example of the most common case, web browsers,
	 * would be: if http://www.example.com is the page loaded, accept all
	 * cookies set by example.com, but if a resource from http://www.third-party.com
	 * is loaded from that page, reject any cookie that it could try to
	 * set unless it already has a cookie in the cookie jar. For libsoup to
	 * be able to tell apart first party cookies from the rest, the
	 * application must call soup_message_set_first_party() on each outgoing
	 * #SoupMessage, setting the #SoupURI of the main document. If no first
	 * party is set in a message when this policy is in effect, cookies will
	 * be assumed to be third party by default. Since 2.72.
	 */
	GRANDFATHERED_THIRD_PARTY = 3,
}
alias SoupCookieJarAcceptPolicy CookieJarAcceptPolicy;

/**
 * Date formats that soup_date_to_string() can use.
 *
 * @SOUP_DATE_HTTP and @SOUP_DATE_COOKIE always coerce the time to
 * UTC. @SOUP_DATE_ISO8601_XMLRPC uses the time as given, ignoring the
 * offset completely. @SOUP_DATE_RFC2822 and the other ISO 8601
 * variants use the local time, appending the offset information if
 * available.
 *
 * This enum may be extended with more values in future releases.
 */
public enum SoupDateFormat
{
	/**
	 * RFC 1123 format, used by the HTTP "Date" header. Eg
	 * "Sun, 06 Nov 1994 08:49:37 GMT"
	 */
	HTTP = 1,
	/**
	 * The format for the "Expires" timestamp in the
	 * Netscape cookie specification. Eg, "Sun, 06-Nov-1994 08:49:37 GMT".
	 */
	COOKIE = 2,
	/**
	 * RFC 2822 format, eg "Sun, 6 Nov 1994 09:49:37 -0100"
	 */
	RFC2822 = 3,
	/**
	 * ISO 8601 date/time with no optional
	 * punctuation. Eg, "19941106T094937-0100".
	 */
	ISO8601_COMPACT = 4,
	/**
	 * ISO 8601 date/time with all optional
	 * punctuation. Eg, "1994-11-06T09:49:37-01:00".
	 */
	ISO8601_FULL = 5,
	/**
	 * An alias for @SOUP_DATE_ISO8601_FULL.
	 */
	ISO8601 = 5,
	/**
	 * ISO 8601 date/time as used by XML-RPC.
	 * Eg, "19941106T09:49:37".
	 */
	ISO8601_XMLRPC = 6,
}
alias SoupDateFormat DateFormat;

/**
 * How a message body is encoded for transport
 */
public enum SoupEncoding
{
	/**
	 * unknown / error
	 */
	UNRECOGNIZED = 0,
	/**
	 * no body is present (which is not the same as a
	 * 0-length body, and only occurs in certain places)
	 */
	NONE = 1,
	/**
	 * Content-Length encoding
	 */
	CONTENT_LENGTH = 2,
	/**
	 * Response body ends when the connection is closed
	 */
	EOF = 3,
	/**
	 * chunked encoding (currently only supported
	 * for response)
	 */
	CHUNKED = 4,
	/**
	 * multipart/byteranges (Reserved for future
	 * use: NOT CURRENTLY IMPLEMENTED)
	 */
	BYTERANGES = 5,
}
alias SoupEncoding Encoding;

/**
 * Represents the parsed value of the "Expect" header.
 */
public enum SoupExpectation
{
	/**
	 * any unrecognized expectation
	 */
	UNRECOGNIZED = 1,
	/**
	 * "100-continue"
	 */
	CONTINUE = 2,
}
alias SoupExpectation Expectation;

/**
 * Indicates the HTTP protocol version being used.
 */
public enum SoupHTTPVersion
{
	/**
	 * HTTP 1.0 (RFC 1945)
	 */
	HTTP_1_0 = 0,
	/**
	 * HTTP 1.1 (RFC 2616)
	 */
	HTTP_1_1 = 1,
}
alias SoupHTTPVersion HTTPVersion;

public enum SoupKnownStatusCode
{
	NONE = 0,
	CANCELLED = 1,
	CANT_RESOLVE = 2,
	CANT_RESOLVE_PROXY = 3,
	CANT_CONNECT = 4,
	CANT_CONNECT_PROXY = 5,
	SSL_FAILED = 6,
	IO_ERROR = 7,
	MALFORMED = 8,
	TRY_AGAIN = 9,
	TOO_MANY_REDIRECTS = 10,
	TLS_FAILED = 11,
	CONTINUE = 100,
	SWITCHING_PROTOCOLS = 101,
	PROCESSING = 102,
	OK = 200,
	CREATED = 201,
	ACCEPTED = 202,
	NON_AUTHORITATIVE = 203,
	NO_CONTENT = 204,
	RESET_CONTENT = 205,
	PARTIAL_CONTENT = 206,
	MULTI_STATUS = 207,
	MULTIPLE_CHOICES = 300,
	MOVED_PERMANENTLY = 301,
	FOUND = 302,
	MOVED_TEMPORARILY = 302,
	SEE_OTHER = 303,
	NOT_MODIFIED = 304,
	USE_PROXY = 305,
	NOT_APPEARING_IN_THIS_PROTOCOL = 306,
	TEMPORARY_REDIRECT = 307,
	BAD_REQUEST = 400,
	UNAUTHORIZED = 401,
	PAYMENT_REQUIRED = 402,
	FORBIDDEN = 403,
	NOT_FOUND = 404,
	METHOD_NOT_ALLOWED = 405,
	NOT_ACCEPTABLE = 406,
	PROXY_AUTHENTICATION_REQUIRED = 407,
	PROXY_UNAUTHORIZED = 407,
	REQUEST_TIMEOUT = 408,
	CONFLICT = 409,
	GONE = 410,
	LENGTH_REQUIRED = 411,
	PRECONDITION_FAILED = 412,
	REQUEST_ENTITY_TOO_LARGE = 413,
	REQUEST_URI_TOO_LONG = 414,
	UNSUPPORTED_MEDIA_TYPE = 415,
	REQUESTED_RANGE_NOT_SATISFIABLE = 416,
	INVALID_RANGE = 416,
	EXPECTATION_FAILED = 417,
	UNPROCESSABLE_ENTITY = 422,
	LOCKED = 423,
	FAILED_DEPENDENCY = 424,
	INTERNAL_SERVER_ERROR = 500,
	NOT_IMPLEMENTED = 501,
	BAD_GATEWAY = 502,
	SERVICE_UNAVAILABLE = 503,
	GATEWAY_TIMEOUT = 504,
	HTTP_VERSION_NOT_SUPPORTED = 505,
	INSUFFICIENT_STORAGE = 507,
	NOT_EXTENDED = 510,
}
alias SoupKnownStatusCode KnownStatusCode;

/**
 * Describes the level of logging output to provide.
 */
public enum SoupLoggerLogLevel
{
	/**
	 * No logging
	 */
	NONE = 0,
	/**
	 * Log the Request-Line or Status-Line and
	 * the Soup-Debug pseudo-headers
	 */
	MINIMAL = 1,
	/**
	 * Log the full request/response headers
	 */
	HEADERS = 2,
	/**
	 * Log the full headers and request/response
	 * bodies.
	 */
	BODY = 3,
}
alias SoupLoggerLogLevel LoggerLogLevel;

/**
 * Describes how #SoupBuffer should use the data passed in by the
 * caller.
 *
 * See also soup_buffer_new_with_owner(), which allows to you create a
 * buffer containing data which is owned by another object.
 */
public enum SoupMemoryUse
{
	/**
	 * The memory is statically allocated and
	 * constant; libsoup can use the passed-in buffer directly and not
	 * need to worry about it being modified or freed.
	 */
	STATIC = 0,
	/**
	 * The caller has allocated the memory for the
	 * #SoupBuffer's use; libsoup will assume ownership of it and free it
	 * (with g_free()) when it is done with it.
	 */
	TAKE = 1,
	/**
	 * The passed-in data belongs to the caller; the
	 * #SoupBuffer will copy it into new memory, leaving the caller free
	 * to reuse the original memory.
	 */
	COPY = 2,
	/**
	 * The passed-in data belongs to the caller,
	 * but will remain valid for the lifetime of the #SoupBuffer. The
	 * difference between this and @SOUP_MEMORY_STATIC is that if you copy
	 * a @SOUP_MEMORY_TEMPORARY buffer, it will make a copy of the memory
	 * as well, rather than reusing the original memory.
	 */
	TEMPORARY = 3,
}
alias SoupMemoryUse MemoryUse;

/**
 * Various flags that can be set on a #SoupMessage to alter its
 * behavior.
 */
public enum SoupMessageFlags
{
	/**
	 * The session should not follow redirect
	 * (3xx) responses received by this message.
	 */
	NO_REDIRECT = 2,
	/**
	 * The caller will rebuild the request
	 * body if the message is restarted; see
	 * soup_message_body_set_accumulate() for more details.
	 */
	CAN_REBUILD = 4,
	/**
	 * Deprecated: equivalent to calling
	 * soup_message_body_set_accumulate() on the incoming message body
	 * (ie, #SoupMessage:response_body for a client-side request),
	 * passing %FALSE.
	 */
	OVERWRITE_CHUNKS = 8,
	/**
	 * Set by #SoupContentDecoder to
	 * indicate that it has removed the Content-Encoding on a message (and
	 * so headers such as Content-Length may no longer accurately describe
	 * the body).
	 */
	CONTENT_DECODED = 16,
	/**
	 * if set after an https response
	 * has been received, indicates that the server's SSL certificate is
	 * trusted according to the session's CA.
	 */
	CERTIFICATE_TRUSTED = 32,
	/**
	 * Requests that the message should be
	 * sent on a newly-created connection, not reusing an existing
	 * persistent connection. Note that messages with non-idempotent
	 * #SoupMessage:method<!-- -->s behave this way by default, unless
	 * #SOUP_MESSAGE_IDEMPOTENT is set.
	 */
	NEW_CONNECTION = 64,
	/**
	 * The message is considered idempotent,
	 * regardless its #SoupMessage:method, and allows reuse of existing
	 * idle connections, instead of always requiring a new one, unless
	 * #SOUP_MESSAGE_NEW_CONNECTION is set.
	 */
	IDEMPOTENT = 128,
	/**
	 * Request that a new connection is
	 * created for the message if there aren't idle connections available
	 * and it's not possible to create new connections due to any of the
	 * connection limits has been reached. If a dedicated connection is
	 * eventually created for this message, it will be dropped when the
	 * message finishes. Since 2.50
	 */
	IGNORE_CONNECTION_LIMITS = 256,
	/**
	 * The #SoupAuthManager should not use
	 * the credentials cache for this message, neither to use cached credentials
	 * to automatically authenticate this message nor to cache the credentials
	 * after the message is successfully authenticated. This applies to both server
	 * and proxy authentication. Note that #SoupSession::authenticate signal will
	 * be emitted, if you want to disable authentication for a message use
	 * soup_message_disable_feature() passing #SOUP_TYPE_AUTH_MANAGER instead. Since 2.58
	 */
	DO_NOT_USE_AUTH_CACHE = 512,
}
alias SoupMessageFlags MessageFlags;

/**
 * Value passed to soup_message_headers_new() to set certain default
 * behaviors.
 */
public enum SoupMessageHeadersType
{
	/**
	 * request headers
	 */
	REQUEST = 0,
	/**
	 * response headers
	 */
	RESPONSE = 1,
	/**
	 * multipart body part headers
	 */
	MULTIPART = 2,
}
alias SoupMessageHeadersType MessageHeadersType;

/**
 * Priorities that can be set on a #SoupMessage to instruct the
 * message queue to process it before any other message with lower
 * priority.
 */
public enum SoupMessagePriority
{
	/**
	 * The lowest priority, the messages
	 * with this priority will be the last ones to be attended.
	 */
	VERY_LOW = 0,
	/**
	 * Use this for low priority messages, a
	 * #SoupMessage with the default priority will be processed first.
	 */
	LOW = 1,
	/**
	 * The default priotity, this is the
	 * priority assigned to the #SoupMessage by default.
	 */
	NORMAL = 2,
	/**
	 * High priority, a #SoupMessage with
	 * this priority will be processed before the ones with the default
	 * priority.
	 */
	HIGH = 3,
	/**
	 * The highest priority, use this
	 * for very urgent #SoupMessage as they will be the first ones to be
	 * attended.
	 */
	VERY_HIGH = 4,
}
alias SoupMessagePriority MessagePriority;

/**
 * A #SoupRequest error.
 *
 * Since: 2.42
 */
public enum SoupRequestError
{
	/**
	 * the URI could not be parsed
	 */
	BAD_URI = 0,
	/**
	 * the URI scheme is not
	 * supported by this #SoupSession
	 */
	UNSUPPORTED_URI_SCHEME = 1,
	/**
	 * the server's response could not
	 * be parsed
	 */
	PARSING = 2,
	/**
	 * the server's response was in an
	 * unsupported format
	 */
	ENCODING = 3,
}
alias SoupRequestError RequestError;

public enum SoupRequesterError
{
	BAD_URI = 0,
	UNSUPPORTED_URI_SCHEME = 1,
}
alias SoupRequesterError RequesterError;

public enum SoupSameSitePolicy
{
	/**
	 * The cookie is exposed with both cross-site and same-site requests
	 */
	NONE = 0,
	/**
	 * The cookie is withheld on cross-site requests but exposed on cross-site navigations
	 */
	LAX = 1,
	/**
	 * The cookie is only exposed for same-site requests
	 */
	STRICT = 2,
}
alias SoupSameSitePolicy SameSitePolicy;

/**
 * Options to pass to soup_server_listen(), etc.
 *
 * %SOUP_SERVER_LISTEN_IPV4_ONLY and %SOUP_SERVER_LISTEN_IPV6_ONLY
 * only make sense with soup_server_listen_all() and
 * soup_server_listen_local(), not plain soup_server_listen() (which
 * simply listens on whatever kind of socket you give it). And you
 * cannot specify both of them in a single call.
 *
 * Since: 2.48
 */
public enum SoupServerListenOptions
{
	/**
	 * Listen for https connections rather
	 * than plain http.
	 */
	HTTPS = 1,
	/**
	 * Only listen on IPv4 interfaces.
	 */
	IPV4_ONLY = 2,
	/**
	 * Only listen on IPv6 interfaces.
	 */
	IPV6_ONLY = 4,
}
alias SoupServerListenOptions ServerListenOptions;

/**
 * Return value from the #SoupSocket IO methods.
 */
public enum SoupSocketIOStatus
{
	/**
	 * Success
	 */
	OK = 0,
	/**
	 * Cannot read/write any more at this time
	 */
	WOULD_BLOCK = 1,
	/**
	 * End of file
	 */
	EOF = 2,
	/**
	 * Other error
	 */
	ERROR = 3,
}
alias SoupSocketIOStatus SocketIOStatus;

/**
 * These represent the known HTTP status code values, plus various
 * network and internal errors.
 *
 * Note that no libsoup functions take or return this type directly;
 * any function that works with status codes will accept unrecognized
 * status codes as well.
 *
 * Prior to 2.44 this type was called
 * <literal>SoupKnownStatusCode</literal>, but the individual values
 * have always had the names they have now.
 */
public enum SoupStatus
{
	/**
	 * No status available. (Eg, the message has not
	 * been sent yet)
	 */
	NONE = 0,
	/**
	 * Message was cancelled locally
	 */
	CANCELLED = 1,
	/**
	 * Unable to resolve destination host name
	 */
	CANT_RESOLVE = 2,
	/**
	 * Unable to resolve proxy host name
	 */
	CANT_RESOLVE_PROXY = 3,
	/**
	 * Unable to connect to remote host
	 */
	CANT_CONNECT = 4,
	/**
	 * Unable to connect to proxy
	 */
	CANT_CONNECT_PROXY = 5,
	/**
	 * SSL/TLS negotiation failed
	 */
	SSL_FAILED = 6,
	/**
	 * A network error occurred, or the other end
	 * closed the connection unexpectedly
	 */
	IO_ERROR = 7,
	/**
	 * Malformed data (usually a programmer error)
	 */
	MALFORMED = 8,
	/**
	 * Used internally
	 */
	TRY_AGAIN = 9,
	/**
	 * There were too many redirections
	 */
	TOO_MANY_REDIRECTS = 10,
	/**
	 * Used internally
	 */
	TLS_FAILED = 11,
	/**
	 * 100 Continue (HTTP)
	 */
	CONTINUE = 100,
	/**
	 * 101 Switching Protocols (HTTP)
	 */
	SWITCHING_PROTOCOLS = 101,
	/**
	 * 102 Processing (WebDAV)
	 */
	PROCESSING = 102,
	/**
	 * 200 Success (HTTP). Also used by many lower-level
	 * soup routines to indicate success.
	 */
	OK = 200,
	/**
	 * 201 Created (HTTP)
	 */
	CREATED = 201,
	/**
	 * 202 Accepted (HTTP)
	 */
	ACCEPTED = 202,
	/**
	 * 203 Non-Authoritative Information
	 * (HTTP)
	 */
	NON_AUTHORITATIVE = 203,
	/**
	 * 204 No Content (HTTP)
	 */
	NO_CONTENT = 204,
	/**
	 * 205 Reset Content (HTTP)
	 */
	RESET_CONTENT = 205,
	/**
	 * 206 Partial Content (HTTP)
	 */
	PARTIAL_CONTENT = 206,
	/**
	 * 207 Multi-Status (WebDAV)
	 */
	MULTI_STATUS = 207,
	/**
	 * 300 Multiple Choices (HTTP)
	 */
	MULTIPLE_CHOICES = 300,
	/**
	 * 301 Moved Permanently (HTTP)
	 */
	MOVED_PERMANENTLY = 301,
	/**
	 * 302 Found (HTTP)
	 */
	FOUND = 302,
	/**
	 * 302 Moved Temporarily (old name,
	 * RFC 2068)
	 */
	MOVED_TEMPORARILY = 302,
	/**
	 * 303 See Other (HTTP)
	 */
	SEE_OTHER = 303,
	/**
	 * 304 Not Modified (HTTP)
	 */
	NOT_MODIFIED = 304,
	/**
	 * 305 Use Proxy (HTTP)
	 */
	USE_PROXY = 305,
	/**
	 * 306 [Unused] (HTTP)
	 */
	NOT_APPEARING_IN_THIS_PROTOCOL = 306,
	/**
	 * 307 Temporary Redirect (HTTP)
	 */
	TEMPORARY_REDIRECT = 307,
	PERMANENT_REDIRECT = 308,
	/**
	 * 400 Bad Request (HTTP)
	 */
	BAD_REQUEST = 400,
	/**
	 * 401 Unauthorized (HTTP)
	 */
	UNAUTHORIZED = 401,
	/**
	 * 402 Payment Required (HTTP)
	 */
	PAYMENT_REQUIRED = 402,
	/**
	 * 403 Forbidden (HTTP)
	 */
	FORBIDDEN = 403,
	/**
	 * 404 Not Found (HTTP)
	 */
	NOT_FOUND = 404,
	/**
	 * 405 Method Not Allowed (HTTP)
	 */
	METHOD_NOT_ALLOWED = 405,
	/**
	 * 406 Not Acceptable (HTTP)
	 */
	NOT_ACCEPTABLE = 406,
	/**
	 * 407 Proxy Authentication
	 * Required (HTTP)
	 */
	PROXY_AUTHENTICATION_REQUIRED = 407,
	/**
	 * shorter alias for
	 * %SOUP_STATUS_PROXY_AUTHENTICATION_REQUIRED
	 */
	PROXY_UNAUTHORIZED = 407,
	/**
	 * 408 Request Timeout (HTTP)
	 */
	REQUEST_TIMEOUT = 408,
	/**
	 * 409 Conflict (HTTP)
	 */
	CONFLICT = 409,
	/**
	 * 410 Gone (HTTP)
	 */
	GONE = 410,
	/**
	 * 411 Length Required (HTTP)
	 */
	LENGTH_REQUIRED = 411,
	/**
	 * 412 Precondition Failed (HTTP)
	 */
	PRECONDITION_FAILED = 412,
	/**
	 * 413 Request Entity Too Large
	 * (HTTP)
	 */
	REQUEST_ENTITY_TOO_LARGE = 413,
	/**
	 * 414 Request-URI Too Long (HTTP)
	 */
	REQUEST_URI_TOO_LONG = 414,
	/**
	 * 415 Unsupported Media Type
	 * (HTTP)
	 */
	UNSUPPORTED_MEDIA_TYPE = 415,
	/**
	 * 416 Requested Range
	 * Not Satisfiable (HTTP)
	 */
	REQUESTED_RANGE_NOT_SATISFIABLE = 416,
	/**
	 * shorter alias for
	 * %SOUP_STATUS_REQUESTED_RANGE_NOT_SATISFIABLE
	 */
	INVALID_RANGE = 416,
	/**
	 * 417 Expectation Failed (HTTP)
	 */
	EXPECTATION_FAILED = 417,
	/**
	 * 422 Unprocessable Entity
	 * (WebDAV)
	 */
	UNPROCESSABLE_ENTITY = 422,
	/**
	 * 423 Locked (WebDAV)
	 */
	LOCKED = 423,
	/**
	 * 424 Failed Dependency (WebDAV)
	 */
	FAILED_DEPENDENCY = 424,
	/**
	 * 500 Internal Server Error
	 * (HTTP)
	 */
	INTERNAL_SERVER_ERROR = 500,
	/**
	 * 501 Not Implemented (HTTP)
	 */
	NOT_IMPLEMENTED = 501,
	/**
	 * 502 Bad Gateway (HTTP)
	 */
	BAD_GATEWAY = 502,
	/**
	 * 503 Service Unavailable (HTTP)
	 */
	SERVICE_UNAVAILABLE = 503,
	/**
	 * 504 Gateway Timeout (HTTP)
	 */
	GATEWAY_TIMEOUT = 504,
	/**
	 * 505 HTTP Version Not
	 * Supported (HTTP)
	 */
	HTTP_VERSION_NOT_SUPPORTED = 505,
	/**
	 * 507 Insufficient Storage
	 * (WebDAV)
	 */
	INSUFFICIENT_STORAGE = 507,
	/**
	 * 510 Not Extended (RFC 2774)
	 */
	NOT_EXTENDED = 510,
}
alias SoupStatus Status;

/**
 * Error codes for %SOUP_TLD_ERROR.
 *
 * Since: 2.40
 */
public enum SoupTLDError
{
	/**
	 * A hostname was syntactically
	 * invalid.
	 */
	INVALID_HOSTNAME = 0,
	/**
	 * The passed-in "hostname" was
	 * actually an IP address (and thus has no base domain or
	 * public suffix).
	 */
	IS_IP_ADDRESS = 1,
	/**
	 * The passed-in hostname
	 * did not have enough components. Eg, calling
	 * soup_tld_get_base_domain() on <literal>"co.uk"</literal>.
	 */
	NOT_ENOUGH_DOMAINS = 2,
	/**
	 * The passed-in hostname has
	 * no recognized public suffix.
	 */
	NO_BASE_DOMAIN = 3,
	NO_PSL_DATA = 4,
}
alias SoupTLDError TLDError;

/**
 * Pre-defined close codes that can be passed to
 * soup_websocket_connection_close() or received from
 * soup_websocket_connection_get_close_code(). (However, other codes
 * are also allowed.)
 *
 * Since: 2.50
 */
public enum SoupWebsocketCloseCode
{
	/**
	 * a normal, non-error close
	 */
	NORMAL = 1000,
	/**
	 * the client/server is going away
	 */
	GOING_AWAY = 1001,
	/**
	 * a protocol error occurred
	 */
	PROTOCOL_ERROR = 1002,
	/**
	 * the endpoint received data
	 * of a type that it does not support.
	 */
	UNSUPPORTED_DATA = 1003,
	/**
	 * reserved value indicating that
	 * no close code was present; must not be sent.
	 */
	NO_STATUS = 1005,
	/**
	 * reserved value indicating that
	 * the connection was closed abnormally; must not be sent.
	 */
	ABNORMAL = 1006,
	/**
	 * the endpoint received data that
	 * was invalid (eg, non-UTF-8 data in a text message).
	 */
	BAD_DATA = 1007,
	/**
	 * generic error code
	 * indicating some sort of policy violation.
	 */
	POLICY_VIOLATION = 1008,
	/**
	 * the endpoint received a message
	 * that is too big to process.
	 */
	TOO_BIG = 1009,
	/**
	 * the client is closing the
	 * connection because the server failed to negotiate a required
	 * extension.
	 */
	NO_EXTENSION = 1010,
	/**
	 * the server is closing the
	 * connection because it was unable to fulfill the request.
	 */
	SERVER_ERROR = 1011,
	/**
	 * reserved value indicating that
	 * the TLS handshake failed; must not be sent.
	 */
	TLS_HANDSHAKE = 1015,
}
alias SoupWebsocketCloseCode WebsocketCloseCode;

/**
 * The type of a #SoupWebsocketConnection.
 *
 * Since: 2.50
 */
public enum SoupWebsocketConnectionType
{
	/**
	 * unknown/invalid connection
	 */
	UNKNOWN = 0,
	/**
	 * a client-side connection
	 */
	CLIENT = 1,
	/**
	 * a server-side connection
	 */
	SERVER = 2,
}
alias SoupWebsocketConnectionType WebsocketConnectionType;

/**
 * The type of data contained in a #SoupWebsocketConnection::message
 * signal.
 *
 * Since: 2.50
 */
public enum SoupWebsocketDataType
{
	/**
	 * UTF-8 text
	 */
	TEXT = 1,
	/**
	 * binary data
	 */
	BINARY = 2,
}
alias SoupWebsocketDataType WebsocketDataType;

/**
 * WebSocket-related errors.
 *
 * Since: 2.50
 */
public enum SoupWebsocketError
{
	/**
	 * a generic error
	 */
	FAILED = 0,
	/**
	 * attempted to handshake with a
	 * server that does not appear to understand WebSockets.
	 */
	NOT_WEBSOCKET = 1,
	/**
	 * the WebSocket handshake failed
	 * because some detail was invalid (eg, incorrect accept key).
	 */
	BAD_HANDSHAKE = 2,
	/**
	 * the WebSocket handshake failed
	 * because the "Origin" header was not an allowed value.
	 */
	BAD_ORIGIN = 3,
}
alias SoupWebsocketError WebsocketError;

/**
 * The state of the WebSocket connection.
 *
 * Since: 2.50
 */
public enum SoupWebsocketState
{
	/**
	 * the connection is ready to send messages
	 */
	OPEN = 1,
	/**
	 * the connection is in the process of
	 * closing down; messages may be received, but not sent
	 */
	CLOSING = 2,
	/**
	 * the connection is completely closed down
	 */
	CLOSED = 3,
}
alias SoupWebsocketState WebsocketState;

public enum SoupXMLRPCError
{
	ARGUMENTS = 0,
	RETVAL = 1,
}
alias SoupXMLRPCError XMLRPCError;

/**
 * Pre-defined XML-RPC fault codes from <ulink
 * url="http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php">http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php</ulink>.
 * These are an extension, not part of the XML-RPC spec; you can't
 * assume servers will use them.
 */
public enum SoupXMLRPCFault
{
	/**
	 * request was not
	 * well-formed
	 */
	PARSE_ERROR_NOT_WELL_FORMED = -32700,
	/**
	 * request was in
	 * an unsupported encoding
	 */
	PARSE_ERROR_UNSUPPORTED_ENCODING = -32701,
	/**
	 * request contained an invalid character
	 */
	PARSE_ERROR_INVALID_CHARACTER_FOR_ENCODING = -32702,
	/**
	 * request was not
	 * valid XML-RPC
	 */
	SERVER_ERROR_INVALID_XML_RPC = -32600,
	/**
	 * method
	 * not found
	 */
	SERVER_ERROR_REQUESTED_METHOD_NOT_FOUND = -32601,
	/**
	 * invalid
	 * parameters
	 */
	SERVER_ERROR_INVALID_METHOD_PARAMETERS = -32602,
	/**
	 * internal
	 * error
	 */
	SERVER_ERROR_INTERNAL_XML_RPC_ERROR = -32603,
	/**
	 * start of reserved range for
	 * application error codes
	 */
	APPLICATION_ERROR = -32500,
	/**
	 * start of reserved range for
	 * system error codes
	 */
	SYSTEM_ERROR = -32400,
	/**
	 * start of reserved range for
	 * transport error codes
	 */
	TRANSPORT_ERROR = -32300,
}
alias SoupXMLRPCFault XMLRPCFault;

struct SoupAddress
{
	GObject parent;
}

struct SoupAddressClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupAuth
{
	GObject parent;
	char* realm;
}

struct SoupAuthBasic;

struct SoupAuthClass
{
	GObjectClass parentClass;
	const(char)* schemeName;
	uint strength;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 *     msg = the #SoupMessage @auth is being updated for
	 *     authHeader = the WWW-Authenticate/Proxy-Authenticate header
	 * Returns: %TRUE if @auth is still a valid (but potentially
	 *     unauthenticated) #SoupAuth. %FALSE if something about @auth_params
	 *     could not be parsed or incorporated into @auth at all.
	 */
	extern(C) int function(SoupAuth* auth, SoupMessage* msg, GHashTable* authHeader) update;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 *     sourceUri = the URI of the request that @auth was generated in
	 *         response to.
	 * Returns: the list of
	 *     paths, which can be freed with soup_auth_free_protection_space().
	 */
	extern(C) GSList* function(SoupAuth* auth, SoupURI* sourceUri) getProtectionSpace;
	/** */
	extern(C) void function(SoupAuth* auth, const(char)* username, const(char)* password) authenticate;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 * Returns: %TRUE if @auth has been given a username and password
	 */
	extern(C) int function(SoupAuth* auth) isAuthenticated;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 *     msg = the #SoupMessage to be authorized
	 * Returns: the "Authorization" header, which must be freed.
	 */
	extern(C) char* function(SoupAuth* auth, SoupMessage* msg) getAuthorization;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 *     msg = a #SoupMessage
	 * Returns: %TRUE if @auth is ready to make a request with.
	 */
	extern(C) int function(SoupAuth* auth, SoupMessage* msg) isReady;
	/**
	 *
	 * Params:
	 *     auth = a #SoupAuth
	 * Returns: %TRUE if @auth is able to accept credentials.
	 */
	extern(C) int function(SoupAuth* auth) canAuthenticate;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupAuthDigest;

struct SoupAuthDomain
{
	GObject parent;
}

struct SoupAuthDomainBasic
{
	SoupAuthDomain parent;
}

struct SoupAuthDomainBasicClass
{
	SoupAuthDomainClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupAuthDomainClass
{
	GObjectClass parentClass;
	/** */
	extern(C) char* function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* header) accepts;
	/** */
	extern(C) char* function(SoupAuthDomain* domain, SoupMessage* msg) challenge;
	/**
	 *
	 * Params:
	 *     domain = a #SoupAuthDomain
	 *     msg = a #SoupMessage
	 *     username = a username
	 *     password = a password
	 * Returns: whether or not the message is authenticated
	 */
	extern(C) int function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, const(char)* password) checkPassword;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupAuthDomainDigest
{
	SoupAuthDomain parent;
}

struct SoupAuthDomainDigestClass
{
	SoupAuthDomainClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupAuthManager
{
	GObject parent;
	SoupAuthManagerPrivate* priv;
}

struct SoupAuthManagerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupAuthManager* manager, SoupMessage* msg, SoupAuth* auth, int retrying) authenticate;
}

struct SoupAuthManagerPrivate;

struct SoupAuthNTLM;

struct SoupAuthNegotiate;

struct SoupBuffer
{
	/**
	 * the data
	 */
	void* data;
	/**
	 * length of @data
	 */
	size_t length;
}

struct SoupCache
{
	GObject parentInstance;
	SoupCachePrivate* priv;
}

struct SoupCacheClass
{
	GObjectClass parentClass;
	/** */
	extern(C) SoupCacheability function(SoupCache* cache, SoupMessage* msg) getCacheability;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
}

struct SoupCachePrivate;

struct SoupClientContext;

struct SoupConnection;

struct SoupContentDecoder
{
	GObject parent;
	SoupContentDecoderPrivate* priv;
}

struct SoupContentDecoderClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
	/** */
	extern(C) void function() LibsoupReserved5;
}

struct SoupContentDecoderPrivate;

struct SoupContentSniffer
{
	GObject parent;
	SoupContentSnifferPrivate* priv;
}

struct SoupContentSnifferClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     sniffer = a #SoupContentSniffer
	 *     msg = the message to sniff
	 *     buffer = a buffer containing the start of @msg's response body
	 *     params = return
	 *         location for Content-Type parameters (eg, "charset"), or %NULL
	 * Returns: the sniffed Content-Type of @buffer; this will never be %NULL,
	 *     but may be "application/octet-stream".
	 */
	extern(C) char* function(SoupContentSniffer* sniffer, SoupMessage* msg, SoupBuffer* buffer, GHashTable** params) sniff;
	/**
	 *
	 * Params:
	 *     sniffer = a #SoupContentSniffer
	 * Returns: the number of bytes to sniff
	 */
	extern(C) size_t function(SoupContentSniffer* sniffer) getBufferSize;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
	/** */
	extern(C) void function() LibsoupReserved5;
}

struct SoupContentSnifferPrivate;

struct SoupCookie
{
	/**
	 * the cookie name
	 */
	char* name;
	/**
	 * the cookie value
	 */
	char* value;
	/**
	 * the "domain" attribute, or else the hostname that the
	 * cookie came from.
	 */
	char* domain;
	/**
	 * the "path" attribute, or %NULL
	 */
	char* path;
	/**
	 * the cookie expiration time, or %NULL for a session cookie
	 */
	SoupDate* expires;
	/**
	 * %TRUE if the cookie should only be tranferred over SSL
	 */
	bool secure;
	/**
	 * %TRUE if the cookie should not be exposed to scripts
	 */
	bool httpOnly;
}

struct SoupCookieJar
{
	GObject parent;
}

struct SoupCookieJarClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupCookieJar* jar) save;
	/**
	 *
	 * Params:
	 *     jar = a #SoupCookieJar
	 * Returns: %TRUE if @jar storage is persistent or %FALSE otherwise.
	 */
	extern(C) int function(SoupCookieJar* jar) isPersistent;
	/** */
	extern(C) void function(SoupCookieJar* jar, SoupCookie* oldCookie, SoupCookie* newCookie) changed;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
}

struct SoupCookieJarDB
{
	SoupCookieJar parent;
}

struct SoupCookieJarDBClass
{
	SoupCookieJarClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupCookieJarText
{
	SoupCookieJar parent;
}

struct SoupCookieJarTextClass
{
	SoupCookieJarClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupDate
{
	/**
	 * the year, 1 to 9999
	 */
	int year;
	/**
	 * the month, 1 to 12
	 */
	int month;
	/**
	 * day of the month, 1 to 31
	 */
	int day;
	/**
	 * hour of the day, 0 to 23
	 */
	int hour;
	/**
	 * minute, 0 to 59
	 */
	int minute;
	/**
	 * second, 0 to 59 (or up to 61 in the case of leap seconds)
	 */
	int second;
	/**
	 * %TRUE if the date is in UTC
	 */
	bool utc;
	/**
	 * offset from UTC
	 */
	int offset;
}

struct SoupHSTSEnforcer
{
	GObject parent;
	SoupHSTSEnforcerPrivate* priv;
}

struct SoupHSTSEnforcerClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     hstsEnforcer = a #SoupHSTSEnforcer
	 * Returns: %TRUE if @hsts_enforcer storage is persistent or %FALSE otherwise.
	 */
	extern(C) int function(SoupHSTSEnforcer* hstsEnforcer) isPersistent;
	/**
	 *
	 * Params:
	 *     hstsEnforcer = a #SoupHSTSEnforcer
	 *     domain = a domain.
	 * Returns: %TRUE if access to @domain should happen over HTTPS, false
	 *     otherwise.
	 */
	extern(C) int function(SoupHSTSEnforcer* hstsEnforcer, const(char)* domain) hasValidPolicy;
	/** */
	extern(C) void function(SoupHSTSEnforcer* enforcer, SoupHSTSPolicy* oldPolicy, SoupHSTSPolicy* newPolicy) changed;
	/** */
	extern(C) void function(SoupHSTSEnforcer* enforcer, SoupMessage* message) hstsEnforced;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupHSTSEnforcerDB
{
	SoupHSTSEnforcer parent;
	SoupHSTSEnforcerDBPrivate* priv;
}

struct SoupHSTSEnforcerDBClass
{
	SoupHSTSEnforcerClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupHSTSEnforcerDBPrivate;

struct SoupHSTSEnforcerPrivate;

struct SoupHSTSPolicy
{
	/**
	 * The domain or hostname that the policy applies to
	 */
	char* domain;
	/**
	 * The maximum age, in seconds, that the policy is valid
	 */
	ulong maxAge;
	/**
	 * the policy expiration time, or %NULL for a permanent session policy
	 */
	SoupDate* expires;
	/**
	 * %TRUE if the policy applies on subdomains
	 */
	bool includeSubdomains;
}

struct SoupLogger
{
	GObject parent;
}

struct SoupLoggerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupMessage
{
	GObject parent;
	/**
	 * the HTTP method
	 */
	const(char)* method;
	/**
	 * the HTTP status code
	 */
	uint statusCode;
	/**
	 * the status phrase associated with @status_code
	 */
	char* reasonPhrase;
	/**
	 * the request body
	 */
	SoupMessageBody* requestBody;
	/**
	 * the request headers
	 */
	SoupMessageHeaders* requestHeaders;
	/**
	 * the response body
	 */
	SoupMessageBody* responseBody;
	/**
	 * the response headers
	 */
	SoupMessageHeaders* responseHeaders;
}

struct SoupMessageBody
{
	/**
	 * the data
	 */
	const(char)* data;
	/**
	 * length of @data
	 */
	long length;
}

struct SoupMessageClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupMessage* msg) wroteInformational;
	/** */
	extern(C) void function(SoupMessage* msg) wroteHeaders;
	/** */
	extern(C) void function(SoupMessage* msg) wroteChunk;
	/** */
	extern(C) void function(SoupMessage* msg) wroteBody;
	/** */
	extern(C) void function(SoupMessage* msg) gotInformational;
	/** */
	extern(C) void function(SoupMessage* msg) gotHeaders;
	/** */
	extern(C) void function(SoupMessage* msg, SoupBuffer* chunk) gotChunk;
	/** */
	extern(C) void function(SoupMessage* msg) gotBody;
	/** */
	extern(C) void function(SoupMessage* msg) restarted;
	/** */
	extern(C) void function(SoupMessage* msg) finished;
	/** */
	extern(C) void function(SoupMessage* msg) starting;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
}

struct SoupMessageHeaders;

struct SoupMessageHeadersIter
{
	void*[3] dummy;
}

struct SoupMessageQueue;

struct SoupMessageQueueItem;

struct SoupMultipart;

struct SoupMultipartInputStream
{
	GFilterInputStream parentInstance;
	SoupMultipartInputStreamPrivate* priv;
}

struct SoupMultipartInputStreamClass
{
	GFilterInputStreamClass parentClass;
}

struct SoupMultipartInputStreamPrivate;

struct SoupPasswordManager;

struct SoupPasswordManagerInterface
{
	GTypeInterface base;
	/** */
	extern(C) void function(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, int retrying, GMainContext* asyncContext, GCancellable* cancellable, SoupPasswordManagerCallback callback, void* userData) getPasswordsAsync;
	/** */
	extern(C) void function(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, GCancellable* cancellable) getPasswordsSync;
}

struct SoupProxyResolver;

struct SoupProxyResolverDefault
{
	GObject parent;
}

struct SoupProxyResolverDefaultClass
{
	GObjectClass parentClass;
}

struct SoupProxyResolverInterface
{
	GTypeInterface base;
	/** */
	extern(C) void function(SoupProxyResolver* proxyResolver, SoupMessage* msg, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyResolverCallback callback, void* userData) getProxyAsync;
	/** */
	extern(C) uint function(SoupProxyResolver* proxyResolver, SoupMessage* msg, GCancellable* cancellable, SoupAddress** addr) getProxySync;
}

struct SoupProxyURIResolver;

struct SoupProxyURIResolverInterface
{
	GTypeInterface base;
	/** */
	extern(C) void function(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyURIResolverCallback callback, void* userData) getProxyUriAsync;
	/**
	 *
	 * Params:
	 *     proxyUriResolver = the #SoupProxyURIResolver
	 *     uri = the #SoupURI you want a proxy for
	 *     cancellable = a #GCancellable, or %NULL
	 *     proxyUri = on return, will contain the proxy URI
	 * Returns: %SOUP_STATUS_OK if successful, or a transport-level
	 *     error.
	 */
	extern(C) uint function(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GCancellable* cancellable, SoupURI** proxyUri) getProxyUriSync;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

/**
 * Represents a byte range as used in the Range header.
 *
 * If @end is non-negative, then @start and @end represent the bounds
 * of of the range, counting from 0. (Eg, the first 500 bytes would be
 * represented as @start = 0 and @end = 499.)
 *
 * If @end is -1 and @start is non-negative, then this represents a
 * range starting at @start and ending with the last byte of the
 * requested resource body. (Eg, all but the first 500 bytes would be
 * @start = 500, and @end = -1.)
 *
 * If @end is -1 and @start is negative, then it represents a "suffix
 * range", referring to the last -@start bytes of the resource body.
 * (Eg, the last 500 bytes would be @start = -500 and @end = -1.)
 *
 * Since: 2.26
 */
struct SoupRange
{
	/**
	 * the start of the range
	 */
	long start;
	/**
	 * the end of the range
	 */
	long end;
}

struct SoupRequest
{
	GObject parent;
	SoupRequestPrivate* priv;
}

struct SoupRequestClass
{
	GObjectClass parent;
	char** schemes;
	/** */
	extern(C) int function(SoupRequest* reqBase, SoupURI* uri, GError** err) checkUri;
	/**
	 *
	 * Params:
	 *     request = a #SoupRequest
	 *     cancellable = a #GCancellable or %NULL
	 * Returns: a #GInputStream that can be used to
	 *     read from the URI pointed to by @request.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GInputStream* function(SoupRequest* request, GCancellable* cancellable, GError** err) send;
	/** */
	extern(C) void function(SoupRequest* request, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) sendAsync;
	/**
	 *
	 * Params:
	 *     request = a #SoupRequest
	 *     result = the #GAsyncResult
	 * Returns: a #GInputStream that can be used to
	 *     read from the URI pointed to by @request.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GInputStream* function(SoupRequest* request, GAsyncResult* result, GError** err) sendFinish;
	/**
	 *
	 * Params:
	 *     request = a #SoupRequest
	 * Returns: the length of the data represented by @request,
	 *     or -1 if not known.
	 */
	extern(C) long function(SoupRequest* request) getContentLength;
	/**
	 *
	 * Params:
	 *     request = a #SoupRequest
	 * Returns: the type of the data represented by
	 *     @request, or %NULL if not known.
	 */
	extern(C) const(char)* function(SoupRequest* request) getContentType;
}

struct SoupRequestData
{
	SoupRequest parent;
	SoupRequestDataPrivate* priv;
}

struct SoupRequestDataClass
{
	SoupRequestClass parent;
}

struct SoupRequestDataPrivate;

struct SoupRequestFile
{
	SoupRequest parent;
	SoupRequestFilePrivate* priv;
}

struct SoupRequestFileClass
{
	SoupRequestClass parent;
}

struct SoupRequestFilePrivate;

struct SoupRequestHTTP
{
	SoupRequest parent;
	SoupRequestHTTPPrivate* priv;
}

struct SoupRequestHTTPClass
{
	SoupRequestClass parent;
}

struct SoupRequestHTTPPrivate;

struct SoupRequestPrivate;

struct SoupRequester
{
	GObject parent;
	SoupRequesterPrivate* priv;
}

struct SoupRequesterClass
{
	GObjectClass parentClass;
}

struct SoupRequesterPrivate;

struct SoupServer
{
	GObject parent;
}

struct SoupServerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupServer* server, SoupMessage* msg, SoupClientContext* client) requestStarted;
	/** */
	extern(C) void function(SoupServer* server, SoupMessage* msg, SoupClientContext* client) requestRead;
	/** */
	extern(C) void function(SoupServer* server, SoupMessage* msg, SoupClientContext* client) requestFinished;
	/** */
	extern(C) void function(SoupServer* server, SoupMessage* msg, SoupClientContext* client) requestAborted;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupSession
{
	GObject parent;
}

struct SoupSessionAsync
{
	SoupSession parent;
}

struct SoupSessionAsyncClass
{
	SoupSessionClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupSessionClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg, SoupSocket* socket) requestStarted;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg, SoupAuth* auth, int retrying) authenticate;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg, SoupSessionCallback callback, void* userData) queueMessage;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg) requeueMessage;
	/**
	 *
	 * Params:
	 *     session = a #SoupSession
	 *     msg = the message to send
	 * Returns: the HTTP status code of the response
	 */
	extern(C) uint function(SoupSession* session, SoupMessage* msg) sendMessage;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg, uint statusCode) cancelMessage;
	/** */
	extern(C) void function(SoupSession* session, SoupMessage* msg, SoupAuth* auth, int retrying) authRequired;
	/** */
	extern(C) void function(SoupSession* session) flushQueue;
	/** */
	extern(C) void function(SoupSession* session) kick;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupSessionFeature;

/**
 * The interface implemented by #SoupSessionFeature<!-- -->s.
 *
 * Since: 2.24
 */
struct SoupSessionFeatureInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parent;
	/** */
	extern(C) void function(SoupSessionFeature* feature, SoupSession* session) attach;
	/** */
	extern(C) void function(SoupSessionFeature* feature, SoupSession* session) detach;
	/** */
	extern(C) void function(SoupSessionFeature* feature, SoupSession* session, SoupMessage* msg) requestQueued;
	/** */
	extern(C) void function(SoupSessionFeature* feature, SoupSession* session, SoupMessage* msg, SoupSocket* socket) requestStarted;
	/** */
	extern(C) void function(SoupSessionFeature* feature, SoupSession* session, SoupMessage* msg) requestUnqueued;
	/**
	 *
	 * Params:
	 *     feature = the "base" feature
	 *     type = the #GType of a "sub-feature"
	 * Returns: %TRUE if @feature accepted @type as a subfeature.
	 */
	extern(C) int function(SoupSessionFeature* feature, GType type) addFeature;
	/**
	 *
	 * Params:
	 *     feature = the "base" feature
	 *     type = the #GType of a "sub-feature"
	 * Returns: %TRUE if @type was removed from @feature
	 */
	extern(C) int function(SoupSessionFeature* feature, GType type) removeFeature;
	/**
	 *
	 * Params:
	 *     feature = the "base" feature
	 *     type = the #GType of a "sub-feature"
	 * Returns: %TRUE if @feature has a subfeature of type @type
	 */
	extern(C) int function(SoupSessionFeature* feature, GType type) hasFeature;
}

struct SoupSessionSync
{
	SoupSession parent;
}

struct SoupSessionSyncClass
{
	SoupSessionClass parentClass;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupSocket
{
	GObject parent;
}

struct SoupSocketClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(SoupSocket* sock) readable;
	/** */
	extern(C) void function(SoupSocket* sock) writable;
	/** */
	extern(C) void function(SoupSocket* sock) disconnected;
	/** */
	extern(C) void function(SoupSocket* listener, SoupSocket* newSock) newConnection;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupURI
{
	/**
	 * the URI scheme (eg, "http")
	 */
	const(char)* scheme;
	/**
	 * a username, or %NULL
	 */
	char* user;
	/**
	 * a password, or %NULL
	 */
	char* password;
	/**
	 * the hostname or IP address, or %NULL
	 */
	char* host;
	/**
	 * the port number on @host
	 */
	uint port;
	/**
	 * the path on @host
	 */
	char* path;
	/**
	 * a query for @path, or %NULL
	 */
	char* query;
	/**
	 * a fragment identifier within @path, or %NULL
	 */
	char* fragment;
}

struct SoupWebsocketConnection
{
	GObject parent;
	SoupWebsocketConnectionPrivate* pv;
}

/**
 * The abstract base class for #SoupWebsocketConnection
 *
 * Since: 2.50
 */
struct SoupWebsocketConnectionClass
{
	GObjectClass parent;
	/** */
	extern(C) void function(SoupWebsocketConnection* self, SoupWebsocketDataType type, GBytes* message) message;
	/** */
	extern(C) void function(SoupWebsocketConnection* self, GError* error) error;
	/** */
	extern(C) void function(SoupWebsocketConnection* self) closing;
	/** */
	extern(C) void function(SoupWebsocketConnection* self) closed;
	/** */
	extern(C) void function(SoupWebsocketConnection* self, GBytes* message) pong;
}

struct SoupWebsocketConnectionPrivate;

struct SoupWebsocketExtension
{
	GObject parent;
}

/**
 * The class structure for the SoupWebsocketExtension.
 *
 * Since: 2.68
 */
struct SoupWebsocketExtensionClass
{
	/**
	 * the parent class
	 */
	GObjectClass parentClass;
	const(char)* name;
	/**
	 *
	 * Params:
	 *     extension = a #SoupWebsocketExtension
	 *     connectionType = either %SOUP_WEBSOCKET_CONNECTION_CLIENT or %SOUP_WEBSOCKET_CONNECTION_SERVER
	 *     params = the parameters, or %NULL
	 * Returns: %TRUE if extension could be configured with the given parameters, or %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(SoupWebsocketExtension* extension, SoupWebsocketConnectionType connectionType, GHashTable* params, GError** err) configure;
	/**
	 *
	 * Params:
	 *     extension = a #SoupWebsocketExtension
	 * Returns: a new allocated string with the parameters
	 */
	extern(C) char* function(SoupWebsocketExtension* extension) getRequestParams;
	/**
	 *
	 * Params:
	 *     extension = a #SoupWebsocketExtension
	 * Returns: a new allocated string with the parameters
	 */
	extern(C) char* function(SoupWebsocketExtension* extension) getResponseParams;
	/**
	 *
	 * Params:
	 *     extension = a #SoupWebsocketExtension
	 *     header = the message header
	 *     payload = the payload data
	 * Returns: the message payload data, or %NULL in case of error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GBytes* function(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err) processOutgoingMessage;
	/**
	 *
	 * Params:
	 *     extension = a #SoupWebsocketExtension
	 *     header = the message header
	 *     payload = the payload data
	 * Returns: the message payload data, or %NULL in case of error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GBytes* function(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err) processIncomingMessage;
	/** */
	extern(C) void function() LibsoupReserved1;
	/** */
	extern(C) void function() LibsoupReserved2;
	/** */
	extern(C) void function() LibsoupReserved3;
	/** */
	extern(C) void function() LibsoupReserved4;
}

struct SoupWebsocketExtensionDeflate
{
	SoupWebsocketExtension parent;
}

struct SoupWebsocketExtensionDeflateClass
{
	SoupWebsocketExtensionClass parentClass;
}

struct SoupWebsocketExtensionManager
{
	GObject parent;
}

struct SoupWebsocketExtensionManagerClass
{
	GObjectClass parentClass;
}

struct SoupXMLRPCParams;

/**
 * The callback function passed to soup_address_resolve_async().
 *
 * Params:
 *     addr = the #SoupAddress that was resolved
 *     status = %SOUP_STATUS_OK, %SOUP_STATUS_CANT_RESOLVE, or
 *         %SOUP_STATUS_CANCELLED
 *     userData = the user data that was passed to
 *         soup_address_resolve_async()
 */
public alias extern(C) void function(SoupAddress* addr, uint status, void* userData) SoupAddressCallback;

/**
 * Callback used by #SoupAuthDomainBasic for authentication purposes.
 * The application should verify that @username and @password and valid
 * and return %TRUE or %FALSE.
 *
 * If you are maintaining your own password database (rather than
 * using the password to authenticate against some other system like
 * PAM or a remote server), you should make sure you know what you are
 * doing. In particular, don't store cleartext passwords, or
 * easily-computed hashes of cleartext passwords, even if you don't
 * care that much about the security of your server, because users
 * will frequently use the same password for multiple sites, and so
 * compromising any site with a cleartext (or easily-cracked) password
 * database may give attackers access to other more-interesting sites
 * as well.
 *
 * Params:
 *     domain = the domain
 *     msg = the message being authenticated
 *     username = the username provided by the client
 *     password = the password provided by the client
 *     userData = the data passed to soup_auth_domain_basic_set_auth_callback()
 *
 * Returns: %TRUE if @username and @password are valid
 */
public alias extern(C) int function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, const(char)* password, void* userData) SoupAuthDomainBasicAuthCallback;

/**
 * Callback used by #SoupAuthDomainDigest for authentication purposes.
 * The application should look up @username in its password database,
 * and return the corresponding encoded password (see
 * soup_auth_domain_digest_encode_password()).
 *
 * Params:
 *     domain = the domain
 *     msg = the message being authenticated
 *     username = the username provided by the client
 *     userData = the data passed to soup_auth_domain_digest_set_auth_callback()
 *
 * Returns: the encoded password, or %NULL if
 *     @username is not a valid user. @domain will free the password when
 *     it is done with it.
 */
public alias extern(C) char* function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, void* userData) SoupAuthDomainDigestAuthCallback;

/**
 * The prototype for a #SoupAuthDomain filter; see
 * soup_auth_domain_set_filter() for details.
 *
 * Params:
 *     domain = a #SoupAuthDomain
 *     msg = a #SoupMessage
 *     userData = the data passed to soup_auth_domain_set_filter()
 *
 * Returns: %TRUE if @msg requires authentication, %FALSE if not.
 */
public alias extern(C) int function(SoupAuthDomain* domain, SoupMessage* msg, void* userData) SoupAuthDomainFilter;

/**
 * The prototype for a #SoupAuthDomain generic authentication callback.
 *
 * The callback should look up the user's password, call
 * soup_auth_domain_check_password(), and use the return value from
 * that method as its own return value.
 *
 * In general, for security reasons, it is preferable to use the
 * auth-domain-specific auth callbacks (eg,
 * #SoupAuthDomainBasicAuthCallback and
 * #SoupAuthDomainDigestAuthCallback), because they don't require
 * keeping a cleartext password database. Most users will use the same
 * password for many different sites, meaning if any site with a
 * cleartext password database is compromised, accounts on other
 * servers might be compromised as well. For many of the cases where
 * #SoupServer is used, this is not really relevant, but it may still
 * be worth considering.
 *
 * Params:
 *     domain = a #SoupAuthDomain
 *     msg = the #SoupMessage being authenticated
 *     username = the username from @msg
 *     userData = the data passed to
 *         soup_auth_domain_set_generic_auth_callback()
 *
 * Returns: %TRUE if @msg is authenticated, %FALSE if not.
 */
public alias extern(C) int function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, void* userData) SoupAuthDomainGenericAuthCallback;

/**
 * The prototype for a chunk allocation callback. This should allocate
 * a new #SoupBuffer and return it for the I/O layer to read message
 * body data off the network into.
 *
 * If @max_len is non-0, it indicates the maximum number of bytes that
 * could be read, based on what is known about the message size. Note
 * that this might be a very large number, and you should not simply
 * try to allocate that many bytes blindly. If @max_len is 0, that
 * means that libsoup does not know how many bytes remain to be read,
 * and the allocator should return a buffer of a size that it finds
 * convenient.
 *
 * If the allocator returns %NULL, the message will be paused. It is
 * up to the application to make sure that it gets unpaused when it
 * becomes possible to allocate a new buffer.
 *
 * Deprecated: Use #SoupRequest if you want to read into your
 * own buffers.
 *
 * Params:
 *     msg = the #SoupMessage the chunk is being allocated for
 *     maxLen = the maximum length that will be read, or 0.
 *     userData = the data passed to soup_message_set_chunk_allocator()
 *
 * Returns: the new buffer (or %NULL)
 */
public alias extern(C) SoupBuffer* function(SoupMessage* msg, size_t maxLen, void* userData) SoupChunkAllocator;

/**
 * The prototype for a logging filter. The filter callback will be
 * invoked for each request or response, and should analyze it and
 * return a #SoupLoggerLogLevel value indicating how much of the
 * message to log. Eg, it might choose between %SOUP_LOGGER_LOG_BODY
 * and %SOUP_LOGGER_LOG_HEADERS depending on the Content-Type.
 *
 * Params:
 *     logger = the #SoupLogger
 *     msg = the message being logged
 *     userData = the data passed to soup_logger_set_request_filter()
 *         or soup_logger_set_response_filter()
 *
 * Returns: a #SoupLoggerLogLevel value indicating how much of
 *     the message to log
 */
public alias extern(C) SoupLoggerLogLevel function(SoupLogger* logger, SoupMessage* msg, void* userData) SoupLoggerFilter;

/**
 * The prototype for a custom printing callback.
 *
 * @level indicates what kind of information is being printed. Eg, it
 * will be %SOUP_LOGGER_LOG_HEADERS if @data is header data.
 *
 * @direction is either '<', '>', or ' ', and @data is the single line
 * to print; the printer is expected to add a terminating newline.
 *
 * To get the effect of the default printer, you would do:
 *
 * <informalexample><programlisting>
 * printf ("%c %s\n", direction, data);
 * </programlisting></informalexample>
 *
 * Params:
 *     logger = the #SoupLogger
 *     level = the level of the information being printed.
 *     direction = a single-character prefix to @data
 *     data = data to print
 *     userData = the data passed to soup_logger_set_printer()
 */
public alias extern(C) void function(SoupLogger* logger, SoupLoggerLogLevel level, char direction, const(char)* data, void* userData) SoupLoggerPrinter;

/**
 * The callback passed to soup_message_headers_foreach().
 *
 * Params:
 *     name = the header name
 *     value = the header value
 *     userData = the data passed to soup_message_headers_foreach()
 */
public alias extern(C) void function(const(char)* name, const(char)* value, void* userData) SoupMessageHeadersForeachFunc;

/** */
public alias extern(C) void function(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, int retrying, void* userData) SoupPasswordManagerCallback;

/**
 *
 *
 * Deprecated: Use SoupProxyURIResolver instead
 */
public alias extern(C) void function(SoupProxyResolver* proxyResolver, SoupMessage* msg, uint arg, SoupAddress* addr, void* userData) SoupProxyResolverCallback;

/**
 * Callback for soup_proxy_uri_resolver_get_proxy_uri_async()
 *
 * Params:
 *     resolver = the #SoupProxyURIResolver
 *     status = a #SoupStatus
 *     proxyUri = the resolved proxy URI, or %NULL
 *     userData = data passed to soup_proxy_uri_resolver_get_proxy_uri_async()
 */
public alias extern(C) void function(SoupProxyURIResolver* resolver, uint status, SoupURI* proxyUri, void* userData) SoupProxyURIResolverCallback;

/**
 * A callback used to handle requests to a #SoupServer.
 *
 * @path and @query contain the likewise-named components of the
 * Request-URI, subject to certain assumptions. By default,
 * #SoupServer decodes all percent-encoding in the URI path, such that
 * "/foo%<!-- -->2Fbar" is treated the same as "/foo/bar". If your
 * server is serving resources in some non-POSIX-filesystem namespace,
 * you may want to distinguish those as two distinct paths. In that
 * case, you can set the %SOUP_SERVER_RAW_PATHS property when creating
 * the #SoupServer, and it will leave those characters undecoded. (You
 * may want to call soup_uri_normalize() to decode any percent-encoded
 * characters that you aren't handling specially.)
 *
 * @query contains the query component of the Request-URI parsed
 * according to the rules for HTML form handling. Although this is the
 * only commonly-used query string format in HTTP, there is nothing
 * that actually requires that HTTP URIs use that format; if your
 * server needs to use some other format, you can just ignore @query,
 * and call soup_message_get_uri() and parse the URI's query field
 * yourself.
 *
 * See soup_server_add_handler() and soup_server_add_early_handler()
 * for details of what handlers can/should do.
 *
 * Params:
 *     server = the #SoupServer
 *     msg = the message being processed
 *     path = the path component of @msg's Request-URI
 *     query = the parsed query
 *         component of @msg's Request-URI
 *     client = additional contextual information about the client
 *     userData = the data passed to soup_server_add_handler() or
 *         soup_server_add_early_handler().
 */
public alias extern(C) void function(SoupServer* server, SoupMessage* msg, const(char)* path, GHashTable* query, SoupClientContext* client, void* userData) SoupServerCallback;

/**
 * A callback used to handle WebSocket requests to a #SoupServer. The
 * callback will be invoked after sending the handshake response back
 * to the client (and is only invoked if the handshake was
 * successful).
 *
 * @path contains the path of the Request-URI, subject to the same
 * rules as #SoupServerCallback (qv).
 *
 * Params:
 *     server = the #SoupServer
 *     connection = the newly created WebSocket connection
 *     path = the path component of @msg's Request-URI
 *     client = additional contextual information about the client
 *     userData = the data passed to @soup_server_add_handler
 */
public alias extern(C) void function(SoupServer* server, SoupWebsocketConnection* connection, const(char)* path, SoupClientContext* client, void* userData) SoupServerWebsocketCallback;

/**
 * Prototype for the callback passed to soup_session_queue_message(),
 * qv.
 *
 * Params:
 *     session = the session
 *     msg = the message that has finished
 *     userData = the data passed to soup_session_queue_message
 */
public alias extern(C) void function(SoupSession* session, SoupMessage* msg, void* userData) SoupSessionCallback;

/**
 * Prototype for the progress callback passed to soup_session_connect_async().
 *
 * Params:
 *     session = the #SoupSession
 *     event = a #GSocketClientEvent
 *     connection = the current state of the network connection
 *     userData = the data passed to soup_session_connect_async().
 *
 * Since: 2.62
 */
public alias extern(C) void function(SoupSession* session, GSocketClientEvent event, GIOStream* connection, void* userData) SoupSessionConnectProgressCallback;

/**
 * The callback function passed to soup_socket_connect_async().
 *
 * Params:
 *     sock = the #SoupSocket
 *     status = an HTTP status code indicating success or failure
 *     userData = the data passed to soup_socket_connect_async()
 */
public alias extern(C) void function(SoupSocket* sock, uint status, void* userData) SoupSocketCallback;
version ( Windows ) {
	public import core.sys.windows.winsock2 : sockaddr;
}
else {
	public import core.sys.posix.sys.socket : sockaddr;
}

/**
 * This can be passed to any #SoupAddress method that expects a port,
 * to indicate that you don't care what port is used.
 */
enum ADDRESS_ANY_PORT = 0;
alias SOUP_ADDRESS_ANY_PORT = ADDRESS_ANY_PORT;

/**
 * Alias for the #SoupAddress:family property. (The
 * #SoupAddressFamily for this address.)
 */
enum ADDRESS_FAMILY = "family";
alias SOUP_ADDRESS_FAMILY = ADDRESS_FAMILY;

/**
 * Alias for the #SoupAddress:name property. (The hostname for
 * this address.)
 */
enum ADDRESS_NAME = "name";
alias SOUP_ADDRESS_NAME = ADDRESS_NAME;

/**
 * An alias for the #SoupAddress:physical property. (The
 * stringified IP address for this address.)
 */
enum ADDRESS_PHYSICAL = "physical";
alias SOUP_ADDRESS_PHYSICAL = ADDRESS_PHYSICAL;

/**
 * An alias for the #SoupAddress:port property. (The port for
 * this address.)
 */
enum ADDRESS_PORT = "port";
alias SOUP_ADDRESS_PORT = ADDRESS_PORT;

/**
 * Alias for the #SoupAddress:protocol property. (The URI scheme
 * used with this address.)
 */
enum ADDRESS_PROTOCOL = "protocol";
alias SOUP_ADDRESS_PROTOCOL = ADDRESS_PROTOCOL;

/**
 * An alias for the #SoupAddress:sockaddr property. (A pointer
 * to the struct sockaddr for this address.)
 */
enum ADDRESS_SOCKADDR = "sockaddr";
alias SOUP_ADDRESS_SOCKADDR = ADDRESS_SOCKADDR;

/**
 * Alias for the #SoupAuthDomain:add-path property. (Shortcut
 * for calling soup_auth_domain_add_path().)
 */
enum AUTH_DOMAIN_ADD_PATH = "add-path";
alias SOUP_AUTH_DOMAIN_ADD_PATH = AUTH_DOMAIN_ADD_PATH;

/**
 * Alias for the #SoupAuthDomainBasic:auth-callback property.
 * (The #SoupAuthDomainBasicAuthCallback.)
 */
enum AUTH_DOMAIN_BASIC_AUTH_CALLBACK = "auth-callback";
alias SOUP_AUTH_DOMAIN_BASIC_AUTH_CALLBACK = AUTH_DOMAIN_BASIC_AUTH_CALLBACK;

/**
 * Alias for the #SoupAuthDomainBasic:auth-data property.
 * (The data to pass to the #SoupAuthDomainBasicAuthCallback.)
 */
enum AUTH_DOMAIN_BASIC_AUTH_DATA = "auth-data";
alias SOUP_AUTH_DOMAIN_BASIC_AUTH_DATA = AUTH_DOMAIN_BASIC_AUTH_DATA;

/**
 * Alias for the #SoupAuthDomainDigest:auth-callback property.
 * (The #SoupAuthDomainDigestAuthCallback.)
 */
enum AUTH_DOMAIN_DIGEST_AUTH_CALLBACK = "auth-callback";
alias SOUP_AUTH_DOMAIN_DIGEST_AUTH_CALLBACK = AUTH_DOMAIN_DIGEST_AUTH_CALLBACK;

/**
 * Alias for the #SoupAuthDomainDigest:auth-callback property.
 * (The #SoupAuthDomainDigestAuthCallback.)
 */
enum AUTH_DOMAIN_DIGEST_AUTH_DATA = "auth-data";
alias SOUP_AUTH_DOMAIN_DIGEST_AUTH_DATA = AUTH_DOMAIN_DIGEST_AUTH_DATA;

/**
 * Alias for the #SoupAuthDomain:filter property. (The
 * #SoupAuthDomainFilter for the domain.)
 */
enum AUTH_DOMAIN_FILTER = "filter";
alias SOUP_AUTH_DOMAIN_FILTER = AUTH_DOMAIN_FILTER;

/**
 * Alias for the #SoupAuthDomain:filter-data property. (Data
 * to pass to the #SoupAuthDomainFilter.)
 */
enum AUTH_DOMAIN_FILTER_DATA = "filter-data";
alias SOUP_AUTH_DOMAIN_FILTER_DATA = AUTH_DOMAIN_FILTER_DATA;

/**
 * Alias for the #SoupAuthDomain:generic-auth-callback property.
 * (The #SoupAuthDomainGenericAuthCallback.)
 */
enum AUTH_DOMAIN_GENERIC_AUTH_CALLBACK = "generic-auth-callback";
alias SOUP_AUTH_DOMAIN_GENERIC_AUTH_CALLBACK = AUTH_DOMAIN_GENERIC_AUTH_CALLBACK;

/**
 * Alias for the #SoupAuthDomain:generic-auth-data property.
 * (The data to pass to the #SoupAuthDomainGenericAuthCallback.)
 */
enum AUTH_DOMAIN_GENERIC_AUTH_DATA = "generic-auth-data";
alias SOUP_AUTH_DOMAIN_GENERIC_AUTH_DATA = AUTH_DOMAIN_GENERIC_AUTH_DATA;

/**
 * Alias for the #SoupAuthDomain:proxy property. (Whether or
 * not this is a proxy auth domain.)
 */
enum AUTH_DOMAIN_PROXY = "proxy";
alias SOUP_AUTH_DOMAIN_PROXY = AUTH_DOMAIN_PROXY;

/**
 * Alias for the #SoupAuthDomain:realm property. (The realm of
 * this auth domain.)
 */
enum AUTH_DOMAIN_REALM = "realm";
alias SOUP_AUTH_DOMAIN_REALM = AUTH_DOMAIN_REALM;

/**
 * Alias for the #SoupAuthDomain:remove-path property.
 * (Shortcut for calling soup_auth_domain_remove_path().)
 */
enum AUTH_DOMAIN_REMOVE_PATH = "remove-path";
alias SOUP_AUTH_DOMAIN_REMOVE_PATH = AUTH_DOMAIN_REMOVE_PATH;

/**
 * An alias for the #SoupAuth:host property. (The
 * host being authenticated to.)
 */
enum AUTH_HOST = "host";
alias SOUP_AUTH_HOST = AUTH_HOST;

/**
 * An alias for the #SoupAuth:is-authenticated property.
 * (Whether or not the auth has been authenticated.)
 */
enum AUTH_IS_AUTHENTICATED = "is-authenticated";
alias SOUP_AUTH_IS_AUTHENTICATED = AUTH_IS_AUTHENTICATED;

/**
 * An alias for the #SoupAuth:is-for-proxy property. (Whether
 * or not the auth is for a proxy server.)
 */
enum AUTH_IS_FOR_PROXY = "is-for-proxy";
alias SOUP_AUTH_IS_FOR_PROXY = AUTH_IS_FOR_PROXY;

/**
 * An alias for the #SoupAuth:realm property. (The
 * authentication realm.)
 */
enum AUTH_REALM = "realm";
alias SOUP_AUTH_REALM = AUTH_REALM;

/**
 * An alias for the #SoupAuth:scheme-name property. (The
 * authentication scheme name.)
 */
enum AUTH_SCHEME_NAME = "scheme-name";
alias SOUP_AUTH_SCHEME_NAME = AUTH_SCHEME_NAME;

enum CHAR_HTTP_CTL = 16;
alias SOUP_CHAR_HTTP_CTL = CHAR_HTTP_CTL;

enum CHAR_HTTP_SEPARATOR = 8;
alias SOUP_CHAR_HTTP_SEPARATOR = CHAR_HTTP_SEPARATOR;

enum CHAR_URI_GEN_DELIMS = 2;
alias SOUP_CHAR_URI_GEN_DELIMS = CHAR_URI_GEN_DELIMS;

enum CHAR_URI_PERCENT_ENCODED = 1;
alias SOUP_CHAR_URI_PERCENT_ENCODED = CHAR_URI_PERCENT_ENCODED;

enum CHAR_URI_SUB_DELIMS = 4;
alias SOUP_CHAR_URI_SUB_DELIMS = CHAR_URI_SUB_DELIMS;

/**
 * Alias for the #SoupCookieJar:accept-policy property.
 */
enum COOKIE_JAR_ACCEPT_POLICY = "accept-policy";
alias SOUP_COOKIE_JAR_ACCEPT_POLICY = COOKIE_JAR_ACCEPT_POLICY;

/**
 * Alias for the #SoupCookieJarDB:filename property. (The
 * cookie-storage filename.)
 */
enum COOKIE_JAR_DB_FILENAME = "filename";
alias SOUP_COOKIE_JAR_DB_FILENAME = COOKIE_JAR_DB_FILENAME;

/**
 * Alias for the #SoupCookieJar:read-only property. (Whether
 * or not the cookie jar is read-only.)
 */
enum COOKIE_JAR_READ_ONLY = "read-only";
alias SOUP_COOKIE_JAR_READ_ONLY = COOKIE_JAR_READ_ONLY;

/**
 * Alias for the #SoupCookieJarText:filename property. (The
 * cookie-storage filename.)
 */
enum COOKIE_JAR_TEXT_FILENAME = "filename";
alias SOUP_COOKIE_JAR_TEXT_FILENAME = COOKIE_JAR_TEXT_FILENAME;

/**
 * A constant corresponding to 1 day, for use with soup_cookie_new()
 * and soup_cookie_set_max_age().
 */
enum COOKIE_MAX_AGE_ONE_DAY = 0;
alias SOUP_COOKIE_MAX_AGE_ONE_DAY = COOKIE_MAX_AGE_ONE_DAY;

/**
 * A constant corresponding to 1 hour, for use with soup_cookie_new()
 * and soup_cookie_set_max_age().
 */
enum COOKIE_MAX_AGE_ONE_HOUR = 3600;
alias SOUP_COOKIE_MAX_AGE_ONE_HOUR = COOKIE_MAX_AGE_ONE_HOUR;

/**
 * A constant corresponding to 1 week, for use with soup_cookie_new()
 * and soup_cookie_set_max_age().
 */
enum COOKIE_MAX_AGE_ONE_WEEK = 0;
alias SOUP_COOKIE_MAX_AGE_ONE_WEEK = COOKIE_MAX_AGE_ONE_WEEK;

/**
 * A constant corresponding to 1 year, for use with soup_cookie_new()
 * and soup_cookie_set_max_age().
 */
enum COOKIE_MAX_AGE_ONE_YEAR = 0;
alias SOUP_COOKIE_MAX_AGE_ONE_YEAR = COOKIE_MAX_AGE_ONE_YEAR;

/**
 * A macro containing the value
 * <literal>"multipart/form-data"</literal>; the MIME type used for
 * posting form data that contains files to be uploaded.
 */
enum FORM_MIME_TYPE_MULTIPART = "multipart/form-data";
alias SOUP_FORM_MIME_TYPE_MULTIPART = FORM_MIME_TYPE_MULTIPART;

/**
 * A macro containing the value
 * <literal>"application/x-www-form-urlencoded"</literal>; the default
 * MIME type for POSTing HTML form data.
 */
enum FORM_MIME_TYPE_URLENCODED = "application/x-www-form-urlencoded";
alias SOUP_FORM_MIME_TYPE_URLENCODED = FORM_MIME_TYPE_URLENCODED;

enum HSTS_ENFORCER_DB_FILENAME = "filename";
alias SOUP_HSTS_ENFORCER_DB_FILENAME = HSTS_ENFORCER_DB_FILENAME;

enum HSTS_POLICY_MAX_AGE_PAST = 0;
alias SOUP_HSTS_POLICY_MAX_AGE_PAST = HSTS_POLICY_MAX_AGE_PAST;

/**
 * Alias for the #SoupLogger:level property, qv.
 */
enum LOGGER_LEVEL = "level";
alias SOUP_LOGGER_LEVEL = LOGGER_LEVEL;

/**
 * Alias for the #SoupLogger:max-body-size property, qv.
 */
enum LOGGER_MAX_BODY_SIZE = "max-body-size";
alias SOUP_LOGGER_MAX_BODY_SIZE = LOGGER_MAX_BODY_SIZE;

/**
 * Like soup_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MAJOR_VERSION = 2;
alias SOUP_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Alias for the #SoupMessage:first-party property. (The
 * #SoupURI loaded in the application when the message was
 * queued.)
 */
enum MESSAGE_FIRST_PARTY = "first-party";
alias SOUP_MESSAGE_FIRST_PARTY = MESSAGE_FIRST_PARTY;

/**
 * Alias for the #SoupMessage:flags property. (The message's
 * #SoupMessageFlags.)
 */
enum MESSAGE_FLAGS = "flags";
alias SOUP_MESSAGE_FLAGS = MESSAGE_FLAGS;

/**
 * Alias for the #SoupMessage:http-version property. (The
 * message's #SoupHTTPVersion.)
 */
enum MESSAGE_HTTP_VERSION = "http-version";
alias SOUP_MESSAGE_HTTP_VERSION = MESSAGE_HTTP_VERSION;

enum MESSAGE_IS_TOP_LEVEL_NAVIGATION = "is-top-level-navigation";
alias SOUP_MESSAGE_IS_TOP_LEVEL_NAVIGATION = MESSAGE_IS_TOP_LEVEL_NAVIGATION;

/**
 * Alias for the #SoupMessage:method property. (The message's
 * HTTP method.)
 */
enum MESSAGE_METHOD = "method";
alias SOUP_MESSAGE_METHOD = MESSAGE_METHOD;

/**
 * Sets the priority of the #SoupMessage. See
 * soup_message_set_priority() for further details.
 */
enum MESSAGE_PRIORITY = "priority";
alias SOUP_MESSAGE_PRIORITY = MESSAGE_PRIORITY;

/**
 * Alias for the #SoupMessage:reason-phrase property. (The
 * message's HTTP response reason phrase.)
 */
enum MESSAGE_REASON_PHRASE = "reason-phrase";
alias SOUP_MESSAGE_REASON_PHRASE = MESSAGE_REASON_PHRASE;

/**
 * Alias for the #SoupMessage:request-body property. (The
 * message's HTTP request body.)
 */
enum MESSAGE_REQUEST_BODY = "request-body";
alias SOUP_MESSAGE_REQUEST_BODY = MESSAGE_REQUEST_BODY;

/**
 * Alias for the #SoupMessage:request-body-data property. (The
 * message's HTTP request body, as a #GBytes.)
 */
enum MESSAGE_REQUEST_BODY_DATA = "request-body-data";
alias SOUP_MESSAGE_REQUEST_BODY_DATA = MESSAGE_REQUEST_BODY_DATA;

/**
 * Alias for the #SoupMessage:request-headers property. (The
 * message's HTTP request headers.)
 */
enum MESSAGE_REQUEST_HEADERS = "request-headers";
alias SOUP_MESSAGE_REQUEST_HEADERS = MESSAGE_REQUEST_HEADERS;

/**
 * Alias for the #SoupMessage:response-body property. (The
 * message's HTTP response body.)
 */
enum MESSAGE_RESPONSE_BODY = "response-body";
alias SOUP_MESSAGE_RESPONSE_BODY = MESSAGE_RESPONSE_BODY;

/**
 * Alias for the #SoupMessage:response-body-data property. (The
 * message's HTTP response body, as a #GBytes.)
 */
enum MESSAGE_RESPONSE_BODY_DATA = "response-body-data";
alias SOUP_MESSAGE_RESPONSE_BODY_DATA = MESSAGE_RESPONSE_BODY_DATA;

/**
 * Alias for the #SoupMessage:response-headers property. (The
 * message's HTTP response headers.)
 */
enum MESSAGE_RESPONSE_HEADERS = "response-headers";
alias SOUP_MESSAGE_RESPONSE_HEADERS = MESSAGE_RESPONSE_HEADERS;

/**
 * Alias for the #SoupMessage:server-side property. (%TRUE if
 * the message was created by #SoupServer.)
 */
enum MESSAGE_SERVER_SIDE = "server-side";
alias SOUP_MESSAGE_SERVER_SIDE = MESSAGE_SERVER_SIDE;

enum MESSAGE_SITE_FOR_COOKIES = "site-for-cookies";
alias SOUP_MESSAGE_SITE_FOR_COOKIES = MESSAGE_SITE_FOR_COOKIES;

/**
 * Alias for the #SoupMessage:status-code property. (The
 * message's HTTP response status code.)
 */
enum MESSAGE_STATUS_CODE = "status-code";
alias SOUP_MESSAGE_STATUS_CODE = MESSAGE_STATUS_CODE;

/**
 * Alias for the #SoupMessage:tls-certificate property. (The
 * TLS certificate associated with the message, if any.)
 */
enum MESSAGE_TLS_CERTIFICATE = "tls-certificate";
alias SOUP_MESSAGE_TLS_CERTIFICATE = MESSAGE_TLS_CERTIFICATE;

/**
 * Alias for the #SoupMessage:tls-errors property. (The
 * verification errors on #SoupMessage:tls-certificate.)
 */
enum MESSAGE_TLS_ERRORS = "tls-errors";
alias SOUP_MESSAGE_TLS_ERRORS = MESSAGE_TLS_ERRORS;

/**
 * Alias for the #SoupMessage:uri property. (The message's
 * #SoupURI.)
 */
enum MESSAGE_URI = "uri";
alias SOUP_MESSAGE_URI = MESSAGE_URI;

/**
 * Like soup_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MICRO_VERSION = 2;
alias SOUP_MICRO_VERSION = MICRO_VERSION;

/**
 * Like soup_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MINOR_VERSION = 74;
alias SOUP_MINOR_VERSION = MINOR_VERSION;

/**
 * Alias for the #SoupRequest:session property, qv.
 */
enum REQUEST_SESSION = "session";
alias SOUP_REQUEST_SESSION = REQUEST_SESSION;

/**
 * Alias for the #SoupRequest:uri property, qv.
 */
enum REQUEST_URI = "uri";
alias SOUP_REQUEST_URI = REQUEST_URI;

/**
 * Alias for the #SoupServer:add-websocket-extension property, qv.
 */
enum SERVER_ADD_WEBSOCKET_EXTENSION = "add-websocket-extension";
alias SOUP_SERVER_ADD_WEBSOCKET_EXTENSION = SERVER_ADD_WEBSOCKET_EXTENSION;

/**
 * Alias for the deprecated #SoupServer:async-context
 * property, qv.
 *
 * Deprecated: The new API uses the thread-default #GMainContext
 * rather than having an explicitly-specified one.
 */
enum SERVER_ASYNC_CONTEXT = "async-context";
alias SOUP_SERVER_ASYNC_CONTEXT = SERVER_ASYNC_CONTEXT;

/**
 * Alias for the #SoupServer:https-aliases property, qv.
 */
enum SERVER_HTTPS_ALIASES = "https-aliases";
alias SOUP_SERVER_HTTPS_ALIASES = SERVER_HTTPS_ALIASES;

/**
 * Alias for the #SoupServer:http-aliases property, qv.
 */
enum SERVER_HTTP_ALIASES = "http-aliases";
alias SOUP_SERVER_HTTP_ALIASES = SERVER_HTTP_ALIASES;

/**
 * Alias for the #SoupServer:interface property, qv.
 *
 * Deprecated: #SoupServers can listen on multiple interfaces
 * at once now. Use soup_server_listen(), etc, to listen on an
 * interface, and soup_server_get_uris() to see what addresses
 * are being listened on.
 */
enum SERVER_INTERFACE = "interface";
alias SOUP_SERVER_INTERFACE = SERVER_INTERFACE;

/**
 * Alias for the deprecated #SoupServer:port property, qv.
 *
 * Deprecated: #SoupServers can listen on multiple interfaces
 * at once now. Use soup_server_listen(), etc, to listen on a
 * port, and soup_server_get_uris() to see what ports are
 * being listened on.
 */
enum SERVER_PORT = "port";
alias SOUP_SERVER_PORT = SERVER_PORT;

/**
 * Alias for the #SoupServer:raw-paths property. (If %TRUE,
 * percent-encoding in the Request-URI path will not be
 * automatically decoded.)
 */
enum SERVER_RAW_PATHS = "raw-paths";
alias SOUP_SERVER_RAW_PATHS = SERVER_RAW_PATHS;

/**
 * Alias for the #SoupServer:remove-websocket-extension property, qv.
 */
enum SERVER_REMOVE_WEBSOCKET_EXTENSION = "remove-websocket-extension";
alias SOUP_SERVER_REMOVE_WEBSOCKET_EXTENSION = SERVER_REMOVE_WEBSOCKET_EXTENSION;

/**
 * Alias for the #SoupServer:server-header property, qv.
 */
enum SERVER_SERVER_HEADER = "server-header";
alias SOUP_SERVER_SERVER_HEADER = SERVER_SERVER_HEADER;

/**
 * Alias for the #SoupServer:ssl-cert-file property, qv.
 *
 * Deprecated: use #SoupServer:tls-certificate or
 * soup_server_set_ssl_certificate().
 */
enum SERVER_SSL_CERT_FILE = "ssl-cert-file";
alias SOUP_SERVER_SSL_CERT_FILE = SERVER_SSL_CERT_FILE;

/**
 * Alias for the #SoupServer:ssl-key-file property, qv.
 *
 * Deprecated: use #SoupServer:tls-certificate or
 * soup_server_set_ssl_certificate().
 */
enum SERVER_SSL_KEY_FILE = "ssl-key-file";
alias SOUP_SERVER_SSL_KEY_FILE = SERVER_SSL_KEY_FILE;

/**
 * Alias for the #SoupServer:tls-certificate property, qv.
 */
enum SERVER_TLS_CERTIFICATE = "tls-certificate";
alias SOUP_SERVER_TLS_CERTIFICATE = SERVER_TLS_CERTIFICATE;

/**
 * Alias for the #SoupSession:accept-language property, qv.
 */
enum SESSION_ACCEPT_LANGUAGE = "accept-language";
alias SOUP_SESSION_ACCEPT_LANGUAGE = SESSION_ACCEPT_LANGUAGE;

/**
 * Alias for the #SoupSession:accept-language-auto property, qv.
 */
enum SESSION_ACCEPT_LANGUAGE_AUTO = "accept-language-auto";
alias SOUP_SESSION_ACCEPT_LANGUAGE_AUTO = SESSION_ACCEPT_LANGUAGE_AUTO;

/**
 * Alias for the #SoupSession:add-feature property, qv.
 */
enum SESSION_ADD_FEATURE = "add-feature";
alias SOUP_SESSION_ADD_FEATURE = SESSION_ADD_FEATURE;

/**
 * Alias for the #SoupSession:add-feature-by-type property, qv.
 */
enum SESSION_ADD_FEATURE_BY_TYPE = "add-feature-by-type";
alias SOUP_SESSION_ADD_FEATURE_BY_TYPE = SESSION_ADD_FEATURE_BY_TYPE;

/**
 * Alias for the #SoupSession:async-context property, qv.
 */
enum SESSION_ASYNC_CONTEXT = "async-context";
alias SOUP_SESSION_ASYNC_CONTEXT = SESSION_ASYNC_CONTEXT;

/**
 * Alias for the #SoupSession:https-aliases property, qv.
 */
enum SESSION_HTTPS_ALIASES = "https-aliases";
alias SOUP_SESSION_HTTPS_ALIASES = SESSION_HTTPS_ALIASES;

/**
 * Alias for the #SoupSession:http-aliases property, qv.
 */
enum SESSION_HTTP_ALIASES = "http-aliases";
alias SOUP_SESSION_HTTP_ALIASES = SESSION_HTTP_ALIASES;

/**
 * Alias for the #SoupSession:idle-timeout property, qv.
 */
enum SESSION_IDLE_TIMEOUT = "idle-timeout";
alias SOUP_SESSION_IDLE_TIMEOUT = SESSION_IDLE_TIMEOUT;

/**
 * Alias for the #SoupSession:local-address property, qv.
 */
enum SESSION_LOCAL_ADDRESS = "local-address";
alias SOUP_SESSION_LOCAL_ADDRESS = SESSION_LOCAL_ADDRESS;

/**
 * Alias for the #SoupSession:max-conns property, qv.
 */
enum SESSION_MAX_CONNS = "max-conns";
alias SOUP_SESSION_MAX_CONNS = SESSION_MAX_CONNS;

/**
 * Alias for the #SoupSession:max-conns-per-host property, qv.
 */
enum SESSION_MAX_CONNS_PER_HOST = "max-conns-per-host";
alias SOUP_SESSION_MAX_CONNS_PER_HOST = SESSION_MAX_CONNS_PER_HOST;

/**
 * Alias for the #SoupSession:proxy-resolver property, qv.
 */
enum SESSION_PROXY_RESOLVER = "proxy-resolver";
alias SOUP_SESSION_PROXY_RESOLVER = SESSION_PROXY_RESOLVER;

/**
 * Alias for the #SoupSession:proxy-uri property, qv.
 */
enum SESSION_PROXY_URI = "proxy-uri";
alias SOUP_SESSION_PROXY_URI = SESSION_PROXY_URI;

/**
 * Alias for the #SoupSession:remove-feature-by-type property,
 * qv.
 */
enum SESSION_REMOVE_FEATURE_BY_TYPE = "remove-feature-by-type";
alias SOUP_SESSION_REMOVE_FEATURE_BY_TYPE = SESSION_REMOVE_FEATURE_BY_TYPE;

/**
 * Alias for the #SoupSession:ssl-ca-file property, qv.
 */
enum SESSION_SSL_CA_FILE = "ssl-ca-file";
alias SOUP_SESSION_SSL_CA_FILE = SESSION_SSL_CA_FILE;

/**
 * Alias for the #SoupSession:ssl-strict property, qv.
 */
enum SESSION_SSL_STRICT = "ssl-strict";
alias SOUP_SESSION_SSL_STRICT = SESSION_SSL_STRICT;

/**
 * Alias for the #SoupSession:ssl-use-system-ca-file property,
 * qv.
 */
enum SESSION_SSL_USE_SYSTEM_CA_FILE = "ssl-use-system-ca-file";
alias SOUP_SESSION_SSL_USE_SYSTEM_CA_FILE = SESSION_SSL_USE_SYSTEM_CA_FILE;

/**
 * Alias for the #SoupSession:timeout property, qv.
 */
enum SESSION_TIMEOUT = "timeout";
alias SOUP_SESSION_TIMEOUT = SESSION_TIMEOUT;

/**
 * Alias for the #SoupSession:tls-database property, qv.
 */
enum SESSION_TLS_DATABASE = "tls-database";
alias SOUP_SESSION_TLS_DATABASE = SESSION_TLS_DATABASE;

/**
 * Alias for the #SoupSession:tls-interaction property, qv.
 */
enum SESSION_TLS_INTERACTION = "tls-interaction";
alias SOUP_SESSION_TLS_INTERACTION = SESSION_TLS_INTERACTION;

/**
 * Alias for the #SoupSession:user-agent property, qv.
 */
enum SESSION_USER_AGENT = "user-agent";
alias SOUP_SESSION_USER_AGENT = SESSION_USER_AGENT;

/**
 * Alias for the #SoupSession:use-ntlm property, qv.
 */
enum SESSION_USE_NTLM = "use-ntlm";
alias SOUP_SESSION_USE_NTLM = SESSION_USE_NTLM;

/**
 * Alias for the #SoupSession:use-thread-context property, qv.
 */
enum SESSION_USE_THREAD_CONTEXT = "use-thread-context";
alias SOUP_SESSION_USE_THREAD_CONTEXT = SESSION_USE_THREAD_CONTEXT;

/**
 * Alias for the #SoupSocket:async-context property. (The
 * socket's #GMainContext.)
 */
enum SOCKET_ASYNC_CONTEXT = "async-context";
alias SOUP_SOCKET_ASYNC_CONTEXT = SOCKET_ASYNC_CONTEXT;

/**
 * Alias for the #SoupSocket:non-blocking property. (Whether
 * or not the socket uses non-blocking I/O.)
 */
enum SOCKET_FLAG_NONBLOCKING = "non-blocking";
alias SOUP_SOCKET_FLAG_NONBLOCKING = SOCKET_FLAG_NONBLOCKING;

/**
 * Alias for the #SoupSocket:is-server property, qv.
 */
enum SOCKET_IS_SERVER = "is-server";
alias SOUP_SOCKET_IS_SERVER = SOCKET_IS_SERVER;

/**
 * Alias for the #SoupSocket:local-address property. (Address
 * of local end of socket.)
 */
enum SOCKET_LOCAL_ADDRESS = "local-address";
alias SOUP_SOCKET_LOCAL_ADDRESS = SOCKET_LOCAL_ADDRESS;

/**
 * Alias for the #SoupSocket:remote-address property. (Address
 * of remote end of socket.)
 */
enum SOCKET_REMOTE_ADDRESS = "remote-address";
alias SOUP_SOCKET_REMOTE_ADDRESS = SOCKET_REMOTE_ADDRESS;

/**
 * Alias for the #SoupSocket:ssl-creds property.
 * (SSL credential information.)
 */
enum SOCKET_SSL_CREDENTIALS = "ssl-creds";
alias SOUP_SOCKET_SSL_CREDENTIALS = SOCKET_SSL_CREDENTIALS;

/**
 * Alias for the #SoupSocket:ssl-fallback property.
 */
enum SOCKET_SSL_FALLBACK = "ssl-fallback";
alias SOUP_SOCKET_SSL_FALLBACK = SOCKET_SSL_FALLBACK;

/**
 * Alias for the #SoupSocket:ssl-strict property.
 */
enum SOCKET_SSL_STRICT = "ssl-strict";
alias SOUP_SOCKET_SSL_STRICT = SOCKET_SSL_STRICT;

/**
 * Alias for the #SoupSocket:timeout property. (The timeout
 * in seconds for blocking socket I/O operations.)
 */
enum SOCKET_TIMEOUT = "timeout";
alias SOUP_SOCKET_TIMEOUT = SOCKET_TIMEOUT;

/**
 * Alias for the #SoupSocket:tls-certificate
 * property. Note that this property's value is only useful
 * if the socket is for a TLS connection, and only reliable
 * after some data has been transferred to or from it.
 */
enum SOCKET_TLS_CERTIFICATE = "tls-certificate";
alias SOUP_SOCKET_TLS_CERTIFICATE = SOCKET_TLS_CERTIFICATE;

/**
 * Alias for the #SoupSocket:tls-errors
 * property. Note that this property's value is only useful
 * if the socket is for a TLS connection, and only reliable
 * after some data has been transferred to or from it.
 */
enum SOCKET_TLS_ERRORS = "tls-errors";
alias SOUP_SOCKET_TLS_ERRORS = SOCKET_TLS_ERRORS;

/**
 * Alias for the #SoupSocket:trusted-certificate
 * property.
 */
enum SOCKET_TRUSTED_CERTIFICATE = "trusted-certificate";
alias SOUP_SOCKET_TRUSTED_CERTIFICATE = SOCKET_TRUSTED_CERTIFICATE;

/**
 * Alias for the #SoupSocket:use-thread-context property. (Use
 * g_main_context_get_thread_default())
 */
enum SOCKET_USE_THREAD_CONTEXT = "use-thread-context";
alias SOUP_SOCKET_USE_THREAD_CONTEXT = SOCKET_USE_THREAD_CONTEXT;

/**
 * A macro that should be defined by the user prior to including
 * libsoup.h. The definition should be one of the predefined libsoup
 * version macros: %SOUP_VERSION_2_24, %SOUP_VERSION_2_26, ...
 *
 * This macro defines the earliest version of libsoup that the package
 * is required to be able to compile against.
 *
 * If the compiler is configured to warn about the use of deprecated
 * functions, then using functions that were deprecated in version
 * %SOUP_VERSION_MIN_REQUIRED or earlier will cause warnings (but
 * using functions deprecated in later releases will not).
 */
enum VERSION_MIN_REQUIRED = 2;
alias SOUP_VERSION_MIN_REQUIRED = VERSION_MIN_REQUIRED;
