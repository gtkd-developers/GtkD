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


module gtkc.glib;

import std.stdio;
import gtkc.glibtypes;
import gtkc.gobjecttypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// glib.ArrayG

	Linker.link(g_array_append_vals, "g_array_append_vals", LIBRARY.GLIB);
	Linker.link(g_array_free, "g_array_free", LIBRARY.GLIB);
	Linker.link(g_array_get_element_size, "g_array_get_element_size", LIBRARY.GLIB);
	Linker.link(g_array_insert_vals, "g_array_insert_vals", LIBRARY.GLIB);
	Linker.link(g_array_new, "g_array_new", LIBRARY.GLIB);
	Linker.link(g_array_prepend_vals, "g_array_prepend_vals", LIBRARY.GLIB);
	Linker.link(g_array_ref, "g_array_ref", LIBRARY.GLIB);
	Linker.link(g_array_remove_index, "g_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_array_remove_index_fast, "g_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_array_remove_range, "g_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_array_set_clear_func, "g_array_set_clear_func", LIBRARY.GLIB);
	Linker.link(g_array_set_size, "g_array_set_size", LIBRARY.GLIB);
	Linker.link(g_array_sized_new, "g_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_array_sort, "g_array_sort", LIBRARY.GLIB);
	Linker.link(g_array_sort_with_data, "g_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_array_unref, "g_array_unref", LIBRARY.GLIB);

	// glib.AsyncQueue

	Linker.link(g_async_queue_length, "g_async_queue_length", LIBRARY.GLIB);
	Linker.link(g_async_queue_length_unlocked, "g_async_queue_length_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_lock, "g_async_queue_lock", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop, "g_async_queue_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop_unlocked, "g_async_queue_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_push, "g_async_queue_push", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_front, "g_async_queue_push_front", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_front_unlocked, "g_async_queue_push_front_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted, "g_async_queue_push_sorted", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted_unlocked, "g_async_queue_push_sorted_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_unlocked, "g_async_queue_push_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref, "g_async_queue_ref", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref_unlocked, "g_async_queue_ref_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_remove, "g_async_queue_remove", LIBRARY.GLIB);
	Linker.link(g_async_queue_remove_unlocked, "g_async_queue_remove_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort, "g_async_queue_sort", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort_unlocked, "g_async_queue_sort_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop, "g_async_queue_timed_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop_unlocked, "g_async_queue_timed_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_timeout_pop, "g_async_queue_timeout_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_timeout_pop_unlocked, "g_async_queue_timeout_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop, "g_async_queue_try_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop_unlocked, "g_async_queue_try_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_unlock, "g_async_queue_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref, "g_async_queue_unref", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref_and_unlock, "g_async_queue_unref_and_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_new, "g_async_queue_new", LIBRARY.GLIB);
	Linker.link(g_async_queue_new_full, "g_async_queue_new_full", LIBRARY.GLIB);

	// glib.BookmarkFile

	Linker.link(g_bookmark_file_add_application, "g_bookmark_file_add_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_add_group, "g_bookmark_file_add_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_free, "g_bookmark_file_free", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_added, "g_bookmark_file_get_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_app_info, "g_bookmark_file_get_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_applications, "g_bookmark_file_get_applications", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_description, "g_bookmark_file_get_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_groups, "g_bookmark_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_icon, "g_bookmark_file_get_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_is_private, "g_bookmark_file_get_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_mime_type, "g_bookmark_file_get_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_modified, "g_bookmark_file_get_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_size, "g_bookmark_file_get_size", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_title, "g_bookmark_file_get_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_uris, "g_bookmark_file_get_uris", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_visited, "g_bookmark_file_get_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_application, "g_bookmark_file_has_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_group, "g_bookmark_file_has_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_item, "g_bookmark_file_has_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data, "g_bookmark_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data_dirs, "g_bookmark_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_file, "g_bookmark_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_move_item, "g_bookmark_file_move_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_application, "g_bookmark_file_remove_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_group, "g_bookmark_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_item, "g_bookmark_file_remove_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_added, "g_bookmark_file_set_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_app_info, "g_bookmark_file_set_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_description, "g_bookmark_file_set_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_groups, "g_bookmark_file_set_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_icon, "g_bookmark_file_set_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_is_private, "g_bookmark_file_set_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_mime_type, "g_bookmark_file_set_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_modified, "g_bookmark_file_set_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_title, "g_bookmark_file_set_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_visited, "g_bookmark_file_set_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_data, "g_bookmark_file_to_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_file, "g_bookmark_file_to_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_error_quark, "g_bookmark_file_error_quark", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_new, "g_bookmark_file_new", LIBRARY.GLIB);

	// glib.ByteArray

	Linker.link(g_byte_array_append, "g_byte_array_append", LIBRARY.GLIB);
	Linker.link(g_byte_array_free, "g_byte_array_free", LIBRARY.GLIB);
	Linker.link(g_byte_array_free_to_bytes, "g_byte_array_free_to_bytes", LIBRARY.GLIB);
	Linker.link(g_byte_array_new, "g_byte_array_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_new_take, "g_byte_array_new_take", LIBRARY.GLIB);
	Linker.link(g_byte_array_prepend, "g_byte_array_prepend", LIBRARY.GLIB);
	Linker.link(g_byte_array_ref, "g_byte_array_ref", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index, "g_byte_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index_fast, "g_byte_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_range, "g_byte_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_byte_array_set_size, "g_byte_array_set_size", LIBRARY.GLIB);
	Linker.link(g_byte_array_sized_new, "g_byte_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort, "g_byte_array_sort", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort_with_data, "g_byte_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_byte_array_unref, "g_byte_array_unref", LIBRARY.GLIB);

	// glib.Bytes

	Linker.link(g_bytes_new, "g_bytes_new", LIBRARY.GLIB);
	Linker.link(g_bytes_new_static, "g_bytes_new_static", LIBRARY.GLIB);
	Linker.link(g_bytes_new_take, "g_bytes_new_take", LIBRARY.GLIB);
	Linker.link(g_bytes_new_with_free_func, "g_bytes_new_with_free_func", LIBRARY.GLIB);
	Linker.link(g_bytes_compare, "g_bytes_compare", LIBRARY.GLIB);
	Linker.link(g_bytes_equal, "g_bytes_equal", LIBRARY.GLIB);
	Linker.link(g_bytes_get_data, "g_bytes_get_data", LIBRARY.GLIB);
	Linker.link(g_bytes_get_size, "g_bytes_get_size", LIBRARY.GLIB);
	Linker.link(g_bytes_hash, "g_bytes_hash", LIBRARY.GLIB);
	Linker.link(g_bytes_new_from_bytes, "g_bytes_new_from_bytes", LIBRARY.GLIB);
	Linker.link(g_bytes_ref, "g_bytes_ref", LIBRARY.GLIB);
	Linker.link(g_bytes_unref, "g_bytes_unref", LIBRARY.GLIB);
	Linker.link(g_bytes_unref_to_array, "g_bytes_unref_to_array", LIBRARY.GLIB);
	Linker.link(g_bytes_unref_to_data, "g_bytes_unref_to_data", LIBRARY.GLIB);

	// glib.Checksum

	Linker.link(g_checksum_new, "g_checksum_new", LIBRARY.GLIB);
	Linker.link(g_checksum_copy, "g_checksum_copy", LIBRARY.GLIB);
	Linker.link(g_checksum_free, "g_checksum_free", LIBRARY.GLIB);
	Linker.link(g_checksum_get_digest, "g_checksum_get_digest", LIBRARY.GLIB);
	Linker.link(g_checksum_get_string, "g_checksum_get_string", LIBRARY.GLIB);
	Linker.link(g_checksum_reset, "g_checksum_reset", LIBRARY.GLIB);
	Linker.link(g_checksum_update, "g_checksum_update", LIBRARY.GLIB);
	Linker.link(g_checksum_type_get_length, "g_checksum_type_get_length", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_bytes, "g_compute_checksum_for_bytes", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_data, "g_compute_checksum_for_data", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_string, "g_compute_checksum_for_string", LIBRARY.GLIB);

	// glib.Cond

	Linker.link(g_cond_broadcast, "g_cond_broadcast", LIBRARY.GLIB);
	Linker.link(g_cond_clear, "g_cond_clear", LIBRARY.GLIB);
	Linker.link(g_cond_init, "g_cond_init", LIBRARY.GLIB);
	Linker.link(g_cond_signal, "g_cond_signal", LIBRARY.GLIB);
	Linker.link(g_cond_wait, "g_cond_wait", LIBRARY.GLIB);
	Linker.link(g_cond_wait_until, "g_cond_wait_until", LIBRARY.GLIB);

	// glib.Date

	Linker.link(g_date_new, "g_date_new", LIBRARY.GLIB);
	Linker.link(g_date_new_dmy, "g_date_new_dmy", LIBRARY.GLIB);
	Linker.link(g_date_new_julian, "g_date_new_julian", LIBRARY.GLIB);
	Linker.link(g_date_add_days, "g_date_add_days", LIBRARY.GLIB);
	Linker.link(g_date_add_months, "g_date_add_months", LIBRARY.GLIB);
	Linker.link(g_date_add_years, "g_date_add_years", LIBRARY.GLIB);
	Linker.link(g_date_clamp, "g_date_clamp", LIBRARY.GLIB);
	Linker.link(g_date_clear, "g_date_clear", LIBRARY.GLIB);
	Linker.link(g_date_compare, "g_date_compare", LIBRARY.GLIB);
	Linker.link(g_date_days_between, "g_date_days_between", LIBRARY.GLIB);
	Linker.link(g_date_free, "g_date_free", LIBRARY.GLIB);
	Linker.link(g_date_get_day, "g_date_get_day", LIBRARY.GLIB);
	Linker.link(g_date_get_day_of_year, "g_date_get_day_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_iso8601_week_of_year, "g_date_get_iso8601_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_julian, "g_date_get_julian", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_week_of_year, "g_date_get_monday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_month, "g_date_get_month", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_week_of_year, "g_date_get_sunday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_weekday, "g_date_get_weekday", LIBRARY.GLIB);
	Linker.link(g_date_get_year, "g_date_get_year", LIBRARY.GLIB);
	Linker.link(g_date_is_first_of_month, "g_date_is_first_of_month", LIBRARY.GLIB);
	Linker.link(g_date_is_last_of_month, "g_date_is_last_of_month", LIBRARY.GLIB);
	Linker.link(g_date_order, "g_date_order", LIBRARY.GLIB);
	Linker.link(g_date_set_day, "g_date_set_day", LIBRARY.GLIB);
	Linker.link(g_date_set_dmy, "g_date_set_dmy", LIBRARY.GLIB);
	Linker.link(g_date_set_julian, "g_date_set_julian", LIBRARY.GLIB);
	Linker.link(g_date_set_month, "g_date_set_month", LIBRARY.GLIB);
	Linker.link(g_date_set_parse, "g_date_set_parse", LIBRARY.GLIB);
	Linker.link(g_date_set_time, "g_date_set_time", LIBRARY.GLIB);
	Linker.link(g_date_set_time_t, "g_date_set_time_t", LIBRARY.GLIB);
	Linker.link(g_date_set_time_val, "g_date_set_time_val", LIBRARY.GLIB);
	Linker.link(g_date_set_year, "g_date_set_year", LIBRARY.GLIB);
	Linker.link(g_date_subtract_days, "g_date_subtract_days", LIBRARY.GLIB);
	Linker.link(g_date_subtract_months, "g_date_subtract_months", LIBRARY.GLIB);
	Linker.link(g_date_subtract_years, "g_date_subtract_years", LIBRARY.GLIB);
	Linker.link(g_date_to_struct_tm, "g_date_to_struct_tm", LIBRARY.GLIB);
	Linker.link(g_date_valid, "g_date_valid", LIBRARY.GLIB);
	Linker.link(g_date_get_days_in_month, "g_date_get_days_in_month", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_weeks_in_year, "g_date_get_monday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_weeks_in_year, "g_date_get_sunday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_is_leap_year, "g_date_is_leap_year", LIBRARY.GLIB);
	Linker.link(g_date_strftime, "g_date_strftime", LIBRARY.GLIB);
	Linker.link(g_date_valid_day, "g_date_valid_day", LIBRARY.GLIB);
	Linker.link(g_date_valid_dmy, "g_date_valid_dmy", LIBRARY.GLIB);
	Linker.link(g_date_valid_julian, "g_date_valid_julian", LIBRARY.GLIB);
	Linker.link(g_date_valid_month, "g_date_valid_month", LIBRARY.GLIB);
	Linker.link(g_date_valid_weekday, "g_date_valid_weekday", LIBRARY.GLIB);
	Linker.link(g_date_valid_year, "g_date_valid_year", LIBRARY.GLIB);

	// glib.DateTime

	Linker.link(g_date_time_new, "g_date_time_new", LIBRARY.GLIB);
	Linker.link(g_date_time_new_from_timeval_local, "g_date_time_new_from_timeval_local", LIBRARY.GLIB);
	Linker.link(g_date_time_new_from_timeval_utc, "g_date_time_new_from_timeval_utc", LIBRARY.GLIB);
	Linker.link(g_date_time_new_from_unix_local, "g_date_time_new_from_unix_local", LIBRARY.GLIB);
	Linker.link(g_date_time_new_from_unix_utc, "g_date_time_new_from_unix_utc", LIBRARY.GLIB);
	Linker.link(g_date_time_new_local, "g_date_time_new_local", LIBRARY.GLIB);
	Linker.link(g_date_time_new_now, "g_date_time_new_now", LIBRARY.GLIB);
	Linker.link(g_date_time_new_now_local, "g_date_time_new_now_local", LIBRARY.GLIB);
	Linker.link(g_date_time_new_now_utc, "g_date_time_new_now_utc", LIBRARY.GLIB);
	Linker.link(g_date_time_new_utc, "g_date_time_new_utc", LIBRARY.GLIB);
	Linker.link(g_date_time_add, "g_date_time_add", LIBRARY.GLIB);
	Linker.link(g_date_time_add_days, "g_date_time_add_days", LIBRARY.GLIB);
	Linker.link(g_date_time_add_full, "g_date_time_add_full", LIBRARY.GLIB);
	Linker.link(g_date_time_add_hours, "g_date_time_add_hours", LIBRARY.GLIB);
	Linker.link(g_date_time_add_minutes, "g_date_time_add_minutes", LIBRARY.GLIB);
	Linker.link(g_date_time_add_months, "g_date_time_add_months", LIBRARY.GLIB);
	Linker.link(g_date_time_add_seconds, "g_date_time_add_seconds", LIBRARY.GLIB);
	Linker.link(g_date_time_add_weeks, "g_date_time_add_weeks", LIBRARY.GLIB);
	Linker.link(g_date_time_add_years, "g_date_time_add_years", LIBRARY.GLIB);
	Linker.link(g_date_time_difference, "g_date_time_difference", LIBRARY.GLIB);
	Linker.link(g_date_time_format, "g_date_time_format", LIBRARY.GLIB);
	Linker.link(g_date_time_get_day_of_month, "g_date_time_get_day_of_month", LIBRARY.GLIB);
	Linker.link(g_date_time_get_day_of_week, "g_date_time_get_day_of_week", LIBRARY.GLIB);
	Linker.link(g_date_time_get_day_of_year, "g_date_time_get_day_of_year", LIBRARY.GLIB);
	Linker.link(g_date_time_get_hour, "g_date_time_get_hour", LIBRARY.GLIB);
	Linker.link(g_date_time_get_microsecond, "g_date_time_get_microsecond", LIBRARY.GLIB);
	Linker.link(g_date_time_get_minute, "g_date_time_get_minute", LIBRARY.GLIB);
	Linker.link(g_date_time_get_month, "g_date_time_get_month", LIBRARY.GLIB);
	Linker.link(g_date_time_get_second, "g_date_time_get_second", LIBRARY.GLIB);
	Linker.link(g_date_time_get_seconds, "g_date_time_get_seconds", LIBRARY.GLIB);
	Linker.link(g_date_time_get_timezone_abbreviation, "g_date_time_get_timezone_abbreviation", LIBRARY.GLIB);
	Linker.link(g_date_time_get_utc_offset, "g_date_time_get_utc_offset", LIBRARY.GLIB);
	Linker.link(g_date_time_get_week_numbering_year, "g_date_time_get_week_numbering_year", LIBRARY.GLIB);
	Linker.link(g_date_time_get_week_of_year, "g_date_time_get_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_time_get_year, "g_date_time_get_year", LIBRARY.GLIB);
	Linker.link(g_date_time_get_ymd, "g_date_time_get_ymd", LIBRARY.GLIB);
	Linker.link(g_date_time_is_daylight_savings, "g_date_time_is_daylight_savings", LIBRARY.GLIB);
	Linker.link(g_date_time_ref, "g_date_time_ref", LIBRARY.GLIB);
	Linker.link(g_date_time_to_local, "g_date_time_to_local", LIBRARY.GLIB);
	Linker.link(g_date_time_to_timeval, "g_date_time_to_timeval", LIBRARY.GLIB);
	Linker.link(g_date_time_to_timezone, "g_date_time_to_timezone", LIBRARY.GLIB);
	Linker.link(g_date_time_to_unix, "g_date_time_to_unix", LIBRARY.GLIB);
	Linker.link(g_date_time_to_utc, "g_date_time_to_utc", LIBRARY.GLIB);
	Linker.link(g_date_time_unref, "g_date_time_unref", LIBRARY.GLIB);
	Linker.link(g_date_time_compare, "g_date_time_compare", LIBRARY.GLIB);
	Linker.link(g_date_time_equal, "g_date_time_equal", LIBRARY.GLIB);
	Linker.link(g_date_time_hash, "g_date_time_hash", LIBRARY.GLIB);

	// glib.Directory

	Linker.link(g_dir_close, "g_dir_close", LIBRARY.GLIB);
	Linker.link(g_dir_read_name, "g_dir_read_name", LIBRARY.GLIB);
	Linker.link(g_dir_rewind, "g_dir_rewind", LIBRARY.GLIB);
	Linker.link(g_dir_make_tmp, "g_dir_make_tmp", LIBRARY.GLIB);
	Linker.link(g_dir_open, "g_dir_open", LIBRARY.GLIB);

	// glib.ErrorG

	Linker.link(g_error_new, "g_error_new", LIBRARY.GLIB);
	Linker.link(g_error_new_literal, "g_error_new_literal", LIBRARY.GLIB);
	Linker.link(g_error_new_valist, "g_error_new_valist", LIBRARY.GLIB);
	Linker.link(g_error_copy, "g_error_copy", LIBRARY.GLIB);
	Linker.link(g_error_free, "g_error_free", LIBRARY.GLIB);
	Linker.link(g_error_matches, "g_error_matches", LIBRARY.GLIB);
	Linker.link(g_propagate_error, "g_propagate_error", LIBRARY.GLIB);
	Linker.link(g_set_error_literal, "g_set_error_literal", LIBRARY.GLIB);
	Linker.link(g_prefix_error, "g_prefix_error", LIBRARY.GLIB);
	Linker.link(g_propagate_prefixed_error, "g_propagate_prefixed_error", LIBRARY.GLIB);
	Linker.link(g_set_error, "g_set_error", LIBRARY.GLIB);

	// glib.HashTable

	Linker.link(g_hash_table_add, "g_hash_table_add", LIBRARY.GLIB);
	Linker.link(g_hash_table_contains, "g_hash_table_contains", LIBRARY.GLIB);
	Linker.link(g_hash_table_destroy, "g_hash_table_destroy", LIBRARY.GLIB);
	Linker.link(g_hash_table_find, "g_hash_table_find", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach, "g_hash_table_foreach", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_remove, "g_hash_table_foreach_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_steal, "g_hash_table_foreach_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_keys, "g_hash_table_get_keys", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_keys_as_array, "g_hash_table_get_keys_as_array", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_values, "g_hash_table_get_values", LIBRARY.GLIB);
	Linker.link(g_hash_table_insert, "g_hash_table_insert", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup, "g_hash_table_lookup", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup_extended, "g_hash_table_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_hash_table_new, "g_hash_table_new", LIBRARY.GLIB);
	Linker.link(g_hash_table_new_full, "g_hash_table_new_full", LIBRARY.GLIB);
	Linker.link(g_hash_table_ref, "g_hash_table_ref", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove, "g_hash_table_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove_all, "g_hash_table_remove_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_replace, "g_hash_table_replace", LIBRARY.GLIB);
	Linker.link(g_hash_table_size, "g_hash_table_size", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal, "g_hash_table_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal_all, "g_hash_table_steal_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_unref, "g_hash_table_unref", LIBRARY.GLIB);
	Linker.link(g_direct_equal, "g_direct_equal", LIBRARY.GLIB);
	Linker.link(g_direct_hash, "g_direct_hash", LIBRARY.GLIB);
	Linker.link(g_double_equal, "g_double_equal", LIBRARY.GLIB);
	Linker.link(g_double_hash, "g_double_hash", LIBRARY.GLIB);
	Linker.link(g_int64_equal, "g_int64_equal", LIBRARY.GLIB);
	Linker.link(g_int64_hash, "g_int64_hash", LIBRARY.GLIB);
	Linker.link(g_int_equal, "g_int_equal", LIBRARY.GLIB);
	Linker.link(g_int_hash, "g_int_hash", LIBRARY.GLIB);
	Linker.link(g_str_equal, "g_str_equal", LIBRARY.GLIB);
	Linker.link(g_str_hash, "g_str_hash", LIBRARY.GLIB);

	// glib.HashTableIter

	Linker.link(g_hash_table_iter_get_hash_table, "g_hash_table_iter_get_hash_table", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_init, "g_hash_table_iter_init", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_next, "g_hash_table_iter_next", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_remove, "g_hash_table_iter_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_replace, "g_hash_table_iter_replace", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_steal, "g_hash_table_iter_steal", LIBRARY.GLIB);

	// glib.Hmac

	Linker.link(g_hmac_copy, "g_hmac_copy", LIBRARY.GLIB);
	Linker.link(g_hmac_get_digest, "g_hmac_get_digest", LIBRARY.GLIB);
	Linker.link(g_hmac_get_string, "g_hmac_get_string", LIBRARY.GLIB);
	Linker.link(g_hmac_ref, "g_hmac_ref", LIBRARY.GLIB);
	Linker.link(g_hmac_unref, "g_hmac_unref", LIBRARY.GLIB);
	Linker.link(g_hmac_update, "g_hmac_update", LIBRARY.GLIB);
	Linker.link(g_hmac_new, "g_hmac_new", LIBRARY.GLIB);
	Linker.link(g_compute_hmac_for_data, "g_compute_hmac_for_data", LIBRARY.GLIB);
	Linker.link(g_compute_hmac_for_string, "g_compute_hmac_for_string", LIBRARY.GLIB);

	// glib.Hook

	Linker.link(g_hook_compare_ids, "g_hook_compare_ids", LIBRARY.GLIB);
	Linker.link(g_hook_alloc, "g_hook_alloc", LIBRARY.GLIB);
	Linker.link(g_hook_destroy, "g_hook_destroy", LIBRARY.GLIB);
	Linker.link(g_hook_destroy_link, "g_hook_destroy_link", LIBRARY.GLIB);
	Linker.link(g_hook_find, "g_hook_find", LIBRARY.GLIB);
	Linker.link(g_hook_find_data, "g_hook_find_data", LIBRARY.GLIB);
	Linker.link(g_hook_find_func, "g_hook_find_func", LIBRARY.GLIB);
	Linker.link(g_hook_find_func_data, "g_hook_find_func_data", LIBRARY.GLIB);
	Linker.link(g_hook_first_valid, "g_hook_first_valid", LIBRARY.GLIB);
	Linker.link(g_hook_free, "g_hook_free", LIBRARY.GLIB);
	Linker.link(g_hook_get, "g_hook_get", LIBRARY.GLIB);
	Linker.link(g_hook_insert_before, "g_hook_insert_before", LIBRARY.GLIB);
	Linker.link(g_hook_insert_sorted, "g_hook_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_hook_next_valid, "g_hook_next_valid", LIBRARY.GLIB);
	Linker.link(g_hook_prepend, "g_hook_prepend", LIBRARY.GLIB);
	Linker.link(g_hook_ref, "g_hook_ref", LIBRARY.GLIB);
	Linker.link(g_hook_unref, "g_hook_unref", LIBRARY.GLIB);

	// glib.HookList

	Linker.link(g_hook_list_clear, "g_hook_list_clear", LIBRARY.GLIB);
	Linker.link(g_hook_list_init, "g_hook_list_init", LIBRARY.GLIB);
	Linker.link(g_hook_list_invoke, "g_hook_list_invoke", LIBRARY.GLIB);
	Linker.link(g_hook_list_invoke_check, "g_hook_list_invoke_check", LIBRARY.GLIB);
	Linker.link(g_hook_list_marshal, "g_hook_list_marshal", LIBRARY.GLIB);
	Linker.link(g_hook_list_marshal_check, "g_hook_list_marshal_check", LIBRARY.GLIB);

	// glib.IConv

	Linker.link(g_iconv, "g_iconv", LIBRARY.GLIB);
	Linker.link(g_iconv_close, "g_iconv_close", LIBRARY.GLIB);
	Linker.link(g_iconv_open, "g_iconv_open", LIBRARY.GLIB);

	// glib.IOChannel

	Linker.link(g_io_channel_new_file, "g_io_channel_new_file", LIBRARY.GLIB);
	Linker.link(g_io_channel_unix_new, "g_io_channel_unix_new", LIBRARY.GLIB);
	Linker.link(g_io_channel_close, "g_io_channel_close", LIBRARY.GLIB);
	Linker.link(g_io_channel_flush, "g_io_channel_flush", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_condition, "g_io_channel_get_buffer_condition", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_size, "g_io_channel_get_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffered, "g_io_channel_get_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_close_on_unref, "g_io_channel_get_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_encoding, "g_io_channel_get_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_flags, "g_io_channel_get_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_line_term, "g_io_channel_get_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_init, "g_io_channel_init", LIBRARY.GLIB);
	Linker.link(g_io_channel_read, "g_io_channel_read", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_chars, "g_io_channel_read_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line, "g_io_channel_read_line", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line_string, "g_io_channel_read_line_string", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_to_end, "g_io_channel_read_to_end", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_unichar, "g_io_channel_read_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_ref, "g_io_channel_ref", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek, "g_io_channel_seek", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek_position, "g_io_channel_seek_position", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffer_size, "g_io_channel_set_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffered, "g_io_channel_set_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_close_on_unref, "g_io_channel_set_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_encoding, "g_io_channel_set_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_flags, "g_io_channel_set_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_line_term, "g_io_channel_set_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_shutdown, "g_io_channel_shutdown", LIBRARY.GLIB);
	Linker.link(g_io_channel_unix_get_fd, "g_io_channel_unix_get_fd", LIBRARY.GLIB);
	Linker.link(g_io_channel_unref, "g_io_channel_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_write, "g_io_channel_write", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_chars, "g_io_channel_write_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_unichar, "g_io_channel_write_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_error_from_errno, "g_io_channel_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_io_channel_error_quark, "g_io_channel_error_quark", LIBRARY.GLIB);
	Linker.link(g_io_add_watch, "g_io_add_watch", LIBRARY.GLIB);
	Linker.link(g_io_add_watch_full, "g_io_add_watch_full", LIBRARY.GLIB);
	Linker.link(g_io_create_watch, "g_io_create_watch", LIBRARY.GLIB);

	// glib.KeyFile

	Linker.link(g_key_file_new, "g_key_file_new", LIBRARY.GLIB);
	Linker.link(g_key_file_free, "g_key_file_free", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean, "g_key_file_get_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean_list, "g_key_file_get_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_comment, "g_key_file_get_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double, "g_key_file_get_double", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double_list, "g_key_file_get_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_groups, "g_key_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_key_file_get_int64, "g_key_file_get_int64", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer, "g_key_file_get_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer_list, "g_key_file_get_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_keys, "g_key_file_get_keys", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string, "g_key_file_get_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string_list, "g_key_file_get_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_start_group, "g_key_file_get_start_group", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string, "g_key_file_get_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string_list, "g_key_file_get_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_uint64, "g_key_file_get_uint64", LIBRARY.GLIB);
	Linker.link(g_key_file_get_value, "g_key_file_get_value", LIBRARY.GLIB);
	Linker.link(g_key_file_has_group, "g_key_file_has_group", LIBRARY.GLIB);
	Linker.link(g_key_file_has_key, "g_key_file_has_key", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data, "g_key_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data_dirs, "g_key_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_dirs, "g_key_file_load_from_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_file, "g_key_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_key_file_ref, "g_key_file_ref", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_comment, "g_key_file_remove_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_group, "g_key_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_key, "g_key_file_remove_key", LIBRARY.GLIB);
	Linker.link(g_key_file_save_to_file, "g_key_file_save_to_file", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean, "g_key_file_set_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean_list, "g_key_file_set_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_comment, "g_key_file_set_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double, "g_key_file_set_double", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double_list, "g_key_file_set_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_int64, "g_key_file_set_int64", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer, "g_key_file_set_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer_list, "g_key_file_set_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_list_separator, "g_key_file_set_list_separator", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string, "g_key_file_set_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string_list, "g_key_file_set_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string, "g_key_file_set_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string_list, "g_key_file_set_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_uint64, "g_key_file_set_uint64", LIBRARY.GLIB);
	Linker.link(g_key_file_set_value, "g_key_file_set_value", LIBRARY.GLIB);
	Linker.link(g_key_file_to_data, "g_key_file_to_data", LIBRARY.GLIB);
	Linker.link(g_key_file_unref, "g_key_file_unref", LIBRARY.GLIB);
	Linker.link(g_key_file_error_quark, "g_key_file_error_quark", LIBRARY.GLIB);

	// glib.ListG

	Linker.link(g_list_alloc, "g_list_alloc", LIBRARY.GLIB);
	Linker.link(g_list_append, "g_list_append", LIBRARY.GLIB);
	Linker.link(g_list_concat, "g_list_concat", LIBRARY.GLIB);
	Linker.link(g_list_copy, "g_list_copy", LIBRARY.GLIB);
	Linker.link(g_list_copy_deep, "g_list_copy_deep", LIBRARY.GLIB);
	Linker.link(g_list_delete_link, "g_list_delete_link", LIBRARY.GLIB);
	Linker.link(g_list_find, "g_list_find", LIBRARY.GLIB);
	Linker.link(g_list_find_custom, "g_list_find_custom", LIBRARY.GLIB);
	Linker.link(g_list_first, "g_list_first", LIBRARY.GLIB);
	Linker.link(g_list_foreach, "g_list_foreach", LIBRARY.GLIB);
	Linker.link(g_list_free, "g_list_free", LIBRARY.GLIB);
	Linker.link(g_list_free_1, "g_list_free_1", LIBRARY.GLIB);
	Linker.link(g_list_free_full, "g_list_free_full", LIBRARY.GLIB);
	Linker.link(g_list_index, "g_list_index", LIBRARY.GLIB);
	Linker.link(g_list_insert, "g_list_insert", LIBRARY.GLIB);
	Linker.link(g_list_insert_before, "g_list_insert_before", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted, "g_list_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted_with_data, "g_list_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_list_last, "g_list_last", LIBRARY.GLIB);
	Linker.link(g_list_length, "g_list_length", LIBRARY.GLIB);
	Linker.link(g_list_nth, "g_list_nth", LIBRARY.GLIB);
	Linker.link(g_list_nth_data, "g_list_nth_data", LIBRARY.GLIB);
	Linker.link(g_list_nth_prev, "g_list_nth_prev", LIBRARY.GLIB);
	Linker.link(g_list_position, "g_list_position", LIBRARY.GLIB);
	Linker.link(g_list_prepend, "g_list_prepend", LIBRARY.GLIB);
	Linker.link(g_list_remove, "g_list_remove", LIBRARY.GLIB);
	Linker.link(g_list_remove_all, "g_list_remove_all", LIBRARY.GLIB);
	Linker.link(g_list_remove_link, "g_list_remove_link", LIBRARY.GLIB);
	Linker.link(g_list_reverse, "g_list_reverse", LIBRARY.GLIB);
	Linker.link(g_list_sort, "g_list_sort", LIBRARY.GLIB);
	Linker.link(g_list_sort_with_data, "g_list_sort_with_data", LIBRARY.GLIB);

	// glib.MainContext

	Linker.link(g_main_context_new, "g_main_context_new", LIBRARY.GLIB);
	Linker.link(g_main_context_acquire, "g_main_context_acquire", LIBRARY.GLIB);
	Linker.link(g_main_context_add_poll, "g_main_context_add_poll", LIBRARY.GLIB);
	Linker.link(g_main_context_check, "g_main_context_check", LIBRARY.GLIB);
	Linker.link(g_main_context_dispatch, "g_main_context_dispatch", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_funcs_user_data, "g_main_context_find_source_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_id, "g_main_context_find_source_by_id", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_user_data, "g_main_context_find_source_by_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_get_poll_func, "g_main_context_get_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_invoke, "g_main_context_invoke", LIBRARY.GLIB);
	Linker.link(g_main_context_invoke_full, "g_main_context_invoke_full", LIBRARY.GLIB);
	Linker.link(g_main_context_is_owner, "g_main_context_is_owner", LIBRARY.GLIB);
	Linker.link(g_main_context_iteration, "g_main_context_iteration", LIBRARY.GLIB);
	Linker.link(g_main_context_pending, "g_main_context_pending", LIBRARY.GLIB);
	Linker.link(g_main_context_pop_thread_default, "g_main_context_pop_thread_default", LIBRARY.GLIB);
	Linker.link(g_main_context_prepare, "g_main_context_prepare", LIBRARY.GLIB);
	Linker.link(g_main_context_push_thread_default, "g_main_context_push_thread_default", LIBRARY.GLIB);
	Linker.link(g_main_context_query, "g_main_context_query", LIBRARY.GLIB);
	Linker.link(g_main_context_ref, "g_main_context_ref", LIBRARY.GLIB);
	Linker.link(g_main_context_release, "g_main_context_release", LIBRARY.GLIB);
	Linker.link(g_main_context_remove_poll, "g_main_context_remove_poll", LIBRARY.GLIB);
	Linker.link(g_main_context_set_poll_func, "g_main_context_set_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_unref, "g_main_context_unref", LIBRARY.GLIB);
	Linker.link(g_main_context_wait, "g_main_context_wait", LIBRARY.GLIB);
	Linker.link(g_main_context_wakeup, "g_main_context_wakeup", LIBRARY.GLIB);
	Linker.link(g_main_context_default, "g_main_context_default", LIBRARY.GLIB);
	Linker.link(g_main_context_get_thread_default, "g_main_context_get_thread_default", LIBRARY.GLIB);
	Linker.link(g_main_context_ref_thread_default, "g_main_context_ref_thread_default", LIBRARY.GLIB);

	// glib.MainLoop

	Linker.link(g_main_loop_new, "g_main_loop_new", LIBRARY.GLIB);
	Linker.link(g_main_loop_get_context, "g_main_loop_get_context", LIBRARY.GLIB);
	Linker.link(g_main_loop_is_running, "g_main_loop_is_running", LIBRARY.GLIB);
	Linker.link(g_main_loop_quit, "g_main_loop_quit", LIBRARY.GLIB);
	Linker.link(g_main_loop_ref, "g_main_loop_ref", LIBRARY.GLIB);
	Linker.link(g_main_loop_run, "g_main_loop_run", LIBRARY.GLIB);
	Linker.link(g_main_loop_unref, "g_main_loop_unref", LIBRARY.GLIB);
	Linker.link(g_main_current_source, "g_main_current_source", LIBRARY.GLIB);
	Linker.link(g_main_depth, "g_main_depth", LIBRARY.GLIB);
	Linker.link(g_poll, "g_poll", LIBRARY.GLIB);

	// glib.MappedFile

	Linker.link(g_mapped_file_new, "g_mapped_file_new", LIBRARY.GLIB);
	Linker.link(g_mapped_file_new_from_fd, "g_mapped_file_new_from_fd", LIBRARY.GLIB);
	Linker.link(g_mapped_file_free, "g_mapped_file_free", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_bytes, "g_mapped_file_get_bytes", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_contents, "g_mapped_file_get_contents", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_length, "g_mapped_file_get_length", LIBRARY.GLIB);
	Linker.link(g_mapped_file_ref, "g_mapped_file_ref", LIBRARY.GLIB);
	Linker.link(g_mapped_file_unref, "g_mapped_file_unref", LIBRARY.GLIB);

	// glib.SimpleXML

	Linker.link(g_markup_parse_context_new, "g_markup_parse_context_new", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_end_parse, "g_markup_parse_context_end_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_free, "g_markup_parse_context_free", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element, "g_markup_parse_context_get_element", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element_stack, "g_markup_parse_context_get_element_stack", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_position, "g_markup_parse_context_get_position", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_user_data, "g_markup_parse_context_get_user_data", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_parse, "g_markup_parse_context_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_pop, "g_markup_parse_context_pop", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_push, "g_markup_parse_context_push", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_ref, "g_markup_parse_context_ref", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_unref, "g_markup_parse_context_unref", LIBRARY.GLIB);
	Linker.link(g_markup_collect_attributes, "g_markup_collect_attributes", LIBRARY.GLIB);
	Linker.link(g_markup_error_quark, "g_markup_error_quark", LIBRARY.GLIB);
	Linker.link(g_markup_escape_text, "g_markup_escape_text", LIBRARY.GLIB);
	Linker.link(g_markup_printf_escaped, "g_markup_printf_escaped", LIBRARY.GLIB);
	Linker.link(g_markup_vprintf_escaped, "g_markup_vprintf_escaped", LIBRARY.GLIB);

	// glib.MatchInfo

	Linker.link(g_match_info_expand_references, "g_match_info_expand_references", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch, "g_match_info_fetch", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_all, "g_match_info_fetch_all", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named, "g_match_info_fetch_named", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named_pos, "g_match_info_fetch_named_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_pos, "g_match_info_fetch_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_free, "g_match_info_free", LIBRARY.GLIB);
	Linker.link(g_match_info_get_match_count, "g_match_info_get_match_count", LIBRARY.GLIB);
	Linker.link(g_match_info_get_regex, "g_match_info_get_regex", LIBRARY.GLIB);
	Linker.link(g_match_info_get_string, "g_match_info_get_string", LIBRARY.GLIB);
	Linker.link(g_match_info_is_partial_match, "g_match_info_is_partial_match", LIBRARY.GLIB);
	Linker.link(g_match_info_matches, "g_match_info_matches", LIBRARY.GLIB);
	Linker.link(g_match_info_next, "g_match_info_next", LIBRARY.GLIB);
	Linker.link(g_match_info_ref, "g_match_info_ref", LIBRARY.GLIB);
	Linker.link(g_match_info_unref, "g_match_info_unref", LIBRARY.GLIB);

	// glib.Mutex

	Linker.link(g_mutex_clear, "g_mutex_clear", LIBRARY.GLIB);
	Linker.link(g_mutex_init, "g_mutex_init", LIBRARY.GLIB);
	Linker.link(g_mutex_lock, "g_mutex_lock", LIBRARY.GLIB);
	Linker.link(g_mutex_trylock, "g_mutex_trylock", LIBRARY.GLIB);
	Linker.link(g_mutex_unlock, "g_mutex_unlock", LIBRARY.GLIB);

	// glib.Node

	Linker.link(g_node_child_index, "g_node_child_index", LIBRARY.GLIB);
	Linker.link(g_node_child_position, "g_node_child_position", LIBRARY.GLIB);
	Linker.link(g_node_children_foreach, "g_node_children_foreach", LIBRARY.GLIB);
	Linker.link(g_node_copy, "g_node_copy", LIBRARY.GLIB);
	Linker.link(g_node_copy_deep, "g_node_copy_deep", LIBRARY.GLIB);
	Linker.link(g_node_depth, "g_node_depth", LIBRARY.GLIB);
	Linker.link(g_node_destroy, "g_node_destroy", LIBRARY.GLIB);
	Linker.link(g_node_find, "g_node_find", LIBRARY.GLIB);
	Linker.link(g_node_find_child, "g_node_find_child", LIBRARY.GLIB);
	Linker.link(g_node_first_sibling, "g_node_first_sibling", LIBRARY.GLIB);
	Linker.link(g_node_get_root, "g_node_get_root", LIBRARY.GLIB);
	Linker.link(g_node_insert, "g_node_insert", LIBRARY.GLIB);
	Linker.link(g_node_insert_after, "g_node_insert_after", LIBRARY.GLIB);
	Linker.link(g_node_insert_before, "g_node_insert_before", LIBRARY.GLIB);
	Linker.link(g_node_is_ancestor, "g_node_is_ancestor", LIBRARY.GLIB);
	Linker.link(g_node_last_child, "g_node_last_child", LIBRARY.GLIB);
	Linker.link(g_node_last_sibling, "g_node_last_sibling", LIBRARY.GLIB);
	Linker.link(g_node_max_height, "g_node_max_height", LIBRARY.GLIB);
	Linker.link(g_node_n_children, "g_node_n_children", LIBRARY.GLIB);
	Linker.link(g_node_n_nodes, "g_node_n_nodes", LIBRARY.GLIB);
	Linker.link(g_node_nth_child, "g_node_nth_child", LIBRARY.GLIB);
	Linker.link(g_node_prepend, "g_node_prepend", LIBRARY.GLIB);
	Linker.link(g_node_reverse_children, "g_node_reverse_children", LIBRARY.GLIB);
	Linker.link(g_node_traverse, "g_node_traverse", LIBRARY.GLIB);
	Linker.link(g_node_unlink, "g_node_unlink", LIBRARY.GLIB);
	Linker.link(g_node_new, "g_node_new", LIBRARY.GLIB);

	// glib.Once

	Linker.link(g_once_impl, "g_once_impl", LIBRARY.GLIB);
	Linker.link(g_once_init_enter, "g_once_init_enter", LIBRARY.GLIB);
	Linker.link(g_once_init_leave, "g_once_init_leave", LIBRARY.GLIB);

	// glib.OptionContext

	Linker.link(g_option_context_add_group, "g_option_context_add_group", LIBRARY.GLIB);
	Linker.link(g_option_context_add_main_entries, "g_option_context_add_main_entries", LIBRARY.GLIB);
	Linker.link(g_option_context_free, "g_option_context_free", LIBRARY.GLIB);
	Linker.link(g_option_context_get_description, "g_option_context_get_description", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help, "g_option_context_get_help", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help_enabled, "g_option_context_get_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_get_ignore_unknown_options, "g_option_context_get_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_get_main_group, "g_option_context_get_main_group", LIBRARY.GLIB);
	Linker.link(g_option_context_get_strict_posix, "g_option_context_get_strict_posix", LIBRARY.GLIB);
	Linker.link(g_option_context_get_summary, "g_option_context_get_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_parse, "g_option_context_parse", LIBRARY.GLIB);
	Linker.link(g_option_context_parse_strv, "g_option_context_parse_strv", LIBRARY.GLIB);
	Linker.link(g_option_context_set_description, "g_option_context_set_description", LIBRARY.GLIB);
	Linker.link(g_option_context_set_help_enabled, "g_option_context_set_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_set_ignore_unknown_options, "g_option_context_set_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_set_main_group, "g_option_context_set_main_group", LIBRARY.GLIB);
	Linker.link(g_option_context_set_strict_posix, "g_option_context_set_strict_posix", LIBRARY.GLIB);
	Linker.link(g_option_context_set_summary, "g_option_context_set_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translate_func, "g_option_context_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translation_domain, "g_option_context_set_translation_domain", LIBRARY.GLIB);
	Linker.link(g_option_context_new, "g_option_context_new", LIBRARY.GLIB);
	Linker.link(g_option_error_quark, "g_option_error_quark", LIBRARY.GLIB);

	// glib.OptionGroup

	Linker.link(g_option_group_new, "g_option_group_new", LIBRARY.GLIB);
	Linker.link(g_option_group_add_entries, "g_option_group_add_entries", LIBRARY.GLIB);
	Linker.link(g_option_group_free, "g_option_group_free", LIBRARY.GLIB);
	Linker.link(g_option_group_ref, "g_option_group_ref", LIBRARY.GLIB);
	Linker.link(g_option_group_set_error_hook, "g_option_group_set_error_hook", LIBRARY.GLIB);
	Linker.link(g_option_group_set_parse_hooks, "g_option_group_set_parse_hooks", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translate_func, "g_option_group_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translation_domain, "g_option_group_set_translation_domain", LIBRARY.GLIB);
	Linker.link(g_option_group_unref, "g_option_group_unref", LIBRARY.GLIB);

	// glib.Pattern

	Linker.link(g_pattern_spec_equal, "g_pattern_spec_equal", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_free, "g_pattern_spec_free", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_new, "g_pattern_spec_new", LIBRARY.GLIB);
	Linker.link(g_pattern_match, "g_pattern_match", LIBRARY.GLIB);
	Linker.link(g_pattern_match_simple, "g_pattern_match_simple", LIBRARY.GLIB);
	Linker.link(g_pattern_match_string, "g_pattern_match_string", LIBRARY.GLIB);

	// glib.Private

	Linker.link(g_private_get, "g_private_get", LIBRARY.GLIB);
	Linker.link(g_private_replace, "g_private_replace", LIBRARY.GLIB);
	Linker.link(g_private_set, "g_private_set", LIBRARY.GLIB);

	// glib.PtrArray

	Linker.link(g_ptr_array_add, "g_ptr_array_add", LIBRARY.GLIB);
	Linker.link(g_ptr_array_foreach, "g_ptr_array_foreach", LIBRARY.GLIB);
	Linker.link(g_ptr_array_free, "g_ptr_array_free", LIBRARY.GLIB);
	Linker.link(g_ptr_array_insert, "g_ptr_array_insert", LIBRARY.GLIB);
	Linker.link(g_ptr_array_new, "g_ptr_array_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_new_full, "g_ptr_array_new_full", LIBRARY.GLIB);
	Linker.link(g_ptr_array_new_with_free_func, "g_ptr_array_new_with_free_func", LIBRARY.GLIB);
	Linker.link(g_ptr_array_ref, "g_ptr_array_ref", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove, "g_ptr_array_remove", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_fast, "g_ptr_array_remove_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index, "g_ptr_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index_fast, "g_ptr_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_range, "g_ptr_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_ptr_array_set_free_func, "g_ptr_array_set_free_func", LIBRARY.GLIB);
	Linker.link(g_ptr_array_set_size, "g_ptr_array_set_size", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sized_new, "g_ptr_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort, "g_ptr_array_sort", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort_with_data, "g_ptr_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_ptr_array_unref, "g_ptr_array_unref", LIBRARY.GLIB);

	// glib.QueueG

	Linker.link(g_queue_clear, "g_queue_clear", LIBRARY.GLIB);
	Linker.link(g_queue_copy, "g_queue_copy", LIBRARY.GLIB);
	Linker.link(g_queue_delete_link, "g_queue_delete_link", LIBRARY.GLIB);
	Linker.link(g_queue_find, "g_queue_find", LIBRARY.GLIB);
	Linker.link(g_queue_find_custom, "g_queue_find_custom", LIBRARY.GLIB);
	Linker.link(g_queue_foreach, "g_queue_foreach", LIBRARY.GLIB);
	Linker.link(g_queue_free, "g_queue_free", LIBRARY.GLIB);
	Linker.link(g_queue_free_full, "g_queue_free_full", LIBRARY.GLIB);
	Linker.link(g_queue_get_length, "g_queue_get_length", LIBRARY.GLIB);
	Linker.link(g_queue_index, "g_queue_index", LIBRARY.GLIB);
	Linker.link(g_queue_init, "g_queue_init", LIBRARY.GLIB);
	Linker.link(g_queue_insert_after, "g_queue_insert_after", LIBRARY.GLIB);
	Linker.link(g_queue_insert_before, "g_queue_insert_before", LIBRARY.GLIB);
	Linker.link(g_queue_insert_sorted, "g_queue_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_queue_is_empty, "g_queue_is_empty", LIBRARY.GLIB);
	Linker.link(g_queue_link_index, "g_queue_link_index", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head, "g_queue_peek_head", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head_link, "g_queue_peek_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth, "g_queue_peek_nth", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth_link, "g_queue_peek_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail, "g_queue_peek_tail", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail_link, "g_queue_peek_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head, "g_queue_pop_head", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head_link, "g_queue_pop_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth, "g_queue_pop_nth", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth_link, "g_queue_pop_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail, "g_queue_pop_tail", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail_link, "g_queue_pop_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_head, "g_queue_push_head", LIBRARY.GLIB);
	Linker.link(g_queue_push_head_link, "g_queue_push_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth, "g_queue_push_nth", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth_link, "g_queue_push_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail, "g_queue_push_tail", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail_link, "g_queue_push_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_remove, "g_queue_remove", LIBRARY.GLIB);
	Linker.link(g_queue_remove_all, "g_queue_remove_all", LIBRARY.GLIB);
	Linker.link(g_queue_reverse, "g_queue_reverse", LIBRARY.GLIB);
	Linker.link(g_queue_sort, "g_queue_sort", LIBRARY.GLIB);
	Linker.link(g_queue_unlink, "g_queue_unlink", LIBRARY.GLIB);
	Linker.link(g_queue_new, "g_queue_new", LIBRARY.GLIB);

	// glib.RWLock

	Linker.link(g_rw_lock_clear, "g_rw_lock_clear", LIBRARY.GLIB);
	Linker.link(g_rw_lock_init, "g_rw_lock_init", LIBRARY.GLIB);
	Linker.link(g_rw_lock_reader_lock, "g_rw_lock_reader_lock", LIBRARY.GLIB);
	Linker.link(g_rw_lock_reader_trylock, "g_rw_lock_reader_trylock", LIBRARY.GLIB);
	Linker.link(g_rw_lock_reader_unlock, "g_rw_lock_reader_unlock", LIBRARY.GLIB);
	Linker.link(g_rw_lock_writer_lock, "g_rw_lock_writer_lock", LIBRARY.GLIB);
	Linker.link(g_rw_lock_writer_trylock, "g_rw_lock_writer_trylock", LIBRARY.GLIB);
	Linker.link(g_rw_lock_writer_unlock, "g_rw_lock_writer_unlock", LIBRARY.GLIB);

	// glib.RandG

	Linker.link(g_rand_copy, "g_rand_copy", LIBRARY.GLIB);
	Linker.link(g_rand_double, "g_rand_double", LIBRARY.GLIB);
	Linker.link(g_rand_double_range, "g_rand_double_range", LIBRARY.GLIB);
	Linker.link(g_rand_free, "g_rand_free", LIBRARY.GLIB);
	Linker.link(g_rand_int, "g_rand_int", LIBRARY.GLIB);
	Linker.link(g_rand_int_range, "g_rand_int_range", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed, "g_rand_set_seed", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed_array, "g_rand_set_seed_array", LIBRARY.GLIB);
	Linker.link(g_rand_new, "g_rand_new", LIBRARY.GLIB);
	Linker.link(g_rand_new_with_seed, "g_rand_new_with_seed", LIBRARY.GLIB);
	Linker.link(g_rand_new_with_seed_array, "g_rand_new_with_seed_array", LIBRARY.GLIB);
	Linker.link(g_random_double, "g_random_double", LIBRARY.GLIB);
	Linker.link(g_random_double_range, "g_random_double_range", LIBRARY.GLIB);
	Linker.link(g_random_int, "g_random_int", LIBRARY.GLIB);
	Linker.link(g_random_int_range, "g_random_int_range", LIBRARY.GLIB);
	Linker.link(g_random_set_seed, "g_random_set_seed", LIBRARY.GLIB);

	// glib.RecMutex

	Linker.link(g_rec_mutex_clear, "g_rec_mutex_clear", LIBRARY.GLIB);
	Linker.link(g_rec_mutex_init, "g_rec_mutex_init", LIBRARY.GLIB);
	Linker.link(g_rec_mutex_lock, "g_rec_mutex_lock", LIBRARY.GLIB);
	Linker.link(g_rec_mutex_trylock, "g_rec_mutex_trylock", LIBRARY.GLIB);
	Linker.link(g_rec_mutex_unlock, "g_rec_mutex_unlock", LIBRARY.GLIB);

	// glib.Regex

	Linker.link(g_regex_new, "g_regex_new", LIBRARY.GLIB);
	Linker.link(g_regex_get_capture_count, "g_regex_get_capture_count", LIBRARY.GLIB);
	Linker.link(g_regex_get_compile_flags, "g_regex_get_compile_flags", LIBRARY.GLIB);
	Linker.link(g_regex_get_has_cr_or_lf, "g_regex_get_has_cr_or_lf", LIBRARY.GLIB);
	Linker.link(g_regex_get_match_flags, "g_regex_get_match_flags", LIBRARY.GLIB);
	Linker.link(g_regex_get_max_backref, "g_regex_get_max_backref", LIBRARY.GLIB);
	Linker.link(g_regex_get_max_lookbehind, "g_regex_get_max_lookbehind", LIBRARY.GLIB);
	Linker.link(g_regex_get_pattern, "g_regex_get_pattern", LIBRARY.GLIB);
	Linker.link(g_regex_get_string_number, "g_regex_get_string_number", LIBRARY.GLIB);
	Linker.link(g_regex_match, "g_regex_match", LIBRARY.GLIB);
	Linker.link(g_regex_match_all, "g_regex_match_all", LIBRARY.GLIB);
	Linker.link(g_regex_match_all_full, "g_regex_match_all_full", LIBRARY.GLIB);
	Linker.link(g_regex_match_full, "g_regex_match_full", LIBRARY.GLIB);
	Linker.link(g_regex_ref, "g_regex_ref", LIBRARY.GLIB);
	Linker.link(g_regex_replace, "g_regex_replace", LIBRARY.GLIB);
	Linker.link(g_regex_replace_eval, "g_regex_replace_eval", LIBRARY.GLIB);
	Linker.link(g_regex_replace_literal, "g_regex_replace_literal", LIBRARY.GLIB);
	Linker.link(g_regex_split, "g_regex_split", LIBRARY.GLIB);
	Linker.link(g_regex_split_full, "g_regex_split_full", LIBRARY.GLIB);
	Linker.link(g_regex_unref, "g_regex_unref", LIBRARY.GLIB);
	Linker.link(g_regex_check_replacement, "g_regex_check_replacement", LIBRARY.GLIB);
	Linker.link(g_regex_error_quark, "g_regex_error_quark", LIBRARY.GLIB);
	Linker.link(g_regex_escape_nul, "g_regex_escape_nul", LIBRARY.GLIB);
	Linker.link(g_regex_escape_string, "g_regex_escape_string", LIBRARY.GLIB);
	Linker.link(g_regex_match_simple, "g_regex_match_simple", LIBRARY.GLIB);
	Linker.link(g_regex_split_simple, "g_regex_split_simple", LIBRARY.GLIB);

	// glib.ListSG

	Linker.link(g_slist_alloc, "g_slist_alloc", LIBRARY.GLIB);
	Linker.link(g_slist_append, "g_slist_append", LIBRARY.GLIB);
	Linker.link(g_slist_concat, "g_slist_concat", LIBRARY.GLIB);
	Linker.link(g_slist_copy, "g_slist_copy", LIBRARY.GLIB);
	Linker.link(g_slist_copy_deep, "g_slist_copy_deep", LIBRARY.GLIB);
	Linker.link(g_slist_delete_link, "g_slist_delete_link", LIBRARY.GLIB);
	Linker.link(g_slist_find, "g_slist_find", LIBRARY.GLIB);
	Linker.link(g_slist_find_custom, "g_slist_find_custom", LIBRARY.GLIB);
	Linker.link(g_slist_foreach, "g_slist_foreach", LIBRARY.GLIB);
	Linker.link(g_slist_free, "g_slist_free", LIBRARY.GLIB);
	Linker.link(g_slist_free_1, "g_slist_free_1", LIBRARY.GLIB);
	Linker.link(g_slist_free_full, "g_slist_free_full", LIBRARY.GLIB);
	Linker.link(g_slist_index, "g_slist_index", LIBRARY.GLIB);
	Linker.link(g_slist_insert, "g_slist_insert", LIBRARY.GLIB);
	Linker.link(g_slist_insert_before, "g_slist_insert_before", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted, "g_slist_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted_with_data, "g_slist_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_slist_last, "g_slist_last", LIBRARY.GLIB);
	Linker.link(g_slist_length, "g_slist_length", LIBRARY.GLIB);
	Linker.link(g_slist_nth, "g_slist_nth", LIBRARY.GLIB);
	Linker.link(g_slist_nth_data, "g_slist_nth_data", LIBRARY.GLIB);
	Linker.link(g_slist_position, "g_slist_position", LIBRARY.GLIB);
	Linker.link(g_slist_prepend, "g_slist_prepend", LIBRARY.GLIB);
	Linker.link(g_slist_remove, "g_slist_remove", LIBRARY.GLIB);
	Linker.link(g_slist_remove_all, "g_slist_remove_all", LIBRARY.GLIB);
	Linker.link(g_slist_remove_link, "g_slist_remove_link", LIBRARY.GLIB);
	Linker.link(g_slist_reverse, "g_slist_reverse", LIBRARY.GLIB);
	Linker.link(g_slist_sort, "g_slist_sort", LIBRARY.GLIB);
	Linker.link(g_slist_sort_with_data, "g_slist_sort_with_data", LIBRARY.GLIB);

	// glib.ScannerG

	Linker.link(g_scanner_cur_line, "g_scanner_cur_line", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_position, "g_scanner_cur_position", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_token, "g_scanner_cur_token", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_value, "g_scanner_cur_value", LIBRARY.GLIB);
	Linker.link(g_scanner_destroy, "g_scanner_destroy", LIBRARY.GLIB);
	Linker.link(g_scanner_eof, "g_scanner_eof", LIBRARY.GLIB);
	Linker.link(g_scanner_error, "g_scanner_error", LIBRARY.GLIB);
	Linker.link(g_scanner_get_next_token, "g_scanner_get_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_input_file, "g_scanner_input_file", LIBRARY.GLIB);
	Linker.link(g_scanner_input_text, "g_scanner_input_text", LIBRARY.GLIB);
	Linker.link(g_scanner_lookup_symbol, "g_scanner_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_peek_next_token, "g_scanner_peek_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_add_symbol, "g_scanner_scope_add_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_foreach_symbol, "g_scanner_scope_foreach_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_lookup_symbol, "g_scanner_scope_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_remove_symbol, "g_scanner_scope_remove_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_set_scope, "g_scanner_set_scope", LIBRARY.GLIB);
	Linker.link(g_scanner_sync_file_offset, "g_scanner_sync_file_offset", LIBRARY.GLIB);
	Linker.link(g_scanner_unexp_token, "g_scanner_unexp_token", LIBRARY.GLIB);
	Linker.link(g_scanner_warn, "g_scanner_warn", LIBRARY.GLIB);
	Linker.link(g_scanner_new, "g_scanner_new", LIBRARY.GLIB);

	// glib.Sequence

	Linker.link(g_sequence_append, "g_sequence_append", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach, "g_sequence_foreach", LIBRARY.GLIB);
	Linker.link(g_sequence_free, "g_sequence_free", LIBRARY.GLIB);
	Linker.link(g_sequence_get_begin_iter, "g_sequence_get_begin_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_end_iter, "g_sequence_get_end_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_iter_at_pos, "g_sequence_get_iter_at_pos", LIBRARY.GLIB);
	Linker.link(g_sequence_get_length, "g_sequence_get_length", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted, "g_sequence_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted_iter, "g_sequence_insert_sorted_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_lookup, "g_sequence_lookup", LIBRARY.GLIB);
	Linker.link(g_sequence_lookup_iter, "g_sequence_lookup_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_prepend, "g_sequence_prepend", LIBRARY.GLIB);
	Linker.link(g_sequence_search, "g_sequence_search", LIBRARY.GLIB);
	Linker.link(g_sequence_search_iter, "g_sequence_search_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_sort, "g_sequence_sort", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_iter, "g_sequence_sort_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach_range, "g_sequence_foreach_range", LIBRARY.GLIB);
	Linker.link(g_sequence_get, "g_sequence_get", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_before, "g_sequence_insert_before", LIBRARY.GLIB);
	Linker.link(g_sequence_move, "g_sequence_move", LIBRARY.GLIB);
	Linker.link(g_sequence_move_range, "g_sequence_move_range", LIBRARY.GLIB);
	Linker.link(g_sequence_new, "g_sequence_new", LIBRARY.GLIB);
	Linker.link(g_sequence_range_get_midpoint, "g_sequence_range_get_midpoint", LIBRARY.GLIB);
	Linker.link(g_sequence_remove, "g_sequence_remove", LIBRARY.GLIB);
	Linker.link(g_sequence_remove_range, "g_sequence_remove_range", LIBRARY.GLIB);
	Linker.link(g_sequence_set, "g_sequence_set", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed, "g_sequence_sort_changed", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed_iter, "g_sequence_sort_changed_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_swap, "g_sequence_swap", LIBRARY.GLIB);

	// glib.SequenceIter

	Linker.link(g_sequence_iter_compare, "g_sequence_iter_compare", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_position, "g_sequence_iter_get_position", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_sequence, "g_sequence_iter_get_sequence", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_is_begin, "g_sequence_iter_is_begin", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_is_end, "g_sequence_iter_is_end", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_move, "g_sequence_iter_move", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_next, "g_sequence_iter_next", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_prev, "g_sequence_iter_prev", LIBRARY.GLIB);

	// glib.Source

	Linker.link(g_source_new, "g_source_new", LIBRARY.GLIB);
	Linker.link(g_source_add_child_source, "g_source_add_child_source", LIBRARY.GLIB);
	Linker.link(g_source_add_poll, "g_source_add_poll", LIBRARY.GLIB);
	Linker.link(g_source_add_unix_fd, "g_source_add_unix_fd", LIBRARY.GLIB);
	Linker.link(g_source_attach, "g_source_attach", LIBRARY.GLIB);
	Linker.link(g_source_destroy, "g_source_destroy", LIBRARY.GLIB);
	Linker.link(g_source_get_can_recurse, "g_source_get_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_get_context, "g_source_get_context", LIBRARY.GLIB);
	Linker.link(g_source_get_current_time, "g_source_get_current_time", LIBRARY.GLIB);
	Linker.link(g_source_get_id, "g_source_get_id", LIBRARY.GLIB);
	Linker.link(g_source_get_name, "g_source_get_name", LIBRARY.GLIB);
	Linker.link(g_source_get_priority, "g_source_get_priority", LIBRARY.GLIB);
	Linker.link(g_source_get_ready_time, "g_source_get_ready_time", LIBRARY.GLIB);
	Linker.link(g_source_get_time, "g_source_get_time", LIBRARY.GLIB);
	Linker.link(g_source_is_destroyed, "g_source_is_destroyed", LIBRARY.GLIB);
	Linker.link(g_source_modify_unix_fd, "g_source_modify_unix_fd", LIBRARY.GLIB);
	Linker.link(g_source_query_unix_fd, "g_source_query_unix_fd", LIBRARY.GLIB);
	Linker.link(g_source_ref, "g_source_ref", LIBRARY.GLIB);
	Linker.link(g_source_remove_child_source, "g_source_remove_child_source", LIBRARY.GLIB);
	Linker.link(g_source_remove_poll, "g_source_remove_poll", LIBRARY.GLIB);
	Linker.link(g_source_remove_unix_fd, "g_source_remove_unix_fd", LIBRARY.GLIB);
	Linker.link(g_source_set_callback, "g_source_set_callback", LIBRARY.GLIB);
	Linker.link(g_source_set_callback_indirect, "g_source_set_callback_indirect", LIBRARY.GLIB);
	Linker.link(g_source_set_can_recurse, "g_source_set_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_set_funcs, "g_source_set_funcs", LIBRARY.GLIB);
	Linker.link(g_source_set_name, "g_source_set_name", LIBRARY.GLIB);
	Linker.link(g_source_set_priority, "g_source_set_priority", LIBRARY.GLIB);
	Linker.link(g_source_set_ready_time, "g_source_set_ready_time", LIBRARY.GLIB);
	Linker.link(g_source_unref, "g_source_unref", LIBRARY.GLIB);
	Linker.link(g_source_remove, "g_source_remove", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_funcs_user_data, "g_source_remove_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_user_data, "g_source_remove_by_user_data", LIBRARY.GLIB);
	Linker.link(g_source_set_name_by_id, "g_source_set_name_by_id", LIBRARY.GLIB);

	// glib.StringG

	Linker.link(g_string_append, "g_string_append", LIBRARY.GLIB);
	Linker.link(g_string_append_c, "g_string_append_c", LIBRARY.GLIB);
	Linker.link(g_string_append_len, "g_string_append_len", LIBRARY.GLIB);
	Linker.link(g_string_append_printf, "g_string_append_printf", LIBRARY.GLIB);
	Linker.link(g_string_append_unichar, "g_string_append_unichar", LIBRARY.GLIB);
	Linker.link(g_string_append_uri_escaped, "g_string_append_uri_escaped", LIBRARY.GLIB);
	Linker.link(g_string_append_vprintf, "g_string_append_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_ascii_down, "g_string_ascii_down", LIBRARY.GLIB);
	Linker.link(g_string_ascii_up, "g_string_ascii_up", LIBRARY.GLIB);
	Linker.link(g_string_assign, "g_string_assign", LIBRARY.GLIB);
	Linker.link(g_string_down, "g_string_down", LIBRARY.GLIB);
	Linker.link(g_string_equal, "g_string_equal", LIBRARY.GLIB);
	Linker.link(g_string_erase, "g_string_erase", LIBRARY.GLIB);
	Linker.link(g_string_free, "g_string_free", LIBRARY.GLIB);
	Linker.link(g_string_free_to_bytes, "g_string_free_to_bytes", LIBRARY.GLIB);
	Linker.link(g_string_hash, "g_string_hash", LIBRARY.GLIB);
	Linker.link(g_string_insert, "g_string_insert", LIBRARY.GLIB);
	Linker.link(g_string_insert_c, "g_string_insert_c", LIBRARY.GLIB);
	Linker.link(g_string_insert_len, "g_string_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_insert_unichar, "g_string_insert_unichar", LIBRARY.GLIB);
	Linker.link(g_string_overwrite, "g_string_overwrite", LIBRARY.GLIB);
	Linker.link(g_string_overwrite_len, "g_string_overwrite_len", LIBRARY.GLIB);
	Linker.link(g_string_prepend, "g_string_prepend", LIBRARY.GLIB);
	Linker.link(g_string_prepend_c, "g_string_prepend_c", LIBRARY.GLIB);
	Linker.link(g_string_prepend_len, "g_string_prepend_len", LIBRARY.GLIB);
	Linker.link(g_string_prepend_unichar, "g_string_prepend_unichar", LIBRARY.GLIB);
	Linker.link(g_string_printf, "g_string_printf", LIBRARY.GLIB);
	Linker.link(g_string_set_size, "g_string_set_size", LIBRARY.GLIB);
	Linker.link(g_string_truncate, "g_string_truncate", LIBRARY.GLIB);
	Linker.link(g_string_up, "g_string_up", LIBRARY.GLIB);
	Linker.link(g_string_vprintf, "g_string_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_new, "g_string_new", LIBRARY.GLIB);
	Linker.link(g_string_new_len, "g_string_new_len", LIBRARY.GLIB);
	Linker.link(g_string_sized_new, "g_string_sized_new", LIBRARY.GLIB);

	// glib.StringChunk

	Linker.link(g_string_chunk_clear, "g_string_chunk_clear", LIBRARY.GLIB);
	Linker.link(g_string_chunk_free, "g_string_chunk_free", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert, "g_string_chunk_insert", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_const, "g_string_chunk_insert_const", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_len, "g_string_chunk_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_chunk_new, "g_string_chunk_new", LIBRARY.GLIB);

	// glib.TestLogBuffer

	Linker.link(g_test_log_buffer_free, "g_test_log_buffer_free", LIBRARY.GLIB);
	Linker.link(g_test_log_buffer_pop, "g_test_log_buffer_pop", LIBRARY.GLIB);
	Linker.link(g_test_log_buffer_push, "g_test_log_buffer_push", LIBRARY.GLIB);
	Linker.link(g_test_log_buffer_new, "g_test_log_buffer_new", LIBRARY.GLIB);

	// glib.TestLogMsg

	Linker.link(g_test_log_msg_free, "g_test_log_msg_free", LIBRARY.GLIB);

	// glib.TestSuite

	Linker.link(g_test_suite_add, "g_test_suite_add", LIBRARY.GLIB);
	Linker.link(g_test_suite_add_suite, "g_test_suite_add_suite", LIBRARY.GLIB);

	// glib.Thread

	Linker.link(g_thread_new, "g_thread_new", LIBRARY.GLIB);
	Linker.link(g_thread_try_new, "g_thread_try_new", LIBRARY.GLIB);
	Linker.link(g_thread_join, "g_thread_join", LIBRARY.GLIB);
	Linker.link(g_thread_ref, "g_thread_ref", LIBRARY.GLIB);
	Linker.link(g_thread_unref, "g_thread_unref", LIBRARY.GLIB);
	Linker.link(g_thread_error_quark, "g_thread_error_quark", LIBRARY.GLIB);
	Linker.link(g_thread_exit, "g_thread_exit", LIBRARY.GLIB);
	Linker.link(g_thread_self, "g_thread_self", LIBRARY.GLIB);
	Linker.link(g_thread_yield, "g_thread_yield", LIBRARY.GLIB);
	Linker.link(g_bit_lock, "g_bit_lock", LIBRARY.GLIB);
	Linker.link(g_bit_trylock, "g_bit_trylock", LIBRARY.GLIB);
	Linker.link(g_bit_unlock, "g_bit_unlock", LIBRARY.GLIB);
	Linker.link(g_get_num_processors, "g_get_num_processors", LIBRARY.GLIB);
	Linker.link(g_pointer_bit_lock, "g_pointer_bit_lock", LIBRARY.GLIB);
	Linker.link(g_pointer_bit_trylock, "g_pointer_bit_trylock", LIBRARY.GLIB);
	Linker.link(g_pointer_bit_unlock, "g_pointer_bit_unlock", LIBRARY.GLIB);

	// glib.ThreadPool

	Linker.link(g_thread_pool_free, "g_thread_pool_free", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_threads, "g_thread_pool_get_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_threads, "g_thread_pool_get_num_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_move_to_front, "g_thread_pool_move_to_front", LIBRARY.GLIB);
	Linker.link(g_thread_pool_push, "g_thread_pool_push", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_threads, "g_thread_pool_set_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_sort_function, "g_thread_pool_set_sort_function", LIBRARY.GLIB);
	Linker.link(g_thread_pool_unprocessed, "g_thread_pool_unprocessed", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_idle_time, "g_thread_pool_get_max_idle_time", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_unused_threads, "g_thread_pool_get_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_unused_threads, "g_thread_pool_get_num_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_new, "g_thread_pool_new", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_idle_time, "g_thread_pool_set_max_idle_time", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_unused_threads, "g_thread_pool_set_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_stop_unused_threads, "g_thread_pool_stop_unused_threads", LIBRARY.GLIB);

	// glib.TimeVal

	Linker.link(g_time_val_add, "g_time_val_add", LIBRARY.GLIB);
	Linker.link(g_time_val_to_iso8601, "g_time_val_to_iso8601", LIBRARY.GLIB);
	Linker.link(g_time_val_from_iso8601, "g_time_val_from_iso8601", LIBRARY.GLIB);
	Linker.link(g_get_current_time, "g_get_current_time", LIBRARY.GLIB);
	Linker.link(g_get_monotonic_time, "g_get_monotonic_time", LIBRARY.GLIB);
	Linker.link(g_get_real_time, "g_get_real_time", LIBRARY.GLIB);
	Linker.link(g_usleep, "g_usleep", LIBRARY.GLIB);

	// glib.TimeZone

	Linker.link(g_time_zone_new, "g_time_zone_new", LIBRARY.GLIB);
	Linker.link(g_time_zone_new_local, "g_time_zone_new_local", LIBRARY.GLIB);
	Linker.link(g_time_zone_new_utc, "g_time_zone_new_utc", LIBRARY.GLIB);
	Linker.link(g_time_zone_adjust_time, "g_time_zone_adjust_time", LIBRARY.GLIB);
	Linker.link(g_time_zone_find_interval, "g_time_zone_find_interval", LIBRARY.GLIB);
	Linker.link(g_time_zone_get_abbreviation, "g_time_zone_get_abbreviation", LIBRARY.GLIB);
	Linker.link(g_time_zone_get_offset, "g_time_zone_get_offset", LIBRARY.GLIB);
	Linker.link(g_time_zone_is_dst, "g_time_zone_is_dst", LIBRARY.GLIB);
	Linker.link(g_time_zone_ref, "g_time_zone_ref", LIBRARY.GLIB);
	Linker.link(g_time_zone_unref, "g_time_zone_unref", LIBRARY.GLIB);

	// glib.Timer

	Linker.link(g_timer_continue, "g_timer_continue", LIBRARY.GLIB);
	Linker.link(g_timer_destroy, "g_timer_destroy", LIBRARY.GLIB);
	Linker.link(g_timer_elapsed, "g_timer_elapsed", LIBRARY.GLIB);
	Linker.link(g_timer_reset, "g_timer_reset", LIBRARY.GLIB);
	Linker.link(g_timer_start, "g_timer_start", LIBRARY.GLIB);
	Linker.link(g_timer_stop, "g_timer_stop", LIBRARY.GLIB);
	Linker.link(g_timer_new, "g_timer_new", LIBRARY.GLIB);

	// glib.TrashStack

	Linker.link(g_trash_stack_height, "g_trash_stack_height", LIBRARY.GLIB);
	Linker.link(g_trash_stack_peek, "g_trash_stack_peek", LIBRARY.GLIB);
	Linker.link(g_trash_stack_pop, "g_trash_stack_pop", LIBRARY.GLIB);
	Linker.link(g_trash_stack_push, "g_trash_stack_push", LIBRARY.GLIB);

	// glib.BBTree

	Linker.link(g_tree_destroy, "g_tree_destroy", LIBRARY.GLIB);
	Linker.link(g_tree_foreach, "g_tree_foreach", LIBRARY.GLIB);
	Linker.link(g_tree_height, "g_tree_height", LIBRARY.GLIB);
	Linker.link(g_tree_insert, "g_tree_insert", LIBRARY.GLIB);
	Linker.link(g_tree_lookup, "g_tree_lookup", LIBRARY.GLIB);
	Linker.link(g_tree_lookup_extended, "g_tree_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_tree_nnodes, "g_tree_nnodes", LIBRARY.GLIB);
	Linker.link(g_tree_ref, "g_tree_ref", LIBRARY.GLIB);
	Linker.link(g_tree_remove, "g_tree_remove", LIBRARY.GLIB);
	Linker.link(g_tree_replace, "g_tree_replace", LIBRARY.GLIB);
	Linker.link(g_tree_search, "g_tree_search", LIBRARY.GLIB);
	Linker.link(g_tree_steal, "g_tree_steal", LIBRARY.GLIB);
	Linker.link(g_tree_traverse, "g_tree_traverse", LIBRARY.GLIB);
	Linker.link(g_tree_unref, "g_tree_unref", LIBRARY.GLIB);
	Linker.link(g_tree_new, "g_tree_new", LIBRARY.GLIB);
	Linker.link(g_tree_new_full, "g_tree_new_full", LIBRARY.GLIB);
	Linker.link(g_tree_new_with_data, "g_tree_new_with_data", LIBRARY.GLIB);

	// glib.Variant

	Linker.link(g_variant_new, "g_variant_new", LIBRARY.GLIB);
	Linker.link(g_variant_new_array, "g_variant_new_array", LIBRARY.GLIB);
	Linker.link(g_variant_new_boolean, "g_variant_new_boolean", LIBRARY.GLIB);
	Linker.link(g_variant_new_byte, "g_variant_new_byte", LIBRARY.GLIB);
	Linker.link(g_variant_new_bytestring, "g_variant_new_bytestring", LIBRARY.GLIB);
	Linker.link(g_variant_new_bytestring_array, "g_variant_new_bytestring_array", LIBRARY.GLIB);
	Linker.link(g_variant_new_dict_entry, "g_variant_new_dict_entry", LIBRARY.GLIB);
	Linker.link(g_variant_new_double, "g_variant_new_double", LIBRARY.GLIB);
	Linker.link(g_variant_new_fixed_array, "g_variant_new_fixed_array", LIBRARY.GLIB);
	Linker.link(g_variant_new_from_bytes, "g_variant_new_from_bytes", LIBRARY.GLIB);
	Linker.link(g_variant_new_from_data, "g_variant_new_from_data", LIBRARY.GLIB);
	Linker.link(g_variant_new_handle, "g_variant_new_handle", LIBRARY.GLIB);
	Linker.link(g_variant_new_int16, "g_variant_new_int16", LIBRARY.GLIB);
	Linker.link(g_variant_new_int32, "g_variant_new_int32", LIBRARY.GLIB);
	Linker.link(g_variant_new_int64, "g_variant_new_int64", LIBRARY.GLIB);
	Linker.link(g_variant_new_maybe, "g_variant_new_maybe", LIBRARY.GLIB);
	Linker.link(g_variant_new_object_path, "g_variant_new_object_path", LIBRARY.GLIB);
	Linker.link(g_variant_new_objv, "g_variant_new_objv", LIBRARY.GLIB);
	Linker.link(g_variant_new_parsed, "g_variant_new_parsed", LIBRARY.GLIB);
	Linker.link(g_variant_new_parsed_va, "g_variant_new_parsed_va", LIBRARY.GLIB);
	Linker.link(g_variant_new_printf, "g_variant_new_printf", LIBRARY.GLIB);
	Linker.link(g_variant_new_signature, "g_variant_new_signature", LIBRARY.GLIB);
	Linker.link(g_variant_new_string, "g_variant_new_string", LIBRARY.GLIB);
	Linker.link(g_variant_new_strv, "g_variant_new_strv", LIBRARY.GLIB);
	Linker.link(g_variant_new_take_string, "g_variant_new_take_string", LIBRARY.GLIB);
	Linker.link(g_variant_new_tuple, "g_variant_new_tuple", LIBRARY.GLIB);
	Linker.link(g_variant_new_uint16, "g_variant_new_uint16", LIBRARY.GLIB);
	Linker.link(g_variant_new_uint32, "g_variant_new_uint32", LIBRARY.GLIB);
	Linker.link(g_variant_new_uint64, "g_variant_new_uint64", LIBRARY.GLIB);
	Linker.link(g_variant_new_va, "g_variant_new_va", LIBRARY.GLIB);
	Linker.link(g_variant_new_variant, "g_variant_new_variant", LIBRARY.GLIB);
	Linker.link(g_variant_byteswap, "g_variant_byteswap", LIBRARY.GLIB);
	Linker.link(g_variant_check_format_string, "g_variant_check_format_string", LIBRARY.GLIB);
	Linker.link(g_variant_classify, "g_variant_classify", LIBRARY.GLIB);
	Linker.link(g_variant_compare, "g_variant_compare", LIBRARY.GLIB);
	Linker.link(g_variant_dup_bytestring, "g_variant_dup_bytestring", LIBRARY.GLIB);
	Linker.link(g_variant_dup_bytestring_array, "g_variant_dup_bytestring_array", LIBRARY.GLIB);
	Linker.link(g_variant_dup_objv, "g_variant_dup_objv", LIBRARY.GLIB);
	Linker.link(g_variant_dup_string, "g_variant_dup_string", LIBRARY.GLIB);
	Linker.link(g_variant_dup_strv, "g_variant_dup_strv", LIBRARY.GLIB);
	Linker.link(g_variant_equal, "g_variant_equal", LIBRARY.GLIB);
	Linker.link(g_variant_get, "g_variant_get", LIBRARY.GLIB);
	Linker.link(g_variant_get_boolean, "g_variant_get_boolean", LIBRARY.GLIB);
	Linker.link(g_variant_get_byte, "g_variant_get_byte", LIBRARY.GLIB);
	Linker.link(g_variant_get_bytestring, "g_variant_get_bytestring", LIBRARY.GLIB);
	Linker.link(g_variant_get_bytestring_array, "g_variant_get_bytestring_array", LIBRARY.GLIB);
	Linker.link(g_variant_get_child, "g_variant_get_child", LIBRARY.GLIB);
	Linker.link(g_variant_get_child_value, "g_variant_get_child_value", LIBRARY.GLIB);
	Linker.link(g_variant_get_data, "g_variant_get_data", LIBRARY.GLIB);
	Linker.link(g_variant_get_data_as_bytes, "g_variant_get_data_as_bytes", LIBRARY.GLIB);
	Linker.link(g_variant_get_double, "g_variant_get_double", LIBRARY.GLIB);
	Linker.link(g_variant_get_fixed_array, "g_variant_get_fixed_array", LIBRARY.GLIB);
	Linker.link(g_variant_get_handle, "g_variant_get_handle", LIBRARY.GLIB);
	Linker.link(g_variant_get_int16, "g_variant_get_int16", LIBRARY.GLIB);
	Linker.link(g_variant_get_int32, "g_variant_get_int32", LIBRARY.GLIB);
	Linker.link(g_variant_get_int64, "g_variant_get_int64", LIBRARY.GLIB);
	Linker.link(g_variant_get_maybe, "g_variant_get_maybe", LIBRARY.GLIB);
	Linker.link(g_variant_get_normal_form, "g_variant_get_normal_form", LIBRARY.GLIB);
	Linker.link(g_variant_get_objv, "g_variant_get_objv", LIBRARY.GLIB);
	Linker.link(g_variant_get_size, "g_variant_get_size", LIBRARY.GLIB);
	Linker.link(g_variant_get_string, "g_variant_get_string", LIBRARY.GLIB);
	Linker.link(g_variant_get_strv, "g_variant_get_strv", LIBRARY.GLIB);
	Linker.link(g_variant_get_type, "g_variant_get_type", LIBRARY.GLIB);
	Linker.link(g_variant_get_type_string, "g_variant_get_type_string", LIBRARY.GLIB);
	Linker.link(g_variant_get_uint16, "g_variant_get_uint16", LIBRARY.GLIB);
	Linker.link(g_variant_get_uint32, "g_variant_get_uint32", LIBRARY.GLIB);
	Linker.link(g_variant_get_uint64, "g_variant_get_uint64", LIBRARY.GLIB);
	Linker.link(g_variant_get_va, "g_variant_get_va", LIBRARY.GLIB);
	Linker.link(g_variant_get_variant, "g_variant_get_variant", LIBRARY.GLIB);
	Linker.link(g_variant_hash, "g_variant_hash", LIBRARY.GLIB);
	Linker.link(g_variant_is_container, "g_variant_is_container", LIBRARY.GLIB);
	Linker.link(g_variant_is_floating, "g_variant_is_floating", LIBRARY.GLIB);
	Linker.link(g_variant_is_normal_form, "g_variant_is_normal_form", LIBRARY.GLIB);
	Linker.link(g_variant_is_of_type, "g_variant_is_of_type", LIBRARY.GLIB);
	Linker.link(g_variant_iter_new, "g_variant_iter_new", LIBRARY.GLIB);
	Linker.link(g_variant_lookup, "g_variant_lookup", LIBRARY.GLIB);
	Linker.link(g_variant_lookup_value, "g_variant_lookup_value", LIBRARY.GLIB);
	Linker.link(g_variant_n_children, "g_variant_n_children", LIBRARY.GLIB);
	Linker.link(g_variant_print, "g_variant_print", LIBRARY.GLIB);
	Linker.link(g_variant_print_string, "g_variant_print_string", LIBRARY.GLIB);
	Linker.link(g_variant_ref, "g_variant_ref", LIBRARY.GLIB);
	Linker.link(g_variant_ref_sink, "g_variant_ref_sink", LIBRARY.GLIB);
	Linker.link(g_variant_store, "g_variant_store", LIBRARY.GLIB);
	Linker.link(g_variant_take_ref, "g_variant_take_ref", LIBRARY.GLIB);
	Linker.link(g_variant_unref, "g_variant_unref", LIBRARY.GLIB);
	Linker.link(g_variant_is_object_path, "g_variant_is_object_path", LIBRARY.GLIB);
	Linker.link(g_variant_is_signature, "g_variant_is_signature", LIBRARY.GLIB);
	Linker.link(g_variant_parse, "g_variant_parse", LIBRARY.GLIB);
	Linker.link(g_variant_parse_error_print_context, "g_variant_parse_error_print_context", LIBRARY.GLIB);
	Linker.link(g_variant_parse_error_quark, "g_variant_parse_error_quark", LIBRARY.GLIB);
	Linker.link(g_variant_parser_get_error_quark, "g_variant_parser_get_error_quark", LIBRARY.GLIB);

	// glib.VariantBuilder

	Linker.link(g_variant_builder_new, "g_variant_builder_new", LIBRARY.GLIB);
	Linker.link(g_variant_builder_add, "g_variant_builder_add", LIBRARY.GLIB);
	Linker.link(g_variant_builder_add_parsed, "g_variant_builder_add_parsed", LIBRARY.GLIB);
	Linker.link(g_variant_builder_add_value, "g_variant_builder_add_value", LIBRARY.GLIB);
	Linker.link(g_variant_builder_clear, "g_variant_builder_clear", LIBRARY.GLIB);
	Linker.link(g_variant_builder_close, "g_variant_builder_close", LIBRARY.GLIB);
	Linker.link(g_variant_builder_end, "g_variant_builder_end", LIBRARY.GLIB);
	Linker.link(g_variant_builder_init, "g_variant_builder_init", LIBRARY.GLIB);
	Linker.link(g_variant_builder_open, "g_variant_builder_open", LIBRARY.GLIB);
	Linker.link(g_variant_builder_ref, "g_variant_builder_ref", LIBRARY.GLIB);
	Linker.link(g_variant_builder_unref, "g_variant_builder_unref", LIBRARY.GLIB);

	// glib.VariantDict

	Linker.link(g_variant_dict_new, "g_variant_dict_new", LIBRARY.GLIB);
	Linker.link(g_variant_dict_clear, "g_variant_dict_clear", LIBRARY.GLIB);
	Linker.link(g_variant_dict_contains, "g_variant_dict_contains", LIBRARY.GLIB);
	Linker.link(g_variant_dict_end, "g_variant_dict_end", LIBRARY.GLIB);
	Linker.link(g_variant_dict_init, "g_variant_dict_init", LIBRARY.GLIB);
	Linker.link(g_variant_dict_insert, "g_variant_dict_insert", LIBRARY.GLIB);
	Linker.link(g_variant_dict_insert_value, "g_variant_dict_insert_value", LIBRARY.GLIB);
	Linker.link(g_variant_dict_lookup, "g_variant_dict_lookup", LIBRARY.GLIB);
	Linker.link(g_variant_dict_lookup_value, "g_variant_dict_lookup_value", LIBRARY.GLIB);
	Linker.link(g_variant_dict_ref, "g_variant_dict_ref", LIBRARY.GLIB);
	Linker.link(g_variant_dict_remove, "g_variant_dict_remove", LIBRARY.GLIB);
	Linker.link(g_variant_dict_unref, "g_variant_dict_unref", LIBRARY.GLIB);

	// glib.VariantIter

	Linker.link(g_variant_iter_copy, "g_variant_iter_copy", LIBRARY.GLIB);
	Linker.link(g_variant_iter_free, "g_variant_iter_free", LIBRARY.GLIB);
	Linker.link(g_variant_iter_init, "g_variant_iter_init", LIBRARY.GLIB);
	Linker.link(g_variant_iter_loop, "g_variant_iter_loop", LIBRARY.GLIB);
	Linker.link(g_variant_iter_n_children, "g_variant_iter_n_children", LIBRARY.GLIB);
	Linker.link(g_variant_iter_next, "g_variant_iter_next", LIBRARY.GLIB);
	Linker.link(g_variant_iter_next_value, "g_variant_iter_next_value", LIBRARY.GLIB);

	// glib.VariantType

	Linker.link(g_variant_type_new, "g_variant_type_new", LIBRARY.GLIB);
	Linker.link(g_variant_type_new_array, "g_variant_type_new_array", LIBRARY.GLIB);
	Linker.link(g_variant_type_new_dict_entry, "g_variant_type_new_dict_entry", LIBRARY.GLIB);
	Linker.link(g_variant_type_new_maybe, "g_variant_type_new_maybe", LIBRARY.GLIB);
	Linker.link(g_variant_type_new_tuple, "g_variant_type_new_tuple", LIBRARY.GLIB);
	Linker.link(g_variant_type_copy, "g_variant_type_copy", LIBRARY.GLIB);
	Linker.link(g_variant_type_dup_string, "g_variant_type_dup_string", LIBRARY.GLIB);
	Linker.link(g_variant_type_element, "g_variant_type_element", LIBRARY.GLIB);
	Linker.link(g_variant_type_equal, "g_variant_type_equal", LIBRARY.GLIB);
	Linker.link(g_variant_type_first, "g_variant_type_first", LIBRARY.GLIB);
	Linker.link(g_variant_type_free, "g_variant_type_free", LIBRARY.GLIB);
	Linker.link(g_variant_type_get_string_length, "g_variant_type_get_string_length", LIBRARY.GLIB);
	Linker.link(g_variant_type_hash, "g_variant_type_hash", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_array, "g_variant_type_is_array", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_basic, "g_variant_type_is_basic", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_container, "g_variant_type_is_container", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_definite, "g_variant_type_is_definite", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_dict_entry, "g_variant_type_is_dict_entry", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_maybe, "g_variant_type_is_maybe", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_subtype_of, "g_variant_type_is_subtype_of", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_tuple, "g_variant_type_is_tuple", LIBRARY.GLIB);
	Linker.link(g_variant_type_is_variant, "g_variant_type_is_variant", LIBRARY.GLIB);
	Linker.link(g_variant_type_key, "g_variant_type_key", LIBRARY.GLIB);
	Linker.link(g_variant_type_n_items, "g_variant_type_n_items", LIBRARY.GLIB);
	Linker.link(g_variant_type_next, "g_variant_type_next", LIBRARY.GLIB);
	Linker.link(g_variant_type_peek_string, "g_variant_type_peek_string", LIBRARY.GLIB);
	Linker.link(g_variant_type_value, "g_variant_type_value", LIBRARY.GLIB);
	Linker.link(g_variant_type_checked_, "g_variant_type_checked_", LIBRARY.GLIB);
	Linker.link(g_variant_type_string_is_valid, "g_variant_type_string_is_valid", LIBRARY.GLIB);
	Linker.link(g_variant_type_string_scan, "g_variant_type_string_scan", LIBRARY.GLIB);

	// glib.Module

	Linker.link(g_module_close, "g_module_close", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_make_resident, "g_module_make_resident", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_name, "g_module_name", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_symbol, "g_module_symbol", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_build_path, "g_module_build_path", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_error, "g_module_error", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_open, "g_module_open", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_supported, "g_module_supported", LIBRARY.GLIB, LIBRARY.GMODULE);

	// glib.Base64

	Linker.link(g_base64_decode_step, "g_base64_decode_step", LIBRARY.GLIB);
	Linker.link(g_base64_decode_inplace, "g_base64_decode_inplace", LIBRARY.GLIB);
	Linker.link(g_base64_decode, "g_base64_decode", LIBRARY.GLIB);
	Linker.link(g_base64_encode, "g_base64_encode", LIBRARY.GLIB);
	Linker.link(g_base64_encode_close, "g_base64_encode_close", LIBRARY.GLIB);
	Linker.link(g_base64_encode_step, "g_base64_encode_step", LIBRARY.GLIB);

	// glib.Idle

	Linker.link(g_idle_add, "g_idle_add", LIBRARY.GLIB);
	Linker.link(g_idle_add_full, "g_idle_add_full", LIBRARY.GLIB);
	Linker.link(g_idle_remove_by_data, "g_idle_remove_by_data", LIBRARY.GLIB);
	Linker.link(g_idle_source_new, "g_idle_source_new", LIBRARY.GLIB);

	// glib.MemorySlice

	Linker.link(g_slice_alloc, "g_slice_alloc", LIBRARY.GLIB);
	Linker.link(g_slice_alloc0, "g_slice_alloc0", LIBRARY.GLIB);
	Linker.link(g_slice_copy, "g_slice_copy", LIBRARY.GLIB);
	Linker.link(g_slice_free1, "g_slice_free1", LIBRARY.GLIB);
	Linker.link(g_slice_free_chain_with_offset, "g_slice_free_chain_with_offset", LIBRARY.GLIB);
	Linker.link(g_slice_get_config, "g_slice_get_config", LIBRARY.GLIB);
	Linker.link(g_slice_get_config_state, "g_slice_get_config_state", LIBRARY.GLIB);
	Linker.link(g_slice_set_config, "g_slice_set_config", LIBRARY.GLIB);

	// glib.Spawn

	Linker.link(g_spawn_async, "g_spawn_async", LIBRARY.GLIB);
	Linker.link(g_spawn_async_with_pipes, "g_spawn_async_with_pipes", LIBRARY.GLIB);
	Linker.link(g_spawn_check_exit_status, "g_spawn_check_exit_status", LIBRARY.GLIB);
	Linker.link(g_spawn_close_pid, "g_spawn_close_pid", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_async, "g_spawn_command_line_async", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_sync, "g_spawn_command_line_sync", LIBRARY.GLIB);
	Linker.link(g_spawn_error_quark, "g_spawn_error_quark", LIBRARY.GLIB);
	Linker.link(g_spawn_exit_error_quark, "g_spawn_exit_error_quark", LIBRARY.GLIB);
	Linker.link(g_spawn_sync, "g_spawn_sync", LIBRARY.GLIB);

	// glib.Str

	Linker.link(g_ascii_digit_value, "g_ascii_digit_value", LIBRARY.GLIB);
	Linker.link(g_ascii_dtostr, "g_ascii_dtostr", LIBRARY.GLIB);
	Linker.link(g_ascii_formatd, "g_ascii_formatd", LIBRARY.GLIB);
	Linker.link(g_ascii_strcasecmp, "g_ascii_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strdown, "g_ascii_strdown", LIBRARY.GLIB);
	Linker.link(g_ascii_strncasecmp, "g_ascii_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strtod, "g_ascii_strtod", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoll, "g_ascii_strtoll", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoull, "g_ascii_strtoull", LIBRARY.GLIB);
	Linker.link(g_ascii_strup, "g_ascii_strup", LIBRARY.GLIB);
	Linker.link(g_ascii_tolower, "g_ascii_tolower", LIBRARY.GLIB);
	Linker.link(g_ascii_toupper, "g_ascii_toupper", LIBRARY.GLIB);
	Linker.link(g_ascii_xdigit_value, "g_ascii_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_fprintf, "g_fprintf", LIBRARY.GLIB);
	Linker.link(g_printf, "g_printf", LIBRARY.GLIB);
	Linker.link(g_printf_string_upper_bound, "g_printf_string_upper_bound", LIBRARY.GLIB);
	Linker.link(g_snprintf, "g_snprintf", LIBRARY.GLIB);
	Linker.link(g_sprintf, "g_sprintf", LIBRARY.GLIB);
	Linker.link(g_stpcpy, "g_stpcpy", LIBRARY.GLIB);
	Linker.link(g_str_has_prefix, "g_str_has_prefix", LIBRARY.GLIB);
	Linker.link(g_str_has_suffix, "g_str_has_suffix", LIBRARY.GLIB);
	Linker.link(g_str_is_ascii, "g_str_is_ascii", LIBRARY.GLIB);
	Linker.link(g_str_match_string, "g_str_match_string", LIBRARY.GLIB);
	Linker.link(g_str_to_ascii, "g_str_to_ascii", LIBRARY.GLIB);
	Linker.link(g_str_tokenize_and_fold, "g_str_tokenize_and_fold", LIBRARY.GLIB);
	Linker.link(g_strcanon, "g_strcanon", LIBRARY.GLIB);
	Linker.link(g_strcasecmp, "g_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_strchomp, "g_strchomp", LIBRARY.GLIB);
	Linker.link(g_strchug, "g_strchug", LIBRARY.GLIB);
	Linker.link(g_strcmp0, "g_strcmp0", LIBRARY.GLIB);
	Linker.link(g_strcompress, "g_strcompress", LIBRARY.GLIB);
	Linker.link(g_strconcat, "g_strconcat", LIBRARY.GLIB);
	Linker.link(g_strdelimit, "g_strdelimit", LIBRARY.GLIB);
	Linker.link(g_strdown, "g_strdown", LIBRARY.GLIB);
	Linker.link(g_strdup, "g_strdup", LIBRARY.GLIB);
	Linker.link(g_strdup_printf, "g_strdup_printf", LIBRARY.GLIB);
	Linker.link(g_strdup_vprintf, "g_strdup_vprintf", LIBRARY.GLIB);
	Linker.link(g_strdupv, "g_strdupv", LIBRARY.GLIB);
	Linker.link(g_strerror, "g_strerror", LIBRARY.GLIB);
	Linker.link(g_strescape, "g_strescape", LIBRARY.GLIB);
	Linker.link(g_strfreev, "g_strfreev", LIBRARY.GLIB);
	Linker.link(g_strjoin, "g_strjoin", LIBRARY.GLIB);
	Linker.link(g_strjoinv, "g_strjoinv", LIBRARY.GLIB);
	Linker.link(g_strlcat, "g_strlcat", LIBRARY.GLIB);
	Linker.link(g_strlcpy, "g_strlcpy", LIBRARY.GLIB);
	Linker.link(g_strncasecmp, "g_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_strndup, "g_strndup", LIBRARY.GLIB);
	Linker.link(g_strnfill, "g_strnfill", LIBRARY.GLIB);
	Linker.link(g_strreverse, "g_strreverse", LIBRARY.GLIB);
	Linker.link(g_strrstr, "g_strrstr", LIBRARY.GLIB);
	Linker.link(g_strrstr_len, "g_strrstr_len", LIBRARY.GLIB);
	Linker.link(g_strsignal, "g_strsignal", LIBRARY.GLIB);
	Linker.link(g_strsplit, "g_strsplit", LIBRARY.GLIB);
	Linker.link(g_strsplit_set, "g_strsplit_set", LIBRARY.GLIB);
	Linker.link(g_strstr_len, "g_strstr_len", LIBRARY.GLIB);
	Linker.link(g_strtod, "g_strtod", LIBRARY.GLIB);
	Linker.link(g_strup, "g_strup", LIBRARY.GLIB);
	Linker.link(g_strv_get_type, "g_strv_get_type", LIBRARY.GLIB);
	Linker.link(g_strv_length, "g_strv_length", LIBRARY.GLIB);
	Linker.link(g_strv_contains, "g_strv_contains", LIBRARY.GLIB);
	Linker.link(g_vasprintf, "g_vasprintf", LIBRARY.GLIB);
	Linker.link(g_vfprintf, "g_vfprintf", LIBRARY.GLIB);
	Linker.link(g_vprintf, "g_vprintf", LIBRARY.GLIB);
	Linker.link(g_vsnprintf, "g_vsnprintf", LIBRARY.GLIB);
	Linker.link(g_vsprintf, "g_vsprintf", LIBRARY.GLIB);

	// glib.Timeout

	Linker.link(g_timeout_add, "g_timeout_add", LIBRARY.GLIB);
	Linker.link(g_timeout_add_full, "g_timeout_add_full", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds, "g_timeout_add_seconds", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds_full, "g_timeout_add_seconds_full", LIBRARY.GLIB);
	Linker.link(g_timeout_source_new, "g_timeout_source_new", LIBRARY.GLIB);
	Linker.link(g_timeout_source_new_seconds, "g_timeout_source_new_seconds", LIBRARY.GLIB);

	// glib.Util

	Linker.link(g_build_filenamev, "g_build_filenamev", LIBRARY.GLIB);
	Linker.link(g_build_pathv, "g_build_pathv", LIBRARY.GLIB);
	Linker.link(g_atexit, "g_atexit", LIBRARY.GLIB);
	Linker.link(g_basename, "g_basename", LIBRARY.GLIB);
	Linker.link(g_bit_nth_lsf, "g_bit_nth_lsf", LIBRARY.GLIB);
	Linker.link(g_bit_nth_msf, "g_bit_nth_msf", LIBRARY.GLIB);
	Linker.link(g_bit_storage, "g_bit_storage", LIBRARY.GLIB);
	Linker.link(g_build_path, "g_build_path", LIBRARY.GLIB);
	Linker.link(g_environ_getenv, "g_environ_getenv", LIBRARY.GLIB);
	Linker.link(g_environ_setenv, "g_environ_setenv", LIBRARY.GLIB);
	Linker.link(g_environ_unsetenv, "g_environ_unsetenv", LIBRARY.GLIB);
	Linker.link(g_find_program_in_path, "g_find_program_in_path", LIBRARY.GLIB);
	Linker.link(g_format_size, "g_format_size", LIBRARY.GLIB);
	Linker.link(g_format_size_for_display, "g_format_size_for_display", LIBRARY.GLIB);
	Linker.link(g_format_size_full, "g_format_size_full", LIBRARY.GLIB);
	Linker.link(g_get_application_name, "g_get_application_name", LIBRARY.GLIB);
	Linker.link(g_get_environ, "g_get_environ", LIBRARY.GLIB);
	Linker.link(g_get_current_dir, "g_get_current_dir", LIBRARY.GLIB);
	Linker.link(g_get_home_dir, "g_get_home_dir", LIBRARY.GLIB);
	Linker.link(g_get_host_name, "g_get_host_name", LIBRARY.GLIB);
	Linker.link(g_get_prgname, "g_get_prgname", LIBRARY.GLIB);
	Linker.link(g_get_real_name, "g_get_real_name", LIBRARY.GLIB);
	Linker.link(g_get_system_config_dirs, "g_get_system_config_dirs", LIBRARY.GLIB);
	Linker.link(g_get_system_data_dirs, "g_get_system_data_dirs", LIBRARY.GLIB);
	Linker.link(g_get_tmp_dir, "g_get_tmp_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_cache_dir, "g_get_user_cache_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_config_dir, "g_get_user_config_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_data_dir, "g_get_user_data_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_name, "g_get_user_name", LIBRARY.GLIB);
	Linker.link(g_get_user_runtime_dir, "g_get_user_runtime_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_special_dir, "g_get_user_special_dir", LIBRARY.GLIB);
	Linker.link(g_getenv, "g_getenv", LIBRARY.GLIB);
	Linker.link(g_listenv, "g_listenv", LIBRARY.GLIB);
	Linker.link(g_nullify_pointer, "g_nullify_pointer", LIBRARY.GLIB);
	Linker.link(g_parse_debug_string, "g_parse_debug_string", LIBRARY.GLIB);
	Linker.link(g_path_get_basename, "g_path_get_basename", LIBRARY.GLIB);
	Linker.link(g_path_get_dirname, "g_path_get_dirname", LIBRARY.GLIB);
	Linker.link(g_path_is_absolute, "g_path_is_absolute", LIBRARY.GLIB);
	Linker.link(g_path_skip_root, "g_path_skip_root", LIBRARY.GLIB);
	Linker.link(g_qsort_with_data, "g_qsort_with_data", LIBRARY.GLIB);
	Linker.link(g_reload_user_special_dirs_cache, "g_reload_user_special_dirs_cache", LIBRARY.GLIB);
	Linker.link(g_set_application_name, "g_set_application_name", LIBRARY.GLIB);
	Linker.link(g_set_prgname, "g_set_prgname", LIBRARY.GLIB);
	Linker.link(g_setenv, "g_setenv", LIBRARY.GLIB);
	Linker.link(g_spaced_primes_closest, "g_spaced_primes_closest", LIBRARY.GLIB);
	Linker.link(g_unsetenv, "g_unsetenv", LIBRARY.GLIB);

	// glib.Atomic

	Linker.link(g_atomic_int_add, "g_atomic_int_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_and, "g_atomic_int_and", LIBRARY.GLIB);
	Linker.link(g_atomic_int_compare_and_exchange, "g_atomic_int_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_int_dec_and_test, "g_atomic_int_dec_and_test", LIBRARY.GLIB);
	Linker.link(g_atomic_int_exchange_and_add, "g_atomic_int_exchange_and_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_get, "g_atomic_int_get", LIBRARY.GLIB);
	Linker.link(g_atomic_int_inc, "g_atomic_int_inc", LIBRARY.GLIB);
	Linker.link(g_atomic_int_or, "g_atomic_int_or", LIBRARY.GLIB);
	Linker.link(g_atomic_int_set, "g_atomic_int_set", LIBRARY.GLIB);
	Linker.link(g_atomic_int_xor, "g_atomic_int_xor", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_add, "g_atomic_pointer_add", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_and, "g_atomic_pointer_and", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_compare_and_exchange, "g_atomic_pointer_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_get, "g_atomic_pointer_get", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_or, "g_atomic_pointer_or", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_set, "g_atomic_pointer_set", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_xor, "g_atomic_pointer_xor", LIBRARY.GLIB);

	// glib.CharacterSet

	Linker.link(g_convert, "g_convert", LIBRARY.GLIB);
	Linker.link(g_convert_error_quark, "g_convert_error_quark", LIBRARY.GLIB);
	Linker.link(g_convert_with_fallback, "g_convert_with_fallback", LIBRARY.GLIB);
	Linker.link(g_convert_with_iconv, "g_convert_with_iconv", LIBRARY.GLIB);
	Linker.link(g_filename_display_basename, "g_filename_display_basename", LIBRARY.GLIB);
	Linker.link(g_filename_display_name, "g_filename_display_name", LIBRARY.GLIB);
	Linker.link(g_filename_from_utf8, "g_filename_from_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_to_utf8, "g_filename_to_utf8", LIBRARY.GLIB);
	Linker.link(g_get_charset, "g_get_charset", LIBRARY.GLIB);
	Linker.link(g_get_codeset, "g_get_codeset", LIBRARY.GLIB);
	Linker.link(g_get_filename_charsets, "g_get_filename_charsets", LIBRARY.GLIB);
	Linker.link(g_locale_from_utf8, "g_locale_from_utf8", LIBRARY.GLIB);
	Linker.link(g_locale_to_utf8, "g_locale_to_utf8", LIBRARY.GLIB);

	// glib.Child

	Linker.link(g_child_watch_add, "g_child_watch_add", LIBRARY.GLIB);
	Linker.link(g_child_watch_add_full, "g_child_watch_add_full", LIBRARY.GLIB);
	Linker.link(g_child_watch_source_new, "g_child_watch_source_new", LIBRARY.GLIB);

	// glib.DataList

	Linker.link(g_datalist_clear, "g_datalist_clear", LIBRARY.GLIB);
	Linker.link(g_datalist_foreach, "g_datalist_foreach", LIBRARY.GLIB);
	Linker.link(g_datalist_get_data, "g_datalist_get_data", LIBRARY.GLIB);
	Linker.link(g_datalist_get_flags, "g_datalist_get_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_id_dup_data, "g_datalist_id_dup_data", LIBRARY.GLIB);
	Linker.link(g_datalist_id_get_data, "g_datalist_id_get_data", LIBRARY.GLIB);
	Linker.link(g_datalist_id_remove_no_notify, "g_datalist_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_datalist_id_replace_data, "g_datalist_id_replace_data", LIBRARY.GLIB);
	Linker.link(g_datalist_id_set_data_full, "g_datalist_id_set_data_full", LIBRARY.GLIB);
	Linker.link(g_datalist_init, "g_datalist_init", LIBRARY.GLIB);
	Linker.link(g_datalist_set_flags, "g_datalist_set_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_unset_flags, "g_datalist_unset_flags", LIBRARY.GLIB);

	// glib.DataSet

	Linker.link(g_dataset_destroy, "g_dataset_destroy", LIBRARY.GLIB);
	Linker.link(g_dataset_foreach, "g_dataset_foreach", LIBRARY.GLIB);
	Linker.link(g_dataset_id_get_data, "g_dataset_id_get_data", LIBRARY.GLIB);
	Linker.link(g_dataset_id_remove_no_notify, "g_dataset_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_dataset_id_set_data_full, "g_dataset_id_set_data_full", LIBRARY.GLIB);

	// glib.FileUtils

	Linker.link(g_access, "g_access", LIBRARY.GLIB);
	Linker.link(g_chdir, "g_chdir", LIBRARY.GLIB);
	Linker.link(g_close, "g_close", LIBRARY.GLIB);
	Linker.link(g_file_error_from_errno, "g_file_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_file_error_quark, "g_file_error_quark", LIBRARY.GLIB);
	Linker.link(g_file_get_contents, "g_file_get_contents", LIBRARY.GLIB);
	Linker.link(g_file_open_tmp, "g_file_open_tmp", LIBRARY.GLIB);
	Linker.link(g_file_read_link, "g_file_read_link", LIBRARY.GLIB);
	Linker.link(g_file_set_contents, "g_file_set_contents", LIBRARY.GLIB);
	Linker.link(g_file_test, "g_file_test", LIBRARY.GLIB);
	Linker.link(g_mkdir_with_parents, "g_mkdir_with_parents", LIBRARY.GLIB);
	Linker.link(g_mkdtemp, "g_mkdtemp", LIBRARY.GLIB);
	Linker.link(g_mkdtemp_full, "g_mkdtemp_full", LIBRARY.GLIB);
	Linker.link(g_mkstemp, "g_mkstemp", LIBRARY.GLIB);
	Linker.link(g_mkstemp_full, "g_mkstemp_full", LIBRARY.GLIB);
	Linker.link(g_rmdir, "g_rmdir", LIBRARY.GLIB);
	Linker.link(g_unlink, "g_unlink", LIBRARY.GLIB);

	// glib.Hostname

	Linker.link(g_hostname_is_ascii_encoded, "g_hostname_is_ascii_encoded", LIBRARY.GLIB);
	Linker.link(g_hostname_is_ip_address, "g_hostname_is_ip_address", LIBRARY.GLIB);
	Linker.link(g_hostname_is_non_ascii, "g_hostname_is_non_ascii", LIBRARY.GLIB);
	Linker.link(g_hostname_to_ascii, "g_hostname_to_ascii", LIBRARY.GLIB);
	Linker.link(g_hostname_to_unicode, "g_hostname_to_unicode", LIBRARY.GLIB);

	// glib.Internationalization

	Linker.link(g_dcgettext, "g_dcgettext", LIBRARY.GLIB);
	Linker.link(g_dgettext, "g_dgettext", LIBRARY.GLIB);
	Linker.link(g_dngettext, "g_dngettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext, "g_dpgettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext2, "g_dpgettext2", LIBRARY.GLIB);
	Linker.link(g_get_language_names, "g_get_language_names", LIBRARY.GLIB);
	Linker.link(g_get_locale_variants, "g_get_locale_variants", LIBRARY.GLIB);
	Linker.link(g_strip_context, "g_strip_context", LIBRARY.GLIB);

	// glib.Memory

	Linker.link(g_clear_pointer, "g_clear_pointer", LIBRARY.GLIB);
	Linker.link(g_free, "g_free", LIBRARY.GLIB);
	Linker.link(g_malloc, "g_malloc", LIBRARY.GLIB);
	Linker.link(g_malloc0, "g_malloc0", LIBRARY.GLIB);
	Linker.link(g_malloc0_n, "g_malloc0_n", LIBRARY.GLIB);
	Linker.link(g_malloc_n, "g_malloc_n", LIBRARY.GLIB);
	Linker.link(g_mem_is_system_malloc, "g_mem_is_system_malloc", LIBRARY.GLIB);
	Linker.link(g_mem_profile, "g_mem_profile", LIBRARY.GLIB);
	Linker.link(g_mem_set_vtable, "g_mem_set_vtable", LIBRARY.GLIB);
	Linker.link(g_memdup, "g_memdup", LIBRARY.GLIB);
	Linker.link(g_realloc, "g_realloc", LIBRARY.GLIB);
	Linker.link(g_realloc_n, "g_realloc_n", LIBRARY.GLIB);
	Linker.link(g_try_malloc, "g_try_malloc", LIBRARY.GLIB);
	Linker.link(g_try_malloc0, "g_try_malloc0", LIBRARY.GLIB);
	Linker.link(g_try_malloc0_n, "g_try_malloc0_n", LIBRARY.GLIB);
	Linker.link(g_try_malloc_n, "g_try_malloc_n", LIBRARY.GLIB);
	Linker.link(g_try_realloc, "g_try_realloc", LIBRARY.GLIB);
	Linker.link(g_try_realloc_n, "g_try_realloc_n", LIBRARY.GLIB);

	// glib.MessageLog

	Linker.link(g_log, "g_log", LIBRARY.GLIB);
	Linker.link(g_log_default_handler, "g_log_default_handler", LIBRARY.GLIB);
	Linker.link(g_log_remove_handler, "g_log_remove_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_always_fatal, "g_log_set_always_fatal", LIBRARY.GLIB);
	Linker.link(g_log_set_default_handler, "g_log_set_default_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_fatal_mask, "g_log_set_fatal_mask", LIBRARY.GLIB);
	Linker.link(g_log_set_handler, "g_log_set_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_handler_full, "g_log_set_handler_full", LIBRARY.GLIB);
	Linker.link(g_logv, "g_logv", LIBRARY.GLIB);

	// glib.Messages

	Linker.link(g_on_error_query, "g_on_error_query", LIBRARY.GLIB);
	Linker.link(g_on_error_stack_trace, "g_on_error_stack_trace", LIBRARY.GLIB);
	Linker.link(g_print, "g_print", LIBRARY.GLIB);
	Linker.link(g_printerr, "g_printerr", LIBRARY.GLIB);
	Linker.link(g_set_print_handler, "g_set_print_handler", LIBRARY.GLIB);
	Linker.link(g_set_printerr_handler, "g_set_printerr_handler", LIBRARY.GLIB);

	// glib.Quark

	Linker.link(g_intern_static_string, "g_intern_static_string", LIBRARY.GLIB);
	Linker.link(g_intern_string, "g_intern_string", LIBRARY.GLIB);
	Linker.link(g_quark_from_static_string, "g_quark_from_static_string", LIBRARY.GLIB);
	Linker.link(g_quark_from_string, "g_quark_from_string", LIBRARY.GLIB);
	Linker.link(g_quark_to_string, "g_quark_to_string", LIBRARY.GLIB);
	Linker.link(g_quark_try_string, "g_quark_try_string", LIBRARY.GLIB);

	// glib.ShellUtils

	Linker.link(g_shell_error_quark, "g_shell_error_quark", LIBRARY.GLIB);
	Linker.link(g_shell_parse_argv, "g_shell_parse_argv", LIBRARY.GLIB);
	Linker.link(g_shell_quote, "g_shell_quote", LIBRARY.GLIB);
	Linker.link(g_shell_unquote, "g_shell_unquote", LIBRARY.GLIB);

	// glib.Unicode

	Linker.link(g_ucs4_to_utf16, "g_ucs4_to_utf16", LIBRARY.GLIB);
	Linker.link(g_ucs4_to_utf8, "g_ucs4_to_utf8", LIBRARY.GLIB);
	Linker.link(g_unichar_break_type, "g_unichar_break_type", LIBRARY.GLIB);
	Linker.link(g_unichar_combining_class, "g_unichar_combining_class", LIBRARY.GLIB);
	Linker.link(g_unichar_compose, "g_unichar_compose", LIBRARY.GLIB);
	Linker.link(g_unichar_decompose, "g_unichar_decompose", LIBRARY.GLIB);
	Linker.link(g_unichar_digit_value, "g_unichar_digit_value", LIBRARY.GLIB);
	Linker.link(g_unichar_fully_decompose, "g_unichar_fully_decompose", LIBRARY.GLIB);
	Linker.link(g_unichar_get_mirror_char, "g_unichar_get_mirror_char", LIBRARY.GLIB);
	Linker.link(g_unichar_get_script, "g_unichar_get_script", LIBRARY.GLIB);
	Linker.link(g_unichar_isalnum, "g_unichar_isalnum", LIBRARY.GLIB);
	Linker.link(g_unichar_isalpha, "g_unichar_isalpha", LIBRARY.GLIB);
	Linker.link(g_unichar_iscntrl, "g_unichar_iscntrl", LIBRARY.GLIB);
	Linker.link(g_unichar_isdefined, "g_unichar_isdefined", LIBRARY.GLIB);
	Linker.link(g_unichar_isdigit, "g_unichar_isdigit", LIBRARY.GLIB);
	Linker.link(g_unichar_isgraph, "g_unichar_isgraph", LIBRARY.GLIB);
	Linker.link(g_unichar_islower, "g_unichar_islower", LIBRARY.GLIB);
	Linker.link(g_unichar_ismark, "g_unichar_ismark", LIBRARY.GLIB);
	Linker.link(g_unichar_isprint, "g_unichar_isprint", LIBRARY.GLIB);
	Linker.link(g_unichar_ispunct, "g_unichar_ispunct", LIBRARY.GLIB);
	Linker.link(g_unichar_isspace, "g_unichar_isspace", LIBRARY.GLIB);
	Linker.link(g_unichar_istitle, "g_unichar_istitle", LIBRARY.GLIB);
	Linker.link(g_unichar_isupper, "g_unichar_isupper", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide, "g_unichar_iswide", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide_cjk, "g_unichar_iswide_cjk", LIBRARY.GLIB);
	Linker.link(g_unichar_isxdigit, "g_unichar_isxdigit", LIBRARY.GLIB);
	Linker.link(g_unichar_iszerowidth, "g_unichar_iszerowidth", LIBRARY.GLIB);
	Linker.link(g_unichar_to_utf8, "g_unichar_to_utf8", LIBRARY.GLIB);
	Linker.link(g_unichar_tolower, "g_unichar_tolower", LIBRARY.GLIB);
	Linker.link(g_unichar_totitle, "g_unichar_totitle", LIBRARY.GLIB);
	Linker.link(g_unichar_toupper, "g_unichar_toupper", LIBRARY.GLIB);
	Linker.link(g_unichar_type, "g_unichar_type", LIBRARY.GLIB);
	Linker.link(g_unichar_validate, "g_unichar_validate", LIBRARY.GLIB);
	Linker.link(g_unichar_xdigit_value, "g_unichar_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_decomposition, "g_unicode_canonical_decomposition", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_ordering, "g_unicode_canonical_ordering", LIBRARY.GLIB);
	Linker.link(g_unicode_script_from_iso15924, "g_unicode_script_from_iso15924", LIBRARY.GLIB);
	Linker.link(g_unicode_script_to_iso15924, "g_unicode_script_to_iso15924", LIBRARY.GLIB);
	Linker.link(g_utf16_to_ucs4, "g_utf16_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf16_to_utf8, "g_utf16_to_utf8", LIBRARY.GLIB);
	Linker.link(g_utf8_casefold, "g_utf8_casefold", LIBRARY.GLIB);
	Linker.link(g_utf8_collate, "g_utf8_collate", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key, "g_utf8_collate_key", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key_for_filename, "g_utf8_collate_key_for_filename", LIBRARY.GLIB);
	Linker.link(g_utf8_find_next_char, "g_utf8_find_next_char", LIBRARY.GLIB);
	Linker.link(g_utf8_find_prev_char, "g_utf8_find_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char, "g_utf8_get_char", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char_validated, "g_utf8_get_char_validated", LIBRARY.GLIB);
	Linker.link(g_utf8_normalize, "g_utf8_normalize", LIBRARY.GLIB);
	Linker.link(g_utf8_offset_to_pointer, "g_utf8_offset_to_pointer", LIBRARY.GLIB);
	Linker.link(g_utf8_pointer_to_offset, "g_utf8_pointer_to_offset", LIBRARY.GLIB);
	Linker.link(g_utf8_prev_char, "g_utf8_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_strchr, "g_utf8_strchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strdown, "g_utf8_strdown", LIBRARY.GLIB);
	Linker.link(g_utf8_strlen, "g_utf8_strlen", LIBRARY.GLIB);
	Linker.link(g_utf8_strncpy, "g_utf8_strncpy", LIBRARY.GLIB);
	Linker.link(g_utf8_strrchr, "g_utf8_strrchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strreverse, "g_utf8_strreverse", LIBRARY.GLIB);
	Linker.link(g_utf8_strup, "g_utf8_strup", LIBRARY.GLIB);
	Linker.link(g_utf8_substring, "g_utf8_substring", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4, "g_utf8_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4_fast, "g_utf8_to_ucs4_fast", LIBRARY.GLIB);
	Linker.link(g_utf8_to_utf16, "g_utf8_to_utf16", LIBRARY.GLIB);
	Linker.link(g_utf8_validate, "g_utf8_validate", LIBRARY.GLIB);

	// glib.UnixUtils

	Linker.link(g_unix_error_quark, "g_unix_error_quark", LIBRARY.GLIB);
	Linker.link(g_unix_fd_add, "g_unix_fd_add", LIBRARY.GLIB);
	Linker.link(g_unix_fd_add_full, "g_unix_fd_add_full", LIBRARY.GLIB);
	Linker.link(g_unix_fd_source_new, "g_unix_fd_source_new", LIBRARY.GLIB);
	Linker.link(g_unix_open_pipe, "g_unix_open_pipe", LIBRARY.GLIB);
	Linker.link(g_unix_set_fd_nonblocking, "g_unix_set_fd_nonblocking", LIBRARY.GLIB);
	Linker.link(g_unix_signal_add, "g_unix_signal_add", LIBRARY.GLIB);
	Linker.link(g_unix_signal_add_full, "g_unix_signal_add_full", LIBRARY.GLIB);
	Linker.link(g_unix_signal_source_new, "g_unix_signal_source_new", LIBRARY.GLIB);

	// glib.URI

	Linker.link(g_filename_from_uri, "g_filename_from_uri", LIBRARY.GLIB);
	Linker.link(g_filename_to_uri, "g_filename_to_uri", LIBRARY.GLIB);
	Linker.link(g_uri_escape_string, "g_uri_escape_string", LIBRARY.GLIB);
	Linker.link(g_uri_list_extract_uris, "g_uri_list_extract_uris", LIBRARY.GLIB);
	Linker.link(g_uri_parse_scheme, "g_uri_parse_scheme", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_segment, "g_uri_unescape_segment", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_string, "g_uri_unescape_string", LIBRARY.GLIB);

	// glib.Version

	Linker.link(glib_check_version, "glib_check_version", LIBRARY.GLIB);
}

__gshared extern(C)
{

	// glib.ArrayG

	GArray* function(GArray* array, void* data, uint len) c_g_array_append_vals;
	char* function(GArray* array, int freeSegment) c_g_array_free;
	uint function(GArray* array) c_g_array_get_element_size;
	GArray* function(GArray* array, uint index, void* data, uint len) c_g_array_insert_vals;
	GArray* function(int zeroTerminated, int clear, uint elementSize) c_g_array_new;
	GArray* function(GArray* array, void* data, uint len) c_g_array_prepend_vals;
	GArray* function(GArray* array) c_g_array_ref;
	GArray* function(GArray* array, uint index) c_g_array_remove_index;
	GArray* function(GArray* array, uint index) c_g_array_remove_index_fast;
	GArray* function(GArray* array, uint index, uint length) c_g_array_remove_range;
	void function(GArray* array, GDestroyNotify clearFunc) c_g_array_set_clear_func;
	GArray* function(GArray* array, uint length) c_g_array_set_size;
	GArray* function(int zeroTerminated, int clear, uint elementSize, uint reservedSize) c_g_array_sized_new;
	void function(GArray* array, GCompareFunc compareFunc) c_g_array_sort;
	void function(GArray* array, GCompareDataFunc compareFunc, void* userData) c_g_array_sort_with_data;
	void function(GArray* array) c_g_array_unref;

	// glib.AsyncQueue

	int function(GAsyncQueue* queue) c_g_async_queue_length;
	int function(GAsyncQueue* queue) c_g_async_queue_length_unlocked;
	void function(GAsyncQueue* queue) c_g_async_queue_lock;
	void* function(GAsyncQueue* queue) c_g_async_queue_pop;
	void* function(GAsyncQueue* queue) c_g_async_queue_pop_unlocked;
	void function(GAsyncQueue* queue, void* data) c_g_async_queue_push;
	void function(GAsyncQueue* queue, void* item) c_g_async_queue_push_front;
	void function(GAsyncQueue* queue, void* item) c_g_async_queue_push_front_unlocked;
	void function(GAsyncQueue* queue, void* data, GCompareDataFunc func, void* userData) c_g_async_queue_push_sorted;
	void function(GAsyncQueue* queue, void* data, GCompareDataFunc func, void* userData) c_g_async_queue_push_sorted_unlocked;
	void function(GAsyncQueue* queue, void* data) c_g_async_queue_push_unlocked;
	GAsyncQueue* function(GAsyncQueue* queue) c_g_async_queue_ref;
	void function(GAsyncQueue* queue) c_g_async_queue_ref_unlocked;
	int function(GAsyncQueue* queue, void* item) c_g_async_queue_remove;
	int function(GAsyncQueue* queue, void* item) c_g_async_queue_remove_unlocked;
	void function(GAsyncQueue* queue, GCompareDataFunc func, void* userData) c_g_async_queue_sort;
	void function(GAsyncQueue* queue, GCompareDataFunc func, void* userData) c_g_async_queue_sort_unlocked;
	void* function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop;
	void* function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop_unlocked;
	void* function(GAsyncQueue* queue, ulong timeout) c_g_async_queue_timeout_pop;
	void* function(GAsyncQueue* queue, ulong timeout) c_g_async_queue_timeout_pop_unlocked;
	void* function(GAsyncQueue* queue) c_g_async_queue_try_pop;
	void* function(GAsyncQueue* queue) c_g_async_queue_try_pop_unlocked;
	void function(GAsyncQueue* queue) c_g_async_queue_unlock;
	void function(GAsyncQueue* queue) c_g_async_queue_unref;
	void function(GAsyncQueue* queue) c_g_async_queue_unref_and_unlock;
	GAsyncQueue* function() c_g_async_queue_new;
	GAsyncQueue* function(GDestroyNotify itemFreeFunc) c_g_async_queue_new_full;

	// glib.BookmarkFile

	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, const(char)* exec) c_g_bookmark_file_add_application;
	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* group) c_g_bookmark_file_add_group;
	void function(GBookmarkFile* bookmark) c_g_bookmark_file_free;
	uint function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_added;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, char** exec, uint* count, uint* stamp, GError** err) c_g_bookmark_file_get_app_info;
	char** function(GBookmarkFile* bookmark, const(char)* uri, size_t* length, GError** err) c_g_bookmark_file_get_applications;
	char* function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_description;
	char** function(GBookmarkFile* bookmark, const(char)* uri, size_t* length, GError** err) c_g_bookmark_file_get_groups;
	int function(GBookmarkFile* bookmark, const(char)* uri, char** href, char** mimeType, GError** err) c_g_bookmark_file_get_icon;
	int function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_is_private;
	char* function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_mime_type;
	uint function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_modified;
	int function(GBookmarkFile* bookmark) c_g_bookmark_file_get_size;
	char* function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_title;
	char** function(GBookmarkFile* bookmark, size_t* length) c_g_bookmark_file_get_uris;
	uint function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_get_visited;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, GError** err) c_g_bookmark_file_has_application;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* group, GError** err) c_g_bookmark_file_has_group;
	int function(GBookmarkFile* bookmark, const(char)* uri) c_g_bookmark_file_has_item;
	int function(GBookmarkFile* bookmark, const(char)* data, size_t length, GError** err) c_g_bookmark_file_load_from_data;
	int function(GBookmarkFile* bookmark, const(char)* file, char** fullPath, GError** err) c_g_bookmark_file_load_from_data_dirs;
	int function(GBookmarkFile* bookmark, const(char)* filename, GError** err) c_g_bookmark_file_load_from_file;
	int function(GBookmarkFile* bookmark, const(char)* oldUri, const(char)* newUri, GError** err) c_g_bookmark_file_move_item;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, GError** err) c_g_bookmark_file_remove_application;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* group, GError** err) c_g_bookmark_file_remove_group;
	int function(GBookmarkFile* bookmark, const(char)* uri, GError** err) c_g_bookmark_file_remove_item;
	void function(GBookmarkFile* bookmark, const(char)* uri, uint added) c_g_bookmark_file_set_added;
	int function(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, const(char)* exec, int count, uint stamp, GError** err) c_g_bookmark_file_set_app_info;
	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* description) c_g_bookmark_file_set_description;
	void function(GBookmarkFile* bookmark, const(char)* uri, char** groups, size_t length) c_g_bookmark_file_set_groups;
	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* href, const(char)* mimeType) c_g_bookmark_file_set_icon;
	void function(GBookmarkFile* bookmark, const(char)* uri, int isPrivate) c_g_bookmark_file_set_is_private;
	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* mimeType) c_g_bookmark_file_set_mime_type;
	void function(GBookmarkFile* bookmark, const(char)* uri, uint modified) c_g_bookmark_file_set_modified;
	void function(GBookmarkFile* bookmark, const(char)* uri, const(char)* title) c_g_bookmark_file_set_title;
	void function(GBookmarkFile* bookmark, const(char)* uri, uint visited) c_g_bookmark_file_set_visited;
	char* function(GBookmarkFile* bookmark, size_t* length, GError** err) c_g_bookmark_file_to_data;
	int function(GBookmarkFile* bookmark, const(char)* filename, GError** err) c_g_bookmark_file_to_file;
	GQuark function() c_g_bookmark_file_error_quark;
	GBookmarkFile* function() c_g_bookmark_file_new;

	// glib.ByteArray

	GByteArray* function(GByteArray* array, ubyte* data, uint len) c_g_byte_array_append;
	ubyte* function(GByteArray* array, int freeSegment) c_g_byte_array_free;
	GBytes* function(GByteArray* array) c_g_byte_array_free_to_bytes;
	GByteArray* function() c_g_byte_array_new;
	GByteArray* function(ubyte* data, size_t len) c_g_byte_array_new_take;
	GByteArray* function(GByteArray* array, ubyte* data, uint len) c_g_byte_array_prepend;
	GByteArray* function(GByteArray* array) c_g_byte_array_ref;
	GByteArray* function(GByteArray* array, uint index) c_g_byte_array_remove_index;
	GByteArray* function(GByteArray* array, uint index) c_g_byte_array_remove_index_fast;
	GByteArray* function(GByteArray* array, uint index, uint length) c_g_byte_array_remove_range;
	GByteArray* function(GByteArray* array, uint length) c_g_byte_array_set_size;
	GByteArray* function(uint reservedSize) c_g_byte_array_sized_new;
	void function(GByteArray* array, GCompareFunc compareFunc) c_g_byte_array_sort;
	void function(GByteArray* array, GCompareDataFunc compareFunc, void* userData) c_g_byte_array_sort_with_data;
	void function(GByteArray* array) c_g_byte_array_unref;

	// glib.Bytes

	GBytes* function(void* data, size_t size) c_g_bytes_new;
	GBytes* function(void* data, size_t size) c_g_bytes_new_static;
	GBytes* function(void* data, size_t size) c_g_bytes_new_take;
	GBytes* function(void* data, size_t size, GDestroyNotify freeFunc, void* userData) c_g_bytes_new_with_free_func;
	int function(void* bytes1, void* bytes2) c_g_bytes_compare;
	int function(void* bytes1, void* bytes2) c_g_bytes_equal;
	void* function(GBytes* bytes, size_t* size) c_g_bytes_get_data;
	size_t function(GBytes* bytes) c_g_bytes_get_size;
	uint function(void* bytes) c_g_bytes_hash;
	GBytes* function(GBytes* bytes, size_t offset, size_t length) c_g_bytes_new_from_bytes;
	GBytes* function(GBytes* bytes) c_g_bytes_ref;
	void function(GBytes* bytes) c_g_bytes_unref;
	GByteArray* function(GBytes* bytes) c_g_bytes_unref_to_array;
	void* function(GBytes* bytes, size_t* size) c_g_bytes_unref_to_data;

	// glib.Checksum

	GChecksum* function(GChecksumType checksumType) c_g_checksum_new;
	GChecksum* function(GChecksum* checksum) c_g_checksum_copy;
	void function(GChecksum* checksum) c_g_checksum_free;
	void function(GChecksum* checksum, ubyte* buffer, size_t* digestLen) c_g_checksum_get_digest;
	const(char)* function(GChecksum* checksum) c_g_checksum_get_string;
	void function(GChecksum* checksum) c_g_checksum_reset;
	void function(GChecksum* checksum, char* data, ptrdiff_t length) c_g_checksum_update;
	ptrdiff_t function(GChecksumType checksumType) c_g_checksum_type_get_length;
	char* function(GChecksumType checksumType, GBytes* data) c_g_compute_checksum_for_bytes;
	char* function(GChecksumType checksumType, char* data, size_t length) c_g_compute_checksum_for_data;
	char* function(GChecksumType checksumType, const(char)* str, ptrdiff_t length) c_g_compute_checksum_for_string;

	// glib.Cond

	void function(GCond* cond) c_g_cond_broadcast;
	void function(GCond* cond) c_g_cond_clear;
	void function(GCond* cond) c_g_cond_init;
	void function(GCond* cond) c_g_cond_signal;
	void function(GCond* cond, GMutex* mutex) c_g_cond_wait;
	int function(GCond* cond, GMutex* mutex, long endTime) c_g_cond_wait_until;

	// glib.Date

	GDate* function() c_g_date_new;
	GDate* function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_new_dmy;
	GDate* function(uint julianDay) c_g_date_new_julian;
	void function(GDate* date, uint nDays) c_g_date_add_days;
	void function(GDate* date, uint nMonths) c_g_date_add_months;
	void function(GDate* date, uint nYears) c_g_date_add_years;
	void function(GDate* date, GDate* minDate, GDate* maxDate) c_g_date_clamp;
	void function(GDate* date, uint nDates) c_g_date_clear;
	int function(GDate* lhs, GDate* rhs) c_g_date_compare;
	int function(GDate* date1, GDate* date2) c_g_date_days_between;
	void function(GDate* date) c_g_date_free;
	GDateDay function(GDate* date) c_g_date_get_day;
	uint function(GDate* date) c_g_date_get_day_of_year;
	uint function(GDate* date) c_g_date_get_iso8601_week_of_year;
	uint function(GDate* date) c_g_date_get_julian;
	uint function(GDate* date) c_g_date_get_monday_week_of_year;
	GDateMonth function(GDate* date) c_g_date_get_month;
	uint function(GDate* date) c_g_date_get_sunday_week_of_year;
	GDateWeekday function(GDate* date) c_g_date_get_weekday;
	GDateYear function(GDate* date) c_g_date_get_year;
	int function(GDate* date) c_g_date_is_first_of_month;
	int function(GDate* date) c_g_date_is_last_of_month;
	void function(GDate* date1, GDate* date2) c_g_date_order;
	void function(GDate* date, GDateDay day) c_g_date_set_day;
	void function(GDate* date, GDateDay day, GDateMonth month, GDateYear y) c_g_date_set_dmy;
	void function(GDate* date, uint julianDate) c_g_date_set_julian;
	void function(GDate* date, GDateMonth month) c_g_date_set_month;
	void function(GDate* date, const(char)* str) c_g_date_set_parse;
	void function(GDate* date, GTime time) c_g_date_set_time;
	void function(GDate* date, uint timet) c_g_date_set_time_t;
	void function(GDate* date, GTimeVal* timeval) c_g_date_set_time_val;
	void function(GDate* date, GDateYear year) c_g_date_set_year;
	void function(GDate* date, uint nDays) c_g_date_subtract_days;
	void function(GDate* date, uint nMonths) c_g_date_subtract_months;
	void function(GDate* date, uint nYears) c_g_date_subtract_years;
	void function(GDate* date, void* tm) c_g_date_to_struct_tm;
	int function(GDate* date) c_g_date_valid;
	ubyte function(GDateMonth month, GDateYear year) c_g_date_get_days_in_month;
	ubyte function(GDateYear year) c_g_date_get_monday_weeks_in_year;
	ubyte function(GDateYear year) c_g_date_get_sunday_weeks_in_year;
	int function(GDateYear year) c_g_date_is_leap_year;
	size_t function(char* s, size_t slen, const(char)* format, GDate* date) c_g_date_strftime;
	int function(GDateDay day) c_g_date_valid_day;
	int function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_valid_dmy;
	int function(uint julianDate) c_g_date_valid_julian;
	int function(GDateMonth month) c_g_date_valid_month;
	int function(GDateWeekday weekday) c_g_date_valid_weekday;
	int function(GDateYear year) c_g_date_valid_year;

	// glib.DateTime

	GDateTime* function(GTimeZone* tz, int year, int month, int day, int hour, int minute, double seconds) c_g_date_time_new;
	GDateTime* function(GTimeVal* tv) c_g_date_time_new_from_timeval_local;
	GDateTime* function(GTimeVal* tv) c_g_date_time_new_from_timeval_utc;
	GDateTime* function(long t) c_g_date_time_new_from_unix_local;
	GDateTime* function(long t) c_g_date_time_new_from_unix_utc;
	GDateTime* function(int year, int month, int day, int hour, int minute, double seconds) c_g_date_time_new_local;
	GDateTime* function(GTimeZone* tz) c_g_date_time_new_now;
	GDateTime* function() c_g_date_time_new_now_local;
	GDateTime* function() c_g_date_time_new_now_utc;
	GDateTime* function(int year, int month, int day, int hour, int minute, double seconds) c_g_date_time_new_utc;
	GDateTime* function(GDateTime* datetime, GTimeSpan timespan) c_g_date_time_add;
	GDateTime* function(GDateTime* datetime, int days) c_g_date_time_add_days;
	GDateTime* function(GDateTime* datetime, int years, int months, int days, int hours, int minutes, double seconds) c_g_date_time_add_full;
	GDateTime* function(GDateTime* datetime, int hours) c_g_date_time_add_hours;
	GDateTime* function(GDateTime* datetime, int minutes) c_g_date_time_add_minutes;
	GDateTime* function(GDateTime* datetime, int months) c_g_date_time_add_months;
	GDateTime* function(GDateTime* datetime, double seconds) c_g_date_time_add_seconds;
	GDateTime* function(GDateTime* datetime, int weeks) c_g_date_time_add_weeks;
	GDateTime* function(GDateTime* datetime, int years) c_g_date_time_add_years;
	GTimeSpan function(GDateTime* end, GDateTime* begin) c_g_date_time_difference;
	char* function(GDateTime* datetime, const(char)* format) c_g_date_time_format;
	int function(GDateTime* datetime) c_g_date_time_get_day_of_month;
	int function(GDateTime* datetime) c_g_date_time_get_day_of_week;
	int function(GDateTime* datetime) c_g_date_time_get_day_of_year;
	int function(GDateTime* datetime) c_g_date_time_get_hour;
	int function(GDateTime* datetime) c_g_date_time_get_microsecond;
	int function(GDateTime* datetime) c_g_date_time_get_minute;
	int function(GDateTime* datetime) c_g_date_time_get_month;
	int function(GDateTime* datetime) c_g_date_time_get_second;
	double function(GDateTime* datetime) c_g_date_time_get_seconds;
	const(char)* function(GDateTime* datetime) c_g_date_time_get_timezone_abbreviation;
	GTimeSpan function(GDateTime* datetime) c_g_date_time_get_utc_offset;
	int function(GDateTime* datetime) c_g_date_time_get_week_numbering_year;
	int function(GDateTime* datetime) c_g_date_time_get_week_of_year;
	int function(GDateTime* datetime) c_g_date_time_get_year;
	void function(GDateTime* datetime, int* year, int* month, int* day) c_g_date_time_get_ymd;
	int function(GDateTime* datetime) c_g_date_time_is_daylight_savings;
	GDateTime* function(GDateTime* datetime) c_g_date_time_ref;
	GDateTime* function(GDateTime* datetime) c_g_date_time_to_local;
	int function(GDateTime* datetime, GTimeVal* tv) c_g_date_time_to_timeval;
	GDateTime* function(GDateTime* datetime, GTimeZone* tz) c_g_date_time_to_timezone;
	long function(GDateTime* datetime) c_g_date_time_to_unix;
	GDateTime* function(GDateTime* datetime) c_g_date_time_to_utc;
	void function(GDateTime* datetime) c_g_date_time_unref;
	int function(void* dt1, void* dt2) c_g_date_time_compare;
	int function(void* dt1, void* dt2) c_g_date_time_equal;
	uint function(void* datetime) c_g_date_time_hash;

	// glib.Directory

	void function(GDir* dir) c_g_dir_close;
	const(char)* function(GDir* dir) c_g_dir_read_name;
	void function(GDir* dir) c_g_dir_rewind;
	char* function(char* tmpl, GError** err) c_g_dir_make_tmp;
	GDir* function(const(char)* path, uint flags, GError** err) c_g_dir_open;

	// glib.ErrorG

	GError* function(GQuark domain, int code, const(char)* format, ... ) c_g_error_new;
	GError* function(GQuark domain, int code, const(char)* message) c_g_error_new_literal;
	GError* function(GQuark domain, int code, const(char)* format, void* args) c_g_error_new_valist;
	GError* function(GError* error) c_g_error_copy;
	void function(GError* error) c_g_error_free;
	int function(GError* error, GQuark domain, int code) c_g_error_matches;
	void function(GError** dest, GError* src) c_g_propagate_error;
	void function(GError** err, GQuark domain, int code, const(char)* message) c_g_set_error_literal;
	void function(GError** err, const(char)* format, ... ) c_g_prefix_error;
	void function(GError** dest, GError* src, const(char)* format, ... ) c_g_propagate_prefixed_error;
	void function(GError** err, GQuark domain, int code, const(char)* format, ... ) c_g_set_error;

	// glib.HashTable

	int function(GHashTable* hashTable, void* key) c_g_hash_table_add;
	int function(GHashTable* hashTable, void* key) c_g_hash_table_contains;
	void function(GHashTable* hashTable) c_g_hash_table_destroy;
	void* function(GHashTable* hashTable, GHRFunc predicate, void* userData) c_g_hash_table_find;
	void function(GHashTable* hashTable, GHFunc func, void* userData) c_g_hash_table_foreach;
	uint function(GHashTable* hashTable, GHRFunc func, void* userData) c_g_hash_table_foreach_remove;
	uint function(GHashTable* hashTable, GHRFunc func, void* userData) c_g_hash_table_foreach_steal;
	GList* function(GHashTable* hashTable) c_g_hash_table_get_keys;
	void** function(GHashTable* hashTable, uint* length) c_g_hash_table_get_keys_as_array;
	GList* function(GHashTable* hashTable) c_g_hash_table_get_values;
	int function(GHashTable* hashTable, void* key, void* value) c_g_hash_table_insert;
	void* function(GHashTable* hashTable, void* key) c_g_hash_table_lookup;
	int function(GHashTable* hashTable, void* lookupKey, void** origKey, void** value) c_g_hash_table_lookup_extended;
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc) c_g_hash_table_new;
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_hash_table_new_full;
	GHashTable* function(GHashTable* hashTable) c_g_hash_table_ref;
	int function(GHashTable* hashTable, void* key) c_g_hash_table_remove;
	void function(GHashTable* hashTable) c_g_hash_table_remove_all;
	int function(GHashTable* hashTable, void* key, void* value) c_g_hash_table_replace;
	uint function(GHashTable* hashTable) c_g_hash_table_size;
	int function(GHashTable* hashTable, void* key) c_g_hash_table_steal;
	void function(GHashTable* hashTable) c_g_hash_table_steal_all;
	void function(GHashTable* hashTable) c_g_hash_table_unref;
	int function(void* v1, void* v2) c_g_direct_equal;
	uint function(void* v) c_g_direct_hash;
	int function(void* v1, void* v2) c_g_double_equal;
	uint function(void* v) c_g_double_hash;
	int function(void* v1, void* v2) c_g_int64_equal;
	uint function(void* v) c_g_int64_hash;
	int function(void* v1, void* v2) c_g_int_equal;
	uint function(void* v) c_g_int_hash;
	int function(void* v1, void* v2) c_g_str_equal;
	uint function(void* v) c_g_str_hash;

	// glib.HashTableIter

	GHashTable* function(GHashTableIter* iter) c_g_hash_table_iter_get_hash_table;
	void function(GHashTableIter* iter, GHashTable* hashTable) c_g_hash_table_iter_init;
	int function(GHashTableIter* iter, void** key, void** value) c_g_hash_table_iter_next;
	void function(GHashTableIter* iter) c_g_hash_table_iter_remove;
	void function(GHashTableIter* iter, void* value) c_g_hash_table_iter_replace;
	void function(GHashTableIter* iter) c_g_hash_table_iter_steal;

	// glib.Hmac

	GHmac* function(GHmac* hmac) c_g_hmac_copy;
	void function(GHmac* hmac, ubyte* buffer, size_t* digestLen) c_g_hmac_get_digest;
	const(char)* function(GHmac* hmac) c_g_hmac_get_string;
	GHmac* function(GHmac* hmac) c_g_hmac_ref;
	void function(GHmac* hmac) c_g_hmac_unref;
	void function(GHmac* hmac, char* data, ptrdiff_t length) c_g_hmac_update;
	GHmac* function(GChecksumType digestType, char* key, size_t keyLen) c_g_hmac_new;
	char* function(GChecksumType digestType, char* key, size_t keyLen, char* data, size_t length) c_g_compute_hmac_for_data;
	char* function(GChecksumType digestType, char* key, size_t keyLen, const(char)* str, ptrdiff_t length) c_g_compute_hmac_for_string;

	// glib.Hook

	int function(GHook* newHook, GHook* sibling) c_g_hook_compare_ids;
	GHook* function(GHookList* hookList) c_g_hook_alloc;
	int function(GHookList* hookList, gulong hookId) c_g_hook_destroy;
	void function(GHookList* hookList, GHook* hook) c_g_hook_destroy_link;
	GHook* function(GHookList* hookList, int needValids, GHookFindFunc func, void* data) c_g_hook_find;
	GHook* function(GHookList* hookList, int needValids, void* data) c_g_hook_find_data;
	GHook* function(GHookList* hookList, int needValids, void* func) c_g_hook_find_func;
	GHook* function(GHookList* hookList, int needValids, void* func, void* data) c_g_hook_find_func_data;
	GHook* function(GHookList* hookList, int mayBeInCall) c_g_hook_first_valid;
	void function(GHookList* hookList, GHook* hook) c_g_hook_free;
	GHook* function(GHookList* hookList, gulong hookId) c_g_hook_get;
	void function(GHookList* hookList, GHook* sibling, GHook* hook) c_g_hook_insert_before;
	void function(GHookList* hookList, GHook* hook, GHookCompareFunc func) c_g_hook_insert_sorted;
	GHook* function(GHookList* hookList, GHook* hook, int mayBeInCall) c_g_hook_next_valid;
	void function(GHookList* hookList, GHook* hook) c_g_hook_prepend;
	GHook* function(GHookList* hookList, GHook* hook) c_g_hook_ref;
	void function(GHookList* hookList, GHook* hook) c_g_hook_unref;

	// glib.HookList

	void function(GHookList* hookList) c_g_hook_list_clear;
	void function(GHookList* hookList, uint hookSize) c_g_hook_list_init;
	void function(GHookList* hookList, int mayRecurse) c_g_hook_list_invoke;
	void function(GHookList* hookList, int mayRecurse) c_g_hook_list_invoke_check;
	void function(GHookList* hookList, int mayRecurse, GHookMarshaller marshaller, void* marshalData) c_g_hook_list_marshal;
	void function(GHookList* hookList, int mayRecurse, GHookCheckMarshaller marshaller, void* marshalData) c_g_hook_list_marshal_check;

	// glib.IConv

	size_t function(GIConv converter, char** inbuf, size_t* inbytesLeft, char** outbuf, size_t* outbytesLeft) c_g_iconv;
	int function(GIConv converter) c_g_iconv_close;
	GIConv function(const(char)* toCodeset, const(char)* fromCodeset) c_g_iconv_open;

	// glib.IOChannel

	GIOChannel* function(const(char)* filename, const(char)* mode, GError** err) c_g_io_channel_new_file;
	GIOChannel* function(int fd) c_g_io_channel_unix_new;
	void function(GIOChannel* channel) c_g_io_channel_close;
	GIOStatus function(GIOChannel* channel, GError** err) c_g_io_channel_flush;
	GIOCondition function(GIOChannel* channel) c_g_io_channel_get_buffer_condition;
	size_t function(GIOChannel* channel) c_g_io_channel_get_buffer_size;
	int function(GIOChannel* channel) c_g_io_channel_get_buffered;
	int function(GIOChannel* channel) c_g_io_channel_get_close_on_unref;
	const(char)* function(GIOChannel* channel) c_g_io_channel_get_encoding;
	GIOFlags function(GIOChannel* channel) c_g_io_channel_get_flags;
	const(char)* function(GIOChannel* channel, int* length) c_g_io_channel_get_line_term;
	void function(GIOChannel* channel) c_g_io_channel_init;
	GIOError function(GIOChannel* channel, char* buf, size_t count, size_t* bytesRead) c_g_io_channel_read;
	GIOStatus function(GIOChannel* channel, char* buf, size_t count, size_t* bytesRead, GError** err) c_g_io_channel_read_chars;
	GIOStatus function(GIOChannel* channel, char** strReturn, size_t* length, size_t* terminatorPos, GError** err) c_g_io_channel_read_line;
	GIOStatus function(GIOChannel* channel, GString* buffer, size_t* terminatorPos, GError** err) c_g_io_channel_read_line_string;
	GIOStatus function(GIOChannel* channel, char** strReturn, size_t* length, GError** err) c_g_io_channel_read_to_end;
	GIOStatus function(GIOChannel* channel, dchar* thechar, GError** err) c_g_io_channel_read_unichar;
	GIOChannel* function(GIOChannel* channel) c_g_io_channel_ref;
	GIOError function(GIOChannel* channel, long offset, GSeekType type) c_g_io_channel_seek;
	GIOStatus function(GIOChannel* channel, long offset, GSeekType type, GError** err) c_g_io_channel_seek_position;
	void function(GIOChannel* channel, size_t size) c_g_io_channel_set_buffer_size;
	void function(GIOChannel* channel, int buffered) c_g_io_channel_set_buffered;
	void function(GIOChannel* channel, int doClose) c_g_io_channel_set_close_on_unref;
	GIOStatus function(GIOChannel* channel, const(char)* encoding, GError** err) c_g_io_channel_set_encoding;
	GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** err) c_g_io_channel_set_flags;
	void function(GIOChannel* channel, const(char)* lineTerm, int length) c_g_io_channel_set_line_term;
	GIOStatus function(GIOChannel* channel, int flush, GError** err) c_g_io_channel_shutdown;
	int function(GIOChannel* channel) c_g_io_channel_unix_get_fd;
	void function(GIOChannel* channel) c_g_io_channel_unref;
	GIOError function(GIOChannel* channel, const(char)* buf, size_t count, size_t* bytesWritten) c_g_io_channel_write;
	GIOStatus function(GIOChannel* channel, char* buf, ptrdiff_t count, size_t* bytesWritten, GError** err) c_g_io_channel_write_chars;
	GIOStatus function(GIOChannel* channel, dchar thechar, GError** err) c_g_io_channel_write_unichar;
	GIOChannelError function(int en) c_g_io_channel_error_from_errno;
	GQuark function() c_g_io_channel_error_quark;
	uint function(GIOChannel* channel, GIOCondition condition, GIOFunc func, void* userData) c_g_io_add_watch;
	uint function(GIOChannel* channel, int priority, GIOCondition condition, GIOFunc func, void* userData, GDestroyNotify notify) c_g_io_add_watch_full;
	GSource* function(GIOChannel* channel, GIOCondition condition) c_g_io_create_watch;

	// glib.KeyFile

	GKeyFile* function() c_g_key_file_new;
	void function(GKeyFile* keyFile) c_g_key_file_free;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_boolean;
	int* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err) c_g_key_file_get_boolean_list;
	char* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_comment;
	double function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_double;
	double* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err) c_g_key_file_get_double_list;
	char** function(GKeyFile* keyFile, size_t* length) c_g_key_file_get_groups;
	long function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_int64;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_integer;
	int* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err) c_g_key_file_get_integer_list;
	char** function(GKeyFile* keyFile, const(char)* groupName, size_t* length, GError** err) c_g_key_file_get_keys;
	char* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, GError** err) c_g_key_file_get_locale_string;
	char** function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, size_t* length, GError** err) c_g_key_file_get_locale_string_list;
	char* function(GKeyFile* keyFile) c_g_key_file_get_start_group;
	char* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_string;
	char** function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err) c_g_key_file_get_string_list;
	ulong function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_uint64;
	char* function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_get_value;
	int function(GKeyFile* keyFile, const(char)* groupName) c_g_key_file_has_group;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_has_key;
	int function(GKeyFile* keyFile, const(char)* data, size_t length, GKeyFileFlags flags, GError** err) c_g_key_file_load_from_data;
	int function(GKeyFile* keyFile, char* file, char** fullPath, GKeyFileFlags flags, GError** err) c_g_key_file_load_from_data_dirs;
	int function(GKeyFile* keyFile, char* file, char** searchDirs, char** fullPath, GKeyFileFlags flags, GError** err) c_g_key_file_load_from_dirs;
	int function(GKeyFile* keyFile, char* file, GKeyFileFlags flags, GError** err) c_g_key_file_load_from_file;
	GKeyFile* function(GKeyFile* keyFile) c_g_key_file_ref;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_remove_comment;
	int function(GKeyFile* keyFile, const(char)* groupName, GError** err) c_g_key_file_remove_group;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err) c_g_key_file_remove_key;
	int function(GKeyFile* keyFile, const(char)* filename, GError** err) c_g_key_file_save_to_file;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int value) c_g_key_file_set_boolean;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int* list, size_t length) c_g_key_file_set_boolean_list;
	int function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* comment, GError** err) c_g_key_file_set_comment;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, double value) c_g_key_file_set_double;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, double* list, size_t length) c_g_key_file_set_double_list;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, long value) c_g_key_file_set_int64;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int value) c_g_key_file_set_integer;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int* list, size_t length) c_g_key_file_set_integer_list;
	void function(GKeyFile* keyFile, char separator) c_g_key_file_set_list_separator;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, const(char)* str) c_g_key_file_set_locale_string;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, char* list, size_t length) c_g_key_file_set_locale_string_list;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* str) c_g_key_file_set_string;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, char** list, size_t length) c_g_key_file_set_string_list;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, ulong value) c_g_key_file_set_uint64;
	void function(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* value) c_g_key_file_set_value;
	char* function(GKeyFile* keyFile, size_t* length, GError** err) c_g_key_file_to_data;
	void function(GKeyFile* keyFile) c_g_key_file_unref;
	GQuark function() c_g_key_file_error_quark;

	// glib.ListG

	GList* function() c_g_list_alloc;
	GList* function(GList* list, void* data) c_g_list_append;
	GList* function(GList* list1, GList* list2) c_g_list_concat;
	GList* function(GList* list) c_g_list_copy;
	GList* function(GList* list, GCopyFunc func, void* userData) c_g_list_copy_deep;
	GList* function(GList* list, GList* link) c_g_list_delete_link;
	GList* function(GList* list, void* data) c_g_list_find;
	GList* function(GList* list, void* data, GCompareFunc func) c_g_list_find_custom;
	GList* function(GList* list) c_g_list_first;
	void function(GList* list, GFunc func, void* userData) c_g_list_foreach;
	void function(GList* list) c_g_list_free;
	void function(GList* list) c_g_list_free_1;
	void function(GList* list, GDestroyNotify freeFunc) c_g_list_free_full;
	int function(GList* list, void* data) c_g_list_index;
	GList* function(GList* list, void* data, int position) c_g_list_insert;
	GList* function(GList* list, GList* sibling, void* data) c_g_list_insert_before;
	GList* function(GList* list, void* data, GCompareFunc func) c_g_list_insert_sorted;
	GList* function(GList* list, void* data, GCompareDataFunc func, void* userData) c_g_list_insert_sorted_with_data;
	GList* function(GList* list) c_g_list_last;
	uint function(GList* list) c_g_list_length;
	GList* function(GList* list, uint n) c_g_list_nth;
	void* function(GList* list, uint n) c_g_list_nth_data;
	GList* function(GList* list, uint n) c_g_list_nth_prev;
	int function(GList* list, GList* llink) c_g_list_position;
	GList* function(GList* list, void* data) c_g_list_prepend;
	GList* function(GList* list, void* data) c_g_list_remove;
	GList* function(GList* list, void* data) c_g_list_remove_all;
	GList* function(GList* list, GList* llink) c_g_list_remove_link;
	GList* function(GList* list) c_g_list_reverse;
	GList* function(GList* list, GCompareFunc compareFunc) c_g_list_sort;
	GList* function(GList* list, GCompareDataFunc compareFunc, void* userData) c_g_list_sort_with_data;

	// glib.MainContext

	GMainContext* function() c_g_main_context_new;
	int function(GMainContext* context) c_g_main_context_acquire;
	void function(GMainContext* context, GPollFD* fd, int priority) c_g_main_context_add_poll;
	int function(GMainContext* context, int maxPriority, GPollFD* fds, int nFds) c_g_main_context_check;
	void function(GMainContext* context) c_g_main_context_dispatch;
	GSource* function(GMainContext* context, GSourceFuncs* funcs, void* userData) c_g_main_context_find_source_by_funcs_user_data;
	GSource* function(GMainContext* context, uint sourceId) c_g_main_context_find_source_by_id;
	GSource* function(GMainContext* context, void* userData) c_g_main_context_find_source_by_user_data;
	GPollFunc function(GMainContext* context) c_g_main_context_get_poll_func;
	void function(GMainContext* context, GSourceFunc funct, void* data) c_g_main_context_invoke;
	void function(GMainContext* context, int priority, GSourceFunc funct, void* data, GDestroyNotify notify) c_g_main_context_invoke_full;
	int function(GMainContext* context) c_g_main_context_is_owner;
	int function(GMainContext* context, int mayBlock) c_g_main_context_iteration;
	int function(GMainContext* context) c_g_main_context_pending;
	void function(GMainContext* context) c_g_main_context_pop_thread_default;
	int function(GMainContext* context, int* priority) c_g_main_context_prepare;
	void function(GMainContext* context) c_g_main_context_push_thread_default;
	int function(GMainContext* context, int maxPriority, int* timeout, GPollFD* fds, int nFds) c_g_main_context_query;
	GMainContext* function(GMainContext* context) c_g_main_context_ref;
	void function(GMainContext* context) c_g_main_context_release;
	void function(GMainContext* context, GPollFD* fd) c_g_main_context_remove_poll;
	void function(GMainContext* context, GPollFunc func) c_g_main_context_set_poll_func;
	void function(GMainContext* context) c_g_main_context_unref;
	int function(GMainContext* context, GCond* cond, GMutex* mutex) c_g_main_context_wait;
	void function(GMainContext* context) c_g_main_context_wakeup;
	GMainContext* function() c_g_main_context_default;
	GMainContext* function() c_g_main_context_get_thread_default;
	GMainContext* function() c_g_main_context_ref_thread_default;

	// glib.MainLoop

	GMainLoop* function(GMainContext* context, int isRunning) c_g_main_loop_new;
	GMainContext* function(GMainLoop* loop) c_g_main_loop_get_context;
	int function(GMainLoop* loop) c_g_main_loop_is_running;
	void function(GMainLoop* loop) c_g_main_loop_quit;
	GMainLoop* function(GMainLoop* loop) c_g_main_loop_ref;
	void function(GMainLoop* loop) c_g_main_loop_run;
	void function(GMainLoop* loop) c_g_main_loop_unref;
	GSource* function() c_g_main_current_source;
	int function() c_g_main_depth;
	int function(GPollFD* fds, uint nfds, int timeout) c_g_poll;

	// glib.MappedFile

	GMappedFile* function(const(char)* filename, int writable, GError** err) c_g_mapped_file_new;
	GMappedFile* function(int fd, int writable, GError** err) c_g_mapped_file_new_from_fd;
	void function(GMappedFile* file) c_g_mapped_file_free;
	GBytes* function(GMappedFile* file) c_g_mapped_file_get_bytes;
	char* function(GMappedFile* file) c_g_mapped_file_get_contents;
	size_t function(GMappedFile* file) c_g_mapped_file_get_length;
	GMappedFile* function(GMappedFile* file) c_g_mapped_file_ref;
	void function(GMappedFile* file) c_g_mapped_file_unref;

	// glib.SimpleXML

	GMarkupParseContext* function(GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify) c_g_markup_parse_context_new;
	int function(GMarkupParseContext* context, GError** err) c_g_markup_parse_context_end_parse;
	void function(GMarkupParseContext* context) c_g_markup_parse_context_free;
	const(char)* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element;
	GSList* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element_stack;
	void function(GMarkupParseContext* context, int* lineNumber, int* charNumber) c_g_markup_parse_context_get_position;
	void* function(GMarkupParseContext* context) c_g_markup_parse_context_get_user_data;
	int function(GMarkupParseContext* context, const(char)* text, ptrdiff_t textLen, GError** err) c_g_markup_parse_context_parse;
	void* function(GMarkupParseContext* context) c_g_markup_parse_context_pop;
	void function(GMarkupParseContext* context, GMarkupParser* parser, void* userData) c_g_markup_parse_context_push;
	GMarkupParseContext* function(GMarkupParseContext* context) c_g_markup_parse_context_ref;
	void function(GMarkupParseContext* context) c_g_markup_parse_context_unref;
	int function(const(char)* elementName, char** attributeNames, char** attributeValues, GError** error, GMarkupCollectType firstType, const(char)* firstAttr, ... ) c_g_markup_collect_attributes;
	GQuark function() c_g_markup_error_quark;
	char* function(const(char)* text, ptrdiff_t length) c_g_markup_escape_text;
	char* function(const(char)* format, ... ) c_g_markup_printf_escaped;
	char* function(const(char)* format, void* args) c_g_markup_vprintf_escaped;

	// glib.MatchInfo

	char* function(GMatchInfo* matchInfo, const(char)* stringToExpand, GError** err) c_g_match_info_expand_references;
	char* function(GMatchInfo* matchInfo, int matchNum) c_g_match_info_fetch;
	char** function(GMatchInfo* matchInfo) c_g_match_info_fetch_all;
	char* function(GMatchInfo* matchInfo, const(char)* name) c_g_match_info_fetch_named;
	int function(GMatchInfo* matchInfo, const(char)* name, int* startPos, int* endPos) c_g_match_info_fetch_named_pos;
	int function(GMatchInfo* matchInfo, int matchNum, int* startPos, int* endPos) c_g_match_info_fetch_pos;
	void function(GMatchInfo* matchInfo) c_g_match_info_free;
	int function(GMatchInfo* matchInfo) c_g_match_info_get_match_count;
	GRegex* function(GMatchInfo* matchInfo) c_g_match_info_get_regex;
	const(char)* function(GMatchInfo* matchInfo) c_g_match_info_get_string;
	int function(GMatchInfo* matchInfo) c_g_match_info_is_partial_match;
	int function(GMatchInfo* matchInfo) c_g_match_info_matches;
	int function(GMatchInfo* matchInfo, GError** err) c_g_match_info_next;
	GMatchInfo* function(GMatchInfo* matchInfo) c_g_match_info_ref;
	void function(GMatchInfo* matchInfo) c_g_match_info_unref;

	// glib.Mutex

	void function(GMutex* mutex) c_g_mutex_clear;
	void function(GMutex* mutex) c_g_mutex_init;
	void function(GMutex* mutex) c_g_mutex_lock;
	int function(GMutex* mutex) c_g_mutex_trylock;
	void function(GMutex* mutex) c_g_mutex_unlock;

	// glib.Node

	int function(GNode* node, void* data) c_g_node_child_index;
	int function(GNode* node, GNode* child) c_g_node_child_position;
	void function(GNode* node, GTraverseFlags flags, GNodeForeachFunc func, void* data) c_g_node_children_foreach;
	GNode* function(GNode* node) c_g_node_copy;
	GNode* function(GNode* node, GCopyFunc copyFunc, void* data) c_g_node_copy_deep;
	uint function(GNode* node) c_g_node_depth;
	void function(GNode* root) c_g_node_destroy;
	GNode* function(GNode* root, GTraverseType order, GTraverseFlags flags, void* data) c_g_node_find;
	GNode* function(GNode* node, GTraverseFlags flags, void* data) c_g_node_find_child;
	GNode* function(GNode* node) c_g_node_first_sibling;
	GNode* function(GNode* node) c_g_node_get_root;
	GNode* function(GNode* parent, int position, GNode* node) c_g_node_insert;
	GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_after;
	GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_before;
	int function(GNode* node, GNode* descendant) c_g_node_is_ancestor;
	GNode* function(GNode* node) c_g_node_last_child;
	GNode* function(GNode* node) c_g_node_last_sibling;
	uint function(GNode* root) c_g_node_max_height;
	uint function(GNode* node) c_g_node_n_children;
	uint function(GNode* root, GTraverseFlags flags) c_g_node_n_nodes;
	GNode* function(GNode* node, uint n) c_g_node_nth_child;
	GNode* function(GNode* parent, GNode* node) c_g_node_prepend;
	void function(GNode* node) c_g_node_reverse_children;
	void function(GNode* root, GTraverseType order, GTraverseFlags flags, int maxDepth, GNodeTraverseFunc func, void* data) c_g_node_traverse;
	void function(GNode* node) c_g_node_unlink;
	GNode* function(void* data) c_g_node_new;

	// glib.Once

	void* function(GOnce* once, GThreadFunc func, void* arg) c_g_once_impl;
	int function(void* location) c_g_once_init_enter;
	void function(void* location, size_t result) c_g_once_init_leave;

	// glib.OptionContext

	void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_add_group;
	void function(GOptionContext* context, GOptionEntry* entries, const(char)* translationDomain) c_g_option_context_add_main_entries;
	void function(GOptionContext* context) c_g_option_context_free;
	const(char)* function(GOptionContext* context) c_g_option_context_get_description;
	char* function(GOptionContext* context, int mainHelp, GOptionGroup* group) c_g_option_context_get_help;
	int function(GOptionContext* context) c_g_option_context_get_help_enabled;
	int function(GOptionContext* context) c_g_option_context_get_ignore_unknown_options;
	GOptionGroup* function(GOptionContext* context) c_g_option_context_get_main_group;
	int function(GOptionContext* context) c_g_option_context_get_strict_posix;
	const(char)* function(GOptionContext* context) c_g_option_context_get_summary;
	int function(GOptionContext* context, int* argc, char*** argv, GError** err) c_g_option_context_parse;
	int function(GOptionContext* context, char*** arguments, GError** err) c_g_option_context_parse_strv;
	void function(GOptionContext* context, const(char)* description) c_g_option_context_set_description;
	void function(GOptionContext* context, int helpEnabled) c_g_option_context_set_help_enabled;
	void function(GOptionContext* context, int ignoreUnknown) c_g_option_context_set_ignore_unknown_options;
	void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_set_main_group;
	void function(GOptionContext* context, int strictPosix) c_g_option_context_set_strict_posix;
	void function(GOptionContext* context, const(char)* summary) c_g_option_context_set_summary;
	void function(GOptionContext* context, GTranslateFunc func, void* data, GDestroyNotify destroyNotify) c_g_option_context_set_translate_func;
	void function(GOptionContext* context, const(char)* domain) c_g_option_context_set_translation_domain;
	GOptionContext* function(const(char)* parameterString) c_g_option_context_new;
	GQuark function() c_g_option_error_quark;

	// glib.OptionGroup

	GOptionGroup* function(const(char)* name, const(char)* description, const(char)* helpDescription, void* userData, GDestroyNotify destroy) c_g_option_group_new;
	void function(GOptionGroup* group, GOptionEntry* entries) c_g_option_group_add_entries;
	void function(GOptionGroup* group) c_g_option_group_free;
	GOptionGroup* function(GOptionGroup* group) c_g_option_group_ref;
	void function(GOptionGroup* group, GOptionErrorFunc errorFunc) c_g_option_group_set_error_hook;
	void function(GOptionGroup* group, GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc) c_g_option_group_set_parse_hooks;
	void function(GOptionGroup* group, GTranslateFunc func, void* data, GDestroyNotify destroyNotify) c_g_option_group_set_translate_func;
	void function(GOptionGroup* group, const(char)* domain) c_g_option_group_set_translation_domain;
	void function(GOptionGroup* group) c_g_option_group_unref;

	// glib.Pattern

	int function(GPatternSpec* pspec1, GPatternSpec* pspec2) c_g_pattern_spec_equal;
	void function(GPatternSpec* pspec) c_g_pattern_spec_free;
	GPatternSpec* function(const(char)* pattern) c_g_pattern_spec_new;
	int function(GPatternSpec* pspec, uint stringLength, const(char)* str, const(char)* stringReversed) c_g_pattern_match;
	int function(const(char)* pattern, const(char)* str) c_g_pattern_match_simple;
	int function(GPatternSpec* pspec, const(char)* str) c_g_pattern_match_string;

	// glib.Private

	void* function(GPrivate* key) c_g_private_get;
	void function(GPrivate* key, void* value) c_g_private_replace;
	void function(GPrivate* key, void* value) c_g_private_set;

	// glib.PtrArray

	void function(GPtrArray* array, void* data) c_g_ptr_array_add;
	void function(GPtrArray* array, GFunc func, void* userData) c_g_ptr_array_foreach;
	void** function(GPtrArray* array, int freeSeg) c_g_ptr_array_free;
	void function(GPtrArray* array, int index, void* data) c_g_ptr_array_insert;
	GPtrArray* function() c_g_ptr_array_new;
	GPtrArray* function(uint reservedSize, GDestroyNotify elementFreeFunc) c_g_ptr_array_new_full;
	GPtrArray* function(GDestroyNotify elementFreeFunc) c_g_ptr_array_new_with_free_func;
	GPtrArray* function(GPtrArray* array) c_g_ptr_array_ref;
	int function(GPtrArray* array, void* data) c_g_ptr_array_remove;
	int function(GPtrArray* array, void* data) c_g_ptr_array_remove_fast;
	void* function(GPtrArray* array, uint index) c_g_ptr_array_remove_index;
	void* function(GPtrArray* array, uint index) c_g_ptr_array_remove_index_fast;
	GPtrArray* function(GPtrArray* array, uint index, uint length) c_g_ptr_array_remove_range;
	void function(GPtrArray* array, GDestroyNotify elementFreeFunc) c_g_ptr_array_set_free_func;
	void function(GPtrArray* array, int length) c_g_ptr_array_set_size;
	GPtrArray* function(uint reservedSize) c_g_ptr_array_sized_new;
	void function(GPtrArray* array, GCompareFunc compareFunc) c_g_ptr_array_sort;
	void function(GPtrArray* array, GCompareDataFunc compareFunc, void* userData) c_g_ptr_array_sort_with_data;
	void function(GPtrArray* array) c_g_ptr_array_unref;

	// glib.QueueG

	void function(GQueue* queue) c_g_queue_clear;
	GQueue* function(GQueue* queue) c_g_queue_copy;
	void function(GQueue* queue, GList* link) c_g_queue_delete_link;
	GList* function(GQueue* queue, void* data) c_g_queue_find;
	GList* function(GQueue* queue, void* data, GCompareFunc func) c_g_queue_find_custom;
	void function(GQueue* queue, GFunc func, void* userData) c_g_queue_foreach;
	void function(GQueue* queue) c_g_queue_free;
	void function(GQueue* queue, GDestroyNotify freeFunc) c_g_queue_free_full;
	uint function(GQueue* queue) c_g_queue_get_length;
	int function(GQueue* queue, void* data) c_g_queue_index;
	void function(GQueue* queue) c_g_queue_init;
	void function(GQueue* queue, GList* sibling, void* data) c_g_queue_insert_after;
	void function(GQueue* queue, GList* sibling, void* data) c_g_queue_insert_before;
	void function(GQueue* queue, void* data, GCompareDataFunc func, void* userData) c_g_queue_insert_sorted;
	int function(GQueue* queue) c_g_queue_is_empty;
	int function(GQueue* queue, GList* link) c_g_queue_link_index;
	void* function(GQueue* queue) c_g_queue_peek_head;
	GList* function(GQueue* queue) c_g_queue_peek_head_link;
	void* function(GQueue* queue, uint n) c_g_queue_peek_nth;
	GList* function(GQueue* queue, uint n) c_g_queue_peek_nth_link;
	void* function(GQueue* queue) c_g_queue_peek_tail;
	GList* function(GQueue* queue) c_g_queue_peek_tail_link;
	void* function(GQueue* queue) c_g_queue_pop_head;
	GList* function(GQueue* queue) c_g_queue_pop_head_link;
	void* function(GQueue* queue, uint n) c_g_queue_pop_nth;
	GList* function(GQueue* queue, uint n) c_g_queue_pop_nth_link;
	void* function(GQueue* queue) c_g_queue_pop_tail;
	GList* function(GQueue* queue) c_g_queue_pop_tail_link;
	void function(GQueue* queue, void* data) c_g_queue_push_head;
	void function(GQueue* queue, GList* link) c_g_queue_push_head_link;
	void function(GQueue* queue, void* data, int n) c_g_queue_push_nth;
	void function(GQueue* queue, int n, GList* link) c_g_queue_push_nth_link;
	void function(GQueue* queue, void* data) c_g_queue_push_tail;
	void function(GQueue* queue, GList* link) c_g_queue_push_tail_link;
	int function(GQueue* queue, void* data) c_g_queue_remove;
	uint function(GQueue* queue, void* data) c_g_queue_remove_all;
	void function(GQueue* queue) c_g_queue_reverse;
	void function(GQueue* queue, GCompareDataFunc compareFunc, void* userData) c_g_queue_sort;
	void function(GQueue* queue, GList* link) c_g_queue_unlink;
	GQueue* function() c_g_queue_new;

	// glib.RWLock

	void function(GRWLock* rwLock) c_g_rw_lock_clear;
	void function(GRWLock* rwLock) c_g_rw_lock_init;
	void function(GRWLock* rwLock) c_g_rw_lock_reader_lock;
	int function(GRWLock* rwLock) c_g_rw_lock_reader_trylock;
	void function(GRWLock* rwLock) c_g_rw_lock_reader_unlock;
	void function(GRWLock* rwLock) c_g_rw_lock_writer_lock;
	int function(GRWLock* rwLock) c_g_rw_lock_writer_trylock;
	void function(GRWLock* rwLock) c_g_rw_lock_writer_unlock;

	// glib.RandG

	GRand* function(GRand* rand) c_g_rand_copy;
	double function(GRand* rand) c_g_rand_double;
	double function(GRand* rand, double begin, double end) c_g_rand_double_range;
	void function(GRand* rand) c_g_rand_free;
	uint function(GRand* rand) c_g_rand_int;
	int function(GRand* rand, int begin, int end) c_g_rand_int_range;
	void function(GRand* rand, uint seed) c_g_rand_set_seed;
	void function(GRand* rand, uint* seed, uint seedLength) c_g_rand_set_seed_array;
	GRand* function() c_g_rand_new;
	GRand* function(uint seed) c_g_rand_new_with_seed;
	GRand* function(uint* seed, uint seedLength) c_g_rand_new_with_seed_array;
	double function() c_g_random_double;
	double function(double begin, double end) c_g_random_double_range;
	uint function() c_g_random_int;
	int function(int begin, int end) c_g_random_int_range;
	void function(uint seed) c_g_random_set_seed;

	// glib.RecMutex

	void function(GRecMutex* recMutex) c_g_rec_mutex_clear;
	void function(GRecMutex* recMutex) c_g_rec_mutex_init;
	void function(GRecMutex* recMutex) c_g_rec_mutex_lock;
	int function(GRecMutex* recMutex) c_g_rec_mutex_trylock;
	void function(GRecMutex* recMutex) c_g_rec_mutex_unlock;

	// glib.Regex

	GRegex* function(const(char)* pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions, GError** err) c_g_regex_new;
	int function(GRegex* regex) c_g_regex_get_capture_count;
	GRegexCompileFlags function(GRegex* regex) c_g_regex_get_compile_flags;
	int function(GRegex* regex) c_g_regex_get_has_cr_or_lf;
	GRegexMatchFlags function(GRegex* regex) c_g_regex_get_match_flags;
	int function(GRegex* regex) c_g_regex_get_max_backref;
	int function(GRegex* regex) c_g_regex_get_max_lookbehind;
	const(char)* function(GRegex* regex) c_g_regex_get_pattern;
	int function(GRegex* regex, const(char)* name) c_g_regex_get_string_number;
	int function(GRegex* regex, const(char)* str, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match;
	int function(GRegex* regex, const(char)* str, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match_all;
	int function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** err) c_g_regex_match_all_full;
	int function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** err) c_g_regex_match_full;
	GRegex* function(GRegex* regex) c_g_regex_ref;
	char* function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, const(char)* replacement, GRegexMatchFlags matchOptions, GError** err) c_g_regex_replace;
	char* function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, void* userData, GError** err) c_g_regex_replace_eval;
	char* function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, const(char)* replacement, GRegexMatchFlags matchOptions, GError** err) c_g_regex_replace_literal;
	char** function(GRegex* regex, const(char)* str, GRegexMatchFlags matchOptions) c_g_regex_split;
	char** function(GRegex* regex, char* str, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, int maxTokens, GError** err) c_g_regex_split_full;
	void function(GRegex* regex) c_g_regex_unref;
	int function(const(char)* replacement, int* hasReferences, GError** err) c_g_regex_check_replacement;
	GQuark function() c_g_regex_error_quark;
	char* function(const(char)* str, int length) c_g_regex_escape_nul;
	char* function(char* str, int length) c_g_regex_escape_string;
	int function(const(char)* pattern, const(char)* str, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_match_simple;
	char** function(const(char)* pattern, const(char)* str, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_split_simple;

	// glib.ListSG

	GSList* function() c_g_slist_alloc;
	GSList* function(GSList* list, void* data) c_g_slist_append;
	GSList* function(GSList* list1, GSList* list2) c_g_slist_concat;
	GSList* function(GSList* list) c_g_slist_copy;
	GSList* function(GSList* list, GCopyFunc func, void* userData) c_g_slist_copy_deep;
	GSList* function(GSList* list, GSList* link) c_g_slist_delete_link;
	GSList* function(GSList* list, void* data) c_g_slist_find;
	GSList* function(GSList* list, void* data, GCompareFunc func) c_g_slist_find_custom;
	void function(GSList* list, GFunc func, void* userData) c_g_slist_foreach;
	void function(GSList* list) c_g_slist_free;
	void function(GSList* list) c_g_slist_free_1;
	void function(GSList* list, GDestroyNotify freeFunc) c_g_slist_free_full;
	int function(GSList* list, void* data) c_g_slist_index;
	GSList* function(GSList* list, void* data, int position) c_g_slist_insert;
	GSList* function(GSList* slist, GSList* sibling, void* data) c_g_slist_insert_before;
	GSList* function(GSList* list, void* data, GCompareFunc func) c_g_slist_insert_sorted;
	GSList* function(GSList* list, void* data, GCompareDataFunc func, void* userData) c_g_slist_insert_sorted_with_data;
	GSList* function(GSList* list) c_g_slist_last;
	uint function(GSList* list) c_g_slist_length;
	GSList* function(GSList* list, uint n) c_g_slist_nth;
	void* function(GSList* list, uint n) c_g_slist_nth_data;
	int function(GSList* list, GSList* llink) c_g_slist_position;
	GSList* function(GSList* list, void* data) c_g_slist_prepend;
	GSList* function(GSList* list, void* data) c_g_slist_remove;
	GSList* function(GSList* list, void* data) c_g_slist_remove_all;
	GSList* function(GSList* list, GSList* link) c_g_slist_remove_link;
	GSList* function(GSList* list) c_g_slist_reverse;
	GSList* function(GSList* list, GCompareFunc compareFunc) c_g_slist_sort;
	GSList* function(GSList* list, GCompareDataFunc compareFunc, void* userData) c_g_slist_sort_with_data;

	// glib.ScannerG

	uint function(GScanner* scanner) c_g_scanner_cur_line;
	uint function(GScanner* scanner) c_g_scanner_cur_position;
	GTokenType function(GScanner* scanner) c_g_scanner_cur_token;
	GTokenValue function(GScanner* scanner) c_g_scanner_cur_value;
	void function(GScanner* scanner) c_g_scanner_destroy;
	int function(GScanner* scanner) c_g_scanner_eof;
	void function(GScanner* scanner, const(char)* format, ... ) c_g_scanner_error;
	GTokenType function(GScanner* scanner) c_g_scanner_get_next_token;
	void function(GScanner* scanner, int inputFd) c_g_scanner_input_file;
	void function(GScanner* scanner, const(char)* text, uint textLen) c_g_scanner_input_text;
	void* function(GScanner* scanner, const(char)* symbol) c_g_scanner_lookup_symbol;
	GTokenType function(GScanner* scanner) c_g_scanner_peek_next_token;
	void function(GScanner* scanner, uint scopeId, const(char)* symbol, void* value) c_g_scanner_scope_add_symbol;
	void function(GScanner* scanner, uint scopeId, GHFunc func, void* userData) c_g_scanner_scope_foreach_symbol;
	void* function(GScanner* scanner, uint scopeId, const(char)* symbol) c_g_scanner_scope_lookup_symbol;
	void function(GScanner* scanner, uint scopeId, const(char)* symbol) c_g_scanner_scope_remove_symbol;
	uint function(GScanner* scanner, uint scopeId) c_g_scanner_set_scope;
	void function(GScanner* scanner) c_g_scanner_sync_file_offset;
	void function(GScanner* scanner, GTokenType expectedToken, const(char)* identifierSpec, const(char)* symbolSpec, const(char)* symbolName, const(char)* message, int isError) c_g_scanner_unexp_token;
	void function(GScanner* scanner, const(char)* format, ... ) c_g_scanner_warn;
	GScanner* function(GScannerConfig* configTempl) c_g_scanner_new;

	// glib.Sequence

	GSequenceIter* function(GSequence* seq, void* data) c_g_sequence_append;
	void function(GSequence* seq, GFunc func, void* userData) c_g_sequence_foreach;
	void function(GSequence* seq) c_g_sequence_free;
	GSequenceIter* function(GSequence* seq) c_g_sequence_get_begin_iter;
	GSequenceIter* function(GSequence* seq) c_g_sequence_get_end_iter;
	GSequenceIter* function(GSequence* seq, int pos) c_g_sequence_get_iter_at_pos;
	int function(GSequence* seq) c_g_sequence_get_length;
	GSequenceIter* function(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData) c_g_sequence_insert_sorted;
	GSequenceIter* function(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData) c_g_sequence_insert_sorted_iter;
	GSequenceIter* function(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData) c_g_sequence_lookup;
	GSequenceIter* function(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData) c_g_sequence_lookup_iter;
	GSequenceIter* function(GSequence* seq, void* data) c_g_sequence_prepend;
	GSequenceIter* function(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData) c_g_sequence_search;
	GSequenceIter* function(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData) c_g_sequence_search_iter;
	void function(GSequence* seq, GCompareDataFunc cmpFunc, void* cmpData) c_g_sequence_sort;
	void function(GSequence* seq, GSequenceIterCompareFunc cmpFunc, void* cmpData) c_g_sequence_sort_iter;
	void function(GSequenceIter* begin, GSequenceIter* end, GFunc func, void* userData) c_g_sequence_foreach_range;
	void* function(GSequenceIter* iter) c_g_sequence_get;
	GSequenceIter* function(GSequenceIter* iter, void* data) c_g_sequence_insert_before;
	void function(GSequenceIter* src, GSequenceIter* dest) c_g_sequence_move;
	void function(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end) c_g_sequence_move_range;
	GSequence* function(GDestroyNotify dataDestroy) c_g_sequence_new;
	GSequenceIter* function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_range_get_midpoint;
	void function(GSequenceIter* iter) c_g_sequence_remove;
	void function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_remove_range;
	void function(GSequenceIter* iter, void* data) c_g_sequence_set;
	void function(GSequenceIter* iter, GCompareDataFunc cmpFunc, void* cmpData) c_g_sequence_sort_changed;
	void function(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, void* cmpData) c_g_sequence_sort_changed_iter;
	void function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_swap;

	// glib.SequenceIter

	int function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_iter_compare;
	int function(GSequenceIter* iter) c_g_sequence_iter_get_position;
	GSequence* function(GSequenceIter* iter) c_g_sequence_iter_get_sequence;
	int function(GSequenceIter* iter) c_g_sequence_iter_is_begin;
	int function(GSequenceIter* iter) c_g_sequence_iter_is_end;
	GSequenceIter* function(GSequenceIter* iter, int delta) c_g_sequence_iter_move;
	GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_next;
	GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_prev;

	// glib.Source

	GSource* function(GSourceFuncs* sourceFuncs, uint structSize) c_g_source_new;
	void function(GSource* source, GSource* childSource) c_g_source_add_child_source;
	void function(GSource* source, GPollFD* fd) c_g_source_add_poll;
	void* function(GSource* source, int fd, GIOCondition events) c_g_source_add_unix_fd;
	uint function(GSource* source, GMainContext* context) c_g_source_attach;
	void function(GSource* source) c_g_source_destroy;
	int function(GSource* source) c_g_source_get_can_recurse;
	GMainContext* function(GSource* source) c_g_source_get_context;
	void function(GSource* source, GTimeVal* timeval) c_g_source_get_current_time;
	uint function(GSource* source) c_g_source_get_id;
	const(char)* function(GSource* source) c_g_source_get_name;
	int function(GSource* source) c_g_source_get_priority;
	long function(GSource* source) c_g_source_get_ready_time;
	long function(GSource* source) c_g_source_get_time;
	int function(GSource* source) c_g_source_is_destroyed;
	void function(GSource* source, void* tag, GIOCondition newEvents) c_g_source_modify_unix_fd;
	GIOCondition function(GSource* source, void* tag) c_g_source_query_unix_fd;
	GSource* function(GSource* source) c_g_source_ref;
	void function(GSource* source, GSource* childSource) c_g_source_remove_child_source;
	void function(GSource* source, GPollFD* fd) c_g_source_remove_poll;
	void function(GSource* source, void* tag) c_g_source_remove_unix_fd;
	void function(GSource* source, GSourceFunc func, void* data, GDestroyNotify notify) c_g_source_set_callback;
	void function(GSource* source, void* callbackData, GSourceCallbackFuncs* callbackFuncs) c_g_source_set_callback_indirect;
	void function(GSource* source, int canRecurse) c_g_source_set_can_recurse;
	void function(GSource* source, GSourceFuncs* funcs) c_g_source_set_funcs;
	void function(GSource* source, const(char)* name) c_g_source_set_name;
	void function(GSource* source, int priority) c_g_source_set_priority;
	void function(GSource* source, long readyTime) c_g_source_set_ready_time;
	void function(GSource* source) c_g_source_unref;
	int function(uint tag) c_g_source_remove;
	int function(GSourceFuncs* funcs, void* userData) c_g_source_remove_by_funcs_user_data;
	int function(void* userData) c_g_source_remove_by_user_data;
	void function(uint tag, const(char)* name) c_g_source_set_name_by_id;

	// glib.StringG

	GString* function(GString* str, const(char)* val) c_g_string_append;
	GString* function(GString* str, char c) c_g_string_append_c;
	GString* function(GString* str, const(char)* val, ptrdiff_t len) c_g_string_append_len;
	void function(GString* str, const(char)* format, ... ) c_g_string_append_printf;
	GString* function(GString* str, dchar wc) c_g_string_append_unichar;
	GString* function(GString* str, const(char)* unescaped, const(char)* reservedCharsAllowed, int allowUtf8) c_g_string_append_uri_escaped;
	void function(GString* str, const(char)* format, void* args) c_g_string_append_vprintf;
	GString* function(GString* str) c_g_string_ascii_down;
	GString* function(GString* str) c_g_string_ascii_up;
	GString* function(GString* str, const(char)* rval) c_g_string_assign;
	GString* function(GString* str) c_g_string_down;
	int function(GString* v, GString* v2) c_g_string_equal;
	GString* function(GString* str, ptrdiff_t pos, ptrdiff_t len) c_g_string_erase;
	char* function(GString* str, int freeSegment) c_g_string_free;
	GBytes* function(GString* str) c_g_string_free_to_bytes;
	uint function(GString* str) c_g_string_hash;
	GString* function(GString* str, ptrdiff_t pos, const(char)* val) c_g_string_insert;
	GString* function(GString* str, ptrdiff_t pos, char c) c_g_string_insert_c;
	GString* function(GString* str, ptrdiff_t pos, const(char)* val, ptrdiff_t len) c_g_string_insert_len;
	GString* function(GString* str, ptrdiff_t pos, dchar wc) c_g_string_insert_unichar;
	GString* function(GString* str, size_t pos, const(char)* val) c_g_string_overwrite;
	GString* function(GString* str, size_t pos, const(char)* val, ptrdiff_t len) c_g_string_overwrite_len;
	GString* function(GString* str, const(char)* val) c_g_string_prepend;
	GString* function(GString* str, char c) c_g_string_prepend_c;
	GString* function(GString* str, const(char)* val, ptrdiff_t len) c_g_string_prepend_len;
	GString* function(GString* str, dchar wc) c_g_string_prepend_unichar;
	void function(GString* str, const(char)* format, ... ) c_g_string_printf;
	GString* function(GString* str, size_t len) c_g_string_set_size;
	GString* function(GString* str, size_t len) c_g_string_truncate;
	GString* function(GString* str) c_g_string_up;
	void function(GString* str, const(char)* format, void* args) c_g_string_vprintf;
	GString* function(const(char)* init) c_g_string_new;
	GString* function(const(char)* init, ptrdiff_t len) c_g_string_new_len;
	GString* function(size_t dflSize) c_g_string_sized_new;

	// glib.StringChunk

	void function(GStringChunk* chunk) c_g_string_chunk_clear;
	void function(GStringChunk* chunk) c_g_string_chunk_free;
	char* function(GStringChunk* chunk, const(char)* str) c_g_string_chunk_insert;
	char* function(GStringChunk* chunk, const(char)* str) c_g_string_chunk_insert_const;
	char* function(GStringChunk* chunk, const(char)* str, ptrdiff_t len) c_g_string_chunk_insert_len;
	GStringChunk* function(size_t size) c_g_string_chunk_new;

	// glib.TestLogBuffer

	void function(GTestLogBuffer* tbuffer) c_g_test_log_buffer_free;
	GTestLogMsg* function(GTestLogBuffer* tbuffer) c_g_test_log_buffer_pop;
	void function(GTestLogBuffer* tbuffer, uint nBytes, ubyte* bytes) c_g_test_log_buffer_push;
	GTestLogBuffer* function() c_g_test_log_buffer_new;

	// glib.TestLogMsg

	void function(GTestLogMsg* tmsg) c_g_test_log_msg_free;

	// glib.TestSuite

	void function(GTestSuite* suite, GTestCase* testCase) c_g_test_suite_add;
	void function(GTestSuite* suite, GTestSuite* nestedsuite) c_g_test_suite_add_suite;

	// glib.Thread

	GThread* function(const(char)* name, GThreadFunc func, void* data) c_g_thread_new;
	GThread* function(const(char)* name, GThreadFunc func, void* data, GError** err) c_g_thread_try_new;
	void* function(GThread* thread) c_g_thread_join;
	GThread* function(GThread* thread) c_g_thread_ref;
	void function(GThread* thread) c_g_thread_unref;
	GQuark function() c_g_thread_error_quark;
	void function(void* retval) c_g_thread_exit;
	GThread* function() c_g_thread_self;
	void function() c_g_thread_yield;
	void function(int* address, int lockBit) c_g_bit_lock;
	int function(int* address, int lockBit) c_g_bit_trylock;
	void function(int* address, int lockBit) c_g_bit_unlock;
	uint function() c_g_get_num_processors;
	void function(void* address, int lockBit) c_g_pointer_bit_lock;
	int function(void* address, int lockBit) c_g_pointer_bit_trylock;
	void function(void* address, int lockBit) c_g_pointer_bit_unlock;

	// glib.ThreadPool

	void function(GThreadPool* pool, int immediate, int wait) c_g_thread_pool_free;
	int function(GThreadPool* pool) c_g_thread_pool_get_max_threads;
	uint function(GThreadPool* pool) c_g_thread_pool_get_num_threads;
	int function(GThreadPool* pool, void* data) c_g_thread_pool_move_to_front;
	int function(GThreadPool* pool, void* data, GError** err) c_g_thread_pool_push;
	int function(GThreadPool* pool, int maxThreads, GError** err) c_g_thread_pool_set_max_threads;
	void function(GThreadPool* pool, GCompareDataFunc func, void* userData) c_g_thread_pool_set_sort_function;
	uint function(GThreadPool* pool) c_g_thread_pool_unprocessed;
	uint function() c_g_thread_pool_get_max_idle_time;
	int function() c_g_thread_pool_get_max_unused_threads;
	uint function() c_g_thread_pool_get_num_unused_threads;
	GThreadPool* function(GFunc func, void* userData, int maxThreads, int exclusive, GError** err) c_g_thread_pool_new;
	void function(uint interval) c_g_thread_pool_set_max_idle_time;
	void function(int maxThreads) c_g_thread_pool_set_max_unused_threads;
	void function() c_g_thread_pool_stop_unused_threads;

	// glib.TimeVal

	void function(GTimeVal* time, glong microseconds) c_g_time_val_add;
	char* function(GTimeVal* time) c_g_time_val_to_iso8601;
	int function(const(char)* isoDate, GTimeVal* time) c_g_time_val_from_iso8601;
	void function(GTimeVal* result) c_g_get_current_time;
	long function() c_g_get_monotonic_time;
	long function() c_g_get_real_time;
	void function(gulong microseconds) c_g_usleep;

	// glib.TimeZone

	GTimeZone* function(const(char)* identifier) c_g_time_zone_new;
	GTimeZone* function() c_g_time_zone_new_local;
	GTimeZone* function() c_g_time_zone_new_utc;
	int function(GTimeZone* tz, GTimeType type, long* time) c_g_time_zone_adjust_time;
	int function(GTimeZone* tz, GTimeType type, long time) c_g_time_zone_find_interval;
	const(char)* function(GTimeZone* tz, int interval) c_g_time_zone_get_abbreviation;
	int function(GTimeZone* tz, int interval) c_g_time_zone_get_offset;
	int function(GTimeZone* tz, int interval) c_g_time_zone_is_dst;
	GTimeZone* function(GTimeZone* tz) c_g_time_zone_ref;
	void function(GTimeZone* tz) c_g_time_zone_unref;

	// glib.Timer

	void function(GTimer* timer) c_g_timer_continue;
	void function(GTimer* timer) c_g_timer_destroy;
	double function(GTimer* timer, gulong* microseconds) c_g_timer_elapsed;
	void function(GTimer* timer) c_g_timer_reset;
	void function(GTimer* timer) c_g_timer_start;
	void function(GTimer* timer) c_g_timer_stop;
	GTimer* function() c_g_timer_new;

	// glib.TrashStack

	uint function(GTrashStack** stackP) c_g_trash_stack_height;
	void* function(GTrashStack** stackP) c_g_trash_stack_peek;
	void* function(GTrashStack** stackP) c_g_trash_stack_pop;
	void function(GTrashStack** stackP, void* dataP) c_g_trash_stack_push;

	// glib.BBTree

	void function(GTree* tree) c_g_tree_destroy;
	void function(GTree* tree, GTraverseFunc func, void* userData) c_g_tree_foreach;
	int function(GTree* tree) c_g_tree_height;
	void function(GTree* tree, void* key, void* value) c_g_tree_insert;
	void* function(GTree* tree, void* key) c_g_tree_lookup;
	int function(GTree* tree, void* lookupKey, void** origKey, void** value) c_g_tree_lookup_extended;
	int function(GTree* tree) c_g_tree_nnodes;
	GTree* function(GTree* tree) c_g_tree_ref;
	int function(GTree* tree, void* key) c_g_tree_remove;
	void function(GTree* tree, void* key, void* value) c_g_tree_replace;
	void* function(GTree* tree, GCompareFunc searchFunc, void* userData) c_g_tree_search;
	int function(GTree* tree, void* key) c_g_tree_steal;
	void function(GTree* tree, GTraverseFunc traverseFunc, GTraverseType traverseType, void* userData) c_g_tree_traverse;
	void function(GTree* tree) c_g_tree_unref;
	GTree* function(GCompareFunc keyCompareFunc) c_g_tree_new;
	GTree* function(GCompareDataFunc keyCompareFunc, void* keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_tree_new_full;
	GTree* function(GCompareDataFunc keyCompareFunc, void* keyCompareData) c_g_tree_new_with_data;

	// glib.Variant

	GVariant* function(const(char)* formatString, ... ) c_g_variant_new;
	GVariant* function(GVariantType* childType, GVariant** children, size_t nChildren) c_g_variant_new_array;
	GVariant* function(int value) c_g_variant_new_boolean;
	GVariant* function(char value) c_g_variant_new_byte;
	GVariant* function(char* str) c_g_variant_new_bytestring;
	GVariant* function(char** strv, ptrdiff_t length) c_g_variant_new_bytestring_array;
	GVariant* function(GVariant* key, GVariant* value) c_g_variant_new_dict_entry;
	GVariant* function(double value) c_g_variant_new_double;
	GVariant* function(GVariantType* elementType, void* elements, size_t nElements, size_t elementSize) c_g_variant_new_fixed_array;
	GVariant* function(GVariantType* type, GBytes* bytes, int trusted) c_g_variant_new_from_bytes;
	GVariant* function(GVariantType* type, void* data, size_t size, int trusted, GDestroyNotify notify, void* userData) c_g_variant_new_from_data;
	GVariant* function(int value) c_g_variant_new_handle;
	GVariant* function(short value) c_g_variant_new_int16;
	GVariant* function(int value) c_g_variant_new_int32;
	GVariant* function(long value) c_g_variant_new_int64;
	GVariant* function(GVariantType* childType, GVariant* child) c_g_variant_new_maybe;
	GVariant* function(const(char)* objectPath) c_g_variant_new_object_path;
	GVariant* function(char** strv, ptrdiff_t length) c_g_variant_new_objv;
	GVariant* function(const(char)* format, ... ) c_g_variant_new_parsed;
	GVariant* function(const(char)* format, void** app) c_g_variant_new_parsed_va;
	GVariant* function(const(char)* formatString, ... ) c_g_variant_new_printf;
	GVariant* function(const(char)* signature) c_g_variant_new_signature;
	GVariant* function(const(char)* str) c_g_variant_new_string;
	GVariant* function(char** strv, ptrdiff_t length) c_g_variant_new_strv;
	GVariant* function(char* str) c_g_variant_new_take_string;
	GVariant* function(GVariant** children, size_t nChildren) c_g_variant_new_tuple;
	GVariant* function(ushort value) c_g_variant_new_uint16;
	GVariant* function(uint value) c_g_variant_new_uint32;
	GVariant* function(ulong value) c_g_variant_new_uint64;
	GVariant* function(const(char)* formatString, char** endptr, void** app) c_g_variant_new_va;
	GVariant* function(GVariant* value) c_g_variant_new_variant;
	GVariant* function(GVariant* value) c_g_variant_byteswap;
	int function(GVariant* value, const(char)* formatString, int copyOnly) c_g_variant_check_format_string;
	GVariantClass function(GVariant* value) c_g_variant_classify;
	int function(void* one, void* two) c_g_variant_compare;
	char* function(GVariant* value, size_t* length) c_g_variant_dup_bytestring;
	char** function(GVariant* value, size_t* length) c_g_variant_dup_bytestring_array;
	char** function(GVariant* value, size_t* length) c_g_variant_dup_objv;
	char* function(GVariant* value, size_t* length) c_g_variant_dup_string;
	char** function(GVariant* value, size_t* length) c_g_variant_dup_strv;
	int function(void* one, void* two) c_g_variant_equal;
	void function(GVariant* value, const(char)* formatString, ... ) c_g_variant_get;
	int function(GVariant* value) c_g_variant_get_boolean;
	char function(GVariant* value) c_g_variant_get_byte;
	char* function(GVariant* value) c_g_variant_get_bytestring;
	char** function(GVariant* value, size_t* length) c_g_variant_get_bytestring_array;
	void function(GVariant* value, size_t index, const(char)* formatString, ... ) c_g_variant_get_child;
	GVariant* function(GVariant* value, size_t index) c_g_variant_get_child_value;
	void* function(GVariant* value) c_g_variant_get_data;
	GBytes* function(GVariant* value) c_g_variant_get_data_as_bytes;
	double function(GVariant* value) c_g_variant_get_double;
	void* function(GVariant* value, size_t* nElements, size_t elementSize) c_g_variant_get_fixed_array;
	int function(GVariant* value) c_g_variant_get_handle;
	short function(GVariant* value) c_g_variant_get_int16;
	int function(GVariant* value) c_g_variant_get_int32;
	long function(GVariant* value) c_g_variant_get_int64;
	GVariant* function(GVariant* value) c_g_variant_get_maybe;
	GVariant* function(GVariant* value) c_g_variant_get_normal_form;
	char** function(GVariant* value, size_t* length) c_g_variant_get_objv;
	size_t function(GVariant* value) c_g_variant_get_size;
	const(char)* function(GVariant* value, size_t* length) c_g_variant_get_string;
	char** function(GVariant* value, size_t* length) c_g_variant_get_strv;
	GVariantType* function(GVariant* value) c_g_variant_get_type;
	const(char)* function(GVariant* value) c_g_variant_get_type_string;
	ushort function(GVariant* value) c_g_variant_get_uint16;
	uint function(GVariant* value) c_g_variant_get_uint32;
	ulong function(GVariant* value) c_g_variant_get_uint64;
	void function(GVariant* value, const(char)* formatString, char** endptr, void** app) c_g_variant_get_va;
	GVariant* function(GVariant* value) c_g_variant_get_variant;
	uint function(void* value) c_g_variant_hash;
	int function(GVariant* value) c_g_variant_is_container;
	int function(GVariant* value) c_g_variant_is_floating;
	int function(GVariant* value) c_g_variant_is_normal_form;
	int function(GVariant* value, GVariantType* type) c_g_variant_is_of_type;
	GVariantIter* function(GVariant* value) c_g_variant_iter_new;
	int function(GVariant* dictionary, const(char)* key, const(char)* formatString, ... ) c_g_variant_lookup;
	GVariant* function(GVariant* dictionary, const(char)* key, GVariantType* expectedType) c_g_variant_lookup_value;
	size_t function(GVariant* value) c_g_variant_n_children;
	char* function(GVariant* value, int typeAnnotate) c_g_variant_print;
	GString* function(GVariant* value, GString* str, int typeAnnotate) c_g_variant_print_string;
	GVariant* function(GVariant* value) c_g_variant_ref;
	GVariant* function(GVariant* value) c_g_variant_ref_sink;
	void function(GVariant* value, void* data) c_g_variant_store;
	GVariant* function(GVariant* value) c_g_variant_take_ref;
	void function(GVariant* value) c_g_variant_unref;
	int function(const(char)* str) c_g_variant_is_object_path;
	int function(const(char)* str) c_g_variant_is_signature;
	GVariant* function(GVariantType* type, const(char)* text, const(char)* limit, char** endptr, GError** err) c_g_variant_parse;
	char* function(GError* error, const(char)* sourceStr) c_g_variant_parse_error_print_context;
	GQuark function() c_g_variant_parse_error_quark;
	GQuark function() c_g_variant_parser_get_error_quark;

	// glib.VariantBuilder

	GVariantBuilder* function(GVariantType* type) c_g_variant_builder_new;
	void function(GVariantBuilder* builder, const(char)* formatString, ... ) c_g_variant_builder_add;
	void function(GVariantBuilder* builder, const(char)* format, ... ) c_g_variant_builder_add_parsed;
	void function(GVariantBuilder* builder, GVariant* value) c_g_variant_builder_add_value;
	void function(GVariantBuilder* builder) c_g_variant_builder_clear;
	void function(GVariantBuilder* builder) c_g_variant_builder_close;
	GVariant* function(GVariantBuilder* builder) c_g_variant_builder_end;
	void function(GVariantBuilder* builder, GVariantType* type) c_g_variant_builder_init;
	void function(GVariantBuilder* builder, GVariantType* type) c_g_variant_builder_open;
	GVariantBuilder* function(GVariantBuilder* builder) c_g_variant_builder_ref;
	void function(GVariantBuilder* builder) c_g_variant_builder_unref;

	// glib.VariantDict

	GVariantDict* function(GVariant* fromAsv) c_g_variant_dict_new;
	void function(GVariantDict* dict) c_g_variant_dict_clear;
	int function(GVariantDict* dict, const(char)* key) c_g_variant_dict_contains;
	GVariant* function(GVariantDict* dict) c_g_variant_dict_end;
	void function(GVariantDict* dict, GVariant* fromAsv) c_g_variant_dict_init;
	void function(GVariantDict* dict, const(char)* key, const(char)* formatString, ... ) c_g_variant_dict_insert;
	void function(GVariantDict* dict, const(char)* key, GVariant* value) c_g_variant_dict_insert_value;
	int function(GVariantDict* dict, const(char)* key, const(char)* formatString, ... ) c_g_variant_dict_lookup;
	GVariant* function(GVariantDict* dict, const(char)* key, GVariantType* expectedType) c_g_variant_dict_lookup_value;
	GVariantDict* function(GVariantDict* dict) c_g_variant_dict_ref;
	int function(GVariantDict* dict, const(char)* key) c_g_variant_dict_remove;
	void function(GVariantDict* dict) c_g_variant_dict_unref;

	// glib.VariantIter

	GVariantIter* function(GVariantIter* iter) c_g_variant_iter_copy;
	void function(GVariantIter* iter) c_g_variant_iter_free;
	size_t function(GVariantIter* iter, GVariant* value) c_g_variant_iter_init;
	int function(GVariantIter* iter, const(char)* formatString, ... ) c_g_variant_iter_loop;
	size_t function(GVariantIter* iter) c_g_variant_iter_n_children;
	int function(GVariantIter* iter, const(char)* formatString, ... ) c_g_variant_iter_next;
	GVariant* function(GVariantIter* iter) c_g_variant_iter_next_value;

	// glib.VariantType

	GVariantType* function(const(char)* typeString) c_g_variant_type_new;
	GVariantType* function(GVariantType* element) c_g_variant_type_new_array;
	GVariantType* function(GVariantType* key, GVariantType* value) c_g_variant_type_new_dict_entry;
	GVariantType* function(GVariantType* element) c_g_variant_type_new_maybe;
	GVariantType* function(GVariantType** items, int length) c_g_variant_type_new_tuple;
	GVariantType* function(GVariantType* type) c_g_variant_type_copy;
	char* function(GVariantType* type) c_g_variant_type_dup_string;
	GVariantType* function(GVariantType* type) c_g_variant_type_element;
	int function(void* type1, void* type2) c_g_variant_type_equal;
	GVariantType* function(GVariantType* type) c_g_variant_type_first;
	void function(GVariantType* type) c_g_variant_type_free;
	size_t function(GVariantType* type) c_g_variant_type_get_string_length;
	uint function(void* type) c_g_variant_type_hash;
	int function(GVariantType* type) c_g_variant_type_is_array;
	int function(GVariantType* type) c_g_variant_type_is_basic;
	int function(GVariantType* type) c_g_variant_type_is_container;
	int function(GVariantType* type) c_g_variant_type_is_definite;
	int function(GVariantType* type) c_g_variant_type_is_dict_entry;
	int function(GVariantType* type) c_g_variant_type_is_maybe;
	int function(GVariantType* type, GVariantType* supertype) c_g_variant_type_is_subtype_of;
	int function(GVariantType* type) c_g_variant_type_is_tuple;
	int function(GVariantType* type) c_g_variant_type_is_variant;
	GVariantType* function(GVariantType* type) c_g_variant_type_key;
	size_t function(GVariantType* type) c_g_variant_type_n_items;
	GVariantType* function(GVariantType* type) c_g_variant_type_next;
	const(char)* function(GVariantType* type) c_g_variant_type_peek_string;
	GVariantType* function(GVariantType* type) c_g_variant_type_value;
	GVariantType* function(const(char)* arg0) c_g_variant_type_checked_;
	int function(const(char)* typeString) c_g_variant_type_string_is_valid;
	int function(const(char)* str, const(char)* limit, char** endptr) c_g_variant_type_string_scan;

	// glib.Module

	int function(GModule* modul) c_g_module_close;
	void function(GModule* modul) c_g_module_make_resident;
	const(char)* function(GModule* modul) c_g_module_name;
	int function(GModule* modul, const(char)* symbolName, void** symbol) c_g_module_symbol;
	char* function(const(char)* directory, const(char)* moduleName) c_g_module_build_path;
	const(char)* function() c_g_module_error;
	GModule* function(const(char)* fileName, GModuleFlags flags) c_g_module_open;
	int function() c_g_module_supported;

	// glib.Base64

	size_t function(char* inn, size_t len, char* output, int* state, uint* save) c_g_base64_decode_step;
	char* function(char* text, size_t* outLen) c_g_base64_decode_inplace;
	char* function(const(char)* text, size_t* outLen) c_g_base64_decode;
	char* function(char* data, size_t len) c_g_base64_encode;
	size_t function(int breakLines, char* output, int* state, int* save) c_g_base64_encode_close;
	size_t function(char* inn, size_t len, int breakLines, char* output, int* state, int* save) c_g_base64_encode_step;

	// glib.Idle

	uint function(GSourceFunc funct, void* data) c_g_idle_add;
	uint function(int priority, GSourceFunc funct, void* data, GDestroyNotify notify) c_g_idle_add_full;
	int function(void* data) c_g_idle_remove_by_data;
	GSource* function() c_g_idle_source_new;

	// glib.MemorySlice

	void* function(size_t blockSize) c_g_slice_alloc;
	void* function(size_t blockSize) c_g_slice_alloc0;
	void* function(size_t blockSize, void* memBlock) c_g_slice_copy;
	void function(size_t blockSize, void* memBlock) c_g_slice_free1;
	void function(size_t blockSize, void* memChain, size_t nextOffset) c_g_slice_free_chain_with_offset;
	long function(GSliceConfig ckey) c_g_slice_get_config;
	long* function(GSliceConfig ckey, long address, uint* nValues) c_g_slice_get_config_state;
	void function(GSliceConfig ckey, long value) c_g_slice_set_config;

	// glib.Spawn

	int function(const(char)* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, GError** err) c_g_spawn_async;
	int function(const(char)* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, int* standardInput, int* standardOutput, int* standardError, GError** err) c_g_spawn_async_with_pipes;
	int function(int exitStatus, GError** err) c_g_spawn_check_exit_status;
	void function(GPid pid) c_g_spawn_close_pid;
	int function(const(char)* commandLine, GError** err) c_g_spawn_command_line_async;
	int function(const(char)* commandLine, char** standardOutput, char** standardError, int* exitStatus, GError** err) c_g_spawn_command_line_sync;
	GQuark function() c_g_spawn_error_quark;
	GQuark function() c_g_spawn_exit_error_quark;
	int function(const(char)* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, char** standardOutput, char** standardError, int* exitStatus, GError** err) c_g_spawn_sync;

	// glib.Str

	int function(char c) c_g_ascii_digit_value;
	char* function(char* buffer, int bufLen, double d) c_g_ascii_dtostr;
	char* function(char* buffer, int bufLen, const(char)* format, double d) c_g_ascii_formatd;
	int function(const(char)* s1, const(char)* s2) c_g_ascii_strcasecmp;
	char* function(const(char)* str, ptrdiff_t len) c_g_ascii_strdown;
	int function(const(char)* s1, const(char)* s2, size_t n) c_g_ascii_strncasecmp;
	double function(const(char)* nptr, char** endptr) c_g_ascii_strtod;
	long function(const(char)* nptr, char** endptr, uint base) c_g_ascii_strtoll;
	ulong function(const(char)* nptr, char** endptr, uint base) c_g_ascii_strtoull;
	char* function(const(char)* str, ptrdiff_t len) c_g_ascii_strup;
	char function(char c) c_g_ascii_tolower;
	char function(char c) c_g_ascii_toupper;
	int function(char c) c_g_ascii_xdigit_value;
	int function(FILE* file, char* format, ... ) c_g_fprintf;
	int function(char* format, ... ) c_g_printf;
	size_t function(const(char)* format, void* args) c_g_printf_string_upper_bound;
	int function(char* str, gulong n, char* format, ... ) c_g_snprintf;
	int function(char* str, char* format, ... ) c_g_sprintf;
	char* function(char* dest, const(char)* src) c_g_stpcpy;
	int function(const(char)* str, const(char)* prefix) c_g_str_has_prefix;
	int function(const(char)* str, const(char)* suffix) c_g_str_has_suffix;
	int function(const(char)* str) c_g_str_is_ascii;
	int function(const(char)* searchTerm, const(char)* potentialHit, int acceptAlternates) c_g_str_match_string;
	char* function(const(char)* str, const(char)* fromLocale) c_g_str_to_ascii;
	char** function(const(char)* str, const(char)* translitLocale, char*** asciiAlternates) c_g_str_tokenize_and_fold;
	char* function(char* str, const(char)* validChars, char substitutor) c_g_strcanon;
	int function(const(char)* s1, const(char)* s2) c_g_strcasecmp;
	char* function(char* str) c_g_strchomp;
	char* function(char* str) c_g_strchug;
	int function(const(char)* str1, const(char)* str2) c_g_strcmp0;
	char* function(const(char)* source) c_g_strcompress;
	char* function(const(char)* string1, ... ) c_g_strconcat;
	char* function(char* str, const(char)* delimiters, char newDelimiter) c_g_strdelimit;
	char* function(char* str) c_g_strdown;
	char* function(const(char)* str) c_g_strdup;
	char* function(const(char)* format, ... ) c_g_strdup_printf;
	char* function(const(char)* format, void* args) c_g_strdup_vprintf;
	char** function(char** strArray) c_g_strdupv;
	const(char)* function(int errnum) c_g_strerror;
	char* function(const(char)* source, const(char)* exceptions) c_g_strescape;
	void function(char** strArray) c_g_strfreev;
	char* function(const(char)* separator, ... ) c_g_strjoin;
	char* function(const(char)* separator, char** strArray) c_g_strjoinv;
	size_t function(char* dest, const(char)* src, size_t destSize) c_g_strlcat;
	size_t function(char* dest, const(char)* src, size_t destSize) c_g_strlcpy;
	int function(const(char)* s1, const(char)* s2, uint n) c_g_strncasecmp;
	char* function(const(char)* str, size_t n) c_g_strndup;
	char* function(size_t length, char fillChar) c_g_strnfill;
	char* function(char* str) c_g_strreverse;
	char* function(const(char)* haystack, const(char)* needle) c_g_strrstr;
	char* function(const(char)* haystack, ptrdiff_t haystackLen, const(char)* needle) c_g_strrstr_len;
	const(char)* function(int signum) c_g_strsignal;
	char** function(const(char)* str, const(char)* delimiter, int maxTokens) c_g_strsplit;
	char** function(const(char)* str, const(char)* delimiters, int maxTokens) c_g_strsplit_set;
	char* function(const(char)* haystack, ptrdiff_t haystackLen, const(char)* needle) c_g_strstr_len;
	double function(const(char)* nptr, char** endptr) c_g_strtod;
	char* function(char* str) c_g_strup;
	GType function() c_g_strv_get_type;
	uint function(char** strArray) c_g_strv_length;
	int function(const(char)* strv, const(char)* str) c_g_strv_contains;
	int function(char** str, char* format, void* args) c_g_vasprintf;
	int function(FILE* file, char* format, void* args) c_g_vfprintf;
	int function(char* format, void* args) c_g_vprintf;
	int function(char* str, gulong n, char* format, void* args) c_g_vsnprintf;
	int function(char* str, char* format, void* args) c_g_vsprintf;

	// glib.Timeout

	uint function(uint interval, GSourceFunc funct, void* data) c_g_timeout_add;
	uint function(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_g_timeout_add_full;
	uint function(uint interval, GSourceFunc funct, void* data) c_g_timeout_add_seconds;
	uint function(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_g_timeout_add_seconds_full;
	GSource* function(uint interval) c_g_timeout_source_new;
	GSource* function(uint interval) c_g_timeout_source_new_seconds;

	// glib.Util

	char* function(char** args) c_g_build_filenamev;
	char* function(const(char)* separator, char** args) c_g_build_pathv;
	void function(GVoidFunc func) c_g_atexit;
	const(char)* function(const(char)* fileName) c_g_basename;
	int function(gulong mask, int nthBit) c_g_bit_nth_lsf;
	int function(gulong mask, int nthBit) c_g_bit_nth_msf;
	uint function(gulong number) c_g_bit_storage;
	char* function(const(char)* separator, const(char)* firstElement, ... ) c_g_build_path;
	const(char)* function(char** envp, const(char)* variable) c_g_environ_getenv;
	char** function(char** envp, const(char)* variable, const(char)* value, int overwrite) c_g_environ_setenv;
	char** function(char** envp, const(char)* variable) c_g_environ_unsetenv;
	char* function(const(char)* program) c_g_find_program_in_path;
	char* function(ulong size) c_g_format_size;
	char* function(long size) c_g_format_size_for_display;
	char* function(ulong size, GFormatSizeFlags flags) c_g_format_size_full;
	const(char)* function() c_g_get_application_name;
	char** function() c_g_get_environ;
	char* function() c_g_get_current_dir;
	const(char)* function() c_g_get_home_dir;
	const(char)* function() c_g_get_host_name;
	const(char)* function() c_g_get_prgname;
	const(char)* function() c_g_get_real_name;
	char** function() c_g_get_system_config_dirs;
	char** function() c_g_get_system_data_dirs;
	const(char)* function() c_g_get_tmp_dir;
	const(char)* function() c_g_get_user_cache_dir;
	const(char)* function() c_g_get_user_config_dir;
	const(char)* function() c_g_get_user_data_dir;
	const(char)* function() c_g_get_user_name;
	const(char)* function() c_g_get_user_runtime_dir;
	const(char)* function(GUserDirectory directory) c_g_get_user_special_dir;
	const(char)* function(const(char)* variable) c_g_getenv;
	char** function() c_g_listenv;
	void function(void** nullifyLocation) c_g_nullify_pointer;
	uint function(const(char)* str, GDebugKey* keys, uint nkeys) c_g_parse_debug_string;
	char* function(const(char)* fileName) c_g_path_get_basename;
	char* function(const(char)* fileName) c_g_path_get_dirname;
	int function(const(char)* fileName) c_g_path_is_absolute;
	const(char)* function(const(char)* fileName) c_g_path_skip_root;
	void function(void* pbase, int totalElems, size_t size, GCompareDataFunc compareFunc, void* userData) c_g_qsort_with_data;
	void function() c_g_reload_user_special_dirs_cache;
	void function(const(char)* applicationName) c_g_set_application_name;
	void function(const(char)* prgname) c_g_set_prgname;
	int function(const(char)* variable, const(char)* value, int overwrite) c_g_setenv;
	uint function(uint num) c_g_spaced_primes_closest;
	void function(const(char)* variable) c_g_unsetenv;

	// glib.Atomic

	int function(int* atomic, int val) c_g_atomic_int_add;
	uint function(uint* atomic, uint val) c_g_atomic_int_and;
	int function(int* atomic, int oldval, int newval) c_g_atomic_int_compare_and_exchange;
	int function(int* atomic) c_g_atomic_int_dec_and_test;
	int function(int* atomic, int val) c_g_atomic_int_exchange_and_add;
	int function(int* atomic) c_g_atomic_int_get;
	void function(int* atomic) c_g_atomic_int_inc;
	uint function(uint* atomic, uint val) c_g_atomic_int_or;
	void function(int* atomic, int newval) c_g_atomic_int_set;
	uint function(uint* atomic, uint val) c_g_atomic_int_xor;
	ptrdiff_t function(void* atomic, ptrdiff_t val) c_g_atomic_pointer_add;
	size_t function(void* atomic, size_t val) c_g_atomic_pointer_and;
	int function(void* atomic, void* oldval, void* newval) c_g_atomic_pointer_compare_and_exchange;
	void* function(void* atomic) c_g_atomic_pointer_get;
	size_t function(void* atomic, size_t val) c_g_atomic_pointer_or;
	void function(void* atomic, void* newval) c_g_atomic_pointer_set;
	size_t function(void* atomic, size_t val) c_g_atomic_pointer_xor;

	// glib.CharacterSet

	char* function(const(char)* str, ptrdiff_t len, const(char)* toCodeset, const(char)* fromCodeset, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_convert;
	GQuark function() c_g_convert_error_quark;
	char* function(const(char)* str, ptrdiff_t len, const(char)* toCodeset, const(char)* fromCodeset, const(char)* fallback, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_convert_with_fallback;
	char* function(const(char)* str, ptrdiff_t len, GIConv converter, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_convert_with_iconv;
	char* function(const(char)* filename) c_g_filename_display_basename;
	char* function(const(char)* filename) c_g_filename_display_name;
	char* function(const(char)* utf8string, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_filename_from_utf8;
	char* function(const(char)* opsysstring, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_filename_to_utf8;
	int function(char** charset) c_g_get_charset;
	char* function() c_g_get_codeset;
	int function(char*** charsets) c_g_get_filename_charsets;
	char* function(const(char)* utf8string, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_locale_from_utf8;
	char* function(const(char)* opsysstring, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err) c_g_locale_to_utf8;

	// glib.Child

	uint function(GPid pid, GChildWatchFunc funct, void* data) c_g_child_watch_add;
	uint function(int priority, GPid pid, GChildWatchFunc funct, void* data, GDestroyNotify notify) c_g_child_watch_add_full;
	GSource* function(GPid pid) c_g_child_watch_source_new;

	// glib.DataList

	void function(GData** datalist) c_g_datalist_clear;
	void function(GData** datalist, GDataForeachFunc func, void* userData) c_g_datalist_foreach;
	void* function(GData** datalist, const(char)* key) c_g_datalist_get_data;
	uint function(GData** datalist) c_g_datalist_get_flags;
	void* function(GData** datalist, GQuark keyId, GDuplicateFunc dupFunc, void* userData) c_g_datalist_id_dup_data;
	void* function(GData** datalist, GQuark keyId) c_g_datalist_id_get_data;
	void* function(GData** datalist, GQuark keyId) c_g_datalist_id_remove_no_notify;
	int function(GData** datalist, GQuark keyId, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy) c_g_datalist_id_replace_data;
	void function(GData** datalist, GQuark keyId, void* data, GDestroyNotify destroyFunc) c_g_datalist_id_set_data_full;
	void function(GData** datalist) c_g_datalist_init;
	void function(GData** datalist, uint flags) c_g_datalist_set_flags;
	void function(GData** datalist, uint flags) c_g_datalist_unset_flags;

	// glib.DataSet

	void function(void* datasetLocation) c_g_dataset_destroy;
	void function(void* datasetLocation, GDataForeachFunc func, void* userData) c_g_dataset_foreach;
	void* function(void* datasetLocation, GQuark keyId) c_g_dataset_id_get_data;
	void* function(void* datasetLocation, GQuark keyId) c_g_dataset_id_remove_no_notify;
	void function(void* datasetLocation, GQuark keyId, void* data, GDestroyNotify destroyFunc) c_g_dataset_id_set_data_full;

	// glib.FileUtils

	int function(const(char)* filename, int mode) c_g_access;
	int function(const(char)* path) c_g_chdir;
	int function(int fd, GError** err) c_g_close;
	GFileError function(int errNo) c_g_file_error_from_errno;
	GQuark function() c_g_file_error_quark;
	int function(char* filename, char** contents, size_t* length, GError** err) c_g_file_get_contents;
	int function(char* tmpl, char** nameUsed, GError** err) c_g_file_open_tmp;
	char* function(const(char)* filename, GError** err) c_g_file_read_link;
	int function(char* filename, char* contents, ptrdiff_t length, GError** err) c_g_file_set_contents;
	int function(const(char)* filename, GFileTest test) c_g_file_test;
	int function(const(char)* pathname, int mode) c_g_mkdir_with_parents;
	char* function(char* tmpl) c_g_mkdtemp;
	char* function(char* tmpl, int mode) c_g_mkdtemp_full;
	int function(char* tmpl) c_g_mkstemp;
	int function(char* tmpl, int flags, int mode) c_g_mkstemp_full;
	int function(const(char)* filename) c_g_rmdir;
	int function(const(char)* filename) c_g_unlink;

	// glib.Hostname

	int function(const(char)* hostname) c_g_hostname_is_ascii_encoded;
	int function(const(char)* hostname) c_g_hostname_is_ip_address;
	int function(const(char)* hostname) c_g_hostname_is_non_ascii;
	char* function(const(char)* hostname) c_g_hostname_to_ascii;
	char* function(const(char)* hostname) c_g_hostname_to_unicode;

	// glib.Internationalization

	const(char)* function(const(char)* domain, const(char)* msgid, int category) c_g_dcgettext;
	const(char)* function(const(char)* domain, const(char)* msgid) c_g_dgettext;
	const(char)* function(const(char)* domain, const(char)* msgid, const(char)* msgidPlural, gulong n) c_g_dngettext;
	const(char)* function(const(char)* domain, const(char)* msgctxtid, size_t msgidoffset) c_g_dpgettext;
	const(char)* function(const(char)* domain, const(char)* context, const(char)* msgid) c_g_dpgettext2;
	char** function() c_g_get_language_names;
	char** function(const(char)* locale) c_g_get_locale_variants;
	const(char)* function(const(char)* msgid, const(char)* msgval) c_g_strip_context;

	// glib.Memory

	void function(void** pp, GDestroyNotify destroy) c_g_clear_pointer;
	void function(void* mem) c_g_free;
	void* function(size_t nBytes) c_g_malloc;
	void* function(size_t nBytes) c_g_malloc0;
	void* function(size_t nBlocks, size_t nBlockBytes) c_g_malloc0_n;
	void* function(size_t nBlocks, size_t nBlockBytes) c_g_malloc_n;
	int function() c_g_mem_is_system_malloc;
	void function() c_g_mem_profile;
	void function(GMemVTable* vtable) c_g_mem_set_vtable;
	void* function(void* mem, uint byteSize) c_g_memdup;
	void* function(void* mem, size_t nBytes) c_g_realloc;
	void* function(void* mem, size_t nBlocks, size_t nBlockBytes) c_g_realloc_n;
	void* function(size_t nBytes) c_g_try_malloc;
	void* function(size_t nBytes) c_g_try_malloc0;
	void* function(size_t nBlocks, size_t nBlockBytes) c_g_try_malloc0_n;
	void* function(size_t nBlocks, size_t nBlockBytes) c_g_try_malloc_n;
	void* function(void* mem, size_t nBytes) c_g_try_realloc;
	void* function(void* mem, size_t nBlocks, size_t nBlockBytes) c_g_try_realloc_n;

	// glib.MessageLog

	void function(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* format, ... ) c_g_log;
	void function(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* message, void* unusedData) c_g_log_default_handler;
	void function(const(char)* logDomain, uint handlerId) c_g_log_remove_handler;
	GLogLevelFlags function(GLogLevelFlags fatalMask) c_g_log_set_always_fatal;
	GLogFunc function(GLogFunc logFunc, void* userData) c_g_log_set_default_handler;
	GLogLevelFlags function(const(char)* logDomain, GLogLevelFlags fatalMask) c_g_log_set_fatal_mask;
	uint function(const(char)* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData) c_g_log_set_handler;
	uint function(const(char)* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData, GDestroyNotify destroy) c_g_log_set_handler_full;
	void function(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* format, void* args) c_g_logv;

	// glib.Messages

	void function(const(char)* prgName) c_g_on_error_query;
	void function(const(char)* prgName) c_g_on_error_stack_trace;
	void function(const(char)* format, ... ) c_g_print;
	void function(const(char)* format, ... ) c_g_printerr;
	GPrintFunc function(GPrintFunc func) c_g_set_print_handler;
	GPrintFunc function(GPrintFunc func) c_g_set_printerr_handler;

	// glib.Quark

	const(char)* function(const(char)* str) c_g_intern_static_string;
	const(char)* function(const(char)* str) c_g_intern_string;
	GQuark function(const(char)* str) c_g_quark_from_static_string;
	GQuark function(const(char)* str) c_g_quark_from_string;
	const(char)* function(GQuark quark) c_g_quark_to_string;
	GQuark function(const(char)* str) c_g_quark_try_string;

	// glib.ShellUtils

	GQuark function() c_g_shell_error_quark;
	int function(const(char)* commandLine, int* argcp, char*** argvp, GError** err) c_g_shell_parse_argv;
	char* function(const(char)* unquotedString) c_g_shell_quote;
	char* function(const(char)* quotedString, GError** err) c_g_shell_unquote;

	// glib.Unicode

	wchar* function(dchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_ucs4_to_utf16;
	char* function(dchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_ucs4_to_utf8;
	GUnicodeBreakType function(dchar c) c_g_unichar_break_type;
	int function(dchar uc) c_g_unichar_combining_class;
	int function(dchar a, dchar b, dchar* ch) c_g_unichar_compose;
	int function(dchar ch, dchar* a, dchar* b) c_g_unichar_decompose;
	int function(dchar c) c_g_unichar_digit_value;
	size_t function(dchar ch, int compat, dchar* result, size_t resultLen) c_g_unichar_fully_decompose;
	int function(dchar ch, dchar* mirroredCh) c_g_unichar_get_mirror_char;
	GUnicodeScript function(dchar ch) c_g_unichar_get_script;
	int function(dchar c) c_g_unichar_isalnum;
	int function(dchar c) c_g_unichar_isalpha;
	int function(dchar c) c_g_unichar_iscntrl;
	int function(dchar c) c_g_unichar_isdefined;
	int function(dchar c) c_g_unichar_isdigit;
	int function(dchar c) c_g_unichar_isgraph;
	int function(dchar c) c_g_unichar_islower;
	int function(dchar c) c_g_unichar_ismark;
	int function(dchar c) c_g_unichar_isprint;
	int function(dchar c) c_g_unichar_ispunct;
	int function(dchar c) c_g_unichar_isspace;
	int function(dchar c) c_g_unichar_istitle;
	int function(dchar c) c_g_unichar_isupper;
	int function(dchar c) c_g_unichar_iswide;
	int function(dchar c) c_g_unichar_iswide_cjk;
	int function(dchar c) c_g_unichar_isxdigit;
	int function(dchar c) c_g_unichar_iszerowidth;
	int function(dchar c, char* outbuf) c_g_unichar_to_utf8;
	dchar function(dchar c) c_g_unichar_tolower;
	dchar function(dchar c) c_g_unichar_totitle;
	dchar function(dchar c) c_g_unichar_toupper;
	GUnicodeType function(dchar c) c_g_unichar_type;
	int function(dchar ch) c_g_unichar_validate;
	int function(dchar c) c_g_unichar_xdigit_value;
	dchar* function(dchar ch, size_t* resultLen) c_g_unicode_canonical_decomposition;
	void function(dchar* str, size_t len) c_g_unicode_canonical_ordering;
	GUnicodeScript function(uint iso15924) c_g_unicode_script_from_iso15924;
	uint function(GUnicodeScript script) c_g_unicode_script_to_iso15924;
	dchar* function(wchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_utf16_to_ucs4;
	char* function(wchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_utf16_to_utf8;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_casefold;
	int function(const(char)* str1, const(char)* str2) c_g_utf8_collate;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_collate_key;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_collate_key_for_filename;
	char* function(const(char)* p, const(char)* end) c_g_utf8_find_next_char;
	char* function(const(char)* str, const(char)* p) c_g_utf8_find_prev_char;
	dchar function(const(char)* p) c_g_utf8_get_char;
	dchar function(const(char)* p, ptrdiff_t maxLen) c_g_utf8_get_char_validated;
	char* function(const(char)* str, ptrdiff_t len, GNormalizeMode mode) c_g_utf8_normalize;
	char* function(const(char)* str, glong offset) c_g_utf8_offset_to_pointer;
	glong function(const(char)* str, const(char)* pos) c_g_utf8_pointer_to_offset;
	char* function(const(char)* p) c_g_utf8_prev_char;
	char* function(const(char)* p, ptrdiff_t len, dchar c) c_g_utf8_strchr;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_strdown;
	glong function(const(char)* p, ptrdiff_t max) c_g_utf8_strlen;
	char* function(char* dest, const(char)* src, size_t n) c_g_utf8_strncpy;
	char* function(const(char)* p, ptrdiff_t len, dchar c) c_g_utf8_strrchr;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_strreverse;
	char* function(const(char)* str, ptrdiff_t len) c_g_utf8_strup;
	char* function(const(char)* str, glong startPos, glong endPos) c_g_utf8_substring;
	dchar* function(const(char)* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_utf8_to_ucs4;
	dchar* function(const(char)* str, glong len, glong* itemsWritten) c_g_utf8_to_ucs4_fast;
	wchar* function(const(char)* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err) c_g_utf8_to_utf16;
	int function(char* str, ptrdiff_t maxLen, char** end) c_g_utf8_validate;

	// glib.UnixUtils

	GQuark function() c_g_unix_error_quark;
	uint function(int fd, GIOCondition condition, GUnixFDSourceFunc funct, void* userData) c_g_unix_fd_add;
	uint function(int priority, int fd, GIOCondition condition, GUnixFDSourceFunc funct, void* userData, GDestroyNotify notify) c_g_unix_fd_add_full;
	GSource* function(int fd, GIOCondition condition) c_g_unix_fd_source_new;
	int function(int* fds, int flags, GError** err) c_g_unix_open_pipe;
	int function(int fd, int nonblock, GError** err) c_g_unix_set_fd_nonblocking;
	uint function(int signum, GSourceFunc handler, void* userData) c_g_unix_signal_add;
	uint function(int priority, int signum, GSourceFunc handler, void* userData, GDestroyNotify notify) c_g_unix_signal_add_full;
	GSource* function(int signum) c_g_unix_signal_source_new;

	// glib.URI

	char* function(const(char)* uri, char** hostname, GError** err) c_g_filename_from_uri;
	char* function(const(char)* filename, const(char)* hostname, GError** err) c_g_filename_to_uri;
	char* function(const(char)* unescaped, const(char)* reservedCharsAllowed, int allowUtf8) c_g_uri_escape_string;
	char** function(const(char)* uriList) c_g_uri_list_extract_uris;
	char* function(const(char)* uri) c_g_uri_parse_scheme;
	char* function(const(char)* escapedString, const(char)* escapedStringEnd, const(char)* illegalCharacters) c_g_uri_unescape_segment;
	char* function(const(char)* escapedString, const(char)* illegalCharacters) c_g_uri_unescape_string;

	// glib.Version

	const(char)* function(uint requiredMajor, uint requiredMinor, uint requiredMicro) c_glib_check_version;
}


// glib.ArrayG

alias c_g_array_append_vals g_array_append_vals;
alias c_g_array_free g_array_free;
alias c_g_array_get_element_size g_array_get_element_size;
alias c_g_array_insert_vals g_array_insert_vals;
alias c_g_array_new g_array_new;
alias c_g_array_prepend_vals g_array_prepend_vals;
alias c_g_array_ref g_array_ref;
alias c_g_array_remove_index g_array_remove_index;
alias c_g_array_remove_index_fast g_array_remove_index_fast;
alias c_g_array_remove_range g_array_remove_range;
alias c_g_array_set_clear_func g_array_set_clear_func;
alias c_g_array_set_size g_array_set_size;
alias c_g_array_sized_new g_array_sized_new;
alias c_g_array_sort g_array_sort;
alias c_g_array_sort_with_data g_array_sort_with_data;
alias c_g_array_unref g_array_unref;

// glib.AsyncQueue

alias c_g_async_queue_length g_async_queue_length;
alias c_g_async_queue_length_unlocked g_async_queue_length_unlocked;
alias c_g_async_queue_lock g_async_queue_lock;
alias c_g_async_queue_pop g_async_queue_pop;
alias c_g_async_queue_pop_unlocked g_async_queue_pop_unlocked;
alias c_g_async_queue_push g_async_queue_push;
alias c_g_async_queue_push_front g_async_queue_push_front;
alias c_g_async_queue_push_front_unlocked g_async_queue_push_front_unlocked;
alias c_g_async_queue_push_sorted g_async_queue_push_sorted;
alias c_g_async_queue_push_sorted_unlocked g_async_queue_push_sorted_unlocked;
alias c_g_async_queue_push_unlocked g_async_queue_push_unlocked;
alias c_g_async_queue_ref g_async_queue_ref;
alias c_g_async_queue_ref_unlocked g_async_queue_ref_unlocked;
alias c_g_async_queue_remove g_async_queue_remove;
alias c_g_async_queue_remove_unlocked g_async_queue_remove_unlocked;
alias c_g_async_queue_sort g_async_queue_sort;
alias c_g_async_queue_sort_unlocked g_async_queue_sort_unlocked;
alias c_g_async_queue_timed_pop g_async_queue_timed_pop;
alias c_g_async_queue_timed_pop_unlocked g_async_queue_timed_pop_unlocked;
alias c_g_async_queue_timeout_pop g_async_queue_timeout_pop;
alias c_g_async_queue_timeout_pop_unlocked g_async_queue_timeout_pop_unlocked;
alias c_g_async_queue_try_pop g_async_queue_try_pop;
alias c_g_async_queue_try_pop_unlocked g_async_queue_try_pop_unlocked;
alias c_g_async_queue_unlock g_async_queue_unlock;
alias c_g_async_queue_unref g_async_queue_unref;
alias c_g_async_queue_unref_and_unlock g_async_queue_unref_and_unlock;
alias c_g_async_queue_new g_async_queue_new;
alias c_g_async_queue_new_full g_async_queue_new_full;

// glib.BookmarkFile

alias c_g_bookmark_file_add_application g_bookmark_file_add_application;
alias c_g_bookmark_file_add_group g_bookmark_file_add_group;
alias c_g_bookmark_file_free g_bookmark_file_free;
alias c_g_bookmark_file_get_added g_bookmark_file_get_added;
alias c_g_bookmark_file_get_app_info g_bookmark_file_get_app_info;
alias c_g_bookmark_file_get_applications g_bookmark_file_get_applications;
alias c_g_bookmark_file_get_description g_bookmark_file_get_description;
alias c_g_bookmark_file_get_groups g_bookmark_file_get_groups;
alias c_g_bookmark_file_get_icon g_bookmark_file_get_icon;
alias c_g_bookmark_file_get_is_private g_bookmark_file_get_is_private;
alias c_g_bookmark_file_get_mime_type g_bookmark_file_get_mime_type;
alias c_g_bookmark_file_get_modified g_bookmark_file_get_modified;
alias c_g_bookmark_file_get_size g_bookmark_file_get_size;
alias c_g_bookmark_file_get_title g_bookmark_file_get_title;
alias c_g_bookmark_file_get_uris g_bookmark_file_get_uris;
alias c_g_bookmark_file_get_visited g_bookmark_file_get_visited;
alias c_g_bookmark_file_has_application g_bookmark_file_has_application;
alias c_g_bookmark_file_has_group g_bookmark_file_has_group;
alias c_g_bookmark_file_has_item g_bookmark_file_has_item;
alias c_g_bookmark_file_load_from_data g_bookmark_file_load_from_data;
alias c_g_bookmark_file_load_from_data_dirs g_bookmark_file_load_from_data_dirs;
alias c_g_bookmark_file_load_from_file g_bookmark_file_load_from_file;
alias c_g_bookmark_file_move_item g_bookmark_file_move_item;
alias c_g_bookmark_file_remove_application g_bookmark_file_remove_application;
alias c_g_bookmark_file_remove_group g_bookmark_file_remove_group;
alias c_g_bookmark_file_remove_item g_bookmark_file_remove_item;
alias c_g_bookmark_file_set_added g_bookmark_file_set_added;
alias c_g_bookmark_file_set_app_info g_bookmark_file_set_app_info;
alias c_g_bookmark_file_set_description g_bookmark_file_set_description;
alias c_g_bookmark_file_set_groups g_bookmark_file_set_groups;
alias c_g_bookmark_file_set_icon g_bookmark_file_set_icon;
alias c_g_bookmark_file_set_is_private g_bookmark_file_set_is_private;
alias c_g_bookmark_file_set_mime_type g_bookmark_file_set_mime_type;
alias c_g_bookmark_file_set_modified g_bookmark_file_set_modified;
alias c_g_bookmark_file_set_title g_bookmark_file_set_title;
alias c_g_bookmark_file_set_visited g_bookmark_file_set_visited;
alias c_g_bookmark_file_to_data g_bookmark_file_to_data;
alias c_g_bookmark_file_to_file g_bookmark_file_to_file;
alias c_g_bookmark_file_error_quark g_bookmark_file_error_quark;
alias c_g_bookmark_file_new g_bookmark_file_new;

// glib.ByteArray

alias c_g_byte_array_append g_byte_array_append;
alias c_g_byte_array_free g_byte_array_free;
alias c_g_byte_array_free_to_bytes g_byte_array_free_to_bytes;
alias c_g_byte_array_new g_byte_array_new;
alias c_g_byte_array_new_take g_byte_array_new_take;
alias c_g_byte_array_prepend g_byte_array_prepend;
alias c_g_byte_array_ref g_byte_array_ref;
alias c_g_byte_array_remove_index g_byte_array_remove_index;
alias c_g_byte_array_remove_index_fast g_byte_array_remove_index_fast;
alias c_g_byte_array_remove_range g_byte_array_remove_range;
alias c_g_byte_array_set_size g_byte_array_set_size;
alias c_g_byte_array_sized_new g_byte_array_sized_new;
alias c_g_byte_array_sort g_byte_array_sort;
alias c_g_byte_array_sort_with_data g_byte_array_sort_with_data;
alias c_g_byte_array_unref g_byte_array_unref;

// glib.Bytes

alias c_g_bytes_new g_bytes_new;
alias c_g_bytes_new_static g_bytes_new_static;
alias c_g_bytes_new_take g_bytes_new_take;
alias c_g_bytes_new_with_free_func g_bytes_new_with_free_func;
alias c_g_bytes_compare g_bytes_compare;
alias c_g_bytes_equal g_bytes_equal;
alias c_g_bytes_get_data g_bytes_get_data;
alias c_g_bytes_get_size g_bytes_get_size;
alias c_g_bytes_hash g_bytes_hash;
alias c_g_bytes_new_from_bytes g_bytes_new_from_bytes;
alias c_g_bytes_ref g_bytes_ref;
alias c_g_bytes_unref g_bytes_unref;
alias c_g_bytes_unref_to_array g_bytes_unref_to_array;
alias c_g_bytes_unref_to_data g_bytes_unref_to_data;

// glib.Checksum

alias c_g_checksum_new g_checksum_new;
alias c_g_checksum_copy g_checksum_copy;
alias c_g_checksum_free g_checksum_free;
alias c_g_checksum_get_digest g_checksum_get_digest;
alias c_g_checksum_get_string g_checksum_get_string;
alias c_g_checksum_reset g_checksum_reset;
alias c_g_checksum_update g_checksum_update;
alias c_g_checksum_type_get_length g_checksum_type_get_length;
alias c_g_compute_checksum_for_bytes g_compute_checksum_for_bytes;
alias c_g_compute_checksum_for_data g_compute_checksum_for_data;
alias c_g_compute_checksum_for_string g_compute_checksum_for_string;

// glib.Cond

alias c_g_cond_broadcast g_cond_broadcast;
alias c_g_cond_clear g_cond_clear;
alias c_g_cond_init g_cond_init;
alias c_g_cond_signal g_cond_signal;
alias c_g_cond_wait g_cond_wait;
alias c_g_cond_wait_until g_cond_wait_until;

// glib.Date

alias c_g_date_new g_date_new;
alias c_g_date_new_dmy g_date_new_dmy;
alias c_g_date_new_julian g_date_new_julian;
alias c_g_date_add_days g_date_add_days;
alias c_g_date_add_months g_date_add_months;
alias c_g_date_add_years g_date_add_years;
alias c_g_date_clamp g_date_clamp;
alias c_g_date_clear g_date_clear;
alias c_g_date_compare g_date_compare;
alias c_g_date_days_between g_date_days_between;
alias c_g_date_free g_date_free;
alias c_g_date_get_day g_date_get_day;
alias c_g_date_get_day_of_year g_date_get_day_of_year;
alias c_g_date_get_iso8601_week_of_year g_date_get_iso8601_week_of_year;
alias c_g_date_get_julian g_date_get_julian;
alias c_g_date_get_monday_week_of_year g_date_get_monday_week_of_year;
alias c_g_date_get_month g_date_get_month;
alias c_g_date_get_sunday_week_of_year g_date_get_sunday_week_of_year;
alias c_g_date_get_weekday g_date_get_weekday;
alias c_g_date_get_year g_date_get_year;
alias c_g_date_is_first_of_month g_date_is_first_of_month;
alias c_g_date_is_last_of_month g_date_is_last_of_month;
alias c_g_date_order g_date_order;
alias c_g_date_set_day g_date_set_day;
alias c_g_date_set_dmy g_date_set_dmy;
alias c_g_date_set_julian g_date_set_julian;
alias c_g_date_set_month g_date_set_month;
alias c_g_date_set_parse g_date_set_parse;
alias c_g_date_set_time g_date_set_time;
alias c_g_date_set_time_t g_date_set_time_t;
alias c_g_date_set_time_val g_date_set_time_val;
alias c_g_date_set_year g_date_set_year;
alias c_g_date_subtract_days g_date_subtract_days;
alias c_g_date_subtract_months g_date_subtract_months;
alias c_g_date_subtract_years g_date_subtract_years;
alias c_g_date_to_struct_tm g_date_to_struct_tm;
alias c_g_date_valid g_date_valid;
alias c_g_date_get_days_in_month g_date_get_days_in_month;
alias c_g_date_get_monday_weeks_in_year g_date_get_monday_weeks_in_year;
alias c_g_date_get_sunday_weeks_in_year g_date_get_sunday_weeks_in_year;
alias c_g_date_is_leap_year g_date_is_leap_year;
alias c_g_date_strftime g_date_strftime;
alias c_g_date_valid_day g_date_valid_day;
alias c_g_date_valid_dmy g_date_valid_dmy;
alias c_g_date_valid_julian g_date_valid_julian;
alias c_g_date_valid_month g_date_valid_month;
alias c_g_date_valid_weekday g_date_valid_weekday;
alias c_g_date_valid_year g_date_valid_year;

// glib.DateTime

alias c_g_date_time_new g_date_time_new;
alias c_g_date_time_new_from_timeval_local g_date_time_new_from_timeval_local;
alias c_g_date_time_new_from_timeval_utc g_date_time_new_from_timeval_utc;
alias c_g_date_time_new_from_unix_local g_date_time_new_from_unix_local;
alias c_g_date_time_new_from_unix_utc g_date_time_new_from_unix_utc;
alias c_g_date_time_new_local g_date_time_new_local;
alias c_g_date_time_new_now g_date_time_new_now;
alias c_g_date_time_new_now_local g_date_time_new_now_local;
alias c_g_date_time_new_now_utc g_date_time_new_now_utc;
alias c_g_date_time_new_utc g_date_time_new_utc;
alias c_g_date_time_add g_date_time_add;
alias c_g_date_time_add_days g_date_time_add_days;
alias c_g_date_time_add_full g_date_time_add_full;
alias c_g_date_time_add_hours g_date_time_add_hours;
alias c_g_date_time_add_minutes g_date_time_add_minutes;
alias c_g_date_time_add_months g_date_time_add_months;
alias c_g_date_time_add_seconds g_date_time_add_seconds;
alias c_g_date_time_add_weeks g_date_time_add_weeks;
alias c_g_date_time_add_years g_date_time_add_years;
alias c_g_date_time_difference g_date_time_difference;
alias c_g_date_time_format g_date_time_format;
alias c_g_date_time_get_day_of_month g_date_time_get_day_of_month;
alias c_g_date_time_get_day_of_week g_date_time_get_day_of_week;
alias c_g_date_time_get_day_of_year g_date_time_get_day_of_year;
alias c_g_date_time_get_hour g_date_time_get_hour;
alias c_g_date_time_get_microsecond g_date_time_get_microsecond;
alias c_g_date_time_get_minute g_date_time_get_minute;
alias c_g_date_time_get_month g_date_time_get_month;
alias c_g_date_time_get_second g_date_time_get_second;
alias c_g_date_time_get_seconds g_date_time_get_seconds;
alias c_g_date_time_get_timezone_abbreviation g_date_time_get_timezone_abbreviation;
alias c_g_date_time_get_utc_offset g_date_time_get_utc_offset;
alias c_g_date_time_get_week_numbering_year g_date_time_get_week_numbering_year;
alias c_g_date_time_get_week_of_year g_date_time_get_week_of_year;
alias c_g_date_time_get_year g_date_time_get_year;
alias c_g_date_time_get_ymd g_date_time_get_ymd;
alias c_g_date_time_is_daylight_savings g_date_time_is_daylight_savings;
alias c_g_date_time_ref g_date_time_ref;
alias c_g_date_time_to_local g_date_time_to_local;
alias c_g_date_time_to_timeval g_date_time_to_timeval;
alias c_g_date_time_to_timezone g_date_time_to_timezone;
alias c_g_date_time_to_unix g_date_time_to_unix;
alias c_g_date_time_to_utc g_date_time_to_utc;
alias c_g_date_time_unref g_date_time_unref;
alias c_g_date_time_compare g_date_time_compare;
alias c_g_date_time_equal g_date_time_equal;
alias c_g_date_time_hash g_date_time_hash;

// glib.Directory

alias c_g_dir_close g_dir_close;
alias c_g_dir_read_name g_dir_read_name;
alias c_g_dir_rewind g_dir_rewind;
alias c_g_dir_make_tmp g_dir_make_tmp;
alias c_g_dir_open g_dir_open;

// glib.ErrorG

alias c_g_error_new g_error_new;
alias c_g_error_new_literal g_error_new_literal;
alias c_g_error_new_valist g_error_new_valist;
alias c_g_error_copy g_error_copy;
alias c_g_error_free g_error_free;
alias c_g_error_matches g_error_matches;
alias c_g_propagate_error g_propagate_error;
alias c_g_set_error_literal g_set_error_literal;
alias c_g_prefix_error g_prefix_error;
alias c_g_propagate_prefixed_error g_propagate_prefixed_error;
alias c_g_set_error g_set_error;

// glib.HashTable

alias c_g_hash_table_add g_hash_table_add;
alias c_g_hash_table_contains g_hash_table_contains;
alias c_g_hash_table_destroy g_hash_table_destroy;
alias c_g_hash_table_find g_hash_table_find;
alias c_g_hash_table_foreach g_hash_table_foreach;
alias c_g_hash_table_foreach_remove g_hash_table_foreach_remove;
alias c_g_hash_table_foreach_steal g_hash_table_foreach_steal;
alias c_g_hash_table_get_keys g_hash_table_get_keys;
alias c_g_hash_table_get_keys_as_array g_hash_table_get_keys_as_array;
alias c_g_hash_table_get_values g_hash_table_get_values;
alias c_g_hash_table_insert g_hash_table_insert;
alias c_g_hash_table_lookup g_hash_table_lookup;
alias c_g_hash_table_lookup_extended g_hash_table_lookup_extended;
alias c_g_hash_table_new g_hash_table_new;
alias c_g_hash_table_new_full g_hash_table_new_full;
alias c_g_hash_table_ref g_hash_table_ref;
alias c_g_hash_table_remove g_hash_table_remove;
alias c_g_hash_table_remove_all g_hash_table_remove_all;
alias c_g_hash_table_replace g_hash_table_replace;
alias c_g_hash_table_size g_hash_table_size;
alias c_g_hash_table_steal g_hash_table_steal;
alias c_g_hash_table_steal_all g_hash_table_steal_all;
alias c_g_hash_table_unref g_hash_table_unref;
alias c_g_direct_equal g_direct_equal;
alias c_g_direct_hash g_direct_hash;
alias c_g_double_equal g_double_equal;
alias c_g_double_hash g_double_hash;
alias c_g_int64_equal g_int64_equal;
alias c_g_int64_hash g_int64_hash;
alias c_g_int_equal g_int_equal;
alias c_g_int_hash g_int_hash;
alias c_g_str_equal g_str_equal;
alias c_g_str_hash g_str_hash;

// glib.HashTableIter

alias c_g_hash_table_iter_get_hash_table g_hash_table_iter_get_hash_table;
alias c_g_hash_table_iter_init g_hash_table_iter_init;
alias c_g_hash_table_iter_next g_hash_table_iter_next;
alias c_g_hash_table_iter_remove g_hash_table_iter_remove;
alias c_g_hash_table_iter_replace g_hash_table_iter_replace;
alias c_g_hash_table_iter_steal g_hash_table_iter_steal;

// glib.Hmac

alias c_g_hmac_copy g_hmac_copy;
alias c_g_hmac_get_digest g_hmac_get_digest;
alias c_g_hmac_get_string g_hmac_get_string;
alias c_g_hmac_ref g_hmac_ref;
alias c_g_hmac_unref g_hmac_unref;
alias c_g_hmac_update g_hmac_update;
alias c_g_hmac_new g_hmac_new;
alias c_g_compute_hmac_for_data g_compute_hmac_for_data;
alias c_g_compute_hmac_for_string g_compute_hmac_for_string;

// glib.Hook

alias c_g_hook_compare_ids g_hook_compare_ids;
alias c_g_hook_alloc g_hook_alloc;
alias c_g_hook_destroy g_hook_destroy;
alias c_g_hook_destroy_link g_hook_destroy_link;
alias c_g_hook_find g_hook_find;
alias c_g_hook_find_data g_hook_find_data;
alias c_g_hook_find_func g_hook_find_func;
alias c_g_hook_find_func_data g_hook_find_func_data;
alias c_g_hook_first_valid g_hook_first_valid;
alias c_g_hook_free g_hook_free;
alias c_g_hook_get g_hook_get;
alias c_g_hook_insert_before g_hook_insert_before;
alias c_g_hook_insert_sorted g_hook_insert_sorted;
alias c_g_hook_next_valid g_hook_next_valid;
alias c_g_hook_prepend g_hook_prepend;
alias c_g_hook_ref g_hook_ref;
alias c_g_hook_unref g_hook_unref;

// glib.HookList

alias c_g_hook_list_clear g_hook_list_clear;
alias c_g_hook_list_init g_hook_list_init;
alias c_g_hook_list_invoke g_hook_list_invoke;
alias c_g_hook_list_invoke_check g_hook_list_invoke_check;
alias c_g_hook_list_marshal g_hook_list_marshal;
alias c_g_hook_list_marshal_check g_hook_list_marshal_check;

// glib.IConv

alias c_g_iconv g_iconv;
alias c_g_iconv_close g_iconv_close;
alias c_g_iconv_open g_iconv_open;

// glib.IOChannel

alias c_g_io_channel_new_file g_io_channel_new_file;
alias c_g_io_channel_unix_new g_io_channel_unix_new;
alias c_g_io_channel_close g_io_channel_close;
alias c_g_io_channel_flush g_io_channel_flush;
alias c_g_io_channel_get_buffer_condition g_io_channel_get_buffer_condition;
alias c_g_io_channel_get_buffer_size g_io_channel_get_buffer_size;
alias c_g_io_channel_get_buffered g_io_channel_get_buffered;
alias c_g_io_channel_get_close_on_unref g_io_channel_get_close_on_unref;
alias c_g_io_channel_get_encoding g_io_channel_get_encoding;
alias c_g_io_channel_get_flags g_io_channel_get_flags;
alias c_g_io_channel_get_line_term g_io_channel_get_line_term;
alias c_g_io_channel_init g_io_channel_init;
alias c_g_io_channel_read g_io_channel_read;
alias c_g_io_channel_read_chars g_io_channel_read_chars;
alias c_g_io_channel_read_line g_io_channel_read_line;
alias c_g_io_channel_read_line_string g_io_channel_read_line_string;
alias c_g_io_channel_read_to_end g_io_channel_read_to_end;
alias c_g_io_channel_read_unichar g_io_channel_read_unichar;
alias c_g_io_channel_ref g_io_channel_ref;
alias c_g_io_channel_seek g_io_channel_seek;
alias c_g_io_channel_seek_position g_io_channel_seek_position;
alias c_g_io_channel_set_buffer_size g_io_channel_set_buffer_size;
alias c_g_io_channel_set_buffered g_io_channel_set_buffered;
alias c_g_io_channel_set_close_on_unref g_io_channel_set_close_on_unref;
alias c_g_io_channel_set_encoding g_io_channel_set_encoding;
alias c_g_io_channel_set_flags g_io_channel_set_flags;
alias c_g_io_channel_set_line_term g_io_channel_set_line_term;
alias c_g_io_channel_shutdown g_io_channel_shutdown;
alias c_g_io_channel_unix_get_fd g_io_channel_unix_get_fd;
alias c_g_io_channel_unref g_io_channel_unref;
alias c_g_io_channel_write g_io_channel_write;
alias c_g_io_channel_write_chars g_io_channel_write_chars;
alias c_g_io_channel_write_unichar g_io_channel_write_unichar;
alias c_g_io_channel_error_from_errno g_io_channel_error_from_errno;
alias c_g_io_channel_error_quark g_io_channel_error_quark;
alias c_g_io_add_watch g_io_add_watch;
alias c_g_io_add_watch_full g_io_add_watch_full;
alias c_g_io_create_watch g_io_create_watch;

// glib.KeyFile

alias c_g_key_file_new g_key_file_new;
alias c_g_key_file_free g_key_file_free;
alias c_g_key_file_get_boolean g_key_file_get_boolean;
alias c_g_key_file_get_boolean_list g_key_file_get_boolean_list;
alias c_g_key_file_get_comment g_key_file_get_comment;
alias c_g_key_file_get_double g_key_file_get_double;
alias c_g_key_file_get_double_list g_key_file_get_double_list;
alias c_g_key_file_get_groups g_key_file_get_groups;
alias c_g_key_file_get_int64 g_key_file_get_int64;
alias c_g_key_file_get_integer g_key_file_get_integer;
alias c_g_key_file_get_integer_list g_key_file_get_integer_list;
alias c_g_key_file_get_keys g_key_file_get_keys;
alias c_g_key_file_get_locale_string g_key_file_get_locale_string;
alias c_g_key_file_get_locale_string_list g_key_file_get_locale_string_list;
alias c_g_key_file_get_start_group g_key_file_get_start_group;
alias c_g_key_file_get_string g_key_file_get_string;
alias c_g_key_file_get_string_list g_key_file_get_string_list;
alias c_g_key_file_get_uint64 g_key_file_get_uint64;
alias c_g_key_file_get_value g_key_file_get_value;
alias c_g_key_file_has_group g_key_file_has_group;
alias c_g_key_file_has_key g_key_file_has_key;
alias c_g_key_file_load_from_data g_key_file_load_from_data;
alias c_g_key_file_load_from_data_dirs g_key_file_load_from_data_dirs;
alias c_g_key_file_load_from_dirs g_key_file_load_from_dirs;
alias c_g_key_file_load_from_file g_key_file_load_from_file;
alias c_g_key_file_ref g_key_file_ref;
alias c_g_key_file_remove_comment g_key_file_remove_comment;
alias c_g_key_file_remove_group g_key_file_remove_group;
alias c_g_key_file_remove_key g_key_file_remove_key;
alias c_g_key_file_save_to_file g_key_file_save_to_file;
alias c_g_key_file_set_boolean g_key_file_set_boolean;
alias c_g_key_file_set_boolean_list g_key_file_set_boolean_list;
alias c_g_key_file_set_comment g_key_file_set_comment;
alias c_g_key_file_set_double g_key_file_set_double;
alias c_g_key_file_set_double_list g_key_file_set_double_list;
alias c_g_key_file_set_int64 g_key_file_set_int64;
alias c_g_key_file_set_integer g_key_file_set_integer;
alias c_g_key_file_set_integer_list g_key_file_set_integer_list;
alias c_g_key_file_set_list_separator g_key_file_set_list_separator;
alias c_g_key_file_set_locale_string g_key_file_set_locale_string;
alias c_g_key_file_set_locale_string_list g_key_file_set_locale_string_list;
alias c_g_key_file_set_string g_key_file_set_string;
alias c_g_key_file_set_string_list g_key_file_set_string_list;
alias c_g_key_file_set_uint64 g_key_file_set_uint64;
alias c_g_key_file_set_value g_key_file_set_value;
alias c_g_key_file_to_data g_key_file_to_data;
alias c_g_key_file_unref g_key_file_unref;
alias c_g_key_file_error_quark g_key_file_error_quark;

// glib.ListG

alias c_g_list_alloc g_list_alloc;
alias c_g_list_append g_list_append;
alias c_g_list_concat g_list_concat;
alias c_g_list_copy g_list_copy;
alias c_g_list_copy_deep g_list_copy_deep;
alias c_g_list_delete_link g_list_delete_link;
alias c_g_list_find g_list_find;
alias c_g_list_find_custom g_list_find_custom;
alias c_g_list_first g_list_first;
alias c_g_list_foreach g_list_foreach;
alias c_g_list_free g_list_free;
alias c_g_list_free_1 g_list_free_1;
alias c_g_list_free_full g_list_free_full;
alias c_g_list_index g_list_index;
alias c_g_list_insert g_list_insert;
alias c_g_list_insert_before g_list_insert_before;
alias c_g_list_insert_sorted g_list_insert_sorted;
alias c_g_list_insert_sorted_with_data g_list_insert_sorted_with_data;
alias c_g_list_last g_list_last;
alias c_g_list_length g_list_length;
alias c_g_list_nth g_list_nth;
alias c_g_list_nth_data g_list_nth_data;
alias c_g_list_nth_prev g_list_nth_prev;
alias c_g_list_position g_list_position;
alias c_g_list_prepend g_list_prepend;
alias c_g_list_remove g_list_remove;
alias c_g_list_remove_all g_list_remove_all;
alias c_g_list_remove_link g_list_remove_link;
alias c_g_list_reverse g_list_reverse;
alias c_g_list_sort g_list_sort;
alias c_g_list_sort_with_data g_list_sort_with_data;

// glib.MainContext

alias c_g_main_context_new g_main_context_new;
alias c_g_main_context_acquire g_main_context_acquire;
alias c_g_main_context_add_poll g_main_context_add_poll;
alias c_g_main_context_check g_main_context_check;
alias c_g_main_context_dispatch g_main_context_dispatch;
alias c_g_main_context_find_source_by_funcs_user_data g_main_context_find_source_by_funcs_user_data;
alias c_g_main_context_find_source_by_id g_main_context_find_source_by_id;
alias c_g_main_context_find_source_by_user_data g_main_context_find_source_by_user_data;
alias c_g_main_context_get_poll_func g_main_context_get_poll_func;
alias c_g_main_context_invoke g_main_context_invoke;
alias c_g_main_context_invoke_full g_main_context_invoke_full;
alias c_g_main_context_is_owner g_main_context_is_owner;
alias c_g_main_context_iteration g_main_context_iteration;
alias c_g_main_context_pending g_main_context_pending;
alias c_g_main_context_pop_thread_default g_main_context_pop_thread_default;
alias c_g_main_context_prepare g_main_context_prepare;
alias c_g_main_context_push_thread_default g_main_context_push_thread_default;
alias c_g_main_context_query g_main_context_query;
alias c_g_main_context_ref g_main_context_ref;
alias c_g_main_context_release g_main_context_release;
alias c_g_main_context_remove_poll g_main_context_remove_poll;
alias c_g_main_context_set_poll_func g_main_context_set_poll_func;
alias c_g_main_context_unref g_main_context_unref;
alias c_g_main_context_wait g_main_context_wait;
alias c_g_main_context_wakeup g_main_context_wakeup;
alias c_g_main_context_default g_main_context_default;
alias c_g_main_context_get_thread_default g_main_context_get_thread_default;
alias c_g_main_context_ref_thread_default g_main_context_ref_thread_default;

// glib.MainLoop

alias c_g_main_loop_new g_main_loop_new;
alias c_g_main_loop_get_context g_main_loop_get_context;
alias c_g_main_loop_is_running g_main_loop_is_running;
alias c_g_main_loop_quit g_main_loop_quit;
alias c_g_main_loop_ref g_main_loop_ref;
alias c_g_main_loop_run g_main_loop_run;
alias c_g_main_loop_unref g_main_loop_unref;
alias c_g_main_current_source g_main_current_source;
alias c_g_main_depth g_main_depth;
alias c_g_poll g_poll;

// glib.MappedFile

alias c_g_mapped_file_new g_mapped_file_new;
alias c_g_mapped_file_new_from_fd g_mapped_file_new_from_fd;
alias c_g_mapped_file_free g_mapped_file_free;
alias c_g_mapped_file_get_bytes g_mapped_file_get_bytes;
alias c_g_mapped_file_get_contents g_mapped_file_get_contents;
alias c_g_mapped_file_get_length g_mapped_file_get_length;
alias c_g_mapped_file_ref g_mapped_file_ref;
alias c_g_mapped_file_unref g_mapped_file_unref;

// glib.SimpleXML

alias c_g_markup_parse_context_new g_markup_parse_context_new;
alias c_g_markup_parse_context_end_parse g_markup_parse_context_end_parse;
alias c_g_markup_parse_context_free g_markup_parse_context_free;
alias c_g_markup_parse_context_get_element g_markup_parse_context_get_element;
alias c_g_markup_parse_context_get_element_stack g_markup_parse_context_get_element_stack;
alias c_g_markup_parse_context_get_position g_markup_parse_context_get_position;
alias c_g_markup_parse_context_get_user_data g_markup_parse_context_get_user_data;
alias c_g_markup_parse_context_parse g_markup_parse_context_parse;
alias c_g_markup_parse_context_pop g_markup_parse_context_pop;
alias c_g_markup_parse_context_push g_markup_parse_context_push;
alias c_g_markup_parse_context_ref g_markup_parse_context_ref;
alias c_g_markup_parse_context_unref g_markup_parse_context_unref;
alias c_g_markup_collect_attributes g_markup_collect_attributes;
alias c_g_markup_error_quark g_markup_error_quark;
alias c_g_markup_escape_text g_markup_escape_text;
alias c_g_markup_printf_escaped g_markup_printf_escaped;
alias c_g_markup_vprintf_escaped g_markup_vprintf_escaped;

// glib.MatchInfo

alias c_g_match_info_expand_references g_match_info_expand_references;
alias c_g_match_info_fetch g_match_info_fetch;
alias c_g_match_info_fetch_all g_match_info_fetch_all;
alias c_g_match_info_fetch_named g_match_info_fetch_named;
alias c_g_match_info_fetch_named_pos g_match_info_fetch_named_pos;
alias c_g_match_info_fetch_pos g_match_info_fetch_pos;
alias c_g_match_info_free g_match_info_free;
alias c_g_match_info_get_match_count g_match_info_get_match_count;
alias c_g_match_info_get_regex g_match_info_get_regex;
alias c_g_match_info_get_string g_match_info_get_string;
alias c_g_match_info_is_partial_match g_match_info_is_partial_match;
alias c_g_match_info_matches g_match_info_matches;
alias c_g_match_info_next g_match_info_next;
alias c_g_match_info_ref g_match_info_ref;
alias c_g_match_info_unref g_match_info_unref;

// glib.Mutex

alias c_g_mutex_clear g_mutex_clear;
alias c_g_mutex_init g_mutex_init;
alias c_g_mutex_lock g_mutex_lock;
alias c_g_mutex_trylock g_mutex_trylock;
alias c_g_mutex_unlock g_mutex_unlock;

// glib.Node

alias c_g_node_child_index g_node_child_index;
alias c_g_node_child_position g_node_child_position;
alias c_g_node_children_foreach g_node_children_foreach;
alias c_g_node_copy g_node_copy;
alias c_g_node_copy_deep g_node_copy_deep;
alias c_g_node_depth g_node_depth;
alias c_g_node_destroy g_node_destroy;
alias c_g_node_find g_node_find;
alias c_g_node_find_child g_node_find_child;
alias c_g_node_first_sibling g_node_first_sibling;
alias c_g_node_get_root g_node_get_root;
alias c_g_node_insert g_node_insert;
alias c_g_node_insert_after g_node_insert_after;
alias c_g_node_insert_before g_node_insert_before;
alias c_g_node_is_ancestor g_node_is_ancestor;
alias c_g_node_last_child g_node_last_child;
alias c_g_node_last_sibling g_node_last_sibling;
alias c_g_node_max_height g_node_max_height;
alias c_g_node_n_children g_node_n_children;
alias c_g_node_n_nodes g_node_n_nodes;
alias c_g_node_nth_child g_node_nth_child;
alias c_g_node_prepend g_node_prepend;
alias c_g_node_reverse_children g_node_reverse_children;
alias c_g_node_traverse g_node_traverse;
alias c_g_node_unlink g_node_unlink;
alias c_g_node_new g_node_new;

// glib.Once

alias c_g_once_impl g_once_impl;
alias c_g_once_init_enter g_once_init_enter;
alias c_g_once_init_leave g_once_init_leave;

// glib.OptionContext

alias c_g_option_context_add_group g_option_context_add_group;
alias c_g_option_context_add_main_entries g_option_context_add_main_entries;
alias c_g_option_context_free g_option_context_free;
alias c_g_option_context_get_description g_option_context_get_description;
alias c_g_option_context_get_help g_option_context_get_help;
alias c_g_option_context_get_help_enabled g_option_context_get_help_enabled;
alias c_g_option_context_get_ignore_unknown_options g_option_context_get_ignore_unknown_options;
alias c_g_option_context_get_main_group g_option_context_get_main_group;
alias c_g_option_context_get_strict_posix g_option_context_get_strict_posix;
alias c_g_option_context_get_summary g_option_context_get_summary;
alias c_g_option_context_parse g_option_context_parse;
alias c_g_option_context_parse_strv g_option_context_parse_strv;
alias c_g_option_context_set_description g_option_context_set_description;
alias c_g_option_context_set_help_enabled g_option_context_set_help_enabled;
alias c_g_option_context_set_ignore_unknown_options g_option_context_set_ignore_unknown_options;
alias c_g_option_context_set_main_group g_option_context_set_main_group;
alias c_g_option_context_set_strict_posix g_option_context_set_strict_posix;
alias c_g_option_context_set_summary g_option_context_set_summary;
alias c_g_option_context_set_translate_func g_option_context_set_translate_func;
alias c_g_option_context_set_translation_domain g_option_context_set_translation_domain;
alias c_g_option_context_new g_option_context_new;
alias c_g_option_error_quark g_option_error_quark;

// glib.OptionGroup

alias c_g_option_group_new g_option_group_new;
alias c_g_option_group_add_entries g_option_group_add_entries;
alias c_g_option_group_free g_option_group_free;
alias c_g_option_group_ref g_option_group_ref;
alias c_g_option_group_set_error_hook g_option_group_set_error_hook;
alias c_g_option_group_set_parse_hooks g_option_group_set_parse_hooks;
alias c_g_option_group_set_translate_func g_option_group_set_translate_func;
alias c_g_option_group_set_translation_domain g_option_group_set_translation_domain;
alias c_g_option_group_unref g_option_group_unref;

// glib.Pattern

alias c_g_pattern_spec_equal g_pattern_spec_equal;
alias c_g_pattern_spec_free g_pattern_spec_free;
alias c_g_pattern_spec_new g_pattern_spec_new;
alias c_g_pattern_match g_pattern_match;
alias c_g_pattern_match_simple g_pattern_match_simple;
alias c_g_pattern_match_string g_pattern_match_string;

// glib.Private

alias c_g_private_get g_private_get;
alias c_g_private_replace g_private_replace;
alias c_g_private_set g_private_set;

// glib.PtrArray

alias c_g_ptr_array_add g_ptr_array_add;
alias c_g_ptr_array_foreach g_ptr_array_foreach;
alias c_g_ptr_array_free g_ptr_array_free;
alias c_g_ptr_array_insert g_ptr_array_insert;
alias c_g_ptr_array_new g_ptr_array_new;
alias c_g_ptr_array_new_full g_ptr_array_new_full;
alias c_g_ptr_array_new_with_free_func g_ptr_array_new_with_free_func;
alias c_g_ptr_array_ref g_ptr_array_ref;
alias c_g_ptr_array_remove g_ptr_array_remove;
alias c_g_ptr_array_remove_fast g_ptr_array_remove_fast;
alias c_g_ptr_array_remove_index g_ptr_array_remove_index;
alias c_g_ptr_array_remove_index_fast g_ptr_array_remove_index_fast;
alias c_g_ptr_array_remove_range g_ptr_array_remove_range;
alias c_g_ptr_array_set_free_func g_ptr_array_set_free_func;
alias c_g_ptr_array_set_size g_ptr_array_set_size;
alias c_g_ptr_array_sized_new g_ptr_array_sized_new;
alias c_g_ptr_array_sort g_ptr_array_sort;
alias c_g_ptr_array_sort_with_data g_ptr_array_sort_with_data;
alias c_g_ptr_array_unref g_ptr_array_unref;

// glib.QueueG

alias c_g_queue_clear g_queue_clear;
alias c_g_queue_copy g_queue_copy;
alias c_g_queue_delete_link g_queue_delete_link;
alias c_g_queue_find g_queue_find;
alias c_g_queue_find_custom g_queue_find_custom;
alias c_g_queue_foreach g_queue_foreach;
alias c_g_queue_free g_queue_free;
alias c_g_queue_free_full g_queue_free_full;
alias c_g_queue_get_length g_queue_get_length;
alias c_g_queue_index g_queue_index;
alias c_g_queue_init g_queue_init;
alias c_g_queue_insert_after g_queue_insert_after;
alias c_g_queue_insert_before g_queue_insert_before;
alias c_g_queue_insert_sorted g_queue_insert_sorted;
alias c_g_queue_is_empty g_queue_is_empty;
alias c_g_queue_link_index g_queue_link_index;
alias c_g_queue_peek_head g_queue_peek_head;
alias c_g_queue_peek_head_link g_queue_peek_head_link;
alias c_g_queue_peek_nth g_queue_peek_nth;
alias c_g_queue_peek_nth_link g_queue_peek_nth_link;
alias c_g_queue_peek_tail g_queue_peek_tail;
alias c_g_queue_peek_tail_link g_queue_peek_tail_link;
alias c_g_queue_pop_head g_queue_pop_head;
alias c_g_queue_pop_head_link g_queue_pop_head_link;
alias c_g_queue_pop_nth g_queue_pop_nth;
alias c_g_queue_pop_nth_link g_queue_pop_nth_link;
alias c_g_queue_pop_tail g_queue_pop_tail;
alias c_g_queue_pop_tail_link g_queue_pop_tail_link;
alias c_g_queue_push_head g_queue_push_head;
alias c_g_queue_push_head_link g_queue_push_head_link;
alias c_g_queue_push_nth g_queue_push_nth;
alias c_g_queue_push_nth_link g_queue_push_nth_link;
alias c_g_queue_push_tail g_queue_push_tail;
alias c_g_queue_push_tail_link g_queue_push_tail_link;
alias c_g_queue_remove g_queue_remove;
alias c_g_queue_remove_all g_queue_remove_all;
alias c_g_queue_reverse g_queue_reverse;
alias c_g_queue_sort g_queue_sort;
alias c_g_queue_unlink g_queue_unlink;
alias c_g_queue_new g_queue_new;

// glib.RWLock

alias c_g_rw_lock_clear g_rw_lock_clear;
alias c_g_rw_lock_init g_rw_lock_init;
alias c_g_rw_lock_reader_lock g_rw_lock_reader_lock;
alias c_g_rw_lock_reader_trylock g_rw_lock_reader_trylock;
alias c_g_rw_lock_reader_unlock g_rw_lock_reader_unlock;
alias c_g_rw_lock_writer_lock g_rw_lock_writer_lock;
alias c_g_rw_lock_writer_trylock g_rw_lock_writer_trylock;
alias c_g_rw_lock_writer_unlock g_rw_lock_writer_unlock;

// glib.RandG

alias c_g_rand_copy g_rand_copy;
alias c_g_rand_double g_rand_double;
alias c_g_rand_double_range g_rand_double_range;
alias c_g_rand_free g_rand_free;
alias c_g_rand_int g_rand_int;
alias c_g_rand_int_range g_rand_int_range;
alias c_g_rand_set_seed g_rand_set_seed;
alias c_g_rand_set_seed_array g_rand_set_seed_array;
alias c_g_rand_new g_rand_new;
alias c_g_rand_new_with_seed g_rand_new_with_seed;
alias c_g_rand_new_with_seed_array g_rand_new_with_seed_array;
alias c_g_random_double g_random_double;
alias c_g_random_double_range g_random_double_range;
alias c_g_random_int g_random_int;
alias c_g_random_int_range g_random_int_range;
alias c_g_random_set_seed g_random_set_seed;

// glib.RecMutex

alias c_g_rec_mutex_clear g_rec_mutex_clear;
alias c_g_rec_mutex_init g_rec_mutex_init;
alias c_g_rec_mutex_lock g_rec_mutex_lock;
alias c_g_rec_mutex_trylock g_rec_mutex_trylock;
alias c_g_rec_mutex_unlock g_rec_mutex_unlock;

// glib.Regex

alias c_g_regex_new g_regex_new;
alias c_g_regex_get_capture_count g_regex_get_capture_count;
alias c_g_regex_get_compile_flags g_regex_get_compile_flags;
alias c_g_regex_get_has_cr_or_lf g_regex_get_has_cr_or_lf;
alias c_g_regex_get_match_flags g_regex_get_match_flags;
alias c_g_regex_get_max_backref g_regex_get_max_backref;
alias c_g_regex_get_max_lookbehind g_regex_get_max_lookbehind;
alias c_g_regex_get_pattern g_regex_get_pattern;
alias c_g_regex_get_string_number g_regex_get_string_number;
alias c_g_regex_match g_regex_match;
alias c_g_regex_match_all g_regex_match_all;
alias c_g_regex_match_all_full g_regex_match_all_full;
alias c_g_regex_match_full g_regex_match_full;
alias c_g_regex_ref g_regex_ref;
alias c_g_regex_replace g_regex_replace;
alias c_g_regex_replace_eval g_regex_replace_eval;
alias c_g_regex_replace_literal g_regex_replace_literal;
alias c_g_regex_split g_regex_split;
alias c_g_regex_split_full g_regex_split_full;
alias c_g_regex_unref g_regex_unref;
alias c_g_regex_check_replacement g_regex_check_replacement;
alias c_g_regex_error_quark g_regex_error_quark;
alias c_g_regex_escape_nul g_regex_escape_nul;
alias c_g_regex_escape_string g_regex_escape_string;
alias c_g_regex_match_simple g_regex_match_simple;
alias c_g_regex_split_simple g_regex_split_simple;

// glib.ListSG

alias c_g_slist_alloc g_slist_alloc;
alias c_g_slist_append g_slist_append;
alias c_g_slist_concat g_slist_concat;
alias c_g_slist_copy g_slist_copy;
alias c_g_slist_copy_deep g_slist_copy_deep;
alias c_g_slist_delete_link g_slist_delete_link;
alias c_g_slist_find g_slist_find;
alias c_g_slist_find_custom g_slist_find_custom;
alias c_g_slist_foreach g_slist_foreach;
alias c_g_slist_free g_slist_free;
alias c_g_slist_free_1 g_slist_free_1;
alias c_g_slist_free_full g_slist_free_full;
alias c_g_slist_index g_slist_index;
alias c_g_slist_insert g_slist_insert;
alias c_g_slist_insert_before g_slist_insert_before;
alias c_g_slist_insert_sorted g_slist_insert_sorted;
alias c_g_slist_insert_sorted_with_data g_slist_insert_sorted_with_data;
alias c_g_slist_last g_slist_last;
alias c_g_slist_length g_slist_length;
alias c_g_slist_nth g_slist_nth;
alias c_g_slist_nth_data g_slist_nth_data;
alias c_g_slist_position g_slist_position;
alias c_g_slist_prepend g_slist_prepend;
alias c_g_slist_remove g_slist_remove;
alias c_g_slist_remove_all g_slist_remove_all;
alias c_g_slist_remove_link g_slist_remove_link;
alias c_g_slist_reverse g_slist_reverse;
alias c_g_slist_sort g_slist_sort;
alias c_g_slist_sort_with_data g_slist_sort_with_data;

// glib.ScannerG

alias c_g_scanner_cur_line g_scanner_cur_line;
alias c_g_scanner_cur_position g_scanner_cur_position;
alias c_g_scanner_cur_token g_scanner_cur_token;
alias c_g_scanner_cur_value g_scanner_cur_value;
alias c_g_scanner_destroy g_scanner_destroy;
alias c_g_scanner_eof g_scanner_eof;
alias c_g_scanner_error g_scanner_error;
alias c_g_scanner_get_next_token g_scanner_get_next_token;
alias c_g_scanner_input_file g_scanner_input_file;
alias c_g_scanner_input_text g_scanner_input_text;
alias c_g_scanner_lookup_symbol g_scanner_lookup_symbol;
alias c_g_scanner_peek_next_token g_scanner_peek_next_token;
alias c_g_scanner_scope_add_symbol g_scanner_scope_add_symbol;
alias c_g_scanner_scope_foreach_symbol g_scanner_scope_foreach_symbol;
alias c_g_scanner_scope_lookup_symbol g_scanner_scope_lookup_symbol;
alias c_g_scanner_scope_remove_symbol g_scanner_scope_remove_symbol;
alias c_g_scanner_set_scope g_scanner_set_scope;
alias c_g_scanner_sync_file_offset g_scanner_sync_file_offset;
alias c_g_scanner_unexp_token g_scanner_unexp_token;
alias c_g_scanner_warn g_scanner_warn;
alias c_g_scanner_new g_scanner_new;

// glib.Sequence

alias c_g_sequence_append g_sequence_append;
alias c_g_sequence_foreach g_sequence_foreach;
alias c_g_sequence_free g_sequence_free;
alias c_g_sequence_get_begin_iter g_sequence_get_begin_iter;
alias c_g_sequence_get_end_iter g_sequence_get_end_iter;
alias c_g_sequence_get_iter_at_pos g_sequence_get_iter_at_pos;
alias c_g_sequence_get_length g_sequence_get_length;
alias c_g_sequence_insert_sorted g_sequence_insert_sorted;
alias c_g_sequence_insert_sorted_iter g_sequence_insert_sorted_iter;
alias c_g_sequence_lookup g_sequence_lookup;
alias c_g_sequence_lookup_iter g_sequence_lookup_iter;
alias c_g_sequence_prepend g_sequence_prepend;
alias c_g_sequence_search g_sequence_search;
alias c_g_sequence_search_iter g_sequence_search_iter;
alias c_g_sequence_sort g_sequence_sort;
alias c_g_sequence_sort_iter g_sequence_sort_iter;
alias c_g_sequence_foreach_range g_sequence_foreach_range;
alias c_g_sequence_get g_sequence_get;
alias c_g_sequence_insert_before g_sequence_insert_before;
alias c_g_sequence_move g_sequence_move;
alias c_g_sequence_move_range g_sequence_move_range;
alias c_g_sequence_new g_sequence_new;
alias c_g_sequence_range_get_midpoint g_sequence_range_get_midpoint;
alias c_g_sequence_remove g_sequence_remove;
alias c_g_sequence_remove_range g_sequence_remove_range;
alias c_g_sequence_set g_sequence_set;
alias c_g_sequence_sort_changed g_sequence_sort_changed;
alias c_g_sequence_sort_changed_iter g_sequence_sort_changed_iter;
alias c_g_sequence_swap g_sequence_swap;

// glib.SequenceIter

alias c_g_sequence_iter_compare g_sequence_iter_compare;
alias c_g_sequence_iter_get_position g_sequence_iter_get_position;
alias c_g_sequence_iter_get_sequence g_sequence_iter_get_sequence;
alias c_g_sequence_iter_is_begin g_sequence_iter_is_begin;
alias c_g_sequence_iter_is_end g_sequence_iter_is_end;
alias c_g_sequence_iter_move g_sequence_iter_move;
alias c_g_sequence_iter_next g_sequence_iter_next;
alias c_g_sequence_iter_prev g_sequence_iter_prev;

// glib.Source

alias c_g_source_new g_source_new;
alias c_g_source_add_child_source g_source_add_child_source;
alias c_g_source_add_poll g_source_add_poll;
alias c_g_source_add_unix_fd g_source_add_unix_fd;
alias c_g_source_attach g_source_attach;
alias c_g_source_destroy g_source_destroy;
alias c_g_source_get_can_recurse g_source_get_can_recurse;
alias c_g_source_get_context g_source_get_context;
alias c_g_source_get_current_time g_source_get_current_time;
alias c_g_source_get_id g_source_get_id;
alias c_g_source_get_name g_source_get_name;
alias c_g_source_get_priority g_source_get_priority;
alias c_g_source_get_ready_time g_source_get_ready_time;
alias c_g_source_get_time g_source_get_time;
alias c_g_source_is_destroyed g_source_is_destroyed;
alias c_g_source_modify_unix_fd g_source_modify_unix_fd;
alias c_g_source_query_unix_fd g_source_query_unix_fd;
alias c_g_source_ref g_source_ref;
alias c_g_source_remove_child_source g_source_remove_child_source;
alias c_g_source_remove_poll g_source_remove_poll;
alias c_g_source_remove_unix_fd g_source_remove_unix_fd;
alias c_g_source_set_callback g_source_set_callback;
alias c_g_source_set_callback_indirect g_source_set_callback_indirect;
alias c_g_source_set_can_recurse g_source_set_can_recurse;
alias c_g_source_set_funcs g_source_set_funcs;
alias c_g_source_set_name g_source_set_name;
alias c_g_source_set_priority g_source_set_priority;
alias c_g_source_set_ready_time g_source_set_ready_time;
alias c_g_source_unref g_source_unref;
alias c_g_source_remove g_source_remove;
alias c_g_source_remove_by_funcs_user_data g_source_remove_by_funcs_user_data;
alias c_g_source_remove_by_user_data g_source_remove_by_user_data;
alias c_g_source_set_name_by_id g_source_set_name_by_id;

// glib.StringG

alias c_g_string_append g_string_append;
alias c_g_string_append_c g_string_append_c;
alias c_g_string_append_len g_string_append_len;
alias c_g_string_append_printf g_string_append_printf;
alias c_g_string_append_unichar g_string_append_unichar;
alias c_g_string_append_uri_escaped g_string_append_uri_escaped;
alias c_g_string_append_vprintf g_string_append_vprintf;
alias c_g_string_ascii_down g_string_ascii_down;
alias c_g_string_ascii_up g_string_ascii_up;
alias c_g_string_assign g_string_assign;
alias c_g_string_down g_string_down;
alias c_g_string_equal g_string_equal;
alias c_g_string_erase g_string_erase;
alias c_g_string_free g_string_free;
alias c_g_string_free_to_bytes g_string_free_to_bytes;
alias c_g_string_hash g_string_hash;
alias c_g_string_insert g_string_insert;
alias c_g_string_insert_c g_string_insert_c;
alias c_g_string_insert_len g_string_insert_len;
alias c_g_string_insert_unichar g_string_insert_unichar;
alias c_g_string_overwrite g_string_overwrite;
alias c_g_string_overwrite_len g_string_overwrite_len;
alias c_g_string_prepend g_string_prepend;
alias c_g_string_prepend_c g_string_prepend_c;
alias c_g_string_prepend_len g_string_prepend_len;
alias c_g_string_prepend_unichar g_string_prepend_unichar;
alias c_g_string_printf g_string_printf;
alias c_g_string_set_size g_string_set_size;
alias c_g_string_truncate g_string_truncate;
alias c_g_string_up g_string_up;
alias c_g_string_vprintf g_string_vprintf;
alias c_g_string_new g_string_new;
alias c_g_string_new_len g_string_new_len;
alias c_g_string_sized_new g_string_sized_new;

// glib.StringChunk

alias c_g_string_chunk_clear g_string_chunk_clear;
alias c_g_string_chunk_free g_string_chunk_free;
alias c_g_string_chunk_insert g_string_chunk_insert;
alias c_g_string_chunk_insert_const g_string_chunk_insert_const;
alias c_g_string_chunk_insert_len g_string_chunk_insert_len;
alias c_g_string_chunk_new g_string_chunk_new;

// glib.TestLogBuffer

alias c_g_test_log_buffer_free g_test_log_buffer_free;
alias c_g_test_log_buffer_pop g_test_log_buffer_pop;
alias c_g_test_log_buffer_push g_test_log_buffer_push;
alias c_g_test_log_buffer_new g_test_log_buffer_new;

// glib.TestLogMsg

alias c_g_test_log_msg_free g_test_log_msg_free;

// glib.TestSuite

alias c_g_test_suite_add g_test_suite_add;
alias c_g_test_suite_add_suite g_test_suite_add_suite;

// glib.Thread

alias c_g_thread_new g_thread_new;
alias c_g_thread_try_new g_thread_try_new;
alias c_g_thread_join g_thread_join;
alias c_g_thread_ref g_thread_ref;
alias c_g_thread_unref g_thread_unref;
alias c_g_thread_error_quark g_thread_error_quark;
alias c_g_thread_exit g_thread_exit;
alias c_g_thread_self g_thread_self;
alias c_g_thread_yield g_thread_yield;
alias c_g_bit_lock g_bit_lock;
alias c_g_bit_trylock g_bit_trylock;
alias c_g_bit_unlock g_bit_unlock;
alias c_g_get_num_processors g_get_num_processors;
alias c_g_pointer_bit_lock g_pointer_bit_lock;
alias c_g_pointer_bit_trylock g_pointer_bit_trylock;
alias c_g_pointer_bit_unlock g_pointer_bit_unlock;

// glib.ThreadPool

alias c_g_thread_pool_free g_thread_pool_free;
alias c_g_thread_pool_get_max_threads g_thread_pool_get_max_threads;
alias c_g_thread_pool_get_num_threads g_thread_pool_get_num_threads;
alias c_g_thread_pool_move_to_front g_thread_pool_move_to_front;
alias c_g_thread_pool_push g_thread_pool_push;
alias c_g_thread_pool_set_max_threads g_thread_pool_set_max_threads;
alias c_g_thread_pool_set_sort_function g_thread_pool_set_sort_function;
alias c_g_thread_pool_unprocessed g_thread_pool_unprocessed;
alias c_g_thread_pool_get_max_idle_time g_thread_pool_get_max_idle_time;
alias c_g_thread_pool_get_max_unused_threads g_thread_pool_get_max_unused_threads;
alias c_g_thread_pool_get_num_unused_threads g_thread_pool_get_num_unused_threads;
alias c_g_thread_pool_new g_thread_pool_new;
alias c_g_thread_pool_set_max_idle_time g_thread_pool_set_max_idle_time;
alias c_g_thread_pool_set_max_unused_threads g_thread_pool_set_max_unused_threads;
alias c_g_thread_pool_stop_unused_threads g_thread_pool_stop_unused_threads;

// glib.TimeVal

alias c_g_time_val_add g_time_val_add;
alias c_g_time_val_to_iso8601 g_time_val_to_iso8601;
alias c_g_time_val_from_iso8601 g_time_val_from_iso8601;
alias c_g_get_current_time g_get_current_time;
alias c_g_get_monotonic_time g_get_monotonic_time;
alias c_g_get_real_time g_get_real_time;
alias c_g_usleep g_usleep;

// glib.TimeZone

alias c_g_time_zone_new g_time_zone_new;
alias c_g_time_zone_new_local g_time_zone_new_local;
alias c_g_time_zone_new_utc g_time_zone_new_utc;
alias c_g_time_zone_adjust_time g_time_zone_adjust_time;
alias c_g_time_zone_find_interval g_time_zone_find_interval;
alias c_g_time_zone_get_abbreviation g_time_zone_get_abbreviation;
alias c_g_time_zone_get_offset g_time_zone_get_offset;
alias c_g_time_zone_is_dst g_time_zone_is_dst;
alias c_g_time_zone_ref g_time_zone_ref;
alias c_g_time_zone_unref g_time_zone_unref;

// glib.Timer

alias c_g_timer_continue g_timer_continue;
alias c_g_timer_destroy g_timer_destroy;
alias c_g_timer_elapsed g_timer_elapsed;
alias c_g_timer_reset g_timer_reset;
alias c_g_timer_start g_timer_start;
alias c_g_timer_stop g_timer_stop;
alias c_g_timer_new g_timer_new;

// glib.TrashStack

alias c_g_trash_stack_height g_trash_stack_height;
alias c_g_trash_stack_peek g_trash_stack_peek;
alias c_g_trash_stack_pop g_trash_stack_pop;
alias c_g_trash_stack_push g_trash_stack_push;

// glib.BBTree

alias c_g_tree_destroy g_tree_destroy;
alias c_g_tree_foreach g_tree_foreach;
alias c_g_tree_height g_tree_height;
alias c_g_tree_insert g_tree_insert;
alias c_g_tree_lookup g_tree_lookup;
alias c_g_tree_lookup_extended g_tree_lookup_extended;
alias c_g_tree_nnodes g_tree_nnodes;
alias c_g_tree_ref g_tree_ref;
alias c_g_tree_remove g_tree_remove;
alias c_g_tree_replace g_tree_replace;
alias c_g_tree_search g_tree_search;
alias c_g_tree_steal g_tree_steal;
alias c_g_tree_traverse g_tree_traverse;
alias c_g_tree_unref g_tree_unref;
alias c_g_tree_new g_tree_new;
alias c_g_tree_new_full g_tree_new_full;
alias c_g_tree_new_with_data g_tree_new_with_data;

// glib.Variant

alias c_g_variant_new g_variant_new;
alias c_g_variant_new_array g_variant_new_array;
alias c_g_variant_new_boolean g_variant_new_boolean;
alias c_g_variant_new_byte g_variant_new_byte;
alias c_g_variant_new_bytestring g_variant_new_bytestring;
alias c_g_variant_new_bytestring_array g_variant_new_bytestring_array;
alias c_g_variant_new_dict_entry g_variant_new_dict_entry;
alias c_g_variant_new_double g_variant_new_double;
alias c_g_variant_new_fixed_array g_variant_new_fixed_array;
alias c_g_variant_new_from_bytes g_variant_new_from_bytes;
alias c_g_variant_new_from_data g_variant_new_from_data;
alias c_g_variant_new_handle g_variant_new_handle;
alias c_g_variant_new_int16 g_variant_new_int16;
alias c_g_variant_new_int32 g_variant_new_int32;
alias c_g_variant_new_int64 g_variant_new_int64;
alias c_g_variant_new_maybe g_variant_new_maybe;
alias c_g_variant_new_object_path g_variant_new_object_path;
alias c_g_variant_new_objv g_variant_new_objv;
alias c_g_variant_new_parsed g_variant_new_parsed;
alias c_g_variant_new_parsed_va g_variant_new_parsed_va;
alias c_g_variant_new_printf g_variant_new_printf;
alias c_g_variant_new_signature g_variant_new_signature;
alias c_g_variant_new_string g_variant_new_string;
alias c_g_variant_new_strv g_variant_new_strv;
alias c_g_variant_new_take_string g_variant_new_take_string;
alias c_g_variant_new_tuple g_variant_new_tuple;
alias c_g_variant_new_uint16 g_variant_new_uint16;
alias c_g_variant_new_uint32 g_variant_new_uint32;
alias c_g_variant_new_uint64 g_variant_new_uint64;
alias c_g_variant_new_va g_variant_new_va;
alias c_g_variant_new_variant g_variant_new_variant;
alias c_g_variant_byteswap g_variant_byteswap;
alias c_g_variant_check_format_string g_variant_check_format_string;
alias c_g_variant_classify g_variant_classify;
alias c_g_variant_compare g_variant_compare;
alias c_g_variant_dup_bytestring g_variant_dup_bytestring;
alias c_g_variant_dup_bytestring_array g_variant_dup_bytestring_array;
alias c_g_variant_dup_objv g_variant_dup_objv;
alias c_g_variant_dup_string g_variant_dup_string;
alias c_g_variant_dup_strv g_variant_dup_strv;
alias c_g_variant_equal g_variant_equal;
alias c_g_variant_get g_variant_get;
alias c_g_variant_get_boolean g_variant_get_boolean;
alias c_g_variant_get_byte g_variant_get_byte;
alias c_g_variant_get_bytestring g_variant_get_bytestring;
alias c_g_variant_get_bytestring_array g_variant_get_bytestring_array;
alias c_g_variant_get_child g_variant_get_child;
alias c_g_variant_get_child_value g_variant_get_child_value;
alias c_g_variant_get_data g_variant_get_data;
alias c_g_variant_get_data_as_bytes g_variant_get_data_as_bytes;
alias c_g_variant_get_double g_variant_get_double;
alias c_g_variant_get_fixed_array g_variant_get_fixed_array;
alias c_g_variant_get_handle g_variant_get_handle;
alias c_g_variant_get_int16 g_variant_get_int16;
alias c_g_variant_get_int32 g_variant_get_int32;
alias c_g_variant_get_int64 g_variant_get_int64;
alias c_g_variant_get_maybe g_variant_get_maybe;
alias c_g_variant_get_normal_form g_variant_get_normal_form;
alias c_g_variant_get_objv g_variant_get_objv;
alias c_g_variant_get_size g_variant_get_size;
alias c_g_variant_get_string g_variant_get_string;
alias c_g_variant_get_strv g_variant_get_strv;
alias c_g_variant_get_type g_variant_get_type;
alias c_g_variant_get_type_string g_variant_get_type_string;
alias c_g_variant_get_uint16 g_variant_get_uint16;
alias c_g_variant_get_uint32 g_variant_get_uint32;
alias c_g_variant_get_uint64 g_variant_get_uint64;
alias c_g_variant_get_va g_variant_get_va;
alias c_g_variant_get_variant g_variant_get_variant;
alias c_g_variant_hash g_variant_hash;
alias c_g_variant_is_container g_variant_is_container;
alias c_g_variant_is_floating g_variant_is_floating;
alias c_g_variant_is_normal_form g_variant_is_normal_form;
alias c_g_variant_is_of_type g_variant_is_of_type;
alias c_g_variant_iter_new g_variant_iter_new;
alias c_g_variant_lookup g_variant_lookup;
alias c_g_variant_lookup_value g_variant_lookup_value;
alias c_g_variant_n_children g_variant_n_children;
alias c_g_variant_print g_variant_print;
alias c_g_variant_print_string g_variant_print_string;
alias c_g_variant_ref g_variant_ref;
alias c_g_variant_ref_sink g_variant_ref_sink;
alias c_g_variant_store g_variant_store;
alias c_g_variant_take_ref g_variant_take_ref;
alias c_g_variant_unref g_variant_unref;
alias c_g_variant_is_object_path g_variant_is_object_path;
alias c_g_variant_is_signature g_variant_is_signature;
alias c_g_variant_parse g_variant_parse;
alias c_g_variant_parse_error_print_context g_variant_parse_error_print_context;
alias c_g_variant_parse_error_quark g_variant_parse_error_quark;
alias c_g_variant_parser_get_error_quark g_variant_parser_get_error_quark;

// glib.VariantBuilder

alias c_g_variant_builder_new g_variant_builder_new;
alias c_g_variant_builder_add g_variant_builder_add;
alias c_g_variant_builder_add_parsed g_variant_builder_add_parsed;
alias c_g_variant_builder_add_value g_variant_builder_add_value;
alias c_g_variant_builder_clear g_variant_builder_clear;
alias c_g_variant_builder_close g_variant_builder_close;
alias c_g_variant_builder_end g_variant_builder_end;
alias c_g_variant_builder_init g_variant_builder_init;
alias c_g_variant_builder_open g_variant_builder_open;
alias c_g_variant_builder_ref g_variant_builder_ref;
alias c_g_variant_builder_unref g_variant_builder_unref;

// glib.VariantDict

alias c_g_variant_dict_new g_variant_dict_new;
alias c_g_variant_dict_clear g_variant_dict_clear;
alias c_g_variant_dict_contains g_variant_dict_contains;
alias c_g_variant_dict_end g_variant_dict_end;
alias c_g_variant_dict_init g_variant_dict_init;
alias c_g_variant_dict_insert g_variant_dict_insert;
alias c_g_variant_dict_insert_value g_variant_dict_insert_value;
alias c_g_variant_dict_lookup g_variant_dict_lookup;
alias c_g_variant_dict_lookup_value g_variant_dict_lookup_value;
alias c_g_variant_dict_ref g_variant_dict_ref;
alias c_g_variant_dict_remove g_variant_dict_remove;
alias c_g_variant_dict_unref g_variant_dict_unref;

// glib.VariantIter

alias c_g_variant_iter_copy g_variant_iter_copy;
alias c_g_variant_iter_free g_variant_iter_free;
alias c_g_variant_iter_init g_variant_iter_init;
alias c_g_variant_iter_loop g_variant_iter_loop;
alias c_g_variant_iter_n_children g_variant_iter_n_children;
alias c_g_variant_iter_next g_variant_iter_next;
alias c_g_variant_iter_next_value g_variant_iter_next_value;

// glib.VariantType

alias c_g_variant_type_new g_variant_type_new;
alias c_g_variant_type_new_array g_variant_type_new_array;
alias c_g_variant_type_new_dict_entry g_variant_type_new_dict_entry;
alias c_g_variant_type_new_maybe g_variant_type_new_maybe;
alias c_g_variant_type_new_tuple g_variant_type_new_tuple;
alias c_g_variant_type_copy g_variant_type_copy;
alias c_g_variant_type_dup_string g_variant_type_dup_string;
alias c_g_variant_type_element g_variant_type_element;
alias c_g_variant_type_equal g_variant_type_equal;
alias c_g_variant_type_first g_variant_type_first;
alias c_g_variant_type_free g_variant_type_free;
alias c_g_variant_type_get_string_length g_variant_type_get_string_length;
alias c_g_variant_type_hash g_variant_type_hash;
alias c_g_variant_type_is_array g_variant_type_is_array;
alias c_g_variant_type_is_basic g_variant_type_is_basic;
alias c_g_variant_type_is_container g_variant_type_is_container;
alias c_g_variant_type_is_definite g_variant_type_is_definite;
alias c_g_variant_type_is_dict_entry g_variant_type_is_dict_entry;
alias c_g_variant_type_is_maybe g_variant_type_is_maybe;
alias c_g_variant_type_is_subtype_of g_variant_type_is_subtype_of;
alias c_g_variant_type_is_tuple g_variant_type_is_tuple;
alias c_g_variant_type_is_variant g_variant_type_is_variant;
alias c_g_variant_type_key g_variant_type_key;
alias c_g_variant_type_n_items g_variant_type_n_items;
alias c_g_variant_type_next g_variant_type_next;
alias c_g_variant_type_peek_string g_variant_type_peek_string;
alias c_g_variant_type_value g_variant_type_value;
alias c_g_variant_type_checked_ g_variant_type_checked_;
alias c_g_variant_type_string_is_valid g_variant_type_string_is_valid;
alias c_g_variant_type_string_scan g_variant_type_string_scan;

// glib.Module

alias c_g_module_close g_module_close;
alias c_g_module_make_resident g_module_make_resident;
alias c_g_module_name g_module_name;
alias c_g_module_symbol g_module_symbol;
alias c_g_module_build_path g_module_build_path;
alias c_g_module_error g_module_error;
alias c_g_module_open g_module_open;
alias c_g_module_supported g_module_supported;

// glib.Base64

alias c_g_base64_decode_step g_base64_decode_step;
alias c_g_base64_decode_inplace g_base64_decode_inplace;
alias c_g_base64_decode g_base64_decode;
alias c_g_base64_encode g_base64_encode;
alias c_g_base64_encode_close g_base64_encode_close;
alias c_g_base64_encode_step g_base64_encode_step;

// glib.Idle

alias c_g_idle_add g_idle_add;
alias c_g_idle_add_full g_idle_add_full;
alias c_g_idle_remove_by_data g_idle_remove_by_data;
alias c_g_idle_source_new g_idle_source_new;

// glib.MemorySlice

alias c_g_slice_alloc g_slice_alloc;
alias c_g_slice_alloc0 g_slice_alloc0;
alias c_g_slice_copy g_slice_copy;
alias c_g_slice_free1 g_slice_free1;
alias c_g_slice_free_chain_with_offset g_slice_free_chain_with_offset;
alias c_g_slice_get_config g_slice_get_config;
alias c_g_slice_get_config_state g_slice_get_config_state;
alias c_g_slice_set_config g_slice_set_config;

// glib.Spawn

alias c_g_spawn_async g_spawn_async;
alias c_g_spawn_async_with_pipes g_spawn_async_with_pipes;
alias c_g_spawn_check_exit_status g_spawn_check_exit_status;
alias c_g_spawn_close_pid g_spawn_close_pid;
alias c_g_spawn_command_line_async g_spawn_command_line_async;
alias c_g_spawn_command_line_sync g_spawn_command_line_sync;
alias c_g_spawn_error_quark g_spawn_error_quark;
alias c_g_spawn_exit_error_quark g_spawn_exit_error_quark;
alias c_g_spawn_sync g_spawn_sync;

// glib.Str

alias c_g_ascii_digit_value g_ascii_digit_value;
alias c_g_ascii_dtostr g_ascii_dtostr;
alias c_g_ascii_formatd g_ascii_formatd;
alias c_g_ascii_strcasecmp g_ascii_strcasecmp;
alias c_g_ascii_strdown g_ascii_strdown;
alias c_g_ascii_strncasecmp g_ascii_strncasecmp;
alias c_g_ascii_strtod g_ascii_strtod;
alias c_g_ascii_strtoll g_ascii_strtoll;
alias c_g_ascii_strtoull g_ascii_strtoull;
alias c_g_ascii_strup g_ascii_strup;
alias c_g_ascii_tolower g_ascii_tolower;
alias c_g_ascii_toupper g_ascii_toupper;
alias c_g_ascii_xdigit_value g_ascii_xdigit_value;
alias c_g_fprintf g_fprintf;
alias c_g_printf g_printf;
alias c_g_printf_string_upper_bound g_printf_string_upper_bound;
alias c_g_snprintf g_snprintf;
alias c_g_sprintf g_sprintf;
alias c_g_stpcpy g_stpcpy;
alias c_g_str_has_prefix g_str_has_prefix;
alias c_g_str_has_suffix g_str_has_suffix;
alias c_g_str_is_ascii g_str_is_ascii;
alias c_g_str_match_string g_str_match_string;
alias c_g_str_to_ascii g_str_to_ascii;
alias c_g_str_tokenize_and_fold g_str_tokenize_and_fold;
alias c_g_strcanon g_strcanon;
alias c_g_strcasecmp g_strcasecmp;
alias c_g_strchomp g_strchomp;
alias c_g_strchug g_strchug;
alias c_g_strcmp0 g_strcmp0;
alias c_g_strcompress g_strcompress;
alias c_g_strconcat g_strconcat;
alias c_g_strdelimit g_strdelimit;
alias c_g_strdown g_strdown;
alias c_g_strdup g_strdup;
alias c_g_strdup_printf g_strdup_printf;
alias c_g_strdup_vprintf g_strdup_vprintf;
alias c_g_strdupv g_strdupv;
alias c_g_strerror g_strerror;
alias c_g_strescape g_strescape;
alias c_g_strfreev g_strfreev;
alias c_g_strjoin g_strjoin;
alias c_g_strjoinv g_strjoinv;
alias c_g_strlcat g_strlcat;
alias c_g_strlcpy g_strlcpy;
alias c_g_strncasecmp g_strncasecmp;
alias c_g_strndup g_strndup;
alias c_g_strnfill g_strnfill;
alias c_g_strreverse g_strreverse;
alias c_g_strrstr g_strrstr;
alias c_g_strrstr_len g_strrstr_len;
alias c_g_strsignal g_strsignal;
alias c_g_strsplit g_strsplit;
alias c_g_strsplit_set g_strsplit_set;
alias c_g_strstr_len g_strstr_len;
alias c_g_strtod g_strtod;
alias c_g_strup g_strup;
alias c_g_strv_get_type g_strv_get_type;
alias c_g_strv_length g_strv_length;
alias c_g_strv_contains g_strv_contains;
alias c_g_vasprintf g_vasprintf;
alias c_g_vfprintf g_vfprintf;
alias c_g_vprintf g_vprintf;
alias c_g_vsnprintf g_vsnprintf;
alias c_g_vsprintf g_vsprintf;

// glib.Timeout

alias c_g_timeout_add g_timeout_add;
alias c_g_timeout_add_full g_timeout_add_full;
alias c_g_timeout_add_seconds g_timeout_add_seconds;
alias c_g_timeout_add_seconds_full g_timeout_add_seconds_full;
alias c_g_timeout_source_new g_timeout_source_new;
alias c_g_timeout_source_new_seconds g_timeout_source_new_seconds;

// glib.Util

alias c_g_build_filenamev g_build_filenamev;
alias c_g_build_pathv g_build_pathv;
alias c_g_atexit g_atexit;
alias c_g_basename g_basename;
alias c_g_bit_nth_lsf g_bit_nth_lsf;
alias c_g_bit_nth_msf g_bit_nth_msf;
alias c_g_bit_storage g_bit_storage;
alias c_g_build_path g_build_path;
alias c_g_environ_getenv g_environ_getenv;
alias c_g_environ_setenv g_environ_setenv;
alias c_g_environ_unsetenv g_environ_unsetenv;
alias c_g_find_program_in_path g_find_program_in_path;
alias c_g_format_size g_format_size;
alias c_g_format_size_for_display g_format_size_for_display;
alias c_g_format_size_full g_format_size_full;
alias c_g_get_application_name g_get_application_name;
alias c_g_get_environ g_get_environ;
alias c_g_get_current_dir g_get_current_dir;
alias c_g_get_home_dir g_get_home_dir;
alias c_g_get_host_name g_get_host_name;
alias c_g_get_prgname g_get_prgname;
alias c_g_get_real_name g_get_real_name;
alias c_g_get_system_config_dirs g_get_system_config_dirs;
alias c_g_get_system_data_dirs g_get_system_data_dirs;
alias c_g_get_tmp_dir g_get_tmp_dir;
alias c_g_get_user_cache_dir g_get_user_cache_dir;
alias c_g_get_user_config_dir g_get_user_config_dir;
alias c_g_get_user_data_dir g_get_user_data_dir;
alias c_g_get_user_name g_get_user_name;
alias c_g_get_user_runtime_dir g_get_user_runtime_dir;
alias c_g_get_user_special_dir g_get_user_special_dir;
alias c_g_getenv g_getenv;
alias c_g_listenv g_listenv;
alias c_g_nullify_pointer g_nullify_pointer;
alias c_g_parse_debug_string g_parse_debug_string;
alias c_g_path_get_basename g_path_get_basename;
alias c_g_path_get_dirname g_path_get_dirname;
alias c_g_path_is_absolute g_path_is_absolute;
alias c_g_path_skip_root g_path_skip_root;
alias c_g_qsort_with_data g_qsort_with_data;
alias c_g_reload_user_special_dirs_cache g_reload_user_special_dirs_cache;
alias c_g_set_application_name g_set_application_name;
alias c_g_set_prgname g_set_prgname;
alias c_g_setenv g_setenv;
alias c_g_spaced_primes_closest g_spaced_primes_closest;
alias c_g_unsetenv g_unsetenv;

// glib.Atomic

alias c_g_atomic_int_add g_atomic_int_add;
alias c_g_atomic_int_and g_atomic_int_and;
alias c_g_atomic_int_compare_and_exchange g_atomic_int_compare_and_exchange;
alias c_g_atomic_int_dec_and_test g_atomic_int_dec_and_test;
alias c_g_atomic_int_exchange_and_add g_atomic_int_exchange_and_add;
alias c_g_atomic_int_get g_atomic_int_get;
alias c_g_atomic_int_inc g_atomic_int_inc;
alias c_g_atomic_int_or g_atomic_int_or;
alias c_g_atomic_int_set g_atomic_int_set;
alias c_g_atomic_int_xor g_atomic_int_xor;
alias c_g_atomic_pointer_add g_atomic_pointer_add;
alias c_g_atomic_pointer_and g_atomic_pointer_and;
alias c_g_atomic_pointer_compare_and_exchange g_atomic_pointer_compare_and_exchange;
alias c_g_atomic_pointer_get g_atomic_pointer_get;
alias c_g_atomic_pointer_or g_atomic_pointer_or;
alias c_g_atomic_pointer_set g_atomic_pointer_set;
alias c_g_atomic_pointer_xor g_atomic_pointer_xor;

// glib.CharacterSet

alias c_g_convert g_convert;
alias c_g_convert_error_quark g_convert_error_quark;
alias c_g_convert_with_fallback g_convert_with_fallback;
alias c_g_convert_with_iconv g_convert_with_iconv;
alias c_g_filename_display_basename g_filename_display_basename;
alias c_g_filename_display_name g_filename_display_name;
alias c_g_filename_from_utf8 g_filename_from_utf8;
alias c_g_filename_to_utf8 g_filename_to_utf8;
alias c_g_get_charset g_get_charset;
alias c_g_get_codeset g_get_codeset;
alias c_g_get_filename_charsets g_get_filename_charsets;
alias c_g_locale_from_utf8 g_locale_from_utf8;
alias c_g_locale_to_utf8 g_locale_to_utf8;

// glib.Child

alias c_g_child_watch_add g_child_watch_add;
alias c_g_child_watch_add_full g_child_watch_add_full;
alias c_g_child_watch_source_new g_child_watch_source_new;

// glib.DataList

alias c_g_datalist_clear g_datalist_clear;
alias c_g_datalist_foreach g_datalist_foreach;
alias c_g_datalist_get_data g_datalist_get_data;
alias c_g_datalist_get_flags g_datalist_get_flags;
alias c_g_datalist_id_dup_data g_datalist_id_dup_data;
alias c_g_datalist_id_get_data g_datalist_id_get_data;
alias c_g_datalist_id_remove_no_notify g_datalist_id_remove_no_notify;
alias c_g_datalist_id_replace_data g_datalist_id_replace_data;
alias c_g_datalist_id_set_data_full g_datalist_id_set_data_full;
alias c_g_datalist_init g_datalist_init;
alias c_g_datalist_set_flags g_datalist_set_flags;
alias c_g_datalist_unset_flags g_datalist_unset_flags;

// glib.DataSet

alias c_g_dataset_destroy g_dataset_destroy;
alias c_g_dataset_foreach g_dataset_foreach;
alias c_g_dataset_id_get_data g_dataset_id_get_data;
alias c_g_dataset_id_remove_no_notify g_dataset_id_remove_no_notify;
alias c_g_dataset_id_set_data_full g_dataset_id_set_data_full;

// glib.FileUtils

alias c_g_access g_access;
alias c_g_chdir g_chdir;
alias c_g_close g_close;
alias c_g_file_error_from_errno g_file_error_from_errno;
alias c_g_file_error_quark g_file_error_quark;
alias c_g_file_get_contents g_file_get_contents;
alias c_g_file_open_tmp g_file_open_tmp;
alias c_g_file_read_link g_file_read_link;
alias c_g_file_set_contents g_file_set_contents;
alias c_g_file_test g_file_test;
alias c_g_mkdir_with_parents g_mkdir_with_parents;
alias c_g_mkdtemp g_mkdtemp;
alias c_g_mkdtemp_full g_mkdtemp_full;
alias c_g_mkstemp g_mkstemp;
alias c_g_mkstemp_full g_mkstemp_full;
alias c_g_rmdir g_rmdir;
alias c_g_unlink g_unlink;

// glib.Hostname

alias c_g_hostname_is_ascii_encoded g_hostname_is_ascii_encoded;
alias c_g_hostname_is_ip_address g_hostname_is_ip_address;
alias c_g_hostname_is_non_ascii g_hostname_is_non_ascii;
alias c_g_hostname_to_ascii g_hostname_to_ascii;
alias c_g_hostname_to_unicode g_hostname_to_unicode;

// glib.Internationalization

alias c_g_dcgettext g_dcgettext;
alias c_g_dgettext g_dgettext;
alias c_g_dngettext g_dngettext;
alias c_g_dpgettext g_dpgettext;
alias c_g_dpgettext2 g_dpgettext2;
alias c_g_get_language_names g_get_language_names;
alias c_g_get_locale_variants g_get_locale_variants;
alias c_g_strip_context g_strip_context;

// glib.Memory

alias c_g_clear_pointer g_clear_pointer;
alias c_g_free g_free;
alias c_g_malloc g_malloc;
alias c_g_malloc0 g_malloc0;
alias c_g_malloc0_n g_malloc0_n;
alias c_g_malloc_n g_malloc_n;
alias c_g_mem_is_system_malloc g_mem_is_system_malloc;
alias c_g_mem_profile g_mem_profile;
alias c_g_mem_set_vtable g_mem_set_vtable;
alias c_g_memdup g_memdup;
alias c_g_realloc g_realloc;
alias c_g_realloc_n g_realloc_n;
alias c_g_try_malloc g_try_malloc;
alias c_g_try_malloc0 g_try_malloc0;
alias c_g_try_malloc0_n g_try_malloc0_n;
alias c_g_try_malloc_n g_try_malloc_n;
alias c_g_try_realloc g_try_realloc;
alias c_g_try_realloc_n g_try_realloc_n;

// glib.MessageLog

alias c_g_log g_log;
alias c_g_log_default_handler g_log_default_handler;
alias c_g_log_remove_handler g_log_remove_handler;
alias c_g_log_set_always_fatal g_log_set_always_fatal;
alias c_g_log_set_default_handler g_log_set_default_handler;
alias c_g_log_set_fatal_mask g_log_set_fatal_mask;
alias c_g_log_set_handler g_log_set_handler;
alias c_g_log_set_handler_full g_log_set_handler_full;
alias c_g_logv g_logv;

// glib.Messages

alias c_g_on_error_query g_on_error_query;
alias c_g_on_error_stack_trace g_on_error_stack_trace;
alias c_g_print g_print;
alias c_g_printerr g_printerr;
alias c_g_set_print_handler g_set_print_handler;
alias c_g_set_printerr_handler g_set_printerr_handler;

// glib.Quark

alias c_g_intern_static_string g_intern_static_string;
alias c_g_intern_string g_intern_string;
alias c_g_quark_from_static_string g_quark_from_static_string;
alias c_g_quark_from_string g_quark_from_string;
alias c_g_quark_to_string g_quark_to_string;
alias c_g_quark_try_string g_quark_try_string;

// glib.ShellUtils

alias c_g_shell_error_quark g_shell_error_quark;
alias c_g_shell_parse_argv g_shell_parse_argv;
alias c_g_shell_quote g_shell_quote;
alias c_g_shell_unquote g_shell_unquote;

// glib.Unicode

alias c_g_ucs4_to_utf16 g_ucs4_to_utf16;
alias c_g_ucs4_to_utf8 g_ucs4_to_utf8;
alias c_g_unichar_break_type g_unichar_break_type;
alias c_g_unichar_combining_class g_unichar_combining_class;
alias c_g_unichar_compose g_unichar_compose;
alias c_g_unichar_decompose g_unichar_decompose;
alias c_g_unichar_digit_value g_unichar_digit_value;
alias c_g_unichar_fully_decompose g_unichar_fully_decompose;
alias c_g_unichar_get_mirror_char g_unichar_get_mirror_char;
alias c_g_unichar_get_script g_unichar_get_script;
alias c_g_unichar_isalnum g_unichar_isalnum;
alias c_g_unichar_isalpha g_unichar_isalpha;
alias c_g_unichar_iscntrl g_unichar_iscntrl;
alias c_g_unichar_isdefined g_unichar_isdefined;
alias c_g_unichar_isdigit g_unichar_isdigit;
alias c_g_unichar_isgraph g_unichar_isgraph;
alias c_g_unichar_islower g_unichar_islower;
alias c_g_unichar_ismark g_unichar_ismark;
alias c_g_unichar_isprint g_unichar_isprint;
alias c_g_unichar_ispunct g_unichar_ispunct;
alias c_g_unichar_isspace g_unichar_isspace;
alias c_g_unichar_istitle g_unichar_istitle;
alias c_g_unichar_isupper g_unichar_isupper;
alias c_g_unichar_iswide g_unichar_iswide;
alias c_g_unichar_iswide_cjk g_unichar_iswide_cjk;
alias c_g_unichar_isxdigit g_unichar_isxdigit;
alias c_g_unichar_iszerowidth g_unichar_iszerowidth;
alias c_g_unichar_to_utf8 g_unichar_to_utf8;
alias c_g_unichar_tolower g_unichar_tolower;
alias c_g_unichar_totitle g_unichar_totitle;
alias c_g_unichar_toupper g_unichar_toupper;
alias c_g_unichar_type g_unichar_type;
alias c_g_unichar_validate g_unichar_validate;
alias c_g_unichar_xdigit_value g_unichar_xdigit_value;
alias c_g_unicode_canonical_decomposition g_unicode_canonical_decomposition;
alias c_g_unicode_canonical_ordering g_unicode_canonical_ordering;
alias c_g_unicode_script_from_iso15924 g_unicode_script_from_iso15924;
alias c_g_unicode_script_to_iso15924 g_unicode_script_to_iso15924;
alias c_g_utf16_to_ucs4 g_utf16_to_ucs4;
alias c_g_utf16_to_utf8 g_utf16_to_utf8;
alias c_g_utf8_casefold g_utf8_casefold;
alias c_g_utf8_collate g_utf8_collate;
alias c_g_utf8_collate_key g_utf8_collate_key;
alias c_g_utf8_collate_key_for_filename g_utf8_collate_key_for_filename;
alias c_g_utf8_find_next_char g_utf8_find_next_char;
alias c_g_utf8_find_prev_char g_utf8_find_prev_char;
alias c_g_utf8_get_char g_utf8_get_char;
alias c_g_utf8_get_char_validated g_utf8_get_char_validated;
alias c_g_utf8_normalize g_utf8_normalize;
alias c_g_utf8_offset_to_pointer g_utf8_offset_to_pointer;
alias c_g_utf8_pointer_to_offset g_utf8_pointer_to_offset;
alias c_g_utf8_prev_char g_utf8_prev_char;
alias c_g_utf8_strchr g_utf8_strchr;
alias c_g_utf8_strdown g_utf8_strdown;
alias c_g_utf8_strlen g_utf8_strlen;
alias c_g_utf8_strncpy g_utf8_strncpy;
alias c_g_utf8_strrchr g_utf8_strrchr;
alias c_g_utf8_strreverse g_utf8_strreverse;
alias c_g_utf8_strup g_utf8_strup;
alias c_g_utf8_substring g_utf8_substring;
alias c_g_utf8_to_ucs4 g_utf8_to_ucs4;
alias c_g_utf8_to_ucs4_fast g_utf8_to_ucs4_fast;
alias c_g_utf8_to_utf16 g_utf8_to_utf16;
alias c_g_utf8_validate g_utf8_validate;

// glib.UnixUtils

alias c_g_unix_error_quark g_unix_error_quark;
alias c_g_unix_fd_add g_unix_fd_add;
alias c_g_unix_fd_add_full g_unix_fd_add_full;
alias c_g_unix_fd_source_new g_unix_fd_source_new;
alias c_g_unix_open_pipe g_unix_open_pipe;
alias c_g_unix_set_fd_nonblocking g_unix_set_fd_nonblocking;
alias c_g_unix_signal_add g_unix_signal_add;
alias c_g_unix_signal_add_full g_unix_signal_add_full;
alias c_g_unix_signal_source_new g_unix_signal_source_new;

// glib.URI

alias c_g_filename_from_uri g_filename_from_uri;
alias c_g_filename_to_uri g_filename_to_uri;
alias c_g_uri_escape_string g_uri_escape_string;
alias c_g_uri_list_extract_uris g_uri_list_extract_uris;
alias c_g_uri_parse_scheme g_uri_parse_scheme;
alias c_g_uri_unescape_segment g_uri_unescape_segment;
alias c_g_uri_unescape_string g_uri_unescape_string;

// glib.Version

alias c_glib_check_version glib_check_version;
