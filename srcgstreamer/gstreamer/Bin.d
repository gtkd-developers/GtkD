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
 * inFile  = GstBin.html
 * outPack = gstreamer
 * outFile = Bin
 * strct   = GstBin
 * realStrct=
 * ctorStrct=GstElement
 * clss    = Bin
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_bin_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Element
 * 	- gstreamer.Iterator
 * 	- gstreamer.Pad
 * structWrap:
 * 	- GstElement* -> Element
 * 	- GstIterator* -> Iterator
 * 	- GstPad* -> Pad
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Bin;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gstreamer.Element;
private import gstreamer.Iterator;
private import gstreamer.Pad;



private import gstreamer.Element;

/**
 * GstBin is an element that can contain other GstElement, allowing them to be
 * managed as a group.
 * Pads from the child elements can be ghosted to the bin, see GstGhostPad.
 * This makes the bin look like any other elements and enables creation of
 * higher-level abstraction elements.
 *
 * A new GstBin is created with gst_bin_new(). Use a GstPipeline instead if you
 * want to create a toplevel bin because a normal bin doesn't have a bus or
 * handle clock distribution of its own.
 *
 * After the bin has been created you will typically add elements to it with
 * gst_bin_add(). You can remove elements with gst_bin_remove().
 *
 * An element can be retrieved from a bin with gst_bin_get_by_name(), using the
 * elements name. gst_bin_get_by_name_recurse_up() is mainly used for internal
 * purposes and will query the parent bins when the element is not found in the
 * current bin.
 *
 * An iterator of elements in a bin can be retrieved with
 * gst_bin_iterate_elements(). Various other iterators exist to retrieve the
 * elements in a bin.
 *
 * gst_object_unref() is used to drop your reference to the bin.
 *
 * The "element-added" signal is fired whenever a new element is added to
 * the bin. Likewise the "element-removed" signal is fired whenever an
 * element is removed from the bin.
 *
 * Notes
 *
 * A GstBin internally intercepts every GstMessage posted by its children and
 * implements the following default behaviour for each of them:
 *
 * GST_MESSAGE_EOS
 *
 * This message is only posted by sinks in the PLAYING
 *  state. If all sinks posted the EOS message, this bin will post and EOS
 *  message upwards.
 *
 * GST_MESSAGE_SEGMENT_START
 *
 * just collected and never forwarded upwards.
 *  The messages are used to decide when all elements have completed playback
 *  of their segment.
 *
 * GST_MESSAGE_SEGMENT_DONE
 *
 *  Is posted by GstBin when all elements that posted
 *  a SEGMENT_START have posted a SEGMENT_DONE.
 *
 * GST_MESSAGE_DURATION_CHANGED
 *
 *  Is posted by an element that detected a change
 *  in the stream duration. The default bin behaviour is to clear any
 *  cached duration values so that the next duration query will perform
 *  a full duration recalculation. The duration change is posted to the
 *  application so that it can refetch the new duration with a duration
 *  query. Note that these messages can be posted before the bin is
 *  prerolled, in which case the duration query might fail.
 *
 * GST_MESSAGE_CLOCK_LOST
 *
 *  This message is posted by an element when it
 *  can no longer provide a clock. The default bin behaviour is to
 *  check if the lost clock was the one provided by the bin. If so and
 *  the bin is currently in the PLAYING state, the message is forwarded to
 *  the bin parent.
 *  This message is also generated when a clock provider is removed from
 *  the bin. If this message is received by the application, it should
 *  PAUSE the pipeline and set it back to PLAYING to force a new clock
 *  distribution.
 *
 * GST_MESSAGE_CLOCK_PROVIDE
 *
 *  This message is generated when an element
 *  can provide a clock. This mostly happens when a new clock
 *  provider is added to the bin. The default behaviour of the bin is to
 *  mark the currently selected clock as dirty, which will perform a clock
 *  recalculation the next time the bin is asked to provide a clock.
 *  This message is never sent tot the application but is forwarded to
 *  the parent of the bin.
 *
 * OTHERS
 *
 *  posted upwards.
 *
 * A GstBin implements the following default behaviour for answering to a
 * GstQuery:
 *
 * GST_QUERY_DURATION
 *
 * If the query has been asked before with the same format
 *  and the bin is a toplevel bin (ie. has no parent),
 *  use the cached previous value. If no previous value was cached, the
 *  query is sent to all sink elements in the bin and the MAXIMUM of all
 *  values is returned. If the bin is a toplevel bin the value is cached.
 *  If no sinks are available in the bin, the query fails.
 *
 * GST_QUERY_POSITION
 *
 * The query is sent to all sink elements in the bin and the
 *  MAXIMUM of all values is returned. If no sinks are available in the bin,
 *  the query fails.
 *
 * OTHERS
 *
 * the query is forwarded to all sink elements, the result
 *  of the first sink that answers the query successfully is returned. If no
 *  sink is in the bin, the query fails.
 *
 * A GstBin will by default forward any event sent to it to all sink elements.
 * If all the sinks return TRUE, the bin will also return TRUE, else FALSE is
 * returned. If no sinks are in the bin, the event handler will return TRUE.
 *
 * Last reviewed on 2012-03-28 (0.11.3)
 */
public class Bin : Element
{
	
	/** the main Gtk struct */
	protected GstBin* gstBin;
	
	
	public GstBin* getBinStruct()
	{
		return gstBin;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBin;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstBin* gstBin)
	{
		super(cast(GstElement*)gstBin);
		this.gstBin = gstBin;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstBin = cast(GstBin*)obj;
	}
	
	/** */
	public this(Element elem)
	{
		super( elem.getElementStruct() );
		this.gstBin = cast(GstBin*)elem.getElementStruct();
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(Bin)[] onDoLatencyListeners;
	/**
	 * Will be emitted when the bin needs to perform latency calculations. This
	 * signal is only emited for toplevel bins or when async-handling is
	 * enabled.
	 * Only one signal handler is invoked. If no signals are connected, the
	 * default handler is invoked, which will query and distribute the lowest
	 * possible latency to all sinks.
	 * Connect to this signal if the default latency calculations are not
	 * sufficient, like when you need different latencies for different sinks in
	 * the same pipeline.
	 */
	void addOnDoLatency(bool delegate(Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("do-latency" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"do-latency",
			cast(GCallback)&callBackDoLatency,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["do-latency"] = 1;
		}
		onDoLatencyListeners ~= dlg;
	}
	extern(C) static gboolean callBackDoLatency(GstBin* binStruct, Bin _bin)
	{
		foreach ( bool delegate(Bin) dlg ; _bin.onDoLatencyListeners )
		{
			if ( dlg(_bin) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(Element, Bin)[] onElementAddedListeners;
	/**
	 * Will be emitted after the element was added to the bin.
	 */
	void addOnElementAdded(void delegate(Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("element-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"element-added",
			cast(GCallback)&callBackElementAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["element-added"] = 1;
		}
		onElementAddedListeners ~= dlg;
	}
	extern(C) static void callBackElementAdded(GstBin* binStruct, GstElement* element, Bin _bin)
	{
		foreach ( void delegate(Element, Bin) dlg ; _bin.onElementAddedListeners )
		{
			dlg(ObjectG.getDObject!(Element)(element), _bin);
		}
	}
	
	void delegate(Element, Bin)[] onElementRemovedListeners;
	/**
	 * Will be emitted after the element was removed from the bin.
	 */
	void addOnElementRemoved(void delegate(Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("element-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"element-removed",
			cast(GCallback)&callBackElementRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["element-removed"] = 1;
		}
		onElementRemovedListeners ~= dlg;
	}
	extern(C) static void callBackElementRemoved(GstBin* binStruct, GstElement* element, Bin _bin)
	{
		foreach ( void delegate(Element, Bin) dlg ; _bin.onElementRemovedListeners )
		{
			dlg(ObjectG.getDObject!(Element)(element), _bin);
		}
	}
	
	
	/**
	 * Creates a new bin with the given name.
	 * Params:
	 * name = the name of the new bin
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GstElement * gst_bin_new (const gchar *name);
		auto p = gst_bin_new(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_bin_new(Str.toStringz(name))");
		}
		this(cast(GstBin*) p);
	}
	
	/**
	 * Adds the given element to the bin. Sets the element's parent, and thus
	 * takes ownership of the element. An element can only be added to one bin.
	 * If the element's pads are linked to other pads, the pads will be unlinked
	 * before the element is added to the bin.
	 * Note
	 * When you add an element to an already-running pipeline, you will have to
	 * take care to set the state of the newly-added element to the desired
	 * state (usually PLAYING or PAUSED, same you set the pipeline to originally)
	 * with gst_element_set_state(), or use gst_element_sync_state_with_parent().
	 * The bin or pipeline will not take care of this for you.
	 * MT safe.
	 * Params:
	 * element = the GstElement to add. [transfer full]
	 * Returns: TRUE if the element could be added, FALSE if the bin does not want to accept the element.
	 */
	public int add(Element element)
	{
		// gboolean gst_bin_add (GstBin *bin,  GstElement *element);
		return gst_bin_add(gstBin, (element is null) ? null : element.getElementStruct());
	}
	
	/**
	 * Removes the element from the bin, unparenting it as well.
	 * Unparenting the element means that the element will be dereferenced,
	 * so if the bin holds the only reference to the element, the element
	 * will be freed in the process of removing it from the bin. If you
	 * want the element to still exist after removing, you need to call
	 * gst_object_ref() before removing it from the bin.
	 * If the element's pads are linked to other pads, the pads will be unlinked
	 * before the element is removed from the bin.
	 * MT safe.
	 * Params:
	 * element = the GstElement to remove. [transfer none]
	 * Returns: TRUE if the element could be removed, FALSE if the bin does not want to remove the element.
	 */
	public int remove(Element element)
	{
		// gboolean gst_bin_remove (GstBin *bin,  GstElement *element);
		return gst_bin_remove(gstBin, (element is null) ? null : element.getElementStruct());
	}
	
	/**
	 * Gets the element with the given name from a bin. This
	 * function recurses into child bins.
	 * Returns NULL if no element with the given name is found in the bin.
	 * MT safe. Caller owns returned reference.
	 * Params:
	 * name = the element name to search for
	 * Returns: the GstElement with the given name, or NULL. [transfer full]
	 */
	public Element getByName(string name)
	{
		// GstElement * gst_bin_get_by_name (GstBin *bin,  const gchar *name);
		auto p = gst_bin_get_by_name(gstBin, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p);
	}
	
	/**
	 * Gets the element with the given name from this bin. If the
	 * element is not found, a recursion is performed on the parent bin.
	 * Params:
	 * name = the element name to search for
	 * Returns: the GstElement with the given name, or NULL. [transfer full]
	 */
	public Element getByNameRecurseUp(string name)
	{
		// GstElement * gst_bin_get_by_name_recurse_up (GstBin *bin,  const gchar *name);
		auto p = gst_bin_get_by_name_recurse_up(gstBin, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p);
	}
	
	/**
	 * Looks for an element inside the bin that implements the given
	 * interface. If such an element is found, it returns the element.
	 * You can cast this element to the given interface afterwards. If you want
	 * all elements that implement the interface, use
	 * gst_bin_iterate_all_by_interface(). This function recurses into child bins.
	 * MT safe. Caller owns returned reference.
	 * Params:
	 * iface = the GType of an interface
	 * Returns: A GstElement inside the bin implementing the interface. [transfer full]
	 */
	public Element getByInterface(GType iface)
	{
		// GstElement * gst_bin_get_by_interface (GstBin *bin,  GType iface);
		auto p = gst_bin_get_by_interface(gstBin, iface);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p);
	}
	
	/**
	 * Gets an iterator for the elements in this bin.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Returns: a GstIterator of GstElement, or NULL. [transfer full]
	 */
	public Iterator iterateElements()
	{
		// GstIterator * gst_bin_iterate_elements (GstBin *bin);
		auto p = gst_bin_iterate_elements(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Gets an iterator for the elements in this bin.
	 * This iterator recurses into GstBin children.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Returns: a GstIterator of GstElement, or NULL. [transfer full]
	 */
	public Iterator iterateRecurse()
	{
		// GstIterator * gst_bin_iterate_recurse (GstBin *bin);
		auto p = gst_bin_iterate_recurse(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Gets an iterator for all elements in the bin that have the
	 * GST_ELEMENT_FLAG_SINK flag set.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Returns: a GstIterator of GstElement, or NULL. [transfer full]
	 */
	public Iterator iterateSinks()
	{
		// GstIterator * gst_bin_iterate_sinks (GstBin *bin);
		auto p = gst_bin_iterate_sinks(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Gets an iterator for the elements in this bin in topologically
	 * sorted order. This means that the elements are returned from
	 * the most downstream elements (sinks) to the sources.
	 * This function is used internally to perform the state changes
	 * of the bin elements and for clock selection.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Returns: a GstIterator of GstElement, or NULL. [transfer full]
	 */
	public Iterator iterateSorted()
	{
		// GstIterator * gst_bin_iterate_sorted (GstBin *bin);
		auto p = gst_bin_iterate_sorted(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Gets an iterator for all elements in the bin that have the
	 * GST_ELEMENT_FLAG_SOURCE flag set.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Returns: a GstIterator of GstElement, or NULL. [transfer full]
	 */
	public Iterator iterateSources()
	{
		// GstIterator * gst_bin_iterate_sources (GstBin *bin);
		auto p = gst_bin_iterate_sources(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Looks for all elements inside the bin that implements the given
	 * interface. You can safely cast all returned elements to the given interface.
	 * The function recurses inside child bins. The iterator will yield a series
	 * of GstElement that should be unreffed after use.
	 * Each element yielded by the iterator will have its refcount increased, so
	 * unref after use.
	 * MT safe. Caller owns returned value.
	 * Params:
	 * iface = the GType of an interface
	 * Returns: a GstIterator of GstElement for all elements in the bin implementing the given interface, or NULL. [transfer full]
	 */
	public Iterator iterateAllByInterface(GType iface)
	{
		// GstIterator * gst_bin_iterate_all_by_interface (GstBin *bin,  GType iface);
		auto p = gst_bin_iterate_all_by_interface(gstBin, iface);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Query bin for the current latency using and reconfigures this latency to all the
	 * elements with a LATENCY event.
	 * This method is typically called on the pipeline when a GST_MESSAGE_LATENCY
	 * is posted on the bus.
	 * This function simply emits the 'do-latency' signal so any custom latency
	 * calculations will be performed.
	 * Returns: TRUE if the latency could be queried and reconfigured.
	 */
	public int recalculateLatency()
	{
		// gboolean gst_bin_recalculate_latency (GstBin *bin);
		return gst_bin_recalculate_latency(gstBin);
	}
	
	/**
	 * Recursively looks for elements with an unlinked pad of the given
	 * direction within the specified bin and returns an unlinked pad
	 * if one is found, or NULL otherwise. If a pad is found, the caller
	 * owns a reference to it and should use gst_object_unref() on the
	 * pad when it is not needed any longer.
	 * Params:
	 * direction = whether to look for an unlinked source or sink pad
	 * Returns: unlinked pad of the given direction, or NULL. [transfer full]
	 */
	public Pad findUnlinkedPad(GstPadDirection direction)
	{
		// GstPad * gst_bin_find_unlinked_pad (GstBin *bin,  GstPadDirection direction);
		auto p = gst_bin_find_unlinked_pad(gstBin, direction);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pad)(cast(GstPad*) p);
	}
}
