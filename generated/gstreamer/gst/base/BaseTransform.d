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


module gst.base.BaseTransform;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Element;


/**
 * This base class is for filter elements that process data. Elements
 * that are suitable for implementation using #GstBaseTransform are ones
 * where the size and caps of the output is known entirely from the input
 * caps and buffer sizes. These include elements that directly transform
 * one buffer into another, modify the contents of a buffer in-place, as
 * well as elements that collate multiple input buffers into one output buffer,
 * or that expand one input buffer into multiple output buffers. See below
 * for more concrete use cases.
 * 
 * It provides for:
 * 
 * * one sinkpad and one srcpad
 * * Possible formats on sink and source pad implemented
 * with custom transform_caps function. By default uses
 * same format on sink and source.
 * 
 * * Handles state changes
 * * Does flushing
 * * Push mode
 * * Pull mode if the sub-class transform can operate on arbitrary data
 * 
 * # Use Cases
 * 
 * ## Passthrough mode
 * 
 * * Element has no interest in modifying the buffer. It may want to inspect it,
 * in which case the element should have a transform_ip function. If there
 * is no transform_ip function in passthrough mode, the buffer is pushed
 * intact.
 * 
 * * The #GstBaseTransformClass.passthrough_on_same_caps variable
 * will automatically set/unset passthrough based on whether the
 * element negotiates the same caps on both pads.
 * 
 * * #GstBaseTransformClass.passthrough_on_same_caps on an element that
 * doesn't implement a transform_caps function is useful for elements that
 * only inspect data (such as level)
 * 
 * * Example elements
 * 
 * * Level
 * * Videoscale, audioconvert, videoconvert, audioresample in certain modes.
 * 
 * ## Modifications in-place - input buffer and output buffer are the same thing.
 * 
 * * The element must implement a transform_ip function.
 * * Output buffer size must <= input buffer size
 * * If the always_in_place flag is set, non-writable buffers will be copied
 * and passed to the transform_ip function, otherwise a new buffer will be
 * created and the transform function called.
 * 
 * * Incoming writable buffers will be passed to the transform_ip function
 * immediately.
 * * only implementing transform_ip and not transform implies always_in_place = %TRUE
 * 
 * * Example elements:
 * * Volume
 * * Audioconvert in certain modes (signed/unsigned conversion)
 * * videoconvert in certain modes (endianness swapping)
 * 
 * ## Modifications only to the caps/metadata of a buffer
 * 
 * * The element does not require writable data, but non-writable buffers
 * should be subbuffered so that the meta-information can be replaced.
 * 
 * * Elements wishing to operate in this mode should replace the
 * prepare_output_buffer method to create subbuffers of the input buffer
 * and set always_in_place to %TRUE
 * 
 * * Example elements
 * * Capsfilter when setting caps on outgoing buffers that have
 * none.
 * * identity when it is going to re-timestamp buffers by
 * datarate.
 * 
 * ## Normal mode
 * * always_in_place flag is not set, or there is no transform_ip function
 * * Element will receive an input buffer and output buffer to operate on.
 * * Output buffer is allocated by calling the prepare_output_buffer function.
 * * Example elements:
 * * Videoscale, videoconvert, audioconvert when doing
 * scaling/conversions
 * 
 * ## Special output buffer allocations
 * * Elements which need to do special allocation of their output buffers
 * beyond allocating output buffers via the negotiated allocator or
 * buffer pool should implement the prepare_output_buffer method.
 * 
 * * Example elements:
 * * efence
 * 
 * # Sub-class settable flags on GstBaseTransform
 * 
 * * passthrough
 * 
 * * Implies that in the current configuration, the sub-class is not interested in modifying the buffers.
 * * Elements which are always in passthrough mode whenever the same caps has been negotiated on both pads can set the class variable passthrough_on_same_caps to have this behaviour automatically.
 * 
 * * always_in_place
 * * Determines whether a non-writable buffer will be copied before passing
 * to the transform_ip function.
 * 
 * * Implied %TRUE if no transform function is implemented.
 * * Implied %FALSE if ONLY transform function is implemented.
 */
public class BaseTransform : Element
{
	/** the main Gtk struct */
	protected GstBaseTransform* gstBaseTransform;

	/** Get the main Gtk struct */
	public GstBaseTransform* getBaseTransformStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBaseTransform;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBaseTransform;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBaseTransform* gstBaseTransform, bool ownedRef = false)
	{
		this.gstBaseTransform = gstBaseTransform;
		super(cast(GstElement*)gstBaseTransform, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_base_transform_get_type();
	}

	/**
	 * Lets #GstBaseTransform sub-classes to know the memory @allocator
	 * used by the base class and its @params.
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

		gst_base_transform_get_allocator(gstBaseTransform, &outallocator, outparams);

		allocator = ObjectG.getDObject!(Allocator)(outallocator);
		params = ObjectG.getDObject!(AllocationParams)(outparams, true);
	}

	/**
	 * Returns: the instance of the #GstBufferPool used
	 *     by @trans; free it after use it
	 */
	public BufferPool getBufferPool()
	{
		auto p = gst_base_transform_get_buffer_pool(gstBaseTransform);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferPool)(cast(GstBufferPool*) p, true);
	}

	/**
	 * See if @trans is configured as a in_place transform.
	 *
	 * Returns: %TRUE is the transform is configured in in_place mode.
	 *
	 *     MT safe.
	 */
	public bool isInPlace()
	{
		return gst_base_transform_is_in_place(gstBaseTransform) != 0;
	}

	/**
	 * See if @trans is configured as a passthrough transform.
	 *
	 * Returns: %TRUE is the transform is configured in passthrough mode.
	 *
	 *     MT safe.
	 */
	public bool isPassthrough()
	{
		return gst_base_transform_is_passthrough(gstBaseTransform) != 0;
	}

	/**
	 * Queries if the transform will handle QoS.
	 *
	 * Returns: %TRUE if QoS is enabled.
	 *
	 *     MT safe.
	 */
	public bool isQosEnabled()
	{
		return gst_base_transform_is_qos_enabled(gstBaseTransform) != 0;
	}

	/**
	 * Instructs @trans to request renegotiation upstream. This function is
	 * typically called after properties on the transform were set that
	 * influence the input format.
	 */
	public void reconfigureSink()
	{
		gst_base_transform_reconfigure_sink(gstBaseTransform);
	}

	/**
	 * Instructs @trans to renegotiate a new downstream transform on the next
	 * buffer. This function is typically called after properties on the transform
	 * were set that influence the output format.
	 */
	public void reconfigureSrc()
	{
		gst_base_transform_reconfigure_src(gstBaseTransform);
	}

	/**
	 * If @gap_aware is %FALSE (the default), output buffers will have the
	 * %GST_BUFFER_FLAG_GAP flag unset.
	 *
	 * If set to %TRUE, the element must handle output buffers with this flag set
	 * correctly, i.e. it can assume that the buffer contains neutral data but must
	 * unset the flag if the output is no neutral data.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     gapAware = New state
	 */
	public void setGapAware(bool gapAware)
	{
		gst_base_transform_set_gap_aware(gstBaseTransform, gapAware);
	}

	/**
	 * Determines whether a non-writable buffer will be copied before passing
	 * to the transform_ip function.
	 *
	 * * Always %TRUE if no transform function is implemented.
	 * * Always %FALSE if ONLY transform function is implemented.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     inPlace = Boolean value indicating that we would like to operate
	 *         on in_place buffers.
	 */
	public void setInPlace(bool inPlace)
	{
		gst_base_transform_set_in_place(gstBaseTransform, inPlace);
	}

	/**
	 * Set passthrough mode for this filter by default. This is mostly
	 * useful for filters that do not care about negotiation.
	 *
	 * Always %TRUE for filters which don't implement either a transform
	 * or transform_ip method.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     passthrough = boolean indicating passthrough mode.
	 */
	public void setPassthrough(bool passthrough)
	{
		gst_base_transform_set_passthrough(gstBaseTransform, passthrough);
	}

	/**
	 * If @prefer_passthrough is %TRUE (the default), @trans will check and
	 * prefer passthrough caps from the list of caps returned by the
	 * transform_caps vmethod.
	 *
	 * If set to %FALSE, the element must order the caps returned from the
	 * transform_caps function in such a way that the preferred format is
	 * first in the list. This can be interesting for transforms that can do
	 * passthrough transforms but prefer to do something else, like a
	 * capsfilter.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     preferPassthrough = New state
	 *
	 * Since: 1.0.1
	 */
	public void setPreferPassthrough(bool preferPassthrough)
	{
		gst_base_transform_set_prefer_passthrough(gstBaseTransform, preferPassthrough);
	}

	/**
	 * Enable or disable QoS handling in the transform.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     enabled = new state
	 */
	public void setQosEnabled(bool enabled)
	{
		gst_base_transform_set_qos_enabled(gstBaseTransform, enabled);
	}

	/**
	 * Set the QoS parameters in the transform. This function is called internally
	 * when a QOS event is received but subclasses can provide custom information
	 * when needed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     proportion = the proportion
	 *     diff = the diff against the clock
	 *     timestamp = the timestamp of the buffer generating the QoS expressed in
	 *         running_time.
	 */
	public void updateQos(double proportion, GstClockTimeDiff diff, GstClockTime timestamp)
	{
		gst_base_transform_update_qos(gstBaseTransform, proportion, diff, timestamp);
	}

	/**
	 * Updates the srcpad caps and send the caps downstream. This function
	 * can be used by subclasses when they have already negotiated their caps
	 * but found a change in them (or computed new informations). This way,
	 * they can notify downstream about that change without loosing any
	 * buffer.
	 *
	 * Params:
	 *     updatedCaps = An updated version of the srcpad caps to be pushed
	 *         downstream
	 *
	 * Returns: %TRUE if the caps could be send downstream %FALSE otherwise
	 *
	 * Since: 1.6
	 */
	public bool updateSrcCaps(Caps updatedCaps)
	{
		return gst_base_transform_update_src_caps(gstBaseTransform, (updatedCaps is null) ? null : updatedCaps.getCapsStruct()) != 0;
	}
}
