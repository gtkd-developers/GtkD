/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_query_new_position
 * 	- gst_query_new_duration
 * 	- gst_query_new_seeking
 * 	- gst_query_new_formats
 * 	- gst_query_new_segment
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstQuery* -> Query
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 */

module gstreamer.Query;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import gstreamer.Structure;




/**
 * Description
 * GstQuery functions are used to register a new query types to the gstreamer
 * core.
 * Query types can be used to perform queries on pads and elements.
 * Queries can be created using the gst_query_new_xxx() functions.
 * Query values can be set using gst_query_set_xxx(), and parsed using
 * gst_query_parse_xxx() helpers.
 * The following example shows how to query the duration of a pipeline:
 * Example13.Query duration on a pipeline
 *  GstQuery *query;
 *  gboolean res;
 *  query = gst_query_new_duration (GST_FORMAT_TIME);
 *  res = gst_element_query (pipeline, query);
 *  if (res) {
	 *  gint64 duration;
	 *  gst_query_parse_duration (query, NULL, duration);
	 *  g_print ("duration = %"GST_TIME_FORMAT, GST_TIME_ARGS (duration));
 *  }
 *  else {
	 *  g_print ("duration query failed...");
 *  }
 *  gst_query_unref (query);
 * Last reviewed on 2006-02-14 (0.10.4)
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
		version(noAssert)
		{
			if ( gstQuery is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstQuery is null on constructor").newline;
				}
				else
				{
					printf("struct gstQuery is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstQuery !is null, "struct gstQuery is null on constructor");
		}
		this.gstQuery = gstQuery;
	}
	
	/**
	 * Constructs a new query stream position query object. Use gst_query_unref()
	 * when done with it. A position query is used to query the current position
	 * of playback in the streams, in some format.
	 * format:
	 *  the default GstFormat for the new query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newPosition(GstFormat format)
	{
		// GstQuery* gst_query_new_position (GstFormat format);
		return new Query( cast(GstQuery*)gst_query_new_position(format) );
	}	/**
	 * Constructs a new stream duration query object to query in the given format.
	 * Use gst_query_unref() when done with it. A duration query will give the
	 * total length of the stream.
	 * format:
	 *  the GstFormat for this duration query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newDuration(GstFormat format)
	{
		// GstQuery* gst_query_new_duration (GstFormat format);
		return new Query( cast(GstQuery*)gst_query_new_duration(format) );
	}	/**
	 * Constructs a new query object for querying seeking properties of
	 * the stream.
	 * format:
	 *  the default GstFormat for the new query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newSeeking(GstFormat format)
	{
		// GstQuery* gst_query_new_seeking (GstFormat format);
		return new Query(cast(GstQuery*)gst_query_new_seeking(format) );
	}	/**
	 * Constructs a new query object for querying formats of
	 * the stream.
	 * Returns:
	 *  A GstQuery
	 * Since 0.10.4
	 */
	public static Query newFormats()
	{
		// GstQuery* gst_query_new_formats (void);
		return new Query(cast(GstQuery*)gst_query_new_formats() );
	}	/**
	 * Constructs a new segment query object. Use gst_query_unref()
	 * when done with it. A segment query is used to discover information about the
	 * currently configured segment for playback.
	 * format:
	 *  the GstFormat for the new query
	 * Returns:
	 *  a GstQuery
	 */
	public static Query newSegment(GstFormat format)
	{
		// GstQuery* gst_query_new_segment (GstFormat format);
		return new Query(cast(GstQuery*)gst_query_new_segment(format) );
	}
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Get a printable name for the given query type. Do not modify or free.
	 * query:
	 *  the query type
	 * Returns:
	 *  a reference to the static name of the query.
	 */
	public static char[] typeGetName(GstQueryType query)
	{
		// const gchar* gst_query_type_get_name (GstQueryType query);
		return Str.toString(gst_query_type_get_name(query) );
	}
	
	/**
	 * Get the unique quark for the given query type.
	 * query:
	 *  the query type
	 * Returns:
	 *  the quark associated with the query type
	 */
	public static GQuark typeToQuark(GstQueryType query)
	{
		// GQuark gst_query_type_to_quark (GstQueryType query);
		return gst_query_type_to_quark(query);
	}
	
	/**
	 * Create a new GstQueryType based on the nick or return an
	 * already registered query with that nick
	 * nick:
	 *  The nick of the new query
	 * description:
	 *  The description of the new query
	 * Returns:
	 *  A new GstQueryType or an already registered query
	 * with the same nick.
	 */
	public static GstQueryType typeRegister(char[] nick, char[] description)
	{
		// GstQueryType gst_query_type_register (const gchar *nick,  const gchar *description);
		return gst_query_type_register(Str.toStringz(nick), Str.toStringz(description));
	}
	
	/**
	 * Get the query type registered with nick.
	 * nick:
	 *  The nick of the query
	 * Returns:
	 *  The query registered with nick or GST_QUERY_NONE
	 * if the query was not registered.
	 */
	public static GstQueryType typeGetByNick(char[] nick)
	{
		// GstQueryType gst_query_type_get_by_nick (const gchar *nick);
		return gst_query_type_get_by_nick(Str.toStringz(nick));
	}
	
	/**
	 * See if the given GstQueryType is inside the types query types array.
	 * types:
	 *  The query array to search
	 * type:
	 *  the GstQueryType to find
	 * Returns:
	 *  TRUE if the type is found inside the array
	 */
	public static int typesContains(GstQueryType* types, GstQueryType type)
	{
		// gboolean gst_query_types_contains (const GstQueryType *types,  GstQueryType type);
		return gst_query_types_contains(types, type);
	}
	
	/**
	 * Get details about the given GstQueryType.
	 * type:
	 *  a GstQueryType
	 * Returns:
	 *  The GstQueryTypeDefinition for type or NULL on failure.
	 */
	public static GstQueryTypeDefinition* typeGetDetails(GstQueryType type)
	{
		// const GstQueryTypeDefinition* gst_query_type_get_details  (GstQueryType type);
		return gst_query_type_get_details(type);
	}
	
	/**
	 * Get a GstIterator of all the registered query types. The definitions
	 * iterated over are read only.
	 * Returns:
	 *  A GstIterator of GstQueryTypeDefinition.
	 */
	public static GstIterator* typeIterateDefinitions()
	{
		// GstIterator* gst_query_type_iterate_definitions  (void);
		return gst_query_type_iterate_definitions();
	}
	
	
	
	
	
	/**
	 * Constructs a new custom application query object. Use gst_query_unref()
	 * when done with it.
	 * type:
	 *  the query type
	 * structure:
	 *  a structure for the query
	 * Returns:
	 *  a GstQuery
	 */
	public this (GstQueryType type, Structure structure)
	{
		// GstQuery* gst_query_new_application (GstQueryType type,  GstStructure *structure);
		this(cast(GstQuery*)gst_query_new_application(type, (structure is null) ? null : structure.getStructureStruct()) );
	}
	
	/**
	 * Get the structure of a query.
	 * query:
	 *  a GstQuery
	 * Returns:
	 *  The GstStructure of the query. The structure is still owned
	 * by the query and will therefore be freed when the query is unreffed.
	 */
	public Structure getStructure()
	{
		// GstStructure* gst_query_get_structure (GstQuery *query);
		return new Structure( gst_query_get_structure(gstQuery) );
	}
	
	/**
	 * Constructs a new convert query object. Use gst_query_unref()
	 * when done with it. A convert query is used to ask for a conversion between
	 * one format and another.
	 * src_format:
	 *  the source GstFormat for the new query
	 * value:
	 *  the value to convert
	 * dest_format:
	 *  the target GstFormat
	 * Returns:
	 *  A GstQuery
	 */
	public this (GstFormat srcFormat, long value, GstFormat destFormat)
	{
		// GstQuery* gst_query_new_convert (GstFormat src_format,  gint64 value,  GstFormat dest_format);
		this(cast(GstQuery*)gst_query_new_convert(srcFormat, value, destFormat) );
	}
	
	/**
	 * Answer a convert query by setting the requested values.
	 * query:
	 *  a GstQuery
	 * src_format:
	 *  the source GstFormat
	 * src_value:
	 *  the source value
	 * dest_format:
	 *  the destination GstFormat
	 * dest_value:
	 *  the destination value
	 */
	public void setConvert(GstFormat srcFormat, long srcValue, GstFormat destFormat, long destValue)
	{
		// void gst_query_set_convert (GstQuery *query,  GstFormat src_format,  gint64 src_value,  GstFormat dest_format,  gint64 dest_value);
		gst_query_set_convert(gstQuery, srcFormat, srcValue, destFormat, destValue);
	}
	
	/**
	 * Parse a convert query answer. Any of src_format, src_value, dest_format,
	 * and dest_value may be NULL, in which case that value is omitted.
	 * query:
	 *  a GstQuery
	 * src_format:
	 *  the storage for the GstFormat of the source value, or NULL
	 * src_value:
	 *  the storage for the source value, or NULL
	 * dest_format:
	 *  the storage for the GstFormat of the destination value, or NULL
	 * dest_value:
	 *  the storage for the destination value, or NULL
	 */
	public void parseConvert(GstFormat* srcFormat, long* srcValue, GstFormat* destFormat, long* destValue)
	{
		// void gst_query_parse_convert (GstQuery *query,  GstFormat *src_format,  gint64 *src_value,  GstFormat *dest_format,  gint64 *dest_value);
		gst_query_parse_convert(gstQuery, srcFormat, srcValue, destFormat, destValue);
	}
	
	
	/**
	 * Answer a position query by setting the requested value in the given format.
	 * query:
	 *  a GstQuery with query type GST_QUERY_POSITION
	 * format:
	 *  the requested GstFormat
	 * cur:
	 *  the position to set
	 */
	public void setPosition(GstFormat format, long cur)
	{
		// void gst_query_set_position (GstQuery *query,  GstFormat format,  gint64 cur);
		gst_query_set_position(gstQuery, format, cur);
	}
	
	/**
	 * Parse a position query, writing the format into format, and the position
	 * into cur, if the respective parameters are non-NULL.
	 * query:
	 *  a GstQuery
	 * format:
	 *  the storage for the GstFormat of the position values (may be NULL)
	 * cur:
	 *  the storage for the current position (may be NULL)
	 */
	public void parsePosition(GstFormat* format, long* cur)
	{
		// void gst_query_parse_position (GstQuery *query,  GstFormat *format,  gint64 *cur);
		gst_query_parse_position(gstQuery, format, cur);
	}
	
	
	/**
	 * Answer a duration query by setting the requested value in the given format.
	 * query:
	 *  a GstQuery
	 * format:
	 *  the GstFormat for the duration
	 * duration:
	 *  the duration of the stream
	 */
	public void setDuration(GstFormat format, long duration)
	{
		// void gst_query_set_duration (GstQuery *query,  GstFormat format,  gint64 duration);
		gst_query_set_duration(gstQuery, format, duration);
	}
	
	/**
	 * Parse a duration query answer. Write the format of the duration into format,
	 * and the value into duration, if the respective variables are non-NULL.
	 * query:
	 *  a GstQuery
	 * format:
	 *  the storage for the GstFormat of the duration value, or NULL.
	 * duration:
	 *  the storage for the total duration, or NULL.
	 */
	public void parseDuration(GstFormat* format, long* duration)
	{
		// void gst_query_parse_duration (GstQuery *query,  GstFormat *format,  gint64 *duration);
		gst_query_parse_duration(gstQuery, format, duration);
	}
	
	/**
	 * Constructs a new latency query object.
	 * Use gst_query_unref() when done with it. A latency query is usually performed
	 * by sinks to compensate for additional latency introduced by elements in the
	 * pipeline.
	 * Returns:
	 *  A GstQuery
	 * Since 0.10.12
	 */
	public this ()
	{
		// GstQuery* gst_query_new_latency (void);
		this(cast(GstQuery*)gst_query_new_latency() );
	}
	
	/**
	 * Parse a latency query answer.
	 * query:
	 *  a GstQuery
	 * live:
	 *  storage for live or NULL
	 * min_latency:
	 *  the storage for the min latency or NULL
	 * max_latency:
	 *  the storage for the max latency or NULL
	 * Since 0.10.12
	 */
	public void parseLatency(int* live, GstClockTime* minLatency, GstClockTime* maxLatency)
	{
		// void gst_query_parse_latency (GstQuery *query,  gboolean *live,  GstClockTime *min_latency,  GstClockTime *max_latency);
		gst_query_parse_latency(gstQuery, live, minLatency, maxLatency);
	}
	
	/**
	 * Answer a latency query by setting the requested values in the given format.
	 * query:
	 *  a GstQuery
	 * live:
	 *  if there is a live element upstream
	 * min_latency:
	 *  the minimal latency of the live element
	 * max_latency:
	 *  the maximal latency of the live element
	 * Since 0.10.12
	 */
	public void setLatency(int live, GstClockTime minLatency, GstClockTime maxLatency)
	{
		// void gst_query_set_latency (GstQuery *query,  gboolean live,  GstClockTime min_latency,  GstClockTime max_latency);
		gst_query_set_latency(gstQuery, live, minLatency, maxLatency);
	}
	
	
	/**
	 * Set the seeking query result fields in query.
	 * query:
	 *  a GstQuery
	 * format:
	 *  the format to set for the segment_start and segment_end values
	 * seekable:
	 *  the seekable flag to set
	 * segment_start:
	 *  the segment_start to set
	 * segment_end:
	 *  the segment_end to set
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
	 * query:
	 *  a GST_QUERY_SEEKING type query GstQuery
	 * format:
	 *  the format to set for the segment_start and segment_end values
	 * seekable:
	 *  the seekable flag to set
	 * segment_start:
	 *  the segment_start to set
	 * segment_end:
	 *  the segment_end to set
	 */
	public void parseSeeking(GstFormat* format, int* seekable, long* segmentStart, long* segmentEnd)
	{
		// void gst_query_parse_seeking (GstQuery *query,  GstFormat *format,  gboolean *seekable,  gint64 *segment_start,  gint64 *segment_end);
		gst_query_parse_seeking(gstQuery, format, seekable, segmentStart, segmentEnd);
	}
	
	
	/**
	 * Set the formats query result fields in query. The number of formats passed
	 * must be equal to n_formats.
	 * query:
	 *  a GstQuery
	 * n_formats:
	 *  the number of formats to set.
	 * ...:
	 *  A number of GstFormats equal to n_formats.
	 */
	public void setFormats(int nFormats, ... )
	{
		// void gst_query_set_formats (GstQuery *query,  gint n_formats,  ...);
		gst_query_set_formats(gstQuery, nFormats);
	}
	
	/**
	 * Set the formats query result fields in query. The number of formats passed
	 * in the formats array must be equal to n_formats.
	 * query:
	 *  a GstQuery
	 * n_formats:
	 *  the number of formats to set.
	 * formats:
	 *  An array containing n_formats GstFormat values.
	 * Since 0.10.4
	 */
	public void setFormatsv(int nFormats, GstFormat* formats)
	{
		// void gst_query_set_formatsv (GstQuery *query,  gint n_formats,  GstFormat *formats);
		gst_query_set_formatsv(gstQuery, nFormats, formats);
	}
	
	/**
	 * Parse the number of formats in the formats query.
	 * query:
	 *  a GstQuery
	 * n_formats:
	 *  the number of formats in this query.
	 * Since 0.10.4
	 */
	public void parseFormatsLength(uint* nFormats)
	{
		// void gst_query_parse_formats_length (GstQuery *query,  guint *n_formats);
		gst_query_parse_formats_length(gstQuery, nFormats);
	}
	
	/**
	 * Parse the format query and retrieve the nth format from it into
	 * format. If the list contains less elements than nth, format will be
	 * set to GST_FORMAT_UNDEFINED.
	 * query:
	 *  a GstQuery
	 * nth:
	 *  the nth format to retrieve.
	 * format:
	 *  a pointer to store the nth format
	 * Since 0.10.4
	 */
	public void parseFormatsNth(uint nth, GstFormat* format)
	{
		// void gst_query_parse_formats_nth (GstQuery *query,  guint nth,  GstFormat *format);
		gst_query_parse_formats_nth(gstQuery, nth, format);
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
	 * query:
	 *  a GstQuery
	 * rate:
	 *  the rate of the segment
	 * format:
	 *  the GstFormat of the segment values (start_value and stop_value)
	 * start_value:
	 *  the start value
	 * stop_value:
	 *  the stop value
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
	 * query:
	 *  a GstQuery
	 * rate:
	 *  the storage for the rate of the segment, or NULL
	 * format:
	 *  the storage for the GstFormat of the values, or NULL
	 * start_value:
	 *  the storage for the start value, or NULL
	 * stop_value:
	 *  the storage for the stop value, or NULL
	 * See Also
	 * GstPad, GstElement
	 */
	public void parseSegment(double* rate, GstFormat* format, long* startValue, long* stopValue)
	{
		// void gst_query_parse_segment (GstQuery *query,  gdouble *rate,  GstFormat *format,  gint64 *start_value,  gint64 *stop_value);
		gst_query_parse_segment(gstQuery, rate, format, startValue, stopValue);
	}
}
