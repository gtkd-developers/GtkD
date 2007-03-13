/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module gstreamerc.gstreamer;

private import std.stdio;
private import gstreamer.gstreamertypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gstreamer_Linker;

static this()
{
	gstreamer_Linker = new Linker(libPath ~ importLibs[LIBRARY.GSTREAMER] );
	gstreamer_Linker.link(gstreamerLinks);
	debug writefln("* Finished static this(): gstreamer");
}

static ~this()
{
	delete gstreamer_Linker;
	debug writefln("* Finished static ~this(): gstreamer");
}

extern(C)
{
	// gstreamer.GStreamer

	void function(int* argc, char**[] argv)gst_init;
	gboolean function(int* argc, char**[] argv, GError** err)gst_init_check;
	GOptionGroup* function()gst_init_get_option_group;
	void function()gst_deinit;
	void function(guint* major, guint* minor, guint* micro, guint* nano)gst_version;
	gchar* function()gst_version_string;
	gboolean function()gst_segtrap_is_enabled;
	void function(gboolean enabled)gst_segtrap_set_enabled;
	gboolean function()gst_registry_fork_is_enabled;
	void function(gboolean enabled)gst_registry_fork_set_enabled;
	gboolean function()gst_update_registry;

	// gstreamer.Bin

	GstElement* function(gchar* name)gst_bin_new;
	gboolean function(GstBin* bin, GstElement* element)gst_bin_add;
	gboolean function(GstBin* bin, GstElement* element)gst_bin_remove;
	GstElement* function(GstBin* bin, gchar* name)gst_bin_get_by_name;
	GstElement* function(GstBin* bin, gchar* name)gst_bin_get_by_name_recurse_up;
	GstElement* function(GstBin* bin, GType intrface)gst_bin_get_by_interface;
	GstIterator* function(GstBin* bin)gst_bin_iterate_elements;
	GstIterator* function(GstBin* bin)gst_bin_iterate_recurse;
	GstIterator* function(GstBin* bin)gst_bin_iterate_sinks;
	GstIterator* function(GstBin* bin)gst_bin_iterate_sorted;
	GstIterator* function(GstBin* bin)gst_bin_iterate_sources;
	GstIterator* function(GstBin* bin, GType intrface)gst_bin_iterate_all_by_interface;
	void function(GstBin* bin, GstElement* element1, ... )gst_bin_add_many;
	void function(GstBin* bin, GstElement* element1, ... )gst_bin_remove_many;
	GstPad* function(GstBin* bin, GstPadDirection direction)gst_bin_find_unconnected_pad;

	// gstreamer.Buffer

	GstBuffer* function()gst_buffer_new;
	GstBuffer* function(guint size)gst_buffer_new_and_alloc;
	GstBuffer* function(GstBuffer* buf)gst_buffer_ref;
	gboolean function(GstBuffer* buf)gst_buffer_is_metadata_writable;
	GstBuffer* function(GstBuffer* buf)gst_buffer_make_metadata_writable;
	GstCaps* function(GstBuffer* buffer)gst_buffer_get_caps;
	void function(GstBuffer* buffer, GstCaps* caps)gst_buffer_set_caps;
	GstBuffer* function(GstBuffer* parent, guint offset, guint size)gst_buffer_create_sub;
	gboolean function(GstBuffer* buf1, GstBuffer* buf2)gst_buffer_is_span_fast;
	GstBuffer* function(GstBuffer* buf1, guint32 offset, GstBuffer* buf2, guint32 len)gst_buffer_span;
	void function(GstBuffer* dest, GstBuffer* src)gst_buffer_stamp;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2)gst_buffer_join;
	GstBuffer* function(GstBuffer* buf1, GstBuffer* buf2)gst_buffer_merge;

	// gstreamer.Bus

	GstBus* function()gst_bus_new;
	gboolean function(GstBus* bus, GstMessage* message)gst_bus_post;
	gboolean function(GstBus* bus)gst_bus_have_pending;
	GstMessage* function(GstBus* bus)gst_bus_peek;
	GstMessage* function(GstBus* bus)gst_bus_pop;
	GstMessage* function(GstBus* bus, GstClockTime timeout)gst_bus_timed_pop;
	void function(GstBus* bus, gboolean flushing)gst_bus_set_flushing;
	void function(GstBus* bus, GstBusSyncHandler func, gpointer data)gst_bus_set_sync_handler;
	GstBusSyncReply function(GstBus* bus, GstMessage* message, gpointer data)gst_bus_sync_signal_handler;
	GSource* function(GstBus* bus)gst_bus_create_watch;
	guint function(GstBus* bus, gint priority, GstBusFunc func, gpointer userData, GDestroyNotify notify)gst_bus_add_watch_full;
	guint function(GstBus* bus, GstBusFunc func, gpointer userData)gst_bus_add_watch;
	void function(GstBus* bus)gst_bus_disable_sync_message_emission;
	void function(GstBus* bus)gst_bus_enable_sync_message_emission;
	gboolean function(GstBus* bus, GstMessage* message, gpointer data)gst_bus_async_signal_func;
	void function(GstBus* bus)gst_bus_add_signal_watch;
	void function(GstBus* bus, gint priority)gst_bus_add_signal_watch_full;
	void function(GstBus* bus)gst_bus_remove_signal_watch;
	GstMessage* function(GstBus* bus, GstMessageType events, GstClockTimeDiff timeout)gst_bus_poll;

	// gstreamer.Caps

	GstCaps* function()gst_caps_new_empty;
	GstCaps* function()gst_caps_new_any;
	GstCaps* function(char* mediaType, char* fieldname, ... )gst_caps_new_simple;
	GstCaps* function(GstStructure* struct1, ... )gst_caps_new_full;
	GstCaps* function(GstStructure* structure, va_list varArgs)gst_caps_new_full_valist;
	GstCaps* function(GstCaps* caps)gst_caps_copy;
	GstCaps* function(GstCaps* caps, guint nth)gst_caps_copy_nth;
	GstCaps* function(GstStaticCaps* staticCaps)gst_static_caps_get;
	void function(GstCaps* caps1, GstCaps* caps2)gst_caps_append;
	void function(GstCaps* caps1, GstCaps* caps2)gst_caps_merge;
	void function(GstCaps* caps, GstStructure* structure)gst_caps_append_structure;
	void function(GstCaps* caps, guint idx)gst_caps_remove_structure;
	void function(GstCaps* caps, GstStructure* structure)gst_caps_merge_structure;
	guint function(GstCaps* caps)gst_caps_get_size;
	GstStructure* function(GstCaps* caps, guint index)gst_caps_get_structure;
	void function(GstCaps* caps, char* field, ... )gst_caps_set_simple;
	void function(GstCaps* caps, char* field, va_list varargs)gst_caps_set_simple_valist;
	gboolean function(GstCaps* caps)gst_caps_is_any;
	gboolean function(GstCaps* caps)gst_caps_is_empty;
	gboolean function(GstCaps* caps)gst_caps_is_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2)gst_caps_is_equal;
	gboolean function(GstCaps* caps1, GstCaps* caps2)gst_caps_is_equal_fixed;
	gboolean function(GstCaps* caps1, GstCaps* caps2)gst_caps_is_always_compatible;
	gboolean function(GstCaps* subset, GstCaps* superset)gst_caps_is_subset;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2)gst_caps_intersect;
	GstCaps* function(GstCaps* caps1, GstCaps* caps2)gst_caps_union;
	GstCaps* function(GstCaps* caps)gst_caps_normalize;
	gboolean function(GstCaps* caps)gst_caps_do_simplify;
	//xmlNodePtr function(GstCaps* caps, xmlNodePtr parent)gst_caps_save_thyself;
	//GstCaps* function(xmlNodePtr parent)gst_caps_load_thyself;
	void function(GstCaps** caps, GstCaps* newcaps)gst_caps_replace;
	gchar* function(GstCaps* caps)gst_caps_to_string;
	GstCaps* function(gchar* string)gst_caps_from_string;
	GstCaps* function(GstCaps* minuend, GstCaps* subtrahend)gst_caps_subtract;
	GstCaps* function(GstCaps* caps)gst_caps_make_writable;
	GstCaps* function(GstCaps* caps)gst_caps_ref;
	void function(GstCaps* caps)gst_caps_truncate;
	void function(GstCaps* caps)gst_caps_unref;

	// gstreamer.Clock

	gboolean function(GstClock* clock, GstClockTime slave, GstClockTime master, gdouble* rSquared)gst_clock_add_observation;
	gboolean function(GstClock* clock, GstClock* master)gst_clock_set_master;
	GstClock* function(GstClock* clock)gst_clock_get_master;
	GstClockTime function(GstClock* clock, GstClockTime resolution)gst_clock_set_resolution;
	GstClockTime function(GstClock* clock)gst_clock_get_resolution;
	GstClockTime function(GstClock* clock)gst_clock_get_time;
	GstClockID function(GstClock* clock, GstClockTime time)gst_clock_new_single_shot_id;
	GstClockID function(GstClock* clock, GstClockTime startTime, GstClockTime interval)gst_clock_new_periodic_id;
	GstClockTime function(GstClock* clock)gst_clock_get_internal_time;
	GstClockTime function(GstClock* clock, GstClockTime internal)gst_clock_adjust_unlocked;
	void function(GstClock* clock, GstClockTime* internal, GstClockTime* external, GstClockTime* rateNum, GstClockTime* rateDenom)gst_clock_get_calibration;
	void function(GstClock* clock, GstClockTime internal, GstClockTime external, GstClockTime rateNum, GstClockTime rateDenom)gst_clock_set_calibration;
	GstClockTime function(GstClockID id)gst_clock_id_get_time;
	GstClockReturn function(GstClockID id, GstClockTimeDiff* jitter)gst_clock_id_wait;
	GstClockReturn function(GstClockID id, GstClockCallback func, gpointer userData)gst_clock_id_wait_async;
	void function(GstClockID id)gst_clock_id_unschedule;
	gint function(gconstpointer id1, gconstpointer id2)gst_clock_id_compare_func;
	GstClockID function(GstClockID id)gst_clock_id_ref;
	void function(GstClockID id)gst_clock_id_unref;

	// gstreamer.Element

	void function(GstElementClass* klass, GstPadTemplate* templ)gst_element_class_add_pad_template;
	GstPadTemplate* function(GstElementClass* elementClass, gchar* name)gst_element_class_get_pad_template;
	GList* function(GstElementClass* elementClass)gst_element_class_get_pad_template_list;
	void function(GstElementClass* klass, gchar* firstName, ... )gst_element_class_install_std_props;
	void function(GstElementClass* klass, GstElementDetails* details)gst_element_class_set_details;
	gboolean function(GstElement* element, GstPad* pad)gst_element_add_pad;
	GstPad* function(GstElement* element, gchar* name)gst_element_get_pad;
	void function(GstElement* element)gst_element_create_all_pads;
	GstPad* function(GstElement* element, GstPad* pad, GstCaps* caps)gst_element_get_compatible_pad;
	GstPadTemplate* function(GstElement* element, GstPadTemplate* compattempl)gst_element_get_compatible_pad_template;
	GstPad* function(GstElement* element, gchar* name)gst_element_get_request_pad;
	GstPad* function(GstElement* element, gchar* name)gst_element_get_static_pad;
	void function(GstElement* element)gst_element_no_more_pads;
	void function(GstElement* element, GstPad* pad)gst_element_release_request_pad;
	gboolean function(GstElement* element, GstPad* pad)gst_element_remove_pad;
	GstIterator* function(GstElement* element)gst_element_iterate_pads;
	GstIterator* function(GstElement* element)gst_element_iterate_sink_pads;
	GstIterator* function(GstElement* element)gst_element_iterate_src_pads;
	gboolean function(GstElement* src, GstElement* dest)gst_element_link;
	void function(GstElement* src, GstElement* dest)gst_element_unlink;
	gboolean function(GstElement* element1, GstElement* element2, ... )gst_element_link_many;
	void function(GstElement* element1, GstElement* element2, ... )gst_element_unlink_many;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname)gst_element_link_pads;
	void function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname)gst_element_unlink_pads;
	gboolean function(GstElement* src, gchar* srcpadname, GstElement* dest, gchar* destpadname, GstCaps* filter)gst_element_link_pads_filtered;
	gboolean function(GstElement* src, GstElement* dest, GstCaps* filter)gst_element_link_filtered;
	void function(GstElement* element, GstClockTime time)gst_element_set_base_time;
	GstClockTime function(GstElement* element)gst_element_get_base_time;
	void function(GstElement* element, GstBus* bus)gst_element_set_bus;
	GstBus* function(GstElement* element)gst_element_get_bus;
	GstElementFactory* function(GstElement* element)gst_element_get_factory;
	void function(GstElement* element, GstIndex* index)gst_element_set_index;
	GstIndex* function(GstElement* element)gst_element_get_index;
	gboolean function(GstElement* element)gst_element_is_indexable;
	gboolean function(GstElement* element)gst_element_requires_clock;
	gboolean function(GstElement* element, GstClock* clock)gst_element_set_clock;
	GstClock* function(GstElement* element)gst_element_get_clock;
	gboolean function(GstElement* element)gst_element_provides_clock;
	GstClock* function(GstElement* element)gst_element_provide_clock;
	GstStateChangeReturn function(GstElement* element, GstState state)gst_element_set_state;
	GstStateChangeReturn function(GstElement* element, GstState* state, GstState* pending, GstClockTime timeout)gst_element_get_state;
	gboolean function(GstElement* element, gboolean lockedState)gst_element_set_locked_state;
	gboolean function(GstElement* element)gst_element_is_locked_state;
	void function(GstElement* element)gst_element_abort_state;
	GstStateChangeReturn function(GstElement* element, GstStateChangeReturn ret)gst_element_continue_state;
	void function(GstElement* element)gst_element_lost_state;
	gchar* function(GstState state)gst_element_state_get_name;
	gchar* function(GstStateChangeReturn stateRet)gst_element_state_change_return_get_name;
	gboolean function(GstElement* element)gst_element_sync_state_with_parent;
	void function(GstElement* element, GstTagList* list)gst_element_found_tags;
	void function(GstElement* element, GstPad* pad, GstTagList* list)gst_element_found_tags_for_pad;
	void function(GstElement* element, GstMessageType type, GQuark domain, gint code, gchar* text, gchar* dbug, gchar* file, gchar* funct, gint line)gst_element_message_full;
	gboolean function(GstElement* element, GstMessage* message)gst_element_post_message;
	GstQueryType* function(GstElement* element)gst_element_get_query_types;
	gboolean function(GstElement* element, GstQuery* query)gst_element_query;
	gboolean function(GstElement* element, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal)gst_element_query_convert;
	gboolean function(GstElement* element, GstFormat* format, gint64* cur)gst_element_query_position;
	gboolean function(GstElement* element, GstFormat* format, gint64* duration)gst_element_query_duration;
	gboolean function(GstElement* element, GstEvent* event)gst_element_send_event;
	gboolean function(GstElement* element, GstFormat format, GstSeekFlags seekFlags, gint64 seekPos)gst_element_seek_simple;
	gboolean function(GstElement* element, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, gint64 cur, GstSeekType stopType, gint64 stop)gst_element_seek;

	// gstreamer.ElementFactory

	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GType type)gst_element_register;
	GstElementFactory* function(gchar* name)gst_element_factory_find;
	GType function(GstElementFactory* factory)gst_element_factory_get_element_type;
	gchar* function(GstElementFactory* factory)gst_element_factory_get_longname;
	gchar* function(GstElementFactory* factory)gst_element_factory_get_klass;
	gchar* function(GstElementFactory* factory)gst_element_factory_get_description;
	gchar* function(GstElementFactory* factory)gst_element_factory_get_author;
	guint function(GstElementFactory* factory)gst_element_factory_get_num_pad_templates;
	gint function(GstElementFactory* factory)gst_element_factory_get_uri_type;
	gchar** function(GstElementFactory* factory)gst_element_factory_get_uri_protocols;
	GstElement* function(GstElementFactory* factory, gchar* name)gst_element_factory_create;
	GstElement* function(gchar* factoryname, gchar* name)gst_element_factory_make;
	gboolean function(GstElementFactory* factory, GstCaps* caps)gst_element_factory_can_sink_caps;
	gboolean function(GstElementFactory* factory, GstCaps* caps)gst_element_factory_can_src_caps;
	GList* function(GstElementFactory* factory)gst_element_factory_get_static_pad_templates;

	// gstreamer.Event

	GstStructure* function(GstEvent* event)gst_event_get_structure;
	GstEvent* function(GstFormat format, gint64 minsize, gint64 maxsize, gboolean async)gst_event_new_buffer_size;
	GstEvent* function(GstEventType type, GstStructure* structure)gst_event_new_custom;
	GstEvent* function()gst_event_new_eos;
	GstEvent* function()gst_event_new_flush_start;
	GstEvent* function()gst_event_new_flush_stop;
	GstEvent* function(GstClockTime latency)gst_event_new_latency;
	GstEvent* function(GstStructure* structure)gst_event_new_navigation;
	GstEvent* function(gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 position)gst_event_new_new_segment;
	GstEvent* function(gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 position)gst_event_new_new_segment_full;
	GstEvent* function(gdouble proportion, GstClockTimeDiff diff, GstClockTime timestamp)gst_event_new_qos;
	GstEvent* function(gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, gint64 cur, GstSeekType stopType, gint64 stop)gst_event_new_seek;
	GstEvent* function(GstTagList* taglist)gst_event_new_tag;
	void function(GstEvent* event, GstFormat* format, gint64* minsize, gint64* maxsize, gboolean* async)gst_event_parse_buffer_size;
	void function(GstEvent* event, GstClockTime* latency)gst_event_parse_latency;
	void function(GstEvent* event, gboolean* update, gdouble* rate, GstFormat* format, gint64* start, gint64* stop, gint64* position)gst_event_parse_new_segment;
	void function(GstEvent* event, gboolean* update, gdouble* rate, gdouble* appliedRate, GstFormat* format, gint64* start, gint64* stop, gint64* position)gst_event_parse_new_segment_full;
	void function(GstEvent* event, gdouble* proportion, GstClockTimeDiff* diff, GstClockTime* timestamp)gst_event_parse_qos;
	void function(GstEvent* event, gdouble* rate, GstFormat* format, GstSeekFlags* flags, GstSeekType* curType, gint64* cur, GstSeekType* stopType, gint64* stop)gst_event_parse_seek;
	void function(GstEvent* event, GstTagList** taglist)gst_event_parse_tag;
	GstEvent* function(GstEvent* ev)gst_event_ref;
	GstEventTypeFlags function(GstEventType type)gst_event_type_get_flags;
	gchar* function(GstEventType type)gst_event_type_get_name;
	GQuark function(GstEventType type)gst_event_type_to_quark;

	// gstreamer.

	gchar* function(GstFormat format)gst_format_get_name;
	GQuark function(GstFormat format)gst_format_to_quark;
	GstFormat function(gchar* nick, gchar* description)gst_format_register;
	GstFormat function(gchar* nick)gst_format_get_by_nick;
	gboolean function(GstFormat* formats, GstFormat format)gst_formats_contains;
	GstFormatDefinition* function(GstFormat format)gst_format_get_details;
	GstIterator* function()gst_format_iterate_definitions;

	// gstreamer.

	gchar* function(GQuark domain, gint code)gst_error_get_message;

	// gstreamer.GhostPad

	GstPad* function(gchar* name, GstPad* target)gst_ghost_pad_new;
	GstPad* function(gchar* name, GstPadDirection dir)gst_ghost_pad_new_no_target;
	GstPad* function(gchar* name, GstPad* target, GstPadTemplate* templ)gst_ghost_pad_new_from_template;
	GstPad* function(gchar* name, GstPadTemplate* templ)gst_ghost_pad_new_no_target_from_template;
	gboolean function(GstGhostPad* gpad, GstPad* newtarget)gst_ghost_pad_set_target;
	GstPad* function(GstGhostPad* gpad)gst_ghost_pad_get_target;

	// gstreamer.Index

	GstIndex* function()gst_index_new;
	void function(GstIndex* index, gint id)gst_index_commit;
	gint function(GstIndex* index)gst_index_get_group;
	gint function(GstIndex* index)gst_index_new_group;
	gboolean function(GstIndex* index, gint groupnum)gst_index_set_group;
	void function(GstIndex* index, GstIndexCertainty certainty)gst_index_set_certainty;
	GstIndexCertainty function(GstIndex* index)gst_index_get_certainty;
	void function(GstIndex* index, GstIndexFilter filter, gpointer userData)gst_index_set_filter;
	void function(GstIndex* index, GstIndexFilter filter, gpointer userData, GDestroyNotify userDataDestroy)gst_index_set_filter_full;
	void function(GstIndex* index, GstIndexResolver resolver, gpointer userData)gst_index_set_resolver;
	gboolean function(GstIndex* index, GstObject* writer, gint* id)gst_index_get_writer_id;
	GstIndexEntry* function(GstIndex* index, gint id, GstFormat format)gst_index_add_format;
	GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, GstFormat format, gint64 value, ... )gst_index_add_association;
	GstIndexEntry* function(GstIndex* index, gint id, GstAssocFlags flags, gint n, GstIndexAssociation* list)gst_index_add_associationv;
	GstIndexEntry* function(GstIndex* index, gint id, gchar* key, GType type, gpointer object)gst_index_add_object;
	GstIndexEntry* function(GstIndex* index, gint id, gchar* description)gst_index_add_id;
	GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value)gst_index_get_assoc_entry;
	GstIndexEntry* function(GstIndex* index, gint id, GstIndexLookupMethod method, GstAssocFlags flags, GstFormat format, gint64 value, GCompareDataFunc func, gpointer userData)gst_index_get_assoc_entry_full;
	GstIndexEntry* function(GstIndexEntry* entry)gst_index_entry_copy;
	void function(GstIndexEntry* entry)gst_index_entry_free;
	gboolean function(GstIndexEntry* entry, GstFormat format, gint64* value)gst_index_entry_assoc_map;

	// gstreamer.IndexFactory

	GstIndexFactory* function(gchar* name, gchar* longdesc, GType type)gst_index_factory_new;
	void function(GstIndexFactory* factory)gst_index_factory_destroy;
	GstIndexFactory* function(gchar* name)gst_index_factory_find;
	GstIndex* function(GstIndexFactory* factory)gst_index_factory_create;
	GstIndex* function(gchar* name)gst_index_factory_make;

	// gstreamer.Iterator

	GstIterator* function(guint size, GType type, GMutex* lock, guint32* masterCookie, GstIteratorNextFunction next, GstIteratorItemFunction item, GstIteratorResyncFunction resync, GstIteratorFreeFunction free)gst_iterator_new;
	GstIterator* function(GType type, GMutex* lock, guint32* masterCookie, GList** list, gpointer owner, GstIteratorItemFunction item, GstIteratorDisposeFunction free)gst_iterator_new_list;
	GstIteratorResult function(GstIterator* it, gpointer* elem)gst_iterator_next;
	void function(GstIterator* it)gst_iterator_resync;
	void function(GstIterator* it)gst_iterator_free;
	void function(GstIterator* it, GstIterator* other)gst_iterator_push;
	GstIterator* function(GstIterator* it, GCompareFunc func, gpointer userData)gst_iterator_filter;
	GstIteratorResult function(GstIterator* it, GstIteratorFoldFunction func, GValue* ret, gpointer userData)gst_iterator_fold;
	GstIteratorResult function(GstIterator* it, GFunc func, gpointer userData)gst_iterator_foreach;
	gpointer function(GstIterator* it, GCompareFunc func, gpointer userData)gst_iterator_find_custom;

	// gstreamer.Message

	GQuark function(GstMessageType type)gst_message_type_to_quark;
	gchar* function(GstMessageType type)gst_message_type_get_name;
	GstStructure* function(GstMessage* message)gst_message_get_structure;
	GstMessage* function(GstObject* src, GstStructure* structure)gst_message_new_application;
	GstMessage* function(GstObject* src, GstClock* clock, gboolean ready)gst_message_new_clock_provide;
	GstMessage* function(GstObject* src, GstClock* clock)gst_message_new_clock_lost;
	GstMessage* function(GstMessageType type, GstObject* src, GstStructure* structure)gst_message_new_custom;
	GstMessage* function(GstObject* src, GstStructure* structure)gst_message_new_element;
	GstMessage* function(GstObject* src)gst_message_new_eos;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug)gst_message_new_error;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug)gst_message_new_info;
	GstMessage* function(GstObject* src, GstClock* clock)gst_message_new_new_clock;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position)gst_message_new_segment_done;
	GstMessage* function(GstObject* src, GstFormat format, gint64 position)gst_message_new_segment_start;
	GstMessage* function(GstObject* src, GstState oldstate, GstState newstate, GstState pending)gst_message_new_state_changed;
	GstMessage* function(GstObject* src, GstTagList* tagList)gst_message_new_tag;
	GstMessage* function(GstObject* src, gint percent)gst_message_new_buffering;
	GstMessage* function(GstObject* src, GError* error, gchar* dbug)gst_message_new_warning;
	GstMessage* function(GstObject* src, GstFormat format, gint64 duration)gst_message_new_duration;
	GstMessage* function(GstObject* src)gst_message_new_state_dirty;
	GstMessage* function(GstObject* src)gst_message_new_latency;
	void function(GstMessage* message, GstClock** clock)gst_message_parse_clock_lost;
	void function(GstMessage* message, GstClock** clock, gboolean* ready)gst_message_parse_clock_provide;
	void function(GstMessage* message, GError** gerror, gchar** dbug)gst_message_parse_error;
	void function(GstMessage* message, GError** gerror, gchar** dbug)gst_message_parse_info;
	void function(GstMessage* message, GstClock** clock)gst_message_parse_new_clock;
	void function(GstMessage* message, GstFormat* format, gint64* position)gst_message_parse_segment_done;
	void function(GstMessage* message, GstFormat* format, gint64* position)gst_message_parse_segment_start;
	void function(GstMessage* message, GstState* oldstate, GstState* newstate, GstState* pending)gst_message_parse_state_changed;
	void function(GstMessage* message, GstTagList** tagList)gst_message_parse_tag;
	void function(GstMessage* message, gint* percent)gst_message_parse_buffering;
	void function(GstMessage* message, GError** gerror, gchar** dbug)gst_message_parse_warning;
	void function(GstMessage* message, GstFormat* format, gint64* duration)gst_message_parse_duration;
	GstMessage* function(GstMessage* msg)gst_message_ref;

	// gstreamer.MiniObject

	GstMiniObject* function(GType type)gst_mini_object_new;
	GstMiniObject* function(GstMiniObject* miniObject)gst_mini_object_copy;
	gboolean function(GstMiniObject* miniObject)gst_mini_object_is_writable;
	GstMiniObject* function(GstMiniObject* miniObject)gst_mini_object_make_writable;
	GstMiniObject* function(GstMiniObject* miniObject)gst_mini_object_ref;
	void function(GstMiniObject* miniObject)gst_mini_object_unref;
	void function(GstMiniObject** olddata, GstMiniObject* newdata)gst_mini_object_replace;
	GParamSpec* function(char* name, char* nick, char* blurb, GType objectType, GParamFlags flags)gst_param_spec_mini_object;
	void function(GValue* value, GstMiniObject* miniObject)gst_value_set_mini_object;
	void function(GValue* value, GstMiniObject* miniObject)gst_value_take_mini_object;
	GstMiniObject* function(GValue* value)gst_value_get_mini_object;

	// gstreamer.ObjectGst

	gboolean function(GstObject* object, gchar* name)gst_object_set_name;
	gchar* function(GstObject* object)gst_object_get_name;
	gboolean function(GstObject* object, GstObject* parent)gst_object_set_parent;
	GstObject* function(GstObject* object)gst_object_get_parent;
	void function(GstObject* object)gst_object_unparent;
	gchar* function(GstObject* object)gst_object_get_name_prefix;
	void function(GstObject* object, gchar* namePrefix)gst_object_set_name_prefix;
	void function(GObject* object, GstObject* orig, GParamSpec* pspec, gchar** excludedProps)gst_object_default_deep_notify;
	void function(GstObject* source, GError* error, gchar* dbug)gst_object_default_error;
	gboolean function(GList* list, gchar* name)gst_object_check_uniqueness;
	gboolean function(GstObject* object, GstObject* ancestor)gst_object_has_ancestor;
	//xmlNodePtr function(GstObject* object, xmlNodePtr parent)gst_object_save_thyself;
	//void function(GstObject* object, xmlNodePtr self)gst_object_restore_thyself;
	gpointer function(gpointer object)gst_object_ref;
	void function(gpointer object)gst_object_unref;
	void function(gpointer object)gst_object_sink;
	void function(GstObject** oldobj, GstObject* newobj)gst_object_replace;
	gchar* function(GstObject* object)gst_object_get_path_string;
	//guint function(GstObjectClass* klass, gchar* name, gpointer func, gpointer funcData)gst_class_signal_connect;
	//void function(GstObject* object, gchar* name, xmlNodePtr self)gst_class_signal_emit_by_name;

	// gstreamer.Pad

	GstPadDirection function(GstPad* pad)gst_pad_get_direction;
	GstElement* function(GstPad* pad)gst_pad_get_parent_element;
	GstPadTemplate* function(GstPad* pad)gst_pad_get_pad_template;
	GstPadLinkReturn function(GstPad* srcpad, GstPad* sinkpad)gst_pad_link;
	gboolean function(GstPad* srcpad, GstPad* sinkpad)gst_pad_unlink;
	gboolean function(GstPad* pad)gst_pad_is_linked;
	gboolean function(GstPad* srcpad, GstPad* sinkpad)gst_pad_can_link;
	GstCaps* function(GstPad* pad)gst_pad_get_caps;
	GstCaps* function(GstPad* srcpad)gst_pad_get_allowed_caps;
	GstCaps* function(GstPad* pad)gst_pad_get_negotiated_caps;
	GstCaps* function(GstPad* pad)gst_pad_get_pad_template_caps;
	gboolean function(GstPad* pad, GstCaps* caps)gst_pad_set_caps;
	GstPad* function(GstPad* pad)gst_pad_get_peer;
	GstCaps* function(GstPad* pad)gst_pad_peer_get_caps;
	void function(GstPad* pad)gst_pad_use_fixed_caps;
	gboolean function(GstPad* pad)gst_pad_is_active;
	gboolean function(GstPad* pad, gboolean blocked)gst_pad_set_blocked;
	gboolean function(GstPad* pad, gboolean blocked, GstPadBlockCallback callback, gpointer userData)gst_pad_set_blocked_async;
	gboolean function(GstPad* pad)gst_pad_is_blocked;
	gboolean function(GstPad* pad)gst_pad_is_blocking;
	gulong function(GstPad* pad, GCallback handler, gpointer data)gst_pad_add_data_probe;
	gulong function(GstPad* pad, GCallback handler, gpointer data)gst_pad_add_buffer_probe;
	gulong function(GstPad* pad, GCallback handler, gpointer data)gst_pad_add_event_probe;
	void function(GstPad* pad, guint handlerId)gst_pad_remove_data_probe;
	void function(GstPad* pad, guint handlerId)gst_pad_remove_buffer_probe;
	void function(GstPad* pad, guint handlerId)gst_pad_remove_event_probe;
	GstPad* function(gchar* name, GstPadDirection direction)gst_pad_new;
	GstPad* function(GstPadTemplate* templ, gchar* name)gst_pad_new_from_template;
	GstPad* function(GstStaticPadTemplate* templ, gchar* name)gst_pad_new_from_static_template;
	GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf)gst_pad_alloc_buffer;
	GstFlowReturn function(GstPad* pad, guint64 offset, gint size, GstCaps* caps, GstBuffer** buf)gst_pad_alloc_buffer_and_set_caps;
	void function(GstPad* pad, GstPadBufferAllocFunction bufalloc)gst_pad_set_bufferalloc_function;
	void function(GstPad* pad, GstPadChainFunction chain)gst_pad_set_chain_function;
	void function(GstPad* pad, GstPadCheckGetRangeFunction check)gst_pad_set_checkgetrange_function;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer)gst_pad_get_range;
	void function(GstPad* pad, GstPadGetRangeFunction get)gst_pad_set_getrange_function;
	void function(GstPad* pad, GstPadEventFunction event)gst_pad_set_event_function;
	void function(GstPad* pad, GstPadLinkFunction link)gst_pad_set_link_function;
	void function(GstPad* pad, GstPadUnlinkFunction unlink)gst_pad_set_unlink_function;
	gboolean function(GstPad* pad, GstCaps* caps)gst_pad_accept_caps;
	void function(GstPad* pad, GstPadAcceptCapsFunction acceptcaps)gst_pad_set_acceptcaps_function;
	void function(GstPad* pad, GstPadGetCapsFunction getcaps)gst_pad_set_getcaps_function;
	GstCaps* function(GstPad* pad)gst_pad_proxy_getcaps;
	void function(GstPad* pad, GstPadSetCapsFunction setcaps)gst_pad_set_setcaps_function;
	gboolean function(GstPad* pad, GstCaps* caps)gst_pad_proxy_setcaps;
	void function(GstPad* pad, GstCaps* caps)gst_pad_fixate_caps;
	void function(GstPad* pad, GstPadFixateCapsFunction fixatecaps)gst_pad_set_fixatecaps_function;
	GstCaps* function(GstPad* pad)gst_pad_get_fixed_caps_func;
	gboolean function(GstPad* pad, GstCaps* caps)gst_pad_peer_accept_caps;
	void function(GstPad* pad, GstPadActivateFunction activate)gst_pad_set_activate_function;
	void function(GstPad* pad, GstPadActivateModeFunction activatepush)gst_pad_set_activatepush_function;
	void function(GstPad* pad, GstPadActivateModeFunction activatepull)gst_pad_set_activatepull_function;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer)gst_pad_push;
	gboolean function(GstPad* pad, GstEvent* event)gst_pad_push_event;
	gboolean function(GstPad* pad)gst_pad_check_pull_range;
	GstFlowReturn function(GstPad* pad, guint64 offset, guint size, GstBuffer** buffer)gst_pad_pull_range;
	gboolean function(GstPad* pad, gboolean active)gst_pad_activate_pull;
	gboolean function(GstPad* pad, gboolean active)gst_pad_activate_push;
	gboolean function(GstPad* pad, GstEvent* event)gst_pad_send_event;
	gboolean function(GstPad* pad, GstEvent* event)gst_pad_event_default;
	gboolean function(GstPad* pad, GstQuery* query)gst_pad_query;
	gboolean function(GstPad* pad, GstQuery* query)gst_pad_query_default;
	gboolean function(GstPad* pad, GstFormat* format, gint64* cur)gst_pad_query_position;
	gboolean function(GstPad* pad, GstFormat* format, gint64* duration)gst_pad_query_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal)gst_pad_query_convert;
	gboolean function(GstPad* pad, GstFormat* format, gint64* cur)gst_pad_query_peer_position;
	gboolean function(GstPad* pad, GstFormat* format, gint64* duration)gst_pad_query_peer_duration;
	gboolean function(GstPad* pad, GstFormat srcFormat, gint64 srcVal, GstFormat* destFormat, gint64* destVal)gst_pad_query_peer_convert;
	void function(GstPad* pad, GstPadQueryFunction query)gst_pad_set_query_function;
	void function(GstPad* pad, GstPadQueryTypeFunction typeFunc)gst_pad_set_query_type_function;
	GstQueryType* function(GstPad* pad)gst_pad_get_query_types;
	GstQueryType* function(GstPad* pad)gst_pad_get_query_types_default;
	void function(GstPad* pad, GstPadIntLinkFunction intlink)gst_pad_set_internal_link_function;
	GList* function(GstPad* pad)gst_pad_get_internal_links;
	GList* function(GstPad* pad)gst_pad_get_internal_links_default;
	//void function(xmlNodePtr self, GstObject* parent)gst_pad_load_and_link;
	gboolean function(GstPad* pad, GstPadDispatcherFunction dispatch, gpointer data)gst_pad_dispatcher;
	void function(GstPad* pad, gpointer priv)gst_pad_set_element_private;
	gpointer function(GstPad* pad)gst_pad_get_element_private;
	GstFlowReturn function(GstPad* pad, GstBuffer* buffer)gst_pad_chain;
	gboolean function(GstPad* pad, GstTaskFunction func, gpointer data)gst_pad_start_task;
	gboolean function(GstPad* pad)gst_pad_pause_task;
	gboolean function(GstPad* pad)gst_pad_stop_task;
	gboolean function(GstPad* pad, gboolean active)gst_pad_set_active;

	// gstreamer.PadTemplate

	GstPadTemplate* function(GstStaticPadTemplate* padTemplate)gst_static_pad_template_get;
	GstCaps* function(GstStaticPadTemplate* templ)gst_static_pad_template_get_caps;
	GstPadTemplate* function(gchar* nameTemplate, GstPadDirection direction, GstPadPresence presence, GstCaps* caps)gst_pad_template_new;
	GstCaps* function(GstPadTemplate* templ)gst_pad_template_get_caps;

	// gstreamer.Parse

	GQuark function()gst_parse_error_quark;
	GstElement* function(gchar* pipelineDescription, GError** error)gst_parse_launch;
	GstElement* function(gchar** argv, GError** error)gst_parse_launchv;
	GstElement* function(gchar* binDescription, gboolean ghostUnconnectedPads, GError** err)gst_parse_bin_from_description;

	// gstreamer.Pipeline

	GstElement* function(gchar* name)gst_pipeline_new;
	GstBus* function(GstPipeline* pipeline)gst_pipeline_get_bus;
	gboolean function(GstPipeline* pipeline, GstClock* clock)gst_pipeline_set_clock;
	GstClock* function(GstPipeline* pipeline)gst_pipeline_get_clock;
	void function(GstPipeline* pipeline, GstClock* clock)gst_pipeline_use_clock;
	void function(GstPipeline* pipeline)gst_pipeline_auto_clock;
	void function(GstPipeline* pipeline, GstClockTime time)gst_pipeline_set_new_stream_time;
	GstClockTime function(GstPipeline* pipeline)gst_pipeline_get_last_stream_time;
	void function(GstPipeline* pipeline, gboolean autoFlush)gst_pipeline_set_auto_flush_bus;
	gboolean function(GstPipeline* pipeline)gst_pipeline_get_auto_flush_bus;
	void function(GstPipeline* pipeline, GstClockTime delay)gst_pipeline_set_delay;
	GstClockTime function(GstPipeline* pipeline)gst_pipeline_get_delay;

	// gstreamer.Plugin

	GQuark function()gst_plugin_error_quark;
	gchar* function(GstPlugin* plugin)gst_plugin_get_name;
	gchar* function(GstPlugin* plugin)gst_plugin_get_description;
	gchar* function(GstPlugin* plugin)gst_plugin_get_filename;
	gchar* function(GstPlugin* plugin)gst_plugin_get_license;
	gchar* function(GstPlugin* plugin)gst_plugin_get_package;
	gchar* function(GstPlugin* plugin)gst_plugin_get_origin;
	gchar* function(GstPlugin* plugin)gst_plugin_get_source;
	gchar* function(GstPlugin* plugin)gst_plugin_get_version;
	GModule* function(GstPlugin* plugin)gst_plugin_get_module;
	gboolean function(GstPlugin* plugin)gst_plugin_is_loaded;
	gboolean function(GstPlugin* plugin, gchar* name)gst_plugin_name_filter;
	GstPlugin* function(gchar* filename, GError** error)gst_plugin_load_file;
	GstPlugin* function(GstPlugin* plugin)gst_plugin_load;
	GstPlugin* function(gchar* name)gst_plugin_load_by_name;
	void function(GList* list)gst_plugin_list_free;

	// gstreamer.PluginFeature

	gboolean function(GstPluginFeature* feature, GstTypeNameData* data)gst_plugin_feature_type_name_filter;
	void function(GstPluginFeature* feature, guint rank)gst_plugin_feature_set_rank;
	void function(GstPluginFeature* feature, gchar* name)gst_plugin_feature_set_name;
	guint function(GstPluginFeature* feature)gst_plugin_feature_get_rank;
	gchar* function(GstPluginFeature* feature)gst_plugin_feature_get_name;
	GstPluginFeature* function(GstPluginFeature* feature)gst_plugin_feature_load;
	void function(GList* list)gst_plugin_feature_list_free;
	gboolean function(GstPluginFeature* feature, guint minMajor, guint minMinor, guint minMicro)gst_plugin_feature_check_version;

	// gstreamer.Query

	gchar* function(GstQueryType query)gst_query_type_get_name;
	GQuark function(GstQueryType query)gst_query_type_to_quark;
	GstQueryType function(gchar* nick, gchar* description)gst_query_type_register;
	GstQueryType function(gchar* nick)gst_query_type_get_by_nick;
	gboolean function(GstQueryType* types, GstQueryType type)gst_query_types_contains;
	GstQueryTypeDefinition* function(GstQueryType type)gst_query_type_get_details;
	GstIterator* function()gst_query_type_iterate_definitions;
	GstQuery* function(GstQueryType type, GstStructure* structure)gst_query_new_application;
	GstStructure* function(GstQuery* query)gst_query_get_structure;
	GstQuery* function(GstFormat srcFormat, gint64 value, GstFormat destFormat)gst_query_new_convert;
	void function(GstQuery* query, GstFormat srcFormat, gint64 srcValue, GstFormat destFormat, gint64 destValue)gst_query_set_convert;
	void function(GstQuery* query, GstFormat* srcFormat, gint64* srcValue, GstFormat* destFormat, gint64* destValue)gst_query_parse_convert;
	GstQuery* function(GstFormat format)gst_query_new_position;
	void function(GstQuery* query, GstFormat format, gint64 cur)gst_query_set_position;
	void function(GstQuery* query, GstFormat* format, gint64* cur)gst_query_parse_position;
	GstQuery* function(GstFormat format)gst_query_new_duration;
	void function(GstQuery* query, GstFormat format, gint64 duration)gst_query_set_duration;
	void function(GstQuery* query, GstFormat* format, gint64* duration)gst_query_parse_duration;
	GstQuery* function()gst_query_new_latency;
	void function(GstQuery* query, gboolean* live, GstClockTime* minLatency, GstClockTime* maxLatency)gst_query_parse_latency;
	void function(GstQuery* query, gboolean live, GstClockTime minLatency, GstClockTime maxLatency)gst_query_set_latency;
	GstQuery* function(GstFormat format)gst_query_new_seeking;
	void function(GstQuery* query, GstFormat format, gboolean seekable, gint64 segmentStart, gint64 segmentEnd)gst_query_set_seeking;
	void function(GstQuery* query, GstFormat* format, gboolean* seekable, gint64* segmentStart, gint64* segmentEnd)gst_query_parse_seeking;
	GstQuery* function()gst_query_new_formats;
	void function(GstQuery* query, gint nFormats, ... )gst_query_set_formats;
	void function(GstQuery* query, gint nFormats, GstFormat* formats)gst_query_set_formatsv;
	void function(GstQuery* query, guint* nFormats)gst_query_parse_formats_length;
	void function(GstQuery* query, guint nth, GstFormat* format)gst_query_parse_formats_nth;
	GstQuery* function(GstFormat format)gst_query_new_segment;
	void function(GstQuery* query, gdouble rate, GstFormat format, gint64 startValue, gint64 stopValue)gst_query_set_segment;
	void function(GstQuery* query, gdouble* rate, GstFormat* format, gint64* startValue, gint64* stopValue)gst_query_parse_segment;

	// gstreamer.Registry

	GstRegistry* function()gst_registry_get_default;
	GList* function(GstRegistry* registry, GType type)gst_registry_get_feature_list;
	GList* function(GstRegistry* registry, gchar* name)gst_registry_get_feature_list_by_plugin;
	GList* function(GstRegistry* registry)gst_registry_get_path_list;
	GList* function(GstRegistry* registry)gst_registry_get_plugin_list;
	gboolean function(GstRegistry* registry, GstPlugin* plugin)gst_registry_add_plugin;
	void function(GstRegistry* registry, GstPlugin* plugin)gst_registry_remove_plugin;
	GList* function(GstRegistry* registry, GstPluginFilter filter, gboolean first, gpointer userData)gst_registry_plugin_filter;
	GList* function(GstRegistry* registry, GstPluginFeatureFilter filter, gboolean first, gpointer userData)gst_registry_feature_filter;
	GstPlugin* function(GstRegistry* registry, gchar* name)gst_registry_find_plugin;
	GstPluginFeature* function(GstRegistry* registry, gchar* name, GType type)gst_registry_find_feature;
	GstPluginFeature* function(GstRegistry* registry, char* name)gst_registry_lookup_feature;
	gboolean function(GstRegistry* registry, gchar* path)gst_registry_scan_path;
	gboolean function(GstRegistry* registry, char* location)gst_registry_binary_read_cache;
	gboolean function(GstRegistry* registry, char* location)gst_registry_binary_write_cache;
	gboolean function(GstRegistry* registry, char* location)gst_registry_xml_read_cache;
	gboolean function(GstRegistry* registry, char* location)gst_registry_xml_write_cache;
	GstPlugin* function(GstRegistry* registry, char* filename)gst_registry_lookup;
	void function(GstRegistry* registry, GstPluginFeature* feature)gst_registry_remove_feature;
	gboolean function(GstRegistry* registry, GstPluginFeature* feature)gst_registry_add_feature;
	gboolean function(gchar* featureName, guint minMajor, guint minMinor, guint minMicro)gst_default_registry_check_feature_version;

	// gstreamer.Segment

	gboolean function(GstSegment* segment, GstFormat format, gint64 start, gint64 stop, gint64* clipStart, gint64* clipStop)gst_segment_clip;
	void function(GstSegment* segment, GstFormat format)gst_segment_init;
	GstSegment* function()gst_segment_new;
	void function(GstSegment* segment)gst_segment_free;
	void function(GstSegment* segment, GstFormat format, gint64 duration)gst_segment_set_duration;
	void function(GstSegment* segment, GstFormat format, gint64 position)gst_segment_set_last_stop;
	void function(GstSegment* segment, gboolean update, gdouble rate, GstFormat format, gint64 start, gint64 stop, gint64 time)gst_segment_set_newsegment;
	void function(GstSegment* segment, gboolean update, gdouble rate, gdouble appliedRate, GstFormat format, gint64 start, gint64 stop, gint64 time)gst_segment_set_newsegment_full;
	void function(GstSegment* segment, gdouble rate, GstFormat format, GstSeekFlags flags, GstSeekType curType, gint64 cur, GstSeekType stopType, gint64 stop, gboolean* update)gst_segment_set_seek;
	gint64 function(GstSegment* segment, GstFormat format, gint64 position)gst_segment_to_running_time;
	gint64 function(GstSegment* segment, GstFormat format, gint64 position)gst_segment_to_stream_time;

	// gstreamer.Structure

	GstStructure* function(gchar* name)gst_structure_empty_new;
	GstStructure* function(GQuark quark)gst_structure_id_empty_new;
	GstStructure* function(gchar* name, gchar* firstfield, ... )gst_structure_new;
	GstStructure* function(gchar* name, gchar* firstfield, va_list varargs)gst_structure_new_valist;
	GstStructure* function(GstStructure* structure)gst_structure_copy;
	void function(GstStructure* structure)gst_structure_free;
	gchar* function(GstStructure* structure)gst_structure_get_name;
	gboolean function(GstStructure* structure, gchar* name)gst_structure_has_name;
	void function(GstStructure* structure, gchar* name)gst_structure_set_name;
	GQuark function(GstStructure* structure)gst_structure_get_name_id;
	GValue* function(GstStructure* structure, GQuark field)gst_structure_id_get_value;
	void function(GstStructure* structure, GQuark field, GValue* value)gst_structure_id_set_value;
	GValue* function(GstStructure* structure, gchar* fieldname)gst_structure_get_value;
	void function(GstStructure* structure, gchar* fieldname, GValue* value)gst_structure_set_value;
	void function(GstStructure* structure, gchar* fieldname, ... )gst_structure_set;
	void function(GstStructure* structure, gchar* fieldname, va_list varargs)gst_structure_set_valist;
	void function(GstStructure* structure, GQuark fieldname, ... )gst_structure_id_set;
	void function(GstStructure* structure, GQuark fieldname, va_list varargs)gst_structure_id_set_valist;
	void function(GstStructure* structure, gchar* fieldname)gst_structure_remove_field;
	void function(GstStructure* structure, gchar* fieldname, ... )gst_structure_remove_fields;
	void function(GstStructure* structure, gchar* fieldname, va_list varargs)gst_structure_remove_fields_valist;
	void function(GstStructure* structure)gst_structure_remove_all_fields;
	GType function(GstStructure* structure, gchar* fieldname)gst_structure_get_field_type;
	gboolean function(GstStructure* structure, GstStructureForeachFunc func, gpointer userData)gst_structure_foreach;
	gint function(GstStructure* structure)gst_structure_n_fields;
	gboolean function(GstStructure* structure, gchar* fieldname)gst_structure_has_field;
	gboolean function(GstStructure* structure, gchar* fieldname, GType type)gst_structure_has_field_typed;
	gboolean function(GstStructure* structure, gchar* fieldname, gboolean* value)gst_structure_get_boolean;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* value)gst_structure_get_int;
	gboolean function(GstStructure* structure, gchar* fieldname, guint32* value)gst_structure_get_fourcc;
	gboolean function(GstStructure* structure, gchar* fieldname, gdouble* value)gst_structure_get_double;
	gchar* function(GstStructure* structure, gchar* fieldname)gst_structure_get_string;
	gboolean function(GstStructure* structure, gchar* fieldname, GDate** value)gst_structure_get_date;
	gboolean function(GstStructure* structure, gchar* fieldname, GstClockTime* value)gst_structure_get_clock_time;
	gboolean function(GstStructure* structure, gchar* fieldname, GType enumtype, gint* value)gst_structure_get_enum;
	gboolean function(GstStructure* structure, gchar* fieldname, gint* valueNumerator, gint* valueDenominator)gst_structure_get_fraction;
	gboolean function(GstStructure* structure, GstStructureMapFunc func, gpointer userData)gst_structure_map_in_place;
	gchar* function(GstStructure* structure, guint index)gst_structure_nth_field_name;
	void function(GstStructure* structure, gint* refcount)gst_structure_set_parent_refcount;
	gchar* function(GstStructure* structure)gst_structure_to_string;
	GstStructure* function(gchar* string, gchar** end)gst_structure_from_string;
	gboolean function(GstStructure* structure, char* fieldName, int target)gst_structure_fixate_field_nearest_int;
	gboolean function(GstStructure* structure, char* fieldName, double target)gst_structure_fixate_field_nearest_double;
	gboolean function(GstStructure* structure, char* fieldName, gint targetNumerator, gint targetDenominator)gst_structure_fixate_field_nearest_fraction;
	gboolean function(GstStructure* structure, char* fieldName, gboolean target)gst_structure_fixate_field_boolean;

	// gstreamer.SystemClock

	GstClock* function()gst_system_clock_obtain;

	// gstreamer.TagList

	void function(gchar* name, GstTagFlag flag, GType type, gchar* nick, gchar* blurb, GstTagMergeFunc func)gst_tag_register;
	void function(GValue* dest, GValue* src)gst_tag_merge_use_first;
	void function(GValue* dest, GValue* src)gst_tag_merge_strings_with_comma;
	gboolean function(gchar* tag)gst_tag_exists;
	GType function(gchar* tag)gst_tag_get_type;
	gchar* function(gchar* tag)gst_tag_get_nick;
	gchar* function(gchar* tag)gst_tag_get_description;
	GstTagFlag function(gchar* tag)gst_tag_get_flag;
	gboolean function(gchar* tag)gst_tag_is_fixed;
	GstTagList* function()gst_tag_list_new;
	gboolean function(gconstpointer p)gst_is_tag_list;
	gboolean function(GstTagList* list)gst_tag_list_is_empty;
	GstTagList* function(GstTagList* list)gst_tag_list_copy;
	void function(GstTagList* into, GstTagList* from, GstTagMergeMode mode)gst_tag_list_insert;
	GstTagList* function(GstTagList* list1, GstTagList* list2, GstTagMergeMode mode)gst_tag_list_merge;
	void function(GstTagList* list)gst_tag_list_free;
	guint function(GstTagList* list, gchar* tag)gst_tag_list_get_tag_size;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... )gst_tag_list_add;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, ... )gst_tag_list_add_values;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs)gst_tag_list_add_valist;
	void function(GstTagList* list, GstTagMergeMode mode, gchar* tag, va_list varArgs)gst_tag_list_add_valist_values;
	void function(GstTagList* list, gchar* tag)gst_tag_list_remove_tag;
	void function(GstTagList* list, GstTagForeachFunc func, gpointer userData)gst_tag_list_foreach;
	GValue* function(GstTagList* list, gchar* tag, guint index)gst_tag_list_get_value_index;
	gboolean function(GValue* dest, GstTagList* list, gchar* tag)gst_tag_list_copy_value;
	gboolean function(GstTagList* list, gchar* tag, gchar* value)gst_tag_list_get_char;
	gboolean function(GstTagList* list, gchar* tag, guint index, gchar* value)gst_tag_list_get_char_index;
	gboolean function(GstTagList* list, gchar* tag, guchar* value)gst_tag_list_get_uchar;
	gboolean function(GstTagList* list, gchar* tag, guint index, guchar* value)gst_tag_list_get_uchar_index;
	gboolean function(GstTagList* list, gchar* tag, gboolean* value)gst_tag_list_get_boolean;
	gboolean function(GstTagList* list, gchar* tag, guint index, gboolean* value)gst_tag_list_get_boolean_index;
	gboolean function(GstTagList* list, gchar* tag, gint* value)gst_tag_list_get_int;
	gboolean function(GstTagList* list, gchar* tag, guint index, gint* value)gst_tag_list_get_int_index;
	gboolean function(GstTagList* list, gchar* tag, guint* value)gst_tag_list_get_uint;
	gboolean function(GstTagList* list, gchar* tag, guint index, guint* value)gst_tag_list_get_uint_index;
	gboolean function(GstTagList* list, gchar* tag, glong* value)gst_tag_list_get_long;
	gboolean function(GstTagList* list, gchar* tag, guint index, glong* value)gst_tag_list_get_long_index;
	gboolean function(GstTagList* list, gchar* tag, gulong* value)gst_tag_list_get_ulong;
	gboolean function(GstTagList* list, gchar* tag, guint index, gulong* value)gst_tag_list_get_ulong_index;
	gboolean function(GstTagList* list, gchar* tag, gint64* value)gst_tag_list_get_int64;
	gboolean function(GstTagList* list, gchar* tag, guint index, gint64* value)gst_tag_list_get_int64_index;
	gboolean function(GstTagList* list, gchar* tag, guint64* value)gst_tag_list_get_uint64;
	gboolean function(GstTagList* list, gchar* tag, guint index, guint64* value)gst_tag_list_get_uint64_index;
	gboolean function(GstTagList* list, gchar* tag, gfloat* value)gst_tag_list_get_float;
	gboolean function(GstTagList* list, gchar* tag, guint index, gfloat* value)gst_tag_list_get_float_index;
	gboolean function(GstTagList* list, gchar* tag, gdouble* value)gst_tag_list_get_double;
	gboolean function(GstTagList* list, gchar* tag, guint index, gdouble* value)gst_tag_list_get_double_index;
	gboolean function(GstTagList* list, gchar* tag, gchar** value)gst_tag_list_get_string;
	gboolean function(GstTagList* list, gchar* tag, guint index, gchar** value)gst_tag_list_get_string_index;
	gboolean function(GstTagList* list, gchar* tag, gpointer* value)gst_tag_list_get_pointer;
	gboolean function(GstTagList* list, gchar* tag, guint index, gpointer* value)gst_tag_list_get_pointer_index;
	gboolean function(GstTagList* list, gchar* tag, GDate** value)gst_tag_list_get_date;
	gboolean function(GstTagList* list, gchar* tag, guint index, GDate** value)gst_tag_list_get_date_index;

	// gstreamer.TagSetter

	void function(GstTagSetter* setter, GstTagList* list, GstTagMergeMode mode)gst_tag_setter_merge_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... )gst_tag_setter_add_tags;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, ... )gst_tag_setter_add_tag_values;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs)gst_tag_setter_add_tag_valist;
	void function(GstTagSetter* setter, GstTagMergeMode mode, gchar* tag, va_list varArgs)gst_tag_setter_add_tag_valist_values;
	GstTagList* function(GstTagSetter* setter)gst_tag_setter_get_tag_list;
	void function(GstTagSetter* setter, GstTagMergeMode mode)gst_tag_setter_set_tag_merge_mode;
	GstTagMergeMode function(GstTagSetter* setter)gst_tag_setter_get_tag_merge_mode;

	// gstreamer.Task

	void function()gst_task_cleanup_all;
	GstTask* function(GstTaskFunction func, gpointer data)gst_task_create;
	GstTaskState function(GstTask* task)gst_task_get_state;
	gboolean function(GstTask* task)gst_task_join;
	gboolean function(GstTask* task)gst_task_pause;
	void function(GstTask* task, GStaticRecMutex* mutex)gst_task_set_lock;
	gboolean function(GstTask* task)gst_task_start;
	gboolean function(GstTask* task)gst_task_stop;

	// gstreamer.TypeFind

	guint8* function(GstTypeFind* find, gint64 offset, guint size)gst_type_find_peek;
	void function(GstTypeFind* find, guint probability, GstCaps* caps)gst_type_find_suggest;
	guint64 function(GstTypeFind* find)gst_type_find_get_length;
	gboolean function(GstPlugin* plugin, gchar* name, guint rank, GstTypeFindFunction func, gchar** extensions, GstCaps* possibleCaps, gpointer data, GDestroyNotify dataNotify)gst_type_find_register;

	// gstreamer.TypeFindFactory

	GList* function()gst_type_find_factory_get_list;
	gchar** function(GstTypeFindFactory* factory)gst_type_find_factory_get_extensions;
	GstCaps* function(GstTypeFindFactory* factory)gst_type_find_factory_get_caps;
	void function(GstTypeFindFactory* factory, GstTypeFind* find)gst_type_find_factory_call_function;


}

Symbol[] gstreamerLinks =
[

	{ "gst_init",  cast(void**)& gst_init},
	{ "gst_init_check",  cast(void**)& gst_init_check},
	{ "gst_init_get_option_group",  cast(void**)& gst_init_get_option_group},
	{ "gst_deinit",  cast(void**)& gst_deinit},
	{ "gst_version",  cast(void**)& gst_version},
	{ "gst_version_string",  cast(void**)& gst_version_string},
	{ "gst_bin_new",  cast(void**)& gst_bin_new},
	{ "gst_bin_add",  cast(void**)& gst_bin_add},
	{ "gst_bin_remove",  cast(void**)& gst_bin_remove},
	{ "gst_bin_get_by_name",  cast(void**)& gst_bin_get_by_name},
	{ "gst_bin_get_by_name_recurse_up",  cast(void**)& gst_bin_get_by_name_recurse_up},
	{ "gst_bin_get_by_interface",  cast(void**)& gst_bin_get_by_interface},
	{ "gst_bin_iterate_elements",  cast(void**)& gst_bin_iterate_elements},
	{ "gst_bin_iterate_recurse",  cast(void**)& gst_bin_iterate_recurse},
	{ "gst_bin_iterate_sinks",  cast(void**)& gst_bin_iterate_sinks},
	{ "gst_bin_iterate_sorted",  cast(void**)& gst_bin_iterate_sorted},
	{ "gst_bin_iterate_sources",  cast(void**)& gst_bin_iterate_sources},
	{ "gst_bin_iterate_all_by_interface",  cast(void**)& gst_bin_iterate_all_by_interface},
	{ "gst_bin_add_many",  cast(void**)& gst_bin_add_many},
	{ "gst_bin_remove_many",  cast(void**)& gst_bin_remove_many},
	{ "gst_bin_find_unconnected_pad",  cast(void**)& gst_bin_find_unconnected_pad},
	{ "gst_buffer_new",  cast(void**)& gst_buffer_new},
	{ "gst_buffer_new_and_alloc",  cast(void**)& gst_buffer_new_and_alloc},
	{ "gst_buffer_ref",  cast(void**)& gst_buffer_ref},
	{ "gst_buffer_is_metadata_writable",  cast(void**)& gst_buffer_is_metadata_writable},
	{ "gst_buffer_make_metadata_writable",  cast(void**)& gst_buffer_make_metadata_writable},
	{ "gst_buffer_get_caps",  cast(void**)& gst_buffer_get_caps},
	{ "gst_buffer_set_caps",  cast(void**)& gst_buffer_set_caps},
	{ "gst_buffer_create_sub",  cast(void**)& gst_buffer_create_sub},
	{ "gst_buffer_is_span_fast",  cast(void**)& gst_buffer_is_span_fast},
	{ "gst_buffer_span",  cast(void**)& gst_buffer_span},
	{ "gst_buffer_stamp",  cast(void**)& gst_buffer_stamp},
	{ "gst_buffer_join",  cast(void**)& gst_buffer_join},
	{ "gst_buffer_merge",  cast(void**)& gst_buffer_merge},
	{ "gst_bus_new",  cast(void**)& gst_bus_new},
	{ "gst_bus_post",  cast(void**)& gst_bus_post},
	{ "gst_bus_have_pending",  cast(void**)& gst_bus_have_pending},
	{ "gst_bus_peek",  cast(void**)& gst_bus_peek},
	{ "gst_bus_pop",  cast(void**)& gst_bus_pop},
	{ "gst_bus_set_flushing",  cast(void**)& gst_bus_set_flushing},
	{ "gst_bus_set_sync_handler",  cast(void**)& gst_bus_set_sync_handler},
	{ "gst_bus_sync_signal_handler",  cast(void**)& gst_bus_sync_signal_handler},
	{ "gst_bus_create_watch",  cast(void**)& gst_bus_create_watch},
	{ "gst_bus_add_watch_full",  cast(void**)& gst_bus_add_watch_full},
	{ "gst_bus_add_watch",  cast(void**)& gst_bus_add_watch},
	{ "gst_bus_disable_sync_message_emission",  cast(void**)& gst_bus_disable_sync_message_emission},
	{ "gst_bus_enable_sync_message_emission",  cast(void**)& gst_bus_enable_sync_message_emission},
	{ "gst_bus_async_signal_func",  cast(void**)& gst_bus_async_signal_func},
	{ "gst_bus_add_signal_watch",  cast(void**)& gst_bus_add_signal_watch},
	{ "gst_bus_add_signal_watch_full",  cast(void**)& gst_bus_add_signal_watch_full},
	{ "gst_bus_remove_signal_watch",  cast(void**)& gst_bus_remove_signal_watch},
	{ "gst_bus_poll",  cast(void**)& gst_bus_poll},
	{ "gst_caps_new_empty",  cast(void**)& gst_caps_new_empty},
	{ "gst_caps_new_any",  cast(void**)& gst_caps_new_any},
	{ "gst_caps_new_simple",  cast(void**)& gst_caps_new_simple},
	{ "gst_caps_new_full",  cast(void**)& gst_caps_new_full},
	{ "gst_caps_new_full_valist",  cast(void**)& gst_caps_new_full_valist},
	{ "gst_caps_copy",  cast(void**)& gst_caps_copy},
	{ "gst_caps_copy_nth",  cast(void**)& gst_caps_copy_nth},
	{ "gst_static_caps_get",  cast(void**)& gst_static_caps_get},
	{ "gst_caps_append",  cast(void**)& gst_caps_append},
	{ "gst_caps_append_structure",  cast(void**)& gst_caps_append_structure},
	{ "gst_caps_get_size",  cast(void**)& gst_caps_get_size},
	{ "gst_caps_get_structure",  cast(void**)& gst_caps_get_structure},
	{ "gst_caps_set_simple",  cast(void**)& gst_caps_set_simple},
	{ "gst_caps_set_simple_valist",  cast(void**)& gst_caps_set_simple_valist},
	{ "gst_caps_is_any",  cast(void**)& gst_caps_is_any},
	{ "gst_caps_is_empty",  cast(void**)& gst_caps_is_empty},
	{ "gst_caps_is_fixed",  cast(void**)& gst_caps_is_fixed},
	{ "gst_caps_is_equal",  cast(void**)& gst_caps_is_equal},
	{ "gst_caps_is_equal_fixed",  cast(void**)& gst_caps_is_equal_fixed},
	{ "gst_caps_is_always_compatible",  cast(void**)& gst_caps_is_always_compatible},
	{ "gst_caps_is_subset",  cast(void**)& gst_caps_is_subset},
	{ "gst_caps_intersect",  cast(void**)& gst_caps_intersect},
	{ "gst_caps_union",  cast(void**)& gst_caps_union},
	{ "gst_caps_normalize",  cast(void**)& gst_caps_normalize},
	{ "gst_caps_do_simplify",  cast(void**)& gst_caps_do_simplify},
	//{ "gst_caps_save_thyself",  cast(void**)& gst_caps_save_thyself},
	//{ "gst_caps_load_thyself",  cast(void**)& gst_caps_load_thyself},
	{ "gst_caps_replace",  cast(void**)& gst_caps_replace},
	{ "gst_caps_to_string",  cast(void**)& gst_caps_to_string},
	{ "gst_caps_from_string",  cast(void**)& gst_caps_from_string},
	{ "gst_caps_subtract",  cast(void**)& gst_caps_subtract},
	{ "gst_caps_make_writable",  cast(void**)& gst_caps_make_writable},
	{ "gst_caps_ref",  cast(void**)& gst_caps_ref},
	{ "gst_caps_truncate",  cast(void**)& gst_caps_truncate},
	{ "gst_caps_unref",  cast(void**)& gst_caps_unref},
	{ "gst_clock_add_observation",  cast(void**)& gst_clock_add_observation},
	{ "gst_clock_set_master",  cast(void**)& gst_clock_set_master},
	{ "gst_clock_get_master",  cast(void**)& gst_clock_get_master},
	{ "gst_clock_set_resolution",  cast(void**)& gst_clock_set_resolution},
	{ "gst_clock_get_resolution",  cast(void**)& gst_clock_get_resolution},
	{ "gst_clock_get_time",  cast(void**)& gst_clock_get_time},
	{ "gst_clock_new_single_shot_id",  cast(void**)& gst_clock_new_single_shot_id},
	{ "gst_clock_new_periodic_id",  cast(void**)& gst_clock_new_periodic_id},
	{ "gst_clock_get_internal_time",  cast(void**)& gst_clock_get_internal_time},
	{ "gst_clock_adjust_unlocked",  cast(void**)& gst_clock_adjust_unlocked},
	{ "gst_clock_get_calibration",  cast(void**)& gst_clock_get_calibration},
	{ "gst_clock_set_calibration",  cast(void**)& gst_clock_set_calibration},
	{ "gst_clock_id_get_time",  cast(void**)& gst_clock_id_get_time},
	{ "gst_clock_id_wait",  cast(void**)& gst_clock_id_wait},
	{ "gst_clock_id_wait_async",  cast(void**)& gst_clock_id_wait_async},
	{ "gst_clock_id_unschedule",  cast(void**)& gst_clock_id_unschedule},
	{ "gst_clock_id_compare_func",  cast(void**)& gst_clock_id_compare_func},
	{ "gst_clock_id_ref",  cast(void**)& gst_clock_id_ref},
	{ "gst_clock_id_unref",  cast(void**)& gst_clock_id_unref},
	{ "gst_element_class_add_pad_template",  cast(void**)& gst_element_class_add_pad_template},
	{ "gst_element_class_get_pad_template",  cast(void**)& gst_element_class_get_pad_template},
	{ "gst_element_class_get_pad_template_list",  cast(void**)& gst_element_class_get_pad_template_list},
	{ "gst_element_class_install_std_props",  cast(void**)& gst_element_class_install_std_props},
	{ "gst_element_class_set_details",  cast(void**)& gst_element_class_set_details},
	{ "gst_element_add_pad",  cast(void**)& gst_element_add_pad},
	{ "gst_element_get_pad",  cast(void**)& gst_element_get_pad},
	{ "gst_element_create_all_pads",  cast(void**)& gst_element_create_all_pads},
	{ "gst_element_get_compatible_pad",  cast(void**)& gst_element_get_compatible_pad},
	{ "gst_element_get_compatible_pad_template",  cast(void**)& gst_element_get_compatible_pad_template},
	{ "gst_element_get_request_pad",  cast(void**)& gst_element_get_request_pad},
	{ "gst_element_get_static_pad",  cast(void**)& gst_element_get_static_pad},
	{ "gst_element_no_more_pads",  cast(void**)& gst_element_no_more_pads},
	{ "gst_element_release_request_pad",  cast(void**)& gst_element_release_request_pad},
	{ "gst_element_remove_pad",  cast(void**)& gst_element_remove_pad},
	{ "gst_element_iterate_pads",  cast(void**)& gst_element_iterate_pads},
	{ "gst_element_iterate_sink_pads",  cast(void**)& gst_element_iterate_sink_pads},
	{ "gst_element_iterate_src_pads",  cast(void**)& gst_element_iterate_src_pads},
	{ "gst_element_link",  cast(void**)& gst_element_link},
	{ "gst_element_unlink",  cast(void**)& gst_element_unlink},
	{ "gst_element_link_many",  cast(void**)& gst_element_link_many},
	{ "gst_element_unlink_many",  cast(void**)& gst_element_unlink_many},
	{ "gst_element_link_pads",  cast(void**)& gst_element_link_pads},
	{ "gst_element_unlink_pads",  cast(void**)& gst_element_unlink_pads},
	{ "gst_element_link_pads_filtered",  cast(void**)& gst_element_link_pads_filtered},
	{ "gst_element_link_filtered",  cast(void**)& gst_element_link_filtered},
	{ "gst_element_set_base_time",  cast(void**)& gst_element_set_base_time},
	{ "gst_element_get_base_time",  cast(void**)& gst_element_get_base_time},
	{ "gst_element_set_bus",  cast(void**)& gst_element_set_bus},
	{ "gst_element_get_bus",  cast(void**)& gst_element_get_bus},
	{ "gst_element_get_factory",  cast(void**)& gst_element_get_factory},
	{ "gst_element_set_index",  cast(void**)& gst_element_set_index},
	{ "gst_element_get_index",  cast(void**)& gst_element_get_index},
	{ "gst_element_is_indexable",  cast(void**)& gst_element_is_indexable},
	{ "gst_element_requires_clock",  cast(void**)& gst_element_requires_clock},
	{ "gst_element_set_clock",  cast(void**)& gst_element_set_clock},
	{ "gst_element_get_clock",  cast(void**)& gst_element_get_clock},
	{ "gst_element_provides_clock",  cast(void**)& gst_element_provides_clock},
	{ "gst_element_provide_clock",  cast(void**)& gst_element_provide_clock},
	{ "gst_element_set_state",  cast(void**)& gst_element_set_state},
	{ "gst_element_get_state",  cast(void**)& gst_element_get_state},
	{ "gst_element_set_locked_state",  cast(void**)& gst_element_set_locked_state},
	{ "gst_element_is_locked_state",  cast(void**)& gst_element_is_locked_state},
	{ "gst_element_abort_state",  cast(void**)& gst_element_abort_state},
	{ "gst_element_continue_state",  cast(void**)& gst_element_continue_state},
	{ "gst_element_lost_state",  cast(void**)& gst_element_lost_state},
	{ "gst_element_state_get_name",  cast(void**)& gst_element_state_get_name},
	{ "gst_element_sync_state_with_parent",  cast(void**)& gst_element_sync_state_with_parent},
	{ "gst_element_found_tags",  cast(void**)& gst_element_found_tags},
	{ "gst_element_found_tags_for_pad",  cast(void**)& gst_element_found_tags_for_pad},
	{ "gst_element_message_full",  cast(void**)& gst_element_message_full},
	{ "gst_element_post_message",  cast(void**)& gst_element_post_message},
	{ "gst_element_get_query_types",  cast(void**)& gst_element_get_query_types},
	{ "gst_element_query",  cast(void**)& gst_element_query},
	{ "gst_element_query_convert",  cast(void**)& gst_element_query_convert},
	{ "gst_element_query_position",  cast(void**)& gst_element_query_position},
	{ "gst_element_query_duration",  cast(void**)& gst_element_query_duration},
	{ "gst_element_send_event",  cast(void**)& gst_element_send_event},
	{ "gst_element_seek_simple",  cast(void**)& gst_element_seek_simple},
	{ "gst_element_seek",  cast(void**)& gst_element_seek},
	{ "gst_element_register",  cast(void**)& gst_element_register},
	{ "gst_element_factory_find",  cast(void**)& gst_element_factory_find},
	{ "gst_element_factory_get_element_type",  cast(void**)& gst_element_factory_get_element_type},
	{ "gst_element_factory_get_longname",  cast(void**)& gst_element_factory_get_longname},
	{ "gst_element_factory_get_klass",  cast(void**)& gst_element_factory_get_klass},
	{ "gst_element_factory_get_description",  cast(void**)& gst_element_factory_get_description},
	{ "gst_element_factory_get_author",  cast(void**)& gst_element_factory_get_author},
	{ "gst_element_factory_get_num_pad_templates",  cast(void**)& gst_element_factory_get_num_pad_templates},
	{ "gst_element_factory_get_uri_type",  cast(void**)& gst_element_factory_get_uri_type},
	{ "gst_element_factory_get_uri_protocols",  cast(void**)& gst_element_factory_get_uri_protocols},
	{ "gst_element_factory_create",  cast(void**)& gst_element_factory_create},
	{ "gst_element_factory_make",  cast(void**)& gst_element_factory_make},
	{ "gst_element_factory_can_sink_caps",  cast(void**)& gst_element_factory_can_sink_caps},
	{ "gst_element_factory_can_src_caps",  cast(void**)& gst_element_factory_can_src_caps},
	{ "gst_element_factory_get_static_pad_templates",  cast(void**)& gst_element_factory_get_static_pad_templates},
	{ "gst_event_get_structure",  cast(void**)& gst_event_get_structure},
	{ "gst_event_new_buffer_size",  cast(void**)& gst_event_new_buffer_size},
	{ "gst_event_new_custom",  cast(void**)& gst_event_new_custom},
	{ "gst_event_new_eos",  cast(void**)& gst_event_new_eos},
	{ "gst_event_new_flush_start",  cast(void**)& gst_event_new_flush_start},
	{ "gst_event_new_flush_stop",  cast(void**)& gst_event_new_flush_stop},
	{ "gst_event_new_latency",  cast(void**)& gst_event_new_latency},
	{ "gst_event_new_navigation",  cast(void**)& gst_event_new_navigation},
	{ "gst_event_new_new_segment",  cast(void**)& gst_event_new_new_segment},
	{ "gst_event_new_new_segment_full",  cast(void**)& gst_event_new_new_segment_full},
	{ "gst_event_new_qos",  cast(void**)& gst_event_new_qos},
	{ "gst_event_new_seek",  cast(void**)& gst_event_new_seek},
	{ "gst_event_new_tag",  cast(void**)& gst_event_new_tag},
	{ "gst_event_parse_buffer_size",  cast(void**)& gst_event_parse_buffer_size},
	{ "gst_event_parse_latency",  cast(void**)& gst_event_parse_latency},
	{ "gst_event_parse_new_segment",  cast(void**)& gst_event_parse_new_segment},
	{ "gst_event_parse_new_segment_full",  cast(void**)& gst_event_parse_new_segment_full},
	{ "gst_event_parse_qos",  cast(void**)& gst_event_parse_qos},
	{ "gst_event_parse_seek",  cast(void**)& gst_event_parse_seek},
	{ "gst_event_parse_tag",  cast(void**)& gst_event_parse_tag},
	{ "gst_event_ref",  cast(void**)& gst_event_ref},
	{ "gst_event_type_get_flags",  cast(void**)& gst_event_type_get_flags},
	{ "gst_event_type_get_name",  cast(void**)& gst_event_type_get_name},
	{ "gst_event_type_to_quark",  cast(void**)& gst_event_type_to_quark},
	{ "gst_format_get_name",  cast(void**)& gst_format_get_name},
	{ "gst_format_to_quark",  cast(void**)& gst_format_to_quark},
	{ "gst_format_register",  cast(void**)& gst_format_register},
	{ "gst_format_get_by_nick",  cast(void**)& gst_format_get_by_nick},
	{ "gst_formats_contains",  cast(void**)& gst_formats_contains},
	{ "gst_format_get_details",  cast(void**)& gst_format_get_details},
	{ "gst_format_iterate_definitions",  cast(void**)& gst_format_iterate_definitions},
	{ "gst_error_get_message",  cast(void**)& gst_error_get_message},
	{ "gst_ghost_pad_new",  cast(void**)& gst_ghost_pad_new},
	{ "gst_ghost_pad_new_no_target",  cast(void**)& gst_ghost_pad_new_no_target},
	{ "gst_ghost_pad_new_from_template",  cast(void**)& gst_ghost_pad_new_from_template},
	{ "gst_ghost_pad_new_no_target_from_template",  cast(void**)& gst_ghost_pad_new_no_target_from_template},
	{ "gst_ghost_pad_set_target",  cast(void**)& gst_ghost_pad_set_target},
	{ "gst_ghost_pad_get_target",  cast(void**)& gst_ghost_pad_get_target},
	{ "gst_index_new",  cast(void**)& gst_index_new},
	{ "gst_index_commit",  cast(void**)& gst_index_commit},
	{ "gst_index_get_group",  cast(void**)& gst_index_get_group},
	{ "gst_index_new_group",  cast(void**)& gst_index_new_group},
	{ "gst_index_set_group",  cast(void**)& gst_index_set_group},
	{ "gst_index_set_certainty",  cast(void**)& gst_index_set_certainty},
	{ "gst_index_get_certainty",  cast(void**)& gst_index_get_certainty},
	{ "gst_index_set_filter",  cast(void**)& gst_index_set_filter},
	{ "gst_index_set_filter_full",  cast(void**)& gst_index_set_filter_full},
	{ "gst_index_set_resolver",  cast(void**)& gst_index_set_resolver},
	{ "gst_index_get_writer_id",  cast(void**)& gst_index_get_writer_id},
	{ "gst_index_add_format",  cast(void**)& gst_index_add_format},
	{ "gst_index_add_association",  cast(void**)& gst_index_add_association},
	{ "gst_index_add_associationv",  cast(void**)& gst_index_add_associationv},
	{ "gst_index_add_object",  cast(void**)& gst_index_add_object},
	{ "gst_index_add_id",  cast(void**)& gst_index_add_id},
	{ "gst_index_get_assoc_entry",  cast(void**)& gst_index_get_assoc_entry},
	{ "gst_index_get_assoc_entry_full",  cast(void**)& gst_index_get_assoc_entry_full},
	{ "gst_index_entry_copy",  cast(void**)& gst_index_entry_copy},
	{ "gst_index_entry_free",  cast(void**)& gst_index_entry_free},
	{ "gst_index_entry_assoc_map",  cast(void**)& gst_index_entry_assoc_map},
	{ "gst_index_factory_new",  cast(void**)& gst_index_factory_new},
	{ "gst_index_factory_destroy",  cast(void**)& gst_index_factory_destroy},
	{ "gst_index_factory_find",  cast(void**)& gst_index_factory_find},
	{ "gst_index_factory_create",  cast(void**)& gst_index_factory_create},
	{ "gst_index_factory_make",  cast(void**)& gst_index_factory_make},
	{ "gst_iterator_new",  cast(void**)& gst_iterator_new},
	{ "gst_iterator_new_list",  cast(void**)& gst_iterator_new_list},
	{ "gst_iterator_next",  cast(void**)& gst_iterator_next},
	{ "gst_iterator_resync",  cast(void**)& gst_iterator_resync},
	{ "gst_iterator_free",  cast(void**)& gst_iterator_free},
	{ "gst_iterator_push",  cast(void**)& gst_iterator_push},
	{ "gst_iterator_filter",  cast(void**)& gst_iterator_filter},
	{ "gst_iterator_fold",  cast(void**)& gst_iterator_fold},
	{ "gst_iterator_foreach",  cast(void**)& gst_iterator_foreach},
	{ "gst_iterator_find_custom",  cast(void**)& gst_iterator_find_custom},
	{ "gst_message_type_to_quark",  cast(void**)& gst_message_type_to_quark},
	{ "gst_message_type_get_name",  cast(void**)& gst_message_type_get_name},
	{ "gst_message_get_structure",  cast(void**)& gst_message_get_structure},
	{ "gst_message_new_application",  cast(void**)& gst_message_new_application},
	{ "gst_message_new_clock_provide",  cast(void**)& gst_message_new_clock_provide},
	{ "gst_message_new_clock_lost",  cast(void**)& gst_message_new_clock_lost},
	{ "gst_message_new_custom",  cast(void**)& gst_message_new_custom},
	{ "gst_message_new_element",  cast(void**)& gst_message_new_element},
	{ "gst_message_new_eos",  cast(void**)& gst_message_new_eos},
	{ "gst_message_new_error",  cast(void**)& gst_message_new_error},
	{ "gst_message_new_info",  cast(void**)& gst_message_new_info},
	{ "gst_message_new_new_clock",  cast(void**)& gst_message_new_new_clock},
	{ "gst_message_new_segment_done",  cast(void**)& gst_message_new_segment_done},
	{ "gst_message_new_segment_start",  cast(void**)& gst_message_new_segment_start},
	{ "gst_message_new_state_changed",  cast(void**)& gst_message_new_state_changed},
	{ "gst_message_new_tag",  cast(void**)& gst_message_new_tag},
	{ "gst_message_new_buffering",  cast(void**)& gst_message_new_buffering},
	{ "gst_message_new_warning",  cast(void**)& gst_message_new_warning},
	{ "gst_message_new_duration",  cast(void**)& gst_message_new_duration},
	{ "gst_message_new_state_dirty",  cast(void**)& gst_message_new_state_dirty},
	{ "gst_message_new_latency",  cast(void**)& gst_message_new_latency},
	{ "gst_message_parse_clock_lost",  cast(void**)& gst_message_parse_clock_lost},
	{ "gst_message_parse_clock_provide",  cast(void**)& gst_message_parse_clock_provide},
	{ "gst_message_parse_error",  cast(void**)& gst_message_parse_error},
	{ "gst_message_parse_info",  cast(void**)& gst_message_parse_info},
	{ "gst_message_parse_new_clock",  cast(void**)& gst_message_parse_new_clock},
	{ "gst_message_parse_segment_done",  cast(void**)& gst_message_parse_segment_done},
	{ "gst_message_parse_segment_start",  cast(void**)& gst_message_parse_segment_start},
	{ "gst_message_parse_state_changed",  cast(void**)& gst_message_parse_state_changed},
	{ "gst_message_parse_tag",  cast(void**)& gst_message_parse_tag},
	{ "gst_message_parse_buffering",  cast(void**)& gst_message_parse_buffering},
	{ "gst_message_parse_warning",  cast(void**)& gst_message_parse_warning},
	{ "gst_message_parse_duration",  cast(void**)& gst_message_parse_duration},
	{ "gst_message_ref",  cast(void**)& gst_message_ref},
	{ "gst_mini_object_new",  cast(void**)& gst_mini_object_new},
	{ "gst_mini_object_copy",  cast(void**)& gst_mini_object_copy},
	{ "gst_mini_object_is_writable",  cast(void**)& gst_mini_object_is_writable},
	{ "gst_mini_object_make_writable",  cast(void**)& gst_mini_object_make_writable},
	{ "gst_mini_object_ref",  cast(void**)& gst_mini_object_ref},
	{ "gst_mini_object_unref",  cast(void**)& gst_mini_object_unref},
	{ "gst_mini_object_replace",  cast(void**)& gst_mini_object_replace},
	{ "gst_param_spec_mini_object",  cast(void**)& gst_param_spec_mini_object},
	{ "gst_value_set_mini_object",  cast(void**)& gst_value_set_mini_object},
	{ "gst_value_take_mini_object",  cast(void**)& gst_value_take_mini_object},
	{ "gst_value_get_mini_object",  cast(void**)& gst_value_get_mini_object},
	{ "gst_object_set_name",  cast(void**)& gst_object_set_name},
	{ "gst_object_get_name",  cast(void**)& gst_object_get_name},
	{ "gst_object_set_parent",  cast(void**)& gst_object_set_parent},
	{ "gst_object_get_parent",  cast(void**)& gst_object_get_parent},
	{ "gst_object_unparent",  cast(void**)& gst_object_unparent},
	{ "gst_object_get_name_prefix",  cast(void**)& gst_object_get_name_prefix},
	{ "gst_object_set_name_prefix",  cast(void**)& gst_object_set_name_prefix},
	{ "gst_object_default_deep_notify",  cast(void**)& gst_object_default_deep_notify},
	{ "gst_object_default_error",  cast(void**)& gst_object_default_error},
	{ "gst_object_check_uniqueness",  cast(void**)& gst_object_check_uniqueness},
	{ "gst_object_has_ancestor",  cast(void**)& gst_object_has_ancestor},
	//{ "gst_object_save_thyself",  cast(void**)& gst_object_save_thyself},
	//{ "gst_object_restore_thyself",  cast(void**)& gst_object_restore_thyself},
	{ "gst_object_ref",  cast(void**)& gst_object_ref},
	{ "gst_object_unref",  cast(void**)& gst_object_unref},
	{ "gst_object_sink",  cast(void**)& gst_object_sink},
	{ "gst_object_replace",  cast(void**)& gst_object_replace},
	{ "gst_object_get_path_string",  cast(void**)& gst_object_get_path_string},
	//{ "gst_class_signal_connect",  cast(void**)& gst_class_signal_connect},
	//{ "gst_class_signal_emit_by_name",  cast(void**)& gst_class_signal_emit_by_name},
	{ "gst_pad_get_direction",  cast(void**)& gst_pad_get_direction},
	{ "gst_pad_get_parent_element",  cast(void**)& gst_pad_get_parent_element},
	{ "gst_pad_get_pad_template",  cast(void**)& gst_pad_get_pad_template},
	{ "gst_pad_link",  cast(void**)& gst_pad_link},
	{ "gst_pad_unlink",  cast(void**)& gst_pad_unlink},
	{ "gst_pad_is_linked",  cast(void**)& gst_pad_is_linked},
	{ "gst_pad_can_link",  cast(void**)& gst_pad_can_link},
	{ "gst_pad_get_caps",  cast(void**)& gst_pad_get_caps},
	{ "gst_pad_get_allowed_caps",  cast(void**)& gst_pad_get_allowed_caps},
	{ "gst_pad_get_negotiated_caps",  cast(void**)& gst_pad_get_negotiated_caps},
	{ "gst_pad_get_pad_template_caps",  cast(void**)& gst_pad_get_pad_template_caps},
	{ "gst_pad_set_caps",  cast(void**)& gst_pad_set_caps},
	{ "gst_pad_get_peer",  cast(void**)& gst_pad_get_peer},
	{ "gst_pad_peer_get_caps",  cast(void**)& gst_pad_peer_get_caps},
	{ "gst_pad_use_fixed_caps",  cast(void**)& gst_pad_use_fixed_caps},
	{ "gst_pad_is_active",  cast(void**)& gst_pad_is_active},
	{ "gst_pad_set_blocked",  cast(void**)& gst_pad_set_blocked},
	{ "gst_pad_set_blocked_async",  cast(void**)& gst_pad_set_blocked_async},
	{ "gst_pad_is_blocked",  cast(void**)& gst_pad_is_blocked},
	{ "gst_pad_is_blocking",  cast(void**)& gst_pad_is_blocking},
	{ "gst_pad_add_data_probe",  cast(void**)& gst_pad_add_data_probe},
	{ "gst_pad_add_buffer_probe",  cast(void**)& gst_pad_add_buffer_probe},
	{ "gst_pad_add_event_probe",  cast(void**)& gst_pad_add_event_probe},
	{ "gst_pad_remove_data_probe",  cast(void**)& gst_pad_remove_data_probe},
	{ "gst_pad_remove_buffer_probe",  cast(void**)& gst_pad_remove_buffer_probe},
	{ "gst_pad_remove_event_probe",  cast(void**)& gst_pad_remove_event_probe},
	{ "gst_pad_new",  cast(void**)& gst_pad_new},
	{ "gst_pad_new_from_template",  cast(void**)& gst_pad_new_from_template},
	{ "gst_pad_new_from_static_template",  cast(void**)& gst_pad_new_from_static_template},
	{ "gst_pad_alloc_buffer",  cast(void**)& gst_pad_alloc_buffer},
	{ "gst_pad_alloc_buffer_and_set_caps",  cast(void**)& gst_pad_alloc_buffer_and_set_caps},
	{ "gst_pad_set_bufferalloc_function",  cast(void**)& gst_pad_set_bufferalloc_function},
	{ "gst_pad_set_chain_function",  cast(void**)& gst_pad_set_chain_function},
	{ "gst_pad_set_checkgetrange_function",  cast(void**)& gst_pad_set_checkgetrange_function},
	{ "gst_pad_get_range",  cast(void**)& gst_pad_get_range},
	{ "gst_pad_set_getrange_function",  cast(void**)& gst_pad_set_getrange_function},
	{ "gst_pad_set_event_function",  cast(void**)& gst_pad_set_event_function},
	{ "gst_pad_set_link_function",  cast(void**)& gst_pad_set_link_function},
	{ "gst_pad_set_unlink_function",  cast(void**)& gst_pad_set_unlink_function},
	{ "gst_pad_accept_caps",  cast(void**)& gst_pad_accept_caps},
	{ "gst_pad_set_acceptcaps_function",  cast(void**)& gst_pad_set_acceptcaps_function},
	{ "gst_pad_set_getcaps_function",  cast(void**)& gst_pad_set_getcaps_function},
	{ "gst_pad_proxy_getcaps",  cast(void**)& gst_pad_proxy_getcaps},
	{ "gst_pad_set_setcaps_function",  cast(void**)& gst_pad_set_setcaps_function},
	{ "gst_pad_proxy_setcaps",  cast(void**)& gst_pad_proxy_setcaps},
	{ "gst_pad_fixate_caps",  cast(void**)& gst_pad_fixate_caps},
	{ "gst_pad_set_fixatecaps_function",  cast(void**)& gst_pad_set_fixatecaps_function},
	{ "gst_pad_get_fixed_caps_func",  cast(void**)& gst_pad_get_fixed_caps_func},
	{ "gst_pad_peer_accept_caps",  cast(void**)& gst_pad_peer_accept_caps},
	{ "gst_pad_set_activate_function",  cast(void**)& gst_pad_set_activate_function},
	{ "gst_pad_set_activatepush_function",  cast(void**)& gst_pad_set_activatepush_function},
	{ "gst_pad_set_activatepull_function",  cast(void**)& gst_pad_set_activatepull_function},
	{ "gst_pad_push",  cast(void**)& gst_pad_push},
	{ "gst_pad_push_event",  cast(void**)& gst_pad_push_event},
	{ "gst_pad_check_pull_range",  cast(void**)& gst_pad_check_pull_range},
	{ "gst_pad_pull_range",  cast(void**)& gst_pad_pull_range},
	{ "gst_pad_activate_pull",  cast(void**)& gst_pad_activate_pull},
	{ "gst_pad_activate_push",  cast(void**)& gst_pad_activate_push},
	{ "gst_pad_send_event",  cast(void**)& gst_pad_send_event},
	{ "gst_pad_event_default",  cast(void**)& gst_pad_event_default},
	{ "gst_pad_query",  cast(void**)& gst_pad_query},
	{ "gst_pad_query_default",  cast(void**)& gst_pad_query_default},
	{ "gst_pad_query_position",  cast(void**)& gst_pad_query_position},
	{ "gst_pad_query_duration",  cast(void**)& gst_pad_query_duration},
	{ "gst_pad_query_convert",  cast(void**)& gst_pad_query_convert},
	{ "gst_pad_query_peer_position",  cast(void**)& gst_pad_query_peer_position},
	{ "gst_pad_query_peer_duration",  cast(void**)& gst_pad_query_peer_duration},
	{ "gst_pad_query_peer_convert",  cast(void**)& gst_pad_query_peer_convert},
	{ "gst_pad_set_query_function",  cast(void**)& gst_pad_set_query_function},
	{ "gst_pad_set_query_type_function",  cast(void**)& gst_pad_set_query_type_function},
	{ "gst_pad_get_query_types",  cast(void**)& gst_pad_get_query_types},
	{ "gst_pad_get_query_types_default",  cast(void**)& gst_pad_get_query_types_default},
	{ "gst_pad_set_internal_link_function",  cast(void**)& gst_pad_set_internal_link_function},
	{ "gst_pad_get_internal_links",  cast(void**)& gst_pad_get_internal_links},
	{ "gst_pad_get_internal_links_default",  cast(void**)& gst_pad_get_internal_links_default},
	//{ "gst_pad_load_and_link",  cast(void**)& gst_pad_load_and_link},
	{ "gst_pad_dispatcher",  cast(void**)& gst_pad_dispatcher},
	{ "gst_pad_set_element_private",  cast(void**)& gst_pad_set_element_private},
	{ "gst_pad_get_element_private",  cast(void**)& gst_pad_get_element_private},
	{ "gst_pad_chain",  cast(void**)& gst_pad_chain},
	{ "gst_pad_start_task",  cast(void**)& gst_pad_start_task},
	{ "gst_pad_pause_task",  cast(void**)& gst_pad_pause_task},
	{ "gst_pad_stop_task",  cast(void**)& gst_pad_stop_task},
	{ "gst_pad_set_active",  cast(void**)& gst_pad_set_active},
	{ "gst_static_pad_template_get",  cast(void**)& gst_static_pad_template_get},
	{ "gst_static_pad_template_get_caps",  cast(void**)& gst_static_pad_template_get_caps},
	{ "gst_pad_template_new",  cast(void**)& gst_pad_template_new},
	{ "gst_pad_template_get_caps",  cast(void**)& gst_pad_template_get_caps},
	{ "gst_parse_error_quark",  cast(void**)& gst_parse_error_quark},
	{ "gst_parse_launch",  cast(void**)& gst_parse_launch},
	{ "gst_parse_launchv",  cast(void**)& gst_parse_launchv},
	{ "gst_parse_bin_from_description",  cast(void**)& gst_parse_bin_from_description},
	{ "gst_pipeline_new",  cast(void**)& gst_pipeline_new},
	{ "gst_pipeline_get_bus",  cast(void**)& gst_pipeline_get_bus},
	{ "gst_pipeline_set_clock",  cast(void**)& gst_pipeline_set_clock},
	{ "gst_pipeline_get_clock",  cast(void**)& gst_pipeline_get_clock},
	{ "gst_pipeline_use_clock",  cast(void**)& gst_pipeline_use_clock},
	{ "gst_pipeline_auto_clock",  cast(void**)& gst_pipeline_auto_clock},
	{ "gst_pipeline_set_new_stream_time",  cast(void**)& gst_pipeline_set_new_stream_time},
	{ "gst_pipeline_get_last_stream_time",  cast(void**)& gst_pipeline_get_last_stream_time},
	{ "gst_pipeline_set_auto_flush_bus",  cast(void**)& gst_pipeline_set_auto_flush_bus},
	{ "gst_pipeline_get_auto_flush_bus",  cast(void**)& gst_pipeline_get_auto_flush_bus},
	{ "gst_pipeline_set_delay",  cast(void**)& gst_pipeline_set_delay},
	{ "gst_pipeline_get_delay",  cast(void**)& gst_pipeline_get_delay},
	{ "gst_plugin_error_quark",  cast(void**)& gst_plugin_error_quark},
	{ "gst_plugin_get_name",  cast(void**)& gst_plugin_get_name},
	{ "gst_plugin_get_description",  cast(void**)& gst_plugin_get_description},
	{ "gst_plugin_get_filename",  cast(void**)& gst_plugin_get_filename},
	{ "gst_plugin_get_license",  cast(void**)& gst_plugin_get_license},
	{ "gst_plugin_get_package",  cast(void**)& gst_plugin_get_package},
	{ "gst_plugin_get_origin",  cast(void**)& gst_plugin_get_origin},
	{ "gst_plugin_get_source",  cast(void**)& gst_plugin_get_source},
	{ "gst_plugin_get_version",  cast(void**)& gst_plugin_get_version},
	{ "gst_plugin_get_module",  cast(void**)& gst_plugin_get_module},
	{ "gst_plugin_is_loaded",  cast(void**)& gst_plugin_is_loaded},
	{ "gst_plugin_name_filter",  cast(void**)& gst_plugin_name_filter},
	{ "gst_plugin_load_file",  cast(void**)& gst_plugin_load_file},
	{ "gst_plugin_load",  cast(void**)& gst_plugin_load},
	{ "gst_plugin_load_by_name",  cast(void**)& gst_plugin_load_by_name},
	{ "gst_plugin_list_free",  cast(void**)& gst_plugin_list_free},
	{ "gst_plugin_feature_type_name_filter",  cast(void**)& gst_plugin_feature_type_name_filter},
	{ "gst_plugin_feature_set_rank",  cast(void**)& gst_plugin_feature_set_rank},
	{ "gst_plugin_feature_set_name",  cast(void**)& gst_plugin_feature_set_name},
	{ "gst_plugin_feature_get_rank",  cast(void**)& gst_plugin_feature_get_rank},
	{ "gst_plugin_feature_get_name",  cast(void**)& gst_plugin_feature_get_name},
	{ "gst_plugin_feature_load",  cast(void**)& gst_plugin_feature_load},
	{ "gst_plugin_feature_list_free",  cast(void**)& gst_plugin_feature_list_free},
	{ "gst_plugin_feature_check_version",  cast(void**)& gst_plugin_feature_check_version},
	{ "gst_query_type_get_name",  cast(void**)& gst_query_type_get_name},
	{ "gst_query_type_to_quark",  cast(void**)& gst_query_type_to_quark},
	{ "gst_query_type_register",  cast(void**)& gst_query_type_register},
	{ "gst_query_type_get_by_nick",  cast(void**)& gst_query_type_get_by_nick},
	{ "gst_query_types_contains",  cast(void**)& gst_query_types_contains},
	{ "gst_query_type_get_details",  cast(void**)& gst_query_type_get_details},
	{ "gst_query_type_iterate_definitions",  cast(void**)& gst_query_type_iterate_definitions},
	{ "gst_query_new_application",  cast(void**)& gst_query_new_application},
	{ "gst_query_get_structure",  cast(void**)& gst_query_get_structure},
	{ "gst_query_new_convert",  cast(void**)& gst_query_new_convert},
	{ "gst_query_set_convert",  cast(void**)& gst_query_set_convert},
	{ "gst_query_parse_convert",  cast(void**)& gst_query_parse_convert},
	{ "gst_query_new_position",  cast(void**)& gst_query_new_position},
	{ "gst_query_set_position",  cast(void**)& gst_query_set_position},
	{ "gst_query_parse_position",  cast(void**)& gst_query_parse_position},
	{ "gst_query_new_duration",  cast(void**)& gst_query_new_duration},
	{ "gst_query_set_duration",  cast(void**)& gst_query_set_duration},
	{ "gst_query_parse_duration",  cast(void**)& gst_query_parse_duration},
	{ "gst_query_new_latency",  cast(void**)& gst_query_new_latency},
	{ "gst_query_parse_latency",  cast(void**)& gst_query_parse_latency},
	{ "gst_query_set_latency",  cast(void**)& gst_query_set_latency},
	{ "gst_query_new_seeking",  cast(void**)& gst_query_new_seeking},
	{ "gst_query_set_seeking",  cast(void**)& gst_query_set_seeking},
	{ "gst_query_parse_seeking",  cast(void**)& gst_query_parse_seeking},
	{ "gst_query_new_formats",  cast(void**)& gst_query_new_formats},
	{ "gst_query_set_formats",  cast(void**)& gst_query_set_formats},
	{ "gst_query_set_formatsv",  cast(void**)& gst_query_set_formatsv},
	{ "gst_query_parse_formats_length",  cast(void**)& gst_query_parse_formats_length},
	{ "gst_query_parse_formats_nth",  cast(void**)& gst_query_parse_formats_nth},
	{ "gst_query_new_segment",  cast(void**)& gst_query_new_segment},
	{ "gst_query_set_segment",  cast(void**)& gst_query_set_segment},
	{ "gst_query_parse_segment",  cast(void**)& gst_query_parse_segment},
	{ "gst_registry_get_default",  cast(void**)& gst_registry_get_default},
	{ "gst_registry_get_feature_list",  cast(void**)& gst_registry_get_feature_list},
	{ "gst_registry_get_feature_list_by_plugin",  cast(void**)& gst_registry_get_feature_list_by_plugin},
	{ "gst_registry_get_path_list",  cast(void**)& gst_registry_get_path_list},
	{ "gst_registry_get_plugin_list",  cast(void**)& gst_registry_get_plugin_list},
	{ "gst_registry_add_plugin",  cast(void**)& gst_registry_add_plugin},
	{ "gst_registry_remove_plugin",  cast(void**)& gst_registry_remove_plugin},
	{ "gst_registry_plugin_filter",  cast(void**)& gst_registry_plugin_filter},
	{ "gst_registry_feature_filter",  cast(void**)& gst_registry_feature_filter},
	{ "gst_registry_find_plugin",  cast(void**)& gst_registry_find_plugin},
	{ "gst_registry_find_feature",  cast(void**)& gst_registry_find_feature},
	{ "gst_registry_lookup_feature",  cast(void**)& gst_registry_lookup_feature},
	{ "gst_registry_scan_path",  cast(void**)& gst_registry_scan_path},
	{ "gst_registry_binary_read_cache",  cast(void**)& gst_registry_binary_read_cache},
	{ "gst_registry_binary_write_cache",  cast(void**)& gst_registry_binary_write_cache},
	{ "gst_registry_xml_read_cache",  cast(void**)& gst_registry_xml_read_cache},
	{ "gst_registry_xml_write_cache",  cast(void**)& gst_registry_xml_write_cache},
	{ "gst_registry_lookup",  cast(void**)& gst_registry_lookup},
	{ "gst_registry_remove_feature",  cast(void**)& gst_registry_remove_feature},
	{ "gst_registry_add_feature",  cast(void**)& gst_registry_add_feature},
	{ "gst_default_registry_check_feature_version",  cast(void**)& gst_default_registry_check_feature_version},
	{ "gst_segment_clip",  cast(void**)& gst_segment_clip},
	{ "gst_segment_init",  cast(void**)& gst_segment_init},
	{ "gst_segment_new",  cast(void**)& gst_segment_new},
	{ "gst_segment_free",  cast(void**)& gst_segment_free},
	{ "gst_segment_set_duration",  cast(void**)& gst_segment_set_duration},
	{ "gst_segment_set_last_stop",  cast(void**)& gst_segment_set_last_stop},
	{ "gst_segment_set_newsegment",  cast(void**)& gst_segment_set_newsegment},
	{ "gst_segment_set_newsegment_full",  cast(void**)& gst_segment_set_newsegment_full},
	{ "gst_segment_set_seek",  cast(void**)& gst_segment_set_seek},
	{ "gst_segment_to_running_time",  cast(void**)& gst_segment_to_running_time},
	{ "gst_segment_to_stream_time",  cast(void**)& gst_segment_to_stream_time},
	{ "gst_structure_empty_new",  cast(void**)& gst_structure_empty_new},
	{ "gst_structure_id_empty_new",  cast(void**)& gst_structure_id_empty_new},
	{ "gst_structure_new",  cast(void**)& gst_structure_new},
	{ "gst_structure_new_valist",  cast(void**)& gst_structure_new_valist},
	{ "gst_structure_copy",  cast(void**)& gst_structure_copy},
	{ "gst_structure_free",  cast(void**)& gst_structure_free},
	{ "gst_structure_get_name",  cast(void**)& gst_structure_get_name},
	{ "gst_structure_has_name",  cast(void**)& gst_structure_has_name},
	{ "gst_structure_set_name",  cast(void**)& gst_structure_set_name},
	{ "gst_structure_get_name_id",  cast(void**)& gst_structure_get_name_id},
	{ "gst_structure_id_get_value",  cast(void**)& gst_structure_id_get_value},
	{ "gst_structure_id_set_value",  cast(void**)& gst_structure_id_set_value},
	{ "gst_structure_get_value",  cast(void**)& gst_structure_get_value},
	{ "gst_structure_set_value",  cast(void**)& gst_structure_set_value},
	{ "gst_structure_set",  cast(void**)& gst_structure_set},
	{ "gst_structure_set_valist",  cast(void**)& gst_structure_set_valist},
	{ "gst_structure_id_set",  cast(void**)& gst_structure_id_set},
	{ "gst_structure_id_set_valist",  cast(void**)& gst_structure_id_set_valist},
	{ "gst_structure_remove_field",  cast(void**)& gst_structure_remove_field},
	{ "gst_structure_remove_fields",  cast(void**)& gst_structure_remove_fields},
	{ "gst_structure_remove_fields_valist",  cast(void**)& gst_structure_remove_fields_valist},
	{ "gst_structure_remove_all_fields",  cast(void**)& gst_structure_remove_all_fields},
	{ "gst_structure_get_field_type",  cast(void**)& gst_structure_get_field_type},
	{ "gst_structure_foreach",  cast(void**)& gst_structure_foreach},
	{ "gst_structure_n_fields",  cast(void**)& gst_structure_n_fields},
	{ "gst_structure_has_field",  cast(void**)& gst_structure_has_field},
	{ "gst_structure_has_field_typed",  cast(void**)& gst_structure_has_field_typed},
	{ "gst_structure_get_boolean",  cast(void**)& gst_structure_get_boolean},
	{ "gst_structure_get_int",  cast(void**)& gst_structure_get_int},
	{ "gst_structure_get_fourcc",  cast(void**)& gst_structure_get_fourcc},
	{ "gst_structure_get_double",  cast(void**)& gst_structure_get_double},
	{ "gst_structure_get_string",  cast(void**)& gst_structure_get_string},
	{ "gst_structure_get_date",  cast(void**)& gst_structure_get_date},
	{ "gst_structure_get_clock_time",  cast(void**)& gst_structure_get_clock_time},
	{ "gst_structure_get_enum",  cast(void**)& gst_structure_get_enum},
	{ "gst_structure_get_fraction",  cast(void**)& gst_structure_get_fraction},
	{ "gst_structure_map_in_place",  cast(void**)& gst_structure_map_in_place},
	{ "gst_structure_nth_field_name",  cast(void**)& gst_structure_nth_field_name},
	{ "gst_structure_set_parent_refcount",  cast(void**)& gst_structure_set_parent_refcount},
	{ "gst_structure_to_string",  cast(void**)& gst_structure_to_string},
	{ "gst_structure_from_string",  cast(void**)& gst_structure_from_string},
	{ "gst_structure_fixate_field_nearest_int",  cast(void**)& gst_structure_fixate_field_nearest_int},
	{ "gst_structure_fixate_field_nearest_double",  cast(void**)& gst_structure_fixate_field_nearest_double},
	{ "gst_structure_fixate_field_nearest_fraction",  cast(void**)& gst_structure_fixate_field_nearest_fraction},
	{ "gst_structure_fixate_field_boolean",  cast(void**)& gst_structure_fixate_field_boolean},
	{ "gst_system_clock_obtain",  cast(void**)& gst_system_clock_obtain},
	{ "gst_tag_register",  cast(void**)& gst_tag_register},
	{ "gst_tag_merge_use_first",  cast(void**)& gst_tag_merge_use_first},
	{ "gst_tag_merge_strings_with_comma",  cast(void**)& gst_tag_merge_strings_with_comma},
	{ "gst_tag_exists",  cast(void**)& gst_tag_exists},
	{ "gst_tag_get_type",  cast(void**)& gst_tag_get_type},
	{ "gst_tag_get_nick",  cast(void**)& gst_tag_get_nick},
	{ "gst_tag_get_description",  cast(void**)& gst_tag_get_description},
	{ "gst_tag_get_flag",  cast(void**)& gst_tag_get_flag},
	{ "gst_tag_is_fixed",  cast(void**)& gst_tag_is_fixed},
	{ "gst_tag_list_new",  cast(void**)& gst_tag_list_new},
	{ "gst_is_tag_list",  cast(void**)& gst_is_tag_list},
	{ "gst_tag_list_is_empty",  cast(void**)& gst_tag_list_is_empty},
	{ "gst_tag_list_copy",  cast(void**)& gst_tag_list_copy},
	{ "gst_tag_list_insert",  cast(void**)& gst_tag_list_insert},
	{ "gst_tag_list_merge",  cast(void**)& gst_tag_list_merge},
	{ "gst_tag_list_free",  cast(void**)& gst_tag_list_free},
	{ "gst_tag_list_get_tag_size",  cast(void**)& gst_tag_list_get_tag_size},
	{ "gst_tag_list_add",  cast(void**)& gst_tag_list_add},
	{ "gst_tag_list_add_values",  cast(void**)& gst_tag_list_add_values},
	{ "gst_tag_list_add_valist",  cast(void**)& gst_tag_list_add_valist},
	{ "gst_tag_list_add_valist_values",  cast(void**)& gst_tag_list_add_valist_values},
	{ "gst_tag_list_remove_tag",  cast(void**)& gst_tag_list_remove_tag},
	{ "gst_tag_list_foreach",  cast(void**)& gst_tag_list_foreach},
	{ "gst_tag_list_get_value_index",  cast(void**)& gst_tag_list_get_value_index},
	{ "gst_tag_list_copy_value",  cast(void**)& gst_tag_list_copy_value},
	{ "gst_tag_list_get_char",  cast(void**)& gst_tag_list_get_char},
	{ "gst_tag_list_get_char_index",  cast(void**)& gst_tag_list_get_char_index},
	{ "gst_tag_list_get_uchar",  cast(void**)& gst_tag_list_get_uchar},
	{ "gst_tag_list_get_uchar_index",  cast(void**)& gst_tag_list_get_uchar_index},
	{ "gst_tag_list_get_boolean",  cast(void**)& gst_tag_list_get_boolean},
	{ "gst_tag_list_get_boolean_index",  cast(void**)& gst_tag_list_get_boolean_index},
	{ "gst_tag_list_get_int",  cast(void**)& gst_tag_list_get_int},
	{ "gst_tag_list_get_int_index",  cast(void**)& gst_tag_list_get_int_index},
	{ "gst_tag_list_get_uint",  cast(void**)& gst_tag_list_get_uint},
	{ "gst_tag_list_get_uint_index",  cast(void**)& gst_tag_list_get_uint_index},
	{ "gst_tag_list_get_long",  cast(void**)& gst_tag_list_get_long},
	{ "gst_tag_list_get_long_index",  cast(void**)& gst_tag_list_get_long_index},
	{ "gst_tag_list_get_ulong",  cast(void**)& gst_tag_list_get_ulong},
	{ "gst_tag_list_get_ulong_index",  cast(void**)& gst_tag_list_get_ulong_index},
	{ "gst_tag_list_get_int64",  cast(void**)& gst_tag_list_get_int64},
	{ "gst_tag_list_get_int64_index",  cast(void**)& gst_tag_list_get_int64_index},
	{ "gst_tag_list_get_uint64",  cast(void**)& gst_tag_list_get_uint64},
	{ "gst_tag_list_get_uint64_index",  cast(void**)& gst_tag_list_get_uint64_index},
	{ "gst_tag_list_get_float",  cast(void**)& gst_tag_list_get_float},
	{ "gst_tag_list_get_float_index",  cast(void**)& gst_tag_list_get_float_index},
	{ "gst_tag_list_get_double",  cast(void**)& gst_tag_list_get_double},
	{ "gst_tag_list_get_double_index",  cast(void**)& gst_tag_list_get_double_index},
	{ "gst_tag_list_get_string",  cast(void**)& gst_tag_list_get_string},
	{ "gst_tag_list_get_string_index",  cast(void**)& gst_tag_list_get_string_index},
	{ "gst_tag_list_get_pointer",  cast(void**)& gst_tag_list_get_pointer},
	{ "gst_tag_list_get_pointer_index",  cast(void**)& gst_tag_list_get_pointer_index},
	{ "gst_tag_list_get_date",  cast(void**)& gst_tag_list_get_date},
	{ "gst_tag_list_get_date_index",  cast(void**)& gst_tag_list_get_date_index},
	{ "gst_tag_setter_merge_tags",  cast(void**)& gst_tag_setter_merge_tags},
	{ "gst_tag_setter_add_tags",  cast(void**)& gst_tag_setter_add_tags},
	{ "gst_tag_setter_add_tag_values",  cast(void**)& gst_tag_setter_add_tag_values},
	{ "gst_tag_setter_add_tag_valist",  cast(void**)& gst_tag_setter_add_tag_valist},
	{ "gst_tag_setter_add_tag_valist_values",  cast(void**)& gst_tag_setter_add_tag_valist_values},
	{ "gst_tag_setter_get_tag_list",  cast(void**)& gst_tag_setter_get_tag_list},
	{ "gst_tag_setter_set_tag_merge_mode",  cast(void**)& gst_tag_setter_set_tag_merge_mode},
	{ "gst_tag_setter_get_tag_merge_mode",  cast(void**)& gst_tag_setter_get_tag_merge_mode},
	{ "gst_task_cleanup_all",  cast(void**)& gst_task_cleanup_all},
	{ "gst_task_create",  cast(void**)& gst_task_create},
	{ "gst_task_get_state",  cast(void**)& gst_task_get_state},
	{ "gst_task_join",  cast(void**)& gst_task_join},
	{ "gst_task_pause",  cast(void**)& gst_task_pause},
	{ "gst_task_set_lock",  cast(void**)& gst_task_set_lock},
	{ "gst_task_start",  cast(void**)& gst_task_start},
	{ "gst_task_stop",  cast(void**)& gst_task_stop},
	{ "gst_type_find_peek",  cast(void**)& gst_type_find_peek},
	{ "gst_type_find_suggest",  cast(void**)& gst_type_find_suggest},
	{ "gst_type_find_get_length",  cast(void**)& gst_type_find_get_length},
	{ "gst_type_find_register",  cast(void**)& gst_type_find_register},
	{ "gst_type_find_factory_get_list",  cast(void**)& gst_type_find_factory_get_list},
	{ "gst_type_find_factory_get_extensions",  cast(void**)& gst_type_find_factory_get_extensions},
	{ "gst_type_find_factory_get_caps",  cast(void**)& gst_type_find_factory_get_caps},
	{ "gst_type_find_factory_call_function",  cast(void**)& gst_type_find_factory_call_function},

];