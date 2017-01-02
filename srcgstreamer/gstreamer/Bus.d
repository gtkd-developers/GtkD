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


module gstreamer.Bus;

private import glib.ConstructionException;
private import glib.Source;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.Message;
private import gstreamer.ObjectGst;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * The #GstBus is an object responsible for delivering #GstMessage packets in
 * a first-in first-out way from the streaming threads (see #GstTask) to the
 * application.
 * 
 * Since the application typically only wants to deal with delivery of these
 * messages from one thread, the GstBus will marshall the messages between
 * different threads. This is important since the actual streaming of media
 * is done in another thread than the application.
 * 
 * The GstBus provides support for #GSource based notifications. This makes it
 * possible to handle the delivery in the glib mainloop.
 * 
 * The #GSource callback function gst_bus_async_signal_func() can be used to
 * convert all bus messages into signal emissions.
 * 
 * A message is posted on the bus with the gst_bus_post() method. With the
 * gst_bus_peek() and gst_bus_pop() methods one can look at or retrieve a
 * previously posted message.
 * 
 * The bus can be polled with the gst_bus_poll() method. This methods blocks
 * up to the specified timeout value until one of the specified messages types
 * is posted on the bus. The application can then gst_bus_pop() the messages
 * from the bus to handle them.
 * Alternatively the application can register an asynchronous bus function
 * using gst_bus_add_watch_full() or gst_bus_add_watch(). This function will
 * install a #GSource in the default glib main loop and will deliver messages
 * a short while after they have been posted. Note that the main loop should
 * be running for the asynchronous callbacks.
 * 
 * It is also possible to get messages from the bus without any thread
 * marshalling with the gst_bus_set_sync_handler() method. This makes it
 * possible to react to a message in the same thread that posted the
 * message on the bus. This should only be used if the application is able
 * to deal with messages from different threads.
 * 
 * Every #GstPipeline has one bus.
 * 
 * Note that a #GstPipeline will set its bus into flushing state when changing
 * from READY to NULL state.
 */
public class Bus : ObjectGst
{
	/** the main Gtk struct */
	protected GstBus* gstBus;

	/** Get the main Gtk struct */
	public GstBus* getBusStruct()
	{
		return gstBus;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBus;
	}

	protected override void setStruct(GObject* obj)
	{
		gstBus = cast(GstBus*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBus* gstBus, bool ownedRef = false)
	{
		this.gstBus = gstBus;
		super(cast(GstObject*)gstBus, ownedRef);
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
	
	extern(C) static int watchCallBack(GstBus* bus, GstMessage* msg, Bus bus_d )//gpointer data)
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
		gst_bus_set_sync_handler(gstBus, cast(GstBusSyncHandler)&syncHandlerCallBack, cast(void*)this, null);
	}
	
	GstBusSyncReply delegate(Message) onSyncHandlerListener;
	
	extern(C) static GstBusSyncReply syncHandlerCallBack(GstBus* bus, GstMessage* msg, Bus bus_d)
	{
		Message msg_d = new Message( msg );
		
		return bus_d.onSyncHandlerListener( msg_d );
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_bus_get_type();
	}

	/**
	 * Creates a new #GstBus instance.
	 *
	 * Return: a new #GstBus instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_bus_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstBus*) p, true);
	}

	/**
	 * Adds a bus signal watch to the default main context with the default priority
	 * (%G_PRIORITY_DEFAULT). It is also possible to use a non-default
	 * main context set up using g_main_context_push_thread_default() (before
	 * one had to create a bus watch source and attach it to the desired main
	 * context 'manually').
	 *
	 * After calling this statement, the bus will emit the "message" signal for each
	 * message posted on the bus.
	 *
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_remove_signal_watch() as many times as this
	 * function is called.
	 *
	 * MT safe.
	 */
	public void addSignalWatch()
	{
		gst_bus_add_signal_watch(gstBus);
	}

	/**
	 * Adds a bus signal watch to the default main context with the given @priority
	 * (e.g. %G_PRIORITY_DEFAULT). It is also possible to use a non-default main
	 * context set up using g_main_context_push_thread_default()
	 * (before one had to create a bus watch source and attach it to the desired
	 * main context 'manually').
	 *
	 * After calling this statement, the bus will emit the "message" signal for each
	 * message posted on the bus when the main loop is running.
	 *
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_remove_signal_watch() as many times as this
	 * function is called.
	 *
	 * There can only be a single bus watch per bus, you must remove any signal
	 * watch before you can set another type of watch.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     priority = The priority of the watch.
	 */
	public void addSignalWatchFull(int priority)
	{
		gst_bus_add_signal_watch_full(gstBus, priority);
	}

	/**
	 * Adds a bus watch to the default main context with the given @priority (e.g.
	 * %G_PRIORITY_DEFAULT). It is also possible to use a non-default  main
	 * context set up using g_main_context_push_thread_default() (before
	 * one had to create a bus watch source and attach it to the desired main
	 * context 'manually').
	 *
	 * This function is used to receive asynchronous messages in the main loop.
	 * There can only be a single bus watch per bus, you must remove it before you
	 * can set a new one.
	 *
	 * The bus watch will only work if a GLib main loop is being run.
	 *
	 * When @func is called, the message belongs to the caller; if you want to
	 * keep a copy of it, call gst_message_ref() before leaving @func.
	 *
	 * The watch can be removed using gst_bus_remove_watch() or by returning %FALSE
	 * from @func. If the watch was added to the default main context it is also
	 * possible to remove the watch using g_source_remove().
	 *
	 * MT safe.
	 *
	 * Params:
	 *     priority = The priority of the watch.
	 *     func = A function to call when a message is received.
	 *     userData = user data passed to @func.
	 *     notify = the function to call when the source is removed.
	 *
	 * Return: The event source id or 0 if @bus already got an event source.
	 */
	public uint addWatchFull(int priority, GstBusFunc func, void* userData, GDestroyNotify notify)
	{
		return gst_bus_add_watch_full(gstBus, priority, func, userData, notify);
	}

	/**
	 * A helper #GstBusFunc that can be used to convert all asynchronous messages
	 * into signals.
	 *
	 * Params:
	 *     message = the #GstMessage received
	 *     data = user data
	 *
	 * Return: %TRUE
	 */
	public bool asyncSignalFunc(Message message, void* data)
	{
		return gst_bus_async_signal_func(gstBus, (message is null) ? null : message.getMessageStruct(), data) != 0;
	}

	/**
	 * Create watch for this bus. The GSource will be dispatched whenever
	 * a message is on the bus. After the GSource is dispatched, the
	 * message is popped off the bus and unreffed.
	 *
	 * Return: a #GSource that can be added to a mainloop.
	 */
	public Source createWatch()
	{
		auto p = gst_bus_create_watch(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p, true);
	}

	/**
	 * Instructs GStreamer to stop emitting the "sync-message" signal for this bus.
	 * See gst_bus_enable_sync_message_emission() for more information.
	 *
	 * In the event that multiple pieces of code have called
	 * gst_bus_enable_sync_message_emission(), the sync-message emissions will only
	 * be stopped after all calls to gst_bus_enable_sync_message_emission() were
	 * "cancelled" by calling this function. In this way the semantics are exactly
	 * the same as gst_object_ref() that which calls enable should also call
	 * disable.
	 *
	 * MT safe.
	 */
	public void disableSyncMessageEmission()
	{
		gst_bus_disable_sync_message_emission(gstBus);
	}

	/**
	 * Instructs GStreamer to emit the "sync-message" signal after running the bus's
	 * sync handler. This function is here so that code can ensure that they can
	 * synchronously receive messages without having to affect what the bin's sync
	 * handler is.
	 *
	 * This function may be called multiple times. To clean up, the caller is
	 * responsible for calling gst_bus_disable_sync_message_emission() as many times
	 * as this function is called.
	 *
	 * While this function looks similar to gst_bus_add_signal_watch(), it is not
	 * exactly the same -- this function enables <emphasis>synchronous</emphasis> emission of
	 * signals when messages arrive; gst_bus_add_signal_watch() adds an idle callback
	 * to pop messages off the bus <emphasis>asynchronously</emphasis>. The sync-message signal
	 * comes from the thread of whatever object posted the message; the "message"
	 * signal is marshalled to the main thread via the main loop.
	 *
	 * MT safe.
	 */
	public void enableSyncMessageEmission()
	{
		gst_bus_enable_sync_message_emission(gstBus);
	}

	/**
	 * Check if there are pending messages on the bus that
	 * should be handled.
	 *
	 * Return: %TRUE if there are messages on the bus to be handled, %FALSE
	 *     otherwise.
	 *
	 *     MT safe.
	 */
	public bool havePending()
	{
		return gst_bus_have_pending(gstBus) != 0;
	}

	/**
	 * Peek the message on the top of the bus' queue. The message will remain
	 * on the bus' message queue. A reference is returned, and needs to be unreffed
	 * by the caller.
	 *
	 * Return: the #GstMessage that is on the
	 *     bus, or %NULL if the bus is empty.
	 *
	 *     MT safe.
	 */
	public Message peek()
	{
		auto p = gst_bus_peek(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Poll the bus for messages. Will block while waiting for messages to come.
	 * You can specify a maximum time to poll with the @timeout parameter. If
	 * @timeout is negative, this function will block indefinitely.
	 *
	 * All messages not in @events will be popped off the bus and will be ignored.
	 * It is not possible to use message enums beyond #GST_MESSAGE_EXTENDED in the
	 * @events mask
	 *
	 * Because poll is implemented using the "message" signal enabled by
	 * gst_bus_add_signal_watch(), calling gst_bus_poll() will cause the "message"
	 * signal to be emitted for every message that poll sees. Thus a "message"
	 * signal handler will see the same messages that this function sees -- neither
	 * will steal messages from the other.
	 *
	 * This function will run a main loop from the default main context when
	 * polling.
	 *
	 * You should never use this function, since it is pure evil. This is
	 * especially true for GUI applications based on Gtk+ or Qt, but also for any
	 * other non-trivial application that uses the GLib main loop. As this function
	 * runs a GLib main loop, any callback attached to the default GLib main
	 * context may be invoked. This could be timeouts, GUI events, I/O events etc.;
	 * even if gst_bus_poll() is called with a 0 timeout. Any of these callbacks
	 * may do things you do not expect, e.g. destroy the main application window or
	 * some other resource; change other application state; display a dialog and
	 * run another main loop until the user clicks it away. In short, using this
	 * function may add a lot of complexity to your code through unexpected
	 * re-entrancy and unexpected changes to your application's state.
	 *
	 * For 0 timeouts use gst_bus_pop_filtered() instead of this function; for
	 * other short timeouts use gst_bus_timed_pop_filtered(); everything else is
	 * better handled by setting up an asynchronous bus watch and doing things
	 * from there.
	 *
	 * Params:
	 *     events = a mask of #GstMessageType, representing the set of message types to
	 *         poll for (note special handling of extended message types below)
	 *     timeout = the poll timeout, as a #GstClockTime, or #GST_CLOCK_TIME_NONE to poll
	 *         indefinitely.
	 *
	 * Return: the message that was received,
	 *     or %NULL if the poll timed out. The message is taken from the
	 *     bus and needs to be unreffed with gst_message_unref() after
	 *     usage.
	 */
	public Message poll(GstMessageType events, GstClockTime timeout)
	{
		auto p = gst_bus_poll(gstBus, events, timeout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Get a message from the bus.
	 *
	 * Return: the #GstMessage that is on the
	 *     bus, or %NULL if the bus is empty. The message is taken from
	 *     the bus and needs to be unreffed with gst_message_unref() after
	 *     usage.
	 *
	 *     MT safe.
	 */
	public Message pop()
	{
		auto p = gst_bus_pop(gstBus);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Get a message matching @type from the bus.  Will discard all messages on
	 * the bus that do not match @type and that have been posted before the first
	 * message that does match @type.  If there is no message matching @type on
	 * the bus, all messages will be discarded. It is not possible to use message
	 * enums beyond #GST_MESSAGE_EXTENDED in the @events mask.
	 *
	 * Params:
	 *     types = message types to take into account
	 *
	 * Return: the next #GstMessage matching
	 *     @type that is on the bus, or %NULL if the bus is empty or there
	 *     is no message matching @type. The message is taken from the bus
	 *     and needs to be unreffed with gst_message_unref() after usage.
	 *
	 *     MT safe.
	 */
	public Message popFiltered(GstMessageType types)
	{
		auto p = gst_bus_pop_filtered(gstBus, types);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Post a message on the given bus. Ownership of the message
	 * is taken by the bus.
	 *
	 * Params:
	 *     message = the #GstMessage to post
	 *
	 * Return: %TRUE if the message could be posted, %FALSE if the bus is flushing.
	 *
	 *     MT safe.
	 */
	public bool post(Message message)
	{
		return gst_bus_post(gstBus, (message is null) ? null : message.getMessageStruct()) != 0;
	}

	/**
	 * Removes a signal watch previously added with gst_bus_add_signal_watch().
	 *
	 * MT safe.
	 */
	public void removeSignalWatch()
	{
		gst_bus_remove_signal_watch(gstBus);
	}

	/**
	 * Removes an installed bus watch from @bus.
	 *
	 * Return: %TRUE on success or %FALSE if @bus has no event source.
	 *
	 * Since: 1.6
	 */
	public bool removeWatch()
	{
		return gst_bus_remove_watch(gstBus) != 0;
	}

	/**
	 * If @flushing, flush out and unref any messages queued in the bus. Releases
	 * references to the message origin objects. Will flush future messages until
	 * gst_bus_set_flushing() sets @flushing to %FALSE.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     flushing = whether or not to flush the bus
	 */
	public void setFlushing(bool flushing)
	{
		gst_bus_set_flushing(gstBus, flushing);
	}

	/**
	 * A helper GstBusSyncHandler that can be used to convert all synchronous
	 * messages into signals.
	 *
	 * Params:
	 *     message = the #GstMessage received
	 *     data = user data
	 *
	 * Return: GST_BUS_PASS
	 */
	public GstBusSyncReply syncSignalHandler(Message message, void* data)
	{
		return gst_bus_sync_signal_handler(gstBus, (message is null) ? null : message.getMessageStruct(), data);
	}

	/**
	 * Get a message from the bus, waiting up to the specified timeout.
	 *
	 * If @timeout is 0, this function behaves like gst_bus_pop(). If @timeout is
	 * #GST_CLOCK_TIME_NONE, this function will block forever until a message was
	 * posted on the bus.
	 *
	 * Params:
	 *     timeout = a timeout
	 *
	 * Return: the #GstMessage that is on the
	 *     bus after the specified timeout or %NULL if the bus is empty
	 *     after the timeout expired.  The message is taken from the bus
	 *     and needs to be unreffed with gst_message_unref() after usage.
	 *
	 *     MT safe.
	 */
	public Message timedPop(GstClockTime timeout)
	{
		auto p = gst_bus_timed_pop(gstBus, timeout);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Get a message from the bus whose type matches the message type mask @types,
	 * waiting up to the specified timeout (and discarding any messages that do not
	 * match the mask provided).
	 *
	 * If @timeout is 0, this function behaves like gst_bus_pop_filtered(). If
	 * @timeout is #GST_CLOCK_TIME_NONE, this function will block forever until a
	 * matching message was posted on the bus.
	 *
	 * Params:
	 *     timeout = a timeout in nanoseconds, or GST_CLOCK_TIME_NONE to wait forever
	 *     types = message types to take into account, GST_MESSAGE_ANY for any type
	 *
	 * Return: a #GstMessage matching the
	 *     filter in @types, or %NULL if no matching message was found on
	 *     the bus until the timeout expired. The message is taken from
	 *     the bus and needs to be unreffed with gst_message_unref() after
	 *     usage.
	 *
	 *     MT safe.
	 */
	public Message timedPopFiltered(GstClockTime timeout, GstMessageType types)
	{
		auto p = gst_bus_timed_pop_filtered(gstBus, timeout, types);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	protected class OnMessageDelegateWrapper
	{
		void delegate(Message, Bus) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Message, Bus) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMessageDelegateWrapper[] onMessageListeners;

	/**
	 * A message has been posted on the bus. This signal is emitted from a
	 * GSource added to the mainloop. this signal will only be emitted when
	 * there is a mainloop running.
	 *
	 * Params:
	 *     message = the message that has been posted asynchronously
	 */
	gulong addOnMessage(void delegate(Message, Bus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMessageListeners ~= new OnMessageDelegateWrapper(dlg, 0, connectFlags);
		onMessageListeners[onMessageListeners.length - 1].handlerId = Signals.connectData(
			this,
			"message",
			cast(GCallback)&callBackMessage,
			cast(void*)onMessageListeners[onMessageListeners.length - 1],
			cast(GClosureNotify)&callBackMessageDestroy,
			connectFlags);
		return onMessageListeners[onMessageListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMessage(GstBus* busStruct, GstMessage* message,OnMessageDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Message)(message), wrapper.outer);
	}
	
	extern(C) static void callBackMessageDestroy(OnMessageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMessage(wrapper);
	}

	protected void internalRemoveOnMessage(OnMessageDelegateWrapper source)
	{
		foreach(index, wrapper; onMessageListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMessageListeners[index] = null;
				onMessageListeners = std.algorithm.remove(onMessageListeners, index);
				break;
			}
		}
	}
	

	protected class OnSyncMessageDelegateWrapper
	{
		void delegate(Message, Bus) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Message, Bus) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSyncMessageDelegateWrapper[] onSyncMessageListeners;

	/**
	 * A message has been posted on the bus. This signal is emitted from the
	 * thread that posted the message so one has to be careful with locking.
	 *
	 * This signal will not be emitted by default, you have to call
	 * gst_bus_enable_sync_message_emission() before.
	 *
	 * Params:
	 *     message = the message that has been posted synchronously
	 */
	gulong addOnSyncMessage(void delegate(Message, Bus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSyncMessageListeners ~= new OnSyncMessageDelegateWrapper(dlg, 0, connectFlags);
		onSyncMessageListeners[onSyncMessageListeners.length - 1].handlerId = Signals.connectData(
			this,
			"sync-message",
			cast(GCallback)&callBackSyncMessage,
			cast(void*)onSyncMessageListeners[onSyncMessageListeners.length - 1],
			cast(GClosureNotify)&callBackSyncMessageDestroy,
			connectFlags);
		return onSyncMessageListeners[onSyncMessageListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSyncMessage(GstBus* busStruct, GstMessage* message,OnSyncMessageDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Message)(message), wrapper.outer);
	}
	
	extern(C) static void callBackSyncMessageDestroy(OnSyncMessageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSyncMessage(wrapper);
	}

	protected void internalRemoveOnSyncMessage(OnSyncMessageDelegateWrapper source)
	{
		foreach(index, wrapper; onSyncMessageListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSyncMessageListeners[index] = null;
				onSyncMessageListeners = std.algorithm.remove(onSyncMessageListeners, index);
				break;
			}
		}
	}
	
}
