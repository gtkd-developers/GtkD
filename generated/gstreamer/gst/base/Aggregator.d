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


module gst.base.Aggregator;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.Buffer;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Element;


/**
 * Manages a set of pads with the purpose of aggregating their buffers.
 * Control is given to the subclass when all pads have data.
 * 
 * * Base class for mixers and muxers. Subclasses should at least implement
 * the #GstAggregatorClass.aggregate() virtual method.
 * 
 * * Installs a #GstPadChainFunction, a #GstPadEventFullFunction and a
 * #GstPadQueryFunction to queue all serialized data packets per sink pad.
 * Subclasses should not overwrite those, but instead implement
 * #GstAggregatorClass.sink_event() and #GstAggregatorClass.sink_query() as
 * needed.
 * 
 * * When data is queued on all pads, the aggregate vmethod is called.
 * 
 * * One can peek at the data on any given GstAggregatorPad with the
 * gst_aggregator_pad_peek_buffer () method, and remove it from the pad
 * with the gst_aggregator_pad_pop_buffer () method. When a buffer
 * has been taken with pop_buffer (), a new buffer can be queued
 * on that pad.
 * 
 * * If the subclass wishes to push a buffer downstream in its aggregate
 * implementation, it should do so through the
 * gst_aggregator_finish_buffer () method. This method will take care
 * of sending and ordering mandatory events such as stream start, caps
 * and segment.
 * 
 * * Same goes for EOS events, which should not be pushed directly by the
 * subclass, it should instead return GST_FLOW_EOS in its aggregate
 * implementation.
 * 
 * * Note that the aggregator logic regarding gap event handling is to turn
 * these into gap buffers with matching PTS and duration. It will also
 * flag these buffers with GST_BUFFER_FLAG_GAP and GST_BUFFER_FLAG_DROPPABLE
 * to ease their identification and subsequent processing.
 * 
 * * Subclasses must use (a subclass of) #GstAggregatorPad for both their
 * sink and source pads.
 * See gst_element_class_add_static_pad_template_with_gtype().
 * 
 * This class used to live in gst-plugins-bad and was moved to core.
 */
public class Aggregator : Element
{
	/** the main Gtk struct */
	protected GstAggregator* gstAggregator;

	/** Get the main Gtk struct */
	public GstAggregator* getAggregatorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAggregator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAggregator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAggregator* gstAggregator, bool ownedRef = false)
	{
		this.gstAggregator = gstAggregator;
		super(cast(GstElement*)gstAggregator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_aggregator_get_type();
	}

	/**
	 * This method will push the provided output buffer downstream. If needed,
	 * mandatory events such as stream-start, caps, and segment events will be
	 * sent before pushing the buffer.
	 *
	 * Params:
	 *     buffer = the #GstBuffer to push.
	 */
	public GstFlowReturn finishBuffer(Buffer buffer)
	{
		return gst_aggregator_finish_buffer(gstAggregator, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Lets #GstAggregator sub-classes get the memory @allocator
	 * acquired by the base class and its @params.
	 *
	 * Unref the @allocator after use it.
	 *
	 * Params:
	 *     allocator = the #GstAllocator
	 *         used
	 *     params = the
	 *         #GstAllocationParams of @allocator
	 */
	public void getAllocator(out Allocator allocator, out AllocationParams params)
	{
		GstAllocator* outallocator = null;
		GstAllocationParams* outparams = sliceNew!GstAllocationParams();

		gst_aggregator_get_allocator(gstAggregator, &outallocator, outparams);

		allocator = ObjectG.getDObject!(Allocator)(outallocator);
		params = ObjectG.getDObject!(AllocationParams)(outparams, true);
	}

	/**
	 * Returns: the instance of the #GstBufferPool used
	 *     by @trans; free it after use it
	 */
	public BufferPool getBufferPool()
	{
		auto p = gst_aggregator_get_buffer_pool(gstAggregator);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferPool)(cast(GstBufferPool*) p, true);
	}

	/**
	 * Retrieves the latency values reported by @self in response to the latency
	 * query, or %GST_CLOCK_TIME_NONE if there is not live source connected and the element
	 * will not wait for the clock.
	 *
	 * Typically only called by subclasses.
	 *
	 * Returns: The latency or %GST_CLOCK_TIME_NONE if the element does not sync
	 */
	public GstClockTime getLatency()
	{
		return gst_aggregator_get_latency(gstAggregator);
	}

	/**
	 * Lets #GstAggregator sub-classes tell the baseclass what their internal
	 * latency is. Will also post a LATENCY message on the bus so the pipeline
	 * can reconfigure its global latency.
	 *
	 * Params:
	 *     minLatency = minimum latency
	 *     maxLatency = maximum latency
	 */
	public void setLatency(GstClockTime minLatency, GstClockTime maxLatency)
	{
		gst_aggregator_set_latency(gstAggregator, minLatency, maxLatency);
	}

	/**
	 * Sets the caps to be used on the src pad.
	 *
	 * Params:
	 *     caps = The #GstCaps to set on the src pad.
	 */
	public void setSrcCaps(Caps caps)
	{
		gst_aggregator_set_src_caps(gstAggregator, (caps is null) ? null : caps.getCapsStruct());
	}
}
