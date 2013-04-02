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

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gstreamer
 * outFile = ProxyPad
 * strct   = GstPad
 * realStrct=GstProxyPad
 * ctorStrct=
 * clss    = ProxyPad
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_proxy_pad_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_proxy_pad_get_internal
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Buffer
 * 	- gstreamer.BufferList
 * 	- gstreamer.Iterator
 * 	- gstreamer.ObjectGst
 * 	- gstreamer.Pad
 * structWrap:
 * 	- GstBuffer* -> Buffer
 * 	- GstBufferList* -> BufferList
 * 	- GstIterator* -> Iterator
 * 	- GstObject* -> ObjectGst
 * 	- GstPad* -> Pad
 * 	- GstProxyPad* -> ProxyPad
 * module aliases:
 * local aliases:
 * overrides:
 * 	- iterateInternalLinksDefault
 */

module gstreamer.ProxyPad;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Iterator;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;



private import gstreamer.Pad;

/**
 * GhostPads are useful when organizing pipelines with GstBin like elements.
 * The idea here is to create hierarchical element graphs. The bin element
 * contains a sub-graph. Now one would like to treat the bin-element like any
 * other GstElement. This is where GhostPads come into play. A GhostPad acts as
 * a proxy for another pad. Thus the bin can have sink and source ghost-pads
 * that are associated with sink and source pads of the child elements.
 *
 * If the target pad is known at creation time, gst_ghost_pad_new() is the
 * function to use to get a ghost-pad. Otherwise one can use gst_ghost_pad_new_no_target()
 * to create the ghost-pad and use gst_ghost_pad_set_target() to establish the
 * association later on.
 *
 * Note that GhostPads add overhead to the data processing of a pipeline.
 *
 * Last reviewed on 2005-11-18 (0.9.5)
 */
public class ProxyPad : Pad
{
	
	/** the main Gtk struct */
	protected GstProxyPad* gstProxyPad;
	
	
	public GstProxyPad* getProxyPadStruct()
	{
		return gstProxyPad;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstProxyPad;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstProxyPad* gstProxyPad)
	{
		super(cast(GstPad*)gstProxyPad);
		this.gstProxyPad = gstProxyPad;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstProxyPad = cast(GstProxyPad*)obj;
	}
	
	/**
	 * Get the internal pad of pad. Unref target pad after usage.
	 * The internal pad of a GstGhostPad is the internally used
	 * pad of opposite direction, which is used to link to the target.
	 *
	 * Params:
	 *     pad = the GstProxyPad
	 * Returns: the target GstProxyPad, can be NULL. Unref target pad after usage. [transfer full]
	 */
	public ProxyPad getInternal()
	{
		// GstProxyPad * gst_proxy_pad_get_internal (GstProxyPad *pad);
		auto p = gst_proxy_pad_get_internal(gstProxyPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ProxyPad)(cast(GstProxyPad*) p);
	}
	
	/**
	 */
	
	/**
	 * Invoke the default iterate internal links function of the proxy pad.
	 * Params:
	 * parent = the parent of pad or NULL
	 * Returns: a GstIterator of GstPad, or NULL if pad has no parent. Unref each returned pad with gst_object_unref().
	 */
	public override Iterator iterateInternalLinksDefault(ObjectGst parent)
	{
		// GstIterator * gst_proxy_pad_iterate_internal_links_default  (GstPad *pad,  GstObject *parent);
		auto p = gst_proxy_pad_iterate_internal_links_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Invoke the default chain function of the proxy pad.
	 * Params:
	 * parent = the parent of pad or NULL
	 * buffer = the GstBuffer to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public GstFlowReturn chainDefault(ObjectGst parent, Buffer buffer)
	{
		// GstFlowReturn gst_proxy_pad_chain_default (GstPad *pad,  GstObject *parent,  GstBuffer *buffer);
		return gst_proxy_pad_chain_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (buffer is null) ? null : buffer.getBufferStruct());
	}
	
	/**
	 * Invoke the default chain list function of the proxy pad.
	 * Params:
	 * parent = the parent of pad or NULL
	 * list = the GstBufferList to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public GstFlowReturn chainListDefault(ObjectGst parent, BufferList list)
	{
		// GstFlowReturn gst_proxy_pad_chain_list_default (GstPad *pad,  GstObject *parent,  GstBufferList *list);
		return gst_proxy_pad_chain_list_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (list is null) ? null : list.getBufferListStruct());
	}
	
	/**
	 * Invoke the default getrange function of the proxy pad.
	 * Params:
	 * parent = the parent of pad
	 * offset = The start offset of the buffer
	 * size = The length of the buffer
	 * buffer = a pointer to hold the GstBuffer,
	 * returns GST_FLOW_ERROR if NULL. [out callee-allocates]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public GstFlowReturn getrangeDefault(ObjectGst parent, ulong offset, uint size, out Buffer buffer)
	{
		// GstFlowReturn gst_proxy_pad_getrange_default (GstPad *pad,  GstObject *parent,  guint64 offset,  guint size,  GstBuffer **buffer);
		GstBuffer* outbuffer = null;
		
		auto p = gst_proxy_pad_getrange_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), offset, size, &outbuffer);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		return p;
	}
}
