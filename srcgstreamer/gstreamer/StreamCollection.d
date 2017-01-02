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
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gstreamer.ObjectGst;
private import gstreamer.Stream;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
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
	public GstStreamCollection* getStreamCollectionStruct()
	{
		return gstStreamCollection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstStreamCollection;
	}

	protected override void setStruct(GObject* obj)
	{
		gstStreamCollection = cast(GstStreamCollection*)obj;
		super.setStruct(obj);
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
	 * Return: The new #GstStreamCollection.
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string upstreamId)
	{
		auto p = gst_stream_collection_new(Str.toStringz(upstreamId));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstStreamCollection*) p);
	}

	/**
	 * Add the given @stream to the @collection.
	 *
	 * Params:
	 *     stream = the #GstStream to add
	 *
	 * Return: %TRUE if the @stream was properly added, else %FALSE
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
	 * Return: The number of streams that @collection contains
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
	 * Return: A #GstStream
	 *
	 * Since: 1.10
	 */
	public Stream getStream(uint index)
	{
		auto p = gst_stream_collection_get_stream(gstStreamCollection, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Stream)(cast(GstStream*) p);
	}

	/**
	 * Returns the upstream id of the @collection.
	 *
	 * Return: The upstream id
	 *
	 * Since: 1.10
	 */
	public string getUpstreamId()
	{
		return Str.toString(gst_stream_collection_get_upstream_id(gstStreamCollection));
	}

	protected class OnStreamNotifyDelegateWrapper
	{
		void delegate(Stream, ParamSpec, StreamCollection) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Stream, ParamSpec, StreamCollection) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnStreamNotifyDelegateWrapper[] onStreamNotifyListeners;

	/** */
	gulong addOnStreamNotify(void delegate(Stream, ParamSpec, StreamCollection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onStreamNotifyListeners ~= new OnStreamNotifyDelegateWrapper(dlg, 0, connectFlags);
		onStreamNotifyListeners[onStreamNotifyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"stream-notify",
			cast(GCallback)&callBackStreamNotify,
			cast(void*)onStreamNotifyListeners[onStreamNotifyListeners.length - 1],
			cast(GClosureNotify)&callBackStreamNotifyDestroy,
			connectFlags);
		return onStreamNotifyListeners[onStreamNotifyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackStreamNotify(GstStreamCollection* streamcollectionStruct, GstStream* object, GParamSpec* p0,OnStreamNotifyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Stream)(object), ObjectG.getDObject!(ParamSpec)(p0), wrapper.outer);
	}
	
	extern(C) static void callBackStreamNotifyDestroy(OnStreamNotifyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnStreamNotify(wrapper);
	}

	protected void internalRemoveOnStreamNotify(OnStreamNotifyDelegateWrapper source)
	{
		foreach(index, wrapper; onStreamNotifyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onStreamNotifyListeners[index] = null;
				onStreamNotifyListeners = std.algorithm.remove(onStreamNotifyListeners, index);
				break;
			}
		}
	}
	
}
