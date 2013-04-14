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
 * inFile  = GstPad.html
 * outPack = gstreamer
 * outFile = Pad
 * strct   = GstPad
 * realStrct=
 * ctorStrct=
 * clss    = Pad
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_pad_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Buffer
 * 	- gstreamer.BufferList
 * 	- gstreamer.Caps
 * 	- gstreamer.Element
 * 	- gstreamer.Event
 * 	- gstreamer.Iterator
 * 	- gstreamer.ObjectGst
 * 	- gstreamer.PadTemplate
 * 	- gstreamer.Query
 * structWrap:
 * 	- GstBuffer* -> Buffer
 * 	- GstBufferList* -> BufferList
 * 	- GstCaps* -> Caps
 * 	- GstElement* -> Element
 * 	- GstEvent* -> Event
 * 	- GstIterator* -> Iterator
 * 	- GstObject* -> ObjectGst
 * 	- GstPad* -> Pad
 * 	- GstPadTemplate* -> PadTemplate
 * 	- GstQuery* -> Query
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Pad;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Caps;
private import gstreamer.Element;
private import gstreamer.Event;
private import gstreamer.Iterator;
private import gstreamer.ObjectGst;
private import gstreamer.PadTemplate;
private import gstreamer.Query;



private import gstreamer.ObjectGst;

/**
 * A GstElement is linked to other elements via "pads", which are extremely
 * light-weight generic link points.
 *
 * Pads have a GstPadDirection, source pads produce data, sink pads consume
 * data.
 *
 * Pads are typically created from a GstPadTemplate with
 * gst_pad_new_from_template() and are then added to a GstElement. This usually
 * happens when the element is created but it can also happen dynamically based
 * on the data that the element is processing or based on the pads that the
 * application requests.
 *
 * Pads without pad templates can be created with gst_pad_new(),
 * which takes a direction and a name as an argument. If the name is NULL,
 * then a guaranteed unique name will be assigned to it.
 *
 * A GstElement creating a pad will typically use the various
 * gst_pad_set_*_function() calls to register callbacks for events, queries or
 * dataflow on the pads.
 *
 * gst_pad_get_parent() will retrieve the GstElement that owns the pad.
 *
 * After two pads are retrieved from an element with gst_element_get_pad(),
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
 * To send a GstEvent on a pad, use gst_pad_send_event() and
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
 *
 * Last reviewed on 2012-03-29 (0.11.3)
 */
public class Pad : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPad* gstPad;
	
	
	public GstPad* getPadStruct()
	{
		return gstPad;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPad;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPad* gstPad)
	{
		super(cast(GstObject*)gstPad);
		this.gstPad = gstPad;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstPad = cast(GstPad*)obj;
	}
	
	/**
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
	int[string] connectedSignals;
	
	void delegate(Pad, Pad)[] onLinkedListeners;
	/**
	 * Signals that a pad has been linked to the peer pad.
	 */
	void addOnLinked(void delegate(Pad, Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("linked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"linked",
			cast(GCallback)&callBackLinked,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["linked"] = 1;
		}
		onLinkedListeners ~= dlg;
	}
	extern(C) static void callBackLinked(GstPad* padStruct, GstPad* peer, Pad _pad)
	{
		foreach ( void delegate(Pad, Pad) dlg ; _pad.onLinkedListeners )
		{
			dlg(ObjectG.getDObject!(Pad)(peer), _pad);
		}
	}
	
	void delegate(Pad, Pad)[] onUnlinkedListeners;
	/**
	 * Signals that a pad has been unlinked from the peer pad.
	 * See Also
	 * GstPadTemplate, GstElement, GstEvent, GstQuery, GstBuffer
	 */
	void addOnUnlinked(void delegate(Pad, Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unlinked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unlinked",
			cast(GCallback)&callBackUnlinked,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unlinked"] = 1;
		}
		onUnlinkedListeners ~= dlg;
	}
	extern(C) static void callBackUnlinked(GstPad* padStruct, GstPad* peer, Pad _pad)
	{
		foreach ( void delegate(Pad, Pad) dlg ; _pad.onUnlinkedListeners )
		{
			dlg(ObjectG.getDObject!(Pad)(peer), _pad);
		}
	}
	
	
	/**
	 * Gets a string representing the given flow return.
	 * Params:
	 * ret = a GstFlowReturn to get the name of.
	 * Returns: a static string with the name of the flow return.
	 */
	public static string gstFlowGetName(GstFlowReturn ret)
	{
		// const gchar * gst_flow_get_name (GstFlowReturn ret);
		return Str.toString(gst_flow_get_name(ret));
	}
	
	/**
	 * Get the unique quark for the given GstFlowReturn.
	 * Params:
	 * ret = a GstFlowReturn to get the quark of.
	 * Returns: the quark associated with the flow return or 0 if an invalid return was specified.
	 */
	public static GQuark gstFlowToQuark(GstFlowReturn ret)
	{
		// GQuark gst_flow_to_quark (GstFlowReturn ret);
		return gst_flow_to_quark(ret);
	}
	
	/**
	 * Return the name of a pad mode, for use in debug messages mostly.
	 * Params:
	 * mode = the pad mode
	 * Returns: short mnemonic for pad mode mode
	 */
	public static string modeGetName(GstPadMode mode)
	{
		// const gchar * gst_pad_mode_get_name (GstPadMode mode);
		return Str.toString(gst_pad_mode_get_name(mode));
	}
	
	/**
	 * Gets the direction of the pad. The direction of the pad is
	 * decided at construction time so this function does not take
	 * the LOCK.
	 * Returns: the GstPadDirection of the pad. MT safe.
	 */
	public GstPadDirection getDirection()
	{
		// GstPadDirection gst_pad_get_direction (GstPad *pad);
		return gst_pad_get_direction(gstPad);
	}
	
	/**
	 * Gets the parent of pad, cast to a GstElement. If a pad has no parent or
	 * its parent is not an element, return NULL.
	 * Returns: the parent of the pad. The caller has a reference on the parent, so unref when you're finished with it. MT safe. [transfer full]
	 */
	public Element getParentElement()
	{
		// GstElement * gst_pad_get_parent_element (GstPad *pad);
		auto p = gst_pad_get_parent_element(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p);
	}
	
	/**
	 * Gets the template for pad.
	 * Returns: the GstPadTemplate from which this pad was instantiated, or NULL if this pad has no template. Unref after usage. [transfer full]
	 */
	public PadTemplate getPadTemplate()
	{
		// GstPadTemplate * gst_pad_get_pad_template (GstPad *pad);
		auto p = gst_pad_get_pad_template(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PadTemplate)(cast(GstPadTemplate*) p);
	}
	
	/**
	 * Links the source pad and the sink pad.
	 * Params:
	 * sinkpad = the sink GstPad to link.
	 * Returns: A result code indicating if the connection worked or what went wrong. MT Safe.
	 */
	public GstPadLinkReturn link(Pad sinkpad)
	{
		// GstPadLinkReturn gst_pad_link (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Links the source pad and the sink pad.
	 * This variant of gst_pad_link provides a more granular control on the
	 * checks being done when linking. While providing some considerable speedups
	 * the caller of this method must be aware that wrong usage of those flags
	 * can cause severe issues. Refer to the documentation of GstPadLinkCheck
	 * for more information.
	 * MT Safe.
	 * Params:
	 * sinkpad = the sink GstPad to link.
	 * flags = the checks to validate when linking
	 * Returns: A result code indicating if the connection worked or what went wrong.
	 */
	public GstPadLinkReturn linkFull(Pad sinkpad, GstPadLinkCheck flags)
	{
		// GstPadLinkReturn gst_pad_link_full (GstPad *srcpad,  GstPad *sinkpad,  GstPadLinkCheck flags);
		return gst_pad_link_full(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct(), flags);
	}
	
	/**
	 * Unlinks the source pad from the sink pad. Will emit the "unlinked"
	 * signal on both pads.
	 * Params:
	 * sinkpad = the sink GstPad to unlink.
	 * Returns: TRUE if the pads were unlinked. This function returns FALSE if the pads were not linked together. MT safe.
	 */
	public int unlink(Pad sinkpad)
	{
		// gboolean gst_pad_unlink (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_unlink(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Checks if a pad is linked to another pad or not.
	 * Returns: TRUE if the pad is linked, FALSE otherwise. MT safe.
	 */
	public int isLinked()
	{
		// gboolean gst_pad_is_linked (GstPad *pad);
		return gst_pad_is_linked(gstPad);
	}
	
	/**
	 * Checks if the source pad and the sink pad are compatible so they can be
	 * linked.
	 * Params:
	 * sinkpad = the sink GstPad.
	 * Returns: TRUE if the pads can be linked.
	 */
	public int canLink(Pad sinkpad)
	{
		// gboolean gst_pad_can_link (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_can_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Gets the capabilities of the allowed media types that can flow through
	 * pad and its peer.
	 * The allowed capabilities is calculated as the intersection of the results of
	 * calling gst_pad_query_caps() on pad and its peer. The caller owns a reference
	 * on the resulting caps.
	 * Returns: the allowed GstCaps of the pad link. Unref the caps when you no longer need it. This function returns NULL when pad has no peer. MT safe. [transfer full]
	 */
	public Caps getAllowedCaps()
	{
		// GstCaps * gst_pad_get_allowed_caps (GstPad *pad);
		auto p = gst_pad_get_allowed_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Gets the capabilities currently configured on pad with the last
	 * GST_EVENT_CAPS event.
	 * Returns: the current caps of the pad with incremented ref-count.
	 */
	public Caps getCurrentCaps()
	{
		// GstCaps * gst_pad_get_current_caps (GstPad *pad);
		auto p = gst_pad_get_current_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Gets the capabilities for pad's template.
	 * Returns: the GstCaps of this pad template. Unref after usage. [transfer full]
	 */
	public Caps getPadTemplateCaps()
	{
		// GstCaps * gst_pad_get_pad_template_caps (GstPad *pad);
		auto p = gst_pad_get_pad_template_caps(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Gets the peer of pad. This function refs the peer pad so
	 * you need to unref it after use.
	 * Returns: the peer GstPad. Unref after usage. MT safe. [transfer full]
	 */
	public Pad getPeer()
	{
		// GstPad * gst_pad_get_peer (GstPad *pad);
		auto p = gst_pad_get_peer(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pad)(cast(GstPad*) p);
	}
	
	/**
	 * A helper function you can use that sets the FIXED_CAPS flag
	 * This way the default CAPS query will always return the negotiated caps
	 * or in case the pad is not negotiated, the padtemplate caps.
	 * The negotiated caps are the caps of the last CAPS event that passed on the
	 * pad. Use this function on a pad that, once it negotiated to a CAPS, cannot
	 * be renegotiated to something else.
	 */
	public void useFixedCaps()
	{
		// void gst_pad_use_fixed_caps (GstPad *pad);
		gst_pad_use_fixed_caps(gstPad);
	}
	
	/**
	 * Check if pad has caps set on it with a GST_EVENT_CAPS event.
	 * Returns: TRUE when pad has caps associated with it.
	 */
	public int hasCurrentCaps()
	{
		// gboolean gst_pad_has_current_caps (GstPad *pad);
		return gst_pad_has_current_caps(gstPad);
	}
	
	/**
	 * Returns a new reference of the sticky event of type event_type
	 * from the event.
	 * Params:
	 * eventType = the GstEventType that should be retrieved.
	 * idx = the index of the event
	 * Returns: a GstEvent of type event_type or NULL when no event of event_type was on pad. Unref after usage. [transfer full]
	 */
	public Event getStickyEvent(GstEventType eventType, uint idx)
	{
		// GstEvent * gst_pad_get_sticky_event (GstPad *pad,  GstEventType event_type,  guint idx);
		auto p = gst_pad_get_sticky_event(gstPad, eventType, idx);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Iterates all sticky events on pad and calls foreach_func for every
	 * event. If foreach_func returns FALSE the iteration is immediately stopped.
	 * Params:
	 * foreachFunc = the GstPadStickyEventsForeachFunction that
	 * should be called for every event. [scope call]
	 * userData = the optional user data. [closure]
	 */
	public void stickyEventsForeach(GstPadStickyEventsForeachFunction foreachFunc, void* userData)
	{
		// void gst_pad_sticky_events_foreach (GstPad *pad,  GstPadStickyEventsForeachFunction foreach_func,  gpointer user_data);
		gst_pad_sticky_events_foreach(gstPad, foreachFunc, userData);
	}
	
	/**
	 * Query if a pad is active
	 * Returns: TRUE if the pad is active. MT safe.
	 */
	public int isActive()
	{
		// gboolean gst_pad_is_active (GstPad *pad);
		return gst_pad_is_active(gstPad);
	}
	
	/**
	 * Params:
	 * info = a GstPadProbeInfo
	 * Returns: The GstBuffer from the probe. [transfer none]
	 */
	public static Buffer probeInfoGetBuffer(GstPadProbeInfo* info)
	{
		// GstBuffer * gst_pad_probe_info_get_buffer (GstPadProbeInfo *info);
		auto p = gst_pad_probe_info_get_buffer(info);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p);
	}
	
	/**
	 */
	public static BufferList probeInfoGetBufferList(GstPadProbeInfo* info)
	{
		// GstBufferList * gst_pad_probe_info_get_buffer_list (GstPadProbeInfo *info);
		auto p = gst_pad_probe_info_get_buffer_list(info);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) p);
	}
	
	/**
	 * Params:
	 * info = a GstPadProbeInfo
	 * Returns: The GstEvent from the probe. [transfer none]
	 */
	public static Event probeInfoGetEvent(GstPadProbeInfo* info)
	{
		// GstEvent * gst_pad_probe_info_get_event (GstPadProbeInfo *info);
		auto p = gst_pad_probe_info_get_event(info);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GstEvent*) p);
	}
	
	/**
	 * Params:
	 * info = a GstPadProbeInfo
	 * Returns: The GstQuery from the probe. [transfer none]
	 */
	public static Query probeInfoGetQuery(GstPadProbeInfo* info)
	{
		// GstQuery * gst_pad_probe_info_get_query (GstPadProbeInfo *info);
		auto p = gst_pad_probe_info_get_query(info);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Query)(cast(GstQuery*) p);
	}
	
	/**
	 * Be notified of different states of pads. The provided callback is called for
	 * every state that matches mask.
	 * Params:
	 * mask = the probe mask
	 * callback = GstPadProbeCallback that will be called with notifications of
	 * the pad state
	 * userData = user data passed to the callback. [closure]
	 * destroyData = GDestroyNotify for user_data
	 * Returns: an id or 0 on error. The id can be used to remove the probe with gst_pad_remove_probe(). MT safe.
	 */
	public gulong addProbe(GstPadProbeType mask, GstPadProbeCallback callback, void* userData, GDestroyNotify destroyData)
	{
		// gulong gst_pad_add_probe (GstPad *pad,  GstPadProbeType mask,  GstPadProbeCallback callback,  gpointer user_data,  GDestroyNotify destroy_data);
		return gst_pad_add_probe(gstPad, mask, callback, userData, destroyData);
	}
	
	/**
	 * Remove the probe with id from pad.
	 * MT safe.
	 * Params:
	 * id = the probe id to remove
	 */
	public void removeProbe(gulong id)
	{
		// void gst_pad_remove_probe (GstPad *pad,  gulong id);
		gst_pad_remove_probe(gstPad, id);
	}
	
	/**
	 * Checks if the pad is blocked or not. This function returns the
	 * last requested state of the pad. It is not certain that the pad
	 * is actually blocking at this point (see gst_pad_is_blocking()).
	 * Returns: TRUE if the pad is blocked. MT safe.
	 */
	public int isBlocked()
	{
		// gboolean gst_pad_is_blocked (GstPad *pad);
		return gst_pad_is_blocked(gstPad);
	}
	
	/**
	 * Checks if the pad is blocking or not. This is a guaranteed state
	 * of whether the pad is actually blocking on a GstBuffer or a GstEvent.
	 * Returns: TRUE if the pad is blocking. MT safe.
	 */
	public int isBlocking()
	{
		// gboolean gst_pad_is_blocking (GstPad *pad);
		return gst_pad_is_blocking(gstPad);
	}
	
	/**
	 * Get the offset applied to the running time of pad. pad has to be a source
	 * pad.
	 * Returns: the offset.
	 */
	public long getOffset()
	{
		// gint64 gst_pad_get_offset (GstPad *pad);
		return gst_pad_get_offset(gstPad);
	}
	
	/**
	 * Set the offset that will be applied to the running time of pad.
	 * Params:
	 * offset = the offset
	 */
	public void setOffset(long offset)
	{
		// void gst_pad_set_offset (GstPad *pad,  gint64 offset);
		gst_pad_set_offset(gstPad, offset);
	}
	
	/**
	 * Creates a new pad with the given name in the given direction.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * Params:
	 * name = the name of the new pad.
	 * direction = the GstPadDirection of the pad.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, GstPadDirection direction)
	{
		// GstPad * gst_pad_new (const gchar *name,  GstPadDirection direction);
		auto p = gst_pad_new(Str.toStringz(name), direction);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_pad_new(Str.toStringz(name), direction)");
		}
		this(cast(GstPad*) p);
	}
	
	/**
	 * Creates a new pad with the given name from the given template.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * Params:
	 * templ = the pad template to use
	 * name = the name of the element
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (PadTemplate templ, string name)
	{
		// GstPad * gst_pad_new_from_template (GstPadTemplate *templ,  const gchar *name);
		auto p = gst_pad_new_from_template((templ is null) ? null : templ.getPadTemplateStruct(), Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_pad_new_from_template((templ is null) ? null : templ.getPadTemplateStruct(), Str.toStringz(name))");
		}
		this(cast(GstPad*) p);
	}
	
	/**
	 * Creates a new pad with the given name from the given static template.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * Params:
	 * templ = the GstStaticPadTemplate to use
	 * name = the name of the element
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstStaticPadTemplate* templ, string name)
	{
		// GstPad * gst_pad_new_from_static_template (GstStaticPadTemplate *templ,  const gchar *name);
		auto p = gst_pad_new_from_static_template(templ, Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_pad_new_from_static_template(templ, Str.toStringz(name))");
		}
		this(cast(GstPad*) p);
	}
	
	/**
	 * Sets the given chain function for the pad. The chain function is called to
	 * process a GstBuffer input buffer. see GstPadChainFunction for more details.
	 * Params:
	 * chain = the GstPadChainFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when chain will not be used anymore.
	 */
	public void setChainFunctionFull(GstPadChainFunction chain, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_chain_function_full (GstPad *pad,  GstPadChainFunction chain,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_chain_function_full(gstPad, chain, userData, notify);
	}
	
	/**
	 * Sets the given chain list function for the pad. The chainlist function is
	 * called to process a GstBufferList input buffer list. See
	 * GstPadChainListFunction for more details.
	 * Params:
	 * chainlist = the GstPadChainListFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when chainlist will not be used anymore.
	 */
	public void setChainListFunctionFull(GstPadChainListFunction chainlist, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_chain_list_function_full  (GstPad *pad,  GstPadChainListFunction chainlist,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_chain_list_function_full(gstPad, chainlist, userData, notify);
	}
	
	/**
	 * When pad is flushing this function returns GST_FLOW_FLUSHING
	 * immediately and buffer is NULL.
	 * Calls the getrange function of pad, see GstPadGetRangeFunction for a
	 * description of a getrange function. If pad has no getrange function
	 * installed (see gst_pad_set_getrange_function()) this function returns
	 * GST_FLOW_NOT_SUPPORTED.
	 * If buffer points to a variable holding NULL, a valid new GstBuffer will be
	 * placed in buffer when this function returns GST_FLOW_OK. The new buffer
	 * must be freed with gst_buffer_unref() after usage.
	 * When buffer points to a variable that points to a valid GstBuffer, the
	 * buffer will be filled with the result data when this function returns
	 * GST_FLOW_OK. If the provided buffer is larger than size, only
	 * size bytes will be filled in the result buffer and its size will be updated
	 * accordingly.
	 * Note that less than size bytes can be returned in buffer when, for example,
	 * an EOS condition is near or when buffer is not large enough to hold size
	 * bytes. The caller should check the result buffer size to get the result size.
	 * When this function returns any other result value than GST_FLOW_OK, buffer
	 * will be unchanged.
	 * This is a lowlevel function. Usualy gst_pad_pull_range() is used.
	 * Params:
	 * offset = The start offset of the buffer
	 * size = The length of the buffer
	 * buffer = a pointer to hold the GstBuffer,
	 * returns GST_FLOW_ERROR if NULL. [out callee-allocates]
	 * Returns: a GstFlowReturn from the pad. MT safe.
	 */
	public GstFlowReturn getRange(ulong offset, uint size, ref Buffer buffer)
	{
		// GstFlowReturn gst_pad_get_range (GstPad *pad,  guint64 offset,  guint size,  GstBuffer **buffer);
		GstBuffer* outbuffer = (buffer is null) ? null : buffer.getBufferStruct();
		
		auto p = gst_pad_get_range(gstPad, offset, size, &outbuffer);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		return p;
	}
	
	/**
	 * Sets the given getrange function for the pad. The getrange function is
	 * called to produce a new GstBuffer to start the processing pipeline. see
	 * GstPadGetRangeFunction for a description of the getrange function.
	 * Params:
	 * get = the GstPadGetRangeFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when get will not be used anymore.
	 */
	public void setGetrangeFunctionFull(GstPadGetRangeFunction get, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_getrange_function_full (GstPad *pad,  GstPadGetRangeFunction get,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_getrange_function_full(gstPad, get, userData, notify);
	}
	
	/**
	 * Sets the given event handler for the pad.
	 * Params:
	 * event = the GstPadEventFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when event will not be used anymore.
	 */
	public void setEventFunctionFull(GstPadEventFunction event, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_event_function_full (GstPad *pad,  GstPadEventFunction event,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_event_function_full(gstPad, event, userData, notify);
	}
	
	/**
	 * Sets the given link function for the pad. It will be called when
	 * the pad is linked with another pad.
	 * The return value GST_PAD_LINK_OK should be used when the connection can be
	 * made.
	 * The return value GST_PAD_LINK_REFUSED should be used when the connection
	 * cannot be made for some reason.
	 * If link is installed on a source pad, it should call the GstPadLinkFunction
	 * of the peer sink pad, if present.
	 * Params:
	 * link = the GstPadLinkFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when link will not be used anymore.
	 */
	public void setLinkFunctionFull(GstPadLinkFunction link, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_link_function_full (GstPad *pad,  GstPadLinkFunction link,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_link_function_full(gstPad, link, userData, notify);
	}
	
	/**
	 * Sets the given unlink function for the pad. It will be called
	 * when the pad is unlinked.
	 * Params:
	 * unlink = the GstPadUnlinkFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when unlink will not be used anymore.
	 */
	public void setUnlinkFunctionFull(GstPadUnlinkFunction unlink, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_unlink_function_full (GstPad *pad,  GstPadUnlinkFunction unlink,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_unlink_function_full(gstPad, unlink, userData, notify);
	}
	
	/**
	 * Calls gst_pad_query_caps() for all internally linked pads fof pad and returns
	 * the intersection of the results.
	 * This function is useful as a default caps query function for an element
	 * that can handle any stream format, but requires all its pads to have
	 * the same caps. Two such elements are tee and adder.
	 * Params:
	 * query = a CAPS GstQuery.
	 * Returns: TRUE if query could be executed
	 */
	public int proxyQueryCaps(Query query)
	{
		// gboolean gst_pad_proxy_query_caps (GstPad *pad,  GstQuery *query);
		return gst_pad_proxy_query_caps(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Calls gst_pad_accept_caps() for all internally linked pads of pad and
	 * returns the intersection of the results.
	 * This function is useful as a default accept caps query function for an element
	 * that can handle any stream format, but requires caps that are acceptable for
	 * all oposite pads.
	 * Params:
	 * query = an ACCEPT_CAPS GstQuery.
	 * Returns: TRUE if query could be executed
	 */
	public int proxyQueryAcceptCaps(Query query)
	{
		// gboolean gst_pad_proxy_query_accept_caps (GstPad *pad,  GstQuery *query);
		return gst_pad_proxy_query_accept_caps(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Sets the given activate function for pad. The activate function will
	 * dispatch to gst_pad_activate_mode() to perform the actual activation.
	 * Only makes sense to set on sink pads.
	 * Call this function if your sink pad can start a pull-based task.
	 * Params:
	 * activate = the GstPadActivateFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when activate will not be used anymore.
	 */
	public void setActivateFunctionFull(GstPadActivateFunction activate, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_activate_function_full (GstPad *pad,  GstPadActivateFunction activate,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_activate_function_full(gstPad, activate, userData, notify);
	}
	
	/**
	 * Sets the given activate_mode function for the pad. An activate_mode function
	 * prepares the element for data passing.
	 * Params:
	 * activatemode = the GstPadActivateModeFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when activatemode will not be used anymore.
	 */
	public void setActivatemodeFunctionFull(GstPadActivateModeFunction activatemode, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_activatemode_function_full  (GstPad *pad,  GstPadActivateModeFunction activatemode,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_activatemode_function_full(gstPad, activatemode, userData, notify);
	}
	
	/**
	 * Check the GST_PAD_FLAG_NEED_RECONFIGURE flag on pad and return TRUE
	 * if the flag was set.
	 * Returns: TRUE is the GST_PAD_FLAG_NEED_RECONFIGURE flag is set on pad.
	 */
	public int needsReconfigure()
	{
		// gboolean gst_pad_needs_reconfigure (GstPad *pad);
		return gst_pad_needs_reconfigure(gstPad);
	}
	
	/**
	 * Check and clear the GST_PAD_FLAG_NEED_RECONFIGURE flag on pad and return TRUE
	 * if the flag was set.
	 * Returns: TRUE is the GST_PAD_FLAG_NEED_RECONFIGURE flag was set on pad.
	 */
	public int checkReconfigure()
	{
		// gboolean gst_pad_check_reconfigure (GstPad *pad);
		return gst_pad_check_reconfigure(gstPad);
	}
	
	/**
	 * Mark a pad for needing reconfiguration. The next call to
	 * gst_pad_check_reconfigure() will return TRUE after this call.
	 */
	public void markReconfigure()
	{
		// void gst_pad_mark_reconfigure (GstPad *pad);
		gst_pad_mark_reconfigure(gstPad);
	}
	
	/**
	 * Pushes a buffer to the peer of pad.
	 * This function will call installed block probes before triggering any
	 * installed data probes.
	 * The function proceeds calling gst_pad_chain() on the peer pad and returns
	 * the value from that function. If pad has no peer, GST_FLOW_NOT_LINKED will
	 * be returned.
	 * In all cases, success or failure, the caller loses its reference to buffer
	 * after calling this function.
	 * Params:
	 * buffer = the GstBuffer to push returns GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the peer pad. MT safe.
	 */
	public GstFlowReturn push(Buffer buffer)
	{
		// GstFlowReturn gst_pad_push (GstPad *pad,  GstBuffer *buffer);
		return gst_pad_push(gstPad, (buffer is null) ? null : buffer.getBufferStruct());
	}
	
	/**
	 * Sends the event to the peer of the given pad. This function is
	 * mainly used by elements to send events to their peer
	 * elements.
	 * This function takes owership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 * Params:
	 * event = the GstEvent to send to the pad. [transfer full]
	 * Returns: TRUE if the event was handled. MT safe.
	 */
	public int pushEvent(Event event)
	{
		// gboolean gst_pad_push_event (GstPad *pad,  GstEvent *event);
		return gst_pad_push_event(gstPad, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Pushes a buffer list to the peer of pad.
	 * This function will call installed block probes before triggering any
	 * installed data probes.
	 * The function proceeds calling the chain function on the peer pad and returns
	 * the value from that function. If pad has no peer, GST_FLOW_NOT_LINKED will
	 * be returned. If the peer pad does not have any installed chainlist function
	 * every group buffer of the list will be merged into a normal GstBuffer and
	 * chained via gst_pad_chain().
	 * In all cases, success or failure, the caller loses its reference to list
	 * after calling this function.
	 * Params:
	 * list = the GstBufferList to push returns GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the peer pad. MT safe.
	 */
	public GstFlowReturn pushList(BufferList list)
	{
		// GstFlowReturn gst_pad_push_list (GstPad *pad,  GstBufferList *list);
		return gst_pad_push_list(gstPad, (list is null) ? null : list.getBufferListStruct());
	}
	
	/**
	 * Pulls a buffer from the peer pad or fills up a provided buffer.
	 * This function will first trigger the pad block signal if it was
	 * installed.
	 * When pad is not linked GST_FLOW_NOT_LINKED is returned else this
	 * function returns the result of gst_pad_get_range() on the peer pad.
	 * See gst_pad_get_range() for a list of return values and for the
	 * semantics of the arguments of this function.
	 * If buffer points to a variable holding NULL, a valid new GstBuffer will be
	 * placed in buffer when this function returns GST_FLOW_OK. The new buffer
	 * must be freed with gst_buffer_unref() after usage. When this function
	 * returns any other result value, buffer will still point to NULL.
	 * When buffer points to a variable that points to a valid GstBuffer, the
	 * buffer will be filled with the result data when this function returns
	 * GST_FLOW_OK. When this function returns any other result value,
	 * buffer will be unchanged. If the provided buffer is larger than size, only
	 * size bytes will be filled in the result buffer and its size will be updated
	 * accordingly.
	 * Note that less than size bytes can be returned in buffer when, for example,
	 * an EOS condition is near or when buffer is not large enough to hold size
	 * bytes. The caller should check the result buffer size to get the result size.
	 * Params:
	 * offset = The start offset of the buffer
	 * size = The length of the buffer
	 * buffer = a pointer to hold the GstBuffer, returns
	 * GST_FLOW_ERROR if NULL. [out callee-allocates]
	 * Returns: a GstFlowReturn from the peer pad. MT safe.
	 */
	public GstFlowReturn pullRange(ulong offset, uint size, ref Buffer buffer)
	{
		// GstFlowReturn gst_pad_pull_range (GstPad *pad,  guint64 offset,  guint size,  GstBuffer **buffer);
		GstBuffer* outbuffer = (buffer is null) ? null : buffer.getBufferStruct();
		
		auto p = gst_pad_pull_range(gstPad, offset, size, &outbuffer);
		
		buffer = ObjectG.getDObject!(Buffer)(outbuffer);
		return p;
	}
	
	/**
	 * Activates or deactivates the given pad in mode via dispatching to the
	 * pad's activatemodefunc. For use from within pad activation functions only.
	 * If you don't know what this is, you probably don't want to call it.
	 * Params:
	 * mode = the requested activation mode
	 * active = whether or not the pad should be active.
	 * Returns: TRUE if the operation was successful. MT safe.
	 */
	public int activateMode(GstPadMode mode, int active)
	{
		// gboolean gst_pad_activate_mode (GstPad *pad,  GstPadMode mode,  gboolean active);
		return gst_pad_activate_mode(gstPad, mode, active);
	}
	
	/**
	 * Sends the event to the pad. This function can be used
	 * by applications to send events in the pipeline.
	 * If pad is a source pad, event should be an upstream event. If pad is a
	 * sink pad, event should be a downstream event. For example, you would not
	 * send a GST_EVENT_EOS on a src pad; EOS events only propagate downstream.
	 * Furthermore, some downstream events have to be serialized with data flow,
	 * like EOS, while some can travel out-of-band, like GST_EVENT_FLUSH_START. If
	 * the event needs to be serialized with data flow, this function will take the
	 * pad's stream lock while calling its event function.
	 * To find out whether an event type is upstream, downstream, or downstream and
	 * serialized, see GstEventTypeFlags, gst_event_type_get_flags(),
	 * GST_EVENT_IS_UPSTREAM, GST_EVENT_IS_DOWNSTREAM, and
	 * GST_EVENT_IS_SERIALIZED. Note that in practice that an application or
	 * plugin doesn't need to bother itself with this information; the core handles
	 * all necessary locks and checks.
	 * This function takes owership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 * Params:
	 * event = the GstEvent to send to the pad. [transfer full]
	 * Returns: TRUE if the event was handled.
	 */
	public int sendEvent(Event event)
	{
		// gboolean gst_pad_send_event (GstPad *pad,  GstEvent *event);
		return gst_pad_send_event(gstPad, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Invokes the default event handler for the given pad.
	 * The EOS event will pause the task associated with pad before it is forwarded
	 * to all internally linked pads,
	 * The the event is sent to all pads internally linked to pad. This function
	 * takes ownership of event.
	 * Params:
	 * parent = the parent of pad or NULL
	 * event = the GstEvent to handle. [transfer full]
	 * Returns: TRUE if the event was sent successfully.
	 */
	public int eventDefault(ObjectGst parent, Event event)
	{
		// gboolean gst_pad_event_default (GstPad *pad,  GstObject *parent,  GstEvent *event);
		return gst_pad_event_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Dispatches a query to a pad. The query should have been allocated by the
	 * caller via one of the type-specific allocation functions. The element that
	 * the pad belongs to is responsible for filling the query with an appropriate
	 * response, which should then be parsed with a type-specific query parsing
	 * function.
	 * Again, the caller is responsible for both the allocation and deallocation of
	 * the query structure.
	 * Please also note that some queries might need a running pipeline to work.
	 * Params:
	 * query = the GstQuery to perform. [transfer none]
	 * Returns: TRUE if the query could be performed.
	 */
	public int query(Query query)
	{
		// gboolean gst_pad_query (GstPad *pad,  GstQuery *query);
		return gst_pad_query(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Performs gst_pad_query() on the peer of pad.
	 * The caller is responsible for both the allocation and deallocation of
	 * the query structure.
	 * Params:
	 * query = the GstQuery to perform. [transfer none]
	 * Returns: TRUE if the query could be performed. This function returns FALSE if pad has no peer.
	 */
	public int peerQuery(Query query)
	{
		// gboolean gst_pad_peer_query (GstPad *pad,  GstQuery *query);
		return gst_pad_peer_query(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Invokes the default query handler for the given pad.
	 * The query is sent to all pads internally linked to pad. Note that
	 * if there are many possible sink pads that are internally linked to
	 * pad, only one will be sent the query.
	 * Multi-sinkpad elements should implement custom query handlers.
	 * Params:
	 * parent = the parent of pad or NULL
	 * query = the GstQuery to handle. [transfer none]
	 * Returns: TRUE if the query was performed successfully.
	 */
	public int queryDefault(ObjectGst parent, Query query)
	{
		// gboolean gst_pad_query_default (GstPad *pad,  GstObject *parent,  GstQuery *query);
		return gst_pad_query_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct(), (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Queries a pad for the stream position.
	 * Params:
	 * format = the GstFormat requested
	 * cur = A location in which to store the current position, or NULL. [out]
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryPosition(GstFormat format, out long cur)
	{
		// gboolean gst_pad_query_position (GstPad *pad,  GstFormat format,  gint64 *cur);
		return gst_pad_query_position(gstPad, format, &cur);
	}
	
	/**
	 * Queries a pad for the total stream duration.
	 * Params:
	 * format = the GstFormat requested
	 * duration = a location in which to store the total
	 * duration, or NULL. [out][allow-none]
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryDuration(GstFormat format, out long duration)
	{
		// gboolean gst_pad_query_duration (GstPad *pad,  GstFormat format,  gint64 *duration);
		return gst_pad_query_duration(gstPad, format, &duration);
	}
	
	/**
	 * Queries a pad to convert src_val in src_format to dest_format.
	 * Params:
	 * srcFormat = a GstFormat to convert from.
	 * srcVal = a value to convert.
	 * destFormat = the GstFormat to convert to.
	 * destVal = a pointer to the result. [out]
	 * Returns: TRUE if the query could be performed.
	 */
	public int queryConvert(GstFormat srcFormat, long srcVal, GstFormat destFormat, out long destVal)
	{
		// gboolean gst_pad_query_convert (GstPad *pad,  GstFormat src_format,  gint64 src_val,  GstFormat dest_format,  gint64 *dest_val);
		return gst_pad_query_convert(gstPad, srcFormat, srcVal, destFormat, &destVal);
	}
	
	/**
	 * Check if the given pad accepts the caps.
	 * Params:
	 * caps = a GstCaps to check on the pad
	 * Returns: TRUE if the pad can accept the caps.
	 */
	public int queryAcceptCaps(Caps caps)
	{
		// gboolean gst_pad_query_accept_caps (GstPad *pad,  GstCaps *caps);
		return gst_pad_query_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Gets the capabilities this pad can produce or consume.
	 * Note that this method doesn't necessarily return the caps set by
	 * gst_pad_set_caps() - use gst_pad_get_current_caps() for that instead.
	 * gst_pad_query_caps returns all possible caps a pad can operate with, using
	 * the pad's CAPS query function, If the query fails, this function will return
	 * filter, if not NULL, otherwise ANY.
	 * When called on sinkpads filter contains the caps that
	 * upstream could produce in the order preferred by upstream. When
	 * called on srcpads filter contains the caps accepted by
	 * downstream in the preffered order. filter might be NULL but
	 * if it is not NULL the returned caps will be a subset of filter.
	 * Note that this function does not return writable GstCaps, use
	 * gst_caps_make_writable() before modifying the caps.
	 * Params:
	 * filter = suggested GstCaps, or NULL. [allow-none]
	 * Returns: the caps of the pad with incremented ref-count. [transfer full]
	 */
	public Caps queryCaps(Caps filter)
	{
		// GstCaps * gst_pad_query_caps (GstPad *pad,  GstCaps *filter);
		auto p = gst_pad_query_caps(gstPad, (filter is null) ? null : filter.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Queries the peer of a given sink pad for the stream position.
	 * Params:
	 * format = the GstFormat requested
	 * cur = a location in which to store the current
	 * position, or NULL. [out][allow-none]
	 * Returns: TRUE if the query could be performed.
	 */
	public int peerQueryPosition(GstFormat format, out long cur)
	{
		// gboolean gst_pad_peer_query_position (GstPad *pad,  GstFormat format,  gint64 *cur);
		return gst_pad_peer_query_position(gstPad, format, &cur);
	}
	
	/**
	 * Queries the peer pad of a given sink pad for the total stream duration.
	 * Params:
	 * format = the GstFormat requested
	 * duration = a location in which to store the total
	 * duration, or NULL. [out][allow-none]
	 * Returns: TRUE if the query could be performed.
	 */
	public int peerQueryDuration(GstFormat format, out long duration)
	{
		// gboolean gst_pad_peer_query_duration (GstPad *pad,  GstFormat format,  gint64 *duration);
		return gst_pad_peer_query_duration(gstPad, format, &duration);
	}
	
	/**
	 * Queries the peer pad of a given sink pad to convert src_val in src_format
	 * to dest_format.
	 * Params:
	 * srcFormat = a GstFormat to convert from.
	 * srcVal = a value to convert.
	 * destFormat = the GstFormat to convert to.
	 * destVal = a pointer to the result. [out]
	 * Returns: TRUE if the query could be performed.
	 */
	public int peerQueryConvert(GstFormat srcFormat, long srcVal, GstFormat destFormat, out long destVal)
	{
		// gboolean gst_pad_peer_query_convert (GstPad *pad,  GstFormat src_format,  gint64 src_val,  GstFormat dest_format,  gint64 *dest_val);
		return gst_pad_peer_query_convert(gstPad, srcFormat, srcVal, destFormat, &destVal);
	}
	
	/**
	 * Check if the peer of pad accepts caps. If pad has no peer, this function
	 * returns TRUE.
	 * Params:
	 * caps = a GstCaps to check on the pad
	 * Returns: TRUE if the peer of pad can accept the caps or pad has no peer.
	 */
	public int peerQueryAcceptCaps(Caps caps)
	{
		// gboolean gst_pad_peer_query_accept_caps (GstPad *pad,  GstCaps *caps);
		return gst_pad_peer_query_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Gets the capabilities of the peer connected to this pad. Similar to
	 * gst_pad_query_caps().
	 * When called on srcpads filter contains the caps that
	 * upstream could produce in the order preferred by upstream. When
	 * called on sinkpads filter contains the caps accepted by
	 * downstream in the preffered order. filter might be NULL but
	 * if it is not NULL the returned caps will be a subset of filter.
	 * Params:
	 * filter = a GstCaps filter, or NULL. [allow-none]
	 * Returns: the caps of the peer pad with incremented ref-count. When there is no peer pad, this function returns filter or, when filter is NULL, ANY caps.
	 */
	public Caps peerQueryCaps(Caps filter)
	{
		// GstCaps * gst_pad_peer_query_caps (GstPad *pad,  GstCaps *filter);
		auto p = gst_pad_peer_query_caps(gstPad, (filter is null) ? null : filter.getCapsStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Set the given query function for the pad.
	 * Params:
	 * query = the GstPadQueryFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when query will not be used anymore.
	 */
	public void setQueryFunctionFull(GstPadQueryFunction query, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_query_function_full (GstPad *pad,  GstPadQueryFunction query,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_query_function_full(gstPad, query, userData, notify);
	}
	
	/**
	 * Sets the given internal link iterator function for the pad.
	 * Params:
	 * iterintlink = the GstPadIterIntLinkFunction to set.
	 * userData = user_data passed to notify
	 * notify = notify called when iterintlink will not be used anymore.
	 */
	public void setIterateInternalLinksFunctionFull(GstPadIterIntLinkFunction iterintlink, void* userData, GDestroyNotify notify)
	{
		// void gst_pad_set_iterate_internal_links_function_full  (GstPad *pad,  GstPadIterIntLinkFunction iterintlink,  gpointer user_data,  GDestroyNotify notify);
		gst_pad_set_iterate_internal_links_function_full(gstPad, iterintlink, userData, notify);
	}
	
	/**
	 * Gets an iterator for the pads to which the given pad is linked to inside
	 * of the parent element.
	 * Each GstPad element yielded by the iterator will have its refcount increased,
	 * so unref after use.
	 * Free-function: gst_iterator_free
	 * Returns: a new GstIterator of GstPad or NULL when the pad does not have an iterator function configured. Use gst_iterator_free() after usage. [transfer full]
	 */
	public Iterator iterateInternalLinks()
	{
		// GstIterator * gst_pad_iterate_internal_links (GstPad *pad);
		auto p = gst_pad_iterate_internal_links(gstPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Iterate the list of pads to which the given pad is linked to inside of
	 * the parent element.
	 * This is the default handler, and thus returns an iterator of all of the
	 * pads inside the parent element with opposite direction.
	 * The caller must free this iterator after use with gst_iterator_free().
	 * Params:
	 * parent = the parent of pad or NULL
	 * Returns: a GstIterator of GstPad, or NULL if pad has no parent. Unref each returned pad with gst_object_unref().
	 */
	public Iterator iterateInternalLinksDefault(ObjectGst parent)
	{
		// GstIterator * gst_pad_iterate_internal_links_default  (GstPad *pad,  GstObject *parent);
		auto p = gst_pad_iterate_internal_links_default(gstPad, (parent is null) ? null : parent.getObjectGstStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Iterator)(cast(GstIterator*) p);
	}
	
	/**
	 * Set the given private data gpointer on the pad.
	 * This function can only be used by the element that owns the pad.
	 * No locking is performed in this function.
	 * Params:
	 * priv = The private data to attach to the pad.
	 */
	public void setElementPrivate(void* priv)
	{
		// void gst_pad_set_element_private (GstPad *pad,  gpointer priv);
		gst_pad_set_element_private(gstPad, priv);
	}
	
	/**
	 * Gets the private data of a pad.
	 * No locking is performed in this function.
	 * Returns: a gpointer to the private data. [transfer none]
	 */
	public void* getElementPrivate()
	{
		// gpointer gst_pad_get_element_private (GstPad *pad);
		return gst_pad_get_element_private(gstPad);
	}
	
	/**
	 * Creates a stream-id for the source GstPad pad by combining the
	 * upstream information with the optional stream_id of the stream
	 * of pad. pad must have a parent GstElement and which must have zero
	 * or one sinkpad. stream_id can only be NULL if the parent element
	 * of pad has only a single source pad.
	 * This function generates an unique stream-id by getting the upstream
	 * stream-start event stream ID and appending stream_id to it. If the
	 * element has no sinkpad it will generate an upstream stream-id by
	 * doing an URI query on the element and in the worst case just uses
	 * a random number. Source elements that don't implement the URI
	 * handler interface should ideally generate a unique, deterministic
	 * stream-id manually instead.
	 * Params:
	 * parent = Parent GstElement of pad
	 * streamId = The stream-id. [allow-none]
	 * Returns: A stream-id for pad. g_free() after usage.
	 */
	public string createStreamId(Element parent, string streamId)
	{
		// gchar * gst_pad_create_stream_id (GstPad *pad,  GstElement *parent,  const gchar *stream_id);
		return Str.toString(gst_pad_create_stream_id(gstPad, (parent is null) ? null : parent.getElementStruct(), Str.toStringz(streamId)));
	}
	
	/**
	 * Creates a stream-id for the source GstPad pad by combining the
	 * upstream information with the optional stream_id of the stream
	 * of pad. pad must have a parent GstElement and which must have zero
	 * or one sinkpad. stream_id can only be NULL if the parent element
	 * of pad has only a single source pad.
	 * This function generates an unique stream-id by getting the upstream
	 * stream-start event stream ID and appending stream_id to it. If the
	 * element has no sinkpad it will generate an upstream stream-id by
	 * doing an URI query on the element and in the worst case just uses
	 * a random number. Source elements that don't implement the URI
	 * handler interface should ideally generate a unique, deterministic
	 * stream-id manually instead.
	 * Params:
	 * parent = Parent GstElement of pad
	 * streamId = The stream-id. [allow-none]
	 * varArgs = parameters for the stream_id format string
	 * Returns: A stream-id for pad. g_free() after usage.
	 */
	public string createStreamIdPrintfValist(Element parent, string streamId, void* varArgs)
	{
		// gchar * gst_pad_create_stream_id_printf_valist  (GstPad *pad,  GstElement *parent,  const gchar *stream_id,  va_list var_args);
		return Str.toString(gst_pad_create_stream_id_printf_valist(gstPad, (parent is null) ? null : parent.getElementStruct(), Str.toStringz(streamId), varArgs));
	}
	
	/**
	 * Calls forward for all internally linked pads of pad. This function deals with
	 * dynamically changing internal pads and will make sure that the forward
	 * function is only called once for each pad.
	 * When forward returns TRUE, no further pads will be processed.
	 * Params:
	 * forward = a GstPadForwardFunction. [scope call]
	 * userData = user data passed to forward
	 * Returns: TRUE if one of the dispatcher functions returned TRUE.
	 */
	public int forward(GstPadForwardFunction forward, void* userData)
	{
		// gboolean gst_pad_forward (GstPad *pad,  GstPadForwardFunction forward,  gpointer user_data);
		return gst_pad_forward(gstPad, forward, userData);
	}
	
	/**
	 * Chain a buffer to pad.
	 * The function returns GST_FLOW_FLUSHING if the pad was flushing.
	 * If the buffer type is not acceptable for pad (as negotiated with a
	 * preceeding GST_EVENT_CAPS event), this function returns
	 * GST_FLOW_NOT_NEGOTIATED.
	 * The function proceeds calling the chain function installed on pad (see
	 * gst_pad_set_chain_function()) and the return value of that function is
	 * returned to the caller. GST_FLOW_NOT_SUPPORTED is returned if pad has no
	 * chain function.
	 * In all cases, success or failure, the caller loses its reference to buffer
	 * after calling this function.
	 * Params:
	 * buffer = the GstBuffer to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad. MT safe.
	 */
	public GstFlowReturn chain(Buffer buffer)
	{
		// GstFlowReturn gst_pad_chain (GstPad *pad,  GstBuffer *buffer);
		return gst_pad_chain(gstPad, (buffer is null) ? null : buffer.getBufferStruct());
	}
	
	/**
	 * Chain a bufferlist to pad.
	 * The function returns GST_FLOW_FLUSHING if the pad was flushing.
	 * If pad was not negotiated properly with a CAPS event, this function
	 * returns GST_FLOW_NOT_NEGOTIATED.
	 * The function proceeds calling the chainlist function installed on pad (see
	 * gst_pad_set_chain_list_function()) and the return value of that function is
	 * returned to the caller. GST_FLOW_NOT_SUPPORTED is returned if pad has no
	 * chainlist function.
	 * In all cases, success or failure, the caller loses its reference to list
	 * after calling this function.
	 * MT safe.
	 * Params:
	 * list = the GstBufferList to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public GstFlowReturn chainList(BufferList list)
	{
		// GstFlowReturn gst_pad_chain_list (GstPad *pad,  GstBufferList *list);
		return gst_pad_chain_list(gstPad, (list is null) ? null : list.getBufferListStruct());
	}
	
	/**
	 * Starts a task that repeatedly calls func with user_data. This function
	 * is mostly used in pad activation functions to start the dataflow.
	 * The GST_PAD_STREAM_LOCK of pad will automatically be acquired
	 * before func is called.
	 * Params:
	 * func = the task function to call
	 * userData = user data passed to the task function
	 * notify = called when user_data is no longer referenced
	 * Returns: a TRUE if the task could be started.
	 */
	public int startTask(GstTaskFunction func, void* userData, GDestroyNotify notify)
	{
		// gboolean gst_pad_start_task (GstPad *pad,  GstTaskFunction func,  gpointer user_data,  GDestroyNotify notify);
		return gst_pad_start_task(gstPad, func, userData, notify);
	}
	
	/**
	 * Pause the task of pad. This function will also wait until the
	 * function executed by the task is finished if this function is not
	 * called from the task function.
	 * Returns: a TRUE if the task could be paused or FALSE when the pad has no task.
	 */
	public int pauseTask()
	{
		// gboolean gst_pad_pause_task (GstPad *pad);
		return gst_pad_pause_task(gstPad);
	}
	
	/**
	 * Stop the task of pad. This function will also make sure that the
	 * function executed by the task will effectively stop if not called
	 * from the GstTaskFunction.
	 * This function will deadlock if called from the GstTaskFunction of
	 * the task. Use gst_task_pause() instead.
	 * Regardless of whether the pad has a task, the stream lock is acquired and
	 * released so as to ensure that streaming through this pad has finished.
	 * Returns: a TRUE if the task could be stopped or FALSE on error.
	 */
	public int stopTask()
	{
		// gboolean gst_pad_stop_task (GstPad *pad);
		return gst_pad_stop_task(gstPad);
	}
	
	/**
	 * Activates or deactivates the given pad.
	 * Normally called from within core state change functions.
	 * If active, makes sure the pad is active. If it is already active, either in
	 * push or pull mode, just return. Otherwise dispatches to the pad's activate
	 * function to perform the actual activation.
	 * If not active, calls gst_pad_activate_mode() with the pad's current mode
	 * and a FALSE argument.
	 * Params:
	 * active = whether or not the pad should be active.
	 * Returns: TRUE if the operation was successful. MT safe.
	 */
	public int setActive(int active)
	{
		// gboolean gst_pad_set_active (GstPad *pad,  gboolean active);
		return gst_pad_set_active(gstPad, active);
	}
}
