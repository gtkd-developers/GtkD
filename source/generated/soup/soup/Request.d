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


module soup.Request;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.InputStream;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.Session;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A request to retrieve a particular URI.
 *
 * Since: 2.42
 */
public class Request : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected SoupRequest* soupRequest;

	/** Get the main Gtk struct */
	public SoupRequest* getRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequest* soupRequest, bool ownedRef = false)
	{
		this.soupRequest = soupRequest;
		super(cast(GObject*)soupRequest, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(SoupRequest);


	/** */
	public static GType getType()
	{
		return soup_request_get_type();
	}

	/**
	 * Gets the length of the data represented by @request. For most
	 * request types, this will not be known until after you call
	 * soup_request_send() or soup_request_send_finish().
	 *
	 * Returns: the length of the data represented by @request,
	 *     or -1 if not known.
	 *
	 * Since: 2.42
	 */
	public long getContentLength()
	{
		return soup_request_get_content_length(soupRequest);
	}

	/**
	 * Gets the type of the data represented by @request. For most request
	 * types, this will not be known until after you call
	 * soup_request_send() or soup_request_send_finish().
	 *
	 * As in the HTTP Content-Type header, this may include parameters
	 * after the MIME type.
	 *
	 * Returns: the type of the data represented by
	 *     @request, or %NULL if not known.
	 *
	 * Since: 2.42
	 */
	public string getContentType()
	{
		return Str.toString(soup_request_get_content_type(soupRequest));
	}

	/**
	 * Gets @request's #SoupSession
	 *
	 * Returns: @request's #SoupSession
	 *
	 * Since: 2.42
	 */
	public Session getSession()
	{
		auto __p = soup_request_get_session(soupRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Session)(cast(SoupSession*) __p);
	}

	/**
	 * Gets @request's URI
	 *
	 * Returns: @request's URI
	 *
	 * Since: 2.42
	 */
	public URI getUri()
	{
		auto __p = soup_request_get_uri(soupRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p);
	}

	/**
	 * Synchronously requests the URI pointed to by @request, and returns
	 * a #GInputStream that can be used to read its contents.
	 *
	 * Note that you cannot use this method with #SoupRequests attached to
	 * a #SoupSessionAsync.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL
	 *
	 * Returns: a #GInputStream that can be used to
	 *     read from the URI pointed to by @request.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public InputStream send(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = soup_request_send(soupRequest, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

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
	 * Begins an asynchronously request for the URI pointed to by
	 * @request.
	 *
	 * Note that you cannot use this method with #SoupRequests attached to
	 * a #SoupSessionSync.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data passed to @callback
	 *
	 * Since: 2.42
	 */
	public void sendAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		soup_request_send_async(soupRequest, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the result of a soup_request_send_async().
	 *
	 * Params:
	 *     result = the #GAsyncResult
	 *
	 * Returns: a #GInputStream that can be used to
	 *     read from the URI pointed to by @request.
	 *
	 * Since: 2.42
	 *
	 * Throws: GException on failure.
	 */
	public InputStream sendFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = soup_request_send_finish(soupRequest, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
}
