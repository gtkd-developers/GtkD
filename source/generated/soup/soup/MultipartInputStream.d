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


module soup.MultipartInputStream;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FilterInputStream;
private import gio.InputStream;
private import gio.PollableInputStreamIF;
private import gio.PollableInputStreamT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import soup.Message;
private import soup.MessageHeaders;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class MultipartInputStream : FilterInputStream, PollableInputStreamIF
{
	/** the main Gtk struct */
	protected SoupMultipartInputStream* soupMultipartInputStream;

	/** Get the main Gtk struct */
	public SoupMultipartInputStream* getMultipartInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMultipartInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupMultipartInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMultipartInputStream* soupMultipartInputStream, bool ownedRef = false)
	{
		this.soupMultipartInputStream = soupMultipartInputStream;
		super(cast(GFilterInputStream*)soupMultipartInputStream, ownedRef);
	}

	// add the PollableInputStream capabilities
	mixin PollableInputStreamT!(SoupMultipartInputStream);


	/** */
	public static GType getType()
	{
		return soup_multipart_input_stream_get_type();
	}

	/**
	 * Creates a new #SoupMultipartInputStream that wraps the
	 * #GInputStream obtained by sending the #SoupRequest. Reads should
	 * not be done directly through this object, use the input streams
	 * returned by soup_multipart_input_stream_next_part() or its async
	 * counterpart instead.
	 *
	 * Params:
	 *     msg = the #SoupMessage the response is related to.
	 *     baseStream = the #GInputStream returned by sending the request.
	 *
	 * Returns: a new #SoupMultipartInputStream
	 *
	 * Since: 2.40
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Message msg, InputStream baseStream)
	{
		auto __p = soup_multipart_input_stream_new((msg is null) ? null : msg.getMessageStruct(), (baseStream is null) ? null : baseStream.getInputStreamStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupMultipartInputStream*) __p, true);
	}

	/**
	 * Obtains the headers for the part currently being processed. Note
	 * that the #SoupMessageHeaders that are returned are owned by the
	 * #SoupMultipartInputStream and will be replaced when a call is made
	 * to soup_multipart_input_stream_next_part() or its async
	 * counterpart, so if keeping the headers is required, a copy must be
	 * made.
	 *
	 * Note that if a part had no headers at all an empty #SoupMessageHeaders
	 * will be returned.
	 *
	 * Returns: a #SoupMessageHeaders
	 *     containing the headers for the part currently being processed or
	 *     %NULL if the headers failed to parse.
	 *
	 * Since: 2.40
	 */
	public MessageHeaders getHeaders()
	{
		auto __p = soup_multipart_input_stream_get_headers(soupMultipartInputStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MessageHeaders)(cast(SoupMessageHeaders*) __p);
	}

	/**
	 * Obtains an input stream for the next part. When dealing with a
	 * multipart response the input stream needs to be wrapped in a
	 * #SoupMultipartInputStream and this function or its async
	 * counterpart need to be called to obtain the first part for
	 * reading.
	 *
	 * After calling this function,
	 * soup_multipart_input_stream_get_headers() can be used to obtain the
	 * headers for the first part. A read of 0 bytes indicates the end of
	 * the part; a new call to this function should be done at that point,
	 * to obtain the next part.
	 *
	 * Params:
	 *     cancellable = a #GCancellable
	 *
	 * Returns: a new #GInputStream, or
	 *     %NULL if there are no more parts
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public InputStream nextPart(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = soup_multipart_input_stream_next_part(soupMultipartInputStream, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

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
	 * Obtains a #GInputStream for the next request. See
	 * soup_multipart_input_stream_next_part() for details on the
	 * workflow.
	 *
	 * Params:
	 *     ioPriority = the I/O priority for the request.
	 *     cancellable = a #GCancellable.
	 *     callback = callback to call when request is satisfied.
	 *     data = data for @callback
	 *
	 * Since: 2.40
	 */
	public void nextPartAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* data)
	{
		soup_multipart_input_stream_next_part_async(soupMultipartInputStream, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, data);
	}

	/**
	 * Finishes an asynchronous request for the next part.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a newly created
	 *     #GInputStream for reading the next part or %NULL if there are no
	 *     more parts.
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public InputStream nextPartFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = soup_multipart_input_stream_next_part_finish(soupMultipartInputStream, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
