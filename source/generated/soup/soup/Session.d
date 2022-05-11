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


module soup.Session;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.MainContext;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Auth;
private import soup.Message;
private import soup.Request;
private import soup.RequestHTTP;
private import soup.SSocket;
private import soup.SessionFeatureIF;
private import soup.URI;
private import soup.WebsocketConnection;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/** */
public class Session : ObjectG
{
	/** the main Gtk struct */
	protected SoupSession* soupSession;

	/** Get the main Gtk struct */
	public SoupSession* getSessionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupSession;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupSession;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupSession* soupSession, bool ownedRef = false)
	{
		this.soupSession = soupSession;
		super(cast(GObject*)soupSession, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_session_get_type();
	}

	/**
	 * Creates a #SoupSession with the default options.
	 *
	 * Returns: the new session.
	 *
	 * Since: 2.42
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_session_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupSession*) __p, true);
	}

	/**
	 * Cancels all pending requests in @session and closes all idle
	 * persistent connections.
	 *
	 * The message cancellation has the same semantics as with
	 * soup_session_cancel_message(); asynchronous requests on a
	 * #SoupSessionAsync will have their callback called before
	 * soup_session_abort() returns. Requests on a plain #SoupSession will
	 * not.
	 */
	public void abort()
	{
		soup_session_abort(soupSession);
	}

	/**
	 * Adds @feature's functionality to @session. You can also add a
	 * feature to the session at construct time by using the
	 * %SOUP_SESSION_ADD_FEATURE property.
	 *
	 * See the main #SoupSession documentation for information on what
	 * features are present in sessions by default.
	 *
	 * Params:
	 *     feature = an object that implements #SoupSessionFeature
	 *
	 * Since: 2.24
	 */
	public void addFeature(SessionFeatureIF feature)
	{
		soup_session_add_feature(soupSession, (feature is null) ? null : feature.getSessionFeatureStruct());
	}

	/**
	 * If @feature_type is the type of a class that implements
	 * #SoupSessionFeature, this creates a new feature of that type and
	 * adds it to @session as with soup_session_add_feature(). You can use
	 * this when you don't need to customize the new feature in any way.
	 *
	 * If @feature_type is not a #SoupSessionFeature type, this gives each
	 * existing feature on @session the chance to accept @feature_type as
	 * a "subfeature". This can be used to add new #SoupAuth or
	 * #SoupRequest types, for instance.
	 *
	 * You can also add a feature to the session at construct time by
	 * using the %SOUP_SESSION_ADD_FEATURE_BY_TYPE property.
	 *
	 * See the main #SoupSession documentation for information on what
	 * features are present in sessions by default.
	 *
	 * Params:
	 *     featureType = a #GType
	 *
	 * Since: 2.24
	 */
	public void addFeatureByType(GType featureType)
	{
		soup_session_add_feature_by_type(soupSession, featureType);
	}

	/**
	 * Causes @session to immediately finish processing @msg (regardless
	 * of its current state) with a final status_code of @status_code. You
	 * may call this at any time after handing @msg off to @session; if
	 * @session has started sending the request but has not yet received
	 * the complete response, then it will close the request's connection.
	 * Note that with requests that have side effects (eg,
	 * <literal>POST</literal>, <literal>PUT</literal>,
	 * <literal>DELETE</literal>) it is possible that you might cancel the
	 * request after the server acts on it, but before it returns a
	 * response, leaving the remote resource in an unknown state.
	 *
	 * If the message is cancelled while its response body is being read,
	 * then the response body in @msg will be left partially-filled-in.
	 * The response headers, on the other hand, will always be either
	 * empty or complete.
	 *
	 * Beware that with the deprecated #SoupSessionAsync, messages queued
	 * with soup_session_queue_message() will have their callbacks invoked
	 * before soup_session_cancel_message() returns. The plain
	 * #SoupSession does not have this behavior; cancelling an
	 * asynchronous message will merely queue its callback to be run after
	 * returning to the main loop.
	 *
	 * Params:
	 *     msg = the message to cancel
	 *     statusCode = status code to set on @msg (generally
	 *         %SOUP_STATUS_CANCELLED)
	 */
	public void cancelMessage(Message msg, uint statusCode)
	{
		soup_session_cancel_message(soupSession, (msg is null) ? null : msg.getMessageStruct(), statusCode);
	}

	/**
	 * Start a connection to @uri. The operation can be monitored by providing a @progress_callback
	 * and finishes when the connection is done or an error ocurred.
	 *
	 * Call soup_session_connect_finish() to get the #GIOStream to communicate with the server.
	 *
	 * Params:
	 *     uri = a #SoupURI to connect to
	 *     cancellable = a #GCancellable
	 *     progressCallback = a #SoupSessionConnectProgressCallback which
	 *         will be called for every network event that occurs during the connection.
	 *     callback = the callback to invoke when the operation finishes
	 *     userData = data for @progress_callback and @callback
	 *
	 * Since: 2.62
	 */
	public void connectAsync(URI uri, Cancellable cancellable, SoupSessionConnectProgressCallback progressCallback, GAsyncReadyCallback callback, void* userData)
	{
		soup_session_connect_async(soupSession, (uri is null) ? null : uri.getURIStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), progressCallback, callback, userData);
	}

	/**
	 * Gets the #GIOStream created for the connection to communicate with the server.
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your callback
	 *
	 * Returns: a new #GIOStream, or %NULL on error.
	 *
	 * Since: 2.62
	 *
	 * Throws: GException on failure.
	 */
	public IOStream connectFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = soup_session_connect_finish(soupSession, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Gets @session's #SoupSession:async-context. This does not add a ref
	 * to the context, so you will need to ref it yourself if you want it
	 * to outlive its session.
	 *
	 * For a modern #SoupSession, this will always just return the
	 * thread-default #GMainContext, and so is not especially useful.
	 *
	 * Returns: @session's #GMainContext,
	 *     which may be %NULL
	 */
	public MainContext getAsyncContext()
	{
		auto __p = soup_session_get_async_context(soupSession);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Gets the first feature in @session of type @feature_type. For
	 * features where there may be more than one feature of a given type,
	 * use soup_session_get_features().
	 *
	 * Params:
	 *     featureType = the #GType of the feature to get
	 *
	 * Returns: a #SoupSessionFeature, or
	 *     %NULL. The feature is owned by @session.
	 *
	 * Since: 2.26
	 */
	public SessionFeatureIF getFeature(GType featureType)
	{
		auto __p = soup_session_get_feature(soupSession, featureType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SessionFeatureIF)(cast(SoupSessionFeature*) __p);
	}

	/**
	 * Gets the first feature in @session of type @feature_type, provided
	 * that it is not disabled for @msg. As with
	 * soup_session_get_feature(), this should only be used for features
	 * where @feature_type is only expected to match a single feature. In
	 * particular, if there are two matching features, and the first is
	 * disabled on @msg, and the second is not, then this will return
	 * %NULL, not the second feature.
	 *
	 * Params:
	 *     featureType = the #GType of the feature to get
	 *     msg = a #SoupMessage
	 *
	 * Returns: a #SoupSessionFeature, or %NULL. The
	 *     feature is owned by @session.
	 *
	 * Since: 2.28
	 */
	public SessionFeatureIF getFeatureForMessage(GType featureType, Message msg)
	{
		auto __p = soup_session_get_feature_for_message(soupSession, featureType, (msg is null) ? null : msg.getMessageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SessionFeatureIF)(cast(SoupSessionFeature*) __p);
	}

	/**
	 * Generates a list of @session's features of type @feature_type. (If
	 * you want to see all features, you can pass %SOUP_TYPE_SESSION_FEATURE
	 * for @feature_type.)
	 *
	 * Params:
	 *     featureType = the #GType of the class of features to get
	 *
	 * Returns: a list of features. You must free the list, but not its contents
	 *
	 * Since: 2.26
	 */
	public ListSG getFeatures(GType featureType)
	{
		auto __p = soup_session_get_features(soupSession, featureType);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Tests if @session has at a feature of type @feature_type (which can
	 * be the type of either a #SoupSessionFeature, or else a subtype of
	 * some class managed by another feature, such as #SoupAuth or
	 * #SoupRequest).
	 *
	 * Params:
	 *     featureType = the #GType of the class of features to check for
	 *
	 * Returns: %TRUE or %FALSE
	 *
	 * Since: 2.42
	 */
	public bool hasFeature(GType featureType)
	{
		return soup_session_has_feature(soupSession, featureType) != 0;
	}

	/**
	 * Pauses HTTP I/O on @msg. Call soup_session_unpause_message() to
	 * resume I/O.
	 *
	 * This may only be called for asynchronous messages (those sent on a
	 * #SoupSessionAsync or using soup_session_queue_message()).
	 *
	 * Params:
	 *     msg = a #SoupMessage currently running on @session
	 */
	public void pauseMessage(Message msg)
	{
		soup_session_pause_message(soupSession, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Tells @session that an URI from the given @hostname may be requested
	 * shortly, and so the session can try to prepare by resolving the
	 * domain name in advance, in order to work more quickly once the URI
	 * is actually requested.
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * resolution. @callback will still be invoked in this case, with a
	 * status of %SOUP_STATUS_CANCELLED.
	 *
	 * Params:
	 *     hostname = a hostname to be resolved
	 *     cancellable = a #GCancellable object, or %NULL
	 *     callback = callback to call with the
	 *         result, or %NULL
	 *     userData = data for @callback
	 *
	 * Since: 2.38
	 */
	public void prefetchDns(string hostname, Cancellable cancellable, SoupAddressCallback callback, void* userData)
	{
		soup_session_prefetch_dns(soupSession, Str.toStringz(hostname), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Tells @session that @uri may be requested shortly, and so the
	 * session can try to prepare (resolving the domain name, obtaining
	 * proxy address, etc.) in order to work more quickly once the URI is
	 * actually requested.
	 *
	 * Deprecated: use soup_session_prefetch_dns() instead
	 *
	 * Params:
	 *     uri = a #SoupURI which may be required
	 *
	 * Since: 2.30
	 */
	public void prepareForUri(URI uri)
	{
		soup_session_prepare_for_uri(soupSession, (uri is null) ? null : uri.getURIStruct());
	}

	/**
	 * Queues the message @msg for asynchronously sending the request and
	 * receiving a response in the current thread-default #GMainContext.
	 * If @msg has been processed before, any resources related to the
	 * time it was last sent are freed.
	 *
	 * Upon message completion, the callback specified in @callback will
	 * be invoked. If after returning from this callback the message has not
	 * been requeued, @msg will be unreffed.
	 *
	 * (The behavior above applies to a plain #SoupSession; if you are
	 * using #SoupSessionAsync or #SoupSessionSync, then the #GMainContext
	 * that is used depends on the settings of #SoupSession:async-context
	 * and #SoupSession:use-thread-context, and for #SoupSessionSync, the
	 * message will actually be sent and processed in another thread, with
	 * only the final callback occurring in the indicated #GMainContext.)
	 *
	 * Contrast this method with soup_session_send_async(), which also
	 * asynchronously sends a message, but returns before reading the
	 * response body, and allows you to read the response via a
	 * #GInputStream.
	 *
	 * Params:
	 *     msg = the message to queue
	 *     callback = a #SoupSessionCallback which will
	 *         be called after the message completes or when an unrecoverable error occurs.
	 *     userData = a pointer passed to @callback.
	 */
	public void queueMessage(Message msg, SoupSessionCallback callback, void* userData)
	{
		soup_session_queue_message(soupSession, (msg is null) ? null : msg.getMessageStruct(), callback, userData);
	}

	/**
	 * Updates @msg's URI according to its status code and "Location"
	 * header, and requeues it on @session. Use this when you have set
	 * %SOUP_MESSAGE_NO_REDIRECT on a message, but have decided to allow a
	 * particular redirection to occur, or if you want to allow a
	 * redirection that #SoupSession will not perform automatically (eg,
	 * redirecting a non-safe method such as DELETE).
	 *
	 * If @msg's status code indicates that it should be retried as a GET
	 * request, then @msg will be modified accordingly.
	 *
	 * If @msg has already been redirected too many times, this will
	 * cause it to fail with %SOUP_STATUS_TOO_MANY_REDIRECTS.
	 *
	 * Params:
	 *     msg = a #SoupMessage that has received a 3xx response
	 *
	 * Returns: %TRUE if a redirection was applied, %FALSE if not
	 *     (eg, because there was no Location header, or it could not be
	 *     parsed).
	 *
	 * Since: 2.38
	 */
	public bool redirectMessage(Message msg)
	{
		return soup_session_redirect_message(soupSession, (msg is null) ? null : msg.getMessageStruct()) != 0;
	}

	/**
	 * Removes @feature's functionality from @session.
	 *
	 * Params:
	 *     feature = a feature that has previously been added to @session
	 *
	 * Since: 2.24
	 */
	public void removeFeature(SessionFeatureIF feature)
	{
		soup_session_remove_feature(soupSession, (feature is null) ? null : feature.getSessionFeatureStruct());
	}

	/**
	 * Removes all features of type @feature_type (or any subclass of
	 * @feature_type) from @session. You can also remove standard features
	 * from the session at construct time by using the
	 * %SOUP_SESSION_REMOVE_FEATURE_BY_TYPE property.
	 *
	 * Params:
	 *     featureType = a #GType
	 *
	 * Since: 2.24
	 */
	public void removeFeatureByType(GType featureType)
	{
		soup_session_remove_feature_by_type(soupSession, featureType);
	}

	/**
	 * Creates a #SoupRequest for retrieving @uri_string.
	 *
	 * Params:
	 *     uriString = a URI, in string form
	 *
	 * Returns: a new #SoupRequest, or
	 *     %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public Request request(string uriString)
	{
		GError* err = null;

		auto __p = soup_session_request(soupSession, Str.toStringz(uriString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}

	/**
	 * Creates a #SoupRequest for retrieving @uri_string, which must be an
	 * "http" or "https" URI (or another protocol listed in @session's
	 * #SoupSession:http-aliases or #SoupSession:https-aliases).
	 *
	 * Params:
	 *     method = an HTTP method
	 *     uriString = a URI, in string form
	 *
	 * Returns: a new #SoupRequestHTTP, or
	 *     %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public RequestHTTP requestHttp(string method, string uriString)
	{
		GError* err = null;

		auto __p = soup_session_request_http(soupSession, Str.toStringz(method), Str.toStringz(uriString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RequestHTTP)(cast(SoupRequestHTTP*) __p, true);
	}

	/**
	 * Creates a #SoupRequest for retrieving @uri, which must be an
	 * "http" or "https" URI (or another protocol listed in @session's
	 * #SoupSession:http-aliases or #SoupSession:https-aliases).
	 *
	 * Params:
	 *     method = an HTTP method
	 *     uri = a #SoupURI representing the URI to retrieve
	 *
	 * Returns: a new #SoupRequestHTTP, or
	 *     %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public RequestHTTP requestHttpUri(string method, URI uri)
	{
		GError* err = null;

		auto __p = soup_session_request_http_uri(soupSession, Str.toStringz(method), (uri is null) ? null : uri.getURIStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RequestHTTP)(cast(SoupRequestHTTP*) __p, true);
	}

	/**
	 * Creates a #SoupRequest for retrieving @uri.
	 *
	 * Params:
	 *     uri = a #SoupURI representing the URI to retrieve
	 *
	 * Returns: a new #SoupRequest, or
	 *     %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public Request requestUri(URI uri)
	{
		GError* err = null;

		auto __p = soup_session_request_uri(soupSession, (uri is null) ? null : uri.getURIStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}

	/**
	 * This causes @msg to be placed back on the queue to be attempted
	 * again.
	 *
	 * Params:
	 *     msg = the message to requeue
	 */
	public void requeueMessage(Message msg)
	{
		soup_session_requeue_message(soupSession, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Synchronously sends @msg and waits for the beginning of a response.
	 * On success, a #GInputStream will be returned which you can use to
	 * read the response body. ("Success" here means only that an HTTP
	 * response was received and understood; it does not necessarily mean
	 * that a 2xx class status code was received.)
	 *
	 * If non-%NULL, @cancellable can be used to cancel the request;
	 * soup_session_send() will return a %G_IO_ERROR_CANCELLED error. Note
	 * that with requests that have side effects (eg,
	 * <literal>POST</literal>, <literal>PUT</literal>,
	 * <literal>DELETE</literal>) it is possible that you might cancel the
	 * request after the server acts on it, but before it returns a
	 * response, leaving the remote resource in an unknown state.
	 *
	 * If @msg is requeued due to a redirect or authentication, the
	 * initial (3xx/401/407) response body will be suppressed, and
	 * soup_session_send() will only return once a final response has been
	 * received.
	 *
	 * Contrast this method with soup_session_send_message(), which also
	 * synchronously sends a #SoupMessage, but doesn't return until the
	 * response has been completely read.
	 *
	 * (Note that this method cannot be called on the deprecated
	 * #SoupSessionAsync subclass.)
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *     cancellable = a #GCancellable
	 *
	 * Returns: a #GInputStream for reading the
	 *     response body, or %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public InputStream send(Message msg, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = soup_session_send(soupSession, (msg is null) ? null : msg.getMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p, true);
	}

	/**
	 * Asynchronously sends @msg and waits for the beginning of a
	 * response. When @callback is called, then either @msg has been sent,
	 * and its response headers received, or else an error has occurred.
	 * Call soup_session_send_finish() to get a #GInputStream for reading
	 * the response body.
	 *
	 * See soup_session_send() for more details on the general semantics.
	 *
	 * Contrast this method with soup_session_queue_message(), which also
	 * asynchronously sends a #SoupMessage, but doesn't invoke its
	 * callback until the response has been completely read.
	 *
	 * (Note that this method cannot be called on the deprecated
	 * #SoupSessionSync subclass, and can only be called on
	 * #SoupSessionAsync if you have set the
	 * #SoupSession:use-thread-context property.)
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *     cancellable = a #GCancellable
	 *     callback = the callback to invoke
	 *     userData = data for @callback
	 *
	 * Since: 2.42
	 */
	public void sendAsync(Message msg, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		soup_session_send_async(soupSession, (msg is null) ? null : msg.getMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the response to a soup_session_send_async() call and (if
	 * successful), returns a #GInputStream that can be used to read the
	 * response body.
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your callback
	 *
	 * Returns: a #GInputStream for reading the
	 *     response body, or %NULL on error.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public InputStream sendFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = soup_session_send_finish(soupSession, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p, true);
	}

	/**
	 * Synchronously send @msg. This call will not return until the
	 * transfer is finished successfully or there is an unrecoverable
	 * error.
	 *
	 * Unlike with soup_session_queue_message(), @msg is not freed upon
	 * return.
	 *
	 * (Note that if you call this method on a #SoupSessionAsync, it will
	 * still use asynchronous I/O internally, running the glib main loop
	 * to process the message, which may also cause other events to be
	 * processed.)
	 *
	 * Contrast this method with soup_session_send(), which also
	 * synchronously sends a message, but returns before reading the
	 * response body, and allows you to read the response via a
	 * #GInputStream.
	 *
	 * Params:
	 *     msg = the message to send
	 *
	 * Returns: the HTTP status code of the response
	 */
	public uint sendMessage(Message msg)
	{
		return soup_session_send_message(soupSession, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * "Steals" the HTTP connection associated with @msg from @session.
	 * This happens immediately, regardless of the current state of the
	 * connection, and @msg's callback will not be called. You can steal
	 * the connection from a #SoupMessage signal handler if you need to
	 * wait for part or all of the response to be received first.
	 *
	 * Calling this function may cause @msg to be freed if you are not
	 * holding any other reference to it.
	 *
	 * Params:
	 *     msg = the message whose connection is to be stolen
	 *
	 * Returns: the #GIOStream formerly associated
	 *     with @msg (or %NULL if @msg was no longer associated with a
	 *     connection). No guarantees are made about what kind of #GIOStream
	 *     is returned.
	 *
	 * Since: 2.50
	 */
	public IOStream stealConnection(Message msg)
	{
		auto __p = soup_session_steal_connection(soupSession, (msg is null) ? null : msg.getMessageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Resumes HTTP I/O on @msg. Use this to resume after calling
	 * soup_session_pause_message().
	 *
	 * If @msg is being sent via blocking I/O, this will resume reading or
	 * writing immediately. If @msg is using non-blocking I/O, then
	 * reading or writing won't resume until you return to the main loop.
	 *
	 * This may only be called for asynchronous messages (those sent on a
	 * #SoupSessionAsync or using soup_session_queue_message()).
	 *
	 * Params:
	 *     msg = a #SoupMessage currently running on @session
	 */
	public void unpauseMessage(Message msg)
	{
		soup_session_unpause_message(soupSession, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Asynchronously creates a #SoupWebsocketConnection to communicate
	 * with a remote server.
	 *
	 * All necessary WebSocket-related headers will be added to @msg, and
	 * it will then be sent and asynchronously processed normally
	 * (including handling of redirection and HTTP authentication).
	 *
	 * If the server returns "101 Switching Protocols", then @msg's status
	 * code and response headers will be updated, and then the WebSocket
	 * handshake will be completed. On success,
	 * soup_session_websocket_connect_finish() will return a new
	 * #SoupWebsocketConnection. On failure it will return a #GError.
	 *
	 * If the server returns a status other than "101 Switching
	 * Protocols", then @msg will contain the complete response headers
	 * and body from the server's response, and
	 * soup_session_websocket_connect_finish() will return
	 * %SOUP_WEBSOCKET_ERROR_NOT_WEBSOCKET.
	 *
	 * Params:
	 *     msg = #SoupMessage indicating the WebSocket server to connect to
	 *     origin = origin of the connection
	 *     protocols = a
	 *         %NULL-terminated array of protocols supported
	 *     cancellable = a #GCancellable
	 *     callback = the callback to invoke
	 *     userData = data for @callback
	 *
	 * Since: 2.50
	 */
	public void websocketConnectAsync(Message msg, string origin, string[] protocols, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		soup_session_websocket_connect_async(soupSession, (msg is null) ? null : msg.getMessageStruct(), Str.toStringz(origin), Str.toStringzArray(protocols), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the #SoupWebsocketConnection response to a
	 * soup_session_websocket_connect_async() call and (if successful),
	 * returns a #SoupWebsocketConnection that can be used to communicate
	 * with the server.
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your callback
	 *
	 * Returns: a new #SoupWebsocketConnection, or
	 *     %NULL on error.
	 *
	 * Since: 2.50
	 *
	 * Throws: GException on failure.
	 */
	public WebsocketConnection websocketConnectFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = soup_session_websocket_connect_finish(soupSession, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebsocketConnection)(cast(SoupWebsocketConnection*) __p, true);
	}

	/**
	 * Checks if @msg contains a response that would cause @session to
	 * redirect it to a new URL (ignoring @msg's %SOUP_MESSAGE_NO_REDIRECT
	 * flag, and the number of times it has already been redirected).
	 *
	 * Params:
	 *     msg = a #SoupMessage that has response headers
	 *
	 * Returns: whether @msg would be redirected
	 *
	 * Since: 2.38
	 */
	public bool wouldRedirect(Message msg)
	{
		return soup_session_would_redirect(soupSession, (msg is null) ? null : msg.getMessageStruct()) != 0;
	}

	/**
	 * Emitted when the session requires authentication. If
	 * credentials are available call soup_auth_authenticate() on
	 * @auth. If these credentials fail, the signal will be
	 * emitted again, with @retrying set to %TRUE, which will
	 * continue until you return without calling
	 * soup_auth_authenticate() on @auth.
	 *
	 * Note that this may be emitted before @msg's body has been
	 * fully read.
	 *
	 * If you call soup_session_pause_message() on @msg before
	 * returning, then you can authenticate @auth asynchronously
	 * (as long as you g_object_ref() it to make sure it doesn't
	 * get destroyed), and then unpause @msg when you are ready
	 * for it to continue.
	 *
	 * Params:
	 *     msg = the #SoupMessage being sent
	 *     auth = the #SoupAuth to authenticate
	 *     retrying = %TRUE if this is the second (or later) attempt
	 */
	gulong addOnAuthenticate(void delegate(Message, Auth, bool, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authenticate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a new connection is created. This is an
	 * internal signal intended only to be used for debugging
	 * purposes, and may go away in the future.
	 *
	 * Params:
	 *     connection = the connection
	 *
	 * Since: 2.30
	 */
	gulong addOnConnectionCreated(void delegate(ObjectG, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "connection-created", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a request is queued on @session. (Note that
	 * "queued" doesn't just mean soup_session_queue_message();
	 * soup_session_send_message() implicitly queues the message
	 * as well.)
	 *
	 * When sending a request, first #SoupSession::request_queued
	 * is emitted, indicating that the session has become aware of
	 * the request.
	 *
	 * Once a connection is available to send the request on, the
	 * session emits #SoupSession::request_started. Then, various
	 * #SoupMessage signals are emitted as the message is
	 * processed. If the message is requeued, it will emit
	 * #SoupMessage::restarted, which will then be followed by
	 * another #SoupSession::request_started and another set of
	 * #SoupMessage signals when the message is re-sent.
	 *
	 * Eventually, the message will emit #SoupMessage::finished.
	 * Normally, this signals the completion of message
	 * processing. However, it is possible that the application
	 * will requeue the message from the "finished" handler (or
	 * equivalently, from the soup_session_queue_message()
	 * callback). In that case, the process will loop back to
	 * #SoupSession::request_started.
	 *
	 * Eventually, a message will reach "finished" and not be
	 * requeued. At that point, the session will emit
	 * #SoupSession::request_unqueued to indicate that it is done
	 * with the message.
	 *
	 * To sum up: #SoupSession::request_queued and
	 * #SoupSession::request_unqueued are guaranteed to be emitted
	 * exactly once, but #SoupSession::request_started and
	 * #SoupMessage::finished (and all of the other #SoupMessage
	 * signals) may be invoked multiple times for a given message.
	 *
	 * Params:
	 *     msg = the request that was queued
	 *
	 * Since: 2.24
	 */
	gulong addOnRequestQueued(void delegate(Message, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-queued", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted just before a request is sent. See
	 * #SoupSession::request_queued for a detailed description of
	 * the message lifecycle within a session.
	 *
	 * Deprecated: Use #SoupMessage::starting instead.
	 *
	 * Params:
	 *     msg = the request being sent
	 *     socket = the socket the request is being sent on
	 */
	gulong addOnRequestStarted(void delegate(Message, SSocket, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a request is removed from @session's queue,
	 * indicating that @session is done with it. See
	 * #SoupSession::request_queued for a detailed description of the
	 * message lifecycle within a session.
	 *
	 * Params:
	 *     msg = the request that was unqueued
	 *
	 * Since: 2.24
	 */
	gulong addOnRequestUnqueued(void delegate(Message, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-unqueued", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an SSL tunnel is being created on a proxy
	 * connection. This is an internal signal intended only to be
	 * used for debugging purposes, and may go away in the future.
	 *
	 * Params:
	 *     connection = the connection
	 *
	 * Since: 2.30
	 */
	gulong addOnTunneling(void delegate(ObjectG, Session) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tunneling", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
