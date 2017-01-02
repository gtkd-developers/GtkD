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


module gstreamer.Pad;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Caps;
private import gstreamer.Element;
private import gstreamer.Event;
private import gstreamer.Iterator;
private import gstreamer.ObjectGst;
private import gstreamer.PadTemplate;
private import gstreamer.Query;
private import gstreamer.StaticPadTemplate;
private import gstreamer.Stream;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * A #GstElement is linked to other elements via "pads", which are extremely
 * light-weight generic link points.
 * 
 * Pads have a #GstPadDirection, source pads produce data, sink pads consume
 * data.
 * 
 * Pads are typically created from a #GstPadTemplate with
 * gst_pad_new_from_template() and are then added to a #GstElement. This usually
 * happens when the element is created but it can also happen dynamically based
 * on the data that the element is processing or based on the pads that the
 * application requests.
 * 
 * Pads without pad templates can be created with gst_pad_new(),
 * which takes a direction and a name as an argument.  If the name is %NULL,
 * then a guaranteed unique name will be assigned to it.
 * 
 * A #GstElement creating a pad will typically use the various
 * gst_pad_set_*_function() calls to register callbacks for events, queries or
 * dataflow on the pads.
 * 
 * gst_pad_get_parent() will retrieve the #GstElement that owns the pad.
 * 
 * After two pads are retrieved from an element by gst_element_get_static_pad(),
 * the pads can be linked with gst_pad_link(). (For quick links,
 * you can also use gst_element_link(), which will make the obvious
 * link for you if it's straightforward.). Pads can be unlinked again with
 * gst_pad_unlink(). gst_pad_get_peer() can be used to check what the pad is
 * linked to.
 * 
 * Before dataflow is possible on the pads, they need to be activated with
 * gst_pad_set_active().
 * 
 * gst_pad_query() and gst_pad_peer_query() can be used to query various
 * properties of the pad and the stream.
 * 
 * To send a #GstEvent on a pad, use gst_pad_send_event() and
 * gst_pad_push_event(). Some events will be sticky on the pad, meaning that
 * after they pass on the pad they can be queried later with
 * gst_pad_get_sticky_event() and gst_pad_sticky_events_foreach().
 * gst_pad_get_current_caps() and gst_pad_has_current_caps() are convenience
 * functions to query the current sticky CAPS event on a pad.
 * 
 * GstElements will use gst_pad_push() and gst_pad_pull_range() to push out
 * or pull in a buffer.
 * 
 * The dataflow, events and queries that happen on a pad can be monitored with
 * probes that can be installed with gst_pad_add_probe(). gst_pad_is_blocked()
 * can be used to check if a block probe is installed on the pad.
 * gst_pad_is_blocking() checks if the blocking probe is currently blocking the
 * pad. gst_pad_remove_probe() is used to remove a previously installed probe
 * and unblock blocking probes if any.
 * 
 * Pad have an offset that can be retrieved with gst_pad_get_offset(). This
 * offset will be applied to the running_time of all data passing over the pad.
 * gst_pad_set_offset() can be used to change the offset.
 * 
 * Convenience functions exist to start, pause and stop the task on a pad with
 * gst_pad_start_task(), gst_pad_pause_task() and gst_pad_stop_task()
 * respectively.
 */
public class Pad : ObjectGst
{
	/** the main Gtk struct */
	protected GstPad* gstPad;

	/** Get the main Gtk struct */
	public GstPad* getPadStruct()
	{
		return gstPad;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPad;
	}

	protected override void setStruct(GObject* obj)
	{
		gstPad = cast(GstPad*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPad* gstPad, bool ownedRef = false)
	{
		this.gstPad = gstPad;
		super(cast(GstObject*)gstPad, ownedRef);
	}

	/*
	 * Sets our main struct and passes it to the parent class.
	 * This one is additional to make gstreamer.Element addOnPadAdded()
	 * working without changes.
	 */
	public this (GObject* gstPad)
	{
		super(cast(GstObject*)gstPad);
		this.gstPad = cast(GstPad*) gstPad;
	}
	
	/**
	 * Queries a pad for the stream position.
	 * This is a convenience function for gstreamerD.
	 * Returns:
	 *  The current position in nanoseconds - GstFormat.TIME.
	 */
	public long queryPosition()
	{
		long cur_pos;
		queryPosition( GstFormat.TIME, cur_pos );
		return cur_pos;
	}
	
	/**
	 * Queries a pad for the stream duration.
	 * This is a convenience function for gstreamerD.
	 * Returns:
	 *  The duration in nanoseconds - GstFormat.TIME.
	 */
	public long queryDuration()
	{
		long cur_dur;
		queryDuration( GstFormat.TIME, cur_dur );
		return cur_dur;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_pad_get_type();
	}

	/**
	 * Creates a new pad with the given name in the given direction.
	 * If name is %NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 *
	 * Params:
	 *     name = the name of the new pad.
	 *     direction = the #GstPadDirection of the pad.
	 *
	 * Return: a new #GstPad, or %NULL in
	 *     case of an error.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, GstPadDirection direction)
	{
		auto p = gst_pad_new(Str.toStringz(name), direction);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstPad*) p);
	}

	/**
	 * Creates a new pad with the given name from the given static template.
	 * If name is %NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 *
	 * Params:
	 *     templ = the #GstStaticPadTemplate to use
	 *     name = the name of the pad
	 *
	 * Return: a new #GstPad, or %NULL in
	 *     case of an error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StaticPadTemplate templ, string name)
	{
		auto p = gst_pad_new_from_static_template((templ is null) ? null : templ.getStaticPadTemplateStruct(), Str.toStringz(name));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_static_template");
		}
		
		this(cast(GstPad*) p);
	}

	/**
	 * Creates a new pad with the given name from the given template.
	 * If name is %NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 *
	 * Params:
	 *     templ = the pad template to use
	 *     name = the name of the pad
	 *
	 * Return: a new #GstPad, or %NULL in
	 *     case of an error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PadTemplate templ, string name)
	{
		auto p = gst_pad_new_from_template((templ is null) ? null : templ.getPadTemplateStruct(), Str.toStringz(name));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_template");
		}
		
		this(cast(GstPad*) p);
	}

	/**
	 * Gets a string representing the given pad-link return.
	 *
	 * Params:
	 *     ret = a #GstPadLinkReturn to get the name of.
	 *
	 * Return: a static string with the name of the pad-link return.
	 *
	 * Since: 1.4
	 */
	public static string linkGetName(GstPadLinkReturn ret)
	{
		return Str.toString(gst_pad_link_get_name(ret));
	}

	/**
	 * Activates or deactivates the given pad in @mode via dispatching to the
	 * pad's activatemodefunc. For use from within pad activation functions only.
	 *
	 * If you don't know what this is, you probably don't want to call it.
	 *
	 * Params:
	 *     mode = the requested activation mode
	 *     active = whether or not the pad should be active.
	 *
	 * Return: %TRUE if the operation was successful.
	 *
	 *     MT safe.
	 */
	public bool activateMode(GstPadMode mode, bool active)
	{
		return gst_pad_activate_mode(gstPad, mode, active) != 0;
	}

	/**
	 * Be notified of different states of pads. The provided callback is called for
	 * every state that matches @mask.
	 *
	 * Probes are called in groups: First GST_PAD_PROBE_TYPE_BLOCK probes are
	 * called, then others, then finally GST_PAD_PROBE_TYPE_IDLE. The only
	 * exception here are GST_PAD_PROBE_TYPE_IDLE probes that are called
	 * immediately if the pad is already idle while calling gst_pad_add_probe().
	 * In each of the groups, probes are called in the order in which they were
	 * added.
	 *
	 * Params:
	 *     mask = the probe mask
	 *     callback = #GstPadProbeCallback that will be called with notifications of
	 *         the pad state
	 *     userData = user data passed to the callback
	 *     destroyData = #GDestroyNotify for user_data
	 *
	 * Return: an id or 0 if no probe is pending. The id can be used to remove the
	 *     probe with gst_pad_remove_probe(). When using GST_PAD_PROBE_TYPE_IDLE it can
	 *     happen that the probe can be run immediately and if the probe returns
	 *     GST_PAD_PROBE_REMOVE this functions returns 0.
	 *
	 *     MT safe.
	 */
	public gulong addProbe(GstPadProbeType mask, GstPadProbeCallback callback, void* userData, GDestroyNotify destroyData)
	{
		return gst_pad_add_probe(gstPad, mask, callback, userData, destroyData);
	}

	/**
	 * Checks if the source pad and the sink pad are compatible so they can be
	 * linked.
	 *
	 * Params:
	 *     sinkpad = the sink #GstPad.
	 *
	 * Return: %TRUE if the pads can be linked.
	 */
	public bool canLink(Pad sinkpad)
	{
		return gst_pad_can_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct()) != 0;
	}

	/**
	 * Chain a buffer to @pad.
	 *
	 * The function returns #GST_FLOW_FLUSHING if the pad was flushing.
	 *
	 * If the buffer type is not acceptable for @pad (as negotiated with a
	 * preceding GST_EVENT_CAPS event), this function returns
	 * #GST_FLOW_NOT_NEGOTIATED.
	 *
	 * The function proceeds calling the chain function installed on @pad (see
	 * gst_pad_set_chain_function()) and the return value of that function is
	 * returned to the caller. #GST_FLOW_NOT_SUPPORTED is returned if @pad has no
	 * chain function.
	 *
	 * In all cases, success or failure, the caller loses its reference to @buffer
	 * after calling this function.
	 *
	 * Params:
	 *     buffer = the #GstBuffer to send, return GST_FLOW_ERROR
	 *         if not.
	 *
	 * Return: a #GstFlowReturn from the pad.
	 *
	 *     MT safe.
	 */
	public GstFlowReturn chain(Buffer buffer)
	{
		return gst_pad_chain(gstPad, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Chain a bufferlist to @pad.
	 *
	 * The function returns #GST_FLOW_FLUSHING if the pad was flushing.
	 *
	 * If @pad was not negotiated properly with a CAPS event, this function
	 * returns #GST_FLOW_NOT_NEGOTIATED.
	 *
	 * The function proceeds calling the chainlist function installed on @pad (see
	 * gst_pad_set_chain_list_function()) and the return value of that function is
	 * returned to the caller. #GST_FLOW_NOT_SUPPORTED is returned if @pad has no
	 * chainlist function.
	 *
	 * In all cases, success or failure, the caller loses its reference to @list
	 * after calling this function.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     list = the #GstBufferList to send, return GST_FLOW_ERROR
	 *         if not.
	 *
	 * Return: a #GstFlowReturn from the pad.
	 */
	public GstFlowReturn chainList(BufferList list)
	{
		return gst_pad_chain_list(gstPad, (list is null) ? null : list.getBufferListStruct());
	}

	/**
	 * Check and clear the #GST_PAD_FLAG_NEED_RECONFIGURE flag on @pad and return %TRUE
	 * if the flag was set.
	 *
	 * Return: %TRUE is the GST_PAD_FLAG_NEED_RECONFIGURE flag was set on @pad.
	 */
	public bool checkReconfigure()
	{
		return gst_pad_check_reconfigure(gstPad) != 0;
	}

	/**
	 * Creates a stream-id for the source #GstPad @pad by combining the
	 * upstream information with the optional @stream_id of the stream
	 * of @pad. @pad must have a parent #GstElement and which must have zero
	 * or one sinkpad. @stream_id can only be %NULL if the parent element
	 * of @pad has only a single source pad.
	 *
	 * This function generates an unique stream-id by getting the upstream
	 * stream-start event stream ID and appending @stream_id to it. If the
	 * element has no sinkpad it will generate an upstream stream-id by
	 * doing an URI query on the element and in the worst case just uses
	 * a random number. Source elements that don't implement the URI
	 * handler interface should ideally generate a unique, deterministic
	 * stream-id manually instead.
	 *
	 * Since stream IDs are sorted alphabetically, any numbers in the
	 * stream ID should be printed with a fixed number of characters,
	 * preceded by 0's, such as by using the format \%03u instead of \%u.
	 *
	 * Params:
	 *     parent = Parent #GstElement of @pad
	 *     streamId = The stream-id
	 *
	 * Return: A stream-id for @pad. g_free() after usage.
	 */
	public string createStreamId(Element parent, string streamId)
	{
		auto retStr = gst_pad_create_stream_id(gstPad, (parent is null) ? null : parent.getElementStruct(), Str.toStringz(streamId));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a stream-id for the source #GstPad @pad by combining the
	 * upstream information with the optional @stream_id of the stream
	 * of @pad. @pad must have a parent #GstElement and which must have zero
	 * or one sinkpad. @stream_id can only be %NULL if the parent element
	 * of @pad has only a single source pad.
	 *
	 * This function generates an unique stream-id by getting the upstream
	 * stream-start event stream ID and appending @stream_id to it. If the
	 * element has no sinkpad it will generate an upstream stream-id by
	 * doing an URI query on the element and in the worst case just uses
	 * a random number. Source elements that don't implement the URI
	 * handler interface should ideally generate a unique, deterministic
	 * stream-id manually instead.
	 *
	 * Params:
	 *     parent = Parent #GstElement of @pad
	 *     streamId = The stream-id
	 *     varArgs = parameters for the @stream_id format string
	 *
	 * Return: A stream-id for @pad. g_free() after usage.
	 */
	public string createStreamIdPrintfValist(Element parent, string streamId, void* varArgs)
	{
		auto retStr = gst_pad_create_stream_id_printf_valist(gstPad, (parent is null) ? null : parent.getElementStruct(), Str.toStringz(streamId), varArgs);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Invokes the default event handler for the given pad.
	 *
	 * The EOS event will pause the task associated with @pad before it is forwarded
	 * to all internally linked pads,
	 *
	 * The event is sent to all pads internally linked to @pad. This function
	 * takes ownership of @event.
	 *
	 * Params:
	 *     parent = the parent of @pad or %NULL
	 *     event = the #GstEvent to handle.
	 *
	 * Return: %TRUE if the event was sent successfully.
	 */
	public bool eventDefault(ObjectGst parent, Event event)
	{
		return gst_pad_event_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Calls @forward for all internally linked pads of @pad. This function deals with
	 * dynamically changing internal pads and will make sure that the @forward
	 * function is only called once for each pad.
	 *
	 * When @forward returns %TRUE, no further pads will be processed.
	 *
	 * Params:
	 *     forward = a #GstPadForwardFunction
	 *     userData = user data passed to @forward
	 *
	 * Return: %TRUE if one of the dispatcher functions returned %TRUE.
	 */
	public bool forward(GstPadForwardFunction forward, void* userData)
	{
		return gst_pad_forward(gstPad, forward, userData) != 0;
	}

	/**
	 * Gets the capabilities of the allowed media types that can flow through
	 * @pad and its peer.
	 *
	 * The allowed capabilities is calculated as the intersection of the results of
	 * calling gst_pad_query_caps() on @pad and its peer. The caller owns a reference
	 * on the resulting caps.
	 *
	 * Return: the allowed #GstCaps of the
	 *     pad link. Unref the caps when you no longer need it. This
	 *     function returns %NULL when @pad has no peer.
	 *
	 *     MT safe.
	 */
	public Caps getAllowedCaps()
	{
		auto p = gst_pad_get_allowed_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Gets the capabilities currently configured on @pad with the last
	 * #GST_EVENT_CAPS event.
	 *
	 * Return: the current caps of the pad with
	 *     incremented ref-count or %NULL when pad has no caps. Unref after usage.
	 */
	public Caps getCurrentCaps()
	{
		auto p = gst_pad_get_current_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Gets the direction of the pad. The direction of the pad is
	 * decided at construction time so this function does not take
	 * the LOCK.
	 *
	 * Return: the #GstPadDirection of the pad.
	 *
	 *     MT safe.
	 */
	public GstPadDirection getDirection()
	{
		return gst_pad_get_direction(gstPad);
	}

	/**
	 * Gets the private data of a pad.
	 * No locking is performed in this function.
	 *
	 * Return: a #gpointer to the private data.
	 */
	public void* getElementPrivate()
	{
		return gst_pad_get_element_private(gstPad);
	}

	/**
	 * Gets the #GstFlowReturn return from the last data passed by this pad.
	 *
	 * Since: 1.4
	 */
	public GstFlowReturn getLastFlowReturn()
	{
		return gst_pad_get_last_flow_return(gstPad);
	}

	/**
	 * Get the offset applied to the running time of @pad. @pad has to be a source
	 * pad.
	 *
	 * Return: the offset.
	 */
	public long getOffset()
	{
		return gst_pad_get_offset(gstPad);
	}

	/**
	 * Gets the template for @pad.
	 *
	 * Return: the #GstPadTemplate from which
	 *     this pad was instantiated, or %NULL if this pad has no
	 *     template. Unref after usage.
	 */
	public PadTemplate getPadTemplate()
	{
		auto p = gst_pad_get_pad_template(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p, true);
	}

	/**
	 * Gets the capabilities for @pad's template.
	 *
	 * Return: the #GstCaps of this pad template.
	 *     Unref after usage.
	 */
	public Caps getPadTemplateCaps()
	{
		auto p = gst_pad_get_pad_template_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Gets the parent of @pad, cast to a #GstElement. If a @pad has no parent or
	 * its parent is not an element, return %NULL.
	 *
	 * Return: the parent of the pad. The
	 *     caller has a reference on the parent, so unref when you're finished
	 *     with it.
	 *
	 *     MT safe.
	 */
	public Element getParentElement()
	{
		auto p = gst_pad_get_parent_element(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p, true);
	}

	/**
	 * Gets the peer of @pad. This function refs the peer pad so
	 * you need to unref it after use.
	 *
	 * Return: the peer #GstPad. Unref after usage.
	 *
	 *     MT safe.
	 */
	public Pad getPeer()
	{
		auto p = gst_pad_get_peer(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pad)(cast(GstPad*) p, true);
	}

	/**
	 * When @pad is flushing this function returns #GST_FLOW_FLUSHING
	 * immediately and @buffer is %NULL.
	 *
	 * Calls the getrange function of @pad, see #GstPadGetRangeFunction for a
	 * description of a getrange function. If @pad has no getrange function
	 * installed (see gst_pad_set_getrange_function()) this function returns
	 * #GST_FLOW_NOT_SUPPORTED.
	 *
	 * If @buffer points to a variable holding %NULL, a valid new #GstBuffer will be
	 * placed in @buffer when this function returns #GST_FLOW_OK. The new buffer
	 * must be freed with gst_buffer_unref() after usage.
	 *
	 * When @buffer points to a variable that points to a valid #GstBuffer, the
	 * buffer will be filled with the result data when this function returns
	 * #GST_FLOW_OK. If the provided buffer is larger than @size, only
	 * @size bytes will be filled in the result buffer and its size will be updated
	 * accordingly.
	 *
	 * Note that less than @size bytes can be returned in @buffer when, for example,
	 * an EOS condition is near or when @buffer is not large enough to hold @size
	 * bytes. The caller should check the result buffer size to get the result size.
	 *
	 * When this function returns any other result value than #GST_FLOW_OK, @buffer
	 * will be unchanged.
	 *
	 * This is a lowlevel function. Usually gst_pad_pull_range() is used.
	 *
	 * Params:
	 *     offset = The start offset of the buffer
	 *     size = The length of the buffer
	 *     buffer = a pointer to hold the #GstBuffer,
	 *         returns #GST_FLOW_ERROR if %NULL.
	 *
	 * Return: a #GstFlowReturn from the pad.
	 *
	 *     MT safe.
	 */
	public GstFlowReturn getRange(ulong offset, uint size, out Buffer buffer)
	{
		GstBuffer* outbuffer = null;
		
		auto p = gst_pad_get_range(gstPad, offset, size, &outbuffer);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		
		return p;
	}

	/**
	 * Returns a new reference of the sticky event of type @event_type
	 * from the event.
	 *
	 * Params:
	 *     eventType = the #GstEventType that should be retrieved.
	 *     idx = the index of the event
	 *
	 * Return: a #GstEvent of type
	 *     @event_type or %NULL when no event of @event_type was on
	 *     @pad. Unref after usage.
	 */
	public Event getStickyEvent(GstEventType eventType, uint idx)
	{
		auto p = gst_pad_get_sticky_event(gstPad, eventType, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p, true);
	}

	/**
	 * Returns the current #GstStream for the @pad, or %NULL if none has been
	 * set yet, i.e. the pad has not received a stream-start event yet.
	 *
	 * This is a convenience wrapper around gst_pad_get_sticky_event() and
	 * gst_event_parse_stream().
	 *
	 * Return: the current #GstStream for @pad, or %NULL.
	 *     unref the returned stream when no longer needed.
	 *
	 * Since: 1.10
	 */
	public Stream getStream()
	{
		auto p = gst_pad_get_stream(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Stream)(cast(GstStream*) p, true);
	}

	/**
	 * Returns the current stream-id for the @pad, or %NULL if none has been
	 * set yet, i.e. the pad has not received a stream-start event yet.
	 *
	 * This is a convenience wrapper around gst_pad_get_sticky_event() and
	 * gst_event_parse_stream_start().
	 *
	 * The returned stream-id string should be treated as an opaque string, its
	 * contents should not be interpreted.
	 *
	 * Return: a newly-allocated copy of the stream-id for
	 *     @pad, or %NULL.  g_free() the returned string when no longer
	 *     needed.
	 *
	 * Since: 1.2
	 */
	public string getStreamId()
	{
		auto retStr = gst_pad_get_stream_id(gstPad);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Check if @pad has caps set on it with a #GST_EVENT_CAPS event.
	 *
	 * Return: %TRUE when @pad has caps associated with it.
	 */
	public bool hasCurrentCaps()
	{
		return gst_pad_has_current_caps(gstPad) != 0;
	}

	/**
	 * Query if a pad is active
	 *
	 * Return: %TRUE if the pad is active.
	 *
	 *     MT safe.
	 */
	public bool isActive()
	{
		return gst_pad_is_active(gstPad) != 0;
	}

	/**
	 * Checks if the pad is blocked or not. This function returns the
	 * last requested state of the pad. It is not certain that the pad
	 * is actually blocking at this point (see gst_pad_is_blocking()).
	 *
	 * Return: %TRUE if the pad is blocked.
	 *
	 *     MT safe.
	 */
	public bool isBlocked()
	{
		return gst_pad_is_blocked(gstPad) != 0;
	}

	/**
	 * Checks if the pad is blocking or not. This is a guaranteed state
	 * of whether the pad is actually blocking on a #GstBuffer or a #GstEvent.
	 *
	 * Return: %TRUE if the pad is blocking.
	 *
	 *     MT safe.
	 */
	public bool isBlocking()
	{
		return gst_pad_is_blocking(gstPad) != 0;
	}

	/**
	 * Checks if a @pad is linked to another pad or not.
	 *
	 * Return: %TRUE if the pad is linked, %FALSE otherwise.
	 *
	 *     MT safe.
	 */
	public bool isLinked()
	{
		return gst_pad_is_linked(gstPad) != 0;
	}

	/**
	 * Gets an iterator for the pads to which the given pad is linked to inside
	 * of the parent element.
	 *
	 * Each #GstPad element yielded by the iterator will have its refcount increased,
	 * so unref after use.
	 *
	 * Free-function: gst_iterator_free
	 *
	 * Return: a new #GstIterator of #GstPad
	 *     or %NULL when the pad does not have an iterator function
	 *     configured. Use gst_iterator_free() after usage.
	 */
	public Iterator iterateInternalLinks()
	{
		auto p = gst_pad_iterate_internal_links(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Iterate the list of pads to which the given pad is linked to inside of
	 * the parent element.
	 * This is the default handler, and thus returns an iterator of all of the
	 * pads inside the parent element with opposite direction.
	 *
	 * The caller must free this iterator after use with gst_iterator_free().
	 *
	 * Params:
	 *     parent = the parent of @pad or %NULL
	 *
	 * Return: a #GstIterator of #GstPad, or %NULL if @pad
	 *     has no parent. Unref each returned pad with gst_object_unref().
	 */
	public Iterator iterateInternalLinksDefault(ObjectGst parent)
	{
		auto p = gst_pad_iterate_internal_links_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p, true);
	}

	/**
	 * Links the source pad and the sink pad.
	 *
	 * Params:
	 *     sinkpad = the sink #GstPad to link.
	 *
	 * Return: A result code indicating if the connection worked or
	 *     what went wrong.
	 *
	 *     MT Safe.
	 */
	public GstPadLinkReturn link(Pad sinkpad)
	{
		return gst_pad_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}

	/**
	 * Links the source pad and the sink pad.
	 *
	 * This variant of #gst_pad_link provides a more granular control on the
	 * checks being done when linking. While providing some considerable speedups
	 * the caller of this method must be aware that wrong usage of those flags
	 * can cause severe issues. Refer to the documentation of #GstPadLinkCheck
	 * for more information.
	 *
	 * MT Safe.
	 *
	 * Params:
	 *     sinkpad = the sink #GstPad to link.
	 *     flags = the checks to validate when linking
	 *
	 * Return: A result code indicating if the connection worked or
	 *     what went wrong.
	 */
	public GstPadLinkReturn linkFull(Pad sinkpad, GstPadLinkCheck flags)
	{
		return gst_pad_link_full(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct(), flags);
	}

	/**
	 * Links @src to @sink, creating any #GstGhostPad's in between as necessary.
	 *
	 * This is a convenience function to save having to create and add intermediate
	 * #GstGhostPad's as required for linking across #GstBin boundaries.
	 *
	 * If @src or @sink pads don't have parent elements or do not share a common
	 * ancestor, the link will fail.
	 *
	 * Params:
	 *     sink = a #GstPad
	 *
	 * Return: whether the link succeeded.
	 *
	 * Since: 1.10
	 */
	public bool linkMaybeGhosting(Pad sink)
	{
		return gst_pad_link_maybe_ghosting(gstPad, (sink is null) ? null : sink.getPadStruct()) != 0;
	}

	/**
	 * Links @src to @sink, creating any #GstGhostPad's in between as necessary.
	 *
	 * This is a convenience function to save having to create and add intermediate
	 * #GstGhostPad's as required for linking across #GstBin boundaries.
	 *
	 * If @src or @sink pads don't have parent elements or do not share a common
	 * ancestor, the link will fail.
	 *
	 * Calling gst_pad_link_maybe_ghosting_full() with
	 * @flags == %GST_PAD_LINK_CHECK_DEFAULT is the recommended way of linking
	 * pads with safety checks applied.
	 *
	 * Params:
	 *     sink = a #GstPad
	 *     flags = some #GstPadLinkCheck flags
	 *
	 * Return: whether the link succeeded.
	 *
	 * Since: 1.10
	 */
	public bool linkMaybeGhostingFull(Pad sink, GstPadLinkCheck flags)
	{
		return gst_pad_link_maybe_ghosting_full(gstPad, (sink is null) ? null : sink.getPadStruct(), flags) != 0;
	}

	/**
	 * Mark a pad for needing reconfiguration. The next call to
	 * gst_pad_check_reconfigure() will return %TRUE after this call.
	 */
	public void markReconfigure()
	{
		gst_pad_mark_reconfigure(gstPad);
	}

	/**
	 * Check the #GST_PAD_FLAG_NEED_RECONFIGURE flag on @pad and return %TRUE
	 * if the flag was set.
	 *
	 * Return: %TRUE is the GST_PAD_FLAG_NEED_RECONFIGURE flag is set on @pad.
	 */
	public bool needsReconfigure()
	{
		return gst_pad_needs_reconfigure(gstPad) != 0;
	}

	/**
	 * Pause the task of @pad. This function will also wait until the
	 * function executed by the task is finished if this function is not
	 * called from the task function.
	 *
	 * Return: a %TRUE if the task could be paused or %FALSE when the pad
	 *     has no task.
	 */
	public bool pauseTask()
	{
		return gst_pad_pause_task(gstPad) != 0;
	}

	/**
	 * Performs gst_pad_query() on the peer of @pad.
	 *
	 * The caller is responsible for both the allocation and deallocation of
	 * the query structure.
	 *
	 * Params:
	 *     query = the #GstQuery to perform.
	 *
	 * Return: %TRUE if the query could be performed. This function returns %FALSE
	 *     if @pad has no peer.
	 */
	public bool peerQuery(Query query)
	{
		return gst_pad_peer_query(gstPad, (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Check if the peer of @pad accepts @caps. If @pad has no peer, this function
	 * returns %TRUE.
	 *
	 * Params:
	 *     caps = a #GstCaps to check on the pad
	 *
	 * Return: %TRUE if the peer of @pad can accept the caps or @pad has no peer.
	 */
	public bool peerQueryAcceptCaps(Caps caps)
	{
		return gst_pad_peer_query_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Gets the capabilities of the peer connected to this pad. Similar to
	 * gst_pad_query_caps().
	 *
	 * When called on srcpads @filter contains the caps that
	 * upstream could produce in the order preferred by upstream. When
	 * called on sinkpads @filter contains the caps accepted by
	 * downstream in the preferred order. @filter might be %NULL but
	 * if it is not %NULL the returned caps will be a subset of @filter.
	 *
	 * Params:
	 *     filter = a #GstCaps filter, or %NULL.
	 *
	 * Return: the caps of the peer pad with incremented
	 *     ref-count. When there is no peer pad, this function returns @filter or,
	 *     when @filter is %NULL, ANY caps.
	 */
	public Caps peerQueryCaps(Caps filter)
	{
		auto p = gst_pad_peer_query_caps(gstPad, (filter is null) ? null : filter.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Queries the peer pad of a given sink pad to convert @src_val in @src_format
	 * to @dest_format.
	 *
	 * Params:
	 *     srcFormat = a #GstFormat to convert from.
	 *     srcVal = a value to convert.
	 *     destFormat = the #GstFormat to convert to.
	 *     destVal = a pointer to the result.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool peerQueryConvert(GstFormat srcFormat, long srcVal, GstFormat destFormat, out long destVal)
	{
		return gst_pad_peer_query_convert(gstPad, srcFormat, srcVal, destFormat, &destVal) != 0;
	}

	/**
	 * Queries the peer pad of a given sink pad for the total stream duration.
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     duration = a location in which to store the total
	 *         duration, or %NULL.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool peerQueryDuration(GstFormat format, out long duration)
	{
		return gst_pad_peer_query_duration(gstPad, format, &duration) != 0;
	}

	/**
	 * Queries the peer of a given sink pad for the stream position.
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     cur = a location in which to store the current
	 *         position, or %NULL.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool peerQueryPosition(GstFormat format, out long cur)
	{
		return gst_pad_peer_query_position(gstPad, format, &cur) != 0;
	}

	/**
	 * Checks if all internally linked pads of @pad accepts the caps in @query and
	 * returns the intersection of the results.
	 *
	 * This function is useful as a default accept caps query function for an element
	 * that can handle any stream format, but requires caps that are acceptable for
	 * all opposite pads.
	 *
	 * Params:
	 *     query = an ACCEPT_CAPS #GstQuery.
	 *
	 * Return: %TRUE if @query could be executed
	 */
	public bool proxyQueryAcceptCaps(Query query)
	{
		return gst_pad_proxy_query_accept_caps(gstPad, (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Calls gst_pad_query_caps() for all internally linked pads of @pad and returns
	 * the intersection of the results.
	 *
	 * This function is useful as a default caps query function for an element
	 * that can handle any stream format, but requires all its pads to have
	 * the same caps.  Two such elements are tee and adder.
	 *
	 * Params:
	 *     query = a CAPS #GstQuery.
	 *
	 * Return: %TRUE if @query could be executed
	 */
	public bool proxyQueryCaps(Query query)
	{
		return gst_pad_proxy_query_caps(gstPad, (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Pulls a @buffer from the peer pad or fills up a provided buffer.
	 *
	 * This function will first trigger the pad block signal if it was
	 * installed.
	 *
	 * When @pad is not linked #GST_FLOW_NOT_LINKED is returned else this
	 * function returns the result of gst_pad_get_range() on the peer pad.
	 * See gst_pad_get_range() for a list of return values and for the
	 * semantics of the arguments of this function.
	 *
	 * If @buffer points to a variable holding %NULL, a valid new #GstBuffer will be
	 * placed in @buffer when this function returns #GST_FLOW_OK. The new buffer
	 * must be freed with gst_buffer_unref() after usage. When this function
	 * returns any other result value, @buffer will still point to %NULL.
	 *
	 * When @buffer points to a variable that points to a valid #GstBuffer, the
	 * buffer will be filled with the result data when this function returns
	 * #GST_FLOW_OK. When this function returns any other result value,
	 * @buffer will be unchanged. If the provided buffer is larger than @size, only
	 * @size bytes will be filled in the result buffer and its size will be updated
	 * accordingly.
	 *
	 * Note that less than @size bytes can be returned in @buffer when, for example,
	 * an EOS condition is near or when @buffer is not large enough to hold @size
	 * bytes. The caller should check the result buffer size to get the result size.
	 *
	 * Params:
	 *     offset = The start offset of the buffer
	 *     size = The length of the buffer
	 *     buffer = a pointer to hold the #GstBuffer, returns
	 *         GST_FLOW_ERROR if %NULL.
	 *
	 * Return: a #GstFlowReturn from the peer pad.
	 *
	 *     MT safe.
	 */
	public GstFlowReturn pullRange(ulong offset, uint size, out Buffer buffer)
	{
		GstBuffer* outbuffer = null;
		
		auto p = gst_pad_pull_range(gstPad, offset, size, &outbuffer);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		
		return p;
	}

	/**
	 * Pushes a buffer to the peer of @pad.
	 *
	 * This function will call installed block probes before triggering any
	 * installed data probes.
	 *
	 * The function proceeds calling gst_pad_chain() on the peer pad and returns
	 * the value from that function. If @pad has no peer, #GST_FLOW_NOT_LINKED will
	 * be returned.
	 *
	 * In all cases, success or failure, the caller loses its reference to @buffer
	 * after calling this function.
	 *
	 * Params:
	 *     buffer = the #GstBuffer to push returns GST_FLOW_ERROR
	 *         if not.
	 *
	 * Return: a #GstFlowReturn from the peer pad.
	 *
	 *     MT safe.
	 */
	public GstFlowReturn push(Buffer buffer)
	{
		return gst_pad_push(gstPad, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Sends the event to the peer of the given pad. This function is
	 * mainly used by elements to send events to their peer
	 * elements.
	 *
	 * This function takes ownership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 *
	 * Params:
	 *     event = the #GstEvent to send to the pad.
	 *
	 * Return: %TRUE if the event was handled.
	 *
	 *     MT safe.
	 */
	public bool pushEvent(Event event)
	{
		return gst_pad_push_event(gstPad, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Pushes a buffer list to the peer of @pad.
	 *
	 * This function will call installed block probes before triggering any
	 * installed data probes.
	 *
	 * The function proceeds calling the chain function on the peer pad and returns
	 * the value from that function. If @pad has no peer, #GST_FLOW_NOT_LINKED will
	 * be returned. If the peer pad does not have any installed chainlist function
	 * every group buffer of the list will be merged into a normal #GstBuffer and
	 * chained via gst_pad_chain().
	 *
	 * In all cases, success or failure, the caller loses its reference to @list
	 * after calling this function.
	 *
	 * Params:
	 *     list = the #GstBufferList to push returns GST_FLOW_ERROR
	 *         if not.
	 *
	 * Return: a #GstFlowReturn from the peer pad.
	 *
	 *     MT safe.
	 */
	public GstFlowReturn pushList(BufferList list)
	{
		return gst_pad_push_list(gstPad, (list is null) ? null : list.getBufferListStruct());
	}

	/**
	 * Dispatches a query to a pad. The query should have been allocated by the
	 * caller via one of the type-specific allocation functions. The element that
	 * the pad belongs to is responsible for filling the query with an appropriate
	 * response, which should then be parsed with a type-specific query parsing
	 * function.
	 *
	 * Again, the caller is responsible for both the allocation and deallocation of
	 * the query structure.
	 *
	 * Please also note that some queries might need a running pipeline to work.
	 *
	 * Params:
	 *     query = the #GstQuery to perform.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool query(Query query)
	{
		return gst_pad_query(gstPad, (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Check if the given pad accepts the caps.
	 *
	 * Params:
	 *     caps = a #GstCaps to check on the pad
	 *
	 * Return: %TRUE if the pad can accept the caps.
	 */
	public bool queryAcceptCaps(Caps caps)
	{
		return gst_pad_query_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Gets the capabilities this pad can produce or consume.
	 * Note that this method doesn't necessarily return the caps set by sending a
	 * gst_event_new_caps() - use gst_pad_get_current_caps() for that instead.
	 * gst_pad_query_caps returns all possible caps a pad can operate with, using
	 * the pad's CAPS query function, If the query fails, this function will return
	 * @filter, if not %NULL, otherwise ANY.
	 *
	 * When called on sinkpads @filter contains the caps that
	 * upstream could produce in the order preferred by upstream. When
	 * called on srcpads @filter contains the caps accepted by
	 * downstream in the preferred order. @filter might be %NULL but
	 * if it is not %NULL the returned caps will be a subset of @filter.
	 *
	 * Note that this function does not return writable #GstCaps, use
	 * gst_caps_make_writable() before modifying the caps.
	 *
	 * Params:
	 *     filter = suggested #GstCaps, or %NULL
	 *
	 * Return: the caps of the pad with incremented ref-count.
	 */
	public Caps queryCaps(Caps filter)
	{
		auto p = gst_pad_query_caps(gstPad, (filter is null) ? null : filter.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Queries a pad to convert @src_val in @src_format to @dest_format.
	 *
	 * Params:
	 *     srcFormat = a #GstFormat to convert from.
	 *     srcVal = a value to convert.
	 *     destFormat = the #GstFormat to convert to.
	 *     destVal = a pointer to the result.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool queryConvert(GstFormat srcFormat, long srcVal, GstFormat destFormat, out long destVal)
	{
		return gst_pad_query_convert(gstPad, srcFormat, srcVal, destFormat, &destVal) != 0;
	}

	/**
	 * Invokes the default query handler for the given pad.
	 * The query is sent to all pads internally linked to @pad. Note that
	 * if there are many possible sink pads that are internally linked to
	 * @pad, only one will be sent the query.
	 * Multi-sinkpad elements should implement custom query handlers.
	 *
	 * Params:
	 *     parent = the parent of @pad or %NULL
	 *     query = the #GstQuery to handle.
	 *
	 * Return: %TRUE if the query was performed successfully.
	 */
	public bool queryDefault(ObjectGst parent, Query query)
	{
		return gst_pad_query_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (query is null) ? null : query.getQueryStruct()) != 0;
	}

	/**
	 * Queries a pad for the total stream duration.
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     duration = a location in which to store the total
	 *         duration, or %NULL.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool queryDuration(GstFormat format, out long duration)
	{
		return gst_pad_query_duration(gstPad, format, &duration) != 0;
	}

	/**
	 * Queries a pad for the stream position.
	 *
	 * Params:
	 *     format = the #GstFormat requested
	 *     cur = A location in which to store the current position, or %NULL.
	 *
	 * Return: %TRUE if the query could be performed.
	 */
	public bool queryPosition(GstFormat format, out long cur)
	{
		return gst_pad_query_position(gstPad, format, &cur) != 0;
	}

	/**
	 * Remove the probe with @id from @pad.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     id = the probe id to remove
	 */
	public void removeProbe(gulong id)
	{
		gst_pad_remove_probe(gstPad, id);
	}

	/**
	 * Sends the event to the pad. This function can be used
	 * by applications to send events in the pipeline.
	 *
	 * If @pad is a source pad, @event should be an upstream event. If @pad is a
	 * sink pad, @event should be a downstream event. For example, you would not
	 * send a #GST_EVENT_EOS on a src pad; EOS events only propagate downstream.
	 * Furthermore, some downstream events have to be serialized with data flow,
	 * like EOS, while some can travel out-of-band, like #GST_EVENT_FLUSH_START. If
	 * the event needs to be serialized with data flow, this function will take the
	 * pad's stream lock while calling its event function.
	 *
	 * To find out whether an event type is upstream, downstream, or downstream and
	 * serialized, see #GstEventTypeFlags, gst_event_type_get_flags(),
	 * #GST_EVENT_IS_UPSTREAM, #GST_EVENT_IS_DOWNSTREAM, and
	 * #GST_EVENT_IS_SERIALIZED. Note that in practice that an application or
	 * plugin doesn't need to bother itself with this information; the core handles
	 * all necessary locks and checks.
	 *
	 * This function takes ownership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 *
	 * Params:
	 *     event = the #GstEvent to send to the pad.
	 *
	 * Return: %TRUE if the event was handled.
	 */
	public bool sendEvent(Event event)
	{
		return gst_pad_send_event(gstPad, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * Sets the given activate function for @pad. The activate function will
	 * dispatch to gst_pad_activate_mode() to perform the actual activation.
	 * Only makes sense to set on sink pads.
	 *
	 * Call this function if your sink pad can start a pull-based task.
	 *
	 * Params:
	 *     activate = the #GstPadActivateFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @activate will not be used anymore.
	 */
	public void setActivateFunctionFull(GstPadActivateFunction activate, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_activate_function_full(gstPad, activate, userData, notify);
	}

	/**
	 * Sets the given activate_mode function for the pad. An activate_mode function
	 * prepares the element for data passing.
	 *
	 * Params:
	 *     activatemode = the #GstPadActivateModeFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @activatemode will not be used anymore.
	 */
	public void setActivatemodeFunctionFull(GstPadActivateModeFunction activatemode, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_activatemode_function_full(gstPad, activatemode, userData, notify);
	}

	/**
	 * Activates or deactivates the given pad.
	 * Normally called from within core state change functions.
	 *
	 * If @active, makes sure the pad is active. If it is already active, either in
	 * push or pull mode, just return. Otherwise dispatches to the pad's activate
	 * function to perform the actual activation.
	 *
	 * If not @active, calls gst_pad_activate_mode() with the pad's current mode
	 * and a %FALSE argument.
	 *
	 * Params:
	 *     active = whether or not the pad should be active.
	 *
	 * Return: %TRUE if the operation was successful.
	 *
	 *     MT safe.
	 */
	public bool setActive(bool active)
	{
		return gst_pad_set_active(gstPad, active) != 0;
	}

	/**
	 * Sets the given chain function for the pad. The chain function is called to
	 * process a #GstBuffer input buffer. see #GstPadChainFunction for more details.
	 *
	 * Params:
	 *     chain = the #GstPadChainFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @chain will not be used anymore.
	 */
	public void setChainFunctionFull(GstPadChainFunction chain, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_chain_function_full(gstPad, chain, userData, notify);
	}

	/**
	 * Sets the given chain list function for the pad. The chainlist function is
	 * called to process a #GstBufferList input buffer list. See
	 * #GstPadChainListFunction for more details.
	 *
	 * Params:
	 *     chainlist = the #GstPadChainListFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @chainlist will not be used anymore.
	 */
	public void setChainListFunctionFull(GstPadChainListFunction chainlist, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_chain_list_function_full(gstPad, chainlist, userData, notify);
	}

	/**
	 * Set the given private data gpointer on the pad.
	 * This function can only be used by the element that owns the pad.
	 * No locking is performed in this function.
	 *
	 * Params:
	 *     priv = The private data to attach to the pad.
	 */
	public void setElementPrivate(void* priv)
	{
		gst_pad_set_element_private(gstPad, priv);
	}

	/**
	 * Sets the given event handler for the pad.
	 *
	 * Params:
	 *     event = the #GstPadEventFullFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @event will not be used anymore.
	 *
	 * Since: 1.8
	 */
	public void setEventFullFunctionFull(GstPadEventFullFunction event, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_event_full_function_full(gstPad, event, userData, notify);
	}

	/**
	 * Sets the given event handler for the pad.
	 *
	 * Params:
	 *     event = the #GstPadEventFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @event will not be used anymore.
	 */
	public void setEventFunctionFull(GstPadEventFunction event, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_event_function_full(gstPad, event, userData, notify);
	}

	/**
	 * Sets the given getrange function for the pad. The getrange function is
	 * called to produce a new #GstBuffer to start the processing pipeline. see
	 * #GstPadGetRangeFunction for a description of the getrange function.
	 *
	 * Params:
	 *     get = the #GstPadGetRangeFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @get will not be used anymore.
	 */
	public void setGetrangeFunctionFull(GstPadGetRangeFunction get, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_getrange_function_full(gstPad, get, userData, notify);
	}

	/**
	 * Sets the given internal link iterator function for the pad.
	 *
	 * Params:
	 *     iterintlink = the #GstPadIterIntLinkFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @iterintlink will not be used anymore.
	 */
	public void setIterateInternalLinksFunctionFull(GstPadIterIntLinkFunction iterintlink, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_iterate_internal_links_function_full(gstPad, iterintlink, userData, notify);
	}

	/**
	 * Sets the given link function for the pad. It will be called when
	 * the pad is linked with another pad.
	 *
	 * The return value #GST_PAD_LINK_OK should be used when the connection can be
	 * made.
	 *
	 * The return value #GST_PAD_LINK_REFUSED should be used when the connection
	 * cannot be made for some reason.
	 *
	 * If @link is installed on a source pad, it should call the #GstPadLinkFunction
	 * of the peer sink pad, if present.
	 *
	 * Params:
	 *     link = the #GstPadLinkFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @link will not be used anymore.
	 */
	public void setLinkFunctionFull(GstPadLinkFunction link, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_link_function_full(gstPad, link, userData, notify);
	}

	/**
	 * Set the offset that will be applied to the running time of @pad.
	 *
	 * Params:
	 *     offset = the offset
	 */
	public void setOffset(long offset)
	{
		gst_pad_set_offset(gstPad, offset);
	}

	/**
	 * Set the given query function for the pad.
	 *
	 * Params:
	 *     query = the #GstPadQueryFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @query will not be used anymore.
	 */
	public void setQueryFunctionFull(GstPadQueryFunction query, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_query_function_full(gstPad, query, userData, notify);
	}

	/**
	 * Sets the given unlink function for the pad. It will be called
	 * when the pad is unlinked.
	 *
	 * Params:
	 *     unlink = the #GstPadUnlinkFunction to set.
	 *     userData = user_data passed to @notify
	 *     notify = notify called when @unlink will not be used anymore.
	 */
	public void setUnlinkFunctionFull(GstPadUnlinkFunction unlink, void* userData, GDestroyNotify notify)
	{
		gst_pad_set_unlink_function_full(gstPad, unlink, userData, notify);
	}

	/**
	 * Starts a task that repeatedly calls @func with @user_data. This function
	 * is mostly used in pad activation functions to start the dataflow.
	 * The #GST_PAD_STREAM_LOCK of @pad will automatically be acquired
	 * before @func is called.
	 *
	 * Params:
	 *     func = the task function to call
	 *     userData = user data passed to the task function
	 *     notify = called when @user_data is no longer referenced
	 *
	 * Return: a %TRUE if the task could be started.
	 */
	public bool startTask(GstTaskFunction func, void* userData, GDestroyNotify notify)
	{
		return gst_pad_start_task(gstPad, func, userData, notify) != 0;
	}

	/**
	 * Iterates all sticky events on @pad and calls @foreach_func for every
	 * event. If @foreach_func returns %FALSE the iteration is immediately stopped.
	 *
	 * Params:
	 *     foreachFunc = the #GstPadStickyEventsForeachFunction that
	 *         should be called for every event.
	 *     userData = the optional user data.
	 */
	public void stickyEventsForeach(GstPadStickyEventsForeachFunction foreachFunc, void* userData)
	{
		gst_pad_sticky_events_foreach(gstPad, foreachFunc, userData);
	}

	/**
	 * Stop the task of @pad. This function will also make sure that the
	 * function executed by the task will effectively stop if not called
	 * from the GstTaskFunction.
	 *
	 * This function will deadlock if called from the GstTaskFunction of
	 * the task. Use gst_task_pause() instead.
	 *
	 * Regardless of whether the pad has a task, the stream lock is acquired and
	 * released so as to ensure that streaming through this pad has finished.
	 *
	 * Return: a %TRUE if the task could be stopped or %FALSE on error.
	 */
	public bool stopTask()
	{
		return gst_pad_stop_task(gstPad) != 0;
	}

	/**
	 * Store the sticky @event on @pad
	 *
	 * Params:
	 *     event = a #GstEvent
	 *
	 * Return: #GST_FLOW_OK on success, #GST_FLOW_FLUSHING when the pad
	 *     was flushing or #GST_FLOW_EOS when the pad was EOS.
	 *
	 * Since: 1.2
	 */
	public GstFlowReturn storeStickyEvent(Event event)
	{
		return gst_pad_store_sticky_event(gstPad, (event is null) ? null : event.getEventStruct());
	}

	/**
	 * Unlinks the source pad from the sink pad. Will emit the #GstPad::unlinked
	 * signal on both pads.
	 *
	 * Params:
	 *     sinkpad = the sink #GstPad to unlink.
	 *
	 * Return: %TRUE if the pads were unlinked. This function returns %FALSE if
	 *     the pads were not linked together.
	 *
	 *     MT safe.
	 */
	public bool unlink(Pad sinkpad)
	{
		return gst_pad_unlink(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct()) != 0;
	}

	/**
	 * A helper function you can use that sets the FIXED_CAPS flag
	 * This way the default CAPS query will always return the negotiated caps
	 * or in case the pad is not negotiated, the padtemplate caps.
	 *
	 * The negotiated caps are the caps of the last CAPS event that passed on the
	 * pad. Use this function on a pad that, once it negotiated to a CAPS, cannot
	 * be renegotiated to something else.
	 */
	public void useFixedCaps()
	{
		gst_pad_use_fixed_caps(gstPad);
	}

	protected class OnLinkedDelegateWrapper
	{
		void delegate(Pad, Pad) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Pad, Pad) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLinkedDelegateWrapper[] onLinkedListeners;

	/**
	 * Signals that a pad has been linked to the peer pad.
	 *
	 * Params:
	 *     peer = the peer pad that has been connected
	 */
	gulong addOnLinked(void delegate(Pad, Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLinkedListeners ~= new OnLinkedDelegateWrapper(dlg, 0, connectFlags);
		onLinkedListeners[onLinkedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"linked",
			cast(GCallback)&callBackLinked,
			cast(void*)onLinkedListeners[onLinkedListeners.length - 1],
			cast(GClosureNotify)&callBackLinkedDestroy,
			connectFlags);
		return onLinkedListeners[onLinkedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLinked(GstPad* padStruct, GstPad* peer,OnLinkedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Pad)(peer), wrapper.outer);
	}
	
	extern(C) static void callBackLinkedDestroy(OnLinkedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLinked(wrapper);
	}

	protected void internalRemoveOnLinked(OnLinkedDelegateWrapper source)
	{
		foreach(index, wrapper; onLinkedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLinkedListeners[index] = null;
				onLinkedListeners = std.algorithm.remove(onLinkedListeners, index);
				break;
			}
		}
	}
	

	protected class OnUnlinkedDelegateWrapper
	{
		void delegate(Pad, Pad) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Pad, Pad) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnUnlinkedDelegateWrapper[] onUnlinkedListeners;

	/**
	 * Signals that a pad has been unlinked from the peer pad.
	 *
	 * Params:
	 *     peer = the peer pad that has been disconnected
	 */
	gulong addOnUnlinked(void delegate(Pad, Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onUnlinkedListeners ~= new OnUnlinkedDelegateWrapper(dlg, 0, connectFlags);
		onUnlinkedListeners[onUnlinkedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"unlinked",
			cast(GCallback)&callBackUnlinked,
			cast(void*)onUnlinkedListeners[onUnlinkedListeners.length - 1],
			cast(GClosureNotify)&callBackUnlinkedDestroy,
			connectFlags);
		return onUnlinkedListeners[onUnlinkedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackUnlinked(GstPad* padStruct, GstPad* peer,OnUnlinkedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Pad)(peer), wrapper.outer);
	}
	
	extern(C) static void callBackUnlinkedDestroy(OnUnlinkedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnUnlinked(wrapper);
	}

	protected void internalRemoveOnUnlinked(OnUnlinkedDelegateWrapper source)
	{
		foreach(index, wrapper; onUnlinkedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onUnlinkedListeners[index] = null;
				onUnlinkedListeners = std.algorithm.remove(onUnlinkedListeners, index);
				break;
			}
		}
	}
	

	/**
	 * Gets a string representing the given flow return.
	 *
	 * Params:
	 *     ret = a #GstFlowReturn to get the name of.
	 *
	 * Return: a static string with the name of the flow return.
	 */
	public static string flowGetName(GstFlowReturn ret)
	{
		return Str.toString(gst_flow_get_name(ret));
	}

	/**
	 * Get the unique quark for the given GstFlowReturn.
	 *
	 * Params:
	 *     ret = a #GstFlowReturn to get the quark of.
	 *
	 * Return: the quark associated with the flow return or 0 if an
	 *     invalid return was specified.
	 */
	public static GQuark flowToQuark(GstFlowReturn ret)
	{
		return gst_flow_to_quark(ret);
	}

	/**
	 * Return the name of a pad mode, for use in debug messages mostly.
	 *
	 * Params:
	 *     mode = the pad mode
	 *
	 * Return: short mnemonic for pad mode @mode
	 */
	public static string modeGetName(GstPadMode mode)
	{
		return Str.toString(gst_pad_mode_get_name(mode));
	}
}
