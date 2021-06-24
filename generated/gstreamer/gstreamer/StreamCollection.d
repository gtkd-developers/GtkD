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


module gstreamer.StreamCollection;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gstreamer.ObjectGst;
private import gstreamer.Stream;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
private import std.algorithm;


/**
 * A collection of #GstStream that are available.
 * 
 * A #GstStreamCollection will be provided by elements that can make those
 * streams available. Applications can use the collection to show the user
 * what streams are available by using %gst_stream_collection_get_stream()
 * 
 * Once posted, a #GstStreamCollection is immutable. Updates are made by sending
 * a new #GstStreamCollection message, which may or may not share some of
 * the #GstStream objects from the collection it replaces. The receiver can check
 * the sender of a stream collection message to know which collection is
 * obsoleted.
 * 
 * Several elements in a pipeline can provide #GstStreamCollection.
 * 
 * Applications can activate streams from a collection by using the
 * #GST_EVENT_SELECT_STREAMS event on a pipeline, bin or element.
 *
 * Since: 1.10
 */
public class StreamCollection : ObjectGst
{
	/** the main Gtk struct */
	protected GstStreamCollection* gstStreamCollection;

	/** Get the main Gtk struct */
	public GstStreamCollection* getStreamCollectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstStreamCollection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstStreamCollection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstStreamCollection* gstStreamCollection, bool ownedRef = false)
	{
		this.gstStreamCollection = gstStreamCollection;
		super(cast(GstObject*)gstStreamCollection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_stream_collection_get_type();
	}

	/**
	 * Create a new #GstStreamCollection.
	 *
	 * Params:
	 *     upstreamId = The stream id of the parent stream
	 *
	 * Returns: The new #GstStreamCollection.
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string upstreamId)
	{
		auto __p = gst_stream_collection_new(Str.toStringz(upstreamId));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstStreamCollection*) __p, true);
	}

	/**
	 * Add the given @stream to the @collection.
	 *
	 * Params:
	 *     stream = the #GstStream to add
	 *
	 * Returns: %TRUE if the @stream was properly added, else %FALSE
	 *
	 * Since: 1.10
	 */
	public bool addStream(Stream stream)
	{
		return gst_stream_collection_add_stream(gstStreamCollection, (stream is null) ? null : stream.getStreamStruct()) != 0;
	}

	/**
	 * Get the number of streams this collection contains
	 *
	 * Returns: The number of streams that @collection contains
	 *
	 * Since: 1.10
	 */
	public uint getSize()
	{
		return gst_stream_collection_get_size(gstStreamCollection);
	}

	/**
	 * Retrieve the #GstStream with index @index from the collection.
	 *
	 * The caller should not modify the returned #GstStream
	 *
	 * Params:
	 *     index = Index of the stream to retrieve
	 *
	 * Returns: A #GstStream
	 *
	 * Since: 1.10
	 */
	public Stream getStream(uint index)
	{
		auto __p = gst_stream_collection_get_stream(gstStreamCollection, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stream)(cast(GstStream*) __p);
	}

	/**
	 * Returns the upstream id of the @collection.
	 *
	 * Returns: The upstream id
	 *
	 * Since: 1.10
	 */
	public string getUpstreamId()
	{
		return Str.toString(gst_stream_collection_get_upstream_id(gstStreamCollection));
	}

	/** */
	gulong addOnStreamNotify(void delegate(Stream, ParamSpec, StreamCollection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "stream-notify", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
