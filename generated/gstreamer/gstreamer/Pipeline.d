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


module gstreamer.Pipeline;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Bin;
private import gstreamer.Bus;
private import gstreamer.Clock;
private import gstreamer.Element;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * A #GstPipeline is a special #GstBin used as the toplevel container for
 * the filter graph. The #GstPipeline will manage the selection and
 * distribution of a global #GstClock as well as provide a #GstBus to the
 * application.
 * 
 * gst_pipeline_new() is used to create a pipeline. when you are done with
 * the pipeline, use gst_object_unref() to free its resources including all
 * added #GstElement objects (if not otherwise referenced).
 * 
 * Elements are added and removed from the pipeline using the #GstBin
 * methods like gst_bin_add() and gst_bin_remove() (see #GstBin).
 * 
 * Before changing the state of the #GstPipeline (see #GstElement) a #GstBus
 * can be retrieved with gst_pipeline_get_bus(). This bus can then be
 * used to receive #GstMessage from the elements in the pipeline.
 * 
 * By default, a #GstPipeline will automatically flush the pending #GstBus
 * messages when going to the NULL state to ensure that no circular
 * references exist when no messages are read from the #GstBus. This
 * behaviour can be changed with gst_pipeline_set_auto_flush_bus().
 * 
 * When the #GstPipeline performs the PAUSED to PLAYING state change it will
 * select a clock for the elements. The clock selection algorithm will by
 * default select a clock provided by an element that is most upstream
 * (closest to the source). For live pipelines (ones that return
 * #GST_STATE_CHANGE_NO_PREROLL from the gst_element_set_state() call) this
 * will select the clock provided by the live source. For normal pipelines
 * this will select a clock provided by the sinks (most likely the audio
 * sink). If no element provides a clock, a default #GstSystemClock is used.
 * 
 * The clock selection can be controlled with the gst_pipeline_use_clock()
 * method, which will enforce a given clock on the pipeline. With
 * gst_pipeline_auto_clock() the default clock selection algorithm can be
 * restored.
 * 
 * A #GstPipeline maintains a running time for the elements. The running
 * time is defined as the difference between the current clock time and
 * the base time. When the pipeline goes to READY or a flushing seek is
 * performed on it, the running time is reset to 0. When the pipeline is
 * set from PLAYING to PAUSED, the current clock time is sampled and used to
 * configure the base time for the elements when the pipeline is set
 * to PLAYING again. The effect is that the running time (as the difference
 * between the clock time and the base time) will count how much time was spent
 * in the PLAYING state. This default behaviour can be changed with the
 * gst_element_set_start_time() method.
 */
public class Pipeline : Bin
{
	/** the main Gtk struct */
	protected GstPipeline* gstPipeline;

	/** Get the main Gtk struct */
	public GstPipeline* getPipelineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPipeline;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPipeline;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPipeline* gstPipeline, bool ownedRef = false)
	{
		this.gstPipeline = gstPipeline;
		super(cast(GstBin*)gstPipeline, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_pipeline_get_type();
	}

	/**
	 * Create a new pipeline with the given name.
	 *
	 * Params:
	 *     name = name of new pipeline
	 *
	 * Returns: newly created GstPipeline
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto p = gst_pipeline_new(Str.toStringz(name));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstPipeline*) p);
	}

	/**
	 * Let @pipeline select a clock automatically. This is the default
	 * behaviour.
	 *
	 * Use this function if you previous forced a fixed clock with
	 * gst_pipeline_use_clock() and want to restore the default
	 * pipeline clock selection algorithm.
	 *
	 * MT safe.
	 */
	public void autoClock()
	{
		gst_pipeline_auto_clock(gstPipeline);
	}

	/**
	 * Check if @pipeline will automatically flush messages when going to
	 * the NULL state.
	 *
	 * Returns: whether the pipeline will automatically flush its bus when
	 *     going from READY to NULL state or not.
	 *
	 *     MT safe.
	 */
	public bool getAutoFlushBus()
	{
		return gst_pipeline_get_auto_flush_bus(gstPipeline) != 0;
	}

	/**
	 * Gets the #GstBus of @pipeline. The bus allows applications to receive
	 * #GstMessage packets.
	 *
	 * Returns: a #GstBus, unref after usage.
	 *
	 *     MT safe.
	 */
	public override Bus getBus()
	{
		auto p = gst_pipeline_get_bus(gstPipeline);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bus)(cast(GstBus*) p, true);
	}

	/**
	 * Gets the current clock used by @pipeline. Users of object
	 * oriented languages should use gst_pipeline_get_pipeline_clock()
	 * to avoid confusion with gst_element_get_clock() which has a different behavior.
	 *
	 * Unlike gst_element_get_clock(), this function will always return a
	 * clock, even if the pipeline is not in the PLAYING state.
	 *
	 * Returns: a #GstClock, unref after usage.
	 */
	public override Clock getClock()
	{
		auto p = gst_pipeline_get_clock(gstPipeline);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clock)(cast(GstClock*) p, true);
	}

	/**
	 * Get the configured delay (see gst_pipeline_set_delay()).
	 *
	 * Returns: The configured delay.
	 *
	 *     MT safe.
	 */
	public GstClockTime getDelay()
	{
		return gst_pipeline_get_delay(gstPipeline);
	}

	/**
	 * Gets the latency that should be configured on the pipeline. See
	 * gst_pipeline_set_latency().
	 *
	 * Returns: Latency to configure on the pipeline or GST_CLOCK_TIME_NONE
	 *
	 * Since: 1.6
	 */
	public GstClockTime getLatency()
	{
		return gst_pipeline_get_latency(gstPipeline);
	}

	/**
	 * Gets the current clock used by @pipeline.
	 *
	 * Unlike gst_element_get_clock(), this function will always return a
	 * clock, even if the pipeline is not in the PLAYING state.
	 *
	 * Returns: a #GstClock, unref after usage.
	 *
	 * Since: 1.6
	 */
	public Clock getPipelineClock()
	{
		auto p = gst_pipeline_get_pipeline_clock(gstPipeline);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clock)(cast(GstClock*) p, true);
	}

	/**
	 * Usually, when a pipeline goes from READY to NULL state, it automatically
	 * flushes all pending messages on the bus, which is done for refcounting
	 * purposes, to break circular references.
	 *
	 * This means that applications that update state using (async) bus messages
	 * (e.g. do certain things when a pipeline goes from PAUSED to READY) might
	 * not get to see messages when the pipeline is shut down, because they might
	 * be flushed before they can be dispatched in the main thread. This behaviour
	 * can be disabled using this function.
	 *
	 * It is important that all messages on the bus are handled when the
	 * automatic flushing is disabled else memory leaks will be introduced.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     autoFlush = whether or not to automatically flush the bus when
	 *         the pipeline goes from READY to NULL state
	 */
	public void setAutoFlushBus(bool autoFlush)
	{
		gst_pipeline_set_auto_flush_bus(gstPipeline, autoFlush);
	}

	/**
	 * Set the clock for @pipeline. The clock will be distributed
	 * to all the elements managed by the pipeline.
	 *
	 * Params:
	 *     clock = the clock to set
	 *
	 * Returns: %TRUE if the clock could be set on the pipeline. %FALSE if
	 *     some element did not accept the clock.
	 *
	 *     MT safe.
	 */
	public override bool setClock(Clock clock)
	{
		return gst_pipeline_set_clock(gstPipeline, (clock is null) ? null : clock.getClockStruct()) != 0;
	}

	/**
	 * Set the expected delay needed for all elements to perform the
	 * PAUSED to PLAYING state change. @delay will be added to the
	 * base time of the elements so that they wait an additional @delay
	 * amount of time before starting to process buffers and cannot be
	 * #GST_CLOCK_TIME_NONE.
	 *
	 * This option is used for tuning purposes and should normally not be
	 * used.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     delay = the delay
	 */
	public void setDelay(GstClockTime delay)
	{
		gst_pipeline_set_delay(gstPipeline, delay);
	}

	/**
	 * Sets the latency that should be configured on the pipeline. Setting
	 * GST_CLOCK_TIME_NONE will restore the default behaviour of using the minimum
	 * latency from the LATENCY query. Setting this is usually not required and
	 * the pipeline will figure out an appropriate latency automatically.
	 *
	 * Setting a too low latency, especially lower than the minimum latency from
	 * the LATENCY query, will most likely cause the pipeline to fail.
	 *
	 * Params:
	 *     latency = latency to configure
	 *
	 * Since: 1.6
	 */
	public void setLatency(GstClockTime latency)
	{
		gst_pipeline_set_latency(gstPipeline, latency);
	}

	/**
	 * Force @pipeline to use the given @clock. The pipeline will
	 * always use the given clock even if new clock providers are added
	 * to this pipeline.
	 *
	 * If @clock is %NULL all clocking will be disabled which will make
	 * the pipeline run as fast as possible.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     clock = the clock to use
	 */
	public void useClock(Clock clock)
	{
		gst_pipeline_use_clock(gstPipeline, (clock is null) ? null : clock.getClockStruct());
	}
}
