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


module gstreamer.Clock;

private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.ObjectGst;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import std.algorithm;


/**
 * GStreamer uses a global clock to synchronize the plugins in a pipeline.
 * Different clock implementations are possible by implementing this abstract
 * base class or, more conveniently, by subclassing #GstSystemClock.
 * 
 * The #GstClock returns a monotonically increasing time with the method
 * gst_clock_get_time(). Its accuracy and base time depend on the specific
 * clock implementation but time is always expressed in nanoseconds. Since the
 * baseline of the clock is undefined, the clock time returned is not
 * meaningful in itself, what matters are the deltas between two clock times.
 * The time returned by a clock is called the absolute time.
 * 
 * The pipeline uses the clock to calculate the running time. Usually all
 * renderers synchronize to the global clock using the buffer timestamps, the
 * newsegment events and the element's base time, see #GstPipeline.
 * 
 * A clock implementation can support periodic and single shot clock
 * notifications both synchronous and asynchronous.
 * 
 * One first needs to create a #GstClockID for the periodic or single shot
 * notification using gst_clock_new_single_shot_id() or
 * gst_clock_new_periodic_id().
 * 
 * To perform a blocking wait for the specific time of the #GstClockID use the
 * gst_clock_id_wait(). To receive a callback when the specific time is reached
 * in the clock use gst_clock_id_wait_async(). Both these calls can be
 * interrupted with the gst_clock_id_unschedule() call. If the blocking wait is
 * unscheduled a return value of #GST_CLOCK_UNSCHEDULED is returned.
 * 
 * Periodic callbacks scheduled async will be repeatedly called automatically
 * until it is unscheduled. To schedule a sync periodic callback,
 * gst_clock_id_wait() should be called repeatedly.
 * 
 * The async callbacks can happen from any thread, either provided by the core
 * or from a streaming thread. The application should be prepared for this.
 * 
 * A #GstClockID that has been unscheduled cannot be used again for any wait
 * operation, a new #GstClockID should be created and the old unscheduled one
 * should be destroyed with gst_clock_id_unref().
 * 
 * It is possible to perform a blocking wait on the same #GstClockID from
 * multiple threads. However, registering the same #GstClockID for multiple
 * async notifications is not possible, the callback will only be called for
 * the thread registering the entry last.
 * 
 * None of the wait operations unref the #GstClockID, the owner is responsible
 * for unreffing the ids itself. This holds for both periodic and single shot
 * notifications. The reason being that the owner of the #GstClockID has to
 * keep a handle to the #GstClockID to unblock the wait on FLUSHING events or
 * state changes and if the entry would be unreffed automatically, the handle
 * might become invalid without any notification.
 * 
 * These clock operations do not operate on the running time, so the callbacks
 * will also occur when not in PLAYING state as if the clock just keeps on
 * running. Some clocks however do not progress when the element that provided
 * the clock is not PLAYING.
 * 
 * When a clock has the #GST_CLOCK_FLAG_CAN_SET_MASTER flag set, it can be
 * slaved to another #GstClock with the gst_clock_set_master(). The clock will
 * then automatically be synchronized to this master clock by repeatedly
 * sampling the master clock and the slave clock and recalibrating the slave
 * clock with gst_clock_set_calibration(). This feature is mostly useful for
 * plugins that have an internal clock but must operate with another clock
 * selected by the #GstPipeline.  They can track the offset and rate difference
 * of their internal clock relative to the master clock by using the
 * gst_clock_get_calibration() function.
 * 
 * The master/slave synchronisation can be tuned with the #GstClock:timeout,
 * #GstClock:window-size and #GstClock:window-threshold properties.
 * The #GstClock:timeout property defines the interval to sample the master
 * clock and run the calibration functions. #GstClock:window-size defines the
 * number of samples to use when calibrating and #GstClock:window-threshold
 * defines the minimum number of samples before the calibration is performed.
 */
public class Clock : ObjectGst
{
	/** the main Gtk struct */
	protected GstClock* gstClock;

	/** Get the main Gtk struct */
	public GstClock* getClockStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstClock;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstClock;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstClock* gstClock, bool ownedRef = false)
	{
		this.gstClock = gstClock;
		super(cast(GstObject*)gstClock, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_clock_get_type();
	}

	/**
	 * Compares the two #GstClockID instances. This function can be used
	 * as a GCompareFunc when sorting ids.
	 *
	 * Params:
	 *     id1 = A #GstClockID
	 *     id2 = A #GstClockID to compare with
	 *
	 * Returns: negative value if a < b; zero if a = b; positive value if a > b
	 *
	 *     MT safe.
	 */
	public static int idCompareFunc(void* id1, void* id2)
	{
		return gst_clock_id_compare_func(id1, id2);
	}

	/**
	 * Get the time of the clock ID
	 *
	 * Params:
	 *     id = The #GstClockID to query
	 *
	 * Returns: the time of the given clock id.
	 *
	 *     MT safe.
	 */
	public static GstClockTime idGetTime(GstClockID id)
	{
		return gst_clock_id_get_time(id);
	}

	/**
	 * Increase the refcount of given @id.
	 *
	 * Params:
	 *     id = The #GstClockID to ref
	 *
	 * Returns: The same #GstClockID with increased refcount.
	 *
	 *     MT safe.
	 */
	public static GstClockID idRef(GstClockID id)
	{
		return gst_clock_id_ref(id);
	}

	/**
	 * Unref given @id. When the refcount reaches 0 the
	 * #GstClockID will be freed.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     id = The #GstClockID to unref
	 */
	public static void idUnref(GstClockID id)
	{
		gst_clock_id_unref(id);
	}

	/**
	 * Cancel an outstanding request with @id. This can either
	 * be an outstanding async notification or a pending sync notification.
	 * After this call, @id cannot be used anymore to receive sync or
	 * async notifications, you need to create a new #GstClockID.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     id = The id to unschedule
	 */
	public static void idUnschedule(GstClockID id)
	{
		gst_clock_id_unschedule(id);
	}

	/**
	 * Perform a blocking wait on @id.
	 * @id should have been created with gst_clock_new_single_shot_id()
	 * or gst_clock_new_periodic_id() and should not have been unscheduled
	 * with a call to gst_clock_id_unschedule().
	 *
	 * If the @jitter argument is not %NULL and this function returns #GST_CLOCK_OK
	 * or #GST_CLOCK_EARLY, it will contain the difference
	 * against the clock and the time of @id when this method was
	 * called.
	 * Positive values indicate how late @id was relative to the clock
	 * (in which case this function will return #GST_CLOCK_EARLY).
	 * Negative values indicate how much time was spent waiting on the clock
	 * before this function returned.
	 *
	 * Params:
	 *     id = The #GstClockID to wait on
	 *     jitter = a pointer that will contain the jitter,
	 *         can be %NULL.
	 *
	 * Returns: the result of the blocking wait. #GST_CLOCK_EARLY will be returned
	 *     if the current clock time is past the time of @id, #GST_CLOCK_OK if
	 *     @id was scheduled in time. #GST_CLOCK_UNSCHEDULED if @id was
	 *     unscheduled with gst_clock_id_unschedule().
	 *
	 *     MT safe.
	 */
	public static GstClockReturn idWait(GstClockID id, out GstClockTimeDiff jitter)
	{
		return gst_clock_id_wait(id, &jitter);
	}

	/**
	 * Register a callback on the given #GstClockID @id with the given
	 * function and user_data. When passing a #GstClockID with an invalid
	 * time to this function, the callback will be called immediately
	 * with  a time set to GST_CLOCK_TIME_NONE. The callback will
	 * be called when the time of @id has been reached.
	 *
	 * The callback @func can be invoked from any thread, either provided by the
	 * core or from a streaming thread. The application should be prepared for this.
	 *
	 * Params:
	 *     id = a #GstClockID to wait on
	 *     func = The callback function
	 *     userData = User data passed in the callback
	 *     destroyData = #GDestroyNotify for user_data
	 *
	 * Returns: the result of the non blocking wait.
	 *
	 *     MT safe.
	 */
	public static GstClockReturn idWaitAsync(GstClockID id, GstClockCallback func, void* userData, GDestroyNotify destroyData)
	{
		return gst_clock_id_wait_async(id, func, userData, destroyData);
	}

	/**
	 * The time @master of the master clock and the time @slave of the slave
	 * clock are added to the list of observations. If enough observations
	 * are available, a linear regression algorithm is run on the
	 * observations and @clock is recalibrated.
	 *
	 * If this functions returns %TRUE, @r_squared will contain the
	 * correlation coefficient of the interpolation. A value of 1.0
	 * means a perfect regression was performed. This value can
	 * be used to control the sampling frequency of the master and slave
	 * clocks.
	 *
	 * Params:
	 *     slave = a time on the slave
	 *     master = a time on the master
	 *     rSquared = a pointer to hold the result
	 *
	 * Returns: %TRUE if enough observations were added to run the
	 *     regression algorithm.
	 *
	 *     MT safe.
	 */
	public bool addObservation(GstClockTime slave, GstClockTime master, out double rSquared)
	{
		return gst_clock_add_observation(gstClock, slave, master, &rSquared) != 0;
	}

	/**
	 * Add a clock observation to the internal slaving algorithm the same as
	 * gst_clock_add_observation(), and return the result of the master clock
	 * estimation, without updating the internal calibration.
	 *
	 * The caller can then take the results and call gst_clock_set_calibration()
	 * with the values, or some modified version of them.
	 *
	 * Params:
	 *     slave = a time on the slave
	 *     master = a time on the master
	 *     rSquared = a pointer to hold the result
	 *     internal = a location to store the internal time
	 *     external = a location to store the external time
	 *     rateNum = a location to store the rate numerator
	 *     rateDenom = a location to store the rate denominator
	 *
	 * Since: 1.6
	 */
	public bool addObservationUnapplied(GstClockTime slave, GstClockTime master, out double rSquared, out GstClockTime internal, out GstClockTime external, out GstClockTime rateNum, out GstClockTime rateDenom)
	{
		return gst_clock_add_observation_unapplied(gstClock, slave, master, &rSquared, &internal, &external, &rateNum, &rateDenom) != 0;
	}

	/**
	 * Converts the given @internal clock time to the external time, adjusting for the
	 * rate and reference time set with gst_clock_set_calibration() and making sure
	 * that the returned time is increasing. This function should be called with the
	 * clock's OBJECT_LOCK held and is mainly used by clock subclasses.
	 *
	 * This function is the reverse of gst_clock_unadjust_unlocked().
	 *
	 * Params:
	 *     internal = a clock time
	 *
	 * Returns: the converted time of the clock.
	 */
	public GstClockTime adjustUnlocked(GstClockTime internal)
	{
		return gst_clock_adjust_unlocked(gstClock, internal);
	}

	/**
	 * Converts the given @internal_target clock time to the external time,
	 * using the passed calibration parameters. This function performs the
	 * same calculation as gst_clock_adjust_unlocked() when called using the
	 * current calibration parameters, but doesn't ensure a monotonically
	 * increasing result as gst_clock_adjust_unlocked() does.
	 *
	 * Note: The @clock parameter is unused and can be NULL
	 *
	 * Params:
	 *     internalTarget = a clock time
	 *     cinternal = a reference internal time
	 *     cexternal = a reference external time
	 *     cnum = the numerator of the rate of the clock relative to its
	 *         internal time
	 *     cdenom = the denominator of the rate of the clock
	 *
	 * Returns: the converted time of the clock.
	 *
	 * Since: 1.6
	 */
	public GstClockTime adjustWithCalibration(GstClockTime internalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom)
	{
		return gst_clock_adjust_with_calibration(gstClock, internalTarget, cinternal, cexternal, cnum, cdenom);
	}

	/**
	 * Gets the internal rate and reference time of @clock. See
	 * gst_clock_set_calibration() for more information.
	 *
	 * @internal, @external, @rate_num, and @rate_denom can be left %NULL if the
	 * caller is not interested in the values.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     internal = a location to store the internal time
	 *     external = a location to store the external time
	 *     rateNum = a location to store the rate numerator
	 *     rateDenom = a location to store the rate denominator
	 */
	public void getCalibration(out GstClockTime internal, out GstClockTime external, out GstClockTime rateNum, out GstClockTime rateDenom)
	{
		gst_clock_get_calibration(gstClock, &internal, &external, &rateNum, &rateDenom);
	}

	/**
	 * Gets the current internal time of the given clock. The time is returned
	 * unadjusted for the offset and the rate.
	 *
	 * Returns: the internal time of the clock. Or GST_CLOCK_TIME_NONE when
	 *     given invalid input.
	 *
	 *     MT safe.
	 */
	public GstClockTime getInternalTime()
	{
		return gst_clock_get_internal_time(gstClock);
	}

	/**
	 * Get the master clock that @clock is slaved to or %NULL when the clock is
	 * not slaved to any master clock.
	 *
	 * Returns: a master #GstClock or %NULL
	 *     when this clock is not slaved to a master clock. Unref after
	 *     usage.
	 *
	 *     MT safe.
	 */
	public Clock getMaster()
	{
		auto p = gst_clock_get_master(gstClock);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clock)(cast(GstClock*) p, true);
	}

	/**
	 * Get the accuracy of the clock. The accuracy of the clock is the granularity
	 * of the values returned by gst_clock_get_time().
	 *
	 * Returns: the resolution of the clock in units of #GstClockTime.
	 *
	 *     MT safe.
	 */
	public GstClockTime getResolution()
	{
		return gst_clock_get_resolution(gstClock);
	}

	/**
	 * Gets the current time of the given clock. The time is always
	 * monotonically increasing and adjusted according to the current
	 * offset and rate.
	 *
	 * Returns: the time of the clock. Or GST_CLOCK_TIME_NONE when
	 *     given invalid input.
	 *
	 *     MT safe.
	 */
	public GstClockTime getTime()
	{
		return gst_clock_get_time(gstClock);
	}

	/**
	 * Get the amount of time that master and slave clocks are sampled.
	 *
	 * Returns: the interval between samples.
	 */
	public GstClockTime getTimeout()
	{
		return gst_clock_get_timeout(gstClock);
	}

	/**
	 * Checks if the clock is currently synced.
	 *
	 * This returns if GST_CLOCK_FLAG_NEEDS_STARTUP_SYNC is not set on the clock.
	 *
	 * Returns: %TRUE if the clock is currently synced
	 *
	 * Since: 1.6
	 */
	public bool isSynced()
	{
		return gst_clock_is_synced(gstClock) != 0;
	}

	/**
	 * Get an ID from @clock to trigger a periodic notification.
	 * The periodic notifications will start at time @start_time and
	 * will then be fired with the given @interval. @id should be unreffed
	 * after usage.
	 *
	 * Free-function: gst_clock_id_unref
	 *
	 * Params:
	 *     startTime = the requested start time
	 *     interval = the requested interval
	 *
	 * Returns: a #GstClockID that can be used to request the
	 *     time notification.
	 *
	 *     MT safe.
	 */
	public GstClockID newPeriodicId(GstClockTime startTime, GstClockTime interval)
	{
		return gst_clock_new_periodic_id(gstClock, startTime, interval);
	}

	/**
	 * Get a #GstClockID from @clock to trigger a single shot
	 * notification at the requested time. The single shot id should be
	 * unreffed after usage.
	 *
	 * Free-function: gst_clock_id_unref
	 *
	 * Params:
	 *     time = the requested time
	 *
	 * Returns: a #GstClockID that can be used to request the
	 *     time notification.
	 *
	 *     MT safe.
	 */
	public GstClockID newSingleShotId(GstClockTime time)
	{
		return gst_clock_new_single_shot_id(gstClock, time);
	}

	/**
	 * Reinitializes the provided periodic @id to the provided start time and
	 * interval. Does not modify the reference count.
	 *
	 * Params:
	 *     id = a #GstClockID
	 *     startTime = the requested start time
	 *     interval = the requested interval
	 *
	 * Returns: %TRUE if the GstClockID could be reinitialized to the provided
	 *     @time, else %FALSE.
	 */
	public bool periodicIdReinit(GstClockID id, GstClockTime startTime, GstClockTime interval)
	{
		return gst_clock_periodic_id_reinit(gstClock, id, startTime, interval) != 0;
	}

	/**
	 * Adjusts the rate and time of @clock. A rate of 1/1 is the normal speed of
	 * the clock. Values bigger than 1/1 make the clock go faster.
	 *
	 * @internal and @external are calibration parameters that arrange that
	 * gst_clock_get_time() should have been @external at internal time @internal.
	 * This internal time should not be in the future; that is, it should be less
	 * than the value of gst_clock_get_internal_time() when this function is called.
	 *
	 * Subsequent calls to gst_clock_get_time() will return clock times computed as
	 * follows:
	 *
	 * |[
	 * time = (internal_time - internal) * rate_num / rate_denom + external
	 * ]|
	 *
	 * This formula is implemented in gst_clock_adjust_unlocked(). Of course, it
	 * tries to do the integer arithmetic as precisely as possible.
	 *
	 * Note that gst_clock_get_time() always returns increasing values so when you
	 * move the clock backwards, gst_clock_get_time() will report the previous value
	 * until the clock catches up.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     internal = a reference internal time
	 *     external = a reference external time
	 *     rateNum = the numerator of the rate of the clock relative to its
	 *         internal time
	 *     rateDenom = the denominator of the rate of the clock
	 */
	public void setCalibration(GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom)
	{
		gst_clock_set_calibration(gstClock, internal, external, rateNum, rateDenom);
	}

	/**
	 * Set @master as the master clock for @clock. @clock will be automatically
	 * calibrated so that gst_clock_get_time() reports the same time as the
	 * master clock.
	 *
	 * A clock provider that slaves its clock to a master can get the current
	 * calibration values with gst_clock_get_calibration().
	 *
	 * @master can be %NULL in which case @clock will not be slaved anymore. It will
	 * however keep reporting its time adjusted with the last configured rate
	 * and time offsets.
	 *
	 * Params:
	 *     master = a master #GstClock
	 *
	 * Returns: %TRUE if the clock is capable of being slaved to a master clock.
	 *     Trying to set a master on a clock without the
	 *     #GST_CLOCK_FLAG_CAN_SET_MASTER flag will make this function return %FALSE.
	 *
	 *     MT safe.
	 */
	public bool setMaster(Clock master)
	{
		return gst_clock_set_master(gstClock, (master is null) ? null : master.getClockStruct()) != 0;
	}

	/**
	 * Set the accuracy of the clock. Some clocks have the possibility to operate
	 * with different accuracy at the expense of more resource usage. There is
	 * normally no need to change the default resolution of a clock. The resolution
	 * of a clock can only be changed if the clock has the
	 * #GST_CLOCK_FLAG_CAN_SET_RESOLUTION flag set.
	 *
	 * Params:
	 *     resolution = The resolution to set
	 *
	 * Returns: the new resolution of the clock.
	 */
	public GstClockTime setResolution(GstClockTime resolution)
	{
		return gst_clock_set_resolution(gstClock, resolution);
	}

	/**
	 * Sets @clock to synced and emits the GstClock::synced signal, and wakes up any
	 * thread waiting in gst_clock_wait_for_sync().
	 *
	 * This function must only be called if GST_CLOCK_FLAG_NEEDS_STARTUP_SYNC
	 * is set on the clock, and is intended to be called by subclasses only.
	 *
	 * Params:
	 *     synced = if the clock is synced
	 *
	 * Since: 1.6
	 */
	public void setSynced(bool synced)
	{
		gst_clock_set_synced(gstClock, synced);
	}

	/**
	 * Set the amount of time, in nanoseconds, to sample master and slave
	 * clocks
	 *
	 * Params:
	 *     timeout = a timeout
	 */
	public void setTimeout(GstClockTime timeout)
	{
		gst_clock_set_timeout(gstClock, timeout);
	}

	/**
	 * Reinitializes the provided single shot @id to the provided time. Does not
	 * modify the reference count.
	 *
	 * Params:
	 *     id = a #GstClockID
	 *     time = The requested time.
	 *
	 * Returns: %TRUE if the GstClockID could be reinitialized to the provided
	 *     @time, else %FALSE.
	 */
	public bool singleShotIdReinit(GstClockID id, GstClockTime time)
	{
		return gst_clock_single_shot_id_reinit(gstClock, id, time) != 0;
	}

	/**
	 * Converts the given @external clock time to the internal time of @clock,
	 * using the rate and reference time set with gst_clock_set_calibration().
	 * This function should be called with the clock's OBJECT_LOCK held and
	 * is mainly used by clock subclasses.
	 *
	 * This function is the reverse of gst_clock_adjust_unlocked().
	 *
	 * Params:
	 *     external = an external clock time
	 *
	 * Returns: the internal time of the clock corresponding to @external.
	 */
	public GstClockTime unadjustUnlocked(GstClockTime external)
	{
		return gst_clock_unadjust_unlocked(gstClock, external);
	}

	/**
	 * Converts the given @external_target clock time to the internal time,
	 * using the passed calibration parameters. This function performs the
	 * same calculation as gst_clock_unadjust_unlocked() when called using the
	 * current calibration parameters.
	 *
	 * Note: The @clock parameter is unused and can be NULL
	 *
	 * Params:
	 *     externalTarget = a clock time
	 *     cinternal = a reference internal time
	 *     cexternal = a reference external time
	 *     cnum = the numerator of the rate of the clock relative to its
	 *         internal time
	 *     cdenom = the denominator of the rate of the clock
	 *
	 * Returns: the converted time of the clock.
	 *
	 * Since: 1.8
	 */
	public GstClockTime unadjustWithCalibration(GstClockTime externalTarget, GstClockTime cinternal, GstClockTime cexternal, GstClockTime cnum, GstClockTime cdenom)
	{
		return gst_clock_unadjust_with_calibration(gstClock, externalTarget, cinternal, cexternal, cnum, cdenom);
	}

	/**
	 * Waits until @clock is synced for reporting the current time. If @timeout
	 * is %GST_CLOCK_TIME_NONE it will wait forever, otherwise it will time out
	 * after @timeout nanoseconds.
	 *
	 * For asynchronous waiting, the GstClock::synced signal can be used.
	 *
	 * This returns immediately with TRUE if GST_CLOCK_FLAG_NEEDS_STARTUP_SYNC
	 * is not set on the clock, or if the clock is already synced.
	 *
	 * Params:
	 *     timeout = timeout for waiting or %GST_CLOCK_TIME_NONE
	 *
	 * Returns: %TRUE if waiting was successful, or %FALSE on timeout
	 *
	 * Since: 1.6
	 */
	public bool waitForSync(GstClockTime timeout)
	{
		return gst_clock_wait_for_sync(gstClock, timeout) != 0;
	}

	/**
	 * Signaled on clocks with GST_CLOCK_FLAG_NEEDS_STARTUP_SYNC set once
	 * the clock is synchronized, or when it completely lost synchronization.
	 * This signal will not be emitted on clocks without the flag.
	 *
	 * This signal will be emitted from an arbitrary thread, most likely not
	 * the application's main thread.
	 *
	 * Params:
	 *     synced = if the clock is synced now
	 *
	 * Since: 1.6
	 */
	gulong addOnSynced(void delegate(bool, Clock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "synced", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
