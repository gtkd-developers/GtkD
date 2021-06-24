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


module gstreamer.Stream;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gstreamer.Caps;
private import gstreamer.ObjectGst;
private import gstreamer.TagList;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * A high-level object representing a single stream. It might be backed, or
 * not, by an actual flow of data in a pipeline (#GstPad).
 * 
 * A #GstStream does not care about data changes (such as decoding, encoding,
 * parsing,...) as long as the underlying data flow corresponds to the same
 * high-level flow (ex: a certain audio track).
 * 
 * A #GstStream contains all the information pertinent to a stream, such as
 * stream-id, tags, caps, type, ...
 * 
 * Elements can subclass a #GstStream for internal usage (to contain information
 * pertinent to streams of data).
 *
 * Since: 1.10
 */
public class Stream : ObjectGst
{
	/** the main Gtk struct */
	protected GstStream* gstStream;

	/** Get the main Gtk struct */
	public GstStream* getStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstStream* gstStream, bool ownedRef = false)
	{
		this.gstStream = gstStream;
		super(cast(GstObject*)gstStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_stream_get_type();
	}

	/**
	 * Create a new #GstStream for the given @stream_id, @caps, @type
	 * and @flags
	 *
	 * Params:
	 *     streamId = the id for the new stream. If %NULL,
	 *         a new one will be automatically generated
	 *     caps = the #GstCaps of the stream
	 *     type = the #GstStreamType of the stream
	 *     flags = the #GstStreamFlags of the stream
	 *
	 * Returns: The new #GstStream
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string streamId, Caps caps, GstStreamType type, GstStreamFlags flags)
	{
		auto __p = gst_stream_new(Str.toStringz(streamId), (caps is null) ? null : caps.getCapsStruct(), type, flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstStream*) __p, true);
	}

	/**
	 * Retrieve the caps for @stream, if any
	 *
	 * Returns: The #GstCaps for @stream
	 *
	 * Since: 1.10
	 */
	public Caps getCaps()
	{
		auto __p = gst_stream_get_caps(gstStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Retrieve the current stream flags for @stream
	 *
	 * Returns: The #GstStreamFlags for @stream
	 *
	 * Since: 1.10
	 */
	public GstStreamFlags getStreamFlags()
	{
		return gst_stream_get_stream_flags(gstStream);
	}

	/**
	 * Returns the stream ID of @stream.
	 *
	 * Returns: the stream ID of @stream. Only valid
	 *     during the lifetime of @stream.
	 *
	 * Since: 1.10
	 */
	public string getStreamId()
	{
		return Str.toString(gst_stream_get_stream_id(gstStream));
	}

	/**
	 * Retrieve the stream type for @stream
	 *
	 * Returns: The #GstStreamType for @stream
	 *
	 * Since: 1.10
	 */
	public GstStreamType getStreamType()
	{
		return gst_stream_get_stream_type(gstStream);
	}

	/**
	 * Retrieve the tags for @stream, if any
	 *
	 * Returns: The #GstTagList for @stream
	 *
	 * Since: 1.10
	 */
	public TagList getTags()
	{
		auto __p = gst_stream_get_tags(gstStream);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p, true);
	}

	/**
	 * Set the caps for the #GstStream
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Since: 1.10
	 */
	public void setCaps(Caps caps)
	{
		gst_stream_set_caps(gstStream, (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Set the @flags for the @stream.
	 *
	 * Params:
	 *     flags = the flags to set on @stream
	 *
	 * Since: 1.10
	 */
	public void setStreamFlags(GstStreamFlags flags)
	{
		gst_stream_set_stream_flags(gstStream, flags);
	}

	/**
	 * Set the stream type of @stream
	 *
	 * Params:
	 *     streamType = the type to set on @stream
	 *
	 * Since: 1.10
	 */
	public void setStreamType(GstStreamType streamType)
	{
		gst_stream_set_stream_type(gstStream, streamType);
	}

	/**
	 * Set the tags for the #GstStream
	 *
	 * Params:
	 *     tags = a #GstTagList
	 *
	 * Since: 1.10
	 */
	public void setTags(TagList tags)
	{
		gst_stream_set_tags(gstStream, (tags is null) ? null : tags.getTagListStruct());
	}
}
