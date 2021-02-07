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


module gstreamer.Sample;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Caps;
private import gstreamer.Segment;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * A #GstSample is a small object containing data, a type, timing and
 * extra arbitrary information.
 */
public class Sample
{
	/** the main Gtk struct */
	protected GstSample* gstSample;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstSample* getSampleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstSample;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstSample;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstSample* gstSample, bool ownedRef = false)
	{
		this.gstSample = gstSample;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_sample_get_type();
	}

	/**
	 * Create a new #GstSample with the provided details.
	 *
	 * Free-function: gst_sample_unref
	 *
	 * Params:
	 *     buffer = a #GstBuffer, or %NULL
	 *     caps = a #GstCaps, or %NULL
	 *     segment = a #GstSegment, or %NULL
	 *     info = a #GstStructure, or %NULL
	 *
	 * Returns: the new #GstSample. gst_sample_unref()
	 *     after usage.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, Caps caps, Segment segment, Structure info)
	{
		auto __p = gst_sample_new((buffer is null) ? null : buffer.getBufferStruct(), (caps is null) ? null : caps.getCapsStruct(), (segment is null) ? null : segment.getSegmentStruct(), (info is null) ? null : info.getStructureStruct(true));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstSample*) __p);
	}

	/**
	 * Get the buffer associated with @sample
	 *
	 * Returns: the buffer of @sample or %NULL
	 *     when there is no buffer. The buffer remains valid as long as
	 *     @sample is valid.  If you need to hold on to it for longer than
	 *     that, take a ref to the buffer with gst_buffer_ref().
	 */
	public Buffer getBuffer()
	{
		auto __p = gst_sample_get_buffer(gstSample);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p);
	}

	/**
	 * Get the buffer list associated with @sample
	 *
	 * Returns: the buffer list of @sample or %NULL
	 *     when there is no buffer list. The buffer list remains valid as long as
	 *     @sample is valid.  If you need to hold on to it for longer than
	 *     that, take a ref to the buffer list with gst_mini_object_ref ().
	 *
	 * Since: 1.6
	 */
	public BufferList getBufferList()
	{
		auto __p = gst_sample_get_buffer_list(gstSample);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p);
	}

	/**
	 * Get the caps associated with @sample
	 *
	 * Returns: the caps of @sample or %NULL
	 *     when there is no caps. The caps remain valid as long as @sample is
	 *     valid.  If you need to hold on to the caps for longer than that,
	 *     take a ref to the caps with gst_caps_ref().
	 */
	public Caps getCaps()
	{
		auto __p = gst_sample_get_caps(gstSample);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p);
	}

	/**
	 * Get extra information associated with @sample.
	 *
	 * Returns: the extra info of @sample.
	 *     The info remains valid as long as @sample is valid.
	 */
	public Structure getInfo()
	{
		auto __p = gst_sample_get_info(gstSample);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) __p);
	}

	/**
	 * Get the segment associated with @sample
	 *
	 * Returns: the segment of @sample.
	 *     The segment remains valid as long as @sample is valid.
	 */
	public Segment getSegment()
	{
		auto __p = gst_sample_get_segment(gstSample);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Segment)(cast(GstSegment*) __p);
	}

	/**
	 * Set the buffer associated with @sample. @sample must be writable.
	 *
	 * Params:
	 *     buffer = A #GstBuffer
	 *
	 * Since: 1.16
	 */
	public void setBuffer(Buffer buffer)
	{
		gst_sample_set_buffer(gstSample, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Set the buffer list associated with @sample. @sample must be writable.
	 *
	 * Params:
	 *     bufferList = a #GstBufferList
	 *
	 * Since: 1.6
	 */
	public void setBufferList(BufferList bufferList)
	{
		gst_sample_set_buffer_list(gstSample, (bufferList is null) ? null : bufferList.getBufferListStruct());
	}

	/**
	 * Set the caps associated with @sample. @sample must be writable.
	 *
	 * Params:
	 *     caps = A #GstCaps
	 *
	 * Since: 1.16
	 */
	public void setCaps(Caps caps)
	{
		gst_sample_set_caps(gstSample, (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Set the info structure associated with @sample. @sample must be writable,
	 * and @info must not have a parent set already.
	 *
	 * Params:
	 *     info = A #GstStructure
	 *
	 * Since: 1.16
	 */
	public bool setInfo(Structure info)
	{
		return gst_sample_set_info(gstSample, (info is null) ? null : info.getStructureStruct(true)) != 0;
	}

	/**
	 * Set the segment associated with @sample. @sample must be writable.
	 *
	 * Params:
	 *     segment = A #GstSegment
	 *
	 * Since: 1.16
	 */
	public void setSegment(Segment segment)
	{
		gst_sample_set_segment(gstSample, (segment is null) ? null : segment.getSegmentStruct());
	}
}
