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


module gdk.FrameClock;

private import gdk.FrameTimings;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtkc.gdk;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * A #GdkFrameClock tells the application when to update and repaint a
 * window. This may be synced to the vertical refresh rate of the
 * monitor, for example. Even when the frame clock uses a simple timer
 * rather than a hardware-based vertical sync, the frame clock helps
 * because it ensures everything paints at the same time (reducing the
 * total number of frames). The frame clock can also automatically
 * stop painting when it knows the frames will not be visible, or
 * scale back animation framerates.
 * 
 * #GdkFrameClock is designed to be compatible with an OpenGL-based
 * implementation or with mozRequestAnimationFrame in Firefox,
 * for example.
 * 
 * A frame clock is idle until someone requests a frame with
 * gdk_frame_clock_request_phase(). At some later point that makes
 * sense for the synchronization being implemented, the clock will
 * process a frame and emit signals for each phase that has been
 * requested. (See the signals of the #GdkFrameClock class for
 * documentation of the phases. %GDK_FRAME_CLOCK_PHASE_UPDATE and the
 * #GdkFrameClock::update signal are most interesting for application
 * writers, and are used to update the animations, using the frame time
 * given by gdk_frame_clock_get_frame_time().
 * 
 * The frame time is reported in microseconds and generally in the same
 * timescale as g_get_monotonic_time(), however, it is not the same
 * as g_get_monotonic_time(). The frame time does not advance during
 * the time a frame is being painted, and outside of a frame, an attempt
 * is made so that all calls to gdk_frame_clock_get_frame_time() that
 * are called at a “similar” time get the same value. This means that
 * if different animations are timed by looking at the difference in
 * time between an initial value from gdk_frame_clock_get_frame_time()
 * and the value inside the #GdkFrameClock::update signal of the clock,
 * they will stay exactly synchronized.
 */
public class FrameClock : ObjectG
{
	/** the main Gtk struct */
	protected GdkFrameClock* gdkFrameClock;

	/** Get the main Gtk struct */
	public GdkFrameClock* getFrameClockStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkFrameClock;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkFrameClock;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkFrameClock = cast(GdkFrameClock*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkFrameClock* gdkFrameClock, bool ownedRef = false)
	{
		this.gdkFrameClock = gdkFrameClock;
		super(cast(GObject*)gdkFrameClock, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_frame_clock_get_type();
	}

	/**
	 * Starts updates for an animation. Until a matching call to
	 * gdk_frame_clock_end_updating() is made, the frame clock will continually
	 * request a new frame with the %GDK_FRAME_CLOCK_PHASE_UPDATE phase.
	 * This function may be called multiple times and frames will be
	 * requested until gdk_frame_clock_end_updating() is called the same
	 * number of times.
	 *
	 * Since: 3.8
	 */
	public void beginUpdating()
	{
		gdk_frame_clock_begin_updating(gdkFrameClock);
	}

	/**
	 * Stops updates for an animation. See the documentation for
	 * gdk_frame_clock_begin_updating().
	 *
	 * Since: 3.8
	 */
	public void endUpdating()
	{
		gdk_frame_clock_end_updating(gdkFrameClock);
	}

	/**
	 * Gets the frame timings for the current frame.
	 *
	 * Returns: the #GdkFrameTimings for the frame currently
	 *     being processed, or even no frame is being processed, for the
	 *     previous frame. Before any frames have been procesed, returns
	 *     %NULL.
	 *
	 * Since: 3.8
	 */
	public FrameTimings getCurrentTimings()
	{
		auto p = gdk_frame_clock_get_current_timings(gdkFrameClock);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FrameTimings)(cast(GdkFrameTimings*) p, true);
	}

	/**
	 * A #GdkFrameClock maintains a 64-bit counter that increments for
	 * each frame drawn.
	 *
	 * Returns: inside frame processing, the value of the frame counter
	 *     for the current frame. Outside of frame processing, the frame
	 *     counter for the last frame.
	 *
	 * Since: 3.8
	 */
	public long getFrameCounter()
	{
		return gdk_frame_clock_get_frame_counter(gdkFrameClock);
	}

	/**
	 * Gets the time that should currently be used for animations.  Inside
	 * the processing of a frame, it’s the time used to compute the
	 * animation position of everything in a frame. Outside of a frame, it's
	 * the time of the conceptual “previous frame,” which may be either
	 * the actual previous frame time, or if that’s too old, an updated
	 * time.
	 *
	 * Returns: a timestamp in microseconds, in the timescale of
	 *     of g_get_monotonic_time().
	 *
	 * Since: 3.8
	 */
	public long getFrameTime()
	{
		return gdk_frame_clock_get_frame_time(gdkFrameClock);
	}

	/**
	 * #GdkFrameClock internally keeps a history of #GdkFrameTimings
	 * objects for recent frames that can be retrieved with
	 * gdk_frame_clock_get_timings(). The set of stored frames
	 * is the set from the counter values given by
	 * gdk_frame_clock_get_history_start() and
	 * gdk_frame_clock_get_frame_counter(), inclusive.
	 *
	 * Returns: the frame counter value for the oldest frame
	 *     that is available in the internal frame history of the
	 *     #GdkFrameClock.
	 *
	 * Since: 3.8
	 */
	public long getHistoryStart()
	{
		return gdk_frame_clock_get_history_start(gdkFrameClock);
	}

	/**
	 * Using the frame history stored in the frame clock, finds the last
	 * known presentation time and refresh interval, and assuming that
	 * presentation times are separated by the refresh interval,
	 * predicts a presentation time that is a multiple of the refresh
	 * interval after the last presentation time, and later than @base_time.
	 *
	 * Params:
	 *     baseTime = base time for determining a presentaton time
	 *     refreshIntervalReturn = a location to store the determined refresh
	 *         interval, or %NULL. A default refresh interval of 1/60th of
	 *         a second will be stored if no history is present.
	 *     presentationTimeReturn = a location to store the next
	 *         candidate presentation time after the given base time.
	 *         0 will be will be stored if no history is present.
	 *
	 * Since: 3.8
	 */
	public void getRefreshInfo(long baseTime, long* refreshIntervalReturn, long* presentationTimeReturn)
	{
		gdk_frame_clock_get_refresh_info(gdkFrameClock, baseTime, refreshIntervalReturn, presentationTimeReturn);
	}

	/**
	 * Retrieves a #GdkFrameTimings object holding timing information
	 * for the current frame or a recent frame. The #GdkFrameTimings
	 * object may not yet be complete: see gdk_frame_timings_get_complete().
	 *
	 * Params:
	 *     frameCounter = the frame counter value identifying the frame to
	 *         be received.
	 *
	 * Returns: the #GdkFrameTimings object for the specified
	 *     frame, or %NULL if it is not available. See
	 *     gdk_frame_clock_get_history_start().
	 *
	 * Since: 3.8
	 */
	public FrameTimings getTimings(long frameCounter)
	{
		auto p = gdk_frame_clock_get_timings(gdkFrameClock, frameCounter);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(FrameTimings)(cast(GdkFrameTimings*) p, true);
	}

	/**
	 * Asks the frame clock to run a particular phase. The signal
	 * corresponding the requested phase will be emitted the next
	 * time the frame clock processes. Multiple calls to
	 * gdk_frame_clock_request_phase() will be combined together
	 * and only one frame processed. If you are displaying animated
	 * content and want to continually request the
	 * %GDK_FRAME_CLOCK_PHASE_UPDATE phase for a period of time,
	 * you should use gdk_frame_clock_begin_updating() instead, since
	 * this allows GTK+ to adjust system parameters to get maximally
	 * smooth animations.
	 *
	 * Params:
	 *     phase = the phase that is requested
	 *
	 * Since: 3.8
	 */
	public void requestPhase(GdkFrameClockPhase phase)
	{
		gdk_frame_clock_request_phase(gdkFrameClock, phase);
	}

	protected class OnAfterPaintDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onAfterPaintListeners ~= this;
		}
		
		void remove(OnAfterPaintDelegateWrapper source)
		{
			foreach(index, wrapper; onAfterPaintListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onAfterPaintListeners[index] = null;
					onAfterPaintListeners = std.algorithm.remove(onAfterPaintListeners, index);
					break;
				}
			}
		}
	}
	OnAfterPaintDelegateWrapper[] onAfterPaintListeners;

	/**
	 * This signal ends processing of the frame. Applications
	 * should generally not handle this signal.
	 */
	gulong addOnAfterPaint(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnAfterPaintDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"after-paint",
			cast(GCallback)&callBackAfterPaint,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackAfterPaintDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackAfterPaint(GdkFrameClock* frameclockStruct, OnAfterPaintDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackAfterPaintDestroy(OnAfterPaintDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnBeforePaintDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onBeforePaintListeners ~= this;
		}
		
		void remove(OnBeforePaintDelegateWrapper source)
		{
			foreach(index, wrapper; onBeforePaintListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onBeforePaintListeners[index] = null;
					onBeforePaintListeners = std.algorithm.remove(onBeforePaintListeners, index);
					break;
				}
			}
		}
	}
	OnBeforePaintDelegateWrapper[] onBeforePaintListeners;

	/**
	 * This signal begins processing of the frame. Applications
	 * should generally not handle this signal.
	 */
	gulong addOnBeforePaint(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnBeforePaintDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"before-paint",
			cast(GCallback)&callBackBeforePaint,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackBeforePaintDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackBeforePaint(GdkFrameClock* frameclockStruct, OnBeforePaintDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackBeforePaintDestroy(OnBeforePaintDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnFlushEventsDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onFlushEventsListeners ~= this;
		}
		
		void remove(OnFlushEventsDelegateWrapper source)
		{
			foreach(index, wrapper; onFlushEventsListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onFlushEventsListeners[index] = null;
					onFlushEventsListeners = std.algorithm.remove(onFlushEventsListeners, index);
					break;
				}
			}
		}
	}
	OnFlushEventsDelegateWrapper[] onFlushEventsListeners;

	/**
	 * This signal is used to flush pending motion events that
	 * are being batched up and compressed together. Applications
	 * should not handle this signal.
	 */
	gulong addOnFlushEvents(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnFlushEventsDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"flush-events",
			cast(GCallback)&callBackFlushEvents,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackFlushEventsDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackFlushEvents(GdkFrameClock* frameclockStruct, OnFlushEventsDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackFlushEventsDestroy(OnFlushEventsDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnLayoutDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onLayoutListeners ~= this;
		}
		
		void remove(OnLayoutDelegateWrapper source)
		{
			foreach(index, wrapper; onLayoutListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onLayoutListeners[index] = null;
					onLayoutListeners = std.algorithm.remove(onLayoutListeners, index);
					break;
				}
			}
		}
	}
	OnLayoutDelegateWrapper[] onLayoutListeners;

	/**
	 * This signal is emitted as the second step of toolkit and
	 * application processing of the frame. Any work to update
	 * sizes and positions of application elements should be
	 * performed. GTK+ normally handles this internally.
	 */
	gulong addOnLayout(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnLayoutDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"layout",
			cast(GCallback)&callBackLayout,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackLayoutDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackLayout(GdkFrameClock* frameclockStruct, OnLayoutDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLayoutDestroy(OnLayoutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnPaintDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onPaintListeners ~= this;
		}
		
		void remove(OnPaintDelegateWrapper source)
		{
			foreach(index, wrapper; onPaintListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onPaintListeners[index] = null;
					onPaintListeners = std.algorithm.remove(onPaintListeners, index);
					break;
				}
			}
		}
	}
	OnPaintDelegateWrapper[] onPaintListeners;

	/**
	 * This signal is emitted as the third step of toolkit and
	 * application processing of the frame. The frame is
	 * repainted. GDK normally handles this internally and
	 * produces expose events, which are turned into GTK+
	 * #GtkWidget::draw signals.
	 */
	gulong addOnPaint(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnPaintDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"paint",
			cast(GCallback)&callBackPaint,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackPaintDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackPaint(GdkFrameClock* frameclockStruct, OnPaintDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPaintDestroy(OnPaintDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnResumeEventsDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onResumeEventsListeners ~= this;
		}
		
		void remove(OnResumeEventsDelegateWrapper source)
		{
			foreach(index, wrapper; onResumeEventsListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onResumeEventsListeners[index] = null;
					onResumeEventsListeners = std.algorithm.remove(onResumeEventsListeners, index);
					break;
				}
			}
		}
	}
	OnResumeEventsDelegateWrapper[] onResumeEventsListeners;

	/**
	 * This signal is emitted after processing of the frame is
	 * finished, and is handled internally by GTK+ to resume normal
	 * event processing. Applications should not handle this signal.
	 */
	gulong addOnResumeEvents(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnResumeEventsDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"resume-events",
			cast(GCallback)&callBackResumeEvents,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackResumeEventsDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackResumeEvents(GdkFrameClock* frameclockStruct, OnResumeEventsDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackResumeEventsDestroy(OnResumeEventsDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnUpdateDelegateWrapper
	{
		void delegate(FrameClock) dlg;
		gulong handlerId;
		
		this(void delegate(FrameClock) dlg)
		{
			this.dlg = dlg;
			onUpdateListeners ~= this;
		}
		
		void remove(OnUpdateDelegateWrapper source)
		{
			foreach(index, wrapper; onUpdateListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onUpdateListeners[index] = null;
					onUpdateListeners = std.algorithm.remove(onUpdateListeners, index);
					break;
				}
			}
		}
	}
	OnUpdateDelegateWrapper[] onUpdateListeners;

	/**
	 * This signal is emitted as the first step of toolkit and
	 * application processing of the frame. Animations should
	 * be updated using gdk_frame_clock_get_frame_time().
	 * Applications can connect directly to this signal, or
	 * use gtk_widget_add_tick_callback() as a more convenient
	 * interface.
	 */
	gulong addOnUpdate(void delegate(FrameClock) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnUpdateDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"update",
			cast(GCallback)&callBackUpdate,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackUpdateDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackUpdate(GdkFrameClock* frameclockStruct, OnUpdateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackUpdateDestroy(OnUpdateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
