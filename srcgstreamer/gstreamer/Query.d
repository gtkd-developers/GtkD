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


module gstreamer.Query;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.AllocationParams;
private import gstreamer.Allocator;
private import gstreamer.BufferPool;
private import gstreamer.Caps;
private import gstreamer.Context;
private import gstreamer.Structure;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


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
 * |[<!-- language="C" -->
 * GstQuery *query;
 * gboolean res;
 * query = gst_query_new_duration (GST_FORMAT_TIME);
 * res = gst_element_query (pipeline, query);
 * if (res) {
 * gint64 duration;
 * gst_query_parse_duration (query, NULL, &amp;duration);
 * g_print ("duration = %"GST_TIME_FORMAT, GST_TIME_ARGS (duration));
 * } else {
 * g_print ("duration query failed...");
 * }
 * gst_query_unref (query);
 * ]|
 */
public class Query
{
	/** the main Gtk struct */
	protected GstQuery* gstQuery;
	protected bool ownedRef;

	/** Get the main Gtk struct */
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
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstQuery* gstQuery, bool ownedRef = false)
	{
		this.gstQuery = gstQuery;
		this.ownedRef = ownedRef;
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
		auto p = gst_query_new_position(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_position");
		}
		
		return new Query( cast(GstQuery*)p); //, true);
	}
	
	/**
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
		auto p = gst_query_new_duration(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_duration");
		}
		
		return new Query( cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query object for querying seeking properties of
	 * the stream.
	 * Params:
	 *  format = the default GstFormat for the new query
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newSeeking(GstFormat format)
	{
		auto p = gst_query_new_seeking(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_seeking");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query object for querying formats of
	 * the stream.
	 * Returns:
	 *  A GstQuery
	 */
	public static Query newFormats()
	{
		auto p = gst_query_new_formats();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_formats");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
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
		auto p = gst_query_new_segment(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_segment");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new latency query object.
	 * Use gst_query_unref() when done with it. A latency query is usually performed
	 * by sinks to compensate for additional latency introduced by elements in the
	 * pipeline.
	 * Free-function: gst_query_unref
	 */
	public static Query newLatency()
	{
		auto p = gst_query_new_latency();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_latency()");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query URI query object. Use gst_query_unref()
	 * when done with it. An URI query is used to query the current URI
	 * that is used by the source or sink.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newUri()
	{
		auto p = gst_query_new_uri();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_uri()");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query object for querying the scheduling properties.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newScheduling()
	{
		auto p = gst_query_new_scheduling();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_scheduling()");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query object for querying the drain state.
	 * Free-function: gst_query_unref
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newDrain()
	{
		auto p = gst_query_new_drain();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_drain()");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}
	
	/**
	 * Constructs a new query object for querying if caps are accepted.
	 * Free-function: gst_query_unref
	 * Params:
	 * caps = a fixed GstCaps
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static Query newAcceptCaps(Caps caps)
	{
		auto p = gst_query_new_accept_caps((caps is null) ? null : caps.getCapsStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_query_new_accept_caps((caps is null) ? null : caps.getCapsStruct())");
		}
		
		return new Query(cast(GstQuery*)p); //, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_query_get_type();
	}

	/**
	 * Constructs a new query object for querying the allocation properties.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     caps = the negotiated caps
	 *     needPool = return a pool
	 *
	 * Return: a new #GstQuery
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Caps caps, bool needPool)
	{
		auto p = gst_query_new_allocation((caps is null) ? null : caps.getCapsStruct(), needPool);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_allocation");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Constructs a new query object for querying the buffering status of
	 * a stream.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     format = the default #GstFormat for the new query
	 *
	 * Return: a new #GstQuery
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstFormat format)
	{
		auto p = gst_query_new_buffering(format);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_buffering");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Constructs a new query object for querying the caps.
	 *
	 * The CAPS query should return the allowable caps for a pad in the context
	 * of the element's state, its link to other elements, and the devices or files
	 * it has opened. These caps must be a subset of the pad template caps. In the
	 * NULL state with no links, the CAPS query should ideally return the same caps
	 * as the pad template. In rare circumstances, an object property can affect
	 * the caps returned by the CAPS query, but this is discouraged.
	 *
	 * For most filters, the caps returned by CAPS query is directly affected by the
	 * allowed caps on other pads. For demuxers and decoders, the caps returned by
	 * the srcpad's getcaps function is directly related to the stream data. Again,
	 * the CAPS query should return the most specific caps it reasonably can, since this
	 * helps with autoplugging.
	 *
	 * The @filter is used to restrict the result caps, only the caps matching
	 * @filter should be returned from the CAPS query. Specifying a filter might
	 * greatly reduce the amount of processing an element needs to do.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     filter = a filter
	 *
	 * Return: a new #GstQuery
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Caps filter)
	{
		auto p = gst_query_new_caps((filter is null) ? null : filter.getCapsStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_caps");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Constructs a new query object for querying the pipeline-local context.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     contextType = Context type to query
	 *
	 * Return: a new #GstQuery
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string contextType)
	{
		auto p = gst_query_new_context(Str.toStringz(contextType));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_context");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Constructs a new convert query object. Use gst_query_unref()
	 * when done with it. A convert query is used to ask for a conversion between
	 * one format and another.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     srcFormat = the source #GstFormat for the new query
	 *     value = the value to convert
	 *     destFormat = the target #GstFormat
	 *
	 * Return: a #GstQuery
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstFormat srcFormat, long value, GstFormat destFormat)
	{
		auto p = gst_query_new_convert(srcFormat, value, destFormat);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_convert");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Constructs a new custom query object. Use gst_query_unref()
	 * when done with it.
	 *
	 * Free-function: gst_query_unref
	 *
	 * Params:
	 *     type = the query type
	 *     structure = a structure for the query
	 *
	 * Return: a new #GstQuery
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstQueryType type, Structure structure)
	{
		auto p = gst_query_new_custom(type, (structure is null) ? null : structure.getStructureStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_custom");
		}
		
		this(cast(GstQuery*) p);
	}

	/**
	 * Add @api with @params as one of the supported metadata API to @query.
	 *
	 * Params:
	 *     api = the metadata API
	 *     params = API specific parameters
	 */
	public void addAllocationMeta(GType api, Structure params)
	{
		gst_query_add_allocation_meta(gstQuery, api, (params is null) ? null : params.getStructureStruct());
	}

	/**
	 * Add @allocator and its @params as a supported memory allocator.
	 *
	 * Params:
	 *     allocator = the memory allocator
	 *     params = a #GstAllocationParams
	 */
	public void addAllocationParam(Allocator allocator, AllocationParams params)
	{
		gst_query_add_allocation_param(gstQuery, (allocator is null) ? null : allocator.getAllocatorStruct(), (params is null) ? null : params.getAllocationParamsStruct());
	}

	/**
	 * Set the pool parameters in @query.
	 *
	 * Params:
	 *     pool = the #GstBufferPool
	 *     size = the size
	 *     minBuffers = the min buffers
	 *     maxBuffers = the max buffers
	 */
	public void addAllocationPool(BufferPool pool, uint size, uint minBuffers, uint maxBuffers)
	{
		gst_query_add_allocation_pool(gstQuery, (pool is null) ? null : pool.getBufferPoolStruct(), size, minBuffers, maxBuffers);
	}

	/**
	 * Set the buffering-ranges array field in @query. The current last
	 * start position of the array should be inferior to @start.
	 *
	 * Params:
	 *     start = start position of the range
	 *     stop = stop position of the range
	 *
	 * Return: a #gboolean indicating if the range was added or not.
	 */
	public bool addBufferingRange(long start, long stop)
	{
		return gst_query_add_buffering_range(gstQuery, start, stop) != 0;
	}

	/**
	 * Add @mode as one of the supported scheduling modes to @query.
	 *
	 * Params:
	 *     mode = a #GstPadMode
	 */
	public void addSchedulingMode(GstPadMode mode)
	{
		gst_query_add_scheduling_mode(gstQuery, mode);
	}

	/**
	 * Check if @query has metadata @api set. When this function returns %TRUE,
	 * @index will contain the index where the requested API and the parameters
	 * can be found.
	 *
	 * Params:
	 *     api = the metadata API
	 *     index = the index
	 *
	 * Return: %TRUE when @api is in the list of metadata.
	 */
	public bool findAllocationMeta(GType api, out uint index)
	{
		return gst_query_find_allocation_meta(gstQuery, api, &index) != 0;
	}

	/**
	 * Retrieve the number of values currently stored in the
	 * meta API array of the query's structure.
	 *
	 * Return: the metadata API array size as a #guint.
	 */
	public uint getNAllocationMetas()
	{
		return gst_query_get_n_allocation_metas(gstQuery);
	}

	/**
	 * Retrieve the number of values currently stored in the
	 * allocator params array of the query's structure.
	 *
	 * If no memory allocator is specified, the downstream element can handle
	 * the default memory allocator. The first memory allocator in the query
	 * should be generic and allow mapping to system memory, all following
	 * allocators should be ordered by preference with the preferred one first.
	 *
	 * Return: the allocator array size as a #guint.
	 */
	public uint getNAllocationParams()
	{
		return gst_query_get_n_allocation_params(gstQuery);
	}

	/**
	 * Retrieve the number of values currently stored in the
	 * pool array of the query's structure.
	 *
	 * Return: the pool array size as a #guint.
	 */
	public uint getNAllocationPools()
	{
		return gst_query_get_n_allocation_pools(gstQuery);
	}

	/**
	 * Retrieve the number of values currently stored in the
	 * buffered-ranges array of the query's structure.
	 *
	 * Return: the range array size as a #guint.
	 */
	public uint getNBufferingRanges()
	{
		return gst_query_get_n_buffering_ranges(gstQuery);
	}

	/**
	 * Retrieve the number of values currently stored in the
	 * scheduling mode array of the query's structure.
	 *
	 * Return: the scheduling mode array size as a #guint.
	 */
	public uint getNSchedulingModes()
	{
		return gst_query_get_n_scheduling_modes(gstQuery);
	}

	/**
	 * Get the structure of a query.
	 *
	 * Return: the #GstStructure of the query. The structure is
	 *     still owned by the query and will therefore be freed when the query
	 *     is unreffed.
	 */
	public Structure getStructure()
	{
		auto p = gst_query_get_structure(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Check if @query has scheduling mode set.
	 *
	 * <note>
	 * <para>
	 * When checking if upstream supports pull mode, it is usually not
	 * enough to just check for GST_PAD_MODE_PULL with this function, you
	 * also want to check whether the scheduling flags returned by
	 * gst_query_parse_scheduling() have the seeking flag set (meaning
	 * random access is supported, not only sequential pulls).
	 * </para>
	 * </note>
	 *
	 * Params:
	 *     mode = the scheduling mode
	 *
	 * Return: %TRUE when @mode is in the list of scheduling modes.
	 */
	public bool hasSchedulingMode(GstPadMode mode)
	{
		return gst_query_has_scheduling_mode(gstQuery, mode) != 0;
	}

	/**
	 * Check if @query has scheduling mode set and @flags is set in
	 * query scheduling flags.
	 *
	 * Params:
	 *     mode = the scheduling mode
	 *     flags = #GstSchedulingFlags
	 *
	 * Return: %TRUE when @mode is in the list of scheduling modes
	 *     and @flags are compatible with query flags.
	 */
	public bool hasSchedulingModeWithFlags(GstPadMode mode, GstSchedulingFlags flags)
	{
		return gst_query_has_scheduling_mode_with_flags(gstQuery, mode, flags) != 0;
	}

	/**
	 * Get the caps from @query. The caps remains valid as long as @query remains
	 * valid.
	 *
	 * Params:
	 *     caps = A pointer to the caps
	 */
	public void parseAcceptCaps(out Caps caps)
	{
		GstCaps* outcaps = null;
		
		gst_query_parse_accept_caps(gstQuery, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}

	/**
	 * Parse the result from @query and store in @result.
	 *
	 * Params:
	 *     result = location for the result
	 */
	public void parseAcceptCapsResult(ref bool result)
	{
		int outresult = (result ? 1 : 0);
		
		gst_query_parse_accept_caps_result(gstQuery, &outresult);
		
		result = (outresult == 1);
	}

	/**
	 * Parse an allocation query, writing the requested caps in @caps and
	 * whether a pool is needed in @need_pool, if the respective parameters
	 * are non-%NULL.
	 *
	 * Params:
	 *     caps = The #GstCaps
	 *     needPool = Whether a #GstBufferPool is needed
	 */
	public void parseAllocation(out Caps caps, out bool needPool)
	{
		GstCaps* outcaps = null;
		int outneedPool;
		
		gst_query_parse_allocation(gstQuery, &outcaps, &outneedPool);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
		needPool = (outneedPool == 1);
	}

	/**
	 * Get the percentage of buffered data. This is a value between 0 and 100.
	 * The @busy indicator is %TRUE when the buffering is in progress.
	 *
	 * Params:
	 *     busy = if buffering is busy, or %NULL
	 *     percent = a buffering percent, or %NULL
	 */
	public void parseBufferingPercent(out bool busy, out int percent)
	{
		int outbusy;
		
		gst_query_parse_buffering_percent(gstQuery, &outbusy, &percent);
		
		busy = (outbusy == 1);
	}

	/**
	 * Parse an available query, writing the format into @format, and
	 * other results into the passed parameters, if the respective parameters
	 * are non-%NULL
	 *
	 * Params:
	 *     format = the format to set for the @segment_start
	 *         and @segment_end values, or %NULL
	 *     start = the start to set, or %NULL
	 *     stop = the stop to set, or %NULL
	 *     estimatedTotal = estimated total amount of download
	 *         time remaining in milliseconds, or %NULL
	 */
	public void parseBufferingRange(out GstFormat format, out long start, out long stop, out long estimatedTotal)
	{
		gst_query_parse_buffering_range(gstQuery, &format, &start, &stop, &estimatedTotal);
	}

	/**
	 * Extracts the buffering stats values from @query.
	 *
	 * Params:
	 *     mode = a buffering mode, or %NULL
	 *     avgIn = the average input rate, or %NULL
	 *     avgOut = the average output rat, or %NULL
	 *     bufferingLeft = amount of buffering time left in
	 *         milliseconds, or %NULL
	 */
	public void parseBufferingStats(out GstBufferingMode mode, out int avgIn, out int avgOut, out long bufferingLeft)
	{
		gst_query_parse_buffering_stats(gstQuery, &mode, &avgIn, &avgOut, &bufferingLeft);
	}

	/**
	 * Get the filter from the caps @query. The caps remains valid as long as
	 * @query remains valid.
	 *
	 * Params:
	 *     filter = A pointer to the caps filter
	 */
	public void parseCaps(out Caps filter)
	{
		GstCaps* outfilter = null;
		
		gst_query_parse_caps(gstQuery, &outfilter);
		
		filter = ObjectG.getDObject!(Caps)(outfilter);
	}

	/**
	 * Get the caps result from @query. The caps remains valid as long as
	 * @query remains valid.
	 *
	 * Params:
	 *     caps = A pointer to the caps
	 */
	public void parseCapsResult(out Caps caps)
	{
		GstCaps* outcaps = null;
		
		gst_query_parse_caps_result(gstQuery, &outcaps);
		
		caps = ObjectG.getDObject!(Caps)(outcaps);
	}

	/**
	 * Get the context from the context @query. The context remains valid as long as
	 * @query remains valid.
	 *
	 * Params:
	 *     context = A pointer to store the #GstContext
	 *
	 * Since: 1.2
	 */
	public void parseContext(out Context context)
	{
		GstContext* outcontext = null;
		
		gst_query_parse_context(gstQuery, &outcontext);
		
		context = ObjectG.getDObject!(Context)(outcontext);
	}

	/**
	 * Parse a context type from an existing GST_QUERY_CONTEXT query.
	 *
	 * Params:
	 *     contextType = the context type, or %NULL
	 *
	 * Return: a #gboolean indicating if the parsing succeeded.
	 *
	 * Since: 1.2
	 */
	public bool parseContextType(out string contextType)
	{
		char* outcontextType = null;
		
		auto p = gst_query_parse_context_type(gstQuery, &outcontextType) != 0;
		
		contextType = Str.toString(outcontextType);
		
		return p;
	}

	/**
	 * Parse a convert query answer. Any of @src_format, @src_value, @dest_format,
	 * and @dest_value may be %NULL, in which case that value is omitted.
	 *
	 * Params:
	 *     srcFormat = the storage for the #GstFormat of the
	 *         source value, or %NULL
	 *     srcValue = the storage for the source value, or %NULL
	 *     destFormat = the storage for the #GstFormat of the
	 *         destination value, or %NULL
	 *     destValue = the storage for the destination value,
	 *         or %NULL
	 */
	public void parseConvert(out GstFormat srcFormat, out long srcValue, out GstFormat destFormat, out long destValue)
	{
		gst_query_parse_convert(gstQuery, &srcFormat, &srcValue, &destFormat, &destValue);
	}

	/**
	 * Parse a duration query answer. Write the format of the duration into @format,
	 * and the value into @duration, if the respective variables are non-%NULL.
	 *
	 * Params:
	 *     format = the storage for the #GstFormat of the duration
	 *         value, or %NULL.
	 *     duration = the storage for the total duration, or %NULL.
	 */
	public void parseDuration(out GstFormat format, out long duration)
	{
		gst_query_parse_duration(gstQuery, &format, &duration);
	}

	/**
	 * Parse a latency query answer.
	 *
	 * Params:
	 *     live = storage for live or %NULL
	 *     minLatency = the storage for the min latency or %NULL
	 *     maxLatency = the storage for the max latency or %NULL
	 */
	public void parseLatency(out bool live, out GstClockTime minLatency, out GstClockTime maxLatency)
	{
		int outlive;
		
		gst_query_parse_latency(gstQuery, &outlive, &minLatency, &maxLatency);
		
		live = (outlive == 1);
	}

	/**
	 * Parse the number of formats in the formats @query.
	 *
	 * Params:
	 *     nFormats = the number of formats in this query.
	 */
	public void parseNFormats(out uint nFormats)
	{
		gst_query_parse_n_formats(gstQuery, &nFormats);
	}

	/**
	 * Parse an available query and get the metadata API
	 * at @index of the metadata API array.
	 *
	 * Params:
	 *     index = position in the metadata API array to read
	 *     params = API specific parameters
	 *
	 * Return: a #GType of the metadata API at @index.
	 */
	public GType parseNthAllocationMeta(uint index, out Structure params)
	{
		GstStructure* outparams = null;
		
		auto p = gst_query_parse_nth_allocation_meta(gstQuery, index, &outparams);
		
		params = ObjectG.getDObject!(Structure)(outparams);
		
		return p;
	}

	/**
	 * Parse an available query and get the allocator and its params
	 * at @index of the allocator array.
	 *
	 * Params:
	 *     index = position in the allocator array to read
	 *     allocator = variable to hold the result
	 *     params = parameters for the allocator
	 */
	public void parseNthAllocationParam(uint index, out Allocator allocator, out AllocationParams params)
	{
		GstAllocator* outallocator = null;
		GstAllocationParams* outparams = gMalloc!GstAllocationParams();
		
		gst_query_parse_nth_allocation_param(gstQuery, index, &outallocator, outparams);
		
		allocator = ObjectG.getDObject!(Allocator)(outallocator);
		params = ObjectG.getDObject!(AllocationParams)(outparams, true);
	}

	/**
	 * Get the pool parameters in @query.
	 *
	 * Unref @pool with gst_object_unref() when it's not needed any more.
	 *
	 * Params:
	 *     index = index to parse
	 *     pool = the #GstBufferPool
	 *     size = the size
	 *     minBuffers = the min buffers
	 *     maxBuffers = the max buffers
	 */
	public void parseNthAllocationPool(uint index, out BufferPool pool, out uint size, out uint minBuffers, out uint maxBuffers)
	{
		GstBufferPool* outpool = null;
		
		gst_query_parse_nth_allocation_pool(gstQuery, index, &outpool, &size, &minBuffers, &maxBuffers);
		
		pool = ObjectG.getDObject!(BufferPool)(outpool);
	}

	/**
	 * Parse an available query and get the start and stop values stored
	 * at the @index of the buffered ranges array.
	 *
	 * Params:
	 *     index = position in the buffered-ranges array to read
	 *     start = the start position to set, or %NULL
	 *     stop = the stop position to set, or %NULL
	 *
	 * Return: a #gboolean indicating if the parsing succeeded.
	 */
	public bool parseNthBufferingRange(uint index, out long start, out long stop)
	{
		return gst_query_parse_nth_buffering_range(gstQuery, index, &start, &stop) != 0;
	}

	/**
	 * Parse the format query and retrieve the @nth format from it into
	 * @format. If the list contains less elements than @nth, @format will be
	 * set to GST_FORMAT_UNDEFINED.
	 *
	 * Params:
	 *     nth = the nth format to retrieve.
	 *     format = a pointer to store the nth format
	 */
	public void parseNthFormat(uint nth, out GstFormat format)
	{
		gst_query_parse_nth_format(gstQuery, nth, &format);
	}

	/**
	 * Parse an available query and get the scheduling mode
	 * at @index of the scheduling modes array.
	 *
	 * Params:
	 *     index = position in the scheduling modes array to read
	 *
	 * Return: a #GstPadMode of the scheduling mode at @index.
	 */
	public GstPadMode parseNthSchedulingMode(uint index)
	{
		return gst_query_parse_nth_scheduling_mode(gstQuery, index);
	}

	/**
	 * Parse a position query, writing the format into @format, and the position
	 * into @cur, if the respective parameters are non-%NULL.
	 *
	 * Params:
	 *     format = the storage for the #GstFormat of the
	 *         position values (may be %NULL)
	 *     cur = the storage for the current position (may be %NULL)
	 */
	public void parsePosition(out GstFormat format, out long cur)
	{
		gst_query_parse_position(gstQuery, &format, &cur);
	}

	/**
	 * Set the scheduling properties.
	 *
	 * Params:
	 *     flags = #GstSchedulingFlags
	 *     minsize = the suggested minimum size of pull requests
	 *     maxsize = the suggested maximum size of pull requests:
	 *     alig = the suggested alignment of pull requests
	 */
	public void parseScheduling(out GstSchedulingFlags flags, out int minsize, out int maxsize, out int alig)
	{
		gst_query_parse_scheduling(gstQuery, &flags, &minsize, &maxsize, &alig);
	}

	/**
	 * Parse a seeking query, writing the format into @format, and
	 * other results into the passed parameters, if the respective parameters
	 * are non-%NULL
	 *
	 * Params:
	 *     format = the format to set for the @segment_start
	 *         and @segment_end values, or %NULL
	 *     seekable = the seekable flag to set, or %NULL
	 *     segmentStart = the segment_start to set, or %NULL
	 *     segmentEnd = the segment_end to set, or %NULL
	 */
	public void parseSeeking(out GstFormat format, out bool seekable, out long segmentStart, out long segmentEnd)
	{
		int outseekable;
		
		gst_query_parse_seeking(gstQuery, &format, &outseekable, &segmentStart, &segmentEnd);
		
		seekable = (outseekable == 1);
	}

	/**
	 * Parse a segment query answer. Any of @rate, @format, @start_value, and
	 * @stop_value may be %NULL, which will cause this value to be omitted.
	 *
	 * See gst_query_set_segment() for an explanation of the function arguments.
	 *
	 * Params:
	 *     rate = the storage for the rate of the segment, or %NULL
	 *     format = the storage for the #GstFormat of the values,
	 *         or %NULL
	 *     startValue = the storage for the start value, or %NULL
	 *     stopValue = the storage for the stop value, or %NULL
	 */
	public void parseSegment(out double rate, out GstFormat format, out long startValue, out long stopValue)
	{
		gst_query_parse_segment(gstQuery, &rate, &format, &startValue, &stopValue);
	}

	/**
	 * Parse an URI query, writing the URI into @uri as a newly
	 * allocated string, if the respective parameters are non-%NULL.
	 * Free the string with g_free() after usage.
	 *
	 * Params:
	 *     uri = the storage for the current URI
	 *         (may be %NULL)
	 */
	public void parseUri(out string uri)
	{
		char* outuri = null;
		
		gst_query_parse_uri(gstQuery, &outuri);
		
		uri = Str.toString(outuri);
	}

	/**
	 * Parse an URI query, writing the URI into @uri as a newly
	 * allocated string, if the respective parameters are non-%NULL.
	 * Free the string with g_free() after usage.
	 *
	 * Params:
	 *     uri = the storage for the redirect URI
	 *         (may be %NULL)
	 *
	 * Since: 1.2
	 */
	public void parseUriRedirection(out string uri)
	{
		char* outuri = null;
		
		gst_query_parse_uri_redirection(gstQuery, &outuri);
		
		uri = Str.toString(outuri);
	}

	/**
	 * Parse an URI query, and set @permanent to %TRUE if there is a redirection
	 * and it should be considered permanent. If a redirection is permanent,
	 * applications should update their internal storage of the URI, otherwise
	 * they should make all future requests to the original URI.
	 *
	 * Params:
	 *     permanent = if the URI redirection is permanent
	 *         (may be %NULL)
	 *
	 * Since: 1.4
	 */
	public void parseUriRedirectionPermanent(out bool permanent)
	{
		int outpermanent;
		
		gst_query_parse_uri_redirection_permanent(gstQuery, &outpermanent);
		
		permanent = (outpermanent == 1);
	}

	/**
	 * Remove the metadata API at @index of the metadata API array.
	 *
	 * Params:
	 *     index = position in the metadata API array to remove
	 */
	public void removeNthAllocationMeta(uint index)
	{
		gst_query_remove_nth_allocation_meta(gstQuery, index);
	}

	/**
	 * Remove the allocation param at @index of the allocation param array.
	 *
	 * Params:
	 *     index = position in the allocation param array to remove
	 *
	 * Since: 1.2
	 */
	public void removeNthAllocationParam(uint index)
	{
		gst_query_remove_nth_allocation_param(gstQuery, index);
	}

	/**
	 * Remove the allocation pool at @index of the allocation pool array.
	 *
	 * Params:
	 *     index = position in the allocation pool array to remove
	 *
	 * Since: 1.2
	 */
	public void removeNthAllocationPool(uint index)
	{
		gst_query_remove_nth_allocation_pool(gstQuery, index);
	}

	/**
	 * Set @result as the result for the @query.
	 *
	 * Params:
	 *     result = the result to set
	 */
	public void setAcceptCapsResult(bool result)
	{
		gst_query_set_accept_caps_result(gstQuery, result);
	}

	/**
	 * Set the percentage of buffered data. This is a value between 0 and 100.
	 * The @busy indicator is %TRUE when the buffering is in progress.
	 *
	 * Params:
	 *     busy = if buffering is busy
	 *     percent = a buffering percent
	 */
	public void setBufferingPercent(bool busy, int percent)
	{
		gst_query_set_buffering_percent(gstQuery, busy, percent);
	}

	/**
	 * Set the available query result fields in @query.
	 *
	 * Params:
	 *     format = the format to set for the @start and @stop values
	 *     start = the start to set
	 *     stop = the stop to set
	 *     estimatedTotal = estimated total amount of download time remaining in
	 *         milliseconds
	 */
	public void setBufferingRange(GstFormat format, long start, long stop, long estimatedTotal)
	{
		gst_query_set_buffering_range(gstQuery, format, start, stop, estimatedTotal);
	}

	/**
	 * Configures the buffering stats values in @query.
	 *
	 * Params:
	 *     mode = a buffering mode
	 *     avgIn = the average input rate
	 *     avgOut = the average output rate
	 *     bufferingLeft = amount of buffering time left in milliseconds
	 */
	public void setBufferingStats(GstBufferingMode mode, int avgIn, int avgOut, long bufferingLeft)
	{
		gst_query_set_buffering_stats(gstQuery, mode, avgIn, avgOut, bufferingLeft);
	}

	/**
	 * Set the @caps result in @query.
	 *
	 * Params:
	 *     caps = A pointer to the caps
	 */
	public void setCapsResult(Caps caps)
	{
		gst_query_set_caps_result(gstQuery, (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Answer a context query by setting the requested context.
	 *
	 * Params:
	 *     context = the requested #GstContext
	 *
	 * Since: 1.2
	 */
	public void setContext(Context context)
	{
		gst_query_set_context(gstQuery, (context is null) ? null : context.getContextStruct());
	}

	/**
	 * Answer a convert query by setting the requested values.
	 *
	 * Params:
	 *     srcFormat = the source #GstFormat
	 *     srcValue = the source value
	 *     destFormat = the destination #GstFormat
	 *     destValue = the destination value
	 */
	public void setConvert(GstFormat srcFormat, long srcValue, GstFormat destFormat, long destValue)
	{
		gst_query_set_convert(gstQuery, srcFormat, srcValue, destFormat, destValue);
	}

	/**
	 * Answer a duration query by setting the requested value in the given format.
	 *
	 * Params:
	 *     format = the #GstFormat for the duration
	 *     duration = the duration of the stream
	 */
	public void setDuration(GstFormat format, long duration)
	{
		gst_query_set_duration(gstQuery, format, duration);
	}

	/**
	 * Set the formats query result fields in @query. The number of formats passed
	 * in the @formats array must be equal to @n_formats.
	 *
	 * Params:
	 *     nFormats = the number of formats to set.
	 *     formats = an array containing @n_formats
	 *         @GstFormat values.
	 */
	public void setFormatsv(GstFormat[] formats)
	{
		gst_query_set_formatsv(gstQuery, cast(int)formats.length, formats.ptr);
	}

	/**
	 * Answer a latency query by setting the requested values in the given format.
	 *
	 * Params:
	 *     live = if there is a live element upstream
	 *     minLatency = the minimal latency of the upstream elements
	 *     maxLatency = the maximal latency of the upstream elements
	 */
	public void setLatency(bool live, GstClockTime minLatency, GstClockTime maxLatency)
	{
		gst_query_set_latency(gstQuery, live, minLatency, maxLatency);
	}

	/**
	 * Parse an available query and get the allocator and its params
	 * at @index of the allocator array.
	 *
	 * Params:
	 *     index = position in the allocator array to set
	 *     allocator = new allocator to set
	 *     params = parameters for the allocator
	 */
	public void setNthAllocationParam(uint index, Allocator allocator, AllocationParams params)
	{
		gst_query_set_nth_allocation_param(gstQuery, index, (allocator is null) ? null : allocator.getAllocatorStruct(), (params is null) ? null : params.getAllocationParamsStruct());
	}

	/**
	 * Set the pool parameters in @query.
	 *
	 * Params:
	 *     index = index to modify
	 *     pool = the #GstBufferPool
	 *     size = the size
	 *     minBuffers = the min buffers
	 *     maxBuffers = the max buffers
	 */
	public void setNthAllocationPool(uint index, BufferPool pool, uint size, uint minBuffers, uint maxBuffers)
	{
		gst_query_set_nth_allocation_pool(gstQuery, index, (pool is null) ? null : pool.getBufferPoolStruct(), size, minBuffers, maxBuffers);
	}

	/**
	 * Answer a position query by setting the requested value in the given format.
	 *
	 * Params:
	 *     format = the requested #GstFormat
	 *     cur = the position to set
	 */
	public void setPosition(GstFormat format, long cur)
	{
		gst_query_set_position(gstQuery, format, cur);
	}

	/**
	 * Set the scheduling properties.
	 *
	 * Params:
	 *     flags = #GstSchedulingFlags
	 *     minsize = the suggested minimum size of pull requests
	 *     maxsize = the suggested maximum size of pull requests
	 *     alig = the suggested alignment of pull requests
	 */
	public void setScheduling(GstSchedulingFlags flags, int minsize, int maxsize, int alig)
	{
		gst_query_set_scheduling(gstQuery, flags, minsize, maxsize, alig);
	}

	/**
	 * Set the seeking query result fields in @query.
	 *
	 * Params:
	 *     format = the format to set for the @segment_start and @segment_end values
	 *     seekable = the seekable flag to set
	 *     segmentStart = the segment_start to set
	 *     segmentEnd = the segment_end to set
	 */
	public void setSeeking(GstFormat format, bool seekable, long segmentStart, long segmentEnd)
	{
		gst_query_set_seeking(gstQuery, format, seekable, segmentStart, segmentEnd);
	}

	/**
	 * Answer a segment query by setting the requested values. The normal
	 * playback segment of a pipeline is 0 to duration at the default rate of
	 * 1.0. If a seek was performed on the pipeline to play a different
	 * segment, this query will return the range specified in the last seek.
	 *
	 * @start_value and @stop_value will respectively contain the configured
	 * playback range start and stop values expressed in @format.
	 * The values are always between 0 and the duration of the media and
	 * @start_value <= @stop_value. @rate will contain the playback rate. For
	 * negative rates, playback will actually happen from @stop_value to
	 * @start_value.
	 *
	 * Params:
	 *     rate = the rate of the segment
	 *     format = the #GstFormat of the segment values (@start_value and @stop_value)
	 *     startValue = the start value
	 *     stopValue = the stop value
	 */
	public void setSegment(double rate, GstFormat format, long startValue, long stopValue)
	{
		gst_query_set_segment(gstQuery, rate, format, startValue, stopValue);
	}

	/**
	 * Answer a URI query by setting the requested URI.
	 *
	 * Params:
	 *     uri = the URI to set
	 */
	public void setUri(string uri)
	{
		gst_query_set_uri(gstQuery, Str.toStringz(uri));
	}

	/**
	 * Answer a URI query by setting the requested URI redirection.
	 *
	 * Params:
	 *     uri = the URI to set
	 *
	 * Since: 1.2
	 */
	public void setUriRedirection(string uri)
	{
		gst_query_set_uri_redirection(gstQuery, Str.toStringz(uri));
	}

	/**
	 * Answer a URI query by setting the requested URI redirection
	 * to permanent or not.
	 *
	 * Params:
	 *     permanent = whether the redirect is permanent or not
	 *
	 * Since: 1.4
	 */
	public void setUriRedirectionPermanent(bool permanent)
	{
		gst_query_set_uri_redirection_permanent(gstQuery, permanent);
	}

	/**
	 * Get the structure of a query. This method should be called with a writable
	 * @query so that the returned structure is guaranteed to be writable.
	 *
	 * Return: the #GstStructure of the query. The structure is
	 *     still owned by the query and will therefore be freed when the query
	 *     is unreffed.
	 */
	public Structure writableStructure()
	{
		auto p = gst_query_writable_structure(gstQuery);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Gets the #GstQueryTypeFlags associated with @type.
	 *
	 * Params:
	 *     type = a #GstQueryType
	 *
	 * Return: a #GstQueryTypeFlags.
	 */
	public static GstQueryTypeFlags typeGetFlags(GstQueryType type)
	{
		return gst_query_type_get_flags(type);
	}

	/**
	 * Get a printable name for the given query type. Do not modify or free.
	 *
	 * Params:
	 *     type = the query type
	 *
	 * Return: a reference to the static name of the query.
	 */
	public static string typeGetName(GstQueryType type)
	{
		return Str.toString(gst_query_type_get_name(type));
	}

	/**
	 * Get the unique quark for the given query type.
	 *
	 * Params:
	 *     type = the query type
	 *
	 * Return: the quark associated with the query type
	 */
	public static GQuark typeToQuark(GstQueryType type)
	{
		return gst_query_type_to_quark(type);
	}
}
