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


module gstreamer.ProxyPad;

private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Iterator;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/** */
public class ProxyPad : Pad
{
	/** the main Gtk struct */
	protected GstProxyPad* gstProxyPad;

	/** Get the main Gtk struct */
	public GstProxyPad* getProxyPadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstProxyPad;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstProxyPad;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstProxyPad* gstProxyPad, bool ownedRef = false)
	{
		this.gstProxyPad = gstProxyPad;
		super(cast(GstPad*)gstProxyPad, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_proxy_pad_get_type();
	}

	/**
	 * Invoke the default chain function of the proxy pad.
	 *
	 * Params:
	 *     pad = a sink #GstPad, returns GST_FLOW_ERROR if not.
	 *     parent = the parent of @pad or %NULL
	 *     buffer = the #GstBuffer to send, return GST_FLOW_ERROR
	 *         if not.
	 *
	 * Returns: a #GstFlowReturn from the pad.
	 */
	public static GstFlowReturn chainDefault(Pad pad, ObjectGst parent, Buffer buffer)
	{
		return gst_proxy_pad_chain_default((pad is null) ? null : pad.getPadStruct(), (parent is null) ? null : parent.getObjectGstStruct(), (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Invoke the default chain list function of the proxy pad.
	 *
	 * Params:
	 *     pad = a sink #GstPad, returns GST_FLOW_ERROR if not.
	 *     parent = the parent of @pad or %NULL
	 *     list = the #GstBufferList to send, return GST_FLOW_ERROR
	 *         if not.
	 *
	 * Returns: a #GstFlowReturn from the pad.
	 */
	public static GstFlowReturn chainListDefault(Pad pad, ObjectGst parent, BufferList list)
	{
		return gst_proxy_pad_chain_list_default((pad is null) ? null : pad.getPadStruct(), (parent is null) ? null : parent.getObjectGstStruct(), (list is null) ? null : list.getBufferListStruct());
	}

	/**
	 * Invoke the default getrange function of the proxy pad.
	 *
	 * Params:
	 *     pad = a src #GstPad, returns #GST_FLOW_ERROR if not.
	 *     parent = the parent of @pad
	 *     offset = The start offset of the buffer
	 *     size = The length of the buffer
	 *     buffer = a pointer to hold the #GstBuffer,
	 *         returns #GST_FLOW_ERROR if %NULL.
	 *
	 * Returns: a #GstFlowReturn from the pad.
	 */
	public static GstFlowReturn getrangeDefault(Pad pad, ObjectGst parent, ulong offset, uint size, out Buffer buffer)
	{
		GstBuffer* outbuffer = null;

		auto __p = gst_proxy_pad_getrange_default((pad is null) ? null : pad.getPadStruct(), (parent is null) ? null : parent.getObjectGstStruct(), offset, size, &outbuffer);

		buffer = ObjectG.getDObject!(Buffer)(outbuffer);

		return __p;
	}

	/**
	 * Invoke the default iterate internal links function of the proxy pad.
	 *
	 * Params:
	 *     pad = the #GstPad to get the internal links of.
	 *     parent = the parent of @pad or %NULL
	 *
	 * Returns: a #GstIterator of #GstPad, or %NULL if @pad
	 *     has no parent. Unref each returned pad with gst_object_unref().
	 */
	public static Iterator iterateInternalLinksDefault(Pad pad, ObjectGst parent)
	{
		auto __p = gst_proxy_pad_iterate_internal_links_default((pad is null) ? null : pad.getPadStruct(), (parent is null) ? null : parent.getObjectGstStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) __p, true);
	}

	/**
	 * Get the internal pad of @pad. Unref target pad after usage.
	 *
	 * The internal pad of a #GstGhostPad is the internally used
	 * pad of opposite direction, which is used to link to the target.
	 *
	 * Returns: the target #GstProxyPad, can
	 *     be %NULL.  Unref target pad after usage.
	 */
	public ProxyPad getInternal()
	{
		auto __p = gst_proxy_pad_get_internal(gstProxyPad);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ProxyPad)(cast(GstProxyPad*) __p, true);
	}
}
