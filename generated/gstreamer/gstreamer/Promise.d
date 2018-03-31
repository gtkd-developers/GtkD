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


module gstreamer.Promise;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * The #GstPromise object implements the container for values that may
 * be available later. i.e. a Future or a Promise in
 * <ulink url="https://en.wikipedia.org/wiki/Futures_and_promises">https://en.wikipedia.org/wiki/Futures_and_promises</ulink>
 * As with all Future/Promise-like functionality, there is the concept of the
 * producer of the value and the consumer of the value.
 * 
 * A #GstPromise is created with gst_promise_new() by the consumer and passed
 * to the producer to avoid thread safety issues with the change callback.
 * A #GstPromise can be replied to with a value (or an error) by the producer
 * with gst_promise_reply(). gst_promise_interrupt() is for the consumer to
 * indicate to the producer that the value is not needed anymore and producing
 * that value can stop.  The @GST_PROMISE_RESULT_EXPIRED state set by a call
 * to gst_promise_expire() indicates to the consumer that a value will never
 * be produced and is intended to be called by a third party that implements
 * some notion of message handling such as #GstBus.
 * A callback can also be installed at #GstPromise creation for
 * result changes with gst_promise_new_with_change_func().
 * The change callback can be used to chain #GstPromises's together as in the
 * following example.
 * |[<!-- language="C" -->
 * const GstStructure *reply;
 * GstPromise *p;
 * if (gst_promise_wait (promise) != GST_PROMISE_RESULT_REPLIED)
 * return; // interrupted or expired value
 * reply = gst_promise_get_reply (promise);
 * if (error in reply)
 * return; // propagate error
 * p = gst_promise_new_with_change_func (another_promise_change_func, user_data, notify);
 * pass p to promise-using API
 * ]|
 * 
 * Each #GstPromise starts out with a #GstPromiseResult of
 * %GST_PROMISE_RESULT_PENDING and only ever transitions once
 * into one of the other #GstPromiseResult's.
 * 
 * In order to support multi-threaded code, gst_promise_reply(),
 * gst_promise_interrupt() and gst_promise_expire() may all be from
 * different threads with some restrictions and the final result of the promise
 * is whichever call is made first.  There are two restrictions on ordering:
 * 
 * 1. That gst_promise_reply() and gst_promise_interrupt() cannot be called
 * after gst_promise_expire()
 * 2. That gst_promise_reply() and gst_promise_interrupt()
 * cannot be called twice.
 * 
 * The change function set with gst_promise_new_with_change_func() is
 * called directly from either the gst_promise_reply(),
 * gst_promise_interrupt() or gst_promise_expire() and can be called
 * from an arbitrary thread.  #GstPromise using APIs can restrict this to
 * a single thread or a subset of threads but that is entirely up to the API
 * that uses #GstPromise.
 *
 * Since: 1.14
 */
public class Promise
{
	/** the main Gtk struct */
	protected GstPromise* gstPromise;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstPromise* getPromiseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPromise;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPromise;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPromise* gstPromise, bool ownedRef = false)
	{
		this.gstPromise = gstPromise;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_promise_get_type();
	}

	/**
	 * Returns: a new #GstPromise
	 *
	 * Since: 1.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_promise_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstPromise*) p);
	}

	/**
	 * @func will be called exactly once when transitioning out of
	 * %GST_PROMISE_RESULT_PENDING into any of the other #GstPromiseResult
	 * states.
	 *
	 * Params:
	 *     func = a #GstPromiseChangeFunc to call
	 *     userData = argument to call @func with
	 *     notify = notification function that @user_data is no longer needed
	 *
	 * Returns: a new #GstPromise
	 *
	 * Since: 1.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstPromiseChangeFunc func, void* userData, GDestroyNotify notify)
	{
		auto p = gst_promise_new_with_change_func(func, userData, notify);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_change_func");
		}

		this(cast(GstPromise*) p);
	}

	/**
	 * Expire a @promise.  This will wake up any waiters with
	 * %GST_PROMISE_RESULT_EXPIRED.  Called by a message loop when the parent
	 * message is handled and/or destroyed (possibly unanswered).
	 *
	 * Since: 1.14
	 */
	public void expire()
	{
		gst_promise_expire(gstPromise);
	}

	/**
	 * Retrieve the reply set on @promise.  @promise must be in
	 * %GST_PROMISE_RESULT_REPLIED and the returned structure is owned by @promise
	 *
	 * Returns: The reply set on @promise
	 *
	 * Since: 1.14
	 */
	public Structure getReply()
	{
		auto p = gst_promise_get_reply(gstPromise);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Interrupt waiting for a @promise.  This will wake up any waiters with
	 * %GST_PROMISE_RESULT_INTERRUPTED.  Called when the consumer does not want
	 * the value produced anymore.
	 *
	 * Since: 1.14
	 */
	public void interrupt()
	{
		gst_promise_interrupt(gstPromise);
	}

	/**
	 * Set a reply on @promise.  This will wake up any waiters with
	 * %GST_PROMISE_RESULT_REPLIED.  Called by the producer of the value to
	 * indicate success (or failure).
	 *
	 * If @promise has already been interrupted by the consumer, then this reply
	 * is not visible to the consumer.
	 *
	 * Params:
	 *     s = a #GstStructure with the the reply contents
	 *
	 * Since: 1.14
	 */
	public void reply(Structure s)
	{
		gst_promise_reply(gstPromise, (s is null) ? null : s.getStructureStruct(true));
	}

	/**
	 * Wait for @promise to move out of the %GST_PROMISE_RESULT_PENDING state.
	 * If @promise is not in %GST_PROMISE_RESULT_PENDING then it will return
	 * immediately with the current result.
	 *
	 * Returns: the result of the promise
	 *
	 * Since: 1.14
	 */
	public GstPromiseResult wait()
	{
		return gst_promise_wait(gstPromise);
	}
}
