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


module gst.base.BaseParse;

private import gst.base.BaseParseFrame;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Element;
private import gstreamer.TagList;


/**
 * This base class is for parser elements that process data and splits it
 * into separate audio/video/whatever frames.
 * 
 * It provides for:
 * 
 * * provides one sink pad and one source pad
 * * handles state changes
 * * can operate in pull mode or push mode
 * * handles seeking in both modes
 * * handles events (SEGMENT/EOS/FLUSH)
 * * handles queries (POSITION/DURATION/SEEKING/FORMAT/CONVERT)
 * * handles flushing
 * 
 * The purpose of this base class is to provide the basic functionality of
 * a parser and share a lot of rather complex code.
 * 
 * # Description of the parsing mechanism:
 * 
 * ## Set-up phase
 * 
 * * #GstBaseParse calls @start to inform subclass that data processing is
 * about to start now.
 * 
 * * #GstBaseParse class calls @set_sink_caps to inform the subclass about
 * incoming sinkpad caps. Subclass could already set the srcpad caps
 * accordingly, but this might be delayed until calling
 * gst_base_parse_finish_frame() with a non-queued frame.
 * 
 * * At least at this point subclass needs to tell the #GstBaseParse class
 * how big data chunks it wants to receive (min_frame_size). It can do
 * this with gst_base_parse_set_min_frame_size().
 * 
 * * #GstBaseParse class sets up appropriate data passing mode (pull/push)
 * and starts to process the data.
 * 
 * ## Parsing phase
 * 
 * * #GstBaseParse gathers at least min_frame_size bytes of data either
 * by pulling it from upstream or collecting buffers in an internal
 * #GstAdapter.
 * 
 * * A buffer of (at least) min_frame_size bytes is passed to subclass with
 * @handle_frame. Subclass checks the contents and can optionally
 * return GST_FLOW_OK along with an amount of data to be skipped to find
 * a valid frame (which will result in a subsequent DISCONT).
 * If, otherwise, the buffer does not hold a complete frame,
 * @handle_frame can merely return and will be called again when additional
 * data is available.  In push mode this amounts to an
 * additional input buffer (thus minimal additional latency), in pull mode
 * this amounts to some arbitrary reasonable buffer size increase.
 * Of course, gst_base_parse_set_min_frame_size() could also be used if a
 * very specific known amount of additional data is required.
 * If, however, the buffer holds a complete valid frame, it can pass
 * the size of this frame to gst_base_parse_finish_frame().
 * If acting as a converter, it can also merely indicate consumed input data
 * while simultaneously providing custom output data.
 * Note that baseclass performs some processing (such as tracking
 * overall consumed data rate versus duration) for each finished frame,
 * but other state is only updated upon each call to @handle_frame
 * (such as tracking upstream input timestamp).
 * 
 * Subclass is also responsible for setting the buffer metadata
 * (e.g. buffer timestamp and duration, or keyframe if applicable).
 * (although the latter can also be done by #GstBaseParse if it is
 * appropriately configured, see below).  Frame is provided with
 * timestamp derived from upstream (as much as generally possible),
 * duration obtained from configuration (see below), and offset
 * if meaningful (in pull mode).
 * 
 * Note that @check_valid_frame might receive any small
 * amount of input data when leftover data is being drained (e.g. at EOS).
 * 
 * * As part of finish frame processing,
 * just prior to actually pushing the buffer in question,
 * it is passed to @pre_push_frame which gives subclass yet one
 * last chance to examine buffer metadata, or to send some custom (tag)
 * events, or to perform custom (segment) filtering.
 * 
 * * During the parsing process #GstBaseParseClass will handle both srcpad
 * and sinkpad events. They will be passed to subclass if @event or
 * @src_event callbacks have been provided.
 * 
 * ## Shutdown phase
 * 
 * * #GstBaseParse class calls @stop to inform the subclass that data
 * parsing will be stopped.
 * 
 * Subclass is responsible for providing pad template caps for
 * source and sink pads. The pads need to be named "sink" and "src". It also
 * needs to set the fixed caps on srcpad, when the format is ensured (e.g.
 * when base class calls subclass' @set_sink_caps function).
 * 
 * This base class uses %GST_FORMAT_DEFAULT as a meaning of frames. So,
 * subclass conversion routine needs to know that conversion from
 * %GST_FORMAT_TIME to %GST_FORMAT_DEFAULT must return the
 * frame number that can be found from the given byte position.
 * 
 * #GstBaseParse uses subclasses conversion methods also for seeking (or
 * otherwise uses its own default one, see also below).
 * 
 * Subclass @start and @stop functions will be called to inform the beginning
 * and end of data processing.
 * 
 * Things that subclass need to take care of:
 * 
 * * Provide pad templates
 * * Fixate the source pad caps when appropriate
 * * Inform base class how big data chunks should be retrieved. This is
 * done with gst_base_parse_set_min_frame_size() function.
 * * Examine data chunks passed to subclass with @handle_frame and pass
 * proper frame(s) to gst_base_parse_finish_frame(), and setting src pad
 * caps and timestamps on frame.
 * * Provide conversion functions
 * * Update the duration information with gst_base_parse_set_duration()
 * * Optionally passthrough using gst_base_parse_set_passthrough()
 * * Configure various baseparse parameters using
 * gst_base_parse_set_average_bitrate(), gst_base_parse_set_syncable()
 * and gst_base_parse_set_frame_rate().
 * 
 * * In particular, if subclass is unable to determine a duration, but
 * parsing (or specs) yields a frames per seconds rate, then this can be
 * provided to #GstBaseParse to enable it to cater for
 * buffer time metadata (which will be taken from upstream as much as
 * possible). Internally keeping track of frame durations and respective
 * sizes that have been pushed provides #GstBaseParse with an estimated
 * bitrate. A default @convert (used if not overridden) will then use these
 * rates to perform obvious conversions.  These rates are also used to
 * update (estimated) duration at regular frame intervals.
 */
public class BaseParse : Element
{
	/** the main Gtk struct */
	protected GstBaseParse* gstBaseParse;

	/** Get the main Gtk struct */
	public GstBaseParse* getBaseParseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBaseParse;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstBaseParse;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBaseParse* gstBaseParse, bool ownedRef = false)
	{
		this.gstBaseParse = gstBaseParse;
		super(cast(GstElement*)gstBaseParse, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_base_parse_get_type();
	}

	/**
	 * Adds an entry to the index associating @offset to @ts.  It is recommended
	 * to only add keyframe entries.  @force allows to bypass checks, such as
	 * whether the stream is (upstream) seekable, another entry is already "close"
	 * to the new entry, etc.
	 *
	 * Params:
	 *     offset = offset of entry
	 *     ts = timestamp associated with offset
	 *     key = whether entry refers to keyframe
	 *     force = add entry disregarding sanity checks
	 *
	 * Returns: #gboolean indicating whether entry was added
	 */
	public bool addIndexEntry(ulong offset, GstClockTime ts, bool key, bool force)
	{
		return gst_base_parse_add_index_entry(gstBaseParse, offset, ts, key, force) != 0;
	}

	/**
	 * Default implementation of "convert" vmethod in #GstBaseParse class.
	 *
	 * Params:
	 *     srcFormat = #GstFormat describing the source format.
	 *     srcValue = Source value to be converted.
	 *     destFormat = #GstFormat defining the converted format.
	 *     destValue = Pointer where the conversion result will be put.
	 *
	 * Returns: %TRUE if conversion was successful.
	 */
	public bool convertDefault(GstFormat srcFormat, long srcValue, GstFormat destFormat, out long destValue)
	{
		return gst_base_parse_convert_default(gstBaseParse, srcFormat, srcValue, destFormat, &destValue) != 0;
	}

	/**
	 * Drains the adapter until it is empty. It decreases the min_frame_size to
	 * match the current adapter size and calls chain method until the adapter
	 * is emptied or chain returns with error.
	 *
	 * Since: 1.12
	 */
	public void drain()
	{
		gst_base_parse_drain(gstBaseParse);
	}

	/**
	 * Collects parsed data and pushes this downstream.
	 * Source pad caps must be set when this is called.
	 *
	 * If @frame's out_buffer is set, that will be used as subsequent frame data.
	 * Otherwise, @size samples will be taken from the input and used for output,
	 * and the output's metadata (timestamps etc) will be taken as (optionally)
	 * set by the subclass on @frame's (input) buffer (which is otherwise
	 * ignored for any but the above purpose/information).
	 *
	 * Note that the latter buffer is invalidated by this call, whereas the
	 * caller retains ownership of @frame.
	 *
	 * Params:
	 *     frame = a #GstBaseParseFrame
	 *     size = consumed input data represented by frame
	 *
	 * Returns: a #GstFlowReturn that should be escalated to caller (of caller)
	 */
	public GstFlowReturn finishFrame(BaseParseFrame frame, int size)
	{
		return gst_base_parse_finish_frame(gstBaseParse, (frame is null) ? null : frame.getBaseParseFrameStruct(), size);
	}

	/**
	 * Sets the parser subclass's tags and how they should be merged with any
	 * upstream stream tags. This will override any tags previously-set
	 * with gst_base_parse_merge_tags().
	 *
	 * Note that this is provided for convenience, and the subclass is
	 * not required to use this and can still do tag handling on its own.
	 *
	 * Params:
	 *     tags = a #GstTagList to merge, or NULL to unset
	 *         previously-set tags
	 *     mode = the #GstTagMergeMode to use, usually #GST_TAG_MERGE_REPLACE
	 *
	 * Since: 1.6
	 */
	public void mergeTags(TagList tags, GstTagMergeMode mode)
	{
		gst_base_parse_merge_tags(gstBaseParse, (tags is null) ? null : tags.getTagListStruct(), mode);
	}

	/**
	 * Pushes the frame's buffer downstream, sends any pending events and
	 * does some timestamp and segment handling. Takes ownership of
	 * frame's buffer, though caller retains ownership of @frame.
	 *
	 * This must be called with sinkpad STREAM_LOCK held.
	 *
	 * Params:
	 *     frame = a #GstBaseParseFrame
	 *
	 * Returns: #GstFlowReturn
	 */
	public GstFlowReturn pushFrame(BaseParseFrame frame)
	{
		return gst_base_parse_push_frame(gstBaseParse, (frame is null) ? null : frame.getBaseParseFrameStruct());
	}

	/**
	 * Optionally sets the average bitrate detected in media (if non-zero),
	 * e.g. based on metadata, as it will be posted to the application.
	 *
	 * By default, announced average bitrate is estimated. The average bitrate
	 * is used to estimate the total duration of the stream and to estimate
	 * a seek position, if there's no index and the format is syncable
	 * (see gst_base_parse_set_syncable()).
	 *
	 * Params:
	 *     bitrate = average bitrate in bits/second
	 */
	public void setAverageBitrate(uint bitrate)
	{
		gst_base_parse_set_average_bitrate(gstBaseParse, bitrate);
	}

	/**
	 * Sets the duration of the currently playing media. Subclass can use this
	 * when it is able to determine duration and/or notices a change in the media
	 * duration.  Alternatively, if @interval is non-zero (default), then stream
	 * duration is determined based on estimated bitrate, and updated every @interval
	 * frames.
	 *
	 * Params:
	 *     fmt = #GstFormat.
	 *     duration = duration value.
	 *     interval = how often to update the duration estimate based on bitrate, or 0.
	 */
	public void setDuration(GstFormat fmt, long duration, int interval)
	{
		gst_base_parse_set_duration(gstBaseParse, fmt, duration, interval);
	}

	/**
	 * If frames per second is configured, parser can take care of buffer duration
	 * and timestamping.  When performing segment clipping, or seeking to a specific
	 * location, a corresponding decoder might need an initial @lead_in and a
	 * following @lead_out number of frames to ensure the desired segment is
	 * entirely filled upon decoding.
	 *
	 * Params:
	 *     fpsNum = frames per second (numerator).
	 *     fpsDen = frames per second (denominator).
	 *     leadIn = frames needed before a segment for subsequent decode
	 *     leadOut = frames needed after a segment
	 */
	public void setFrameRate(uint fpsNum, uint fpsDen, uint leadIn, uint leadOut)
	{
		gst_base_parse_set_frame_rate(gstBaseParse, fpsNum, fpsDen, leadIn, leadOut);
	}

	/**
	 * Set if frames carry timing information which the subclass can (generally)
	 * parse and provide.  In particular, intrinsic (rather than estimated) time
	 * can be obtained following a seek.
	 *
	 * Params:
	 *     hasTiming = whether frames carry timing information
	 */
	public void setHasTimingInfo(bool hasTiming)
	{
		gst_base_parse_set_has_timing_info(gstBaseParse, hasTiming);
	}

	/**
	 * By default, the base class might try to infer PTS from DTS and vice
	 * versa.  While this is generally correct for audio data, it may not
	 * be otherwise. Sub-classes implementing such formats should disable
	 * timestamp inferring.
	 *
	 * Params:
	 *     inferTs = %TRUE if parser should infer DTS/PTS from each other
	 */
	public void setInferTs(bool inferTs)
	{
		gst_base_parse_set_infer_ts(gstBaseParse, inferTs);
	}

	/**
	 * Sets the minimum and maximum (which may likely be equal) latency introduced
	 * by the parsing process.  If there is such a latency, which depends on the
	 * particular parsing of the format, it typically corresponds to 1 frame duration.
	 *
	 * Params:
	 *     minLatency = minimum parse latency
	 *     maxLatency = maximum parse latency
	 */
	public void setLatency(GstClockTime minLatency, GstClockTime maxLatency)
	{
		gst_base_parse_set_latency(gstBaseParse, minLatency, maxLatency);
	}

	/**
	 * Subclass can use this function to tell the base class that it needs to
	 * give at least #min_size buffers.
	 *
	 * Params:
	 *     minSize = Minimum size of the data that this base class should give to
	 *         subclass.
	 */
	public void setMinFrameSize(uint minSize)
	{
		gst_base_parse_set_min_frame_size(gstBaseParse, minSize);
	}

	/**
	 * Set if the nature of the format or configuration does not allow (much)
	 * parsing, and the parser should operate in passthrough mode (which only
	 * applies when operating in push mode). That is, incoming buffers are
	 * pushed through unmodified, i.e. no @check_valid_frame or @parse_frame
	 * callbacks will be invoked, but @pre_push_frame will still be invoked,
	 * so subclass can perform as much or as little is appropriate for
	 * passthrough semantics in @pre_push_frame.
	 *
	 * Params:
	 *     passthrough = %TRUE if parser should run in passthrough mode
	 */
	public void setPassthrough(bool passthrough)
	{
		gst_base_parse_set_passthrough(gstBaseParse, passthrough);
	}

	/**
	 * By default, the base class will guess PTS timestamps using a simple
	 * interpolation (previous timestamp + duration), which is incorrect for
	 * data streams with reordering, where PTS can go backward. Sub-classes
	 * implementing such formats should disable PTS interpolation.
	 *
	 * Params:
	 *     ptsInterpolate = %TRUE if parser should interpolate PTS timestamps
	 */
	public void setPtsInterpolation(bool ptsInterpolate)
	{
		gst_base_parse_set_pts_interpolation(gstBaseParse, ptsInterpolate);
	}

	/**
	 * Set if frame starts can be identified. This is set by default and
	 * determines whether seeking based on bitrate averages
	 * is possible for a format/stream.
	 *
	 * Params:
	 *     syncable = set if frame starts can be identified
	 */
	public void setSyncable(bool syncable)
	{
		gst_base_parse_set_syncable(gstBaseParse, syncable);
	}

	/**
	 * This function should only be called from a @handle_frame implementation.
	 *
	 * #GstBaseParse creates initial timestamps for frames by using the last
	 * timestamp seen in the stream before the frame starts.  In certain
	 * cases, the correct timestamps will occur in the stream after the
	 * start of the frame, but before the start of the actual picture data.
	 * This function can be used to set the timestamps based on the offset
	 * into the frame data that the picture starts.
	 *
	 * Params:
	 *     offset = offset into current buffer
	 *
	 * Since: 1.2
	 */
	public void setTsAtOffset(size_t offset)
	{
		gst_base_parse_set_ts_at_offset(gstBaseParse, offset);
	}
}
