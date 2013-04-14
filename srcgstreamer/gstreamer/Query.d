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
 * inFile  = gstreamer-GstQuery.html
 * outPack = gstreamer
 * outFile = Query
 * strct   = GstQuery
 * realStrct=
 * ctorStrct=
 * clss    = Query
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_query_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_query_new_position
 * 	- gst_query_new_duration
 * 	- gst_query_new_seeking
 * 	- gst_query_new_formats
 * 	- gst_query_new_segment
 * 	- gst_query_new_latency
 * 	- gst_query_new_uri
 * 	- gst_query_new_scheduling
 * 	- gst_query_new_drain
 * 	- gst_query_new_accept_caps
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Allocator
 * 	- gstreamer.BufferPool
 * 	- gstreamer.Caps
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstAllocator* -> Allocator
 * 	- GstBufferPool* -> BufferPool
 * 	- GstCaps* -> Caps
 * 	- GstQuery* -> Query
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Query;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Allocator;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Structure;




/**
 * Queries can be performed on pads (gst_pad_query()) and elements
 * (gst_element_query()). Please note that some queries might need a running
 * pipeline to work.
 *
 * Queries can be created using the gst_query_new_*() functions.
 * Query values can be set using gst_query_set_*(), and parsed using
 * gst_query_parse_*() helpers.
 *
 * The following example shows how to query the duration of a pipeline:
 *
 * $(DDOC_COMMENT example)
 *
 * Last reviewed on 2012-03-29 (0.11.3)
 */
public class Query
{
	
	/** the main Gtk struct */
	protected GstQuery* gstQuery;
	
	
	public GstQuery* getQueryStruct()
	{
		return gstQuery;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstQuery;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstQuery* gstQuery)
	{
		this.gstQuery = gstQuery;
	}
	
	/**
	 * Constructs a new query stream position query object. Use gst_query_unref()
	 * when done with it. A position query is used to query the current position
	 * of playback in the streams, in some format.
	 * Params:
	 *  format = the default GstFormat for the new query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newPosition(GstFormat format)
	{
		// GstQuery* gst_query_new_position (GstFormat format);
		auto p = gst_query_new_position(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_position");
		}
		
		return new Query( cast(GstQuery*)p );
	}	/**
	 * Constructs a new stream duration query object to query in the given format.
	 * Use gst_query_unref() when done with it. A duration query will give the
	 * total length of the stream.
	 * Params:
	 *  format = the GstFormat for this duration query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newDuration(GstFormat format)
	{
		// GstQuery* gst_query_new_duration (GstFormat format);
		auto p = gst_query_new_duration(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_duration");
		}
		
		return new Query( cast(GstQuery*)p );
	}	/**
	 * Constructs a new query object for querying seeking properties of
	 * the stream.
	 * Params:
	 *  format = the default GstFormat for the new query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newSeeking(GstFormat format)
	{
		// GstQuery* gst_query_new_seeking (GstFormat format);
		auto p = gst_query_new_seeking(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_seeking");
		}
		
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new query object for querying formats of
	 * the stream.
	 * Since 0.10.4
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newFormats()
	{
		// GstQuery* gst_query_new_formats (void);
		auto p = gst_query_new_formats();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_formats");
		}
		
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new segment query object. Use gst_query_unref()
	 * when done with it. A segment query is used to discover information about the
	 * currently configured segment for playback.
	 * Params:
	 *  format = the GstFormat for the new query
	 * Returns:
	 *  a GstQuery
	 */
	public static Query newSegment(GstFormat format)
	{
		// GstQuery* gst_query_new_segment (GstFormat format);
		auto p = gst_query_new_segment(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_segment");
		}
		
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new latency query object.
	 * Use gst_query_unref() when done with it. A latency query is usually performed
	 * by sinks to compensate for additional latency introduced by elements in the
	 * pipeline.
	 * Free-function: gst_query_unref
	 */
	public static Query newLatency()
	{
		// GstQuery * gst_query_new_latency (void);
		auto p = gst_query_new_latency();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_latency()");
		}
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new query URI query object. Use gst_query_unref()
	 * when done with it. An URI query is used to query the current URI
	 * that is used by the source or sink.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newUri()
	{
		// GstQuery * gst_query_new_uri (void);
		auto p = gst_query_new_uri();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_uri()");
		}
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new query object for querying the scheduling properties.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newScheduling()
	{
		// GstQuery * gst_query_new_scheduling (void);
		auto p = gst_query_new_scheduling();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_scheduling()");
		}
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new query object for querying the drain state.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newDrain()
	{
		// GstQuery * gst_query_new_drain (void);
		auto p = gst_query_new_drain();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_drain()");
		}
		return new Query(cast(GstQuery*)p );
	}	/**
	 * Constructs a new query object for querying if caps are accepted.
	 * Free-function: gst_query_unref
	 * Params:
	 * caps = a fixed GstCaps
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newAcceptCaps(Caps caps)
	{
		// GstQuery * gst_query_new_accept_caps (GstCaps *caps);
		auto p = gst_query_new_accept_caps((caps is null) ? null : caps.getCapsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_accept_caps((caps is null) ? null : caps.getCapsStruct())");
		}
		return new Query(cast(GstQuery*)p );
	}
	
	/**
	 */
	
	/**
	 * Gets the GstQueryTypeFlags associated with type.
	 * Params:
	 * type = a GstQueryType
	 * Returns: a GstQueryTypeFlags.
	 */
	public static GstQueryTypeFlags typeGetFlags(GstQueryType type)
	{
		// GstQueryTypeFlags gst_query_type_get_flags (GstQueryType type);
		return gst_query_type_get_flags(type);
	}
	
	/**
	 * Get a printable name for the given query type. Do not modify or free.
	 * Params:
	 * type = the query type
	 * Returns: a reference to the static name of the query.
	 */
	public static string typeGetName(GstQueryType type)
	{
		// const gchar * gst_query_type_get_name (GstQueryType type);
		return Str.toString(gst_query_type_get_name(type));
	}
	
	/**
	 * Get the unique quark for the given query type.
	 * Params:
	 * type = the query type
	 * Returns: the quark associated with the query type
	 */
	public static GQuark typeToQuark(GstQueryType type)
	{
		// GQuark gst_query_type_to_quark (GstQueryType type);
		return gst_query_type_to_quark(type);
	}
	
	/**
	 * Increases the refcount of the given query by one.
	 * Returns: q
	 */
	public Query doref()
	{
		// GstQuery * gst_query_ref (GstQuery *q);
		auto p = gst_query_ref(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Query)(cast(GstQuery*) p);
	}
	
	/**
	 * Decreases the refcount of the query. If the refcount reaches 0, the query
	 * will be freed.
	 */
	public void unref()
	{
		// void gst_query_unref (GstQuery *q);
		gst_query_unref(gstQuery);
	}
	
	/**
	 * Copies the given query using the copy function of the parent GstStructure.
	 * Free-function: gst_query_unref
	 * Returns: a new copy of q. [transfer full]
	 */
	public Query copy()
	{
		// GstQuery * gst_query_copy (const GstQuery *q);
		auto p = gst_query_copy(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Query)(cast(GstQuery*) p);
	}
	
	/**
	 * Modifies a pointer to a GstQuery to point to a different GstQuery. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * query is unreffed, the new one is reffed).
	 * Either new_query or the GstQuery pointed to by old_query may be NULL.
	 * Params:
	 * oldQuery = pointer to a pointer to a GstQuery
	 * to be replaced. [inout][transfer full]
	 * newQuery = pointer to a GstQuery that will
	 * replace the query pointed to by old_query. [allow-none][transfer none]
	 * Returns: TRUE if new_query was different from old_query
	 */
	public static int replace(ref Query oldQuery, Query newQuery)
	{
		// gboolean gst_query_replace (GstQuery **old_query,  GstQuery *new_query);
		GstQuery* outoldQuery = (oldQuery is null) ? null : oldQuery.getQueryStruct();
		
		auto p = gst_query_replace(&outoldQuery, (newQuery is null) ? null : newQuery.getQueryStruct());
		
		oldQuery = ObjectG.getDObject!(Query)(outoldQuery);
		return p;
	}
	
	/**
	 * Get the structure of a query. This method should be called with a writable
	 * query so that the returned structure is guranteed to be writable.
	 * Returns: the GstStructure of the query. The structure is still owned by the query and will therefore be freed when the query is unreffed. [transfer none]
	 */
	public Structure writableStructure()
	{
		// GstStructure * gst_query_writable_structure (GstQuery *query);
		auto p = gst_query_writable_structure(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Constructs a new custom query object. Use gst_query_unref()
	 * when done with it.
	 * Free-function: gst_query_unref
	 * Params:
	 * type = the query type
	 * structure = a structure for the query
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstQueryType type, Structure structure)
	{
		// GstQuery * gst_query_new_custom (GstQueryType type,  GstStructure *structure);
		auto p = gst_query_new_custom(type, (structure is null) ? null : structure.getStructureStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_custom(type, (structure is null) ? null : structure.getStructureStruct())");
		}
		this(cast(GstQuery*) p);
	}
	
	/**
	 * Get the structure of a query.
	 * Returns: the GstStructure of the query. The structure is still owned by the query and will therefore be freed when the query is unreffed. [transfer none]
	 */
	public Structure getStructure()
	{
		// const GstStructure * gst_query_get_structure (GstQuery *query);
		auto p = gst_query_get_structure(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Constructs a new convert query object. Use gst_query_unref()
	 * when done with it. A convert query is used to ask for a conversion between
	 * one format and another.
	 * Free-function: gst_query_unref
	 * Params:
	 * srcFormat = the source GstFormat for the new query
	 * value = the value to convert
	 * destFormat = the target GstFormat
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstFormat srcFormat, long value, GstFormat destFormat)
	{
		// GstQuery * gst_query_new_convert (GstFormat src_format,  gint64 value,  GstFormat dest_format);
		auto p = gst_query_new_convert(srcFormat, value, destFormat);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_convert(srcFormat, value, destFormat)");
		}
		this(cast(GstQuery*) p);
	}
	
	/**
	 * Answer a convert query by setting the requested values.
	 * Params:
	 * srcFormat = the source GstFormat
	 * srcValue = the source value
	 * destFormat = the destination GstFormat
	 * destValue = the destination value
	 */
	public void setConvert(GstFormat srcFormat, long srcValue, GstFormat destFormat, long destValue)
	{
		// void gst_query_set_convert (GstQuery *query,  GstFormat src_format,  gint64 src_value,  GstFormat dest_format,  gint64 dest_value);
		gst_query_set_convert(gstQuery, srcFormat, srcValue, destFormat, destValue);
	}
	
	/**
	 * Parse a convert query answer. Any of src_format, src_value, dest_format,
	 * and dest_value may be NULL, in which case that value is omitted.
	 * Params:
	 * srcFormat = the storage for the GstFormat of the
	 * source value, or NULL. [out][allow-none]
	 * srcValue = the storage for the source value, or NULL. [out][allow-none]
	 * destFormat = the storage for the GstFormat of the
	 * destination value, or NULL. [out][allow-none]
	 * destValue = the storage for the destination value,
	 * or NULL. [out][allow-none]
	 */
	public void parseConvert(ref GstFormat srcFormat, ref long srcValue, ref GstFormat destFormat, ref long destValue)
	{
		// void gst_query_parse_convert (GstQuery *query,  GstFormat *src_format,  gint64 *src_value,  GstFormat *dest_format,  gint64 *dest_value);
		gst_query_parse_convert(gstQuery, &srcFormat, &srcValue, &destFormat, &destValue);
	}
	
	/**
	 * Answer a position query by setting the requested value in the given format.
	 * Params:
	 * format = the requested GstFormat
	 * cur = the position to set
	 */
	public void setPosition(GstFormat format, long cur)
	{
		// void gst_query_set_position (GstQuery *query,  GstFormat format,  gint64 cur);
		gst_query_set_position(gstQuery, format, cur);
	}
	
	/**
	 * Parse a position query, writing the format into format, and the position
	 * into cur, if the respective parameters are non-NULL.
	 * Params:
	 * format = the storage for the GstFormat of the
	 * position values (may be NULL). [out][allow-none]
	 * cur = the storage for the current position (may be NULL). [out][allow-none]
	 */
	public void parsePosition(ref GstFormat format, ref long cur)
	{
		// void gst_query_parse_position (GstQuery *query,  GstFormat *format,  gint64 *cur);
		gst_query_parse_position(gstQuery, &format, &cur);
	}
	
	/**
	 * Answer a duration query by setting the requested value in the given format.
	 * Params:
	 * format = the GstFormat for the duration
	 * duration = the duration of the stream
	 */
	public void setDuration(GstFormat format, long duration)
	{
		// void gst_query_set_duration (GstQuery *query,  GstFormat format,  gint64 duration);
		gst_query_set_duration(gstQuery, format, duration);
	}
	
	/**
	 * Parse a duration query answer. Write the format of the duration into format,
	 * and the value into duration, if the respective variables are non-NULL.
	 * Params:
	 * format = the storage for the GstFormat of the duration
	 * value, or NULL. [out][allow-none]
	 * duration = the storage for the total duration, or NULL. [out][allow-none]
	 */
	public void parseDuration(ref GstFormat format, ref long duration)
	{
		// void gst_query_parse_duration (GstQuery *query,  GstFormat *format,  gint64 *duration);
		gst_query_parse_duration(gstQuery, &format, &duration);
	}
	
	/**
	 * Parse a latency query answer.
	 * Params:
	 * live = storage for live or NULL. [out][allow-none]
	 * minLatency = the storage for the min latency or NULL. [out][allow-none]
	 * maxLatency = the storage for the max latency or NULL. [out][allow-none]
	 */
	public void parseLatency(ref int live, ref GstClockTime minLatency, ref GstClockTime maxLatency)
	{
		// void gst_query_parse_latency (GstQuery *query,  gboolean *live,  GstClockTime *min_latency,  GstClockTime *max_latency);
		gst_query_parse_latency(gstQuery, &live, &minLatency, &maxLatency);
	}
	
	/**
	 * Answer a latency query by setting the requested values in the given format.
	 * Params:
	 * live = if there is a live element upstream
	 * minLatency = the minimal latency of the upstream elements
	 * maxLatency = the maximal latency of the upstream elements
	 */
	public void setLatency(int live, GstClockTime minLatency, GstClockTime maxLatency)
	{
		// void gst_query_set_latency (GstQuery *query,  gboolean live,  GstClockTime min_latency,  GstClockTime max_latency);
		gst_query_set_latency(gstQuery, live, minLatency, maxLatency);
	}
	
	/**
	 * Set the seeking query result fields in query.
	 * Params:
	 * format = the format to set for the segment_start and segment_end values
	 * seekable = the seekable flag to set
	 * segmentStart = the segment_start to set
	 * segmentEnd = the segment_end to set
	 */
	public void setSeeking(GstFormat format, int seekable, long segmentStart, long segmentEnd)
	{
		// void gst_query_set_seeking (GstQuery *query,  GstFormat format,  gboolean seekable,  gint64 segment_start,  gint64 segment_end);
		gst_query_set_seeking(gstQuery, format, seekable, segmentStart, segmentEnd);
	}
	
	/**
	 * Parse a seeking query, writing the format into format, and
	 * other results into the passed parameters, if the respective parameters
	 * are non-NULL
	 * Params:
	 * format = the format to set for the segment_start
	 * and segment_end values, or NULL. [out][allow-none]
	 * seekable = the seekable flag to set, or NULL. [out][allow-none]
	 * segmentStart = the segment_start to set, or NULL. [out][allow-none]
	 * segmentEnd = the segment_end to set, or NULL. [out][allow-none]
	 */
	public void parseSeeking(ref GstFormat format, ref int seekable, ref long segmentStart, ref long segmentEnd)
	{
		// void gst_query_parse_seeking (GstQuery *query,  GstFormat *format,  gboolean *seekable,  gint64 *segment_start,  gint64 *segment_end);
		gst_query_parse_seeking(gstQuery, &format, &seekable, &segmentStart, &segmentEnd);
	}
	
	/**
	 * Set the formats query result fields in query. The number of formats passed
	 * in the formats array must be equal to n_formats.
	 * Params:
	 * formats = an array containing n_formats
	 * GstFormat values. [in][array length=n_formats]
	 */
	public void setFormatsv(GstFormat[] formats)
	{
		// void gst_query_set_formatsv (GstQuery *query,  gint n_formats,  const GstFormat *formats);
		gst_query_set_formatsv(gstQuery, cast(int) formats.length, formats.ptr);
	}
	
	/**
	 * Parse the number of formats in the formats query.
	 * Params:
	 * nFormats = the number of formats in this query. [out][allow-none]
	 */
	public void parseNFormats(out uint nFormats)
	{
		// void gst_query_parse_n_formats (GstQuery *query,  guint *n_formats);
		gst_query_parse_n_formats(gstQuery, &nFormats);
	}
	
	/**
	 * Parse the format query and retrieve the nth format from it into
	 * format. If the list contains less elements than nth, format will be
	 * set to GST_FORMAT_UNDEFINED.
	 * Params:
	 * nth = the nth format to retrieve. [out]
	 * format = a pointer to store the nth format. [out][allow-none]
	 */
	public void parseNthFormat(uint nth, out GstFormat format)
	{
		// void gst_query_parse_nth_format (GstQuery *query,  guint nth,  GstFormat *format);
		gst_query_parse_nth_format(gstQuery, nth, &format);
	}
	
	/**
	 * Answer a segment query by setting the requested values. The normal
	 * playback segment of a pipeline is 0 to duration at the default rate of
	 * 1.0. If a seek was performed on the pipeline to play a different
	 * segment, this query will return the range specified in the last seek.
	 * start_value and stop_value will respectively contain the configured
	 * playback range start and stop values expressed in format.
	 * The values are always between 0 and the duration of the media and
	 * start_value <= stop_value. rate will contain the playback rate. For
	 * negative rates, playback will actually happen from stop_value to
	 * start_value.
	 * Params:
	 * rate = the rate of the segment
	 * format = the GstFormat of the segment values (start_value and stop_value)
	 * startValue = the start value
	 * stopValue = the stop value
	 */
	public void setSegment(double rate, GstFormat format, long startValue, long stopValue)
	{
		// void gst_query_set_segment (GstQuery *query,  gdouble rate,  GstFormat format,  gint64 start_value,  gint64 stop_value);
		gst_query_set_segment(gstQuery, rate, format, startValue, stopValue);
	}
	
	/**
	 * Parse a segment query answer. Any of rate, format, start_value, and
	 * stop_value may be NULL, which will cause this value to be omitted.
	 * See gst_query_set_segment() for an explanation of the function arguments.
	 * Params:
	 * rate = the storage for the rate of the segment, or NULL. [out][allow-none]
	 * format = the storage for the GstFormat of the values,
	 * or NULL. [out][allow-none]
	 * startValue = the storage for the start value, or NULL. [out][allow-none]
	 * stopValue = the storage for the stop value, or NULL. [out][allow-none]
	 */
	public void parseSegment(ref double rate, ref GstFormat format, ref long startValue, ref long stopValue)
	{
		// void gst_query_parse_segment (GstQuery *query,  gdouble *rate,  GstFormat *format,  gint64 *start_value,  gint64 *stop_value);
		gst_query_parse_segment(gstQuery, &rate, &format, &startValue, &stopValue);
	}
	
	/**
	 * Constructs a new query object for querying the caps.
	 * The CAPS query should return the allowable caps for a pad in the context
	 * of the element's state, its link to other elements, and the devices or files
	 * it has opened. These caps must be a subset of the pad template caps. In the
	 * NULL state with no links, the CAPS query should ideally return the same caps
	 * as the pad template. In rare circumstances, an object property can affect
	 * the caps returned by the CAPS query, but this is discouraged.
	 * For most filters, the caps returned by CAPS query is directly affected by the
	 * allowed caps on other pads. For demuxers and decoders, the caps returned by
	 * the srcpad's getcaps function is directly related to the stream data. Again,
	 * the CAPS query should return the most specific caps it reasonably can, since this
	 * helps with autoplugging.
	 * The filter is used to restrict the result caps, only the caps matching
	 * filter should be returned from the CAPS query. Specifying a filter might
	 * greatly reduce the amount of processing an element needs to do.
	 * Free-function: gst_query_unref
	 * Params:
	 * filter = a filter
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Caps filter)
	{
		// GstQuery * gst_query_new_caps (GstCaps *filter);
		auto p = gst_query_new_caps((filter is null) ? null : filter.getCapsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_caps((filter is null) ? null : filter.getCapsStruct())");
		}
		this(cast(GstQuery*) p);
	}
	
	/**
	 * Get the filter from the caps query. The caps remains valid as long as
	 * query remains valid.
	 * Params:
	 * filter = A pointer to the caps filter. [out]
	 */
	public void parseCaps(out Caps filter)
	{
		// void gst_query_parse_caps (GstQuery *query,  GstCaps **filter);
		GstCaps* outfilter = null;
		
		gst_query_parse_caps(gstQuery, &outfilter);
		
		filter = ObjectG.getDObject!(Caps)(outfilter);
	}
	
	/**
	 * Set the caps result in query.
	 * Params:
	 * caps = A pointer to the caps. [in]
	 */
	public void setCapsResult(Caps caps)
	{
		// void gst_query_set_caps_result (GstQuery *query,  GstCaps *caps);
		gst_query_set_caps_result(gstQuery, (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Get the caps result from query. The caps remains valid as long as
	 * query remains valid.
	 * Params:
	 * caps = A pointer to the caps. [out]
	 */
	public void parseCapsResult(out Caps caps)
	{
		// void gst_query_parse_caps_result (GstQuery *query,  GstCaps **caps);
		GstCaps* outcaps = null;
		
		gst_query_parse_caps_result(gstQuery, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}
	
	/**
	 * Get the caps from query. The caps remains valid as long as query remains
	 * valid.
	 * Params:
	 * caps = A pointer to the caps. [out]
	 */
	public void parseAcceptCaps(out Caps caps)
	{
		// void gst_query_parse_accept_caps (GstQuery *query,  GstCaps **caps);
		GstCaps* outcaps = null;
		
		gst_query_parse_accept_caps(gstQuery, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}
	
	/**
	 * Set result as the result for the query.
	 * Params:
	 * result = the result to set
	 */
	public void setAcceptCapsResult(int result)
	{
		// void gst_query_set_accept_caps_result (GstQuery *query,  gboolean result);
		gst_query_set_accept_caps_result(gstQuery, result);
	}
	
	/**
	 * Parse the result from query and store in result.
	 * Params:
	 * result = location for the result
	 */
	public void parseAcceptCapsResult(out int result)
	{
		// void gst_query_parse_accept_caps_result (GstQuery *query,  gboolean *result);
		gst_query_parse_accept_caps_result(gstQuery, &result);
	}
	
	/**
	 * Constructs a new query object for querying the buffering status of
	 * a stream.
	 * Free-function: gst_query_unref
	 * Params:
	 * format = the default GstFormat for the new query
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GstFormat format)
	{
		// GstQuery * gst_query_new_buffering (GstFormat format);
		auto p = gst_query_new_buffering(format);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_buffering(format)");
		}
		this(cast(GstQuery*) p);
	}
	
	/**
	 * Set the percentage of buffered data. This is a value between 0 and 100.
	 * The busy indicator is TRUE when the buffering is in progress.
	 * Params:
	 * busy = if buffering is busy
	 * percent = a buffering percent
	 */
	public void setBufferingPercent(int busy, int percent)
	{
		// void gst_query_set_buffering_percent (GstQuery *query,  gboolean busy,  gint percent);
		gst_query_set_buffering_percent(gstQuery, busy, percent);
	}
	
	/**
	 * Get the percentage of buffered data. This is a value between 0 and 100.
	 * The busy indicator is TRUE when the buffering is in progress.
	 * Params:
	 * busy = if buffering is busy, or NULL. [out][allow-none]
	 * percent = a buffering percent, or NULL. [out][allow-none]
	 */
	public void parseBufferingPercent(out int busy, out int percent)
	{
		// void gst_query_parse_buffering_percent (GstQuery *query,  gboolean *busy,  gint *percent);
		gst_query_parse_buffering_percent(gstQuery, &busy, &percent);
	}
	
	/**
	 * Configures the buffering stats values in query.
	 * Params:
	 * mode = a buffering mode
	 * avgIn = the average input rate
	 * avgOut = the average output rate
	 * bufferingLeft = amount of buffering time left in milliseconds
	 */
	public void setBufferingStats(GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft)
	{
		// void gst_query_set_buffering_stats (GstQuery *query,  GstBufferingMode mode,  gint avg_in,  gint avg_out,  gint64 buffering_left);
		gst_query_set_buffering_stats(gstQuery, mode, avgIn, avgOut, bufferingLeft);
	}
	
	/**
	 * Extracts the buffering stats values from query.
	 * Params:
	 * mode = a buffering mode, or NULL. [out][allow-none]
	 * avgIn = the average input rate, or NULL. [out][allow-none]
	 * avgOut = the average output rat, or NULLe. [out][allow-none]
	 * bufferingLeft = amount of buffering time left in
	 * milliseconds, or NULL. [out][allow-none]
	 */
	public void parseBufferingStats(out GstBufferingMode mode, out int avgIn, out int avgOut, out long bufferingLeft)
	{
		// void gst_query_parse_buffering_stats (GstQuery *query,  GstBufferingMode *mode,  gint *avg_in,  gint *avg_out,  gint64 *buffering_left);
		gst_query_parse_buffering_stats(gstQuery, &mode, &avgIn, &avgOut, &bufferingLeft);
	}
	
	/**
	 * Set the available query result fields in query.
	 * Params:
	 * format = the format to set for the start and stop values
	 * start = the start to set
	 * stop = the stop to set
	 * estimatedTotal = estimated total amount of download time
	 */
	public void setBufferingRange(GstFormat format, long start, long stop, long estimatedTotal)
	{
		// void gst_query_set_buffering_range (GstQuery *query,  GstFormat format,  gint64 start,  gint64 stop,  gint64 estimated_total);
		gst_query_set_buffering_range(gstQuery, format, start, stop, estimatedTotal);
	}
	
	/**
	 * Parse an available query, writing the format into format, and
	 * other results into the passed parameters, if the respective parameters
	 * are non-NULL
	 * Params:
	 * format = the format to set for the segment_start
	 * and segment_end values, or NULL. [out][allow-none]
	 * start = the start to set, or NULL. [out][allow-none]
	 * stop = the stop to set, or NULL. [out][allow-none]
	 * estimatedTotal = estimated total amount of download
	 * time, or NULL. [out][allow-none]
	 */
	public void parseBufferingRange(out GstFormat format, out long start, out long stop, out long estimatedTotal)
	{
		// void gst_query_parse_buffering_range (GstQuery *query,  GstFormat *format,  gint64 *start,  gint64 *stop,  gint64 *estimated_total);
		gst_query_parse_buffering_range(gstQuery, &format, &start, &stop, &estimatedTotal);
	}
	
	/**
	 * Set the buffering-ranges array field in query. The current last
	 * start position of the array should be inferior to start.
	 * Params:
	 * start = start position of the range
	 * stop = stop position of the range
	 * Returns: a gboolean indicating if the range was added or not.
	 */
	public int addBufferingRange(long start, long stop)
	{
		// gboolean gst_query_add_buffering_range (GstQuery *query,  gint64 start,  gint64 stop);
		return gst_query_add_buffering_range(gstQuery, start, stop);
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * buffered-ranges array of the query's structure.
	 * Returns: the range array size as a guint.
	 */
	public uint getNBufferingRanges()
	{
		// guint gst_query_get_n_buffering_ranges (GstQuery *query);
		return gst_query_get_n_buffering_ranges(gstQuery);
	}
	
	/**
	 * Parse an available query and get the start and stop values stored
	 * at the index of the buffered ranges array.
	 * Params:
	 * index = position in the buffered-ranges array to read
	 * start = the start position to set, or NULL. [out][allow-none]
	 * stop = the stop position to set, or NULL. [out][allow-none]
	 * Returns: a gboolean indicating if the parsing succeeded.
	 */
	public int parseNthBufferingRange(uint index, out long start, out long stop)
	{
		// gboolean gst_query_parse_nth_buffering_range (GstQuery *query,  guint index,  gint64 *start,  gint64 *stop);
		return gst_query_parse_nth_buffering_range(gstQuery, index, &start, &stop);
	}
	
	/**
	 * Parse an URI query, writing the URI into uri as a newly
	 * allocated string, if the respective parameters are non-NULL.
	 * Free the string with g_free() after usage.
	 * Params:
	 * uri = the storage for the current URI
	 * (may be NULL). [out callee-allocates][allow-none]
	 */
	public void parseUri(out string uri)
	{
		// void gst_query_parse_uri (GstQuery *query,  gchar **uri);
		char* outuri = null;
		
		gst_query_parse_uri(gstQuery, &outuri);
		
		uri = Str.toString(outuri);
	}
	
	/**
	 * Answer a URI query by setting the requested URI.
	 * Params:
	 * uri = the URI to set
	 */
	public void setUri(string uri)
	{
		// void gst_query_set_uri (GstQuery *query,  const gchar *uri);
		gst_query_set_uri(gstQuery, Str.toStringz(uri));
	}
	
	/**
	 * Constructs a new query object for querying the allocation properties.
	 * Free-function: gst_query_unref
	 * Params:
	 * caps = the negotiated caps
	 * needPool = return a pool
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Caps caps, int needPool)
	{
		// GstQuery * gst_query_new_allocation (GstCaps *caps,  gboolean need_pool);
		auto p = gst_query_new_allocation((caps is null) ? null : caps.getCapsStruct(), needPool);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_allocation((caps is null) ? null : caps.getCapsStruct(), needPool)");
		}
		this(cast(GstQuery*) p);
	}
	
	/**
	 * Parse an allocation query, writing the requested caps in caps and
	 * whether a pool is needed in need_pool, if the respective parameters
	 * are non-NULL.
	 * Params:
	 * caps = The GstCaps. [out][transfer none][allow-none]
	 * needPool = Whether a GstBufferPool is needed. [out][allow-none]
	 */
	public void parseAllocation(out Caps caps, out int needPool)
	{
		// void gst_query_parse_allocation (GstQuery *query,  GstCaps **caps,  gboolean *need_pool);
		GstCaps* outcaps = null;
		
		gst_query_parse_allocation(gstQuery, &outcaps, &needPool);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}
	
	/**
	 * Set the pool parameters in query.
	 * Params:
	 * pool = the GstBufferPool
	 * size = the size
	 * minBuffers = the min buffers
	 * maxBuffers = the max buffers
	 */
	public void addAllocationPool(BufferPool pool, uint size, uint minBuffers, uint maxBuffers)
	{
		// void gst_query_add_allocation_pool (GstQuery *query,  GstBufferPool *pool,  guint size,  guint min_buffers,  guint max_buffers);
		gst_query_add_allocation_pool(gstQuery, (pool is null) ? null : pool.getBufferPoolStruct(), size, minBuffers, maxBuffers);
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * pool array of the query's structure.
	 * Returns: the pool array size as a guint.
	 */
	public uint getNAllocationPools()
	{
		// guint gst_query_get_n_allocation_pools (GstQuery *query);
		return gst_query_get_n_allocation_pools(gstQuery);
	}
	
	/**
	 * Get the pool parameters in query.
	 * Unref pool with gst_object_unref() when it's not needed any more.
	 * Params:
	 * index = index to parse
	 * pool = the GstBufferPool. [out][allow-none][transfer full]
	 * size = the size. [out][allow-none]
	 * minBuffers = the min buffers. [out][allow-none]
	 * maxBuffers = the max buffers. [out][allow-none]
	 */
	public void parseNthAllocationPool(uint index, out BufferPool pool, out uint size, out uint minBuffers, out uint maxBuffers)
	{
		// void gst_query_parse_nth_allocation_pool (GstQuery *query,  guint index,  GstBufferPool **pool,  guint *size,  guint *min_buffers,  guint *max_buffers);
		GstBufferPool* outpool = null;
		
		gst_query_parse_nth_allocation_pool(gstQuery, index, &outpool, &size, &minBuffers, &maxBuffers);
		
		pool = ObjectG.getDObject!(BufferPool)(outpool);
	}
	
	/**
	 * Set the pool parameters in query.
	 * Params:
	 * index = index to modify
	 * pool = the GstBufferPool
	 * size = the size
	 * minBuffers = the min buffers
	 * maxBuffers = the max buffers
	 */
	public void setNthAllocationPool(uint index, BufferPool pool, uint size, uint minBuffers, uint maxBuffers)
	{
		// void gst_query_set_nth_allocation_pool (GstQuery *query,  guint index,  GstBufferPool *pool,  guint size,  guint min_buffers,  guint max_buffers);
		gst_query_set_nth_allocation_pool(gstQuery, index, (pool is null) ? null : pool.getBufferPoolStruct(), size, minBuffers, maxBuffers);
	}
	
	/**
	 * Add allocator and its params as a supported memory allocator.
	 * Params:
	 * allocator = the memory allocator. [transfer none][allow-none]
	 * params = a GstAllocationParams. [transfer none][allow-none]
	 */
	public void addAllocationParam(Allocator allocator, GstAllocationParams* params)
	{
		// void gst_query_add_allocation_param (GstQuery *query,  GstAllocator *allocator,  const GstAllocationParams *params);
		gst_query_add_allocation_param(gstQuery, (allocator is null) ? null : allocator.getAllocatorStruct(), params);
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * allocator params array of the query's structure.
	 * If no memory allocator is specified, the downstream element can handle
	 * the default memory allocator.
	 * Returns: the allocator array size as a guint.
	 */
	public uint getNAllocationParams()
	{
		// guint gst_query_get_n_allocation_params (GstQuery *query);
		return gst_query_get_n_allocation_params(gstQuery);
	}
	
	/**
	 * Parse an available query and get the alloctor and its params
	 * at index of the allocator array.
	 * Params:
	 * index = position in the allocator array to read
	 * allocator = variable to hold the result. [out][transfer none][allow-none]
	 * params = parameters for the allocator. [out][allow-none]
	 */
	public void parseNthAllocationParam(uint index, out Allocator allocator, out GstAllocationParams params)
	{
		// void gst_query_parse_nth_allocation_param  (GstQuery *query,  guint index,  GstAllocator **allocator,  GstAllocationParams *params);
		GstAllocator* outallocator = null;
		
		gst_query_parse_nth_allocation_param(gstQuery, index, &outallocator, &params);
		
		allocator = ObjectG.getDObject!(Allocator)(outallocator);
	}
	
	/**
	 * Parse an available query and get the alloctor and its params
	 * at index of the allocator array.
	 * Params:
	 * index = position in the allocator array to set
	 * allocator = new allocator to set. [transfer none][allow-none]
	 * params = parameters for the allocator. [transfer none][allow-none]
	 */
	public void setNthAllocationParam(uint index, out GstAllocator allocator, out GstAllocationParams params)
	{
		// void gst_query_set_nth_allocation_param (GstQuery *query,  guint index,  GstAllocator *allocator,  const GstAllocationParams *params);
		gst_query_set_nth_allocation_param(gstQuery, index, &allocator, &params);
	}
	
	/**
	 * Add api with params as one of the supported metadata API to query.
	 * Params:
	 * api = the metadata API
	 * params = API specific parameters. [transfer none][allow-none]
	 */
	public void addAllocationMeta(GType api, Structure params)
	{
		// void gst_query_add_allocation_meta (GstQuery *query,  GType api,  const GstStructure *params);
		gst_query_add_allocation_meta(gstQuery, api, (params is null) ? null : params.getStructureStruct());
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * meta API array of the query's structure.
	 * Returns: the metadata API array size as a guint.
	 */
	public uint getNAllocationMetas()
	{
		// guint gst_query_get_n_allocation_metas (GstQuery *query);
		return gst_query_get_n_allocation_metas(gstQuery);
	}
	
	/**
	 * Parse an available query and get the metadata API
	 * at index of the metadata API array.
	 * Params:
	 * index = position in the metadata API array to read
	 * params = API specific flags. [out][allow-none]
	 * Returns: a GType of the metadata API at index.
	 */
	public GType parseNthAllocationMeta(uint index, out Structure params)
	{
		// GType gst_query_parse_nth_allocation_meta (GstQuery *query,  guint index,  const GstStructure **params);
		GstStructure* outparams = null;
		
		auto p = gst_query_parse_nth_allocation_meta(gstQuery, index, &outparams);
		
		params = ObjectG.getDObject!(Structure)(outparams);
		return p;
	}
	
	/**
	 * Remove the metadata API at index of the metadata API array.
	 * Params:
	 * index = position in the metadata API array to remove
	 */
	public void removeNthAllocationMeta(uint index)
	{
		// void gst_query_remove_nth_allocation_meta  (GstQuery *query,  guint index);
		gst_query_remove_nth_allocation_meta(gstQuery, index);
	}
	
	/**
	 * Check if query has metadata api set. When this function returns TRUE,
	 * index will contain the index where the requested API and the flags can be
	 * found.
	 * Params:
	 * api = the metadata API
	 * index = the index. [out][allow-none]
	 * Returns: TRUE when api is in the list of metadata.
	 */
	public int findAllocationMeta(GType api, out uint index)
	{
		// gboolean gst_query_find_allocation_meta (GstQuery *query,  GType api,  guint *index);
		return gst_query_find_allocation_meta(gstQuery, api, &index);
	}
	
	/**
	 * Set the scheduling properties.
	 * Params:
	 * flags = GstSchedulingFlags. [out][allow-none]
	 * minsize = the suggested minimum size of pull requests. [out][allow-none]
	 * maxsize = the suggested maximum size of pull requests:. [out][allow-none]
	 */
	public void parseScheduling(out GstSchedulingFlags flags, out int minsize, out int maxsize, out int alig)
	{
		// void gst_query_parse_scheduling (GstQuery *query,  GstSchedulingFlags *flags,  gint *minsize,  gint *maxsize,  gint *align);
		gst_query_parse_scheduling(gstQuery, &flags, &minsize, &maxsize, &alig);
	}
	
	/**
	 * Set the scheduling properties.
	 * Params:
	 * flags = GstSchedulingFlags
	 * minsize = the suggested minimum size of pull requests
	 * maxsize = the suggested maximum size of pull requests
	 */
	public void setScheduling(GstSchedulingFlags flags, int minsize, int maxsize, int alig)
	{
		// void gst_query_set_scheduling (GstQuery *query,  GstSchedulingFlags flags,  gint minsize,  gint maxsize,  gint align);
		gst_query_set_scheduling(gstQuery, flags, minsize, maxsize, alig);
	}
	
	/**
	 * Add mode as aone of the supported scheduling modes to query.
	 * Params:
	 * mode = a GstPadMode
	 */
	public void addSchedulingMode(GstPadMode mode)
	{
		// void gst_query_add_scheduling_mode (GstQuery *query,  GstPadMode mode);
		gst_query_add_scheduling_mode(gstQuery, mode);
	}
	
	/**
	 * Retrieve the number of values currently stored in the
	 * scheduling mode array of the query's structure.
	 * Returns: the scheduling mode array size as a guint.
	 */
	public uint getNSchedulingModes()
	{
		// guint gst_query_get_n_scheduling_modes (GstQuery *query);
		return gst_query_get_n_scheduling_modes(gstQuery);
	}
	
	/**
	 * Parse an available query and get the scheduling mode
	 * at index of the scheduling modes array.
	 * Params:
	 * index = position in the scheduling modes array to read
	 * Returns: a GstPadMode of the scheduling mode at index.
	 */
	public GstPadMode parseNthSchedulingMode(uint index)
	{
		// GstPadMode gst_query_parse_nth_scheduling_mode (GstQuery *query,  guint index);
		return gst_query_parse_nth_scheduling_mode(gstQuery, index);
	}
	
	/**
	 * Check if query has scheduling mode set.
	 * Note
	 *  When checking if upstream supports pull mode, it is usually not
	 *  enough to just check for GST_PAD_MODE_PULL with this function, you
	 *  also want to check whether the scheduling flags returned by
	 *  gst_query_parse_scheduling() have the seeking flag set (meaning
	 *  random access is supported, not only sequential pulls).
	 * Params:
	 * mode = the scheduling mode
	 * Returns: TRUE when mode is in the list of scheduling modes.
	 */
	public int hasSchedulingMode(GstPadMode mode)
	{
		// gboolean gst_query_has_scheduling_mode (GstQuery *query,  GstPadMode mode);
		return gst_query_has_scheduling_mode(gstQuery, mode);
	}
	
	/**
	 * Check if query has scheduling mode set and flags is set in
	 * query scheduling flags.
	 * Params:
	 * mode = the scheduling mode
	 * flags = GstSchedulingFlags
	 * Returns: TRUE when mode is in the list of scheduling modes and flags are compatible with query flags.
	 */
	public int hasSchedulingModeWithFlags(GstPadMode mode, GstSchedulingFlags flags)
	{
		// gboolean gst_query_has_scheduling_mode_with_flags  (GstQuery *query,  GstPadMode mode,  GstSchedulingFlags flags);
		return gst_query_has_scheduling_mode_with_flags(gstQuery, mode, flags);
	}
}
