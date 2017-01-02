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


module gstreamer.Bin;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.ChildProxyIF;
private import gstreamer.ChildProxyT;
private import gstreamer.Element;
private import gstreamer.Iterator;
private import gstreamer.Pad;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * #GstBin is an element that can contain other #GstElement, allowing them to be
 * managed as a group.
 * Pads from the child elements can be ghosted to the bin, see #GstGhostPad.
 * This makes the bin look like any other elements and enables creation of
 * higher-level abstraction elements.
 * 
 * A new #GstBin is created with gst_bin_new(). Use a #GstPipeline instead if you
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
 * The #GstBin::element-added signal is fired whenever a new element is added to
 * the bin. Likewise the #GstBin::element-removed signal is fired whenever an
 * element is removed from the bin.
 * 
 * <refsect2><title>Notes</title>
 * <para>
 * A #GstBin internally intercepts every #GstMessage posted by its children and
 * implements the following default behaviour for each of them:
 * <variablelist>
 * <varlistentry>
 * <term>GST_MESSAGE_EOS</term>
 * <listitem><para>This message is only posted by sinks in the PLAYING
 * state. If all sinks posted the EOS message, this bin will post and EOS
 * message upwards.</para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_MESSAGE_SEGMENT_START</term>
 * <listitem><para>just collected and never forwarded upwards.
 * The messages are used to decide when all elements have completed playback
 * of their segment.</para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_MESSAGE_SEGMENT_DONE</term>
 * <listitem><para> Is posted by #GstBin when all elements that posted
 * a SEGMENT_START have posted a SEGMENT_DONE.</para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_MESSAGE_DURATION_CHANGED</term>
 * <listitem><para> Is posted by an element that detected a change
 * in the stream duration. The default bin behaviour is to clear any
 * cached duration values so that the next duration query will perform
 * a full duration recalculation. The duration change is posted to the
 * application so that it can refetch the new duration with a duration
 * query. Note that these messages can be posted before the bin is
 * prerolled, in which case the duration query might fail.
 * </para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_MESSAGE_CLOCK_LOST</term>
 * <listitem><para> This message is posted by an element when it
 * can no longer provide a clock. The default bin behaviour is to
 * check if the lost clock was the one provided by the bin. If so and
 * the bin is currently in the PLAYING state, the message is forwarded to
 * the bin parent.
 * This message is also generated when a clock provider is removed from
 * the bin. If this message is received by the application, it should
 * PAUSE the pipeline and set it back to PLAYING to force a new clock
 * distribution.
 * </para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_MESSAGE_CLOCK_PROVIDE</term>
 * <listitem><para> This message is generated when an element
 * can provide a clock. This mostly happens when a new clock
 * provider is added to the bin. The default behaviour of the bin is to
 * mark the currently selected clock as dirty, which will perform a clock
 * recalculation the next time the bin is asked to provide a clock.
 * This message is never sent tot the application but is forwarded to
 * the parent of the bin.
 * </para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>OTHERS</term>
 * <listitem><para> posted upwards.</para></listitem>
 * </varlistentry>
 * </variablelist>
 * 
 * 
 * A #GstBin implements the following default behaviour for answering to a
 * #GstQuery:
 * <variablelist>
 * <varlistentry>
 * <term>GST_QUERY_DURATION</term>
 * <listitem><para>If the query has been asked before with the same format
 * and the bin is a toplevel bin (ie. has no parent),
 * use the cached previous value. If no previous value was cached, the
 * query is sent to all sink elements in the bin and the MAXIMUM of all
 * values is returned. If the bin is a toplevel bin the value is cached.
 * If no sinks are available in the bin, the query fails.
 * </para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>GST_QUERY_POSITION</term>
 * <listitem><para>The query is sent to all sink elements in the bin and the
 * MAXIMUM of all values is returned. If no sinks are available in the bin,
 * the query fails.
 * </para></listitem>
 * </varlistentry>
 * <varlistentry>
 * <term>OTHERS</term>
 * <listitem><para>the query is forwarded to all sink elements, the result
 * of the first sink that answers the query successfully is returned. If no
 * sink is in the bin, the query fails.</para></listitem>
 * </varlistentry>
 * </variablelist>
 * 
 * A #GstBin will by default forward any event sent to it to all sink elements.
 * If all the sinks return %TRUE, the bin will also return %TRUE, else %FALSE is
 * returned. If no sinks are in the bin, the event handler will return %TRUE.
 * 
 * </para>
 * </refsect2>
 */
public class Bin : Element, ChildProxyIF
{
	/** the main Gtk struct */
	protected GstBin* gstBin;

	/** Get the main Gtk struct */
	public GstBin* getBinStruct()
	{
		return gstBin;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBin;
	}

	protected override void setStruct(GObject* obj)
	{
		gstBin = cast(GstBin*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBin* gstBin, bool ownedRef = false)
	{
		this.gstBin = gstBin;
		super(cast(GstElement*)gstBin, ownedRef);
	}

	// add the ChildProxy capabilities
	mixin ChildProxyT!(GstBin);

	/** */
	public this(Element elem)
	{
		super( elem.getElementStruct(), true );
		this.gstBin = cast(GstBin*)elem.getElementStruct();
	}
	
	/**
	 * Adds a list of elements to a bin.
	 * This function is equivalent to calling add() for each member of the list.
	 * The return value of each add() is ignored.
	 */
	public void addMany( Element[] elems... )
	{
		foreach( e; elems ) add( e );
	}
	
	/**
	 * Remove a list of elements from a bin.
	 * This function is equivalent to calling remove() with each member of the list.
	 */
	public void removeMany( Element[] elems... )
	{
		foreach( e; elems ) remove( e );
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_bin_get_type();
	}

	/**
	 * Creates a new bin with the given name.
	 *
	 * Params:
	 *     name = the name of the new bin
	 *
	 * Return: a new #GstBin
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto p = gst_bin_new(Str.toStringz(name));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstBin*) p);
	}

	/**
	 * Adds the given element to the bin.  Sets the element's parent, and thus
	 * takes ownership of the element. An element can only be added to one bin.
	 *
	 * If the element's pads are linked to other pads, the pads will be unlinked
	 * before the element is added to the bin.
	 *
	 * <note>
	 * When you add an element to an already-running pipeline, you will have to
	 * take care to set the state of the newly-added element to the desired
	 * state (usually PLAYING or PAUSED, same you set the pipeline to originally)
	 * with gst_element_set_state(), or use gst_element_sync_state_with_parent().
	 * The bin or pipeline will not take care of this for you.
	 * </note>
	 *
	 * MT safe.
	 *
	 * Params:
	 *     element = the #GstElement to add
	 *
	 * Return: %TRUE if the element could be added, %FALSE if
	 *     the bin does not want to accept the element.
	 */
	public bool add(Element element)
	{
		return gst_bin_add(gstBin, (element is null) ? null : element.getElementStruct()) != 0;
	}

	/**
	 * Recursively looks for elements with an unlinked pad of the given
	 * direction within the specified bin and returns an unlinked pad
	 * if one is found, or %NULL otherwise. If a pad is found, the caller
	 * owns a reference to it and should use gst_object_unref() on the
	 * pad when it is not needed any longer.
	 *
	 * Params:
	 *     direction = whether to look for an unlinked source or sink pad
	 *
	 * Return: unlinked pad of the given
	 *     direction, %NULL.
	 */
	public Pad findUnlinkedPad(GstPadDirection direction)
	{
		auto p = gst_bin_find_unlinked_pad(gstBin, direction);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * Looks for an element inside the bin that implements the given
	 * interface. If such an element is found, it returns the element.
	 * You can cast this element to the given interface afterwards.  If you want
	 * all elements that implement the interface, use
	 * gst_bin_iterate_all_by_interface(). This function recurses into child bins.
	 *
	 * MT safe.  Caller owns returned reference.
	 *
	 * Params:
	 *     iface = the #GType of an interface
	 *
	 * Return: A #GstElement inside the bin implementing the interface
	 */
	public Element getByInterface(GType iface)
	{
		auto p = gst_bin_get_by_interface(gstBin, iface);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p, true);
	}

	/**
	 * Gets the element with the given name from a bin. This
	 * function recurses into child bins.
	 *
	 * Returns %NULL if no element with the given name is found in the bin.
	 *
	 * MT safe.  Caller owns returned reference.
	 *
	 * Params:
	 *     name = the element name to search for
	 *
	 * Return: the #GstElement with the given
	 *     name, or %NULL
	 */
	public Element getByName(string name)
	{
		auto p = gst_bin_get_by_name(gstBin, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p, true);
	}

	/**
	 * Gets the element with the given name from this bin. If the
	 * element is not found, a recursion is performed on the parent bin.
	 *
	 * Returns %NULL if:
	 * - no element with the given name is found in the bin
	 *
	 * MT safe.  Caller owns returned reference.
	 *
	 * Params:
	 *     name = the element name to search for
	 *
	 * Return: the #GstElement with the given
	 *     name, or %NULL
	 */
	public Element getByNameRecurseUp(string name)
	{
		auto p = gst_bin_get_by_name_recurse_up(gstBin, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p, true);
	}

	/**
	 * Return the suppressed flags of the bin.
	 *
	 * MT safe.
	 *
	 * Return: the bin's suppressed #GstElementFlags.
	 *
	 * Since: 1.10
	 */
	public GstElementFlags getSuppressedFlags()
	{
		return gst_bin_get_suppressed_flags(gstBin);
	}

	/**
	 * Looks for all elements inside the bin that implements the given
	 * interface. You can safely cast all returned elements to the given interface.
	 * The function recurses inside child bins. The iterator will yield a series
	 * of #GstElement that should be unreffed after use.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Params:
	 *     iface = the #GType of an interface
	 *
	 * Return: a #GstIterator of #GstElement
	 *     for all elements in the bin implementing the given interface,
	 *     or %NULL
	 */
	public Iterator iterateAllByInterface(GType iface)
	{
		auto p = gst_bin_iterate_all_by_interface(gstBin, iface);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Gets an iterator for the elements in this bin.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Return: a #GstIterator of #GstElement,
	 *     or %NULL
	 */
	public Iterator iterateElements()
	{
		auto p = gst_bin_iterate_elements(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Gets an iterator for the elements in this bin.
	 * This iterator recurses into GstBin children.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Return: a #GstIterator of #GstElement,
	 *     or %NULL
	 */
	public Iterator iterateRecurse()
	{
		auto p = gst_bin_iterate_recurse(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Gets an iterator for all elements in the bin that have the
	 * #GST_ELEMENT_FLAG_SINK flag set.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Return: a #GstIterator of #GstElement,
	 *     or %NULL
	 */
	public Iterator iterateSinks()
	{
		auto p = gst_bin_iterate_sinks(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Gets an iterator for the elements in this bin in topologically
	 * sorted order. This means that the elements are returned from
	 * the most downstream elements (sinks) to the sources.
	 *
	 * This function is used internally to perform the state changes
	 * of the bin elements and for clock selection.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Return: a #GstIterator of #GstElement,
	 *     or %NULL
	 */
	public Iterator iterateSorted()
	{
		auto p = gst_bin_iterate_sorted(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Gets an iterator for all elements in the bin that have the
	 * #GST_ELEMENT_FLAG_SOURCE flag set.
	 *
	 * MT safe.  Caller owns returned value.
	 *
	 * Return: a #GstIterator of #GstElement,
	 *     or %NULL
	 */
	public Iterator iterateSources()
	{
		auto p = gst_bin_iterate_sources(gstBin);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Query @bin for the current latency using and reconfigures this latency to all the
	 * elements with a LATENCY event.
	 *
	 * This method is typically called on the pipeline when a #GST_MESSAGE_LATENCY
	 * is posted on the bus.
	 *
	 * This function simply emits the 'do-latency' signal so any custom latency
	 * calculations will be performed.
	 *
	 * Return: %TRUE if the latency could be queried and reconfigured.
	 */
	public bool recalculateLatency()
	{
		return gst_bin_recalculate_latency(gstBin) != 0;
	}

	/**
	 * Removes the element from the bin, unparenting it as well.
	 * Unparenting the element means that the element will be dereferenced,
	 * so if the bin holds the only reference to the element, the element
	 * will be freed in the process of removing it from the bin.  If you
	 * want the element to still exist after removing, you need to call
	 * gst_object_ref() before removing it from the bin.
	 *
	 * If the element's pads are linked to other pads, the pads will be unlinked
	 * before the element is removed from the bin.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     element = the #GstElement to remove
	 *
	 * Return: %TRUE if the element could be removed, %FALSE if
	 *     the bin does not want to remove the element.
	 */
	public bool remove(Element element)
	{
		return gst_bin_remove(gstBin, (element is null) ? null : element.getElementStruct()) != 0;
	}

	/**
	 * Suppress the given flags on the bin. #GstElementFlags of a
	 * child element are propagated when it is added to the bin.
	 * When suppressed flags are set, those specified flags will
	 * not be propagated to the bin.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     flags = the #GstElementFlags to suppress
	 *
	 * Since: 1.10
	 */
	public void setSuppressedFlags(GstElementFlags flags)
	{
		gst_bin_set_suppressed_flags(gstBin, flags);
	}

	/**
	 * Synchronizes the state of every child of @bin with the state
	 * of @bin. See also gst_element_sync_state_with_parent().
	 *
	 * Return: %TRUE if syncing the state was successful for all children,
	 *     otherwise %FALSE.
	 *
	 * Since: 1.6
	 */
	public bool syncChildrenStates()
	{
		return gst_bin_sync_children_states(gstBin) != 0;
	}

	protected class OnDeepElementAddedDelegateWrapper
	{
		void delegate(Bin, Element, Bin) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Bin, Element, Bin) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeepElementAddedDelegateWrapper[] onDeepElementAddedListeners;

	/**
	 * Will be emitted after the element was added to sub_bin.
	 *
	 * Params:
	 *     subBin = the #GstBin the element was added to
	 *     element = the #GstElement that was added to @sub_bin
	 *
	 * Since: 1.10
	 */
	gulong addOnDeepElementAdded(void delegate(Bin, Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeepElementAddedListeners ~= new OnDeepElementAddedDelegateWrapper(dlg, 0, connectFlags);
		onDeepElementAddedListeners[onDeepElementAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"deep-element-added",
			cast(GCallback)&callBackDeepElementAdded,
			cast(void*)onDeepElementAddedListeners[onDeepElementAddedListeners.length - 1],
			cast(GClosureNotify)&callBackDeepElementAddedDestroy,
			connectFlags);
		return onDeepElementAddedListeners[onDeepElementAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeepElementAdded(GstBin* binStruct, GstBin* subBin, GstElement* element,OnDeepElementAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Bin)(subBin), ObjectG.getDObject!(Element)(element), wrapper.outer);
	}
	
	extern(C) static void callBackDeepElementAddedDestroy(OnDeepElementAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeepElementAdded(wrapper);
	}

	protected void internalRemoveOnDeepElementAdded(OnDeepElementAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onDeepElementAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeepElementAddedListeners[index] = null;
				onDeepElementAddedListeners = std.algorithm.remove(onDeepElementAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDeepElementRemovedDelegateWrapper
	{
		void delegate(Bin, Element, Bin) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Bin, Element, Bin) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeepElementRemovedDelegateWrapper[] onDeepElementRemovedListeners;

	/**
	 * Will be emitted after the element was removed from sub_bin.
	 *
	 * Params:
	 *     subBin = the #GstBin the element was removed from
	 *     element = the #GstElement that was removed from @sub_bin
	 *
	 * Since: 1.10
	 */
	gulong addOnDeepElementRemoved(void delegate(Bin, Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeepElementRemovedListeners ~= new OnDeepElementRemovedDelegateWrapper(dlg, 0, connectFlags);
		onDeepElementRemovedListeners[onDeepElementRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"deep-element-removed",
			cast(GCallback)&callBackDeepElementRemoved,
			cast(void*)onDeepElementRemovedListeners[onDeepElementRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackDeepElementRemovedDestroy,
			connectFlags);
		return onDeepElementRemovedListeners[onDeepElementRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeepElementRemoved(GstBin* binStruct, GstBin* subBin, GstElement* element,OnDeepElementRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Bin)(subBin), ObjectG.getDObject!(Element)(element), wrapper.outer);
	}
	
	extern(C) static void callBackDeepElementRemovedDestroy(OnDeepElementRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeepElementRemoved(wrapper);
	}

	protected void internalRemoveOnDeepElementRemoved(OnDeepElementRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onDeepElementRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeepElementRemovedListeners[index] = null;
				onDeepElementRemovedListeners = std.algorithm.remove(onDeepElementRemovedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDoLatencyDelegateWrapper
	{
		bool delegate(Bin) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(Bin) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDoLatencyDelegateWrapper[] onDoLatencyListeners;

	/**
	 * Will be emitted when the bin needs to perform latency calculations. This
	 * signal is only emitted for toplevel bins or when async-handling is
	 * enabled.
	 *
	 * Only one signal handler is invoked. If no signals are connected, the
	 * default handler is invoked, which will query and distribute the lowest
	 * possible latency to all sinks.
	 *
	 * Connect to this signal if the default latency calculations are not
	 * sufficient, like when you need different latencies for different sinks in
	 * the same pipeline.
	 */
	gulong addOnDoLatency(bool delegate(Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDoLatencyListeners ~= new OnDoLatencyDelegateWrapper(dlg, 0, connectFlags);
		onDoLatencyListeners[onDoLatencyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"do-latency",
			cast(GCallback)&callBackDoLatency,
			cast(void*)onDoLatencyListeners[onDoLatencyListeners.length - 1],
			cast(GClosureNotify)&callBackDoLatencyDestroy,
			connectFlags);
		return onDoLatencyListeners[onDoLatencyListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackDoLatency(GstBin* binStruct,OnDoLatencyDelegateWrapper wrapper)
	{
		return wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackDoLatencyDestroy(OnDoLatencyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDoLatency(wrapper);
	}

	protected void internalRemoveOnDoLatency(OnDoLatencyDelegateWrapper source)
	{
		foreach(index, wrapper; onDoLatencyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDoLatencyListeners[index] = null;
				onDoLatencyListeners = std.algorithm.remove(onDoLatencyListeners, index);
				break;
			}
		}
	}
	

	protected class OnElementAddedDelegateWrapper
	{
		void delegate(Element, Bin) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Element, Bin) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnElementAddedDelegateWrapper[] onElementAddedListeners;

	/**
	 * Will be emitted after the element was added to the bin.
	 *
	 * Params:
	 *     element = the #GstElement that was added to the bin
	 */
	gulong addOnElementAdded(void delegate(Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onElementAddedListeners ~= new OnElementAddedDelegateWrapper(dlg, 0, connectFlags);
		onElementAddedListeners[onElementAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"element-added",
			cast(GCallback)&callBackElementAdded,
			cast(void*)onElementAddedListeners[onElementAddedListeners.length - 1],
			cast(GClosureNotify)&callBackElementAddedDestroy,
			connectFlags);
		return onElementAddedListeners[onElementAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackElementAdded(GstBin* binStruct, GstElement* element,OnElementAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Element)(element), wrapper.outer);
	}
	
	extern(C) static void callBackElementAddedDestroy(OnElementAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnElementAdded(wrapper);
	}

	protected void internalRemoveOnElementAdded(OnElementAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onElementAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onElementAddedListeners[index] = null;
				onElementAddedListeners = std.algorithm.remove(onElementAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnElementRemovedDelegateWrapper
	{
		void delegate(Element, Bin) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Element, Bin) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnElementRemovedDelegateWrapper[] onElementRemovedListeners;

	/**
	 * Will be emitted after the element was removed from the bin.
	 *
	 * Params:
	 *     element = the #GstElement that was removed from the bin
	 */
	gulong addOnElementRemoved(void delegate(Element, Bin) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onElementRemovedListeners ~= new OnElementRemovedDelegateWrapper(dlg, 0, connectFlags);
		onElementRemovedListeners[onElementRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"element-removed",
			cast(GCallback)&callBackElementRemoved,
			cast(void*)onElementRemovedListeners[onElementRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackElementRemovedDestroy,
			connectFlags);
		return onElementRemovedListeners[onElementRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackElementRemoved(GstBin* binStruct, GstElement* element,OnElementRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Element)(element), wrapper.outer);
	}
	
	extern(C) static void callBackElementRemovedDestroy(OnElementRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnElementRemoved(wrapper);
	}

	protected void internalRemoveOnElementRemoved(OnElementRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onElementRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onElementRemovedListeners[index] = null;
				onElementRemovedListeners = std.algorithm.remove(onElementRemovedListeners, index);
				break;
			}
		}
	}
	
}
