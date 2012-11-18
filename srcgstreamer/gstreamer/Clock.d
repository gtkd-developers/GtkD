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
 * inFile  = GstClock.html
 * outPack = gstreamer
 * outFile = Clock
 * strct   = GstClock
 * realStrct=
 * ctorStrct=
 * clss    = Clock
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_clock_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GstClock* -> Clock
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Clock;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gstreamer.ObjectGst;

/**
 * Description
 * GStreamer uses a global clock to synchronize the plugins in a pipeline.
 * Different clock implementations are possible by implementing this abstract
 * base class.
 * The GstClock returns a monotonically increasing time with the method
 * gst_clock_get_time(). Its accuracy and base time depend on the specific
 * clock implementation but time is always expressed in nanoseconds. Since the
 * baseline of the clock is undefined, the clock time returned is not
 * meaningful in itself, what matters are the deltas between two clock times.
 * The time returned by a clock is called the absolute time.
 * The pipeline uses the clock to calculate the stream time. Usually all
 * renderers synchronize to the global clock using the buffer timestamps, the
 * newsegment events and the element's base time, see GstPipeline.
 * A clock implementation can support periodic and single shot clock
 * notifications both synchronous and asynchronous.
 * One first needs to create a GstClockID for the periodic or single shot
 * notification using gst_clock_new_single_shot_id() or
 * gst_clock_new_periodic_id().
 * To perform a blocking wait for the specific time of the GstClockID use the
 * gst_clock_id_wait(). To receive a callback when the specific time is reached
 * in the clock use gst_clock_id_wait_async(). Both these calls can be
 * interrupted with the gst_clock_id_unschedule() call. If the blocking wait is
 * unscheduled a return value of GST_CLOCK_UNSCHEDULED is returned.
 * Periodic callbacks scheduled async will be repeadedly called automatically
 * until it is unscheduled. To schedule a sync periodic callback,
 * gst_clock_id_wait() should be called repeadedly.
 * The async callbacks can happen from any thread, either provided by the core
 * or from a streaming thread. The application should be prepared for this.
 * A GstClockID that has been unscheduled cannot be used again for any wait
 * operation, a new GstClockID should be created and the old unscheduled one
 * should be destroyed wirth gst_clock_id_unref().
 * It is possible to perform a blocking wait on the same GstClockID from
 * multiple threads. However, registering the same GstClockID for multiple
 * async notifications is not possible, the callback will only be called for
 * the thread registering the entry last.
 * None of the wait operations unref the GstClockID, the owner is responsible
 * for unreffing the ids itself. This holds for both periodic and single shot
 * notifications. The reason being that the owner of the GstClockID has to
 * keep a handle to the GstClockID to unblock the wait on FLUSHING events or
 * state changes and if the entry would be unreffed automatically, the handle
 * might become invalid without any notification.
 * These clock operations do not operate on the stream time, so the callbacks
 * will also occur when not in PLAYING state as if the clock just keeps on
 * running. Some clocks however do not progress when the element that provided
 * the clock is not PLAYING.
 * When a clock has the GST_CLOCK_FLAG_CAN_SET_MASTER flag set, it can be
 * slaved to another GstClock with the gst_clock_set_master(). The clock will
 * then automatically be synchronized to this master clock by repeadedly
 * sampling the master clock and the slave clock and recalibrating the slave
 * clock with gst_clock_set_calibration(). This feature is mostly useful for
 * plugins that have an internal clock but must operate with another clock
 * selected by the GstPipeline. They can track the offset and rate difference
 * of their internal clock relative to the master clock by using the
 * gst_clock_get_calibration() function.
 * The master/slave synchronisation can be tuned with the "timeout", "window-size"
 * and "window-threshold" properties. The "timeout" property defines the interval
 * to sample the master clock and run the calibration functions.
 * "window-size" defines the number of samples to use when calibrating and
 * "window-threshold" defines the minimum number of samples before the
 * calibration is performed.
 * Last reviewed on 2006-08-11 (0.10.10)
 */
public class Clock : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstClock* gstClock;
	
	
	public GstClock* getClockStruct()
	{
		return gstClock;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstClock;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstClock* gstClock)
	{
		super(cast(GstObject*)gstClock);
		this.gstClock = gstClock;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstClock = cast(GstClock*)obj;
	}
	
	/**
	 */
	
	/**
	 * The time master of the master clock and the time slave of the slave
	 * clock are added to the list of observations. If enough observations
	 * are available, a linear regression algorithm is run on the
	 * observations and clock is recalibrated.
	 * If this functions returns TRUE, r_squared will contain the
	 * correlation coefficient of the interpollation. A value of 1.0
	 * means a perfect regression was performed. This value can
	 * be used to control the sampling frequency of the master and slave
	 * clocks.
	 * Params:
	 * slave = a time on the slave
	 * master = a time on the master
	 * rSquared = a pointer to hold the result
	 * Returns: TRUE if enough observations were added to run the regression algorithm. MT safe.
	 */
	public int addObservation(GstClockTime slave, GstClockTime master, out double rSquared)
	{
		// gboolean gst_clock_add_observation (GstClock *clock,  GstClockTime slave,  GstClockTime master,  gdouble *r_squared);
		return gst_clock_add_observation(gstClock, slave, master, &rSquared);
	}
	
	/**
	 * Set master as the master clock for clock. clock will be automatically
	 * calibrated so that gst_clock_get_time() reports the same time as the
	 * master clock.
	 * A clock provider that slaves its clock to a master can get the current
	 * calibration values with gst_clock_get_calibration().
	 * master can be NULL in which case clock will not be slaved anymore. It will
	 * however keep reporting its time adjusted with the last configured rate
	 * and time offsets.
	 * Params:
	 * master = a master GstClock
	 * Returns: TRUE if the clock is capable of being slaved to a master clock. Trying to set a master on a clock without the GST_CLOCK_FLAG_CAN_SET_MASTER flag will make this function return FALSE. MT safe.
	 */
	public int setMaster(Clock master)
	{
		// gboolean gst_clock_set_master (GstClock *clock,  GstClock *master);
		return gst_clock_set_master(gstClock, (master is null) ? null : master.getClockStruct());
	}
	
	/**
	 * Get the master clock that clock is slaved to or NULL when the clock is
	 * not slaved to any master clock.
	 * Returns: a master GstClock or NULL when this clock is not slaved to a master clock. Unref after usage. MT safe.
	 */
	public Clock getMaster()
	{
		// GstClock* gst_clock_get_master (GstClock *clock);
		auto p = gst_clock_get_master(gstClock);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Clock)(cast(GstClock*) p);
	}
	
	/**
	 * Set the accuracy of the clock. Some clocks have the possibility to operate
	 * with different accuracy at the expense of more resource usage. There is
	 * normally no need to change the default resolution of a clock. The resolution
	 * of a clock can only be changed if the clock has the
	 * GST_CLOCK_FLAG_CAN_SET_RESOLUTION flag set.
	 * Params:
	 * resolution = The resolution to set
	 * Returns: the new resolution of the clock.
	 */
	public GstClockTime setResolution(GstClockTime resolution)
	{
		// GstClockTime gst_clock_set_resolution (GstClock *clock,  GstClockTime resolution);
		return gst_clock_set_resolution(gstClock, resolution);
	}
	
	/**
	 * Get the accuracy of the clock. The accuracy of the clock is the granularity
	 * of the values returned by gst_clock_get_time().
	 * Returns: the resolution of the clock in units of GstClockTime. MT safe.
	 */
	public GstClockTime getResolution()
	{
		// GstClockTime gst_clock_get_resolution (GstClock *clock);
		return gst_clock_get_resolution(gstClock);
	}
	
	/**
	 * Gets the current time of the given clock. The time is always
	 * monotonically increasing and adjusted according to the current
	 * offset and rate.
	 * Returns: the time of the clock. Or GST_CLOCK_TIME_NONE when giving wrong input. MT safe.
	 */
	public GstClockTime getTime()
	{
		// GstClockTime gst_clock_get_time (GstClock *clock);
		return gst_clock_get_time(gstClock);
	}
	
	/**
	 * Get a GstClockID from clock to trigger a single shot
	 * notification at the requested time. The single shot id should be
	 * unreffed after usage.
	 * Params:
	 * time = the requested time
	 * Returns: A GstClockID that can be used to request the time notification. MT safe.
	 */
	public GstClockID newSingleShotId(GstClockTime time)
	{
		// GstClockID gst_clock_new_single_shot_id (GstClock *clock,  GstClockTime time);
		return gst_clock_new_single_shot_id(gstClock, time);
	}
	
	/**
	 * Get an ID from clock to trigger a periodic notification.
	 * The periodeic notifications will be start at time start_time and
	 * will then be fired with the given interval. id should be unreffed
	 * after usage.
	 * Params:
	 * startTime = the requested start time
	 * interval = the requested interval
	 * Returns: A GstClockID that can be used to request the time notification. MT safe.
	 */
	public GstClockID newPeriodicId(GstClockTime startTime, GstClockTime interval)
	{
		// GstClockID gst_clock_new_periodic_id (GstClock *clock,  GstClockTime start_time,  GstClockTime interval);
		return gst_clock_new_periodic_id(gstClock, startTime, interval);
	}
	
	/**
	 * Gets the current internal time of the given clock. The time is returned
	 * unadjusted for the offset and the rate.
	 * Returns: the internal time of the clock. Or GST_CLOCK_TIME_NONE when giving wrong input. MT safe.
	 */
	public GstClockTime getInternalTime()
	{
		// GstClockTime gst_clock_get_internal_time (GstClock *clock);
		return gst_clock_get_internal_time(gstClock);
	}
	
	/**
	 * Converts the given internal clock time to the external time, adjusting for the
	 * rate and reference time set with gst_clock_set_calibration() and making sure
	 * that the returned time is increasing. This function should be called with the
	 * clock's OBJECT_LOCK held and is mainly used by clock subclasses.
	 * This function is te reverse of gst_clock_unadjust_unlocked().
	 * Params:
	 * internal = a clock time
	 * Returns: the converted time of the clock.
	 */
	public GstClockTime adjustUnlocked(GstClockTime internal)
	{
		// GstClockTime gst_clock_adjust_unlocked (GstClock *clock,  GstClockTime internal);
		return gst_clock_adjust_unlocked(gstClock, internal);
	}
	
	/**
	 * Converts the given external clock time to the internal time of clock,
	 * using the rate and reference time set with gst_clock_set_calibration().
	 * This function should be called with the clock's OBJECT_LOCK held and
	 * is mainly used by clock subclasses.
	 * This function is te reverse of gst_clock_adjust_unlocked().
	 * Params:
	 * external = an external clock time
	 * Returns: the internal time of the clock corresponding to external. Since 0.10.13
	 */
	public GstClockTime unadjustUnlocked(GstClockTime external)
	{
		// GstClockTime gst_clock_unadjust_unlocked (GstClock *clock,  GstClockTime external);
		return gst_clock_unadjust_unlocked(gstClock, external);
	}
	
	/**
	 * Gets the internal rate and reference time of clock. See
	 * gst_clock_set_calibration() for more information.
	 * internal, external, rate_num, and rate_denom can be left NULL if the
	 * caller is not interested in the values.
	 * MT safe.
	 * Params:
	 * internal = a location to store the internal time
	 * external = a location to store the external time
	 * rateNum = a location to store the rate numerator
	 * rateDenom = a location to store the rate denominator
	 */
	public void getCalibration(out GstClockTime internal, out GstClockTime external, out GstClockTime rateNum, out GstClockTime rateDenom)
	{
		// void gst_clock_get_calibration (GstClock *clock,  GstClockTime *internal,  GstClockTime *external,  GstClockTime *rate_num,  GstClockTime *rate_denom);
		gst_clock_get_calibration(gstClock, &internal, &external, &rateNum, &rateDenom);
	}
	
	/**
	 * Adjusts the rate and time of clock. A rate of 1/1 is the normal speed of
	 * the clock. Values bigger than 1/1 make the clock go faster.
	 * internal and external are calibration parameters that arrange that
	 * gst_clock_get_time() should have been external at internal time internal.
	 * This internal time should not be in the future; that is, it should be less
	 * than the value of gst_clock_get_internal_time() when this function is called.
	 * Subsequent calls to gst_clock_get_time() will return clock times computed as
	 * Params:
	 * internal = a reference internal time
	 * external = a reference external time
	 * rateNum = the numerator of the rate of the clock relative to its
	 *  internal time
	 * rateDenom = the denominator of the rate of the clock
	 */
	public void setCalibration(GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom)
	{
		// void gst_clock_set_calibration (GstClock *clock,  GstClockTime internal,  GstClockTime external,  GstClockTime rate_num,  GstClockTime rate_denom);
		gst_clock_set_calibration(gstClock, internal, external, rateNum, rateDenom);
	}
	
	/**
	 * Get the time of the clock ID
	 * Params:
	 * id = The GstClockID to query
	 * Returns: the time of the given clock id. MT safe.
	 */
	public static GstClockTime idGetTime(GstClockID id)
	{
		// GstClockTime gst_clock_id_get_time (GstClockID id);
		return gst_clock_id_get_time(id);
	}
	
	/**
	 * Perform a blocking wait on id.
	 * id should have been created with gst_clock_new_single_shot_id()
	 * or gst_clock_new_periodic_id() and should not have been unscheduled
	 * with a call to gst_clock_id_unschedule().
	 * If the jitter argument is not NULL and this function returns GST_CLOCK_OK
	 * or GST_CLOCK_EARLY, it will contain the difference
	 * against the clock and the time of id when this method was
	 * called.
	 * Positive values indicate how late id was relative to the clock
	 * (in which case this function will return GST_CLOCK_EARLY).
	 * Negative values indicate how much time was spent waiting on the clock
	 * before this function returned.
	 * Params:
	 * id = The GstClockID to wait on
	 * jitter = A pointer that will contain the jitter, can be NULL.
	 * Returns: the result of the blocking wait. GST_CLOCK_EARLY will be returned if the current clock time is past the time of id, GST_CLOCK_OK if id was scheduled in time. GST_CLOCK_UNSCHEDULED if id was unscheduled with gst_clock_id_unschedule(). MT safe.
	 */
	public static GstClockReturn idWait(GstClockID id, ref GstClockTimeDiff jitter)
	{
		// GstClockReturn gst_clock_id_wait (GstClockID id,  GstClockTimeDiff *jitter);
		return gst_clock_id_wait(id, &jitter);
	}
	
	/**
	 * Register a callback on the given GstClockID id with the given
	 * function and user_data. When passing a GstClockID with an invalid
	 * time to this function, the callback will be called immediatly
	 * with a time set to GST_CLOCK_TIME_NONE. The callback will
	 * be called when the time of id has been reached.
	 * Params:
	 * id = a GstClockID to wait on
	 * func = The callback function
	 * userData = User data passed in the calback
	 * Returns: the result of the non blocking wait. MT safe.
	 */
	public static GstClockReturn idWaitAsync(GstClockID id, GstClockCallback func, void* userData)
	{
		// GstClockReturn gst_clock_id_wait_async (GstClockID id,  GstClockCallback func,  gpointer user_data);
		return gst_clock_id_wait_async(id, func, userData);
	}
	
	/**
	 * Cancel an outstanding request with id. This can either
	 * be an outstanding async notification or a pending sync notification.
	 * After this call, id cannot be used anymore to receive sync or
	 * async notifications, you need to create a new GstClockID.
	 * MT safe.
	 * Params:
	 * id = The id to unschedule
	 */
	public static void idUnschedule(GstClockID id)
	{
		// void gst_clock_id_unschedule (GstClockID id);
		gst_clock_id_unschedule(id);
	}
	
	/**
	 * Compares the two GstClockID instances. This function can be used
	 * as a GCompareFunc when sorting ids.
	 * Params:
	 * id1 = A GstClockID
	 * id2 = A GstClockID to compare with
	 * Returns: negative value if a < b; zero if a = b; positive value if a > b MT safe.
	 */
	public static int idCompareFunc(void* id1, void* id2)
	{
		// gint gst_clock_id_compare_func (gconstpointer id1,  gconstpointer id2);
		return gst_clock_id_compare_func(id1, id2);
	}
	
	/**
	 * Increase the refcount of given id.
	 * Params:
	 * id = The GstClockID to ref
	 * Returns: The same GstClockID with increased refcount. MT safe.
	 */
	public static GstClockID idRef(GstClockID id)
	{
		// GstClockID gst_clock_id_ref (GstClockID id);
		return gst_clock_id_ref(id);
	}
	
	/**
	 * Unref given id. When the refcount reaches 0 the
	 * GstClockID will be freed.
	 * MT safe.
	 * Params:
	 * id = The GstClockID to unref
	 */
	public static void idUnref(GstClockID id)
	{
		// void gst_clock_id_unref (GstClockID id);
		gst_clock_id_unref(id);
	}
}
