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
 * inFile  = gstreamer-GstSegment.html
 * outPack = gstreamer
 * outFile = Segment
 * strct   = GstSegment
 * realStrct=
 * ctorStrct=
 * clss    = Segment
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_segment_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GstSegment* -> Segment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Segment;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * This helper structure holds the relevant values for tracking the region of
 * interest in a media file, called a segment.
 * The structure can be used for two purposes:
 * performing seeks (handling seek events)
 * tracking playback regions (handling newsegment events)
 * The segment is usually configured by the application with a seek event which
 * is propagated upstream and eventually handled by an element that performs the seek.
 * The configured segment is then propagated back downstream with a newsegment event.
 * This information is then used to clip media to the segment boundaries.
 * A segment structure is initialized with gst_segment_init(), which takes a GstFormat
 * that will be used as the format of the segment values. The segment will be configured
 * with a start value of 0 and a stop/duration of -1, which is undefined. The default
 * rate and applied_rate is 1.0.
 * If the segment is used for managing seeks, the segment duration should be set with
 * gst_segment_set_duration(). The public duration field contains the duration of the
 * segment. When using the segment for seeking, the start and time members should
 * normally be left to their default 0 value. The stop position is left to -1 unless
 * explicitly configured to a different value after a seek event.
 * The current position in the segment should be set with the gst_segment_set_last_stop().
 * The public last_stop field contains the last set stop position in the segment.
 * For elements that perform seeks, the current segment should be updated with the
 * gst_segment_set_seek() and the values from the seek event. This method will update
 * all the segment fields. The last_stop field will contain the new playback position.
 * If the cur_type was different from GST_SEEK_TYPE_NONE, playback continues from
 * the last_stop position, possibly with updated flags or rate.
 * For elements that want to use GstSegment to track the playback region, use
 * gst_segment_set_newsegment() to update the segment fields with the information from
 * the newsegment event. The gst_segment_clip() method can be used to check and clip
 * the media data to the segment boundaries.
 * For elements that want to synchronize to the pipeline clock, gst_segment_to_running_time()
 * can be used to convert a timestamp to a value that can be used to synchronize
 * to the clock. This function takes into account all accumulated segments as well as
 * any rate or applied_rate conversions.
 * For elements that need to perform operations on media data in stream_time,
 * gst_segment_to_stream_time() can be used to convert a timestamp and the segment
 * info to stream time (which is always between 0 and the duration of the stream).
 * Last reviewed on 2007-05-17 (0.10.13)
 */
public class Segment
{
	
	/** the main Gtk struct */
	protected GstSegment* gstSegment;
	
	
	public GstSegment* getSegmentStruct()
	{
		return gstSegment;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstSegment;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstSegment* gstSegment)
	{
		this.gstSegment = gstSegment;
	}
	
	/**
	 */
	
	/**
	 * Clip the given start and stop values to the segment boundaries given
	 * in segment. start and stop are compared and clipped to segment
	 * start and stop values.
	 * If the function returns FALSE, start and stop are known to fall
	 * outside of segment and clip_start and clip_stop are not updated.
	 * When the function returns TRUE, clip_start and clip_stop will be
	 * updated. If clip_start or clip_stop are different from start or stop
	 * respectively, the region fell partially in the segment.
	 * Note that when stop is -1, clip_stop will be set to the end of the
	 * segment. Depending on the use case, this may or may not be what you want.
	 * Params:
	 * format = the format of the segment.
	 * start = the start position in the segment
	 * stop = the stop position in the segment
	 * clipStart = the clipped start position in the segment
	 * clipStop = the clipped stop position in the segment
	 * Returns: TRUE if the given start and stop times fall partially or completely in segment, FALSE if the values are completely outside of the segment.
	 */
	public int clip(GstFormat format, long start, long stop, ref long clipStart, ref long clipStop)
	{
		// gboolean gst_segment_clip (GstSegment *segment,  GstFormat format,  gint64 start,  gint64 stop,  gint64 *clip_start,  gint64 *clip_stop);
		return gst_segment_clip(gstSegment, format, start, stop, &clipStart, &clipStop);
	}
	
	/**
	 * The start/last_stop positions are set to 0 and the stop/duration
	 * fields are set to -1 (unknown). The default rate of 1.0 and no
	 * flags are set.
	 * Initialize segment to its default values.
	 * Params:
	 * format = the format of the segment.
	 */
	public void init(GstFormat format)
	{
		// void gst_segment_init (GstSegment *segment,  GstFormat format);
		gst_segment_init(gstSegment, format);
	}
	
	/**
	 * Allocate a new GstSegment structure and initialize it using
	 * gst_segment_init().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstSegment* gst_segment_new (void);
		auto p = gst_segment_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_segment_new()");
		}
		this(cast(GstSegment*) p);
	}
	
	/**
	 * Free the allocated segment segment.
	 */
	public void free()
	{
		// void gst_segment_free (GstSegment *segment);
		gst_segment_free(gstSegment);
	}
	
	/**
	 * Set the duration of the segment to duration. This function is mainly
	 * used by elements that perform seeking and know the total duration of the
	 * segment.
	 * This field should be set to allow seeking requests relative to the
	 * duration.
	 * Params:
	 * format = the format of the segment.
	 * duration = the duration of the segment info or -1 if unknown.
	 */
	public void setDuration(GstFormat format, long duration)
	{
		// void gst_segment_set_duration (GstSegment *segment,  GstFormat format,  gint64 duration);
		gst_segment_set_duration(gstSegment, format, duration);
	}
	
	/**
	 * Set the last observed stop position in the segment to position.
	 * This field should be set to allow seeking requests relative to the
	 * current playing position.
	 * Params:
	 * format = the format of the segment.
	 * position = the position
	 */
	public void setLastStop(GstFormat format, long position)
	{
		// void gst_segment_set_last_stop (GstSegment *segment,  GstFormat format,  gint64 position);
		gst_segment_set_last_stop(gstSegment, format, position);
	}
	
	/**
	 * Update the segment structure with the field values of a new segment event and
	 * with a default applied_rate of 1.0.
	 * Params:
	 * segment = a GstSegment structure.
	 * update = flag indicating a new segment is started or updated
	 * rate = the rate of the segment.
	 * format = the format of the segment.
	 * start = the new start value
	 * stop = the new stop value
	 * time = the new stream time
	 * Since 0.10.6
	 */
	public void setNewsegment(int update, double rate, GstFormat format, long start, long stop, long time)
	{
		// void gst_segment_set_newsegment (GstSegment *segment,  gboolean update,  gdouble rate,  GstFormat format,  gint64 start,  gint64 stop,  gint64 time);
		gst_segment_set_newsegment(gstSegment, update, rate, format, start, stop, time);
	}
	
	/**
	 * Update the segment structure with the field values of a new segment event.
	 * Params:
	 * segment = a GstSegment structure.
	 * update = flag indicating a new segment is started or updated
	 * rate = the rate of the segment.
	 * appliedRate = the applied rate of the segment.
	 * format = the format of the segment.
	 * start = the new start value
	 * stop = the new stop value
	 * time = the new stream time
	 */
	public void setNewsegmentFull(int update, double rate, double appliedRate, GstFormat format, long start, long stop, long time)
	{
		// void gst_segment_set_newsegment_full (GstSegment *segment,  gboolean update,  gdouble rate,  gdouble applied_rate,  GstFormat format,  gint64 start,  gint64 stop,  gint64 time);
		gst_segment_set_newsegment_full(gstSegment, update, rate, appliedRate, format, start, stop, time);
	}
	
	/**
	 * Update the segment structure with the field values of a seek event (see
	 * gst_event_new_seek()).
	 * After calling this method, the segment field last_stop and time will
	 * contain the requested new position in the segment. The new requested
	 * position in the segment depends on rate and start_type and stop_type.
	 * For positive rate, the new position in the segment is the new segment
	 * start field when it was updated with a start_type different from
	 * GST_SEEK_TYPE_NONE. If no update was performed on segment start position
	 * (GST_SEEK_TYPE_NONE), start is ignored and segment last_stop is
	 * unmodified.
	 * For negative rate, the new position in the segment is the new segment
	 * stop field when it was updated with a stop_type different from
	 * GST_SEEK_TYPE_NONE. If no stop was previously configured in the segment, the
	 * duration of the segment will be used to update the stop position.
	 * If no update was performed on segment stop position (GST_SEEK_TYPE_NONE),
	 * stop is ignored and segment last_stop is unmodified.
	 * The applied rate of the segment will be set to 1.0 by default.
	 * If the caller can apply a rate change, it should update segment
	 * rate and applied_rate after calling this function.
	 * update will be set to TRUE if a seek should be performed to the segment
	 * last_stop field. This field can be FALSE if, for example, only the rate
	 * has been changed but not the playback position.
	 * Params:
	 * rate = the rate of the segment.
	 * format = the format of the segment.
	 * flags = the seek flags for the segment
	 * startType = the seek method
	 * start = the seek start value
	 * stopType = the seek method
	 * stop = the seek stop value
	 * update = boolean holding whether last_stop was updated.
	 */
	public void setSeek(double rate, GstFormat format, GstSeekFlags flags, GstSeekType startType, long start, GstSeekType stopType, long stop, ref int update)
	{
		// void gst_segment_set_seek (GstSegment *segment,  gdouble rate,  GstFormat format,  GstSeekFlags flags,  GstSeekType start_type,  gint64 start,  GstSeekType stop_type,  gint64 stop,  gboolean *update);
		gst_segment_set_seek(gstSegment, rate, format, flags, startType, start, stopType, stop, &update);
	}
	
	/**
	 * Translate position to the total running time using the currently configured
	 * and previously accumulated segments. Position is a value between segment
	 * start and stop time.
	 * This function is typically used by elements that need to synchronize to the
	 * global clock in a pipeline. The runnning time is a constantly increasing value
	 * starting from 0. When gst_segment_init() is called, this value will reset to
	 * 0.
	 * This function returns -1 if the position is outside of segment start and stop.
	 * Params:
	 * format = the format of the segment.
	 * position = the position in the segment
	 * Returns: the position as the total running time or -1 when an invalid position was given.
	 */
	public long toRunningTime(GstFormat format, long position)
	{
		// gint64 gst_segment_to_running_time (GstSegment *segment,  GstFormat format,  gint64 position);
		return gst_segment_to_running_time(gstSegment, format, position);
	}
	
	/**
	 * Translate position to stream time using the currently configured
	 * segment. The position value must be between segment start and
	 * stop value.
	 * This function is typically used by elements that need to operate on
	 * the stream time of the buffers it receives, such as effect plugins.
	 * In those use cases, position is typically the buffer timestamp or
	 * clock time that one wants to convert to the stream time.
	 * The stream time is always between 0 and the total duration of the
	 * media stream.
	 * Params:
	 * format = the format of the segment.
	 * position = the position in the segment
	 * Returns: the position in stream_time or -1 when an invalid position was given.
	 */
	public long toStreamTime(GstFormat format, long position)
	{
		// gint64 gst_segment_to_stream_time (GstSegment *segment,  GstFormat format,  gint64 position);
		return gst_segment_to_stream_time(gstSegment, format, position);
	}
}
