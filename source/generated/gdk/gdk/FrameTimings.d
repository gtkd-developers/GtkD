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


module gdk.FrameTimings;

private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * A `GdkFrameTimings` object holds timing information for a single frame
 * of the application’s displays.
 * 
 * To retrieve `GdkFrameTimings` objects, use [method@Gdk.FrameClock.get_timings]
 * or [method@Gdk.FrameClock.get_current_timings]. The information in
 * `GdkFrameTimings` is useful for precise synchronization of video with
 * the event or audio streams, and for measuring quality metrics for the
 * application’s display, such as latency and jitter.
 */
public class FrameTimings
{
	/** the main Gtk struct */
	protected GdkFrameTimings* gdkFrameTimings;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkFrameTimings* getFrameTimingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkFrameTimings;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkFrameTimings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkFrameTimings* gdkFrameTimings, bool ownedRef = false)
	{
		this.gdkFrameTimings = gdkFrameTimings;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK[0]) && ownedRef )
			gdk_frame_timings_unref(gdkFrameTimings);
	}


	/** */
	public static GType getType()
	{
		return gdk_frame_timings_get_type();
	}

	/**
	 * Returns whether @timings are complete.
	 *
	 * The timing information in a `GdkFrameTimings` is filled in
	 * incrementally as the frame as drawn and passed off to the
	 * window system for processing and display to the user. The
	 * accessor functions for `GdkFrameTimings` can return 0 to
	 * indicate an unavailable value for two reasons: either because
	 * the information is not yet available, or because it isn't
	 * available at all.
	 *
	 * Once this function returns %TRUE for a frame, you can be
	 * certain that no further values will become available and be
	 * stored in the `GdkFrameTimings`.
	 *
	 * Returns: %TRUE if all information that will be available
	 *     for the frame has been filled in.
	 */
	public bool getComplete()
	{
		return gdk_frame_timings_get_complete(gdkFrameTimings) != 0;
	}

	/**
	 * Gets the frame counter value of the `GdkFrameClock` when
	 * this frame was drawn.
	 *
	 * Returns: the frame counter value for this frame
	 */
	public long getFrameCounter()
	{
		return gdk_frame_timings_get_frame_counter(gdkFrameTimings);
	}

	/**
	 * Returns the frame time for the frame.
	 *
	 * This is the time value that is typically used to time
	 * animations for the frame. See [method@Gdk.FrameClock.get_frame_time].
	 *
	 * Returns: the frame time for the frame, in the timescale
	 *     of g_get_monotonic_time()
	 */
	public long getFrameTime()
	{
		return gdk_frame_timings_get_frame_time(gdkFrameTimings);
	}

	/**
	 * Gets the predicted time at which this frame will be displayed.
	 *
	 * Although no predicted time may be available, if one is available,
	 * it will be available while the frame is being generated, in contrast
	 * to [method@Gdk.FrameTimings.get_presentation_time], which is only
	 * available after the frame has been presented.
	 *
	 * In general, if you are simply animating, you should use
	 * [method@Gdk.FrameClock.get_frame_time] rather than this function,
	 * but this function is useful for applications that want exact control
	 * over latency. For example, a movie player may want this information
	 * for Audio/Video synchronization.
	 *
	 * Returns: The predicted time at which the frame will be presented,
	 *     in the timescale of g_get_monotonic_time(), or 0 if no predicted
	 *     presentation time is available.
	 */
	public long getPredictedPresentationTime()
	{
		return gdk_frame_timings_get_predicted_presentation_time(gdkFrameTimings);
	}

	/**
	 * Reurns the presentation time.
	 *
	 * This is the time at which the frame became visible to the user.
	 *
	 * Returns: the time the frame was displayed to the user, in the
	 *     timescale of g_get_monotonic_time(), or 0 if no presentation
	 *     time is available. See [method@Gdk.FrameTimings.get_complete]
	 */
	public long getPresentationTime()
	{
		return gdk_frame_timings_get_presentation_time(gdkFrameTimings);
	}

	/**
	 * Gets the natural interval between presentation times for
	 * the display that this frame was displayed on.
	 *
	 * Frame presentation usually happens during the “vertical
	 * blanking interval”.
	 *
	 * Returns: the refresh interval of the display, in microseconds,
	 *     or 0 if the refresh interval is not available.
	 *     See [method@Gdk.FrameTimings.get_complete].
	 */
	public long getRefreshInterval()
	{
		return gdk_frame_timings_get_refresh_interval(gdkFrameTimings);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @timings.
	 *
	 * Returns: @timings
	 */
	public FrameTimings ref_()
	{
		auto __p = gdk_frame_timings_ref(gdkFrameTimings);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FrameTimings)(cast(GdkFrameTimings*) __p, true);
	}

	/**
	 * Decreases the reference count of @timings.
	 *
	 * If @timings is no longer referenced, it will be freed.
	 */
	public void unref()
	{
		gdk_frame_timings_unref(gdkFrameTimings);
	}
}
