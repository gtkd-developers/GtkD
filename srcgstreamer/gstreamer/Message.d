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
 * inFile  = gstreamer-GstMessage.html
 * outPack = gstreamer
 * outFile = Message
 * strct   = GstMessage
 * realStrct=
 * ctorStrct=
 * clss    = Message
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_message_
 * 	- gst_
 * omit structs:
 * 	- GstMessage
 * omit prefixes:
 * omit code:
 * 	- gst_message_parse_tag
 * 	- gst_message_type_to_quark
 * 	- gst_message_new_element
 * 	- gst_message_new_new_clock
 * 	- gst_message_new_segment_done
 * 	- gst_message_new_segment_start
 * 	- gst_message_new_warning
 * 	- gst_message_new_state_dirty
 * 	- gst_message_new_eos
 * 	- gst_message_new_error
 * 	- gst_message_new_info
 * 	- gst_message_new_latency
 * 	- gst_message_new_async_start
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Quark
 * 	- gstreamer.Structure
 * 	- gstreamer.ObjectGst
 * 	- gstreamer.Clock
 * 	- glib.ErrorG
 * 	- gstreamer.TagList
 * structWrap:
 * 	- GError* -> ErrorG
 * 	- GQuark -> Quark
 * 	- GstClock* -> Clock
 * 	- GstMessage* -> Message
 * 	- GstObject* -> ObjectGst
 * 	- GstStructure* -> Structure
 * 	- GstTagList* -> TagList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Message;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.Quark;
private import gstreamer.Structure;
private import gstreamer.ObjectGst;
private import gstreamer.Clock;
private import glib.ErrorG;
private import gstreamer.TagList;




/**
 * Description
 * Messages are implemented as a subclass of GstMiniObject with a generic
 * GstStructure as the content. This allows for writing custom messages without
 * requiring an API change while allowing a wide range of different types
 * of messages.
 * Messages are posted by objects in the pipeline and are passed to the
 * application using the GstBus.
 * The basic use pattern of posting a message on a GstBus is as follows:
 * $(DDOC_COMMENT example)
 * A GstElement usually posts messages on the bus provided by the parent
 * container using gst_element_post_message().
 * Last reviewed on 2005-11-09 (0.9.4)
 */
public class Message
{
	
	/** the main Gtk struct */
	protected GstMessage* gstMessage;
	
	
	public GstMessage* getMessageStruct()
	{
		return gstMessage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMessage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstMessage* gstMessage)
	{
		this.gstMessage = gstMessage;
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
	 * Get the structure.
	 */
	public Structure structure()
	{
		return new Structure( getMessageStruct().structure );
	}
	
	/**
	 * Extracts the tag list from the GstMessage. The tag list returned in the
	 * output argument is a copy; the caller must free it when done.
	 * MT safe.
	 * Params:
	 *  tagList = Return location for the tag-list.
	 */
	public TagList parseTag()
	{
		// void gst_message_parse_tag (GstMessage *message,  GstTagList **tag_list);
		GstTagList* tag_list_c;
		gst_message_parse_tag(gstMessage, &tag_list_c);
		
		if ( tag_list_c is null )
		{
			return null;
		}
		
		return new TagList(tag_list_c);
	}
	
	//I'm not so sure about the following:
	/**
	 * Get the unique quark for the given message type.
	 * Params:
	 *  type = the message type
	 * Returns:
	 *  the quark associated with the message type
	 */
	public static Quark typeToQuark(GstMessageType type)
	{
		// GQuark gst_message_type_to_quark (GstMessageType type);
		return new Quark( cast(uint*)gst_message_type_to_quark(type) );
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
		
		return new Message(cast(GstMessage*)p);
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
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
		
		return new Message(cast(GstMessage*)p );
	}
	
	/**
	 * This message is posted by elements when they start an ASYNC state change.
	 * new_base_time is set to TRUE when the element lost its state when it was
	 * PLAYING.
	 * Params:
	 * src = The object originating the message.
	 * newBaseTime = if a new base_time should be set on the element
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Message newAsyncStart(ObjectGst src, int newBaseTime)
	{
		// GstMessage* gst_message_new_async_start (GstObject *src,  gboolean new_base_time);
		auto p = gst_message_new_async_start((src is null) ? null : src.getObjectGstStruct(), newBaseTime);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_async_start");
		}
		
		return new Message(cast(GstMessage*)p);
	}
	
	/**
	 */
	
	/**
	 * Get a printable name for the given message type. Do not modify or free.
	 * Params:
	 * type = the message type
	 * Returns: a reference to the static name of the message.
	 */
	public static string typeGetName(GstMessageType type)
	{
		// const gchar* gst_message_type_get_name (GstMessageType type);
		return Str.toString(gst_message_type_get_name(type));
	}
	
	/**
	 * Access the structure of the message.
	 * Returns: The structure of the message. The structure is still owned by the message, which means that you should not free it and that the pointer becomes invalid when you free the message. MT safe.
	 */
	public Structure getStructure()
	{
		// const GstStructure* gst_message_get_structure (GstMessage *message);
		auto p = gst_message_get_structure(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Create a new application-typed message. GStreamer will never create these
	 * messages; they are a gift from us to you. Enjoy.
	 * Params:
	 * src = The object originating the message.
	 * structure = The structure for the message. The message will take ownership of
	 * the structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Structure structure)
	{
		// GstMessage* gst_message_new_application (GstObject *src,  GstStructure *structure);
		auto p = gst_message_new_application((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_application((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a clock provide message. This message is posted whenever an
	 * element is ready to provide a clock or lost its ability to provide
	 * a clock (maybe because it paused or became EOS).
	 * This message is mainly used internally to manage the clock
	 * selection.
	 * Params:
	 * src = The object originating the message.
	 * clock = The clock it provides
	 * ready = TRUE if the sender can provide a clock
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Clock clock, int ready)
	{
		// GstMessage* gst_message_new_clock_provide (GstObject *src,  GstClock *clock,  gboolean ready);
		auto p = gst_message_new_clock_provide((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct(), ready);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_clock_provide((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct(), ready)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a clock lost message. This message is posted whenever the
	 * clock is not valid anymore.
	 * If this message is posted by the pipeline, the pipeline will
	 * select a new clock again when it goes to PLAYING. It might therefore
	 * be needed to set the pipeline to PAUSED and PLAYING again.
	 * Params:
	 * src = The object originating the message.
	 * clock = the clock that was lost
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Clock clock)
	{
		// GstMessage* gst_message_new_clock_lost (GstObject *src,  GstClock *clock);
		auto p = gst_message_new_clock_lost((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_clock_lost((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a new custom-typed message. This can be used for anything not
	 * handled by other message-specific functions to pass a message to the
	 * app. The structure field can be NULL.
	 * Params:
	 * type = The GstMessageType to distinguish messages
	 * src = The object originating the message.
	 * structure = The structure for the message. The message will take ownership of
	 * the structure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstMessageType type, ObjectGst src, Structure structure)
	{
		// GstMessage* gst_message_new_custom (GstMessageType type,  GstObject *src,  GstStructure *structure);
		auto p = gst_message_new_custom(type, (src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_custom(type, (src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a state change message. This message is posted whenever an element
	 * changed its state.
	 * Params:
	 * src = the object originating the message
	 * oldstate = the previous state
	 * newstate = the new (current) state
	 * pending = the pending (target) state
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstState oldstate, GstState newstate, GstState pending)
	{
		// GstMessage* gst_message_new_state_changed (GstObject *src,  GstState oldstate,  GstState newstate,  GstState pending);
		auto p = gst_message_new_state_changed((src is null) ? null : src.getObjectGstStruct(), oldstate, newstate, pending);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_state_changed((src is null) ? null : src.getObjectGstStruct(), oldstate, newstate, pending)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a new tag message. The message will take ownership of the tag list.
	 * The message is posted by elements that discovered a new taglist.
	 * Params:
	 * src = The object originating the message.
	 * tagList = The tag list for the message.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, TagList tagList)
	{
		// GstMessage* gst_message_new_tag (GstObject *src,  GstTagList *tag_list);
		auto p = gst_message_new_tag((src is null) ? null : src.getObjectGstStruct(), (tagList is null) ? null : tagList.getTagListStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_tag((src is null) ? null : src.getObjectGstStruct(), (tagList is null) ? null : tagList.getTagListStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a new buffering message. This message can be posted by an element that
	 * needs to buffer data before it can continue processing. percent should be a
	 * value between 0 and 100. A value of 100 means that the buffering completed.
	 * When percent is < 100 the application should PAUSE a PLAYING pipeline. When
	 * percent is 100, the application can set the pipeline (back) to PLAYING.
	 * The application must be prepared to receive BUFFERING messages in the
	 * PREROLLING state and may only set the pipeline to PLAYING after receiving a
	 * message with percent set to 100, which can happen after the pipeline
	 * completed prerolling.
	 * Params:
	 * src = The object originating the message.
	 * percent = The buffering percent
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, int percent)
	{
		// GstMessage* gst_message_new_buffering (GstObject *src,  gint percent);
		auto p = gst_message_new_buffering((src is null) ? null : src.getObjectGstStruct(), percent);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_buffering((src is null) ? null : src.getObjectGstStruct(), percent)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a new duration message. This message is posted by elements that
	 * know the duration of a stream in a specific format. This message
	 * is received by bins and is used to calculate the total duration of a
	 * pipeline. Elements may post a duration message with a duration of
	 * GST_CLOCK_TIME_NONE to indicate that the duration has changed and the
	 * cached duration should be discarded. The new duration can then be
	 * retrieved via a query.
	 * Params:
	 * src = The object originating the message.
	 * format = The format of the duration
	 * duration = The new duration
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstFormat format, long duration)
	{
		// GstMessage* gst_message_new_duration (GstObject *src,  GstFormat format,  gint64 duration);
		auto p = gst_message_new_duration((src is null) ? null : src.getObjectGstStruct(), format, duration);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_duration((src is null) ? null : src.getObjectGstStruct(), format, duration)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * The message is posted when elements completed an ASYNC state change.
	 * Params:
	 * src = The object originating the message.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src)
	{
		// GstMessage* gst_message_new_async_done (GstObject *src);
		auto p = gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the lost clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = A pointer to hold the lost clock
	 */
	public void parseClockLost(out Clock clock)
	{
		// void gst_message_parse_clock_lost (GstMessage *message,  GstClock **clock);
		GstClock* outclock = null;
		
		gst_message_parse_clock_lost(gstMessage, &outclock);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Extracts the clock and ready flag from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = A pointer to hold a clock object.
	 * ready = A pointer to hold the ready flag.
	 */
	public void parseClockProvide(out Clock clock, out int ready)
	{
		// void gst_message_parse_clock_provide (GstMessage *message,  GstClock **clock,  gboolean *ready);
		GstClock* outclock = null;
		
		gst_message_parse_clock_provide(gstMessage, &outclock, &ready);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 * MT safe.
	 * Params:
	 * gerror = Location for the GError
	 * dbug = Location for the debug message, or NULL
	 */
	public void parseError(out ErrorG gerror, out string dbug)
	{
		// void gst_message_parse_error (GstMessage *message,  GError **gerror,  gchar **debug);
		GError* outgerror = null;
		char* outdbug = null;
		
		gst_message_parse_error(gstMessage, &outgerror, &outdbug);
		
		gerror = ObjectG.getDObject!(ErrorG)(outgerror);
		dbug = Str.toString(outdbug);
	}
	
	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 * MT safe.
	 * Params:
	 * gerror = Location for the GError
	 * dbug = Location for the debug message, or NULL
	 * Since 0.10.12
	 */
	public void parseInfo(out ErrorG gerror, out string dbug)
	{
		// void gst_message_parse_info (GstMessage *message,  GError **gerror,  gchar **debug);
		GError* outgerror = null;
		char* outdbug = null;
		
		gst_message_parse_info(gstMessage, &outgerror, &outdbug);
		
		gerror = ObjectG.getDObject!(ErrorG)(outgerror);
		dbug = Str.toString(outdbug);
	}
	
	/**
	 * Extracts the new clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = A pointer to hold the selected new clock
	 */
	public void parseNewClock(out Clock clock)
	{
		// void gst_message_parse_new_clock (GstMessage *message,  GstClock **clock);
		GstClock* outclock = null;
		
		gst_message_parse_new_clock(gstMessage, &outclock);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Extracts the position and format from the segment start message.
	 * MT safe.
	 * Params:
	 * format = Result location for the format, or NULL
	 * position = Result location for the position, or NULL
	 */
	public void parseSegmentDone(out GstFormat format, out long position)
	{
		// void gst_message_parse_segment_done (GstMessage *message,  GstFormat *format,  gint64 *position);
		gst_message_parse_segment_done(gstMessage, &format, &position);
	}
	
	/**
	 * Extracts the position and format from the segment start message.
	 * MT safe.
	 * Params:
	 * format = Result location for the format, or NULL
	 * position = Result location for the position, or NULL
	 */
	public void parseSegmentStart(out GstFormat format, out long position)
	{
		// void gst_message_parse_segment_start (GstMessage *message,  GstFormat *format,  gint64 *position);
		gst_message_parse_segment_start(gstMessage, &format, &position);
	}
	
	/**
	 * Extracts the old and new states from the GstMessage.
	 * MT safe.
	 * Params:
	 * oldstate = the previous state, or NULL
	 * newstate = the new (current) state, or NULL
	 * pending = the pending (target) state, or NULL
	 */
	public void parseStateChanged(GstState* oldstate, GstState* newstate, GstState* pending)
	{
		// void gst_message_parse_state_changed (GstMessage *message,  GstState *oldstate,  GstState *newstate,  GstState *pending);
		gst_message_parse_state_changed(gstMessage, oldstate, newstate, pending);
	}
	
	/**
	 * Extracts the buffering percent from the GstMessage. see also
	 * gst_message_new_buffering().
	 * Params:
	 * percent = Return location for the percent.
	 * Since 0.10.11
	 * MT safe.
	 */
	public void parseBuffering(out int percent)
	{
		// void gst_message_parse_buffering (GstMessage *message,  gint *percent);
		gst_message_parse_buffering(gstMessage, &percent);
	}
	
	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 * MT safe.
	 * Params:
	 * gerror = Location for the GError
	 * dbug = Location for the debug message, or NULL
	 */
	public void parseWarning(out ErrorG gerror, out string dbug)
	{
		// void gst_message_parse_warning (GstMessage *message,  GError **gerror,  gchar **debug);
		GError* outgerror = null;
		char* outdbug = null;
		
		gst_message_parse_warning(gstMessage, &outgerror, &outdbug);
		
		gerror = ObjectG.getDObject!(ErrorG)(outgerror);
		dbug = Str.toString(outdbug);
	}
	
	/**
	 * Extracts the duration and format from the duration message. The duration
	 * might be GST_CLOCK_TIME_NONE, which indicates that the duration has
	 * changed. Applications should always use a query to retrieve the duration
	 * of a pipeline.
	 * MT safe.
	 * Params:
	 * format = Result location for the format, or NULL
	 * duration = Result location for the duration, or NULL
	 */
	public void parseDuration(out GstFormat format, out long duration)
	{
		// void gst_message_parse_duration (GstMessage *message,  GstFormat *format,  gint64 *duration);
		gst_message_parse_duration(gstMessage, &format, &duration);
	}
	
	/**
	 * Extract the new_base_time from the async_start message.
	 * MT safe.
	 * Params:
	 * newBaseTime = Result location for the new_base_time or NULL
	 * Since 0.10.13
	 */
	public void parseAsyncStart(out int newBaseTime)
	{
		// void gst_message_parse_async_start (GstMessage *message,  gboolean *new_base_time);
		gst_message_parse_async_start(gstMessage, &newBaseTime);
	}
	
	/**
	 * Convenience macro to increase the reference count of the message.
	 * Returns: msg (for convenience when doing assignments)
	 */
	public Message doref()
	{
		// GstMessage* gst_message_ref (GstMessage *msg);
		auto p = gst_message_ref(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
}
