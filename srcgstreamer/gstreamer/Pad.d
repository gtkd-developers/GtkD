/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gst_element_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_pad_load_and_link
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Element
 * 	- gstreamer.MiniObject
 * 	- gstreamer.PadTemplate
 * 	- gstreamer.Caps
 * 	- gstreamer.Buffer
 * 	- gstreamer.Event
 * 	- gstreamer.Query
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstBuffer* -> Buffer
 * 	- GstCaps* -> Caps
 * 	- GstElement* -> Element
 * 	- GstEvent* -> Event
 * 	- GstMiniObject* -> MiniObject
 * 	- GstPad* -> Pad
 * 	- GstPadTemplate* -> PadTemplate
 * 	- GstQuery* -> Query
 * module aliases:
 * local aliases:
 */

module gstreamer.Pad;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import gstreamer.Element;
private import gstreamer.MiniObject;
private import gstreamer.PadTemplate;
private import gstreamer.Caps;
private import gstreamer.Buffer;
private import gstreamer.Event;
private import gstreamer.Query;
private import glib.ListG;




/**
 * Description
 * A GstElement is linked to other elements via "pads", which are extremely
 * light-weight generic link points.
 * After two pads are retrieved from an element with gst_element_get_pad(),
 * the pads can be link with gst_pad_link(). (For quick links,
 * you can also use gst_element_link(), which will make the obvious
 * link for you if it's straightforward.)
 * Pads are typically created from a GstPadTemplate with
 * gst_pad_new_from_template().
 * Pads have GstCaps attached to it to describe the media type they are
 * capable of dealing with. gst_pad_get_caps() and gst_pad_set_caps() are
 * used to manipulate the caps of the pads.
 * Pads created from a pad template cannot set capabilities that are
 * incompatible with the pad template capabilities.
 * Pads without pad templates can be created with gst_pad_new(),
 * which takes a direction and a name as an argument. If the name is NULL,
 * then a guaranteed unique name will be assigned to it.
 * gst_pad_get_parent() will retrieve the GstElement that owns the pad.
 * A GstElement creating a pad will typically use the various
 * gst_pad_set_*_function() calls to register callbacks for various events
 * on the pads.
 * GstElements will use gst_pad_push() and gst_pad_pull_range() to push out
 * or pull in a buffer.
 * To send a GstEvent on a pad, use gst_pad_send_event() and
 * gst_pad_push_event().
 * Last reviewed on 2006-07-06 (0.10.9)
 */
private import gstreamer.ObjectGst;
public class Pad : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstPad* gstPad;
	
	
	public GstPad* getPadStruct()
	{
		return gstPad;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPad;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstPad* gstPad)
	{
		version(noAssert)
		{
			if ( gstPad is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstPad is null on constructor").newline;
				}
				else
				{
					printf("struct gstPad is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstPad !is null, "struct gstPad is null on constructor");
		}
		super(cast(GstObject*)gstPad);
		this.gstPad = gstPad;
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
		GstFormat form = GstFormat.TIME;
		long cur_pos;
		queryPosition( &form, &cur_pos );
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
		GstFormat form = GstFormat.TIME;
		long cur_dur;
		queryDuration( &form, &cur_dur );
		return cur_dur;
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	gboolean delegate(MiniObject, Pad)[] onHaveDataListeners;
	void addOnHaveData(gboolean delegate(MiniObject, Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("have-data" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"have-data",
			cast(GCallback)&callBackHaveData,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["have-data"] = 1;
		}
		onHaveDataListeners ~= dlg;
	}
	extern(C) static void callBackHaveData(GstPad* padStruct, GstMiniObject* miniObj, Pad pad)
	{
		bool consumed = false;
		
		foreach ( gboolean delegate(MiniObject, Pad) dlg ; pad.onHaveDataListeners )
		{
			dlg(new MiniObject(miniObj), pad);
		}
		
		return consumed;
	}
	
	void delegate(Pad, Pad)[] onLinkedListeners;
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
	extern(C) static void callBackLinked(GstPad* padStruct, GstPad* peer, Pad pad)
	{
		bool consumed = false;
		
		foreach ( void delegate(Pad, Pad) dlg ; pad.onLinkedListeners )
		{
			dlg(new Pad(peer), pad);
		}
		
		return consumed;
	}
	
	void delegate(Pad)[] onRequestLinkListeners;
	void addOnRequestLink(void delegate(Pad) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("request-link" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"request-link",
			cast(GCallback)&callBackRequestLink,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["request-link"] = 1;
		}
		onRequestLinkListeners ~= dlg;
	}
	extern(C) static void callBackRequestLink(GstPad* padStruct, Pad pad)
	{
		bool consumed = false;
		
		foreach ( void delegate(Pad) dlg ; pad.onRequestLinkListeners )
		{
			dlg(pad);
		}
		
		return consumed;
	}
	
	void delegate(Pad, Pad)[] onUnlinkedListeners;
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
	extern(C) static void callBackUnlinked(GstPad* padStruct, GstPad* peer, Pad pad)
	{
		bool consumed = false;
		
		foreach ( void delegate(Pad, Pad) dlg ; pad.onUnlinkedListeners )
		{
			dlg(new Pad(peer), pad);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Gets the direction of the pad. The direction of the pad is
	 * decided at construction time so this function does not take
	 * the LOCK.
	 * pad:
	 *  a GstPad to get the direction of.
	 * Returns:
	 *  the GstPadDirection of the pad.
	 * MT safe.
	 */
	public GstPadDirection getDirection()
	{
		// GstPadDirection gst_pad_get_direction (GstPad *pad);
		return gst_pad_get_direction(gstPad);
	}
	
	
	/**
	 * Gets the parent of pad, cast to a GstElement. If a pad has no parent or
	 * its parent is not an element, return NULL.
	 * pad:
	 *  a pad
	 * Returns:
	 *  The parent of the pad. The caller has a reference on the parent, so
	 * unref when you're finished with it.
	 * MT safe.
	 */
	public Element getParentElement()
	{
		// GstElement* gst_pad_get_parent_element (GstPad *pad);
		return new Element( gst_pad_get_parent_element(gstPad) );
	}
	
	/**
	 * Gets the template for pad.
	 * pad:
	 *  a GstPad.
	 * Returns:
	 *  the GstPadTemplate from which this pad was instantiated, or NULL
	 * if this pad has no template.
	 * FIXME: currently returns an unrefcounted padtemplate.
	 */
	public PadTemplate getPadTemplate()
	{
		// GstPadTemplate* gst_pad_get_pad_template (GstPad *pad);
		return new PadTemplate( gst_pad_get_pad_template(gstPad) );
	}
	
	/**
	 * Links the source pad and the sink pad.
	 * srcpad:
	 *  the source GstPad to link.
	 * sinkpad:
	 *  the sink GstPad to link.
	 * Returns:
	 *  A result code indicating if the connection worked or
	 *  what went wrong.
	 * MT Safe.
	 */
	public GstPadLinkReturn link(Pad sinkpad)
	{
		// GstPadLinkReturn gst_pad_link (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Unlinks the source pad from the sink pad. Will emit the "unlinked" signal on
	 * both pads.
	 * srcpad:
	 *  the source GstPad to unlink.
	 * sinkpad:
	 *  the sink GstPad to unlink.
	 * Returns:
	 *  TRUE if the pads were unlinked. This function returns FALSE if
	 * the pads were not linked together.
	 * MT safe.
	 */
	public int unlink(Pad sinkpad)
	{
		// gboolean gst_pad_unlink (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_unlink(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Checks if a pad is linked to another pad or not.
	 * pad:
	 *  pad to check
	 * Returns:
	 *  TRUE if the pad is linked, FALSE otherwise.
	 * MT safe.
	 */
	public int isLinked()
	{
		// gboolean gst_pad_is_linked (GstPad *pad);
		return gst_pad_is_linked(gstPad);
	}
	
	/**
	 * Checks if the source pad and the sink pad can be linked.
	 * Both srcpad and sinkpad must be unlinked.
	 * srcpad:
	 *  the source GstPad to link.
	 * sinkpad:
	 *  the sink GstPad to link.
	 * Returns:
	 *  TRUE if the pads can be linked, FALSE otherwise.
	 */
	public int canLink(Pad sinkpad)
	{
		// gboolean gst_pad_can_link (GstPad *srcpad,  GstPad *sinkpad);
		return gst_pad_can_link(gstPad, (sinkpad is null) ? null : sinkpad.getPadStruct());
	}
	
	/**
	 * Gets the capabilities this pad can produce or consume.
	 * Note that this method doesn't necessarily return the caps set by
	 * gst_pad_set_caps() - use GST_PAD_CAPS for that instead.
	 * gst_pad_get_caps returns all possible caps a pad can operate with, using
	 * the pad's get_caps function;
	 * this returns the pad template caps if not explicitly set.
	 * pad:
	 *  a GstPad to get the capabilities of.
	 * Returns:
	 *  a newly allocated copy of the GstCaps of this pad.
	 * MT safe.
	 */
	public Caps getCaps()
	{
		// GstCaps* gst_pad_get_caps (GstPad *pad);
		return new Caps( gst_pad_get_caps(gstPad) );
	}
	
	/**
	 * Gets the capabilities of the allowed media types that can flow through
	 * pad and its peer.
	 * The allowed capabilities is calculated as the intersection of the results of
	 * calling gst_pad_get_caps() on pad and its peer. The caller owns a reference
	 * on the resulting caps.
	 * pad:
	 *  a GstPad.
	 * Returns:
	 *  the allowed GstCaps of the pad link. Unref the caps when you no
	 * longer need it. This function returns NULL when pad has no peer.
	 * MT safe.
	 */
	public Caps getAllowedCaps()
	{
		// GstCaps* gst_pad_get_allowed_caps (GstPad *pad);
		return new Caps( gst_pad_get_allowed_caps(gstPad) );
	}
	
	/**
	 * Gets the capabilities of the media type that currently flows through pad
	 * and its peer.
	 * This function can be used on both src and sinkpads. Note that srcpads are
	 * always negotiated before sinkpads so it is possible that the negotiated caps
	 * on the srcpad do not match the negotiated caps of the peer.
	 * pad:
	 *  a GstPad.
	 * Returns:
	 *  the negotiated GstCaps of the pad link. Free the caps when
	 * you no longer need it. This function returns NULL when the pad has no
	 * peer or is not negotiated yet.
	 * MT safe.
	 */
	public Caps getNegotiatedCaps()
	{
		// GstCaps* gst_pad_get_negotiated_caps (GstPad *pad);
		return new Caps( gst_pad_get_negotiated_caps(gstPad) );
	}
	
	/**
	 * Gets the capabilities for pad's template.
	 * pad:
	 *  a GstPad to get the template capabilities from.
	 * Returns:
	 *  the GstCaps of this pad template. If you intend to keep a reference
	 * on the caps, make a copy (see gst_caps_copy()).
	 */
	public Caps getPadTemplateCaps()
	{
		// const GstCaps* gst_pad_get_pad_template_caps  (GstPad *pad);
		return new Caps( gst_pad_get_pad_template_caps(gstPad) );
	}
	
	/**
	 * Sets the capabilities of this pad. The caps must be fixed. Any previous
	 * caps on the pad will be unreffed. This function refs the caps so you should
	 * unref if as soon as you don't need it anymore.
	 * It is possible to set NULL caps, which will make the pad unnegotiated
	 * again.
	 * pad:
	 *  a GstPad to set the capabilities of.
	 * caps:
	 *  a GstCaps to set.
	 * Returns:
	 *  TRUE if the caps could be set. FALSE if the caps were not fixed
	 * or bad parameters were provided to this function.
	 * MT safe.
	 */
	public int setCaps(Caps caps)
	{
		// gboolean gst_pad_set_caps (GstPad *pad,  GstCaps *caps);
		return gst_pad_set_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Gets the peer of pad. This function refs the peer pad so
	 * you need to unref it after use.
	 * pad:
	 *  a GstPad to get the peer of.
	 * Returns:
	 *  the peer GstPad. Unref after usage.
	 * MT safe.
	 */
	public Pad getPeer()
	{
		// GstPad* gst_pad_get_peer (GstPad *pad);
		return new Pad( gst_pad_get_peer(gstPad) );
	}
	
	/**
	 * Gets the capabilities of the peer connected to this pad.
	 * pad:
	 *  a GstPad to get the peer capabilities of.
	 * Returns:
	 *  the GstCaps of the peer pad. This function returns a new caps, so use
	 * gst_caps_unref to get rid of it. this function returns NULL if there is no
	 * peer pad.
	 */
	public Caps peerGetCaps()
	{
		// GstCaps* gst_pad_peer_get_caps (GstPad *pad);
		return new Caps( gst_pad_peer_get_caps(gstPad) );
	}
	
	/**
	 * A helper function you can use that sets the
	 * gst_pad_get_fixed_caps_func as the getcaps function for the
	 * pad. This way the function will always return the negotiated caps
	 * or in case the pad is not negotiated, the padtemplate caps.
	 * Use this function on a pad that, once _set_caps() has been called
	 * on it, cannot be renegotiated to something else.
	 * pad:
	 *  the pad to use
	 */
	public void useFixedCaps()
	{
		// void gst_pad_use_fixed_caps (GstPad *pad);
		gst_pad_use_fixed_caps(gstPad);
	}
	
	/**
	 * Query if a pad is active
	 * pad:
	 *  the GstPad to query
	 * Returns:
	 *  TRUE if the pad is active.
	 * MT safe.
	 */
	public int isActive()
	{
		// gboolean gst_pad_is_active (GstPad *pad);
		return gst_pad_is_active(gstPad);
	}
	
	/**
	 * Blocks or unblocks the dataflow on a pad. This function is
	 * a shortcut for gst_pad_set_blocked_async() with a NULL
	 * callback.
	 * pad:
	 *  the GstPad to block or unblock
	 * blocked:
	 *  boolean indicating we should block or unblock
	 * Returns:
	 *  TRUE if the pad could be blocked. This function can fail
	 *  wrong parameters were passed or the pad was already in the
	 *  requested state.
	 * MT safe.
	 */
	public int setBlocked(int blocked)
	{
		// gboolean gst_pad_set_blocked (GstPad *pad,  gboolean blocked);
		return gst_pad_set_blocked(gstPad, blocked);
	}
	
	/**
	 * Blocks or unblocks the dataflow on a pad. The provided callback
	 * is called when the operation succeeds; this happens right before the next
	 * attempt at pushing a buffer on the pad.
	 * This can take a while as the pad can only become blocked when real dataflow
	 * is happening.
	 * When the pipeline is stalled, for example in PAUSED, this can
	 * take an indeterminate amount of time.
	 * You can pass NULL as the callback to make this call block. Be careful with
	 * this blocking call as it might not return for reasons stated above.
	 * pad:
	 *  the GstPad to block or unblock
	 * blocked:
	 *  boolean indicating whether the pad should be blocked or unblocked
	 * callback:
	 *  GstPadBlockCallback that will be called when the
	 *  operation succeeds
	 * user_data:
	 *  user data passed to the callback
	 * Returns:
	 *  TRUE if the pad could be blocked. This function can fail
	 *  if wrong parameters were passed or the pad was already in the
	 *  requested state.
	 * MT safe.
	 */
	public int setBlockedAsync(int blocked, GstPadBlockCallback callback, void* userData)
	{
		// gboolean gst_pad_set_blocked_async (GstPad *pad,  gboolean blocked,  GstPadBlockCallback callback,  gpointer user_data);
		return gst_pad_set_blocked_async(gstPad, blocked, callback, userData);
	}
	
	
	/**
	 * Checks if the pad is blocked or not. This function returns the
	 * last requested state of the pad. It is not certain that the pad
	 * is actually blocking at this point (see gst_pad_is_blocking()).
	 * pad:
	 *  the GstPad to query
	 * Returns:
	 *  TRUE if the pad is blocked.
	 * MT safe.
	 */
	public int isBlocked()
	{
		// gboolean gst_pad_is_blocked (GstPad *pad);
		return gst_pad_is_blocked(gstPad);
	}
	
	/**
	 * Checks if the pad is blocking or not. This is a guaranteed state
	 * of whether the pad is actually blocking on a GstBuffer or a GstEvent.
	 * pad:
	 *  the GstPad to query
	 * Returns:
	 *  TRUE if the pad is blocking.
	 * MT safe.
	 * Since 0.10.11
	 */
	public int isBlocking()
	{
		// gboolean gst_pad_is_blocking (GstPad *pad);
		return gst_pad_is_blocking(gstPad);
	}
	
	/**
	 * Adds a "data probe" to a pad. This function will be called whenever data
	 * passes through a pad. In this case data means both events and buffers. The
	 * probe will be called with the data as an argument, meaning handler should
	 * have the same callback signature as the 'have-data' signal of GstPad.
	 * Note that the data will have a reference count greater than 1, so it will
	 * be immutable -- you must not change it.
	 * For source pads, the probe will be called after the blocking function, if any
	 * (see gst_pad_set_blocked_async()), but before looking up the peer to chain
	 * to. For sink pads, the probe function will be called before configuring the
	 * sink with new caps, if any, and before calling the pad's chain function.
	 * Your data probe should return TRUE to let the data continue to flow, or FALSE
	 * to drop it. Dropping data is rarely useful, but occasionally comes in handy
	 * with events.
	 * Although probes are implemented internally by connecting handler to the
	 * have-data signal on the pad, if you want to remove a probe it is insufficient
	 * to only call g_signal_handler_disconnect on the returned handler id. To
	 * remove a probe, use the appropriate function, such as
	 * gst_pad_remove_data_probe().
	 * pad:
	 *  pad to add the data probe handler to
	 * handler:
	 *  function to call when data is passed over pad
	 * data:
	 *  data to pass along with the handler
	 * Returns:
	 *  The handler id.
	 */
	public uint addDataProbe(GCallback handler, void* data)
	{
		// gulong gst_pad_add_data_probe (GstPad *pad,  GCallback handler,  gpointer data);
		return gst_pad_add_data_probe(gstPad, handler, data);
	}
	
	/**
	 * Adds a probe that will be called for all buffers passing through a pad. See
	 * gst_pad_add_data_probe() for more information.
	 * pad:
	 *  pad to add the buffer probe handler to
	 * handler:
	 *  function to call when data is passed over pad
	 * data:
	 *  data to pass along with the handler
	 * Returns:
	 *  The handler id
	 */
	public uint addBufferProbe(GCallback handler, void* data)
	{
		// gulong gst_pad_add_buffer_probe (GstPad *pad,  GCallback handler,  gpointer data);
		return gst_pad_add_buffer_probe(gstPad, handler, data);
	}
	
	/**
	 * Adds a probe that will be called for all events passing through a pad. See
	 * gst_pad_add_data_probe() for more information.
	 * pad:
	 *  pad to add the event probe handler to
	 * handler:
	 *  function to call when data is passed over pad
	 * data:
	 *  data to pass along with the handler
	 * Returns:
	 *  The handler id
	 */
	public uint addEventProbe(GCallback handler, void* data)
	{
		// gulong gst_pad_add_event_probe (GstPad *pad,  GCallback handler,  gpointer data);
		return gst_pad_add_event_probe(gstPad, handler, data);
	}
	
	/**
	 * Removes a data probe from pad.
	 * pad:
	 *  pad to remove the data probe handler from
	 * handler_id:
	 *  handler id returned from gst_pad_add_data_probe
	 */
	public void removeDataProbe(uint handlerId)
	{
		// void gst_pad_remove_data_probe (GstPad *pad,  guint handler_id);
		gst_pad_remove_data_probe(gstPad, handlerId);
	}
	
	/**
	 * Removes a buffer probe from pad.
	 * pad:
	 *  pad to remove the buffer probe handler from
	 * handler_id:
	 *  handler id returned from gst_pad_add_buffer_probe
	 */
	public void removeBufferProbe(uint handlerId)
	{
		// void gst_pad_remove_buffer_probe (GstPad *pad,  guint handler_id);
		gst_pad_remove_buffer_probe(gstPad, handlerId);
	}
	
	/**
	 * Removes an event probe from pad.
	 * pad:
	 *  pad to remove the event probe handler from
	 * handler_id:
	 *  handler id returned from gst_pad_add_event_probe
	 */
	public void removeEventProbe(uint handlerId)
	{
		// void gst_pad_remove_event_probe (GstPad *pad,  guint handler_id);
		gst_pad_remove_event_probe(gstPad, handlerId);
	}
	
	/**
	 * Creates a new pad with the given name in the given direction.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * name:
	 *  the name of the new pad.
	 * direction:
	 *  the GstPadDirection of the pad.
	 * Returns:
	 *  a new GstPad, or NULL in case of an error.
	 * MT safe.
	 */
	public this (char[] name, GstPadDirection direction)
	{
		// GstPad* gst_pad_new (const gchar *name,  GstPadDirection direction);
		this(cast(GstPad*)gst_pad_new(Str.toStringz(name), direction) );
	}
	
	/**
	 * Creates a new pad with the given name from the given template.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * templ:
	 *  the pad template to use
	 * name:
	 *  the name of the element
	 * Returns:
	 *  a new GstPad, or NULL in case of an error.
	 */
	public this (PadTemplate templ, char[] name)
	{
		// GstPad* gst_pad_new_from_template (GstPadTemplate *templ,  const gchar *name);
		this(cast(GstPad*)gst_pad_new_from_template((templ is null) ? null : templ.getPadTemplateStruct(), Str.toStringz(name)) );
	}
	
	/**
	 * Creates a new pad with the given name from the given static template.
	 * If name is NULL, a guaranteed unique name (across all pads)
	 * will be assigned.
	 * This function makes a copy of the name so you can safely free the name.
	 * templ:
	 *  the GstStaticPadTemplate to use
	 * name:
	 *  the name of the element
	 * Returns:
	 *  a new GstPad, or NULL in case of an error.
	 */
	public this (GstStaticPadTemplate* templ, char[] name)
	{
		// GstPad* gst_pad_new_from_static_template  (GstStaticPadTemplate *templ,  const gchar *name);
		this(cast(GstPad*)gst_pad_new_from_static_template(templ, Str.toStringz(name)) );
	}
	
	/**
	 * Allocates a new, empty buffer optimized to push to pad pad. This
	 * function only works if pad is a source pad and has a peer.
	 * A new, empty GstBuffer will be put in the buf argument.
	 * You need to check the caps of the buffer after performing this
	 * function and renegotiate to the format if needed.
	 * pad:
	 *  a source GstPad
	 * offset:
	 *  the offset of the new buffer in the stream
	 * size:
	 *  the size of the new buffer
	 * caps:
	 *  the caps of the new buffer
	 * buf:
	 *  a newly allocated buffer
	 * Returns:
	 *  a result code indicating success of the operation. Any
	 * result code other than GST_FLOW_OK is an error and buf should
	 * not be used.
	 * An error can occur if the pad is not connected or when the downstream
	 * peer elements cannot provide an acceptable buffer.
	 * MT safe.
	 */
	public GstFlowReturn allocBuffer(ulong offset, int size, Caps caps, GstBuffer** buf)
	{
		// GstFlowReturn gst_pad_alloc_buffer (GstPad *pad,  guint64 offset,  gint size,  GstCaps *caps,  GstBuffer **buf);
		return gst_pad_alloc_buffer(gstPad, offset, size, (caps is null) ? null : caps.getCapsStruct(), buf);
	}
	
	/**
	 * In addition to the function gst_pad_alloc_buffer(), this function
	 * automatically calls gst_pad_set_caps() when the caps of the
	 * newly allocated buffer are different from the pad caps.
	 * pad:
	 *  a source GstPad
	 * offset:
	 *  the offset of the new buffer in the stream
	 * size:
	 *  the size of the new buffer
	 * caps:
	 *  the caps of the new buffer
	 * buf:
	 *  a newly allocated buffer
	 * Returns:
	 *  a result code indicating success of the operation. Any
	 * result code other than GST_FLOW_OK is an error and buf should
	 * not be used.
	 * An error can occur if the pad is not connected or when the downstream
	 * peer elements cannot provide an acceptable buffer.
	 * MT safe.
	 */
	public GstFlowReturn allocBufferAndSetCaps(ulong offset, int size, Caps caps, GstBuffer** buf)
	{
		// GstFlowReturn gst_pad_alloc_buffer_and_set_caps  (GstPad *pad,  guint64 offset,  gint size,  GstCaps *caps,  GstBuffer **buf);
		return gst_pad_alloc_buffer_and_set_caps(gstPad, offset, size, (caps is null) ? null : caps.getCapsStruct(), buf);
	}
	
	/**
	 * Sets the given bufferalloc function for the pad. Note that the
	 * bufferalloc function can only be set on sinkpads.
	 * pad:
	 *  a sink GstPad.
	 * bufalloc:
	 *  the GstPadBufferAllocFunction to set.
	 */
	public void setBufferallocFunction(GstPadBufferAllocFunction bufalloc)
	{
		// void gst_pad_set_bufferalloc_function  (GstPad *pad,  GstPadBufferAllocFunction bufalloc);
		gst_pad_set_bufferalloc_function(gstPad, bufalloc);
	}
	
	
	/**
	 * Sets the given chain function for the pad. The chain function is called to
	 * process a GstBuffer input buffer. see GstPadChainFunction for more details.
	 * pad:
	 *  a sink GstPad.
	 * chain:
	 *  the GstPadChainFunction to set.
	 */
	public void setChainFunction(GstPadChainFunction chain)
	{
		// void gst_pad_set_chain_function (GstPad *pad,  GstPadChainFunction chain);
		gst_pad_set_chain_function(gstPad, chain);
	}
	
	
	/**
	 * Sets the given checkgetrange function for the pad. Implement this function on
	 * a pad if you dynamically support getrange based scheduling on the pad.
	 * pad:
	 *  a source GstPad.
	 * check:
	 *  the GstPadCheckGetRangeFunction to set.
	 */
	public void setCheckgetrangeFunction(GstPadCheckGetRangeFunction check)
	{
		// void gst_pad_set_checkgetrange_function  (GstPad *pad,  GstPadCheckGetRangeFunction check);
		gst_pad_set_checkgetrange_function(gstPad, check);
	}
	
	
	/**
	 * When pad is flushing this function returns GST_FLOW_WRONG_STATE
	 * immediatly.
	 * Calls the getrange function of pad, see GstPadGetRangeFunction for a
	 * description of a getrange function. If pad has no getrange function
	 * installed (see gst_pad_set_getrange_function()) this function returns
	 * GST_FLOW_NOT_SUPPORTED.
	 * buffer's caps must either be unset or the same as what is already configured
	 * on pad. Renegotiation within a running pull-mode pipeline is not supported.
	 * pad:
	 *  a src GstPad, returns GST_FLOW_ERROR if not.
	 * offset:
	 *  The start offset of the buffer
	 * size:
	 *  The length of the buffer
	 * buffer:
	 *  a pointer to hold the GstBuffer, returns GST_FLOW_ERROR if NULL.
	 * Returns:
	 *  a GstFlowReturn from the pad.
	 * MT safe.
	 */
	public GstFlowReturn getRange(ulong offset, uint size, GstBuffer** buffer)
	{
		// GstFlowReturn gst_pad_get_range (GstPad *pad,  guint64 offset,  guint size,  GstBuffer **buffer);
		return gst_pad_get_range(gstPad, offset, size, buffer);
	}
	
	/**
	 * Sets the given getrange function for the pad. The getrange function is called to
	 * produce a new GstBuffer to start the processing pipeline. see
	 * GstPadGetRangeFunction for a description of the getrange function.
	 * pad:
	 *  a source GstPad.
	 * get:
	 *  the GstPadGetRangeFunction to set.
	 */
	public void setGetrangeFunction(GstPadGetRangeFunction get)
	{
		// void gst_pad_set_getrange_function (GstPad *pad,  GstPadGetRangeFunction get);
		gst_pad_set_getrange_function(gstPad, get);
	}
	
	
	/**
	 * Sets the given event handler for the pad.
	 * pad:
	 *  a source GstPad.
	 * event:
	 *  the GstPadEventFunction to set.
	 */
	public void setEventFunction(GstPadEventFunction event)
	{
		// void gst_pad_set_event_function (GstPad *pad,  GstPadEventFunction event);
		gst_pad_set_event_function(gstPad, event);
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
	 * pad:
	 *  a GstPad.
	 * link:
	 *  the GstPadLinkFunction to set.
	 */
	public void setLinkFunction(GstPadLinkFunction link)
	{
		// void gst_pad_set_link_function (GstPad *pad,  GstPadLinkFunction link);
		gst_pad_set_link_function(gstPad, link);
	}
	
	
	/**
	 * Sets the given unlink function for the pad. It will be called
	 * when the pad is unlinked.
	 * pad:
	 *  a GstPad.
	 * unlink:
	 *  the GstPadUnlinkFunction to set.
	 */
	public void setUnlinkFunction(GstPadUnlinkFunction unlink)
	{
		// void gst_pad_set_unlink_function (GstPad *pad,  GstPadUnlinkFunction unlink);
		gst_pad_set_unlink_function(gstPad, unlink);
	}
	
	
	/**
	 * Check if the given pad accepts the caps.
	 * pad:
	 *  a GstPad to check
	 * caps:
	 *  a GstCaps to check on the pad
	 * Returns:
	 *  TRUE if the pad can accept the caps.
	 */
	public int acceptCaps(Caps caps)
	{
		// gboolean gst_pad_accept_caps (GstPad *pad,  GstCaps *caps);
		return gst_pad_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Sets the given acceptcaps function for the pad. The acceptcaps function
	 * will be called to check if the pad can accept the given caps. Setting the
	 * acceptcaps function to NULL restores the default behaviour of allowing
	 * any caps that matches the caps from gst_pad_get_caps.
	 * pad:
	 *  a GstPad.
	 * acceptcaps:
	 *  the GstPadAcceptCapsFunction to set.
	 */
	public void setAcceptcapsFunction(GstPadAcceptCapsFunction acceptcaps)
	{
		// void gst_pad_set_acceptcaps_function (GstPad *pad,  GstPadAcceptCapsFunction acceptcaps);
		gst_pad_set_acceptcaps_function(gstPad, acceptcaps);
	}
	
	
	/**
	 * Sets the given getcaps function for the pad. getcaps should return the
	 * allowable caps for a pad in the context of the element's state, its link to
	 * other elements, and the devices or files it has opened. These caps must be a
	 * subset of the pad template caps. In the NULL state with no links, getcaps
	 * should ideally return the same caps as the pad template. In rare
	 * circumstances, an object property can affect the caps returned by getcaps,
	 * but this is discouraged.
	 * You do not need to call this function if pad's allowed caps are always the
	 * same as the pad template caps. This can only be true if the padtemplate
	 * has fixed simple caps.
	 * For most filters, the caps returned by getcaps is directly affected by the
	 * allowed caps on other pads. For demuxers and decoders, the caps returned by
	 * the srcpad's getcaps function is directly related to the stream data. Again,
	 * getcaps should return the most specific caps it reasonably can, since this
	 * helps with autoplugging.
	 * Note that the return value from getcaps is owned by the caller, so the caller
	 * should unref the caps after usage.
	 * pad:
	 *  a GstPad.
	 * getcaps:
	 *  the GstPadGetCapsFunction to set.
	 */
	public void setGetcapsFunction(GstPadGetCapsFunction getcaps)
	{
		// void gst_pad_set_getcaps_function (GstPad *pad,  GstPadGetCapsFunction getcaps);
		gst_pad_set_getcaps_function(gstPad, getcaps);
	}
	
	
	/**
	 * Calls gst_pad_get_allowed_caps() for every other pad belonging to the
	 * same element as pad, and returns the intersection of the results.
	 * This function is useful as a default getcaps function for an element
	 * that can handle any stream format, but requires all its pads to have
	 * the same caps. Two such elements are tee and aggregator.
	 * pad:
	 *  a GstPad to proxy.
	 * Returns:
	 *  the intersection of the other pads' allowed caps.
	 */
	public Caps proxyGetcaps()
	{
		// GstCaps* gst_pad_proxy_getcaps (GstPad *pad);
		return new Caps( gst_pad_proxy_getcaps(gstPad) );
	}
	
	/**
	 * Sets the given setcaps function for the pad. The setcaps function
	 * will be called whenever a buffer with a new media type is pushed or
	 * pulled from the pad. The pad/element needs to update its internal
	 * structures to process the new media type. If this new type is not
	 * acceptable, the setcaps function should return FALSE.
	 * pad:
	 *  a GstPad.
	 * setcaps:
	 *  the GstPadSetCapsFunction to set.
	 */
	public void setSetcapsFunction(GstPadSetCapsFunction setcaps)
	{
		// void gst_pad_set_setcaps_function (GstPad *pad,  GstPadSetCapsFunction setcaps);
		gst_pad_set_setcaps_function(gstPad, setcaps);
	}
	
	
	/**
	 * Calls gst_pad_set_caps() for every other pad belonging to the
	 * same element as pad. If gst_pad_set_caps() fails on any pad,
	 * the proxy setcaps fails. May be used only during negotiation.
	 * pad:
	 *  a GstPad to proxy from
	 * caps:
	 *  the GstCaps to link with
	 * Returns:
	 *  TRUE if sucessful
	 */
	public int proxySetcaps(Caps caps)
	{
		// gboolean gst_pad_proxy_setcaps (GstPad *pad,  GstCaps *caps);
		return gst_pad_proxy_setcaps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Fixate a caps on the given pad. Modifies the caps in place, so you should
	 * make sure that the caps are actually writable (see gst_caps_make_writable()).
	 * pad:
	 *  a GstPad to fixate
	 * caps:
	 *  the GstCaps to fixate
	 */
	public void fixateCaps(Caps caps)
	{
		// void gst_pad_fixate_caps (GstPad *pad,  GstCaps *caps);
		gst_pad_fixate_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Sets the given fixatecaps function for the pad. The fixatecaps function
	 * will be called whenever the default values for a GstCaps needs to be
	 * filled in.
	 * pad:
	 *  a GstPad.
	 * fixatecaps:
	 *  the GstPadFixateCapsFunction to set.
	 */
	public void setFixatecapsFunction(GstPadFixateCapsFunction fixatecaps)
	{
		// void gst_pad_set_fixatecaps_function (GstPad *pad,  GstPadFixateCapsFunction fixatecaps);
		gst_pad_set_fixatecaps_function(gstPad, fixatecaps);
	}
	
	
	/**
	 * A helper function you can use as a GetCaps function that
	 * will return the currently negotiated caps or the padtemplate
	 * when NULL.
	 * pad:
	 *  the pad to use
	 * Returns:
	 *  The currently negotiated caps or the padtemplate.
	 */
	public Caps getFixedCapsFunc()
	{
		// GstCaps* gst_pad_get_fixed_caps_func (GstPad *pad);
		return new Caps( gst_pad_get_fixed_caps_func(gstPad) );
	}
	
	/**
	 * Check if the peer of pad accepts caps. If pad has no peer, this function
	 * returns TRUE.
	 * pad:
	 *  a GstPad to check the peer of
	 * caps:
	 *  a GstCaps to check on the pad
	 * Returns:
	 *  TRUE if the peer of pad can accept the caps or pad has no peer.
	 */
	public int peerAcceptCaps(Caps caps)
	{
		// gboolean gst_pad_peer_accept_caps (GstPad *pad,  GstCaps *caps);
		return gst_pad_peer_accept_caps(gstPad, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Sets the given activate function for pad. The activate function will
	 * dispatch to gst_pad_activate_push() or gst_pad_activate_pull() to perform
	 * the actual activation. Only makes sense to set on sink pads.
	 * Call this function if your sink pad can start a pull-based task.
	 * pad:
	 *  a GstPad.
	 * activate:
	 *  the GstPadActivateFunction to set.
	 */
	public void setActivateFunction(GstPadActivateFunction activate)
	{
		// void gst_pad_set_activate_function (GstPad *pad,  GstPadActivateFunction activate);
		gst_pad_set_activate_function(gstPad, activate);
	}
	
	
	/**
	 * Sets the given activate_push function for the pad. An activate_push function
	 * prepares the element for pushing. See XXX part-activation.txt for details.
	 * pad:
	 *  a GstPad.
	 * activatepush:
	 *  the GstPadActivateModeFunction to set.
	 */
	public void setActivatepushFunction(GstPadActivateModeFunction activatepush)
	{
		// void gst_pad_set_activatepush_function  (GstPad *pad,  GstPadActivateModeFunction activatepush);
		gst_pad_set_activatepush_function(gstPad, activatepush);
	}
	
	/**
	 * Sets the given activate_pull function for the pad. An activate_pull function
	 * prepares the element and any upstream connections for pulling. See XXX
	 * part-activation.txt for details.
	 * pad:
	 *  a GstPad.
	 * activatepull:
	 *  the GstPadActivateModeFunction to set.
	 */
	public void setActivatepullFunction(GstPadActivateModeFunction activatepull)
	{
		// void gst_pad_set_activatepull_function  (GstPad *pad,  GstPadActivateModeFunction activatepull);
		gst_pad_set_activatepull_function(gstPad, activatepull);
	}
	
	
	/**
	 * Pushes a buffer to the peer of pad.
	 * This function will call an installed pad block before triggering any
	 * installed pad probes.
	 * If the caps on buffer are different from the currently configured caps on
	 * pad, this function will call any installed setcaps function on pad (see
	 * gst_pad_set_setcaps_function()). In case of failure to renegotiate the new
	 * format, this function returns GST_FLOW_NOT_NEGOTIATED.
	 * The function proceeds calling gst_pad_chain() on the peer pad and returns the
	 * value from that function. If pad has no peer, GST_FLOW_NOT_LINKED will be
	 * returned.
	 * In all cases, success or failure, the caller loses its reference to buffer
	 * after calling this function.
	 * pad:
	 *  a source GstPad, returns GST_FLOW_ERROR if not.
	 * buffer:
	 *  the GstBuffer to push returns GST_FLOW_ERROR if not.
	 * Returns:
	 *  a GstFlowReturn from the peer pad.
	 * MT safe.
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
	 * pad:
	 *  a GstPad to push the event to.
	 * event:
	 *  the GstEvent to send to the pad.
	 * Returns:
	 *  TRUE if the event was handled.
	 * MT safe.
	 */
	public int pushEvent(Event event)
	{
		// gboolean gst_pad_push_event (GstPad *pad,  GstEvent *event);
		return gst_pad_push_event(gstPad, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Checks if a gst_pad_pull_range() can be performed on the peer
	 * source pad. This function is used by plugins that want to check
	 * if they can use random access on the peer source pad.
	 * The peer sourcepad can implement a custom GstPadCheckGetRangeFunction
	 * if it needs to perform some logic to determine if pull_range is
	 * possible.
	 * pad:
	 *  a sink GstPad.
	 * Returns:
	 *  a gboolean with the result.
	 * MT safe.
	 */
	public int checkPullRange()
	{
		// gboolean gst_pad_check_pull_range (GstPad *pad);
		return gst_pad_check_pull_range(gstPad);
	}
	
	/**
	 * Pulls a buffer from the peer pad.
	 * This function will first trigger the pad block signal if it was
	 * installed.
	 * When pad is not linked GST_FLOW_NOT_LINKED is returned else this
	 * function returns the result of gst_pad_get_range() on the peer pad.
	 * See gst_pad_get_range() for a list of return values and for the
	 * semantics of the arguments of this function.
	 * buffer's caps must either be unset or the same as what is already configured
	 * on pad. Renegotiation within a running pull-mode pipeline is not supported.
	 * pad:
	 *  a sink GstPad, returns GST_FLOW_ERROR if not.
	 * offset:
	 *  The start offset of the buffer
	 * size:
	 *  The length of the buffer
	 * buffer:
	 *  a pointer to hold the GstBuffer, returns GST_FLOW_ERROR if NULL.
	 * Returns:
	 *  a GstFlowReturn from the peer pad.
	 * When this function returns GST_FLOW_OK, buffer will contain a valid
	 * GstBuffer that should be freed with gst_buffer_unref() after usage.
	 * buffer may not be used or freed when any other return value than
	 * GST_FLOW_OK is returned.
	 * MT safe.
	 */
	public GstFlowReturn pullRange(ulong offset, uint size, GstBuffer** buffer)
	{
		// GstFlowReturn gst_pad_pull_range (GstPad *pad,  guint64 offset,  guint size,  GstBuffer **buffer);
		return gst_pad_pull_range(gstPad, offset, size, buffer);
	}
	
	/**
	 * Activates or deactivates the given pad in pull mode via dispatching to the
	 * pad's activatepullfunc. For use from within pad activation functions only.
	 * When called on sink pads, will first proxy the call to the peer pad, which is
	 * expected to activate its internally linked pads from within its activate_pull
	 * function.
	 * If you don't know what this is, you probably don't want to call it.
	 * pad:
	 *  the GstPad to activate or deactivate.
	 * active:
	 *  whether or not the pad should be active.
	 * Returns:
	 *  TRUE if the operation was successful.
	 * MT safe.
	 */
	public int activatePull(int active)
	{
		// gboolean gst_pad_activate_pull (GstPad *pad,  gboolean active);
		return gst_pad_activate_pull(gstPad, active);
	}
	
	/**
	 * Activates or deactivates the given pad in push mode via dispatching to the
	 * pad's activatepushfunc. For use from within pad activation functions only.
	 * If you don't know what this is, you probably don't want to call it.
	 * pad:
	 *  the GstPad to activate or deactivate.
	 * active:
	 *  whether the pad should be active or not.
	 * Returns:
	 *  TRUE if the operation was successful.
	 * MT safe.
	 */
	public int activatePush(int active)
	{
		// gboolean gst_pad_activate_push (GstPad *pad,  gboolean active);
		return gst_pad_activate_push(gstPad, active);
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
	 * GST_EVENT_IS_SERIALIZED. Note that in practice that an application or plugin
	 * doesn't need to bother itself with this information; the core handles all
	 * necessary locks and checks.
	 * This function takes owership of the provided event so you should
	 * gst_event_ref() it if you want to reuse the event after this call.
	 * pad:
	 *  a GstPad to send the event to.
	 * event:
	 *  the GstEvent to send to the pad.
	 * Returns:
	 *  TRUE if the event was handled.
	 */
	public int sendEvent(Event event)
	{
		// gboolean gst_pad_send_event (GstPad *pad,  GstEvent *event);
		return gst_pad_send_event(gstPad, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Invokes the default event handler for the given pad. End-of-stream and
	 * discontinuity events are handled specially, and then the event is sent to all
	 * pads internally linked to pad. Note that if there are many possible sink
	 * pads that are internally linked to pad, only one will be sent an event.
	 * Multi-sinkpad elements should implement custom event handlers.
	 * pad:
	 *  a GstPad to call the default event handler on.
	 * event:
	 *  the GstEvent to handle.
	 * Returns:
	 *  TRUE if the event was sent succesfully.
	 */
	public int eventDefault(Event event)
	{
		// gboolean gst_pad_event_default (GstPad *pad,  GstEvent *event);
		return gst_pad_event_default(gstPad, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Dispatches a query to a pad. The query should have been allocated by the
	 * caller via one of the type-specific allocation functions in gstquery.h. The
	 * element is responsible for filling the query with an appropriate response,
	 * which should then be parsed with a type-specific query parsing function.
	 * Again, the caller is responsible for both the allocation and deallocation of
	 * the query structure.
	 * pad:
	 *  a GstPad to invoke the default query on.
	 * query:
	 *  the GstQuery to perform.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int query(Query query)
	{
		// gboolean gst_pad_query (GstPad *pad,  GstQuery *query);
		return gst_pad_query(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Invokes the default query handler for the given pad.
	 * The query is sent to all pads internally linked to pad. Note that
	 * if there are many possible sink pads that are internally linked to
	 * pad, only one will be sent the query.
	 * Multi-sinkpad elements should implement custom query handlers.
	 * pad:
	 *  a GstPad to call the default query handler on.
	 * query:
	 *  the GstQuery to handle.
	 * Returns:
	 *  TRUE if the query was performed succesfully.
	 */
	public int queryDefault(Query query)
	{
		// gboolean gst_pad_query_default (GstPad *pad,  GstQuery *query);
		return gst_pad_query_default(gstPad, (query is null) ? null : query.getQueryStruct());
	}
	
	/**
	 * Queries a pad for the stream position.
	 * pad:
	 *  a GstPad to invoke the position query on.
	 * format:
	 *  a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * cur:
	 *  A location in which to store the current position, or NULL.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryPosition(GstFormat* format, long* cur)
	{
		// gboolean gst_pad_query_position (GstPad *pad,  GstFormat *format,  gint64 *cur);
		return gst_pad_query_position(gstPad, format, cur);
	}
	
	/**
	 * Queries a pad for the total stream duration.
	 * pad:
	 *  a GstPad to invoke the duration query on.
	 * format:
	 *  a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * duration:
	 *  A location in which to store the total duration, or NULL.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryDuration(GstFormat* format, long* duration)
	{
		// gboolean gst_pad_query_duration (GstPad *pad,  GstFormat *format,  gint64 *duration);
		return gst_pad_query_duration(gstPad, format, duration);
	}
	
	/**
	 * Queries a pad to convert src_val in src_format to dest_format.
	 * pad:
	 *  a GstPad to invoke the convert query on.
	 * src_format:
	 *  a GstFormat to convert from.
	 * src_val:
	 *  a value to convert.
	 * dest_format:
	 *  a pointer to the GstFormat to convert to.
	 * dest_val:
	 *  a pointer to the result.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryConvert(GstFormat srcFormat, long srcVal, GstFormat* destFormat, long* destVal)
	{
		// gboolean gst_pad_query_convert (GstPad *pad,  GstFormat src_format,  gint64 src_val,  GstFormat *dest_format,  gint64 *dest_val);
		return gst_pad_query_convert(gstPad, srcFormat, srcVal, destFormat, destVal);
	}
	
	/**
	 * Queries the peer of a given sink pad for the stream position.
	 * pad:
	 *  a GstPad on whose peer to invoke the position query on.
	 *  Must be a sink pad.
	 * format:
	 *  a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * cur:
	 *  A location in which to store the current position, or NULL.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryPeerPosition(GstFormat* format, long* cur)
	{
		// gboolean gst_pad_query_peer_position (GstPad *pad,  GstFormat *format,  gint64 *cur);
		return gst_pad_query_peer_position(gstPad, format, cur);
	}
	
	/**
	 * Queries the peer pad of a given sink pad for the total stream duration.
	 * pad:
	 *  a GstPad on whose peer pad to invoke the duration query on.
	 *  Must be a sink pad.
	 * format:
	 *  a pointer to the GstFormat asked for.
	 *  On return contains the GstFormat used.
	 * duration:
	 *  A location in which to store the total duration, or NULL.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryPeerDuration(GstFormat* format, long* duration)
	{
		// gboolean gst_pad_query_peer_duration (GstPad *pad,  GstFormat *format,  gint64 *duration);
		return gst_pad_query_peer_duration(gstPad, format, duration);
	}
	
	/**
	 * Queries the peer pad of a given sink pad to convert src_val in src_format
	 * to dest_format.
	 * pad:
	 *  a GstPad, on whose peer pad to invoke the convert query on.
	 *  Must be a sink pad.
	 * src_format:
	 *  a GstFormat to convert from.
	 * src_val:
	 *  a value to convert.
	 * dest_format:
	 *  a pointer to the GstFormat to convert to.
	 * dest_val:
	 *  a pointer to the result.
	 * Returns:
	 *  TRUE if the query could be performed.
	 */
	public int queryPeerConvert(GstFormat srcFormat, long srcVal, GstFormat* destFormat, long* destVal)
	{
		// gboolean gst_pad_query_peer_convert (GstPad *pad,  GstFormat src_format,  gint64 src_val,  GstFormat *dest_format,  gint64 *dest_val);
		return gst_pad_query_peer_convert(gstPad, srcFormat, srcVal, destFormat, destVal);
	}
	
	/**
	 * Set the given query function for the pad.
	 * pad:
	 *  a GstPad of either direction.
	 * query:
	 *  the GstPadQueryFunction to set.
	 */
	public void setQueryFunction(GstPadQueryFunction query)
	{
		// void gst_pad_set_query_function (GstPad *pad,  GstPadQueryFunction query);
		gst_pad_set_query_function(gstPad, query);
	}
	
	
	/**
	 * Set the given query type function for the pad.
	 * pad:
	 *  a GstPad of either direction.
	 * type_func:
	 *  the GstPadQueryTypeFunction to set.
	 */
	public void setQueryTypeFunction(GstPadQueryTypeFunction typeFunc)
	{
		// void gst_pad_set_query_type_function (GstPad *pad,  GstPadQueryTypeFunction type_func);
		gst_pad_set_query_type_function(gstPad, typeFunc);
	}
	
	
	/**
	 * Get an array of supported queries that can be performed
	 * on this pad.
	 * pad:
	 *  a GstPad.
	 * Returns:
	 *  a zero-terminated array of GstQueryType.
	 */
	public GstQueryType* getQueryTypes()
	{
		// const GstQueryType* gst_pad_get_query_types (GstPad *pad);
		return gst_pad_get_query_types(gstPad);
	}
	
	/**
	 * Invoke the default dispatcher for the query types on
	 * the pad.
	 * pad:
	 *  a GstPad.
	 * Returns:
	 *  an zero-terminated array of GstQueryType, or NULL if none of the
	 * internally-linked pads has a query types function.
	 */
	public GstQueryType* getQueryTypesDefault()
	{
		// const GstQueryType* gst_pad_get_query_types_default  (GstPad *pad);
		return gst_pad_get_query_types_default(gstPad);
	}
	
	/**
	 * Sets the given internal link function for the pad.
	 * pad:
	 *  a GstPad of either direction.
	 * intlink:
	 *  the GstPadIntLinkFunction to set.
	 */
	public void setInternalLinkFunction(GstPadIntLinkFunction intlink)
	{
		// void gst_pad_set_internal_link_function  (GstPad *pad,  GstPadIntLinkFunction intlink);
		gst_pad_set_internal_link_function(gstPad, intlink);
	}
	
	
	/**
	 * Gets a list of pads to which the given pad is linked to
	 * inside of the parent element.
	 * The caller must free this list after use.
	 * pad:
	 *  the GstPad to get the internal links of.
	 * Returns:
	 *  a newly allocated GList of pads.
	 * Not MT safe.
	 */
	public ListG getInternalLinks()
	{
		// GList* gst_pad_get_internal_links (GstPad *pad);
		return new ListG( gst_pad_get_internal_links(gstPad) );
	}
	
	/**
	 * Gets a list of pads to which the given pad is linked to
	 * inside of the parent element.
	 * This is the default handler, and thus returns a list of all of the
	 * pads inside the parent element with opposite direction.
	 * The caller must free this list after use.
	 * pad:
	 *  the GstPad to get the internal links of.
	 * Returns:
	 *  a newly allocated GList of pads, or NULL if the pad has no parent.
	 * Not MT safe.
	 */
	public ListG getInternalLinksDefault()
	{
		// GList* gst_pad_get_internal_links_default  (GstPad *pad);
		return new ListG( gst_pad_get_internal_links_default(gstPad) );
	}
	
	
	/**
	 * Invokes the given dispatcher function on each respective peer of
	 * all pads that are internally linked to the given pad.
	 * The GstPadDispatcherFunction should return TRUE when no further pads
	 * need to be processed.
	 * pad:
	 *  a GstPad to dispatch.
	 * dispatch:
	 *  the GstDispatcherFunction to call.
	 * data:
	 *  gpointer user data passed to the dispatcher function.
	 * Returns:
	 *  TRUE if one of the dispatcher functions returned TRUE.
	 */
	public int dispatcher(GstPadDispatcherFunction dispatch, void* data)
	{
		// gboolean gst_pad_dispatcher (GstPad *pad,  GstPadDispatcherFunction dispatch,  gpointer data);
		return gst_pad_dispatcher(gstPad, dispatch, data);
	}
	
	
	/**
	 * Set the given private data gpointer on the pad.
	 * This function can only be used by the element that owns the pad.
	 * No locking is performed in this function.
	 * pad:
	 *  the GstPad to set the private data of.
	 * priv:
	 *  The private data to attach to the pad.
	 */
	public void setElementPrivate(void* priv)
	{
		// void gst_pad_set_element_private (GstPad *pad,  gpointer priv);
		gst_pad_set_element_private(gstPad, priv);
	}
	
	/**
	 * Gets the private data of a pad.
	 * No locking is performed in this function.
	 * pad:
	 *  the GstPad to get the private data of.
	 * Returns:
	 *  a gpointer to the private data.
	 */
	public void* getElementPrivate()
	{
		// gpointer gst_pad_get_element_private (GstPad *pad);
		return gst_pad_get_element_private(gstPad);
	}
	
	/**
	 * Chain a buffer to pad.
	 * The function returns GST_FLOW_WRONG_STATE if the pad was flushing.
	 * If the caps on buffer are different from the current caps on pad, this
	 * function will call any setcaps function (see gst_pad_set_setcaps_function())
	 * installed on pad. If the new caps are not acceptable for pad, this function
	 * returns GST_FLOW_NOT_NEGOTIATED.
	 * The function proceeds calling the chain function installed on pad (see
	 * gst_pad_set_chain_function()) and the return value of that function is
	 * returned to the caller. GST_FLOW_NOT_SUPPORTED is returned if pad has no
	 * chain function.
	 * In all cases, success or failure, the caller loses its reference to buffer
	 * after calling this function.
	 * pad:
	 *  a sink GstPad, returns GST_FLOW_ERROR if not.
	 * buffer:
	 *  the GstBuffer to send, return GST_FLOW_ERROR if not.
	 * Returns:
	 *  a GstFlowReturn from the pad.
	 * MT safe.
	 */
	public GstFlowReturn chain(Buffer buffer)
	{
		// GstFlowReturn gst_pad_chain (GstPad *pad,  GstBuffer *buffer);
		return gst_pad_chain(gstPad, (buffer is null) ? null : buffer.getBufferStruct());
	}
	
	/**
	 * Starts a task that repeatedly calls func with data. This function
	 * is mostly used in pad activation functions to start the dataflow.
	 * The GST_PAD_STREAM_LOCK of pad will automatically be acquired
	 * before func is called.
	 * pad:
	 *  the GstPad to start the task of
	 * func:
	 *  the task function to call
	 * data:
	 *  data passed to the task function
	 * Returns:
	 *  a TRUE if the task could be started.
	 */
	public int startTask(GstTaskFunction func, void* data)
	{
		// gboolean gst_pad_start_task (GstPad *pad,  GstTaskFunction func,  gpointer data);
		return gst_pad_start_task(gstPad, func, data);
	}
	
	/**
	 * Pause the task of pad. This function will also make sure that the
	 * function executed by the task will effectively stop.
	 * pad:
	 *  the GstPad to pause the task of
	 * Returns:
	 *  a TRUE if the task could be paused or FALSE when the pad
	 * has no task.
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
	 * pad:
	 *  the GstPad to stop the task of
	 * Returns:
	 *  a TRUE if the task could be stopped or FALSE on error.
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
	 * If not active, checks the pad's current mode and calls
	 * gst_pad_activate_push() or gst_pad_activate_pull(), as appropriate, with a
	 * FALSE argument.
	 * pad:
	 *  the GstPad to activate or deactivate.
	 * active:
	 *  whether or not the pad should be active.
	 * Returns:
	 *  TRUE if the operation was successful.
	 * MT safe.
	 */
	public int setActive(int active)
	{
		// gboolean gst_pad_set_active (GstPad *pad,  gboolean active);
		return gst_pad_set_active(gstPad, active);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
