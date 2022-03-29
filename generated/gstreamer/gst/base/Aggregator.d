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
private import gobject.Signals;
private import gst.base.AggregatorPad;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Element;
private import gstreamer.Sample;
private import gstreamer.Segment;
private import gstreamer.Structure;
private import std.algorithm;


/**
 * Manages a set of pads with the purpose of aggregating their buffers.
 * Control is given to the subclass when all pads have data.
 * 
 * * Base class for mixers and muxers. Subclasses should at least implement
 * the #GstAggregatorClass::aggregate virtual method.
 * 
 * * Installs a #GstPadChainFunction, a #GstPadEventFullFunction and a
 * #GstPadQueryFunction to queue all serialized data packets per sink pad.
 * Subclasses should not overwrite those, but instead implement
 * #GstAggregatorClass::sink_event and #GstAggregatorClass::sink_query as
 * needed.
 * 
 * * When data is queued on all pads, the aggregate vmethod is called.
 * 
 * * One can peek at the data on any given GstAggregatorPad with the
 * gst_aggregator_pad_peek_buffer() method, and remove it from the pad
 * with the gst_aggregator_pad_pop_buffer () method. When a buffer
 * has been taken with pop_buffer (), a new buffer can be queued
 * on that pad.
 * 
 * * When gst_aggregator_pad_peek_buffer() or gst_aggregator_pad_has_buffer()
 * are called, a reference is taken to the returned buffer, which stays
 * valid until either:
 * 
 * - gst_aggregator_pad_pop_buffer() is called, in which case the caller
 * is guaranteed that the buffer they receive is the same as the peeked
 * buffer.
 * - gst_aggregator_pad_drop_buffer() is called, in which case the caller
 * is guaranteed that the dropped buffer is the one that was peeked.
 * - the subclass implementation of #GstAggregatorClass.aggregate returns.
 * 
 * Subsequent calls to gst_aggregator_pad_peek_buffer() or
 * gst_aggregator_pad_has_buffer() return / check the same buffer that was
 * returned / checked, until one of the conditions listed above is met.
 * 
 * Subclasses are only allowed to call these methods from the aggregate
 * thread.
 * 
 * * If the subclass wishes to push a buffer downstream in its aggregate
 * implementation, it should do so through the
 * gst_aggregator_finish_buffer() method. This method will take care
 * of sending and ordering mandatory events such as stream start, caps
 * and segment. Buffer lists can also be pushed out with
 * gst_aggregator_finish_buffer_list().
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
 *
 * Since: 1.14
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
		return gst_aggregator_finish_buffer(gstAggregator, (buffer is null) ? null : buffer.getBufferStruct(true));
	}

	/**
	 * This method will push the provided output buffer list downstream. If needed,
	 * mandatory events such as stream-start, caps, and segment events will be
	 * sent before pushing the buffer.
	 *
	 * Params:
	 *     bufferlist = the #GstBufferList to push.
	 *
	 * Since: 1.18
	 */
	public GstFlowReturn finishBufferList(BufferList bufferlist)
	{
		return gst_aggregator_finish_buffer_list(gstAggregator, (bufferlist is null) ? null : bufferlist.getBufferListStruct(true));
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
		auto __p = gst_aggregator_get_buffer_pool(gstAggregator);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferPool)(cast(GstBufferPool*) __p, true);
	}

	/**
	 * Returns: whether inactive pads will not be waited on
	 *
	 * Since: 1.20
	 */
	public bool getIgnoreInactivePads()
	{
		return gst_aggregator_get_ignore_inactive_pads(gstAggregator) != 0;
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
	 * Negotiates src pad caps with downstream elements.
	 * Unmarks GST_PAD_FLAG_NEED_RECONFIGURE in any case. But marks it again
	 * if #GstAggregatorClass::negotiate fails.
	 *
	 * Returns: %TRUE if the negotiation succeeded, else %FALSE.
	 *
	 * Since: 1.18
	 */
	public bool negotiate()
	{
		return gst_aggregator_negotiate(gstAggregator) != 0;
	}

	/**
	 * Use this function to determine what input buffers will be aggregated
	 * to produce the next output buffer. This should only be called from
	 * a #GstAggregator::samples-selected handler, and can be used to precisely
	 * control aggregating parameters for a given set of input samples.
	 *
	 * Returns: The sample that is about to be aggregated. It may hold a #GstBuffer
	 *     or a #GstBufferList. The contents of its info structure is subclass-dependent,
	 *     and documented on a subclass basis. The buffers held by the sample are
	 *     not writable.
	 *
	 * Since: 1.18
	 */
	public Sample peekNextSample(AggregatorPad pad)
	{
		auto __p = gst_aggregator_peek_next_sample(gstAggregator, (pad is null) ? null : pad.getAggregatorPadStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * Subclasses should call this when they have prepared the
	 * buffers they will aggregate for each of their sink pads, but
	 * before using any of the properties of the pads that govern
	 * *how* aggregation should be performed, for example z-index
	 * for video aggregators.
	 *
	 * If gst_aggregator_update_segment() is used by the subclass,
	 * it MUST be called before gst_aggregator_selected_samples().
	 *
	 * This function MUST only be called from the #GstAggregatorClass::aggregate()
	 * function.
	 *
	 * Params:
	 *     pts = The presentation timestamp of the next output buffer
	 *     dts = The decoding timestamp of the next output buffer
	 *     duration = The duration of the next output buffer
	 *     info = a #GstStructure containing additional information
	 *
	 * Since: 1.18
	 */
	public void selectedSamples(GstClockTime pts, GstClockTime dts, GstClockTime duration, Structure info)
	{
		gst_aggregator_selected_samples(gstAggregator, pts, dts, duration, (info is null) ? null : info.getStructureStruct());
	}

	/**
	 * Subclasses should call this when they don't want to time out
	 * waiting for a pad that hasn't yet received any buffers in live
	 * mode.
	 *
	 * #GstAggregator will still wait once on each newly-added pad, making
	 * sure upstream has had a fair chance to start up.
	 *
	 * Params:
	 *     ignore = whether inactive pads should not be waited on
	 *
	 * Since: 1.20
	 */
	public void setIgnoreInactivePads(bool ignore)
	{
		gst_aggregator_set_ignore_inactive_pads(gstAggregator, ignore);
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

	/**
	 * This is a simple #GstAggregatorClass::get_next_time implementation that
	 * just looks at the #GstSegment on the srcpad of the aggregator and bases
	 * the next time on the running time there.
	 *
	 * This is the desired behaviour in most cases where you have a live source
	 * and you have a dead line based aggregator subclass.
	 *
	 * Returns: The running time based on the position
	 *
	 * Since: 1.16
	 */
	public GstClockTime simpleGetNextTime()
	{
		return gst_aggregator_simple_get_next_time(gstAggregator);
	}

	/**
	 * Subclasses should use this to update the segment on their
	 * source pad, instead of directly pushing new segment events
	 * downstream.
	 *
	 * Subclasses MUST call this before gst_aggregator_selected_samples(),
	 * if it is used at all.
	 *
	 * Since: 1.18
	 */
	public void updateSegment(Segment segment)
	{
		gst_aggregator_update_segment(gstAggregator, (segment is null) ? null : segment.getSegmentStruct());
	}

	/**
	 * Signals that the #GstAggregator subclass has selected the next set
	 * of input samples it will aggregate. Handlers may call
	 * gst_aggregator_peek_next_sample() at that point.
	 *
	 * Params:
	 *     segment = The #GstSegment the next output buffer is part of
	 *     pts = The presentation timestamp of the next output buffer
	 *     dts = The decoding timestamp of the next output buffer
	 *     duration = The duration of the next output buffer
	 *     info = a #GstStructure containing additional information
	 *
	 * Since: 1.18
	 */
	gulong addOnSamplesSelected(void delegate(Segment, ulong, ulong, ulong, Structure, Aggregator) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "samples-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
