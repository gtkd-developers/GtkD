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
 * inFile  = GstBus.html
 * outPack = gstreamer
 * outFile = Bus
 * strct   = GstBus
 * realStrct=
 * ctorStrct=
 * clss    = Bus
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_bus_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_bus_add_watch
 * 	- gst_bus_set_sync_handler
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Message
 * 	- glib.Source
 * structWrap:
 * 	- GSource* -> Source
 * 	- GstBus* -> Bus
 * 	- GstMessage* -> Message
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Bus;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gstreamer.Message;
private import glib.Source;



private import gstreamer.ObjectGst;

/**
 * Description
 * The GstBus is an object responsible for delivering GstMessages in
 * a first-in first-out way from the streaming threads to the application.
 * Since the application typically only wants to deal with delivery of these
 * messages from one thread, the GstBus will marshall the messages between
 * different threads. This is important since the actual streaming of media
 * is done in another thread than the application.
 * The GstBus provides support for GSource based notifications. This makes it
 * possible to handle the delivery in the glib mainloop.
 * The GSource callback function gst_bus_async_signal_func() can be used to
 * convert all bus messages into signal emissions.
 * A message is posted on the bus with the gst_bus_post() method. With the
 * gst_bus_peek() and gst_bus_pop() methods one can look at or retrieve a
 * previously posted message.
 * The bus can be polled with the gst_bus_poll() method. This methods blocks
 * up to the specified timeout value until one of the specified messages types
 * is posted on the bus. The application can then _pop() the messages from the
 * bus to handle them.
 * Alternatively the application can register an asynchronous bus function
 * using gst_bus_add_watch_full() or gst_bus_add_watch(). This function will
 * install a GSource in the default glib main loop and will deliver messages
 * a short while after they have been posted. Note that the main loop should
 * be running for the asynchronous callbacks.
 * It is also possible to get messages from the bus without any thread
 * marshalling with the gst_bus_set_sync_handler() method. This makes it
 * possible to react to a message in the same thread that posted the
 * message on the bus. This should only be used if the application is able
 * to deal with messages from different threads.
 * Every GstPipeline has one bus.
 * Note that a GstPipeline will set its bus into flushing state when changing
 * from READY to NULL state.
 * Last reviewed on 2006-03-12 (0.10.5)
 */
public class Bus : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstBus* gstBus;
	
	
	public GstBus* getBusStruct()
	{
		return gstBus;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBus;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstBus* gstBus)
	{
		super(cast(GstObject*)gstBus);
		this.gstBus = gstBus;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstBus = cast(GstBus*)obj;
	}
	
	/**
	 * Adds a bus watch to the default main context with the default priority.
	 * This function is used to receive asynchronous messages in the main loop.
	 * The watch can be removed using g_source_remove() or by returning FALSE
	 * from func.
	 * MT safe.
	 * Params:
	 *  dlg = A function to call when a message is received.
	 * Returns:
	 *  The event source id.
	 */
	public uint addWatch( bool delegate(Message) dlg )
	{
		onWatchListener = dlg;
		return gst_bus_add_watch(gstBus, cast(GstBusFunc)&watchCallBack, cast(void*)this);
	}
	
	bool delegate(Message) onWatchListener;
	
	extern(C) static gboolean watchCallBack(GstBus* bus, GstMessage* msg, Bus bus_d )//gpointer data)
	{
		Message msg_d = new Message( msg );
		
		return bus_d.onWatchListener( msg_d );
	}
	
	/**
	 * Use this for making an XOverlay.
	 * Sets the synchronous handler on the bus. The function will be called
	 * every time a new message is posted on the bus. Note that the function
	 * will be called in the same thread context as the posting object. This
	 * function is usually only called by the creator of the bus. Applications
	 * should handle messages asynchronously using the gst_bus watch and poll
	 * functions.
	 * You cannot replace an existing sync_handler. You can pass NULL to this
	 * function, which will clear the existing handler.
	 * Params:
	 *  dlg = The handler function to install
	 */
	public void setSyncHandler( GstBusSyncReply delegate(Message) dlg )
	{
		onSyncHandlerListener = dlg;
		gst_bus_set_sync_handler(gstBus, cast(GstBusSyncHandler)&syncHandlerCallBack, cast(void*)this);
	}
	
	GstBusSyncReply delegate(Message) onSyncHandlerListener;
	
	extern(C) static GstBusSyncReply syncHandlerCallBack(GstBus * bus, GstMessage * msg, Bus bus_d )//GstPipeline * pipeline)
	//extern(C) static gboolean watchCallBack(GstBus* bus, GstMessage* msg, Bus bus_d )//gpointer data)
	{
		Message msg_d = new Message( msg );
		
		return bus_d.onSyncHandlerListener( msg_d );
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Message, Bus)[] onMessageListeners;
	/**
	 * A message has been posted on the bus. This signal is emitted from a
	 * GSource added to the mainloop. this signal will only be emitted when
	 * there is a mainloop running.
	 */
	void addOnMessage(void delegate(Message, Bus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("message" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"message",
			cast(GCallback)&callBackMessage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["message"] = 1;
		}
		onMessageListeners ~= dlg;
	}
	extern(C) static void callBackMessage(GstBus* busStruct, GstMessage* message, Bus _bus)
	{
		foreach ( void delegate(Message, Bus) dlg ; _bus.onMessageListeners )
		{
			dlg(ObjectG.getDObject!(Message)(message), _bus);
		}
	}
	
	void delegate(Message, Bus)[] onSyncMessageListeners;
	/**
	 * A message has been posted on the bus. This signal is emitted from the
	 * thread that posted the message so one has to be careful with locking.
	 * This signal will not be emitted by default, you have to set up
	 * gst_bus_sync_signal_handler() as a sync handler if you want this
	 * gst_bus_set_sync_handler (bus, gst_bus_sync_signal_handler, yourdata);
	 * See Also
	 * GstMessage, GstElement
	 */
	void addOnSyncMessage(void delegate(Message, Bus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("sync-message" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"sync-message",
			cast(GCallback)&callBackSyncMessage,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["sync-message"] = 1;
		}
		onSyncMessageListeners ~= dlg;
	}
	extern(C) static void callBackSyncMessage(GstBus* busStruct, GstMessage* message, Bus _bus)
	{
		foreach ( void delegate(Message, Bus) dlg ; _bus.onSyncMessageListeners )
		{
			dlg(ObjectG.getDObject!(Message)(message), _bus);
		}
	}
	
	
	/**
	 * Creates a new GstBus instance.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstBus* gst_bus_new (void);
		auto p = gst_bus_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_bus_new()");
		}
		this(cast(GstBus*) p);
	}
	
	/**
	 * Post a message on the given bus. Ownership of the message
	 * is taken by the bus.
	 * Params:
	 * message = The GstMessage to post
	 * Returns: TRUE if the message could be posted, FALSE if the bus is flushing. MT safe.
	 */
	public int post(Message message)
	{
		// gboolean gst_bus_post (GstBus *bus,  GstMessage *message);
		return gst_bus_post(gstBus, (message is null) ? null : message.getMessageStruct());
	}
	
	/**
	 * Check if there are pending messages on the bus that
	 * should be handled.
	 * Returns: TRUE if there are messages on the bus to be handled, FALSE otherwise. MT safe.
	 */
	public int havePending()
	{
		// gboolean gst_bus_have_pending (GstBus *bus);
		return gst_bus_have_pending(gstBus);
	}
	
	/**
	 * Peek the message on the top of the bus' queue. The message will remain
	 * on the bus' message queue. A reference is returned, and needs to be unreffed
	 * by the caller.
	 * Returns: The GstMessage that is on the bus, or NULL if the bus is empty. MT safe.
	 */
	public Message peek()
	{
		// GstMessage* gst_bus_peek (GstBus *bus);
		auto p = gst_bus_peek(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
	
	/**
	 * Get a message from the bus.
	 * Returns: The GstMessage that is on the bus, or NULL if the bus is empty. The message is taken from the bus and needs to be unreffed with gst_message_unref() after usage. MT safe.
	 */
	public Message pop()
	{
		// GstMessage* gst_bus_pop (GstBus *bus);
		auto p = gst_bus_pop(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
	
	/**
	 * Get a message from the bus, waiting up to the specified timeout.
	 * If timeout is 0, this function behaves like gst_bus_pop(). If timeout is
	 * GST_CLOCK_TIME_NONE, this function will block forever until a message was
	 * posted on the bus.
	 * Params:
	 * timeout = a timeout
	 * Returns: The GstMessage that is on the bus after the specified timeout or NULL if the bus is empty after the timeout expired. The message is taken from the bus and needs to be unreffed with gst_message_unref() after usage. MT safe. Since 0.10.12
	 */
	public Message timedPop(GstClockTime timeout)
	{
		// GstMessage* gst_bus_timed_pop (GstBus *bus,  GstClockTime timeout);
		auto p = gst_bus_timed_pop(gstBus, timeout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
	
	/**
	 * If flushing, flush out and unref any messages queued in the bus. Releases
	 * references to the message origin objects. Will flush future messages until
	 * gst_bus_set_flushing() sets flushing to FALSE.
	 * MT safe.
	 * Params:
	 * flushing = whether or not to flush the bus
	 */
	public void setFlushing(int flushing)
	{
		// void gst_bus_set_flushing (GstBus *bus,  gboolean flushing);
		gst_bus_set_flushing(gstBus, flushing);
	}
	
	/**
	 * A helper GstBusSyncHandler that can be used to convert all synchronous
	 * messages into signals.
	 * Params:
	 * message = the GstMessage received
	 * data = user data
	 * Returns: GST_BUS_PASS
	 */
	public GstBusSyncReply syncSignalHandler(Message message, void* data)
	{
		// GstBusSyncReply gst_bus_sync_signal_handler (GstBus *bus,  GstMessage *message,  gpointer data);
		return gst_bus_sync_signal_handler(gstBus, (message is null) ? null : message.getMessageStruct(), data);
	}
	
	/**
	 * Create watch for this bus. The GSource will be dispatched whenever
	 * a message is on the bus. After the GSource is dispatched, the
	 * message is popped off the bus and unreffed.
	 * Returns: A GSource that can be added to a mainloop.
	 */
	public Source createWatch()
	{
		// GSource* gst_bus_create_watch (GstBus *bus);
		auto p = gst_bus_create_watch(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Source)(cast(GSource*) p);
	}
	
	/**
	 * Adds a bus watch to the default main context with the given priority.
	 * This function is used to receive asynchronous messages in the main loop.
	 * When func is called, the message belongs to the caller; if you want to
	 * keep a copy of it, call gst_message_ref() before leaving func.
	 * The watch can be removed using g_source_remove() or by returning FALSE
	 * from func.
	 * Params:
	 * priority = The priority of the watch.
	 * func = A function to call when a message is received.
	 * userData = user data passed to func.
	 * notify = the function to call when the source is removed.
	 * Returns: The event source id. MT safe.
	 */
	public uint addWatchFull(int priority, GstBusFunc func, void* userData, GDestroyNotify notify)
	{
		// guint gst_bus_add_watch_full (GstBus *bus,  gint priority,  GstBusFunc func,  gpointer user_data,  GDestroyNotify notify);
		return gst_bus_add_watch_full(gstBus, priority, func, userData, notify);
	}
	
	/**
	 * Instructs GStreamer to stop emitting the "sync-message" signal for this bus.
	 * See gst_bus_enable_sync_message_emission() for more information.
	 * In the event that multiple pieces of code have called
	 * gst_bus_enable_sync_message_emission(), the sync-message emissions will only
	 * be stopped after all calls to gst_bus_enable_sync_message_emission() were
	 * "cancelled" by calling this function. In this way the semantics are exactly
	 * the same as gst_object_ref() that which calls enable should also call
	 * disable.
	 * MT safe.
	 */
	public void disableSyncMessageEmission()
	{
		// void gst_bus_disable_sync_message_emission  (GstBus *bus);
		gst_bus_disable_sync_message_emission(gstBus);
	}
	
	/**
	 * Instructs GStreamer to emit the "sync-message" signal after running the bus's
	 * sync handler. This function is here so that code can ensure that they can
	 * synchronously receive messages without having to affect what the bin's sync
	 * handler is.
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_disable_sync_message_emission() as many times
	 * as this function is called.
	 * While this function looks similar to gst_bus_add_signal_watch(), it is not
	 * exactly the same -- this function enables synchronous emission of
	 * signals when messages arrive; gst_bus_add_signal_watch() adds an idle callback
	 * to pop messages off the bus asynchronously. The sync-message signal
	 * comes from the thread of whatever object posted the message; the "message"
	 * signal is marshalled to the main thread via the main loop.
	 * MT safe.
	 */
	public void enableSyncMessageEmission()
	{
		// void gst_bus_enable_sync_message_emission  (GstBus *bus);
		gst_bus_enable_sync_message_emission(gstBus);
	}
	
	/**
	 * A helper GstBusFunc that can be used to convert all asynchronous messages
	 * into signals.
	 * Params:
	 * message = the GstMessage received
	 * data = user data
	 * Returns: TRUE
	 */
	public int asyncSignalFunc(Message message, void* data)
	{
		// gboolean gst_bus_async_signal_func (GstBus *bus,  GstMessage *message,  gpointer data);
		return gst_bus_async_signal_func(gstBus, (message is null) ? null : message.getMessageStruct(), data);
	}
	
	/**
	 * Adds a bus signal watch to the default main context with the default
	 * priority.
	 * After calling this statement, the bus will emit the "message" signal for each
	 * message posted on the bus.
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_remove_signal_watch() as many times as this
	 * function is called.
	 * MT safe.
	 */
	public void addSignalWatch()
	{
		// void gst_bus_add_signal_watch (GstBus *bus);
		gst_bus_add_signal_watch(gstBus);
	}
	
	/**
	 * Adds a bus signal watch to the default main context with the given priority.
	 * After calling this statement, the bus will emit the "message" signal for each
	 * message posted on the bus when the main loop is running.
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_remove_signal_watch() as many times as this
	 * function is called.
	 * MT safe.
	 * Params:
	 * priority = The priority of the watch.
	 */
	public void addSignalWatchFull(int priority)
	{
		// void gst_bus_add_signal_watch_full (GstBus *bus,  gint priority);
		gst_bus_add_signal_watch_full(gstBus, priority);
	}
	
	/**
	 * Removes a signal watch previously added with gst_bus_add_signal_watch().
	 * MT safe.
	 */
	public void removeSignalWatch()
	{
		// void gst_bus_remove_signal_watch (GstBus *bus);
		gst_bus_remove_signal_watch(gstBus);
	}
	
	/**
	 * Poll the bus for messages. Will block while waiting for messages to come.
	 * You can specify a maximum time to poll with the timeout parameter. If
	 * timeout is negative, this function will block indefinitely.
	 * All messages not in events will be popped off the bus and will be ignored.
	 * Because poll is implemented using the "message" signal enabled by
	 * gst_bus_add_signal_watch(), calling gst_bus_poll() will cause the "message"
	 * signal to be emitted for every message that poll sees. Thus a "message"
	 * signal handler will see the same messages that this function sees -- neither
	 * will steal messages from the other.
	 * This function will run a main loop from the default main context when
	 * polling.
	 * Params:
	 * events = a mask of GstMessageType, representing the set of message types to
	 * poll for.
	 * timeout = the poll timeout, as a GstClockTimeDiff, or -1 to poll indefinitely.
	 * Returns: The message that was received, or NULL if the poll timed out. The message is taken from the bus and needs to be unreffed with gst_message_unref() after usage. Signal Details The "message" signal void user_function (GstBus *bus, GstMessage *message, gpointer user_data) : Run Last / Has Details A message has been posted on the bus. This signal is emitted from a GSource added to the mainloop. this signal will only be emitted when there is a mainloop running.
	 */
	public Message poll(GstMessageType events, GstClockTimeDiff timeout)
	{
		// GstMessage* gst_bus_poll (GstBus *bus,  GstMessageType events,  GstClockTimeDiff timeout);
		auto p = gst_bus_poll(gstBus, events, timeout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p);
	}
}
