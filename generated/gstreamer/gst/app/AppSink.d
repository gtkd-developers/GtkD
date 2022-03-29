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


module gst.app.AppSink;

private import gobject.ObjectG;
private import gobject.Signals;
private import gst.app.c.functions;
public  import gst.app.c.types;
private import gst.base.BaseSink;
private import gstreamer.Caps;
private import gstreamer.MiniObject;
private import gstreamer.Sample;
private import gstreamer.URIHandlerIF;
private import gstreamer.URIHandlerT;
private import std.algorithm;


/**
 * Appsink is a sink plugin that supports many different methods for making
 * the application get a handle on the GStreamer data in a pipeline. Unlike
 * most GStreamer elements, Appsink provides external API functions.
 * 
 * appsink can be used by linking to the gstappsink.h header file to access the
 * methods or by using the appsink action signals and properties.
 * 
 * The normal way of retrieving samples from appsink is by using the
 * gst_app_sink_pull_sample() and gst_app_sink_pull_preroll() methods.
 * These methods block until a sample becomes available in the sink or when the
 * sink is shut down or reaches EOS. There are also timed variants of these
 * methods, gst_app_sink_try_pull_sample() and gst_app_sink_try_pull_preroll(),
 * which accept a timeout parameter to limit the amount of time to wait.
 * 
 * Appsink will internally use a queue to collect buffers from the streaming
 * thread. If the application is not pulling samples fast enough, this queue
 * will consume a lot of memory over time. The "max-buffers" property can be
 * used to limit the queue size. The "drop" property controls whether the
 * streaming thread blocks or if older buffers are dropped when the maximum
 * queue size is reached. Note that blocking the streaming thread can negatively
 * affect real-time performance and should be avoided.
 * 
 * If a blocking behaviour is not desirable, setting the "emit-signals" property
 * to %TRUE will make appsink emit the "new-sample" and "new-preroll" signals
 * when a sample can be pulled without blocking.
 * 
 * The "caps" property on appsink can be used to control the formats that
 * appsink can receive. This property can contain non-fixed caps, the format of
 * the pulled samples can be obtained by getting the sample caps.
 * 
 * If one of the pull-preroll or pull-sample methods return %NULL, the appsink
 * is stopped or in the EOS state. You can check for the EOS state with the
 * "eos" property or with the gst_app_sink_is_eos() method.
 * 
 * The eos signal can also be used to be informed when the EOS state is reached
 * to avoid polling.
 */
public class AppSink : BaseSink, URIHandlerIF
{
	/** the main Gtk struct */
	protected GstAppSink* gstAppSink;

	/** Get the main Gtk struct */
	public GstAppSink* getAppSinkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAppSink;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAppSink;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAppSink* gstAppSink, bool ownedRef = false)
	{
		this.gstAppSink = gstAppSink;
		super(cast(GstBaseSink*)gstAppSink, ownedRef);
	}

	// add the URIHandler capabilities
	mixin URIHandlerT!(GstAppSink);


	/** */
	public static GType getType()
	{
		return gst_app_sink_get_type();
	}

	/**
	 * Check if @appsink supports buffer lists.
	 *
	 * Returns: %TRUE if @appsink supports buffer lists.
	 *
	 * Since: 1.12
	 */
	public bool getBufferListSupport()
	{
		return gst_app_sink_get_buffer_list_support(gstAppSink) != 0;
	}

	/**
	 * Get the configured caps on @appsink.
	 *
	 * Returns: the #GstCaps accepted by the sink. gst_caps_unref() after usage.
	 */
	public Caps getCaps()
	{
		auto __p = gst_app_sink_get_caps(gstAppSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Check if @appsink will drop old buffers when the maximum amount of queued
	 * buffers is reached.
	 *
	 * Returns: %TRUE if @appsink is dropping old buffers when the queue is
	 *     filled.
	 */
	public bool getDrop()
	{
		return gst_app_sink_get_drop(gstAppSink) != 0;
	}

	/**
	 * Check if appsink will emit the "new-preroll" and "new-sample" signals.
	 *
	 * Returns: %TRUE if @appsink is emitting the "new-preroll" and "new-sample"
	 *     signals.
	 */
	public bool getEmitSignals()
	{
		return gst_app_sink_get_emit_signals(gstAppSink) != 0;
	}

	/**
	 * Get the maximum amount of buffers that can be queued in @appsink.
	 *
	 * Returns: The maximum amount of buffers that can be queued.
	 */
	public uint getMaxBuffers()
	{
		return gst_app_sink_get_max_buffers(gstAppSink);
	}

	/**
	 * Check if @appsink will wait for all buffers to be consumed when an EOS is
	 * received.
	 *
	 * Returns: %TRUE if @appsink will wait for all buffers to be consumed when an
	 *     EOS is received.
	 */
	public bool getWaitOnEos()
	{
		return gst_app_sink_get_wait_on_eos(gstAppSink) != 0;
	}

	/**
	 * Check if @appsink is EOS, which is when no more samples can be pulled because
	 * an EOS event was received.
	 *
	 * This function also returns %TRUE when the appsink is not in the PAUSED or
	 * PLAYING state.
	 *
	 * Returns: %TRUE if no more samples can be pulled and the appsink is EOS.
	 */
	public bool isEos()
	{
		return gst_app_sink_is_eos(gstAppSink) != 0;
	}

	/**
	 * This function blocks until a sample or an event becomes available or the appsink
	 * element is set to the READY/NULL state.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered buffers and events will be put in a queue so that the application
	 * can pull them at its own rate. Note that when the application does not
	 * pull samples fast enough, the queued buffers could consume a lot of memory,
	 * especially when dealing with raw video frames.
	 * Events can be pulled when the appsink is in the READY, PAUSED or PLAYING state.
	 *
	 * This function will only pull serialized events, excluding
	 * the EOS event for which this functions returns
	 * %NULL. Use gst_app_sink_is_eos() to check for the EOS condition.
	 *
	 * This method is a variant of gst_app_sink_pull_sample() that can be used
	 * to handle incoming events events as well as samples.
	 *
	 * Note that future releases may extend this API to return other object types
	 * so make sure that your code is checking for the actual type it is handling.
	 *
	 * Returns: a #GstSample, or a #GstEvent or NULL when the appsink is stopped or EOS.
	 *     Call gst_mini_object_unref() after usage.
	 *
	 * Since: 1.20
	 */
	public MiniObject pullObject()
	{
		auto __p = gst_app_sink_pull_object(gstAppSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) __p, true);
	}

	/**
	 * Get the last preroll sample in @appsink. This was the sample that caused the
	 * appsink to preroll in the PAUSED state.
	 *
	 * This function is typically used when dealing with a pipeline in the PAUSED
	 * state. Calling this function after doing a seek will give the sample right
	 * after the seek position.
	 *
	 * Calling this function will clear the internal reference to the preroll
	 * buffer.
	 *
	 * Note that the preroll sample will also be returned as the first sample
	 * when calling gst_app_sink_pull_sample().
	 *
	 * If an EOS event was received before any buffers, this function returns
	 * %NULL. Use gst_app_sink_is_eos () to check for the EOS condition.
	 *
	 * This function blocks until a preroll sample or EOS is received or the appsink
	 * element is set to the READY/NULL state.
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 *     Call gst_sample_unref() after usage.
	 */
	public Sample pullPreroll()
	{
		auto __p = gst_app_sink_pull_preroll(gstAppSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * This function blocks until a sample or EOS becomes available or the appsink
	 * element is set to the READY/NULL state.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered buffers will be put in a queue so that the application
	 * can pull samples at its own rate. Note that when the application does not
	 * pull samples fast enough, the queued buffers could consume a lot of memory,
	 * especially when dealing with raw video frames.
	 *
	 * If an EOS event was received before any buffers, this function returns
	 * %NULL. Use gst_app_sink_is_eos () to check for the EOS condition.
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 *     Call gst_sample_unref() after usage.
	 */
	public Sample pullSample()
	{
		auto __p = gst_app_sink_pull_sample(gstAppSink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * Instruct @appsink to enable or disable buffer list support.
	 *
	 * For backwards-compatibility reasons applications need to opt in
	 * to indicate that they will be able to handle buffer lists.
	 *
	 * Params:
	 *     enableLists = enable or disable buffer list support
	 *
	 * Since: 1.12
	 */
	public void setBufferListSupport(bool enableLists)
	{
		gst_app_sink_set_buffer_list_support(gstAppSink, enableLists);
	}

	/**
	 * Set callbacks which will be executed for each new preroll, new sample and eos.
	 * This is an alternative to using the signals, it has lower overhead and is thus
	 * less expensive, but also less flexible.
	 *
	 * If callbacks are installed, no signals will be emitted for performance
	 * reasons.
	 *
	 * Before 1.16.3 it was not possible to change the callbacks in a thread-safe
	 * way.
	 *
	 * Params:
	 *     callbacks = the callbacks
	 *     userData = a user_data argument for the callbacks
	 *     notify = a destroy notify function
	 */
	public void setCallbacks(GstAppSinkCallbacks* callbacks, void* userData, GDestroyNotify notify)
	{
		gst_app_sink_set_callbacks(gstAppSink, callbacks, userData, notify);
	}

	/**
	 * Set the capabilities on the appsink element.  This function takes
	 * a copy of the caps structure. After calling this method, the sink will only
	 * accept caps that match @caps. If @caps is non-fixed, or incomplete,
	 * you must check the caps on the samples to get the actual used caps.
	 *
	 * Params:
	 *     caps = caps to set
	 */
	public void setCaps(Caps caps)
	{
		gst_app_sink_set_caps(gstAppSink, (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Instruct @appsink to drop old buffers when the maximum amount of queued
	 * buffers is reached.
	 *
	 * Params:
	 *     drop = the new state
	 */
	public void setDrop(bool drop)
	{
		gst_app_sink_set_drop(gstAppSink, drop);
	}

	/**
	 * Make appsink emit the "new-preroll" and "new-sample" signals. This option is
	 * by default disabled because signal emission is expensive and unneeded when
	 * the application prefers to operate in pull mode.
	 *
	 * Params:
	 *     emit = the new state
	 */
	public void setEmitSignals(bool emit)
	{
		gst_app_sink_set_emit_signals(gstAppSink, emit);
	}

	/**
	 * Set the maximum amount of buffers that can be queued in @appsink. After this
	 * amount of buffers are queued in appsink, any more buffers will block upstream
	 * elements until a sample is pulled from @appsink.
	 *
	 * Params:
	 *     max = the maximum number of buffers to queue
	 */
	public void setMaxBuffers(uint max)
	{
		gst_app_sink_set_max_buffers(gstAppSink, max);
	}

	/**
	 * Instruct @appsink to wait for all buffers to be consumed when an EOS is received.
	 *
	 * Params:
	 *     wait = the new state
	 */
	public void setWaitOnEos(bool wait)
	{
		gst_app_sink_set_wait_on_eos(gstAppSink, wait);
	}

	/**
	 * This function blocks until a sample or an event or EOS becomes available or the appsink
	 * element is set to the READY/NULL state or the timeout expires.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered buffers and events will be put in a queue so that the application
	 * can pull them at its own rate. Note that when the application does not
	 * pull samples fast enough, the queued buffers could consume a lot of memory,
	 * especially when dealing with raw video frames.
	 * Events can be pulled when the appsink is in the READY, PAUSED or PLAYING state.
	 *
	 * This function will only pull serialized events, excluding
	 * the EOS event for which this functions returns
	 * %NULL. Use gst_app_sink_is_eos() to check for the EOS condition.
	 *
	 * This method is a variant of gst_app_sink_try_pull_sample() that can be used
	 * to handle incoming events events as well as samples.
	 *
	 * Note that future releases may extend this API to return other object types
	 * so make sure that your code is checking for the actual type it is handling.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for a sample
	 *
	 * Returns: a #GstSample, or #GstEvent or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_mini_object_unref() after usage.
	 *
	 * Since: 1.20
	 */
	public MiniObject tryPullObject(GstClockTime timeout)
	{
		auto __p = gst_app_sink_try_pull_object(gstAppSink, timeout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) __p, true);
	}

	/**
	 * Get the last preroll sample in @appsink. This was the sample that caused the
	 * appsink to preroll in the PAUSED state.
	 *
	 * This function is typically used when dealing with a pipeline in the PAUSED
	 * state. Calling this function after doing a seek will give the sample right
	 * after the seek position.
	 *
	 * Calling this function will clear the internal reference to the preroll
	 * buffer.
	 *
	 * Note that the preroll sample will also be returned as the first sample
	 * when calling gst_app_sink_pull_sample().
	 *
	 * If an EOS event was received before any buffers or the timeout expires,
	 * this function returns %NULL. Use gst_app_sink_is_eos () to check for the EOS
	 * condition.
	 *
	 * This function blocks until a preroll sample or EOS is received, the appsink
	 * element is set to the READY/NULL state, or the timeout expires.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for the preroll sample
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_sample_unref() after usage.
	 *
	 * Since: 1.10
	 */
	public Sample tryPullPreroll(GstClockTime timeout)
	{
		auto __p = gst_app_sink_try_pull_preroll(gstAppSink, timeout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * This function blocks until a sample or EOS becomes available or the appsink
	 * element is set to the READY/NULL state or the timeout expires.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered buffers will be put in a queue so that the application
	 * can pull samples at its own rate. Note that when the application does not
	 * pull samples fast enough, the queued buffers could consume a lot of memory,
	 * especially when dealing with raw video frames.
	 *
	 * If an EOS event was received before any buffers or the timeout expires,
	 * this function returns %NULL. Use gst_app_sink_is_eos () to check for the EOS
	 * condition.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for a sample
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *     Call gst_sample_unref() after usage.
	 *
	 * Since: 1.10
	 */
	public Sample tryPullSample(GstClockTime timeout)
	{
		auto __p = gst_app_sink_try_pull_sample(gstAppSink, timeout);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sample)(cast(GstSample*) __p, true);
	}

	/**
	 * Signal that the end-of-stream has been reached. This signal is emitted from
	 * the streaming thread.
	 */
	gulong addOnEos(void delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "eos", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signal that a new preroll sample is available.
	 *
	 * This signal is emitted from the streaming thread and only when the
	 * "emit-signals" property is %TRUE.
	 *
	 * The new preroll sample can be retrieved with the "pull-preroll" action
	 * signal or gst_app_sink_pull_preroll() either from this signal callback
	 * or from any other thread.
	 *
	 * Note that this signal is only emitted when the "emit-signals" property is
	 * set to %TRUE, which it is not by default for performance reasons.
	 */
	gulong addOnNewPreroll(GstFlowReturn delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "new-preroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signal that a new sample is available.
	 *
	 * This signal is emitted from the streaming thread and only when the
	 * "emit-signals" property is %TRUE.
	 *
	 * The new sample can be retrieved with the "pull-sample" action
	 * signal or gst_app_sink_pull_sample() either from this signal callback
	 * or from any other thread.
	 *
	 * Note that this signal is only emitted when the "emit-signals" property is
	 * set to %TRUE, which it is not by default for performance reasons.
	 */
	gulong addOnNewSample(GstFlowReturn delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "new-sample", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signal that a new downstream serialized event is available.
	 *
	 * This signal is emitted from the streaming thread and only when the
	 * "emit-signals" property is %TRUE.
	 *
	 * The new event can be retrieved with the "try-pull-object" action
	 * signal or gst_app_sink_pull_object() either from this signal callback
	 * or from any other thread.
	 *
	 * EOS will not be notified using this signal, use #GstAppSink::eos instead.
	 * EOS cannot be pulled either, use gst_app_sink_is_eos() to check for it.
	 *
	 * Note that this signal is only emitted when the "emit-signals" property is
	 * set to %TRUE, which it is not by default for performance reasons.
	 *
	 * The callback should return %TRUE if the event has been handled, which will
	 * skip basesink handling of the event, %FALSE otherwise.
	 *
	 * Since: 1.20
	 */
	gulong addOnNewSerialized(bool delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "new-serialized-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Get the last preroll sample in @appsink. This was the sample that caused the
	 * appsink to preroll in the PAUSED state.
	 *
	 * This function is typically used when dealing with a pipeline in the PAUSED
	 * state. Calling this function after doing a seek will give the sample right
	 * after the seek position.
	 *
	 * Calling this function will clear the internal reference to the preroll
	 * buffer.
	 *
	 * Note that the preroll sample will also be returned as the first sample
	 * when calling gst_app_sink_pull_sample() or the "pull-sample" action signal.
	 *
	 * If an EOS event was received before any buffers, this function returns
	 * %NULL. Use gst_app_sink_is_eos () to check for the EOS condition.
	 *
	 * This function blocks until a preroll sample or EOS is received or the appsink
	 * element is set to the READY/NULL state.
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 */
	gulong addOnPullPreroll(Sample delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pull-preroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This function blocks until a sample or EOS becomes available or the appsink
	 * element is set to the READY/NULL state.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered samples will be put in a queue so that the application
	 * can pull samples at its own rate.
	 *
	 * Note that when the application does not pull samples fast enough, the
	 * queued samples could consume a lot of memory, especially when dealing with
	 * raw video frames. It's possible to control the behaviour of the queue with
	 * the "drop" and "max-buffers" properties.
	 *
	 * If an EOS event was received before any buffers, this function returns
	 * %NULL. Use gst_app_sink_is_eos () to check for the EOS condition.
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS.
	 */
	gulong addOnPullSample(Sample delegate(AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pull-sample", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This function blocks until a sample or an event becomes available or the appsink
	 * element is set to the READY/NULL state or the timeout expires.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered samples and events will be put in a queue so that the application
	 * can pull them at its own rate.
	 * Events can be pulled when the appsink is in the READY, PAUSED or PLAYING state.
	 *
	 * Note that when the application does not pull samples fast enough, the
	 * queued samples could consume a lot of memory, especially when dealing with
	 * raw video frames. It's possible to control the behaviour of the queue with
	 * the "drop" and "max-buffers" properties.
	 *
	 * This function will only pull serialized events, excluding
	 * the EOS event for which this functions returns
	 * %NULL. Use gst_app_sink_is_eos() to check for the EOS condition.
	 *
	 * This signal is a variant of #GstAppSink::try-pull-sample: that can be used
	 * to handle incoming events as well as samples.
	 *
	 * Note that future releases may extend this API to return other object types
	 * so make sure that your code is checking for the actual type it is handling.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for a sample
	 *
	 * Returns: a #GstSample or a #GstEvent or NULL when the appsink is stopped or EOS or the timeout expires.
	 *
	 * Since: 1.20
	 */
	gulong addOnTryPullObject(MiniObject delegate(ulong, AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "try-pull-object", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Get the last preroll sample in @appsink. This was the sample that caused the
	 * appsink to preroll in the PAUSED state.
	 *
	 * This function is typically used when dealing with a pipeline in the PAUSED
	 * state. Calling this function after doing a seek will give the sample right
	 * after the seek position.
	 *
	 * Calling this function will clear the internal reference to the preroll
	 * buffer.
	 *
	 * Note that the preroll sample will also be returned as the first sample
	 * when calling gst_app_sink_pull_sample() or the "pull-sample" action signal.
	 *
	 * If an EOS event was received before any buffers or the timeout expires,
	 * this function returns %NULL. Use gst_app_sink_is_eos () to check for the EOS
	 * condition.
	 *
	 * This function blocks until a preroll sample or EOS is received, the appsink
	 * element is set to the READY/NULL state, or the timeout expires.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for the preroll sample
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *
	 * Since: 1.10
	 */
	gulong addOnTryPullPreroll(Sample delegate(ulong, AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "try-pull-preroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This function blocks until a sample or EOS becomes available or the appsink
	 * element is set to the READY/NULL state or the timeout expires.
	 *
	 * This function will only return samples when the appsink is in the PLAYING
	 * state. All rendered samples will be put in a queue so that the application
	 * can pull samples at its own rate.
	 *
	 * Note that when the application does not pull samples fast enough, the
	 * queued samples could consume a lot of memory, especially when dealing with
	 * raw video frames. It's possible to control the behaviour of the queue with
	 * the "drop" and "max-buffers" properties.
	 *
	 * If an EOS event was received before any buffers or the timeout expires,
	 * this function returns %NULL. Use gst_app_sink_is_eos () to check
	 * for the EOS condition.
	 *
	 * Params:
	 *     timeout = the maximum amount of time to wait for a sample
	 *
	 * Returns: a #GstSample or NULL when the appsink is stopped or EOS or the timeout expires.
	 *
	 * Since: 1.10
	 */
	gulong addOnTryPullSample(Sample delegate(ulong, AppSink) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "try-pull-sample", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
