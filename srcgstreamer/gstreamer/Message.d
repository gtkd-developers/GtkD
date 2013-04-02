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
 * omit structs:
 * 	- GstMessage
 * omit prefixes:
 * omit code:
 * 	- gst_message_parse_tag
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
 * 	- gst_message_new_duration_changed
 * 	- gst_message_new_async_start
 * 	- gst_message_new_reset_time
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- gobject.Value
 * 	- gstreamer.Clock
 * 	- gstreamer.Element
 * 	- gstreamer.ObjectGst
 * 	- gstreamer.Structure
 * 	- gstreamer.TagList
 * 	- gstreamer.Toc
 * structWrap:
 * 	- GError* -> ErrorG
 * 	- GValue* -> Value
 * 	- GstClock* -> Clock
 * 	- GstElement* -> Element
 * 	- GstMessage* -> Message
 * 	- GstObject* -> ObjectGst
 * 	- GstStructure* -> Structure
 * 	- GstTagList* -> TagList
 * 	- GstToc* -> Toc
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
private import glib.ErrorG;
private import gobject.Value;
private import gstreamer.Clock;
private import gstreamer.Element;
private import gstreamer.ObjectGst;
private import gstreamer.Structure;
private import gstreamer.TagList;
private import gstreamer.Toc;




/**
 * Messages are implemented as a subclass of GstMiniObject with a generic
 * GstStructure as the content. This allows for writing custom messages without
 * requiring an API change while allowing a wide range of different types
 * of messages.
 *
 * Messages are posted by objects in the pipeline and are passed to the
 * application using the GstBus.
 *
 * The basic use pattern of posting a message on a GstBus is as follows:
 *
 * $(DDOC_COMMENT example)
 *
 * A GstElement usually posts messages on the bus provided by the parent
 * container using gst_element_post_message().
 *
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
		
		return new Message(cast(GstMessage*)p );
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
		return new Message(cast(GstMessage*)p );
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
		return new Message(cast(GstMessage*)p );
	}
	
	/**
	 */
	
	/**
	 * Get the unique quark for the given message type.
	 * Params:
	 * type = the message type
	 * Returns: the quark associated with the message type
	 */
	public static GQuark typeToQuark(GstMessageType type)
	{
		// GQuark gst_message_type_to_quark (GstMessageType type);
		return gst_message_type_to_quark(type);
	}
	
	/**
	 * Get a printable name for the given message type. Do not modify or free.
	 * Params:
	 * type = the message type
	 * Returns: a reference to the static name of the message.
	 */
	public static string typeGetName(GstMessageType type)
	{
		// const gchar * gst_message_type_get_name (GstMessageType type);
		return Str.toString(gst_message_type_get_name(type));
	}
	
	/**
	 * Convenience macro to increase the reference count of the message.
	 * Returns: msg (for convenience when doing assignments)
	 */
	public Message doref()
	{
		// GstMessage * gst_message_ref (GstMessage *msg);
		auto p = gst_message_ref(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
	
	/**
	 * Convenience macro to decrease the reference count of the message, possibly
	 * freeing it.
	 */
	public void unref()
	{
		// void gst_message_unref (GstMessage *msg);
		gst_message_unref(gstMessage);
	}
	
	/**
	 * Creates a copy of the message. Returns a copy of the message.
	 * Returns: a new copy of msg. MT safe. [transfer full]
	 */
	public Message copy()
	{
		// GstMessage * gst_message_copy (const GstMessage *msg);
		auto p = gst_message_copy(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
	
	/**
	 * Access the structure of the message.
	 * Returns: The structure of the message. The structure is still owned by the message, which means that you should not free it and that the pointer becomes invalid when you free the message. MT safe. [transfer none]
	 */
	public Structure getStructure()
	{
		// const GstStructure * gst_message_get_structure (GstMessage *message);
		auto p = gst_message_get_structure(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Retrieve the sequence number of a message.
	 * Messages have ever-incrementing sequence numbers, which may also be set
	 * explicitly via gst_message_set_seqnum(). Sequence numbers are typically used
	 * to indicate that a message corresponds to some other set of messages or
	 * events, for example a SEGMENT_DONE message corresponding to a SEEK event. It
	 * is considered good practice to make this correspondence when possible, though
	 * it is not required.
	 * Note that events and messages share the same sequence number incrementor;
	 * two events or messages will never have the same sequence number unless
	 * that correspondence was made explicitly.
	 * Returns: The message's sequence number. MT safe.
	 */
	public uint getSeqnum()
	{
		// guint32 gst_message_get_seqnum (GstMessage *message);
		return gst_message_get_seqnum(gstMessage);
	}
	
	/**
	 * Set the sequence number of a message.
	 * This function might be called by the creator of a message to indicate that
	 * the message relates to other messages or events. See gst_message_get_seqnum()
	 * for more information.
	 * MT safe.
	 * Params:
	 * seqnum = A sequence number.
	 */
	public void setSeqnum(uint seqnum)
	{
		// void gst_message_set_seqnum (GstMessage *message,  guint32 seqnum);
		gst_message_set_seqnum(gstMessage, seqnum);
	}
	
	/**
	 * Checks if message has the given name. This function is usually used to
	 * check the name of a custom message.
	 * Params:
	 * name = name to check
	 * Returns: TRUE if name matches the name of the message structure.
	 */
	public int hasName(string name)
	{
		// gboolean gst_message_has_name (GstMessage *message,  const gchar *name);
		return gst_message_has_name(gstMessage, Str.toStringz(name));
	}
	
	/**
	 * Modifies a pointer to a GstMessage to point to a different GstMessage. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * message is unreffed, the new one is reffed).
	 * Either new_message or the GstMessage pointed to by old_message may be NULL.
	 * Params:
	 * oldMessage = pointer to a pointer to a GstMessage
	 * to be replaced. [inout][transfer full]
	 * newMessage = pointer to a GstMessage that will
	 * replace the message pointed to by old_message. [allow-none][transfer none]
	 * Returns: TRUE if new_message was different from old_message
	 */
	public static int replace(ref Message oldMessage, Message newMessage)
	{
		// gboolean gst_message_replace (GstMessage **old_message,  GstMessage *new_message);
		GstMessage* outoldMessage = (oldMessage is null) ? null : oldMessage.getMessageStruct();
		
		auto p = gst_message_replace(&outoldMessage, (newMessage is null) ? null : newMessage.getMessageStruct());
		
		oldMessage = ObjectG.getDObject!(Message)(outoldMessage);
		return p;
	}
	
	/**
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 * Params:
	 * gerror = location for the GError. [out][allow-none][transfer full]
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
	 * gerror = location for the GError. [out][allow-none][transfer full]
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
	 * Extracts the GError and debug string from the GstMessage. The values returned
	 * in the output arguments are copies; the caller must free them when done.
	 * MT safe.
	 * Params:
	 * gerror = location for the GError. [out][allow-none][transfer full]
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
	 * Create a new tag message. The message will take ownership of the tag list.
	 * The message is posted by elements that discovered a new taglist.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * tagList = the tag list for the message. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, TagList tagList)
	{
		// GstMessage * gst_message_new_tag (GstObject *src,  GstTagList *tag_list);
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
	 * MT safe.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * percent = The buffering percent
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, int percent)
	{
		// GstMessage * gst_message_new_buffering (GstObject *src,  gint percent);
		auto p = gst_message_new_buffering((src is null) ? null : src.getObjectGstStruct(), percent);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_buffering((src is null) ? null : src.getObjectGstStruct(), percent)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the buffering percent from the GstMessage. see also
	 * gst_message_new_buffering().
	 * MT safe.
	 * Params:
	 * percent = Return location for the percent. [out][allow-none]
	 */
	public void parseBuffering(out int percent)
	{
		// void gst_message_parse_buffering (GstMessage *message,  gint *percent);
		gst_message_parse_buffering(gstMessage, &percent);
	}
	
	/**
	 * Configures the buffering stats values in message.
	 * Params:
	 * mode = a buffering mode
	 * avgIn = the average input rate
	 * avgOut = the average output rate
	 * bufferingLeft = amount of buffering time left in milliseconds
	 */
	public void setBufferingStats(GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft)
	{
		// void gst_message_set_buffering_stats (GstMessage *message,  GstBufferingMode mode,  gint avg_in,  gint avg_out,  gint64 buffering_left);
		gst_message_set_buffering_stats(gstMessage, mode, avgIn, avgOut, bufferingLeft);
	}
	
	/**
	 * Extracts the buffering stats values from message.
	 * Params:
	 * mode = a buffering mode, or NULL. [out][allow-none]
	 * avgIn = the average input rate, or NULL. [out][allow-none]
	 * avgOut = the average output rate, or NULL. [out][allow-none]
	 * bufferingLeft = amount of buffering time left in
	 * milliseconds, or NULL. [out][allow-none]
	 */
	public void parseBufferingStats(out GstBufferingMode mode, out int avgIn, out int avgOut, out long bufferingLeft)
	{
		// void gst_message_parse_buffering_stats (GstMessage *message,  GstBufferingMode *mode,  gint *avg_in,  gint *avg_out,  gint64 *buffering_left);
		gst_message_parse_buffering_stats(gstMessage, &mode, &avgIn, &avgOut, &bufferingLeft);
	}
	
	/**
	 * Create a state change message. This message is posted whenever an element
	 * changed its state.
	 * Params:
	 * src = the object originating the message. [transfer none]
	 * oldstate = the previous state
	 * newstate = the new (current) state
	 * pending = the pending (target) state
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstState oldstate, GstState newstate, GstState pending)
	{
		// GstMessage * gst_message_new_state_changed (GstObject *src,  GstState oldstate,  GstState newstate,  GstState pending);
		auto p = gst_message_new_state_changed((src is null) ? null : src.getObjectGstStruct(), oldstate, newstate, pending);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_state_changed((src is null) ? null : src.getObjectGstStruct(), oldstate, newstate, pending)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the old and new states from the GstMessage.
	 * Params:
	 * oldstate = the previous state, or NULL. [out][allow-none]
	 * newstate = the new (current) state, or NULL. [out][allow-none]
	 * pending = the pending (target) state, or NULL. [out][allow-none]
	 */
	public void parseStateChanged(out GstState oldstate, out GstState newstate, out GstState pending)
	{
		// void gst_message_parse_state_changed (GstMessage *message,  GstState *oldstate,  GstState *newstate,  GstState *pending);
		gst_message_parse_state_changed(gstMessage, &oldstate, &newstate, &pending);
	}
	
	/**
	 * This message is posted by elements when they complete a part, when intermediate set
	 * to TRUE, or a complete step operation.
	 * duration will contain the amount of time (in GST_FORMAT_TIME) of the stepped
	 * amount of media in format format.
	 * Params:
	 * src = The object originating the message.
	 * format = the format of amount
	 * amount = the amount of stepped data
	 * rate = the rate of the stepped amount
	 * flush = is this an flushing step
	 * intermediate = is this an intermediate step
	 * duration = the duration of the data
	 * eos = the step caused EOS
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstFormat format, ulong amount, double rate, int flush, int intermediate, ulong duration, int eos)
	{
		// GstMessage * gst_message_new_step_done (GstObject *src,  GstFormat format,  guint64 amount,  gdouble rate,  gboolean flush,  gboolean intermediate,  guint64 duration,  gboolean eos);
		auto p = gst_message_new_step_done((src is null) ? null : src.getObjectGstStruct(), format, amount, rate, flush, intermediate, duration, eos);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_step_done((src is null) ? null : src.getObjectGstStruct(), format, amount, rate, flush, intermediate, duration, eos)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extract the values the step_done message.
	 * MT safe.
	 * Params:
	 * format = result location for the format. [out][allow-none]
	 * amount = result location for the amount. [out][allow-none]
	 * rate = result location for the rate. [out][allow-none]
	 * flush = result location for the flush flag. [out][allow-none]
	 * intermediate = result location for the intermediate flag. [out][allow-none]
	 * duration = result location for the duration. [out][allow-none]
	 * eos = result location for the EOS flag. [out][allow-none]
	 */
	public void parseStepDone(out GstFormat format, out ulong amount, out double rate, out int flush, out int intermediate, out ulong duration, out int eos)
	{
		// void gst_message_parse_step_done (GstMessage *message,  GstFormat *format,  guint64 *amount,  gdouble *rate,  gboolean *flush,  gboolean *intermediate,  guint64 *duration,  gboolean *eos);
		gst_message_parse_step_done(gstMessage, &format, &amount, &rate, &flush, &intermediate, &duration, &eos);
	}
	
	/**
	 * Create a clock provide message. This message is posted whenever an
	 * element is ready to provide a clock or lost its ability to provide
	 * a clock (maybe because it paused or became EOS).
	 * This message is mainly used internally to manage the clock
	 * selection.
	 * Params:
	 * src = the object originating the message. [transfer none]
	 * clock = the clock it provides. [transfer none]
	 * ready = TRUE if the sender can provide a clock
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Clock clock, int ready)
	{
		// GstMessage * gst_message_new_clock_provide (GstObject *src,  GstClock *clock,  gboolean ready);
		auto p = gst_message_new_clock_provide((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct(), ready);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_clock_provide((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct(), ready)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the clock and ready flag from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = a pointer to hold a clock
	 * object, or NULL. [out][allow-none][transfer none]
	 * ready = a pointer to hold the ready flag, or NULL. [out][allow-none]
	 */
	public void parseClockProvide(out Clock clock, out int ready)
	{
		// void gst_message_parse_clock_provide (GstMessage *message,  GstClock **clock,  gboolean *ready);
		GstClock* outclock = null;
		
		gst_message_parse_clock_provide(gstMessage, &outclock, &ready);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Create a clock lost message. This message is posted whenever the
	 * clock is not valid anymore.
	 * If this message is posted by the pipeline, the pipeline will
	 * select a new clock again when it goes to PLAYING. It might therefore
	 * be needed to set the pipeline to PAUSED and PLAYING again.
	 * Params:
	 * src = the object originating the message. [transfer none]
	 * clock = the clock that was lost. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Clock clock)
	{
		// GstMessage * gst_message_new_clock_lost (GstObject *src,  GstClock *clock);
		auto p = gst_message_new_clock_lost((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_clock_lost((src is null) ? null : src.getObjectGstStruct(), (clock is null) ? null : clock.getClockStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the lost clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = a pointer to hold the lost clock. [out][allow-none][transfer none]
	 */
	public void parseClockLost(out Clock clock)
	{
		// void gst_message_parse_clock_lost (GstMessage *message,  GstClock **clock);
		GstClock* outclock = null;
		
		gst_message_parse_clock_lost(gstMessage, &outclock);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Extracts the new clock from the GstMessage.
	 * The clock object returned remains valid until the message is freed.
	 * MT safe.
	 * Params:
	 * clock = a pointer to hold the selected
	 * new clock. [out][allow-none][transfer none]
	 */
	public void parseNewClock(out Clock clock)
	{
		// void gst_message_parse_new_clock (GstMessage *message,  GstClock **clock);
		GstClock* outclock = null;
		
		gst_message_parse_new_clock(gstMessage, &outclock);
		
		clock = ObjectG.getDObject!(Clock)(outclock);
	}
	
	/**
	 * Create a new application-typed message. GStreamer will never create these
	 * messages; they are a gift from us to you. Enjoy.
	 * Params:
	 * src = the object originating the message. [transfer none]
	 * structure = the structure for the message. The message
	 * will take ownership of the structure. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Structure structure)
	{
		// GstMessage * gst_message_new_application (GstObject *src,  GstStructure *structure);
		auto p = gst_message_new_application((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_application((src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct())");
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
	 * structure = the structure for the message. The message
	 * will take ownership of the structure. [transfer full]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstMessageType type, ObjectGst src, Structure structure)
	{
		// GstMessage * gst_message_new_custom (GstMessageType type,  GstObject *src,  GstStructure *structure);
		auto p = gst_message_new_custom(type, (src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_custom(type, (src is null) ? null : src.getObjectGstStruct(), (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the position and format from the segment start message.
	 * MT safe.
	 * Params:
	 * format = Result location for the format, or NULL. [out]
	 * position = Result location for the position, or NULL. [out]
	 */
	public void parseSegmentStart(out GstFormat format, out long position)
	{
		// void gst_message_parse_segment_start (GstMessage *message,  GstFormat *format,  gint64 *position);
		gst_message_parse_segment_start(gstMessage, &format, &position);
	}
	
	/**
	 * Extracts the position and format from the segment start message.
	 * MT safe.
	 * Params:
	 * format = Result location for the format, or NULL. [out]
	 * position = Result location for the position, or NULL. [out]
	 */
	public void parseSegmentDone(out GstFormat format, out long position)
	{
		// void gst_message_parse_segment_done (GstMessage *message,  GstFormat *format,  gint64 *position);
		gst_message_parse_segment_done(gstMessage, &format, &position);
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
	public this (ObjectGst src, GstClockTime runningTime)
	{
		// GstMessage * gst_message_new_async_done (GstObject *src,  GstClockTime running_time);
		auto p = gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct(), runningTime);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_async_done((src is null) ? null : src.getObjectGstStruct(), runningTime)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extract the running_time from the async_done message.
	 * MT safe.
	 * Params:
	 * runningTime = Result location for the running_time or NULL. [out]
	 */
	public void parseAsyncDone(out GstClockTime runningTime)
	{
		// void gst_message_parse_async_done (GstMessage *message,  GstClockTime *running_time);
		gst_message_parse_async_done(gstMessage, &runningTime);
	}
	
	/**
	 * This message is posted by elements when they accept or activate a new step
	 * event for amount in format.
	 * active is set to FALSE when the element accepted the new step event and has
	 * queued it for execution in the streaming threads.
	 * active is set to TRUE when the element has activated the step operation and
	 * is now ready to start executing the step in the streaming thread. After this
	 * message is emited, the application can queue a new step operation in the
	 * element.
	 * Params:
	 * src = The object originating the message.
	 * active = if the step is active or queued
	 * format = the format of amount
	 * amount = the amount of stepped data
	 * rate = the rate of the stepped amount
	 * flush = is this an flushing step
	 * intermediate = is this an intermediate step
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, int active, GstFormat format, ulong amount, double rate, int flush, int intermediate)
	{
		// GstMessage * gst_message_new_step_start (GstObject *src,  gboolean active,  GstFormat format,  guint64 amount,  gdouble rate,  gboolean flush,  gboolean intermediate);
		auto p = gst_message_new_step_start((src is null) ? null : src.getObjectGstStruct(), active, format, amount, rate, flush, intermediate);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_step_start((src is null) ? null : src.getObjectGstStruct(), active, format, amount, rate, flush, intermediate)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extract the values from step_start message.
	 * MT safe.
	 * Params:
	 * active = result location for the active flag. [out][allow-none]
	 * format = result location for the format. [out][allow-none]
	 * amount = result location for the amount. [out][allow-none]
	 * rate = result location for the rate. [out][allow-none]
	 * flush = result location for the flush flag. [out][allow-none]
	 * intermediate = result location for the intermediate flag. [out][allow-none]
	 */
	public void parseStepStart(out int active, out GstFormat format, out ulong amount, out double rate, out int flush, out int intermediate)
	{
		// void gst_message_parse_step_start (GstMessage *message,  gboolean *active,  GstFormat *format,  guint64 *amount,  gdouble *rate,  gboolean *flush,  gboolean *intermediate);
		gst_message_parse_step_start(gstMessage, &active, &format, &amount, &rate, &flush, &intermediate);
	}
	
	/**
	 * A QOS message is posted on the bus whenever an element decides to drop a
	 * buffer because of QoS reasons or whenever it changes its processing strategy
	 * because of QoS reasons (quality adjustments such as processing at lower
	 * accuracy).
	 * This message can be posted by an element that performs synchronisation against the
	 * clock (live) or it could be dropped by an element that performs QoS because of QOS
	 * events received from a downstream element (!live).
	 * running_time, stream_time, timestamp, duration should be set to the
	 * respective running-time, stream-time, timestamp and duration of the (dropped)
	 * buffer that generated the QoS event. Values can be left to
	 * GST_CLOCK_TIME_NONE when unknown.
	 * Params:
	 * src = The object originating the message.
	 * live = if the message was generated by a live element
	 * runningTime = the running time of the buffer that generated the message
	 * streamTime = the stream time of the buffer that generated the message
	 * timestamp = the timestamps of the buffer that generated the message
	 * duration = the duration of the buffer that generated the message
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, int live, ulong runningTime, ulong streamTime, ulong timestamp, ulong duration)
	{
		// GstMessage * gst_message_new_qos (GstObject *src,  gboolean live,  guint64 running_time,  guint64 stream_time,  guint64 timestamp,  guint64 duration);
		auto p = gst_message_new_qos((src is null) ? null : src.getObjectGstStruct(), live, runningTime, streamTime, timestamp, duration);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_qos((src is null) ? null : src.getObjectGstStruct(), live, runningTime, streamTime, timestamp, duration)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Set the QoS values that have been calculated/analysed from the QoS data
	 * MT safe.
	 * Params:
	 * jitter = The difference of the running-time against the deadline.
	 * proportion = Long term prediction of the ideal rate relative to normal rate
	 * to get optimal quality.
	 * quality = An element dependent integer value that specifies the current
	 * quality level of the element. The default maximum quality is 1000000.
	 */
	public void setQosValues(long jitter, double proportion, int quality)
	{
		// void gst_message_set_qos_values (GstMessage *message,  gint64 jitter,  gdouble proportion,  gint quality);
		gst_message_set_qos_values(gstMessage, jitter, proportion, quality);
	}
	
	/**
	 * Set the QoS stats representing the history of the current continuous pipeline
	 * playback period.
	 * When format is GST_FORMAT_UNDEFINED both dropped and processed are
	 * invalid. Values of -1 for either processed or dropped mean unknown values.
	 * MT safe.
	 * Params:
	 * format = Units of the 'processed' and 'dropped' fields. Video sinks and video
	 * filters will use GST_FORMAT_BUFFERS (frames). Audio sinks and audio filters
	 * will likely use GST_FORMAT_DEFAULT (samples).
	 * processed = Total number of units correctly processed since the last state
	 * change to READY or a flushing operation.
	 * dropped = Total number of units dropped since the last state change to READY
	 * or a flushing operation.
	 */
	public void setQosStats(GstFormat format, ulong processed, ulong dropped)
	{
		// void gst_message_set_qos_stats (GstMessage *message,  GstFormat format,  guint64 processed,  guint64 dropped);
		gst_message_set_qos_stats(gstMessage, format, processed, dropped);
	}
	
	/**
	 * Extract the timestamps and live status from the QoS message.
	 * The returned values give the running_time, stream_time, timestamp and
	 * duration of the dropped buffer. Values of GST_CLOCK_TIME_NONE mean unknown
	 * values.
	 * MT safe.
	 * Params:
	 * live = if the message was generated by a live element. [out][allow-none]
	 * runningTime = the running time of the buffer that
	 * generated the message. [out][allow-none]
	 * streamTime = the stream time of the buffer that
	 * generated the message. [out][allow-none]
	 * timestamp = the timestamps of the buffer that
	 * generated the message. [out][allow-none]
	 * duration = the duration of the buffer that
	 * generated the message. [out][allow-none]
	 */
	public void parseQos(out int live, ulong* runningTime, out ulong streamTime, out ulong timestamp, out ulong duration)
	{
		// void gst_message_parse_qos (GstMessage *message,  gboolean *live,  guint64 *running_time,  guint64 *stream_time,  guint64 *timestamp,  guint64 *duration);
		gst_message_parse_qos(gstMessage, &live, runningTime, &streamTime, &timestamp, &duration);
	}
	
	/**
	 * Extract the QoS values that have been calculated/analysed from the QoS data
	 * MT safe.
	 * Params:
	 * jitter = The difference of the running-time against
	 * the deadline. [out][allow-none]
	 * proportion = Long term prediction of the ideal rate
	 * relative to normal rate to get optimal quality. [out][allow-none]
	 * quality = An element dependent integer value that
	 * specifies the current quality level of the element. The default
	 * maximum quality is 1000000. [out][allow-none]
	 */
	public void parseQosValues(out long jitter, out double proportion, out int quality)
	{
		// void gst_message_parse_qos_values (GstMessage *message,  gint64 *jitter,  gdouble *proportion,  gint *quality);
		gst_message_parse_qos_values(gstMessage, &jitter, &proportion, &quality);
	}
	
	/**
	 * Extract the QoS stats representing the history of the current continuous
	 * pipeline playback period.
	 * When format is GST_FORMAT_UNDEFINED both dropped and processed are
	 * invalid. Values of -1 for either processed or dropped mean unknown values.
	 * MT safe.
	 * Params:
	 * format = Units of the 'processed' and 'dropped' fields.
	 * Video sinks and video filters will use GST_FORMAT_BUFFERS (frames).
	 * Audio sinks and audio filters will likely use GST_FORMAT_DEFAULT
	 * (samples). [out][allow-none]
	 * processed = Total number of units correctly processed
	 * since the last state change to READY or a flushing operation. [out][allow-none]
	 * dropped = Total number of units dropped since the last
	 * state change to READY or a flushing operation. [out][allow-none]
	 */
	public void parseQosStats(out GstFormat format, out ulong processed, out ulong dropped)
	{
		// void gst_message_parse_qos_stats (GstMessage *message,  GstFormat *format,  guint64 *processed,  guint64 *dropped);
		gst_message_parse_qos_stats(gstMessage, &format, &processed, &dropped);
	}
	
	/**
	 * Create a new TOC message. The message is posted by elements
	 * that discovered or updated a TOC.
	 * Params:
	 * src = the object originating the message.
	 * toc = GstToc structure for the message. [transfer none]
	 * updated = whether TOC was updated or not.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, Toc toc, int updated)
	{
		// GstMessage * gst_message_new_toc (GstObject *src,  GstToc *toc,  gboolean updated);
		auto p = gst_message_new_toc((src is null) ? null : src.getObjectGstStruct(), (toc is null) ? null : toc.getTocStruct(), updated);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_toc((src is null) ? null : src.getObjectGstStruct(), (toc is null) ? null : toc.getTocStruct(), updated)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extract thef TOC from the GstMessage. The TOC returned in the
	 * output argument is a copy; the caller must free it with
	 * gst_toc_unref() when done.
	 * MT safe.
	 * Params:
	 * toc = return location for the TOC. [out][transfer full]
	 * updated = return location for the updated flag. [out]
	 */
	public void parseToc(out Toc toc, out int updated)
	{
		// void gst_message_parse_toc (GstMessage *message,  GstToc **toc,  gboolean *updated);
		GstToc* outtoc = null;
		
		gst_message_parse_toc(gstMessage, &outtoc, &updated);
		
		toc = ObjectG.getDObject!(Toc)(outtoc);
	}
	
	/**
	 * Extract the running-time from the RESET_TIME message.
	 * MT safe.
	 * Params:
	 * runningTime = Result location for the running_time or NULL. [out]
	 */
	public void parseResetTime(GstClockTime* runningTime)
	{
		// void gst_message_parse_reset_time (GstMessage *message,  GstClockTime *running_time);
		gst_message_parse_reset_time(gstMessage, runningTime);
	}
	
	/**
	 * Create a new stream_start message. This message is generated and posted in
	 * the sink elements of a GstBin. The bin will only forward the STREAM_START
	 * message to the application if all sinks have posted an STREAM_START message.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src)
	{
		// GstMessage * gst_message_new_stream_start (GstObject *src);
		auto p = gst_message_new_stream_start((src is null) ? null : src.getObjectGstStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_stream_start((src is null) ? null : src.getObjectGstStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Create a new structure change message. This message is posted when the
	 * structure of a pipeline is in the process of being changed, for example
	 * when pads are linked or unlinked.
	 * src should be the sinkpad that unlinked or linked.
	 * Params:
	 * src = The object originating the message. [transfer none]
	 * type = The change type.
	 * owner = The owner element of src. [transfer none]
	 * busy = Whether the structure change is busy.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstStructureChangeType type, Element owner, int busy)
	{
		// GstMessage * gst_message_new_structure_change (GstObject *src,  GstStructureChangeType type,  GstElement *owner,  gboolean busy);
		auto p = gst_message_new_structure_change((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct(), busy);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_structure_change((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct(), busy)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the change type and completion status from the GstMessage.
	 * MT safe.
	 * Params:
	 * type = A pointer to hold the change type. [out]
	 * owner = The owner element of the
	 * message source. [out][allow-none][transfer none]
	 * busy = a pointer to hold whether the change is in
	 * progress or has been completed. [out][allow-none]
	 */
	public void parseStructureChange(out GstStructureChangeType type, out Element owner, out int busy)
	{
		// void gst_message_parse_structure_change (GstMessage *message,  GstStructureChangeType *type,  GstElement **owner,  gboolean *busy);
		GstElement* outowner = null;
		
		gst_message_parse_structure_change(gstMessage, &type, &outowner, &busy);
		
		owner = ObjectG.getDObject!(Element)(outowner);
	}
	
	/**
	 * This message can be posted by elements when they want to have their state
	 * changed. A typical use case would be an audio server that wants to pause the
	 * pipeline because a higher priority stream is being played.
	 * Params:
	 * src = the object originating the message. [transfer none]
	 * state = The new requested state
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstState state)
	{
		// GstMessage * gst_message_new_request_state (GstObject *src,  GstState state);
		auto p = gst_message_new_request_state((src is null) ? null : src.getObjectGstStruct(), state);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_request_state((src is null) ? null : src.getObjectGstStruct(), state)");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extract the requested state from the request_state message.
	 * MT safe.
	 * Params:
	 * state = Result location for the requested state or NULL. [out]
	 */
	public void parseRequestState(out GstState state)
	{
		// void gst_message_parse_request_state (GstMessage *message,  GstState *state);
		gst_message_parse_request_state(gstMessage, &state);
	}
	
	/**
	 * Create a new stream status message. This message is posted when a streaming
	 * thread is created/destroyed or when the state changed.
	 * Params:
	 * src = The object originating the message.
	 * type = The stream status type.
	 * owner = the owner element of src. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstStreamStatusType type, Element owner)
	{
		// GstMessage * gst_message_new_stream_status (GstObject *src,  GstStreamStatusType type,  GstElement *owner);
		auto p = gst_message_new_stream_status((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_stream_status((src is null) ? null : src.getObjectGstStruct(), type, (owner is null) ? null : owner.getElementStruct())");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Extracts the stream status type and owner the GstMessage. The returned
	 * owner remains valid for as long as the reference to message is valid and
	 * should thus not be unreffed.
	 * MT safe.
	 * Params:
	 * type = A pointer to hold the status type. [out]
	 * owner = The owner element of the message source. [out][transfer none]
	 */
	public void parseStreamStatus(out GstStreamStatusType type, out Element owner)
	{
		// void gst_message_parse_stream_status (GstMessage *message,  GstStreamStatusType *type,  GstElement **owner);
		GstElement* outowner = null;
		
		gst_message_parse_stream_status(gstMessage, &type, &outowner);
		
		owner = ObjectG.getDObject!(Element)(outowner);
	}
	
	/**
	 * Configures the object handling the streaming thread. This is usually a
	 * GstTask object but other objects might be added in the future.
	 * Params:
	 * object = the object controlling the streaming
	 */
	public void setStreamStatusObject(Value object)
	{
		// void gst_message_set_stream_status_object  (GstMessage *message,  const GValue *object);
		gst_message_set_stream_status_object(gstMessage, (object is null) ? null : object.getValueStruct());
	}
	
	/**
	 * Extracts the object managing the streaming thread from message.
	 * Returns: a GValue containing the object that manages the streaming thread. This object is usually of type GstTask but other types can be added in the future. The object remains valid as long as message is valid.
	 */
	public Value getStreamStatusObject()
	{
		// const GValue * gst_message_get_stream_status_object  (GstMessage *message);
		auto p = gst_message_get_stream_status_object(gstMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Progress messages are posted by elements when they use an asynchronous task
	 * to perform actions triggered by a state change.
	 * code contains a well defined string describing the action.
	 * test should contain a user visible string detailing the current action.
	 * Params:
	 * src = The object originating the message.
	 * type = a GstProgressType
	 * code = a progress code
	 * text = free, user visible text describing the progress
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectGst src, GstProgressType type, string code, string text)
	{
		// GstMessage * gst_message_new_progress (GstObject *src,  GstProgressType type,  const gchar *code,  const gchar *text);
		auto p = gst_message_new_progress((src is null) ? null : src.getObjectGstStruct(), type, Str.toStringz(code), Str.toStringz(text));
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_message_new_progress((src is null) ? null : src.getObjectGstStruct(), type, Str.toStringz(code), Str.toStringz(text))");
		}
		this(cast(GstMessage*) p);
	}
	
	/**
	 * Parses the progress type, code and text.
	 * Params:
	 * type = location for the type. [out][allow-none]
	 * code = location for the code. [out][allow-none][transfer full]
	 * text = location for the text. [out][allow-none][transfer full]
	 */
	public void parseProgress(out GstProgressType type, out string code, out string text)
	{
		// void gst_message_parse_progress (GstMessage *message,  GstProgressType *type,  gchar **code,  gchar **text);
		char* outcode = null;
		char* outtext = null;
		
		gst_message_parse_progress(gstMessage, &type, &outcode, &outtext);
		
		code = Str.toString(outcode);
		text = Str.toString(outtext);
	}
}
