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


module gstreamer.Message;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.Clock;
private import gstreamer.Context;
private import gstreamer.Device;
private import gstreamer.Element;
private import gstreamer.ObjectGst;
private import gstreamer.Stream;
private import gstreamer.StreamCollection;
private import gstreamer.Structure;
private import gstreamer.TagList;
private import gstreamer.Toc;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * Messages are implemented as a subclass of #GstMiniObject with a generic
 * #GstStructure as the content. This allows for writing custom messages without
 * requiring an API change while allowing a wide range of different types
 * of messages.
 * 
 * Messages are posted by objects in the pipeline and are passed to the
 * application using the #GstBus.
 * 
 * The basic use pattern of posting a message on a #GstBus is as follows:
 * |[<!-- language="C" -->
 * gst_bus_post (bus, gst_message_new_eos());
 * ]|
 * 
 * A #GstElement usually posts messages on the bus provided by the parent
 * container using gst_element_post_message().
 */
public class Message
{
	/** the main Gtk struct */
	protected GstMessage* gstMessage;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMessage* getMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMessage;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMessage* gstMessage, bool ownedRef = false)
	{
		this.gstMessage = gstMessage;
		this.ownedRef = ownedRef;
	}

	/**
	 * Get the type of the message.
	 */
	public GstMessageType type()
	{
		return cast(GstMessageType)getMessageStruct().type;
	}

	/**
	 * Get the src (the element that originated the message) of the message.
	 */
	public ObjectGst src()
	{
		return new ObjectGst( cast(GstObject*)getMessageStruct().src );
	}

	/**
	 * Create a new element-specific message. This is meant as a generic way of
	 * allowing one-way communication from an element to an application, for example
	 * "the firewire cable was unplugged". The format of the message should be
	 * documented in the element's documentation. The structure field can be NULL.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  structure = The structure for the message. The message will take ownership of
	 *  the structure.
	 * Returns:
	 *  The new element message.
	 */
	public static Message newElement(ObjectGst src, Structure structure)
	{
		// GstMessage* gst_message_new_element (GstObject *src,  GstStructure *structure);
		auto p = gst_message_new_element((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_element");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new clock message. This message is posted whenever the
	 * pipeline selectes a new clock for the pipeline.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  clock = the new selected clock
	 * Returns:
	 *  The new new clock message.
	 */
	public static Message newNewClock(ObjectGst src, Clock clock)
	{
		// GstMessage* gst_message_new_new_clock (GstObject *src,  GstClock *clock);
		auto p = gst_message_new_new_clock((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_new_clock");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new segment done message. This message is posted by elements that
	 * finish playback of a segment as a result of a segment seek. This message
	 * is received by the application after all elements that posted a segment_start
	 * have posted the segment_done.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  format = The format of the position being done
	 *  position = The position of the segment being done
	 * Returns:
	 *  The new segment done message.
	 */
	public static Message newSegmentDone(ObjectGst src, GstFormat format, long position)
	{
		// GstMessage* gst_message_new_segment_done (GstObject *src,  GstFormat format,  gint64 position);
		auto p = gst_message_new_segment_done((src is null) ? null : src.getObjectGstStruct(), format, position);

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_segment_done");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new segment message. This message is posted by elements that
	 * start playback of a segment as a result of a segment seek. This message
	 * is not received by the application but is used for maintenance reasons in
	 * container elements.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  format = The format of the position being played
	 *  position = The position of the segment being played
	 * Returns:
	 *  The new segment start message.
	 */
	public static Message newSegmentStart(ObjectGst src, GstFormat format, long position)
	{
		// GstMessage* gst_message_new_segment_start (GstObject *src,  GstFormat format,  gint64 position);
		auto p = gst_message_new_segment_start((src is null) ? null : src.getObjectGstStruct(), format, position);

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_segment_start");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new warning message. The message will make copies of error and
	 * debug.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  error = The GError for this message.
	 *  debug = A debugging string for something or other.
	 * Returns:
	 *  The new warning message.
	 */
	public static Message newWarning(ObjectGst src, ErrorG error, string dbug)
	{
		// GstMessage* gst_message_new_warning (GstObject *src,  GError *error,  gchar *debug);
		auto p = gst_message_new_warning((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbug));

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_warning");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a state dirty message. This message is posted whenever an element
	 * changed its state asynchronously and is used internally to update the
	 * states of container objects.
	 * MT safe.
	 * Params:
	 *  src = the object originating the message
	 * Returns:
	 *  The new state dirty message.
	 */
	public static Message newStateDirty(ObjectGst src)
	{
		// GstMessage* gst_message_new_state_dirty (GstObject *src);
		auto p = gst_message_new_state_dirty((src is null) ? null : src.getObjectGstStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_state_dirty");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new eos message. This message is generated and posted in
	 * the sink elements of a GstBin. The bin will only forward the EOS
	 * message to the application if all sinks have posted an EOS message.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 * Returns:
	 *  The new eos message.
	 */
	public static Message newEOS(ObjectGst src)
	{
		// GstMessage* gst_message_new_eos (GstObject *src);
		auto p = gst_message_new_eos((src is null) ? null : src.getObjectGstStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_eos");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new error message. The message will copy error and
	 * debug. This message is posted by element when a fatal event
	 * occured. The pipeline will probably (partially) stop. The application
	 * receiving this message should stop the pipeline.
	 * MT safe.
	 * Params:
	 *  src = The object originating the message.
	 *  error = The GError for this message.
	 *  debug = A debugging string for something or other.
	 * Returns:
	 *  The new error message.
	 */
	public static Message newError(ObjectGst src, ErrorG error, string dbug)
	{
		// GstMessage* gst_message_new_error (GstObject *src,  GError *error,  gchar *debug);
		auto p = gst_message_new_error((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbug));

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_error");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new info message. The message will make copies of error and
	 * debug.
	 * MT safe.
	 * Since 0.10.12
	 * Params:
	 *  src = The object originating the message.
	 *  error = The GError for this message.
	 *  debug = A debugging string for something or other.
	 * Returns:
	 *  The new info message.
	 */
	public static Message newInfo(ObjectGst src, ErrorG error, string dbug)
	{
		// GstMessage* gst_message_new_info (GstObject *src,  GError *error,  gchar *debug);
		auto p = gst_message_new_info((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbug));

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_info");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * This message can be posted by elements when their latency requirements
	 * have changed.
	 * Params:
	 *     src = The object originating the message.
	 * Returns:
	 * The new latency message. MT safe.
	 */
	public static Message newLatency(ObjectGst src)
	{
		// GstMessage* gst_message_new_latency (GstObject *src);
		auto p = gst_message_new_latency((src is null) ? null : src.getObjectGstStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_latency");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new duration changed message. This message is posted by elements
	 * that know the duration of a stream when the duration changes. This message
	 * is received by bins and is used to calculate the total duration of a
	 * pipeline. Elements may post a duration message with a duration of
	 * GST_CLOCK_TIME_NONE to indicate that the duration has changed and the
	 * cached duration should be discarded. The new duration can then be
	 * retrieved via a query.
	 * Params:
	 *    src = The object originating the message. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newDurationChanged(ObjectGst src)
	{
		// GstMessage * gst_message_new_duration_changed (GstObject *src);
		auto p = gst_message_new_duration_changed((src is null) ? null : src.getObjectGstStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_duration_changed((src is null) ? null : src.getObjectGstStruct())");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * This message is posted by elements when they start an ASYNC state change.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newAsyncStart(ObjectGst src)
	{
		// GstMessage * gst_message_new_async_start (GstObject *src);
		auto p = gst_message_new_async_start((src is null) ? null : src.getObjectGstStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_async_start((src is null) ? null : src.getObjectGstStruct())");
		}
		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * The message is posted when elements completed an ASYNC state change.
	 * running_time contains the time of the desired running_time when this
	 * elements goes to PLAYING. A value of GST_CLOCK_TIME_NONE for running_time
	 * means that the element has no clock interaction and thus doesn't care about
	 * the running_time of the pipeline.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * runningTime = the desired running_time
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newAsyncDone(ObjectGst src, GstClockTime runningTime)
	{
		// GstMessage * gst_message_new_async_done (GstObject *src,  GstClockTime running_time);
		auto p = gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct(), runningTime);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct(), runningTime)");
		}
		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Creates a new device-added message. The device-added message is produced by
	 * #GstDeviceProvider or a #GstDeviceMonitor. They announce the appearance
	 * of monitored devices.
	 *
	 * Params:
	 *     src = The #GstObject that created the message
	 *     device = The new #GstDevice
	 *
	 * Return: a newly allocated #GstMessage
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newDeviceAdded(ObjectGst src, Device device)
	{
		auto p = gst_message_new_device_added((src is null) ? null : src.getObjectGstStruct(), (device is null) ? null : device.getDeviceStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_device_added");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Creates a new device-removed message. The device-removed message is produced
	 * by #GstDeviceProvider or a #GstDeviceMonitor. They announce the
	 * disappearance of monitored devices.
	 *
	 * Params:
	 *     src = The #GstObject that created the message
	 *     device = The removed #GstDevice
	 *
	 * Return: a newly allocated #GstMessage
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public  static Message newDeviceRemoved(ObjectGst src, Device device)
	{
		auto p = gst_message_new_device_removed((src is null) ? null : src.getObjectGstStruct(), (device is null) ? null : device.getDeviceStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_device_removed");
		}

		return new Message(cast(GstMessage*)p); //, true);
	}

	/**
	 * Create a new error message. The message will copy @error and
	 * @debug. This message is posted by element when a fatal event
	 * occurred. The pipeline will probably (partially) stop. The application
	 * receiving this message should stop the pipeline.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     error = The GError for this message.
	 *     dbg = A debugging string.
	 *     details = (allow-none): A GstStructure with details
	 *
	 * Return: the new error message.
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newErrorWithDetails(ObjectGst src, ErrorG error, string dbg, Structure details)
	{
		auto p = gst_message_new_error_with_details((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbg), (details is null) ? null : details.getStructureStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_error_with_details");
		}

		return new Message(cast(GstMessage*)p, true);
	}

	/**
	 * Create a new info message. The message will make copies of @error and
	 * @debug.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     error = The GError for this message.
	 *     dbg = A debugging string.
	 *     details = (allow-none): A GstStructure with details
	 *
	 * Return: the new warning message.
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newInfoWithDetails(ObjectGst src, ErrorG error, string dbg, Structure details)
	{
		auto p = gst_message_new_info_with_details((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbg), (details is null) ? null : details.getStructureStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_info_with_details");
		}

		return new Message(cast(GstMessage*)p, true);
	}

	/**
	 * Create a new warning message. The message will make copies of @error and
	 * @debug.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     error = The GError for this message.
	 *     dbg = A debugging string.
	 *     details = (allow-none): A GstStructure with details
	 *
	 * Return: the new warning message.
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newWarningWithDetails(ObjectGst src, ErrorG error, string dbg, Structure details)
	{
		auto p = gst_message_new_warning_with_details((src is null) ? null : src.getObjectGstStruct(), (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbg), (details is null) ? null : details.getStructureStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_warning_with_details");
		}

		return new Message(cast(GstMessage*)p, true);
	}

	/**
	 * Creates a new stream-collection message. The message is used to announce new
	 * #GstStreamCollection
	 *
	 * Params:
	 *     src = The #GstObject that created the message
	 *     collection = The #GstStreamCollection
	 *
	 * Return: a newly allocated #GstMessage
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newStreamCollection(ObjectGst src, StreamCollection collection)
	{
		auto p = gst_message_new_stream_collection((src is null) ? null : src.getObjectGstStruct(), (collection is null) ? null : collection.getStreamCollectionStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_stream_collection");
		}

		return new Message(cast(GstMessage*)p, true);
	}

	/**
	 * Creates a new steams-selected message. The message is used to announce
	 * that an array of streams has been selected. This is generally in response
	 * to a #GST_EVENT_SELECT_STREAMS event, or when an element (such as decodebin3)
	 * makes an initial selection of streams.
	 *
	 * The message also contains the #GstStreamCollection to which the various streams
	 * belong to.
	 *
	 * Users of gst_message_new_streams_selected() can add the selected streams with
	 * gst_message_streams_selected_add().
	 *
	 * Params:
	 *     src = The #GstObject that created the message
	 *     collection = The #GstStreamCollection
	 *
	 * Return: a newly allocated #GstMessage
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newStreamsSelected(ObjectGst src, StreamCollection collection)
	{
		auto p = gst_message_new_streams_selected((src is null) ? null : src.getObjectGstStruct(), (collection is null) ? null : collection.getStreamCollectionStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_streams_selected");
		}

		return new Message(cast(GstMessage*)p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_message_get_type();
	}

	/**
	 * Create a new application-typed message. GStreamer will never create these
	 * messages; they are a gift from us to you. Enjoy.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     structure = the structure for the message. The message
	 *         will take ownership of the structure.
	 *
	 * Returns: The new application message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, Structure structure)
	{
		auto p = gst_message_new_application((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct(true));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_application");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * The message is posted when elements completed an ASYNC state change.
	 * @running_time contains the time of the desired running_time when this
	 * elements goes to PLAYING. A value of #GST_CLOCK_TIME_NONE for @running_time
	 * means that the element has no clock interaction and thus doesn't care about
	 * the running_time of the pipeline.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     runningTime = the desired running_time
	 *
	 * Returns: The new async_done message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstClockTime runningTime)
	{
		auto p = gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct(), runningTime);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_async_done");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new buffering message. This message can be posted by an element that
	 * needs to buffer data before it can continue processing. @percent should be a
	 * value between 0 and 100. A value of 100 means that the buffering completed.
	 *
	 * When @percent is < 100 the application should PAUSE a PLAYING pipeline. When
	 * @percent is 100, the application can set the pipeline (back) to PLAYING.
	 * The application must be prepared to receive BUFFERING messages in the
	 * PREROLLING state and may only set the pipeline to PLAYING after receiving a
	 * message with @percent set to 100, which can happen after the pipeline
	 * completed prerolling.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     percent = The buffering percent
	 *
	 * Returns: The new buffering message.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, int percent)
	{
		auto p = gst_message_new_buffering((src is null) ? null : src.getObjectGstStruct(), percent);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_buffering");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a clock lost message. This message is posted whenever the
	 * clock is not valid anymore.
	 *
	 * If this message is posted by the pipeline, the pipeline will
	 * select a new clock again when it goes to PLAYING. It might therefore
	 * be needed to set the pipeline to PAUSED and PLAYING again.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     clock = the clock that was lost
	 *
	 * Returns: The new clock lost message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, Clock clock)
	{
		auto p = gst_message_new_clock_lost((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_clock_lost");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a clock provide message. This message is posted whenever an
	 * element is ready to provide a clock or lost its ability to provide
	 * a clock (maybe because it paused or became EOS).
	 *
	 * This message is mainly used internally to manage the clock
	 * selection.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     clock = the clock it provides
	 *     ready = %TRUE if the sender can provide a clock
	 *
	 * Returns: the new provide clock message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, Clock clock, bool ready)
	{
		auto p = gst_message_new_clock_provide((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct(), ready);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_clock_provide");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new custom-typed message. This can be used for anything not
	 * handled by other message-specific functions to pass a message to the
	 * app. The structure field can be %NULL.
	 *
	 * Params:
	 *     type = The #GstMessageType to distinguish messages
	 *     src = The object originating the message.
	 *     structure = the structure for the
	 *         message. The message will take ownership of the structure.
	 *
	 * Returns: The new message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstMessageType type, ObjectGst src, Structure structure)
	{
		auto p = gst_message_new_custom(type, (src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct(true));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_custom");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * This message is posted when an element has a new local #GstContext.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     context = the context
	 *
	 * Returns: The new have-context message.
	 *
	 *     MT safe.
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, Context context)
	{
		auto p = gst_message_new_have_context((src is null) ? null : src.getObjectGstStruct(), (context is null) ? null : context.getContextStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_have_context");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * This message is posted when an element needs a specific #GstContext.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     contextType = The context type that is needed
	 *
	 * Returns: The new need-context message.
	 *
	 *     MT safe.
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, string contextType)
	{
		auto p = gst_message_new_need_context((src is null) ? null : src.getObjectGstStruct(), Str.toStringz(contextType));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_need_context");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Progress messages are posted by elements when they use an asynchronous task
	 * to perform actions triggered by a state change.
	 *
	 * @code contains a well defined string describing the action.
	 * @text should contain a user visible string detailing the current action.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     type = a #GstProgressType
	 *     code = a progress code
	 *     text = free, user visible text describing the progress
	 *
	 * Returns: The new qos message.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstProgressType type, string code, string text)
	{
		auto p = gst_message_new_progress((src is null) ? null : src.getObjectGstStruct(), type, Str.toStringz(code), Str.toStringz(text));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_progress");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 *
	 * Params:
	 *     src = The #GstObject whose property changed (may or may not be a #GstElement)
	 *     propertyName = name of the property that changed
	 *     val = new property value, or %NULL
	 * Returns: a newly allocated #GstMessage
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, string propertyName, Value val)
	{
		auto p = gst_message_new_property_notify((src is null) ? null : src.getObjectGstStruct(), Str.toStringz(propertyName), (val is null) ? null : val.getValueStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_property_notify");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * A QOS message is posted on the bus whenever an element decides to drop a
	 * buffer because of QoS reasons or whenever it changes its processing strategy
	 * because of QoS reasons (quality adjustments such as processing at lower
	 * accuracy).
	 *
	 * This message can be posted by an element that performs synchronisation against the
	 * clock (live) or it could be dropped by an element that performs QoS because of QOS
	 * events received from a downstream element (!live).
	 *
	 * @running_time, @stream_time, @timestamp, @duration should be set to the
	 * respective running-time, stream-time, timestamp and duration of the (dropped)
	 * buffer that generated the QoS event. Values can be left to
	 * GST_CLOCK_TIME_NONE when unknown.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     live = if the message was generated by a live element
	 *     runningTime = the running time of the buffer that generated the message
	 *     streamTime = the stream time of the buffer that generated the message
	 *     timestamp = the timestamps of the buffer that generated the message
	 *     duration = the duration of the buffer that generated the message
	 *
	 * Returns: The new qos message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, bool live, ulong runningTime, ulong streamTime, ulong timestamp, ulong duration)
	{
		auto p = gst_message_new_qos((src is null) ? null : src.getObjectGstStruct(), live, runningTime, streamTime, timestamp, duration);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_qos");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Creates a new redirect message and adds a new entry to it. Redirect messages
	 * are posted when an element detects that the actual data has to be retrieved
	 * from a different location. This is useful if such a redirection cannot be
	 * handled inside a source element, for example when HTTP 302/303 redirects
	 * return a non-HTTP URL.
	 *
	 * The redirect message can hold multiple entries. The first one is added
	 * when the redirect message is created, with the given location, tag_list,
	 * entry_struct arguments. Use gst_message_add_redirect_entry() to add more
	 * entries.
	 *
	 * Each entry has a location, a tag list, and a structure. All of these are
	 * optional. The tag list and structure are useful for additional metadata,
	 * such as bitrate statistics for the given location.
	 *
	 * By default, message recipients should treat entries in the order they are
	 * stored. The recipient should therefore try entry #0 first, and if this
	 * entry is not acceptable or working, try entry #1 etc. Senders must make
	 * sure that they add entries in this order. However, recipients are free to
	 * ignore the order and pick an entry that is "best" for them. One example
	 * would be a recipient that scans the entries for the one with the highest
	 * bitrate tag.
	 *
	 * The specified location string is copied. However, ownership over the tag
	 * list and structure are transferred to the message.
	 *
	 * Params:
	 *     src = The #GstObject whose property changed (may or may not be a #GstElement)
	 *     location = location string for the new entry
	 *     tagList = tag list for the new entry
	 *     entryStruct = structure for the new entry
	 *
	 * Returns: a newly allocated #GstMessage
	 *
	 * Since: 1.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, string location, TagList tagList, Structure entryStruct)
	{
		auto p = gst_message_new_redirect((src is null) ? null : src.getObjectGstStruct(), Str.toStringz(location), (tagList is null) ? null : tagList.getTagListStruct(), (entryStruct is null) ? null : entryStruct.getStructureStruct(true));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_redirect");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * This message can be posted by elements when they want to have their state
	 * changed. A typical use case would be an audio server that wants to pause the
	 * pipeline because a higher priority stream is being played.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     state = The new requested state
	 *
	 * Returns: the new request state message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstState state)
	{
		auto p = gst_message_new_request_state((src is null) ? null : src.getObjectGstStruct(), state);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_request_state");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a state change message. This message is posted whenever an element
	 * changed its state.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     oldstate = the previous state
	 *     newstate = the new (current) state
	 *     pending = the pending (target) state
	 *
	 * Returns: the new state change message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstState oldstate, GstState newstate, GstState pending)
	{
		auto p = gst_message_new_state_changed((src is null) ? null : src.getObjectGstStruct(), oldstate, newstate, pending);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_state_changed");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * This message is posted by elements when they complete a part, when @intermediate set
	 * to %TRUE, or a complete step operation.
	 *
	 * @duration will contain the amount of time (in GST_FORMAT_TIME) of the stepped
	 * @amount of media in format @format.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     format = the format of @amount
	 *     amount = the amount of stepped data
	 *     rate = the rate of the stepped amount
	 *     flush = is this an flushing step
	 *     intermediate = is this an intermediate step
	 *     duration = the duration of the data
	 *     eos = the step caused EOS
	 *
	 * Returns: the new step_done message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstFormat format, ulong amount, double rate, bool flush, bool intermediate, ulong duration, bool eos)
	{
		auto p = gst_message_new_step_done((src is null) ? null : src.getObjectGstStruct(), format, amount, rate, flush, intermediate, duration, eos);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_step_done");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * This message is posted by elements when they accept or activate a new step
	 * event for @amount in @format.
	 *
	 * @active is set to %FALSE when the element accepted the new step event and has
	 * queued it for execution in the streaming threads.
	 *
	 * @active is set to %TRUE when the element has activated the step operation and
	 * is now ready to start executing the step in the streaming thread. After this
	 * message is emitted, the application can queue a new step operation in the
	 * element.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     active = if the step is active or queued
	 *     format = the format of @amount
	 *     amount = the amount of stepped data
	 *     rate = the rate of the stepped amount
	 *     flush = is this an flushing step
	 *     intermediate = is this an intermediate step
	 *
	 * Returns: The new step_start message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, bool active, GstFormat format, ulong amount, double rate, bool flush, bool intermediate)
	{
		auto p = gst_message_new_step_start((src is null) ? null : src.getObjectGstStruct(), active, format, amount, rate, flush, intermediate);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_step_start");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new stream_start message. This message is generated and posted in
	 * the sink elements of a GstBin. The bin will only forward the STREAM_START
	 * message to the application if all sinks have posted an STREAM_START message.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *
	 * Returns: The new stream_start message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src)
	{
		auto p = gst_message_new_stream_start((src is null) ? null : src.getObjectGstStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_stream_start");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new stream status message. This message is posted when a streaming
	 * thread is created/destroyed or when the state changed.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     type = The stream status type.
	 *     owner = the owner element of @src.
	 *
	 * Returns: the new stream status message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstStreamStatusType type, Element owner)
	{
		auto p = gst_message_new_stream_status((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_stream_status");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new structure change message. This message is posted when the
	 * structure of a pipeline is in the process of being changed, for example
	 * when pads are linked or unlinked.
	 *
	 * @src should be the sinkpad that unlinked or linked.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     type = The change type.
	 *     owner = The owner element of @src.
	 *     busy = Whether the structure change is busy.
	 *
	 * Returns: the new structure change message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, GstStructureChangeType type, Element owner, bool busy)
	{
		auto p = gst_message_new_structure_change((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct(), busy);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_structure_change");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new tag message. The message will take ownership of the tag list.
	 * The message is posted by elements that discovered a new taglist.
	 *
	 * Params:
	 *     src = The object originating the message.
	 *     tagList = the tag list for the message.
	 *
	 * Returns: the new tag message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, TagList tagList)
	{
		auto p = gst_message_new_tag((src is null) ? null : src.getObjectGstStruct(), (tagList is null) ? null : tagList.getTagListStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_tag");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Create a new TOC message. The message is posted by elements
	 * that discovered or updated a TOC.
	 *
	 * Params:
	 *     src = the object originating the message.
	 *     toc = #GstToc structure for the message.
	 *     updated = whether TOC was updated or not.
	 *
	 * Returns: a new TOC message.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectGst src, Toc toc, bool updated)
	{
		auto p = gst_message_new_toc((src is null) ? null : src.getObjectGstStruct(), (toc is null) ? null : toc.getTocStruct(), updated);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_toc");
		}

		this(cast(GstMessage*) p);
	}

	/**
	 * Creates and appends a new entry.
	 *
	 * The specified location string is copied. However, ownership over the tag
	 * list and structure are transferred to the message.
	 *
	 * Params:
	 *     location = location string for the new entry
	 *     tagList = tag list for the new entry
	 *     entryStruct = structure for the new entry
	 *
	 * Since: 1.10
	 */
	public void addRedirectEntry(string location, TagList tagList, Structure entryStruct)
	{
		gst_message_add_redirect_entry(gstMessage, Str.toStringz(location), (tagList is null) ? null : tagList.getTagListStruct(), (entryStruct is null) ? null : entryStruct.getStructureStruct(true));
	}

	/**
	 * Returns: the number of entries stored in the message
	 *
	 * Since: 1.10
	 */
	public size_t getNumRedirectEntries()
	{
		return gst_message_get_num_redirect_entries(gstMessage);
	}

	/**
	 * Retrieve the sequence number of a message.
	 *
	 * Messages have ever-incrementing sequence numbers, which may also be set
	 * explicitly via gst_message_set_seqnum(). Sequence numbers are typically used
	 * to indicate that a message corresponds to some other set of messages or
	 * events, for example a SEGMENT_DONE message corresponding to a SEEK event. It
	 * is considered good practice to make this correspondence when possible, though
	 * it is not required.
	 *
	 * Note that events and messages share the same sequence number incrementor;
	 * two events or messages will never have the same sequence number unless
	 * that correspondence was made explicitly.
	 *
	 * Returns: The message's sequence number.
	 *
	 *     MT safe.
	 */
	public uint getSeqnum()
	{
		return gst_message_get_seqnum(gstMessage);
	}

	/**
	 * Extracts the object managing the streaming thread from @message.
	 *
	 * Returns: a GValue containing the object that manages the
	 *     streaming thread. This object is usually of type GstTask but other types can
	 *     be added in the future. The object remains valid as long as @message is
	 *     valid.
	 */
	public Value getStreamStatusObject()
	{
		auto p = gst_message_get_stream_status_object(gstMessage);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Access the structure of the message.
	 *
	 * Returns: The structure of the message. The
	 *     structure is still owned by the message, which means that you should not
	 *     free it and that the pointer becomes invalid when you free the message.
	 *
	 *     MT safe.
	 */
	public Structure getStructure()
	{
		auto p = gst_message_get_structure(gstMessage);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Checks if @message has the given @name. This function is usually used to
	 * check the name of a custom message.
	 *
	 * Params:
	 *     name = name to check
	 *
	 * Returns: %TRUE if @name matches the name of the message structure.
	 */
	public bool hasName(string name)
	{
		return gst_message_has_name(gstMessage, Str.toStringz(name)) != 0;
	}

	/**
	 * Extract the running_time from the async_done message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     runningTime = Result location for the running_time or %NULL
	 */
	public void parseAsyncDone(out GstClockTime runningTime)
	{
		gst_message_parse_async_done(gstMessage, &runningTime);
	}

	/**
	 * Extracts the buffering percent from the GstMessage. see also
	 * gst_message_new_buffering().
	 *
	 * MT safe.
	 *
	 * Params:
	 *     percent = Return location for the percent.
	 */
	public void parseBuffering(out int percent)
	{
		gst_message_parse_buffering(gstMessage, &percent);
	}

	/**
	 * Extracts the buffering stats values from @message.
	 *
	 * Params:
	 *     mode = a buffering mode, or %NULL
	 *     avgIn = the average input rate, or %NULL
	 *     avgOut = the average output rate, or %NULL
	 *     bufferingLeft = amount of buffering time left in
	 *         milliseconds, or %NULL
	 */
	public void parseBufferingStats(out GstBufferingMode mode, out int avgIn, out int avgOut, out long bufferingLeft)
	{
		gst_message_parse_buffering_stats(gstMessage, &mode, &avgIn, &avgOut, &bufferingLeft);
	}

	/**
	 * Extracts the lost clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     clock = a pointer to hold the lost clock
	 */
	public void parseClockLost(out Clock clock)
	{
		GstClock* outclock = null;

		gst_message_parse_clock_lost(gstMessage, &outclock);

		clock = ObjectG.getDObject!(Clock)(outclock);
	}

	/**
	 * Extracts the clock and ready flag from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     clock = a pointer to  hold a clock
	 *         object, or %NULL
	 *     ready = a pointer to hold the ready flag, or %NULL
	 */
	public void parseClockProvide(out Clock clock, out bool ready)
	{
		GstClock* outclock = null;
		int outready;

		gst_message_parse_clock_provide(gstMessage, &outclock, &outready);

		clock = ObjectG.getDObject!(Clock)(outclock);
		ready = (outready == 1);
	}

	/**
	 * Parse a context type from an existing GST_MESSAGE_NEED_CONTEXT message.
	 *
	 * Params:
	 *     contextType = the context type, or %NULL
	 *
	 * Returns: a #gboolean indicating if the parsing succeeded.
	 *
	 * Since: 1.2
	 */
	public bool parseContextType(out string contextType)
	{
		char* outcontextType = null;

		auto p = gst_message_parse_context_type(gstMessage, &outcontextType) != 0;

		contextType = Str.toString(outcontextType);

		return p;
	}

	/**
	 * Parses a device-added message. The device-added message is produced by
	 * #GstDeviceProvider or a #GstDeviceMonitor. It announces the appearance
	 * of monitored devices.
	 *
	 * Params:
	 *     device = A location where to store a
	 *         pointer to the new #GstDevice, or %NULL
	 *
	 * Since: 1.4
	 */
	public void parseDeviceAdded(out Device device)
	{
		GstDevice* outdevice = null;

		gst_message_parse_device_added(gstMessage, &outdevice);

		device = ObjectG.getDObject!(Device)(outdevice);
	}

	/**
	 * Parses a device-removed message. The device-removed message is produced by
	 * #GstDeviceProvider or a #GstDeviceMonitor. It announces the
	 * disappearance of monitored devices.
	 *
	 * Params:
	 *     device = A location where to store a
	 *         pointer to the removed #GstDevice, or %NULL
	 *
	 * Since: 1.4
	 */
	public void parseDeviceRemoved(out Device device)
	{
		GstDevice* outdevice = null;

		gst_message_parse_device_removed(gstMessage, &outdevice);

		device = ObjectG.getDObject!(Device)(outdevice);
	}

	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 *
	 * Typical usage of this function might be:
	 * |[<!-- language="C" -->
	 * ...
	 * switch (GST_MESSAGE_TYPE (msg)) {
	 * case GST_MESSAGE_ERROR: {
	 * GError *err = NULL;
	 * gchar *dbg_info = NULL;
	 *
	 * gst_message_parse_error (msg, &amp;err, &amp;dbg_info);
	 * g_printerr ("ERROR from element %s: %s\n",
	 * GST_OBJECT_NAME (msg->src), err->message);
	 * g_printerr ("Debugging info: %s\n", (dbg_info) ? dbg_info : "none");
	 * g_error_free (err);
	 * g_free (dbg_info);
	 * break;
	 * }
	 * ...
	 * }
	 * ...
	 * ]|
	 *
	 * MT safe.
	 *
	 * Params:
	 *     gerror = location for the GError
	 *     debug_ = location for the debug message,
	 *         or %NULL
	 */
	public void parseError(out ErrorG gerror, out string debug_)
	{
		GError* outgerror = null;
		char* outdebug_ = null;

		gst_message_parse_error(gstMessage, &outgerror, &outdebug_);

		gerror = new ErrorG(outgerror);
		debug_ = Str.toString(outdebug_);
	}

	/**
	 * Returns the optional details structure, may be NULL if none.
	 * The returned structure must not be freed.
	 *
	 * Params:
	 *     structure = A pointer to the returned details
	 *
	 * Since: 1.10
	 */
	public void parseErrorDetails(out Structure structure)
	{
		GstStructure* outstructure = null;

		gst_message_parse_error_details(gstMessage, &outstructure);

		structure = ObjectG.getDObject!(Structure)(outstructure);
	}

	/**
	 * Extract the group from the STREAM_START message.
	 *
	 * Params:
	 *     groupId = Result location for the group id or
	 *         %NULL
	 *
	 * Returns: %TRUE if the message had a group id set, %FALSE otherwise
	 *
	 *     MT safe.
	 *
	 * Since: 1.2
	 */
	public bool parseGroupId(out uint groupId)
	{
		return gst_message_parse_group_id(gstMessage, &groupId) != 0;
	}

	/**
	 * Extract the context from the HAVE_CONTEXT message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     context = Result location for the
	 *         context or %NULL
	 *
	 * Since: 1.2
	 */
	public void parseHaveContext(out Context context)
	{
		GstContext* outcontext = null;

		gst_message_parse_have_context(gstMessage, &outcontext);

		context = ObjectG.getDObject!(Context)(outcontext);
	}

	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     gerror = location for the GError
	 *     debug_ = location for the debug message,
	 *         or %NULL
	 */
	public void parseInfo(out ErrorG gerror, out string debug_)
	{
		GError* outgerror = null;
		char* outdebug_ = null;

		gst_message_parse_info(gstMessage, &outgerror, &outdebug_);

		gerror = new ErrorG(outgerror);
		debug_ = Str.toString(outdebug_);
	}

	/**
	 * Returns the optional details structure, may be NULL if none
	 * The returned structure must not be freed.
	 *
	 * Params:
	 *     structure = A pointer to the returned details structure
	 *
	 * Since: 1.10
	 */
	public void parseInfoDetails(out Structure structure)
	{
		GstStructure* outstructure = null;

		gst_message_parse_info_details(gstMessage, &outstructure);

		structure = ObjectG.getDObject!(Structure)(outstructure);
	}

	/**
	 * Extracts the new clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     clock = a pointer to hold the selected
	 *         new clock
	 */
	public void parseNewClock(out Clock clock)
	{
		GstClock* outclock = null;

		gst_message_parse_new_clock(gstMessage, &outclock);

		clock = ObjectG.getDObject!(Clock)(outclock);
	}

	/**
	 * Parses the progress @type, @code and @text.
	 *
	 * Params:
	 *     type = location for the type
	 *     code = location for the code
	 *     text = location for the text
	 */
	public void parseProgress(out GstProgressType type, out string code, out string text)
	{
		char* outcode = null;
		char* outtext = null;

		gst_message_parse_progress(gstMessage, &type, &outcode, &outtext);

		code = Str.toString(outcode);
		text = Str.toString(outtext);
	}

	/**
	 * Parses a property-notify message. These will be posted on the bus only
	 * when set up with gst_element_add_property_notify_watch() or
	 * gst_element_add_property_deep_notify_watch().
	 *
	 * Params:
	 *     object = location where to store a
	 *         pointer to the object whose property got changed, or %NULL
	 *     propertyName = return location for
	 *         the name of the property that got changed, or %NULL
	 *     propertyValue = return location for
	 *         the new value of the property that got changed, or %NULL. This will
	 *         only be set if the property notify watch was told to include the value
	 *         when it was set up
	 *
	 * Since: 1.10
	 */
	public void parsePropertyNotify(out ObjectGst object, out string propertyName, out Value propertyValue)
	{
		GstObject* outobject = null;
		char* outpropertyName = null;
		GValue* outpropertyValue = null;

		gst_message_parse_property_notify(gstMessage, &outobject, &outpropertyName, &outpropertyValue);

		object = ObjectG.getDObject!(ObjectGst)(outobject);
		propertyName = Str.toString(outpropertyName);
		propertyValue = ObjectG.getDObject!(Value)(outpropertyValue);
	}

	/**
	 * Extract the timestamps and live status from the QoS message.
	 *
	 * The returned values give the running_time, stream_time, timestamp and
	 * duration of the dropped buffer. Values of GST_CLOCK_TIME_NONE mean unknown
	 * values.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     live = if the message was generated by a live element
	 *     runningTime = the running time of the buffer that
	 *         generated the message
	 *     streamTime = the stream time of the buffer that
	 *         generated the message
	 *     timestamp = the timestamps of the buffer that
	 *         generated the message
	 *     duration = the duration of the buffer that
	 *         generated the message
	 */
	public void parseQos(out bool live, out ulong runningTime, out ulong streamTime, out ulong timestamp, out ulong duration)
	{
		int outlive;

		gst_message_parse_qos(gstMessage, &outlive, &runningTime, &streamTime, &timestamp, &duration);

		live = (outlive == 1);
	}

	/**
	 * Extract the QoS stats representing the history of the current continuous
	 * pipeline playback period.
	 *
	 * When @format is @GST_FORMAT_UNDEFINED both @dropped and @processed are
	 * invalid. Values of -1 for either @processed or @dropped mean unknown values.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     format = Units of the 'processed' and 'dropped' fields.
	 *         Video sinks and video filters will use GST_FORMAT_BUFFERS (frames).
	 *         Audio sinks and audio filters will likely use GST_FORMAT_DEFAULT
	 *         (samples).
	 *     processed = Total number of units correctly processed
	 *         since the last state change to READY or a flushing operation.
	 *     dropped = Total number of units dropped since the last
	 *         state change to READY or a flushing operation.
	 */
	public void parseQosStats(out GstFormat format, out ulong processed, out ulong dropped)
	{
		gst_message_parse_qos_stats(gstMessage, &format, &processed, &dropped);
	}

	/**
	 * Extract the QoS values that have been calculated/analysed from the QoS data
	 *
	 * MT safe.
	 *
	 * Params:
	 *     jitter = The difference of the running-time against
	 *         the deadline.
	 *     proportion = Long term prediction of the ideal rate
	 *         relative to normal rate to get optimal quality.
	 *     quality = An element dependent integer value that
	 *         specifies the current quality level of the element. The default
	 *         maximum quality is 1000000.
	 */
	public void parseQosValues(out long jitter, out double proportion, out int quality)
	{
		gst_message_parse_qos_values(gstMessage, &jitter, &proportion, &quality);
	}

	/**
	 * Parses the location and/or structure from the entry with the given index.
	 * The index must be between 0 and gst_message_get_num_redirect_entries() - 1.
	 * Returned pointers are valid for as long as this message exists.
	 *
	 * Params:
	 *     entryIndex = index of the entry to parse
	 *     location = return location for
	 *         the pointer to the entry's location string, or %NULL
	 *     tagList = return location for
	 *         the pointer to the entry's tag list, or %NULL
	 *     entryStruct = return location
	 *         for the pointer to the entry's structure, or %NULL
	 *
	 * Since: 1.10
	 */
	public void parseRedirectEntry(size_t entryIndex, out string location, out TagList tagList, out Structure entryStruct)
	{
		char* outlocation = null;
		GstTagList* outtagList = null;
		GstStructure* outentryStruct = null;

		gst_message_parse_redirect_entry(gstMessage, entryIndex, &outlocation, &outtagList, &outentryStruct);

		location = Str.toString(outlocation);
		tagList = ObjectG.getDObject!(TagList)(outtagList);
		entryStruct = ObjectG.getDObject!(Structure)(outentryStruct);
	}

	/**
	 * Extract the requested state from the request_state message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     state = Result location for the requested state or %NULL
	 */
	public void parseRequestState(out GstState state)
	{
		gst_message_parse_request_state(gstMessage, &state);
	}

	/**
	 * Extract the running-time from the RESET_TIME message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     runningTime = Result location for the running_time or
	 *         %NULL
	 */
	public void parseResetTime(out GstClockTime runningTime)
	{
		gst_message_parse_reset_time(gstMessage, &runningTime);
	}

	/**
	 * Extracts the position and format from the segment done message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     format = Result location for the format, or %NULL
	 *     position = Result location for the position, or %NULL
	 */
	public void parseSegmentDone(out GstFormat format, out long position)
	{
		gst_message_parse_segment_done(gstMessage, &format, &position);
	}

	/**
	 * Extracts the position and format from the segment start message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     format = Result location for the format, or %NULL
	 *     position = Result location for the position, or %NULL
	 */
	public void parseSegmentStart(out GstFormat format, out long position)
	{
		gst_message_parse_segment_start(gstMessage, &format, &position);
	}

	/**
	 * Extracts the old and new states from the GstMessage.
	 *
	 * Typical usage of this function might be:
	 * |[<!-- language="C" -->
	 * ...
	 * switch (GST_MESSAGE_TYPE (msg)) {
	 * case GST_MESSAGE_STATE_CHANGED: {
	 * GstState old_state, new_state;
	 *
	 * gst_message_parse_state_changed (msg, &amp;old_state, &amp;new_state, NULL);
	 * g_print ("Element %s changed state from %s to %s.\n",
	 * GST_OBJECT_NAME (msg->src),
	 * gst_element_state_get_name (old_state),
	 * gst_element_state_get_name (new_state));
	 * break;
	 * }
	 * ...
	 * }
	 * ...
	 * ]|
	 *
	 * MT safe.
	 *
	 * Params:
	 *     oldstate = the previous state, or %NULL
	 *     newstate = the new (current) state, or %NULL
	 *     pending = the pending (target) state, or %NULL
	 */
	public void parseStateChanged(out GstState oldstate, out GstState newstate, out GstState pending)
	{
		gst_message_parse_state_changed(gstMessage, &oldstate, &newstate, &pending);
	}

	/**
	 * Extract the values the step_done message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     format = result location for the format
	 *     amount = result location for the amount
	 *     rate = result location for the rate
	 *     flush = result location for the flush flag
	 *     intermediate = result location for the intermediate flag
	 *     duration = result location for the duration
	 *     eos = result location for the EOS flag
	 */
	public void parseStepDone(out GstFormat format, out ulong amount, out double rate, out bool flush, out bool intermediate, out ulong duration, out bool eos)
	{
		int outflush;
		int outintermediate;
		int outeos;

		gst_message_parse_step_done(gstMessage, &format, &amount, &rate, &outflush, &outintermediate, &duration, &outeos);

		flush = (outflush == 1);
		intermediate = (outintermediate == 1);
		eos = (outeos == 1);
	}

	/**
	 * Extract the values from step_start message.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     active = result location for the active flag
	 *     format = result location for the format
	 *     amount = result location for the amount
	 *     rate = result location for the rate
	 *     flush = result location for the flush flag
	 *     intermediate = result location for the intermediate flag
	 */
	public void parseStepStart(out bool active, out GstFormat format, out ulong amount, out double rate, out bool flush, out bool intermediate)
	{
		int outactive;
		int outflush;
		int outintermediate;

		gst_message_parse_step_start(gstMessage, &outactive, &format, &amount, &rate, &outflush, &outintermediate);

		active = (outactive == 1);
		flush = (outflush == 1);
		intermediate = (outintermediate == 1);
	}

	/**
	 * Parses a stream-collection message.
	 *
	 * Params:
	 *     collection = A location where to store a
	 *         pointer to the #GstStreamCollection, or %NULL
	 *
	 * Since: 1.10
	 */
	public void parseStreamCollection(out StreamCollection collection)
	{
		GstStreamCollection* outcollection = null;

		gst_message_parse_stream_collection(gstMessage, &outcollection);

		collection = ObjectG.getDObject!(StreamCollection)(outcollection);
	}

	/**
	 * Extracts the stream status type and owner the GstMessage. The returned
	 * owner remains valid for as long as the reference to @message is valid and
	 * should thus not be unreffed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     type = A pointer to hold the status type
	 *     owner = The owner element of the message source
	 */
	public void parseStreamStatus(out GstStreamStatusType type, out Element owner)
	{
		GstElement* outowner = null;

		gst_message_parse_stream_status(gstMessage, &type, &outowner);

		owner = ObjectG.getDObject!(Element)(outowner);
	}

	/**
	 * Parses a streams-selected message.
	 *
	 * Params:
	 *     collection = A location where to store a
	 *         pointer to the #GstStreamCollection, or %NULL
	 *
	 * Since: 1.10
	 */
	public void parseStreamsSelected(out StreamCollection collection)
	{
		GstStreamCollection* outcollection = null;

		gst_message_parse_streams_selected(gstMessage, &outcollection);

		collection = ObjectG.getDObject!(StreamCollection)(outcollection);
	}

	/**
	 * Extracts the change type and completion status from the GstMessage.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     type = A pointer to hold the change type
	 *     owner = The owner element of the
	 *         message source
	 *     busy = a pointer to hold whether the change is in
	 *         progress or has been completed
	 */
	public void parseStructureChange(out GstStructureChangeType type, out Element owner, out bool busy)
	{
		GstElement* outowner = null;
		int outbusy;

		gst_message_parse_structure_change(gstMessage, &type, &outowner, &outbusy);

		owner = ObjectG.getDObject!(Element)(outowner);
		busy = (outbusy == 1);
	}

	/**
	 * Extracts the tag list from the GstMessage. The tag list returned in the
	 * output argument is a copy; the caller must free it when done.
	 *
	 * Typical usage of this function might be:
	 * |[<!-- language="C" -->
	 * ...
	 * switch (GST_MESSAGE_TYPE (msg)) {
	 * case GST_MESSAGE_TAG: {
	 * GstTagList *tags = NULL;
	 *
	 * gst_message_parse_tag (msg, &amp;tags);
	 * g_print ("Got tags from element %s\n", GST_OBJECT_NAME (msg->src));
	 * handle_tags (tags);
	 * gst_tag_list_unref (tags);
	 * break;
	 * }
	 * ...
	 * }
	 * ...
	 * ]|
	 *
	 * MT safe.
	 *
	 * Params:
	 *     tagList = return location for the tag-list.
	 */
	public void parseTag(out TagList tagList)
	{
		GstTagList* outtagList = null;

		gst_message_parse_tag(gstMessage, &outtagList);

		tagList = ObjectG.getDObject!(TagList)(outtagList);
	}

	/**
	 * Extract the TOC from the #GstMessage. The TOC returned in the
	 * output argument is a copy; the caller must free it with
	 * gst_toc_unref() when done.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     toc = return location for the TOC.
	 *     updated = return location for the updated flag.
	 */
	public void parseToc(out Toc toc, out bool updated)
	{
		GstToc* outtoc = null;
		int outupdated;

		gst_message_parse_toc(gstMessage, &outtoc, &outupdated);

		toc = ObjectG.getDObject!(Toc)(outtoc);
		updated = (outupdated == 1);
	}

	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     gerror = location for the GError
	 *     debug_ = location for the debug message,
	 *         or %NULL
	 */
	public void parseWarning(out ErrorG gerror, out string debug_)
	{
		GError* outgerror = null;
		char* outdebug_ = null;

		gst_message_parse_warning(gstMessage, &outgerror, &outdebug_);

		gerror = new ErrorG(outgerror);
		debug_ = Str.toString(outdebug_);
	}

	/**
	 * Returns the optional details structure, may be NULL if none
	 * The returned structure must not be freed.
	 *
	 * Params:
	 *     structure = A pointer to the returned details structure
	 *
	 * Since: 1.10
	 */
	public void parseWarningDetails(out Structure structure)
	{
		GstStructure* outstructure = null;

		gst_message_parse_warning_details(gstMessage, &outstructure);

		structure = ObjectG.getDObject!(Structure)(outstructure);
	}

	/**
	 * Configures the buffering stats values in @message.
	 *
	 * Params:
	 *     mode = a buffering mode
	 *     avgIn = the average input rate
	 *     avgOut = the average output rate
	 *     bufferingLeft = amount of buffering time left in milliseconds
	 */
	public void setBufferingStats(GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft)
	{
		gst_message_set_buffering_stats(gstMessage, mode, avgIn, avgOut, bufferingLeft);
	}

	/**
	 * Sets the group id on the stream-start message.
	 *
	 * All streams that have the same group id are supposed to be played
	 * together, i.e. all streams inside a container file should have the
	 * same group id but different stream ids. The group id should change
	 * each time the stream is started, resulting in different group ids
	 * each time a file is played for example.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     groupId = the group id
	 *
	 * Since: 1.2
	 */
	public void setGroupId(uint groupId)
	{
		gst_message_set_group_id(gstMessage, groupId);
	}

	/**
	 * Set the QoS stats representing the history of the current continuous pipeline
	 * playback period.
	 *
	 * When @format is @GST_FORMAT_UNDEFINED both @dropped and @processed are
	 * invalid. Values of -1 for either @processed or @dropped mean unknown values.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     format = Units of the 'processed' and 'dropped' fields. Video sinks and video
	 *         filters will use GST_FORMAT_BUFFERS (frames). Audio sinks and audio filters
	 *         will likely use GST_FORMAT_DEFAULT (samples).
	 *     processed = Total number of units correctly processed since the last state
	 *         change to READY or a flushing operation.
	 *     dropped = Total number of units dropped since the last state change to READY
	 *         or a flushing operation.
	 */
	public void setQosStats(GstFormat format, ulong processed, ulong dropped)
	{
		gst_message_set_qos_stats(gstMessage, format, processed, dropped);
	}

	/**
	 * Set the QoS values that have been calculated/analysed from the QoS data
	 *
	 * MT safe.
	 *
	 * Params:
	 *     jitter = The difference of the running-time against the deadline.
	 *     proportion = Long term prediction of the ideal rate relative to normal rate
	 *         to get optimal quality.
	 *     quality = An element dependent integer value that specifies the current
	 *         quality level of the element. The default maximum quality is 1000000.
	 */
	public void setQosValues(long jitter, double proportion, int quality)
	{
		gst_message_set_qos_values(gstMessage, jitter, proportion, quality);
	}

	/**
	 * Set the sequence number of a message.
	 *
	 * This function might be called by the creator of a message to indicate that
	 * the message relates to other messages or events. See gst_message_get_seqnum()
	 * for more information.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     seqnum = A sequence number.
	 */
	public void setSeqnum(uint seqnum)
	{
		gst_message_set_seqnum(gstMessage, seqnum);
	}

	/**
	 * Configures the object handling the streaming thread. This is usually a
	 * GstTask object but other objects might be added in the future.
	 *
	 * Params:
	 *     object = the object controlling the streaming
	 */
	public void setStreamStatusObject(Value object)
	{
		gst_message_set_stream_status_object(gstMessage, (object is null) ? null : object.getValueStruct());
	}

	/**
	 * Adds the @stream to the @message.
	 *
	 * Params:
	 *     stream = a #GstStream to add to @message
	 *
	 * Since: 1.10
	 */
	public void streamsSelectedAdd(Stream stream)
	{
		gst_message_streams_selected_add(gstMessage, (stream is null) ? null : stream.getStreamStruct());
	}

	/**
	 * Returns the number of streams contained in the @message.
	 *
	 * Returns: The number of streams contained within.
	 *
	 * Since: 1.10
	 */
	public uint streamsSelectedGetSize()
	{
		return gst_message_streams_selected_get_size(gstMessage);
	}

	/**
	 * Retrieves the #GstStream with index @index from the @message.
	 *
	 * Params:
	 *     idx = Index of the stream to retrieve
	 *
	 * Returns: A #GstStream
	 *
	 * Since: 1.10
	 */
	public Stream streamsSelectedGetStream(uint idx)
	{
		auto p = gst_message_streams_selected_get_stream(gstMessage, idx);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stream)(cast(GstStream*) p, true);
	}

	/**
	 * Get a writable version of the structure.
	 *
	 * Returns: The structure of the message. The structure
	 *     is still owned by the message, which means that you should not free
	 *     it and that the pointer becomes invalid when you free the message.
	 *     This function checks if @message is writable and will never return
	 *     %NULL.
	 *
	 *     MT safe.
	 *
	 * Since: 1.14
	 */
	public Structure writableStructure()
	{
		auto p = gst_message_writable_structure(gstMessage);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Get a printable name for the given message type. Do not modify or free.
	 *
	 * Params:
	 *     type = the message type
	 *
	 * Returns: a reference to the static name of the message.
	 */
	public static string typeGetName(GstMessageType type)
	{
		return Str.toString(gst_message_type_get_name(type));
	}

	/**
	 * Get the unique quark for the given message type.
	 *
	 * Params:
	 *     type = the message type
	 *
	 * Returns: the quark associated with the message type
	 */
	public static GQuark typeToQuark(GstMessageType type)
	{
		return gst_message_type_to_quark(type);
	}
}
