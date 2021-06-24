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


module glib.c.functions;

import std.stdio;
import glib.c.types;
import gobject.c.types;
version (Windows)
	static immutable LIBRARY_GLIB = ["libglib-2.0-0.dll;g-2.0-0.dll;g-2.dll", "libgmodule-2.0-0.dll;gmodule-2.0-0.dll;gmodule-2.dll", "libgobject-2.0-0.dll;gobject-2.0-0.dll;gobject-2.dll"];
else version (OSX)
	static immutable LIBRARY_GLIB = ["libglib-2.0.0.dylib", "libgmodule-2.0.0.dylib", "libgobject-2.0.0.dylib"];
else
	static immutable LIBRARY_GLIB = ["libglib-2.0.so.0", "libgmodule-2.0.so.0", "libgobject-2.0.so.0"];

__gshared extern(C)
{

	// glib.ArrayG

	GArray* g_array_append_vals(GArray* array, void* data, uint len);
	int g_array_binary_search(GArray* array, void* target, GCompareFunc compareFunc, uint* outMatchIndex);
	GArray* g_array_copy(GArray* array);
	char* g_array_free(GArray* array, int freeSegment);
	uint g_array_get_element_size(GArray* array);
	GArray* g_array_insert_vals(GArray* array, uint index, void* data, uint len);
	GArray* g_array_new(int zeroTerminated, int clear, uint elementSize);
	GArray* g_array_prepend_vals(GArray* array, void* data, uint len);
	GArray* g_array_ref(GArray* array);
	GArray* g_array_remove_index(GArray* array, uint index);
	GArray* g_array_remove_index_fast(GArray* array, uint index);
	GArray* g_array_remove_range(GArray* array, uint index, uint length);
	void g_array_set_clear_func(GArray* array, GDestroyNotify clearFunc);
	GArray* g_array_set_size(GArray* array, uint length);
	GArray* g_array_sized_new(int zeroTerminated, int clear, uint elementSize, uint reservedSize);
	void g_array_sort(GArray* array, GCompareFunc compareFunc);
	void g_array_sort_with_data(GArray* array, GCompareDataFunc compareFunc, void* userData);
	void* g_array_steal(GArray* array, size_t* len);
	void g_array_unref(GArray* array);

	// glib.AsyncQueue

	int g_async_queue_length(GAsyncQueue* queue);
	int g_async_queue_length_unlocked(GAsyncQueue* queue);
	void g_async_queue_lock(GAsyncQueue* queue);
	void* g_async_queue_pop(GAsyncQueue* queue);
	void* g_async_queue_pop_unlocked(GAsyncQueue* queue);
	void g_async_queue_push(GAsyncQueue* queue, void* data);
	void g_async_queue_push_front(GAsyncQueue* queue, void* item);
	void g_async_queue_push_front_unlocked(GAsyncQueue* queue, void* item);
	void g_async_queue_push_sorted(GAsyncQueue* queue, void* data, GCompareDataFunc func, void* userData);
	void g_async_queue_push_sorted_unlocked(GAsyncQueue* queue, void* data, GCompareDataFunc func, void* userData);
	void g_async_queue_push_unlocked(GAsyncQueue* queue, void* data);
	GAsyncQueue* g_async_queue_ref(GAsyncQueue* queue);
	void g_async_queue_ref_unlocked(GAsyncQueue* queue);
	int g_async_queue_remove(GAsyncQueue* queue, void* item);
	int g_async_queue_remove_unlocked(GAsyncQueue* queue, void* item);
	void g_async_queue_sort(GAsyncQueue* queue, GCompareDataFunc func, void* userData);
	void g_async_queue_sort_unlocked(GAsyncQueue* queue, GCompareDataFunc func, void* userData);
	void* g_async_queue_timed_pop(GAsyncQueue* queue, GTimeVal* endTime);
	void* g_async_queue_timed_pop_unlocked(GAsyncQueue* queue, GTimeVal* endTime);
	void* g_async_queue_timeout_pop(GAsyncQueue* queue, ulong timeout);
	void* g_async_queue_timeout_pop_unlocked(GAsyncQueue* queue, ulong timeout);
	void* g_async_queue_try_pop(GAsyncQueue* queue);
	void* g_async_queue_try_pop_unlocked(GAsyncQueue* queue);
	void g_async_queue_unlock(GAsyncQueue* queue);
	void g_async_queue_unref(GAsyncQueue* queue);
	void g_async_queue_unref_and_unlock(GAsyncQueue* queue);
	GAsyncQueue* g_async_queue_new();
	GAsyncQueue* g_async_queue_new_full(GDestroyNotify itemFreeFunc);

	// glib.BookmarkFile

	void g_bookmark_file_add_application(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, const(char)* exec);
	void g_bookmark_file_add_group(GBookmarkFile* bookmark, const(char)* uri, const(char)* group);
	void g_bookmark_file_free(GBookmarkFile* bookmark);
	uint g_bookmark_file_get_added(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	GDateTime* g_bookmark_file_get_added_date_time(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	int g_bookmark_file_get_app_info(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, char** exec, uint* count, uint* stamp, GError** err);
	int g_bookmark_file_get_application_info(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, char** exec, uint* count, GDateTime** stamp, GError** err);
	char** g_bookmark_file_get_applications(GBookmarkFile* bookmark, const(char)* uri, size_t* length, GError** err);
	char* g_bookmark_file_get_description(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	char** g_bookmark_file_get_groups(GBookmarkFile* bookmark, const(char)* uri, size_t* length, GError** err);
	int g_bookmark_file_get_icon(GBookmarkFile* bookmark, const(char)* uri, char** href, char** mimeType, GError** err);
	int g_bookmark_file_get_is_private(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	char* g_bookmark_file_get_mime_type(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	uint g_bookmark_file_get_modified(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	GDateTime* g_bookmark_file_get_modified_date_time(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	int g_bookmark_file_get_size(GBookmarkFile* bookmark);
	char* g_bookmark_file_get_title(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	char** g_bookmark_file_get_uris(GBookmarkFile* bookmark, size_t* length);
	uint g_bookmark_file_get_visited(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	GDateTime* g_bookmark_file_get_visited_date_time(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	int g_bookmark_file_has_application(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, GError** err);
	int g_bookmark_file_has_group(GBookmarkFile* bookmark, const(char)* uri, const(char)* group, GError** err);
	int g_bookmark_file_has_item(GBookmarkFile* bookmark, const(char)* uri);
	int g_bookmark_file_load_from_data(GBookmarkFile* bookmark, char* data, size_t length, GError** err);
	int g_bookmark_file_load_from_data_dirs(GBookmarkFile* bookmark, char* file, char** fullPath, GError** err);
	int g_bookmark_file_load_from_file(GBookmarkFile* bookmark, char* filename, GError** err);
	int g_bookmark_file_move_item(GBookmarkFile* bookmark, const(char)* oldUri, const(char)* newUri, GError** err);
	int g_bookmark_file_remove_application(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, GError** err);
	int g_bookmark_file_remove_group(GBookmarkFile* bookmark, const(char)* uri, const(char)* group, GError** err);
	int g_bookmark_file_remove_item(GBookmarkFile* bookmark, const(char)* uri, GError** err);
	void g_bookmark_file_set_added(GBookmarkFile* bookmark, const(char)* uri, uint added);
	void g_bookmark_file_set_added_date_time(GBookmarkFile* bookmark, const(char)* uri, GDateTime* added);
	int g_bookmark_file_set_app_info(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, const(char)* exec, int count, uint stamp, GError** err);
	int g_bookmark_file_set_application_info(GBookmarkFile* bookmark, const(char)* uri, const(char)* name, const(char)* exec, int count, GDateTime* stamp, GError** err);
	void g_bookmark_file_set_description(GBookmarkFile* bookmark, const(char)* uri, const(char)* description);
	void g_bookmark_file_set_groups(GBookmarkFile* bookmark, const(char)* uri, char** groups, size_t length);
	void g_bookmark_file_set_icon(GBookmarkFile* bookmark, const(char)* uri, const(char)* href, const(char)* mimeType);
	void g_bookmark_file_set_is_private(GBookmarkFile* bookmark, const(char)* uri, int isPrivate);
	void g_bookmark_file_set_mime_type(GBookmarkFile* bookmark, const(char)* uri, const(char)* mimeType);
	void g_bookmark_file_set_modified(GBookmarkFile* bookmark, const(char)* uri, uint modified);
	void g_bookmark_file_set_modified_date_time(GBookmarkFile* bookmark, const(char)* uri, GDateTime* modified);
	void g_bookmark_file_set_title(GBookmarkFile* bookmark, const(char)* uri, const(char)* title);
	void g_bookmark_file_set_visited(GBookmarkFile* bookmark, const(char)* uri, uint visited);
	void g_bookmark_file_set_visited_date_time(GBookmarkFile* bookmark, const(char)* uri, GDateTime* visited);
	char* g_bookmark_file_to_data(GBookmarkFile* bookmark, size_t* length, GError** err);
	int g_bookmark_file_to_file(GBookmarkFile* bookmark, char* filename, GError** err);
	GQuark g_bookmark_file_error_quark();
	GBookmarkFile* g_bookmark_file_new();

	// glib.ByteArray

	GByteArray* g_byte_array_append(GByteArray* array, ubyte* data, uint len);
	ubyte* g_byte_array_free(GByteArray* array, int freeSegment);
	GBytes* g_byte_array_free_to_bytes(GByteArray* array);
	GByteArray* g_byte_array_new();
	GByteArray* g_byte_array_new_take(ubyte* data, size_t len);
	GByteArray* g_byte_array_prepend(GByteArray* array, ubyte* data, uint len);
	GByteArray* g_byte_array_ref(GByteArray* array);
	GByteArray* g_byte_array_remove_index(GByteArray* array, uint index);
	GByteArray* g_byte_array_remove_index_fast(GByteArray* array, uint index);
	GByteArray* g_byte_array_remove_range(GByteArray* array, uint index, uint length);
	GByteArray* g_byte_array_set_size(GByteArray* array, uint length);
	GByteArray* g_byte_array_sized_new(uint reservedSize);
	void g_byte_array_sort(GByteArray* array, GCompareFunc compareFunc);
	void g_byte_array_sort_with_data(GByteArray* array, GCompareDataFunc compareFunc, void* userData);
	ubyte* g_byte_array_steal(GByteArray* array, size_t* len);
	void g_byte_array_unref(GByteArray* array);

	// glib.Bytes

	GBytes* g_bytes_new(void* data, size_t size);
	GBytes* g_bytes_new_static(void* data, size_t size);
	GBytes* g_bytes_new_take(void* data, size_t size);
	GBytes* g_bytes_new_with_free_func(void* data, size_t size, GDestroyNotify freeFunc, void* userData);
	int g_bytes_compare(void* bytes1, void* bytes2);
	int g_bytes_equal(void* bytes1, void* bytes2);
	void* g_bytes_get_data(GBytes* bytes, size_t* size);
	size_t g_bytes_get_size(GBytes* bytes);
	uint g_bytes_hash(void* bytes);
	GBytes* g_bytes_new_from_bytes(GBytes* bytes, size_t offset, size_t length);
	GBytes* g_bytes_ref(GBytes* bytes);
	void g_bytes_unref(GBytes* bytes);
	GByteArray* g_bytes_unref_to_array(GBytes* bytes);
	void* g_bytes_unref_to_data(GBytes* bytes, size_t* size);

	// glib.Checksum

	GChecksum* g_checksum_new(GChecksumType checksumType);
	GChecksum* g_checksum_copy(GChecksum* checksum);
	void g_checksum_free(GChecksum* checksum);
	void g_checksum_get_digest(GChecksum* checksum, ubyte* buffer, size_t* digestLen);
	const(char)* g_checksum_get_string(GChecksum* checksum);
	void g_checksum_reset(GChecksum* checksum);
	void g_checksum_update(GChecksum* checksum, char* data, ptrdiff_t length);
	ptrdiff_t g_checksum_type_get_length(GChecksumType checksumType);
	char* g_compute_checksum_for_bytes(GChecksumType checksumType, GBytes* data);
	char* g_compute_checksum_for_data(GChecksumType checksumType, char* data, size_t length);
	char* g_compute_checksum_for_string(GChecksumType checksumType, const(char)* str, ptrdiff_t length);

	// glib.Cond

	void g_cond_broadcast(GCond* cond);
	void g_cond_clear(GCond* cond);
	void g_cond_init(GCond* cond);
	void g_cond_signal(GCond* cond);
	void g_cond_wait(GCond* cond, GMutex* mutex);
	int g_cond_wait_until(GCond* cond, GMutex* mutex, long endTime);

	// glib.Date

	GDate* g_date_new();
	GDate* g_date_new_dmy(GDateDay day, GDateMonth month, GDateYear year);
	GDate* g_date_new_julian(uint julianDay);
	void g_date_add_days(GDate* date, uint nDays);
	void g_date_add_months(GDate* date, uint nMonths);
	void g_date_add_years(GDate* date, uint nYears);
	void g_date_clamp(GDate* date, GDate* minDate, GDate* maxDate);
	void g_date_clear(GDate* date, uint nDates);
	int g_date_compare(GDate* lhs, GDate* rhs);
	GDate* g_date_copy(GDate* date);
	int g_date_days_between(GDate* date1, GDate* date2);
	void g_date_free(GDate* date);
	GDateDay g_date_get_day(GDate* date);
	uint g_date_get_day_of_year(GDate* date);
	uint g_date_get_iso8601_week_of_year(GDate* date);
	uint g_date_get_julian(GDate* date);
	uint g_date_get_monday_week_of_year(GDate* date);
	GDateMonth g_date_get_month(GDate* date);
	uint g_date_get_sunday_week_of_year(GDate* date);
	GDateWeekday g_date_get_weekday(GDate* date);
	GDateYear g_date_get_year(GDate* date);
	int g_date_is_first_of_month(GDate* date);
	int g_date_is_last_of_month(GDate* date);
	void g_date_order(GDate* date1, GDate* date2);
	void g_date_set_day(GDate* date, GDateDay day);
	void g_date_set_dmy(GDate* date, GDateDay day, GDateMonth month, GDateYear y);
	void g_date_set_julian(GDate* date, uint julianDate);
	void g_date_set_month(GDate* date, GDateMonth month);
	void g_date_set_parse(GDate* date, const(char)* str);
	void g_date_set_time(GDate* date, GTime time);
	void g_date_set_time_t(GDate* date, uint timet);
	void g_date_set_time_val(GDate* date, GTimeVal* timeval);
	void g_date_set_year(GDate* date, GDateYear year);
	void g_date_subtract_days(GDate* date, uint nDays);
	void g_date_subtract_months(GDate* date, uint nMonths);
	void g_date_subtract_years(GDate* date, uint nYears);
	void g_date_to_struct_tm(GDate* date, void* tm);
	int g_date_valid(GDate* date);
	ubyte g_date_get_days_in_month(GDateMonth month, GDateYear year);
	ubyte g_date_get_monday_weeks_in_year(GDateYear year);
	ubyte g_date_get_sunday_weeks_in_year(GDateYear year);
	int g_date_is_leap_year(GDateYear year);
	size_t g_date_strftime(char* s, size_t slen, const(char)* format, GDate* date);
	int g_date_valid_day(GDateDay day);
	int g_date_valid_dmy(GDateDay day, GDateMonth month, GDateYear year);
	int g_date_valid_julian(uint julianDate);
	int g_date_valid_month(GDateMonth month);
	int g_date_valid_weekday(GDateWeekday weekday);
	int g_date_valid_year(GDateYear year);

	// glib.DateTime

	GDateTime* g_date_time_new(GTimeZone* tz, int year, int month, int day, int hour, int minute, double seconds);
	GDateTime* g_date_time_new_from_iso8601(const(char)* text, GTimeZone* defaultTz);
	GDateTime* g_date_time_new_from_timeval_local(GTimeVal* tv);
	GDateTime* g_date_time_new_from_timeval_utc(GTimeVal* tv);
	GDateTime* g_date_time_new_from_unix_local(long t);
	GDateTime* g_date_time_new_from_unix_utc(long t);
	GDateTime* g_date_time_new_local(int year, int month, int day, int hour, int minute, double seconds);
	GDateTime* g_date_time_new_now(GTimeZone* tz);
	GDateTime* g_date_time_new_now_local();
	GDateTime* g_date_time_new_now_utc();
	GDateTime* g_date_time_new_utc(int year, int month, int day, int hour, int minute, double seconds);
	GDateTime* g_date_time_add(GDateTime* datetime, GTimeSpan timespan);
	GDateTime* g_date_time_add_days(GDateTime* datetime, int days);
	GDateTime* g_date_time_add_full(GDateTime* datetime, int years, int months, int days, int hours, int minutes, double seconds);
	GDateTime* g_date_time_add_hours(GDateTime* datetime, int hours);
	GDateTime* g_date_time_add_minutes(GDateTime* datetime, int minutes);
	GDateTime* g_date_time_add_months(GDateTime* datetime, int months);
	GDateTime* g_date_time_add_seconds(GDateTime* datetime, double seconds);
	GDateTime* g_date_time_add_weeks(GDateTime* datetime, int weeks);
	GDateTime* g_date_time_add_years(GDateTime* datetime, int years);
	int g_date_time_compare(void* dt1, void* dt2);
	GTimeSpan g_date_time_difference(GDateTime* end, GDateTime* begin);
	int g_date_time_equal(void* dt1, void* dt2);
	char* g_date_time_format(GDateTime* datetime, const(char)* format);
	char* g_date_time_format_iso8601(GDateTime* datetime);
	int g_date_time_get_day_of_month(GDateTime* datetime);
	int g_date_time_get_day_of_week(GDateTime* datetime);
	int g_date_time_get_day_of_year(GDateTime* datetime);
	int g_date_time_get_hour(GDateTime* datetime);
	int g_date_time_get_microsecond(GDateTime* datetime);
	int g_date_time_get_minute(GDateTime* datetime);
	int g_date_time_get_month(GDateTime* datetime);
	int g_date_time_get_second(GDateTime* datetime);
	double g_date_time_get_seconds(GDateTime* datetime);
	GTimeZone* g_date_time_get_timezone(GDateTime* datetime);
	const(char)* g_date_time_get_timezone_abbreviation(GDateTime* datetime);
	GTimeSpan g_date_time_get_utc_offset(GDateTime* datetime);
	int g_date_time_get_week_numbering_year(GDateTime* datetime);
	int g_date_time_get_week_of_year(GDateTime* datetime);
	int g_date_time_get_year(GDateTime* datetime);
	void g_date_time_get_ymd(GDateTime* datetime, int* year, int* month, int* day);
	uint g_date_time_hash(void* datetime);
	int g_date_time_is_daylight_savings(GDateTime* datetime);
	GDateTime* g_date_time_ref(GDateTime* datetime);
	GDateTime* g_date_time_to_local(GDateTime* datetime);
	int g_date_time_to_timeval(GDateTime* datetime, GTimeVal* tv);
	GDateTime* g_date_time_to_timezone(GDateTime* datetime, GTimeZone* tz);
	long g_date_time_to_unix(GDateTime* datetime);
	GDateTime* g_date_time_to_utc(GDateTime* datetime);
	void g_date_time_unref(GDateTime* datetime);

	// glib.Directory

	void g_dir_close(GDir* dir);
	char* g_dir_read_name(GDir* dir);
	void g_dir_rewind(GDir* dir);
	char* g_dir_make_tmp(char* tmpl, GError** err);
	GDir* g_dir_open(const(char)* path, uint flags, GError** err);

	// glib.ErrorG

	GError* g_error_new(GQuark domain, int code, const(char)* format, ... );
	GError* g_error_new_literal(GQuark domain, int code, const(char)* message);
	GError* g_error_new_valist(GQuark domain, int code, const(char)* format, void* args);
	GError* g_error_copy(GError* error);
	void g_error_free(GError* error);
	int g_error_matches(GError* error, GQuark domain, int code);
	GQuark g_error_domain_register(const(char)* errorTypeName, size_t errorTypePrivateSize, GErrorInitFunc errorTypeInit, GErrorCopyFunc errorTypeCopy, GErrorClearFunc errorTypeClear);
	GQuark g_error_domain_register_static(const(char)* errorTypeName, size_t errorTypePrivateSize, GErrorInitFunc errorTypeInit, GErrorCopyFunc errorTypeCopy, GErrorClearFunc errorTypeClear);
	void g_propagate_error(GError** dest, GError* src);
	void g_set_error_literal(GError** err, GQuark domain, int code, const(char)* message);
	void g_prefix_error(GError** err, const(char)* format, ... );
	void g_propagate_prefixed_error(GError** dest, GError* src, const(char)* format, ... );
	void g_set_error(GError** err, GQuark domain, int code, const(char)* format, ... );

	// glib.HashTable

	int g_hash_table_add(GHashTable* hashTable, void* key);
	int g_hash_table_contains(GHashTable* hashTable, void* key);
	void g_hash_table_destroy(GHashTable* hashTable);
	void* g_hash_table_find(GHashTable* hashTable, GHRFunc predicate, void* userData);
	void g_hash_table_foreach(GHashTable* hashTable, GHFunc func, void* userData);
	uint g_hash_table_foreach_remove(GHashTable* hashTable, GHRFunc func, void* userData);
	uint g_hash_table_foreach_steal(GHashTable* hashTable, GHRFunc func, void* userData);
	GList* g_hash_table_get_keys(GHashTable* hashTable);
	void** g_hash_table_get_keys_as_array(GHashTable* hashTable, uint* length);
	GList* g_hash_table_get_values(GHashTable* hashTable);
	int g_hash_table_insert(GHashTable* hashTable, void* key, void* value);
	void* g_hash_table_lookup(GHashTable* hashTable, void* key);
	int g_hash_table_lookup_extended(GHashTable* hashTable, void* lookupKey, void** origKey, void** value);
	GHashTable* g_hash_table_new(GHashFunc hashFunc, GEqualFunc keyEqualFunc);
	GHashTable* g_hash_table_new_full(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc);
	GHashTable* g_hash_table_ref(GHashTable* hashTable);
	int g_hash_table_remove(GHashTable* hashTable, void* key);
	void g_hash_table_remove_all(GHashTable* hashTable);
	int g_hash_table_replace(GHashTable* hashTable, void* key, void* value);
	uint g_hash_table_size(GHashTable* hashTable);
	int g_hash_table_steal(GHashTable* hashTable, void* key);
	void g_hash_table_steal_all(GHashTable* hashTable);
	int g_hash_table_steal_extended(GHashTable* hashTable, void* lookupKey, void** stolenKey, void** stolenValue);
	void g_hash_table_unref(GHashTable* hashTable);
	int g_direct_equal(void* v1, void* v2);
	uint g_direct_hash(void* v);
	int g_double_equal(void* v1, void* v2);
	uint g_double_hash(void* v);
	int g_int64_equal(void* v1, void* v2);
	uint g_int64_hash(void* v);
	int g_int_equal(void* v1, void* v2);
	uint g_int_hash(void* v);
	int g_str_equal(void* v1, void* v2);
	uint g_str_hash(void* v);

	// glib.HashTableIter

	GHashTable* g_hash_table_iter_get_hash_table(GHashTableIter* iter);
	void g_hash_table_iter_init(GHashTableIter* iter, GHashTable* hashTable);
	int g_hash_table_iter_next(GHashTableIter* iter, void** key, void** value);
	void g_hash_table_iter_remove(GHashTableIter* iter);
	void g_hash_table_iter_replace(GHashTableIter* iter, void* value);
	void g_hash_table_iter_steal(GHashTableIter* iter);

	// glib.Hmac

	GHmac* g_hmac_copy(GHmac* hmac);
	void g_hmac_get_digest(GHmac* hmac, ubyte* buffer, size_t* digestLen);
	const(char)* g_hmac_get_string(GHmac* hmac);
	GHmac* g_hmac_ref(GHmac* hmac);
	void g_hmac_unref(GHmac* hmac);
	void g_hmac_update(GHmac* hmac, char* data, ptrdiff_t length);
	GHmac* g_hmac_new(GChecksumType digestType, char* key, size_t keyLen);
	char* g_compute_hmac_for_data(GChecksumType digestType, char* key, size_t keyLen, char* data, size_t length);
	char* g_compute_hmac_for_string(GChecksumType digestType, char* key, size_t keyLen, const(char)* str, ptrdiff_t length);
	char* g_compute_hmac_for_bytes(GChecksumType digestType, GBytes* key, GBytes* data);

	// glib.Hook

	int g_hook_compare_ids(GHook* newHook, GHook* sibling);
	GHook* g_hook_alloc(GHookList* hookList);
	int g_hook_destroy(GHookList* hookList, gulong hookId);
	void g_hook_destroy_link(GHookList* hookList, GHook* hook);
	GHook* g_hook_find(GHookList* hookList, int needValids, GHookFindFunc func, void* data);
	GHook* g_hook_find_data(GHookList* hookList, int needValids, void* data);
	GHook* g_hook_find_func(GHookList* hookList, int needValids, void* func);
	GHook* g_hook_find_func_data(GHookList* hookList, int needValids, void* func, void* data);
	GHook* g_hook_first_valid(GHookList* hookList, int mayBeInCall);
	void g_hook_free(GHookList* hookList, GHook* hook);
	GHook* g_hook_get(GHookList* hookList, gulong hookId);
	void g_hook_insert_before(GHookList* hookList, GHook* sibling, GHook* hook);
	void g_hook_insert_sorted(GHookList* hookList, GHook* hook, GHookCompareFunc func);
	GHook* g_hook_next_valid(GHookList* hookList, GHook* hook, int mayBeInCall);
	void g_hook_prepend(GHookList* hookList, GHook* hook);
	GHook* g_hook_ref(GHookList* hookList, GHook* hook);
	void g_hook_unref(GHookList* hookList, GHook* hook);

	// glib.HookList

	void g_hook_list_clear(GHookList* hookList);
	void g_hook_list_init(GHookList* hookList, uint hookSize);
	void g_hook_list_invoke(GHookList* hookList, int mayRecurse);
	void g_hook_list_invoke_check(GHookList* hookList, int mayRecurse);
	void g_hook_list_marshal(GHookList* hookList, int mayRecurse, GHookMarshaller marshaller, void* marshalData);
	void g_hook_list_marshal_check(GHookList* hookList, int mayRecurse, GHookCheckMarshaller marshaller, void* marshalData);

	// glib.IConv

	size_t g_iconv(GIConv converter, char** inbuf, size_t* inbytesLeft, char** outbuf, size_t* outbytesLeft);
	int g_iconv_close(GIConv converter);
	GIConv g_iconv_open(const(char)* toCodeset, const(char)* fromCodeset);

	// glib.IOChannel

	GIOChannel* g_io_channel_new_file(char* filename, const(char)* mode, GError** err);
	GIOChannel* g_io_channel_unix_new(int fd);
	void g_io_channel_close(GIOChannel* channel);
	GIOStatus g_io_channel_flush(GIOChannel* channel, GError** err);
	GIOCondition g_io_channel_get_buffer_condition(GIOChannel* channel);
	size_t g_io_channel_get_buffer_size(GIOChannel* channel);
	int g_io_channel_get_buffered(GIOChannel* channel);
	int g_io_channel_get_close_on_unref(GIOChannel* channel);
	const(char)* g_io_channel_get_encoding(GIOChannel* channel);
	GIOFlags g_io_channel_get_flags(GIOChannel* channel);
	const(char)* g_io_channel_get_line_term(GIOChannel* channel, int* length);
	void g_io_channel_init(GIOChannel* channel);
	GIOError g_io_channel_read(GIOChannel* channel, char* buf, size_t count, size_t* bytesRead);
	GIOStatus g_io_channel_read_chars(GIOChannel* channel, char* buf, size_t count, size_t* bytesRead, GError** err);
	GIOStatus g_io_channel_read_line(GIOChannel* channel, char** strReturn, size_t* length, size_t* terminatorPos, GError** err);
	GIOStatus g_io_channel_read_line_string(GIOChannel* channel, GString* buffer, size_t* terminatorPos, GError** err);
	GIOStatus g_io_channel_read_to_end(GIOChannel* channel, char** strReturn, size_t* length, GError** err);
	GIOStatus g_io_channel_read_unichar(GIOChannel* channel, dchar* thechar, GError** err);
	GIOChannel* g_io_channel_ref(GIOChannel* channel);
	GIOError g_io_channel_seek(GIOChannel* channel, long offset, GSeekType type);
	GIOStatus g_io_channel_seek_position(GIOChannel* channel, long offset, GSeekType type, GError** err);
	void g_io_channel_set_buffer_size(GIOChannel* channel, size_t size);
	void g_io_channel_set_buffered(GIOChannel* channel, int buffered);
	void g_io_channel_set_close_on_unref(GIOChannel* channel, int doClose);
	GIOStatus g_io_channel_set_encoding(GIOChannel* channel, const(char)* encoding, GError** err);
	GIOStatus g_io_channel_set_flags(GIOChannel* channel, GIOFlags flags, GError** err);
	void g_io_channel_set_line_term(GIOChannel* channel, const(char)* lineTerm, int length);
	GIOStatus g_io_channel_shutdown(GIOChannel* channel, int flush, GError** err);
	int g_io_channel_unix_get_fd(GIOChannel* channel);
	void g_io_channel_unref(GIOChannel* channel);
	GIOError g_io_channel_write(GIOChannel* channel, const(char)* buf, size_t count, size_t* bytesWritten);
	GIOStatus g_io_channel_write_chars(GIOChannel* channel, char* buf, ptrdiff_t count, size_t* bytesWritten, GError** err);
	GIOStatus g_io_channel_write_unichar(GIOChannel* channel, dchar thechar, GError** err);
	GIOChannelError g_io_channel_error_from_errno(int en);
	GQuark g_io_channel_error_quark();
	uint g_io_add_watch(GIOChannel* channel, GIOCondition condition, GIOFunc func, void* userData);
	uint g_io_add_watch_full(GIOChannel* channel, int priority, GIOCondition condition, GIOFunc func, void* userData, GDestroyNotify notify);
	GSource* g_io_create_watch(GIOChannel* channel, GIOCondition condition);

	// glib.KeyFile

	GKeyFile* g_key_file_new();
	void g_key_file_free(GKeyFile* keyFile);
	int g_key_file_get_boolean(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int* g_key_file_get_boolean_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err);
	char* g_key_file_get_comment(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	double g_key_file_get_double(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	double* g_key_file_get_double_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err);
	char** g_key_file_get_groups(GKeyFile* keyFile, size_t* length);
	long g_key_file_get_int64(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int g_key_file_get_integer(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int* g_key_file_get_integer_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err);
	char** g_key_file_get_keys(GKeyFile* keyFile, const(char)* groupName, size_t* length, GError** err);
	char* g_key_file_get_locale_for_key(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale);
	char* g_key_file_get_locale_string(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, GError** err);
	char** g_key_file_get_locale_string_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, size_t* length, GError** err);
	char* g_key_file_get_start_group(GKeyFile* keyFile);
	char* g_key_file_get_string(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	char** g_key_file_get_string_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, size_t* length, GError** err);
	ulong g_key_file_get_uint64(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	char* g_key_file_get_value(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int g_key_file_has_group(GKeyFile* keyFile, const(char)* groupName);
	int g_key_file_has_key(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int g_key_file_load_from_bytes(GKeyFile* keyFile, GBytes* bytes, GKeyFileFlags flags, GError** err);
	int g_key_file_load_from_data(GKeyFile* keyFile, const(char)* data, size_t length, GKeyFileFlags flags, GError** err);
	int g_key_file_load_from_data_dirs(GKeyFile* keyFile, char* file, char** fullPath, GKeyFileFlags flags, GError** err);
	int g_key_file_load_from_dirs(GKeyFile* keyFile, char* file, char** searchDirs, char** fullPath, GKeyFileFlags flags, GError** err);
	int g_key_file_load_from_file(GKeyFile* keyFile, char* file, GKeyFileFlags flags, GError** err);
	GKeyFile* g_key_file_ref(GKeyFile* keyFile);
	int g_key_file_remove_comment(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int g_key_file_remove_group(GKeyFile* keyFile, const(char)* groupName, GError** err);
	int g_key_file_remove_key(GKeyFile* keyFile, const(char)* groupName, const(char)* key, GError** err);
	int g_key_file_save_to_file(GKeyFile* keyFile, const(char)* filename, GError** err);
	void g_key_file_set_boolean(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int value);
	void g_key_file_set_boolean_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int* list, size_t length);
	int g_key_file_set_comment(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* comment, GError** err);
	void g_key_file_set_double(GKeyFile* keyFile, const(char)* groupName, const(char)* key, double value);
	void g_key_file_set_double_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, double* list, size_t length);
	void g_key_file_set_int64(GKeyFile* keyFile, const(char)* groupName, const(char)* key, long value);
	void g_key_file_set_integer(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int value);
	void g_key_file_set_integer_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, int* list, size_t length);
	void g_key_file_set_list_separator(GKeyFile* keyFile, char separator);
	void g_key_file_set_locale_string(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, const(char)* string_);
	void g_key_file_set_locale_string_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* locale, char** list, size_t length);
	void g_key_file_set_string(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* string_);
	void g_key_file_set_string_list(GKeyFile* keyFile, const(char)* groupName, const(char)* key, char** list, size_t length);
	void g_key_file_set_uint64(GKeyFile* keyFile, const(char)* groupName, const(char)* key, ulong value);
	void g_key_file_set_value(GKeyFile* keyFile, const(char)* groupName, const(char)* key, const(char)* value);
	char* g_key_file_to_data(GKeyFile* keyFile, size_t* length, GError** err);
	void g_key_file_unref(GKeyFile* keyFile);
	GQuark g_key_file_error_quark();

	// glib.ListG

	GList* g_list_alloc();
	GList* g_list_append(GList* list, void* data);
	GList* g_list_concat(GList* list1, GList* list2);
	GList* g_list_copy(GList* list);
	GList* g_list_copy_deep(GList* list, GCopyFunc func, void* userData);
	GList* g_list_delete_link(GList* list, GList* link);
	GList* g_list_find(GList* list, void* data);
	GList* g_list_find_custom(GList* list, void* data, GCompareFunc func);
	GList* g_list_first(GList* list);
	void g_list_foreach(GList* list, GFunc func, void* userData);
	void g_list_free(GList* list);
	void g_list_free_1(GList* list);
	void g_list_free_full(GList* list, GDestroyNotify freeFunc);
	int g_list_index(GList* list, void* data);
	GList* g_list_insert(GList* list, void* data, int position);
	GList* g_list_insert_before(GList* list, GList* sibling, void* data);
	GList* g_list_insert_before_link(GList* list, GList* sibling, GList* link);
	GList* g_list_insert_sorted(GList* list, void* data, GCompareFunc func);
	GList* g_list_insert_sorted_with_data(GList* list, void* data, GCompareDataFunc func, void* userData);
	GList* g_list_last(GList* list);
	uint g_list_length(GList* list);
	GList* g_list_nth(GList* list, uint n);
	void* g_list_nth_data(GList* list, uint n);
	GList* g_list_nth_prev(GList* list, uint n);
	int g_list_position(GList* list, GList* llink);
	GList* g_list_prepend(GList* list, void* data);
	GList* g_list_remove(GList* list, void* data);
	GList* g_list_remove_all(GList* list, void* data);
	GList* g_list_remove_link(GList* list, GList* llink);
	GList* g_list_reverse(GList* list);
	GList* g_list_sort(GList* list, GCompareFunc compareFunc);
	GList* g_list_sort_with_data(GList* list, GCompareDataFunc compareFunc, void* userData);
	void g_clear_list(GList** listPtr, GDestroyNotify destroy);

	// glib.MainContext

	GMainContext* g_main_context_new();
	int g_main_context_acquire(GMainContext* context);
	void g_main_context_add_poll(GMainContext* context, GPollFD* fd, int priority);
	int g_main_context_check(GMainContext* context, int maxPriority, GPollFD* fds, int nFds);
	void g_main_context_dispatch(GMainContext* context);
	GSource* g_main_context_find_source_by_funcs_user_data(GMainContext* context, GSourceFuncs* funcs, void* userData);
	GSource* g_main_context_find_source_by_id(GMainContext* context, uint sourceId);
	GSource* g_main_context_find_source_by_user_data(GMainContext* context, void* userData);
	GPollFunc g_main_context_get_poll_func(GMainContext* context);
	void g_main_context_invoke(GMainContext* context, GSourceFunc function_, void* data);
	void g_main_context_invoke_full(GMainContext* context, int priority, GSourceFunc function_, void* data, GDestroyNotify notify);
	int g_main_context_is_owner(GMainContext* context);
	int g_main_context_iteration(GMainContext* context, int mayBlock);
	int g_main_context_pending(GMainContext* context);
	void g_main_context_pop_thread_default(GMainContext* context);
	int g_main_context_prepare(GMainContext* context, int* priority);
	void g_main_context_push_thread_default(GMainContext* context);
	int g_main_context_query(GMainContext* context, int maxPriority, int* timeout, GPollFD* fds, int nFds);
	GMainContext* g_main_context_ref(GMainContext* context);
	void g_main_context_release(GMainContext* context);
	void g_main_context_remove_poll(GMainContext* context, GPollFD* fd);
	void g_main_context_set_poll_func(GMainContext* context, GPollFunc func);
	void g_main_context_unref(GMainContext* context);
	int g_main_context_wait(GMainContext* context, GCond* cond, GMutex* mutex);
	void g_main_context_wakeup(GMainContext* context);
	GMainContext* g_main_context_default();
	GMainContext* g_main_context_get_thread_default();
	GMainContext* g_main_context_ref_thread_default();

	// glib.MainLoop

	GMainLoop* g_main_loop_new(GMainContext* context, int isRunning);
	GMainContext* g_main_loop_get_context(GMainLoop* loop);
	int g_main_loop_is_running(GMainLoop* loop);
	void g_main_loop_quit(GMainLoop* loop);
	GMainLoop* g_main_loop_ref(GMainLoop* loop);
	void g_main_loop_run(GMainLoop* loop);
	void g_main_loop_unref(GMainLoop* loop);
	GSource* g_main_current_source();
	int g_main_depth();
	int g_poll(GPollFD* fds, uint nfds, int timeout);

	// glib.MappedFile

	GMappedFile* g_mapped_file_new(char* filename, int writable, GError** err);
	GMappedFile* g_mapped_file_new_from_fd(int fd, int writable, GError** err);
	void g_mapped_file_free(GMappedFile* file);
	GBytes* g_mapped_file_get_bytes(GMappedFile* file);
	char* g_mapped_file_get_contents(GMappedFile* file);
	size_t g_mapped_file_get_length(GMappedFile* file);
	GMappedFile* g_mapped_file_ref(GMappedFile* file);
	void g_mapped_file_unref(GMappedFile* file);

	// glib.SimpleXML

	GMarkupParseContext* g_markup_parse_context_new(GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify);
	int g_markup_parse_context_end_parse(GMarkupParseContext* context, GError** err);
	void g_markup_parse_context_free(GMarkupParseContext* context);
	const(char)* g_markup_parse_context_get_element(GMarkupParseContext* context);
	GSList* g_markup_parse_context_get_element_stack(GMarkupParseContext* context);
	void g_markup_parse_context_get_position(GMarkupParseContext* context, int* lineNumber, int* charNumber);
	void* g_markup_parse_context_get_user_data(GMarkupParseContext* context);
	int g_markup_parse_context_parse(GMarkupParseContext* context, const(char)* text, ptrdiff_t textLen, GError** err);
	void* g_markup_parse_context_pop(GMarkupParseContext* context);
	void g_markup_parse_context_push(GMarkupParseContext* context, GMarkupParser* parser, void* userData);
	GMarkupParseContext* g_markup_parse_context_ref(GMarkupParseContext* context);
	void g_markup_parse_context_unref(GMarkupParseContext* context);
	int g_markup_collect_attributes(const(char)* elementName, char** attributeNames, char** attributeValues, GError** error, GMarkupCollectType firstType, const(char)* firstAttr, ... );
	GQuark g_markup_error_quark();
	char* g_markup_escape_text(const(char)* text, ptrdiff_t length);
	char* g_markup_printf_escaped(const(char)* format, ... );
	char* g_markup_vprintf_escaped(const(char)* format, void* args);

	// glib.MatchInfo

	char* g_match_info_expand_references(GMatchInfo* matchInfo, const(char)* stringToExpand, GError** err);
	char* g_match_info_fetch(GMatchInfo* matchInfo, int matchNum);
	char** g_match_info_fetch_all(GMatchInfo* matchInfo);
	char* g_match_info_fetch_named(GMatchInfo* matchInfo, const(char)* name);
	int g_match_info_fetch_named_pos(GMatchInfo* matchInfo, const(char)* name, int* startPos, int* endPos);
	int g_match_info_fetch_pos(GMatchInfo* matchInfo, int matchNum, int* startPos, int* endPos);
	void g_match_info_free(GMatchInfo* matchInfo);
	int g_match_info_get_match_count(GMatchInfo* matchInfo);
	GRegex* g_match_info_get_regex(GMatchInfo* matchInfo);
	const(char)* g_match_info_get_string(GMatchInfo* matchInfo);
	int g_match_info_is_partial_match(GMatchInfo* matchInfo);
	int g_match_info_matches(GMatchInfo* matchInfo);
	int g_match_info_next(GMatchInfo* matchInfo, GError** err);
	GMatchInfo* g_match_info_ref(GMatchInfo* matchInfo);
	void g_match_info_unref(GMatchInfo* matchInfo);

	// glib.Mutex

	void g_mutex_clear(GMutex* mutex);
	void g_mutex_init(GMutex* mutex);
	void g_mutex_lock(GMutex* mutex);
	int g_mutex_trylock(GMutex* mutex);
	void g_mutex_unlock(GMutex* mutex);

	// glib.Node

	int g_node_child_index(GNode* node, void* data);
	int g_node_child_position(GNode* node, GNode* child);
	void g_node_children_foreach(GNode* node, GTraverseFlags flags, GNodeForeachFunc func, void* data);
	GNode* g_node_copy(GNode* node);
	GNode* g_node_copy_deep(GNode* node, GCopyFunc copyFunc, void* data);
	uint g_node_depth(GNode* node);
	void g_node_destroy(GNode* root);
	GNode* g_node_find(GNode* root, GTraverseType order, GTraverseFlags flags, void* data);
	GNode* g_node_find_child(GNode* node, GTraverseFlags flags, void* data);
	GNode* g_node_first_sibling(GNode* node);
	GNode* g_node_get_root(GNode* node);
	GNode* g_node_insert(GNode* parent, int position, GNode* node);
	GNode* g_node_insert_after(GNode* parent, GNode* sibling, GNode* node);
	GNode* g_node_insert_before(GNode* parent, GNode* sibling, GNode* node);
	int g_node_is_ancestor(GNode* node, GNode* descendant);
	GNode* g_node_last_child(GNode* node);
	GNode* g_node_last_sibling(GNode* node);
	uint g_node_max_height(GNode* root);
	uint g_node_n_children(GNode* node);
	uint g_node_n_nodes(GNode* root, GTraverseFlags flags);
	GNode* g_node_nth_child(GNode* node, uint n);
	GNode* g_node_prepend(GNode* parent, GNode* node);
	void g_node_reverse_children(GNode* node);
	void g_node_traverse(GNode* root, GTraverseType order, GTraverseFlags flags, int maxDepth, GNodeTraverseFunc func, void* data);
	void g_node_unlink(GNode* node);
	GNode* g_node_new(void* data);

	// glib.Once

	void* g_once_impl(GOnce* once, GThreadFunc func, void* arg);
	int g_once_init_enter(void* location);
	void g_once_init_leave(void* location, size_t result);

	// glib.OptionContext

	void g_option_context_add_group(GOptionContext* context, GOptionGroup* group);
	void g_option_context_add_main_entries(GOptionContext* context, GOptionEntry* entries, const(char)* translationDomain);
	void g_option_context_free(GOptionContext* context);
	const(char)* g_option_context_get_description(GOptionContext* context);
	char* g_option_context_get_help(GOptionContext* context, int mainHelp, GOptionGroup* group);
	int g_option_context_get_help_enabled(GOptionContext* context);
	int g_option_context_get_ignore_unknown_options(GOptionContext* context);
	GOptionGroup* g_option_context_get_main_group(GOptionContext* context);
	int g_option_context_get_strict_posix(GOptionContext* context);
	const(char)* g_option_context_get_summary(GOptionContext* context);
	int g_option_context_parse(GOptionContext* context, int* argc, char*** argv, GError** err);
	int g_option_context_parse_strv(GOptionContext* context, char*** arguments, GError** err);
	void g_option_context_set_description(GOptionContext* context, const(char)* description);
	void g_option_context_set_help_enabled(GOptionContext* context, int helpEnabled);
	void g_option_context_set_ignore_unknown_options(GOptionContext* context, int ignoreUnknown);
	void g_option_context_set_main_group(GOptionContext* context, GOptionGroup* group);
	void g_option_context_set_strict_posix(GOptionContext* context, int strictPosix);
	void g_option_context_set_summary(GOptionContext* context, const(char)* summary);
	void g_option_context_set_translate_func(GOptionContext* context, GTranslateFunc func, void* data, GDestroyNotify destroyNotify);
	void g_option_context_set_translation_domain(GOptionContext* context, const(char)* domain);
	GOptionContext* g_option_context_new(const(char)* parameterString);
	GQuark g_option_error_quark();

	// glib.OptionGroup

	GOptionGroup* g_option_group_new(const(char)* name, const(char)* description, const(char)* helpDescription, void* userData, GDestroyNotify destroy);
	void g_option_group_add_entries(GOptionGroup* group, GOptionEntry* entries);
	void g_option_group_free(GOptionGroup* group);
	GOptionGroup* g_option_group_ref(GOptionGroup* group);
	void g_option_group_set_error_hook(GOptionGroup* group, GOptionErrorFunc errorFunc);
	void g_option_group_set_parse_hooks(GOptionGroup* group, GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc);
	void g_option_group_set_translate_func(GOptionGroup* group, GTranslateFunc func, void* data, GDestroyNotify destroyNotify);
	void g_option_group_set_translation_domain(GOptionGroup* group, const(char)* domain);
	void g_option_group_unref(GOptionGroup* group);

	// glib.Pattern

	int g_pattern_spec_equal(GPatternSpec* pspec1, GPatternSpec* pspec2);
	void g_pattern_spec_free(GPatternSpec* pspec);
	GPatternSpec* g_pattern_spec_new(const(char)* pattern);
	int g_pattern_match(GPatternSpec* pspec, uint stringLength, const(char)* string_, const(char)* stringReversed);
	int g_pattern_match_simple(const(char)* pattern, const(char)* string_);
	int g_pattern_match_string(GPatternSpec* pspec, const(char)* string_);

	// glib.Private

	void* g_private_get(GPrivate* key);
	void g_private_replace(GPrivate* key, void* value);
	void g_private_set(GPrivate* key, void* value);

	// glib.PtrArray

	void g_ptr_array_add(GPtrArray* array, void* data);
	GPtrArray* g_ptr_array_copy(GPtrArray* array, GCopyFunc func, void* userData);
	void g_ptr_array_extend(GPtrArray* arrayToExtend, GPtrArray* array, GCopyFunc func, void* userData);
	void g_ptr_array_extend_and_steal(GPtrArray* arrayToExtend, GPtrArray* array);
	int g_ptr_array_find(GPtrArray* haystack, void* needle, uint* index);
	int g_ptr_array_find_with_equal_func(GPtrArray* haystack, void* needle, GEqualFunc equalFunc, uint* index);
	void g_ptr_array_foreach(GPtrArray* array, GFunc func, void* userData);
	void** g_ptr_array_free(GPtrArray* array, int freeSeg);
	void g_ptr_array_insert(GPtrArray* array, int index, void* data);
	GPtrArray* g_ptr_array_new();
	GPtrArray* g_ptr_array_new_full(uint reservedSize, GDestroyNotify elementFreeFunc);
	GPtrArray* g_ptr_array_new_with_free_func(GDestroyNotify elementFreeFunc);
	GPtrArray* g_ptr_array_ref(GPtrArray* array);
	int g_ptr_array_remove(GPtrArray* array, void* data);
	int g_ptr_array_remove_fast(GPtrArray* array, void* data);
	void* g_ptr_array_remove_index(GPtrArray* array, uint index);
	void* g_ptr_array_remove_index_fast(GPtrArray* array, uint index);
	GPtrArray* g_ptr_array_remove_range(GPtrArray* array, uint index, uint length);
	void g_ptr_array_set_free_func(GPtrArray* array, GDestroyNotify elementFreeFunc);
	void g_ptr_array_set_size(GPtrArray* array, int length);
	GPtrArray* g_ptr_array_sized_new(uint reservedSize);
	void g_ptr_array_sort(GPtrArray* array, GCompareFunc compareFunc);
	void g_ptr_array_sort_with_data(GPtrArray* array, GCompareDataFunc compareFunc, void* userData);
	void** g_ptr_array_steal(GPtrArray* array, size_t* len);
	void* g_ptr_array_steal_index(GPtrArray* array, uint index);
	void* g_ptr_array_steal_index_fast(GPtrArray* array, uint index);
	void g_ptr_array_unref(GPtrArray* array);

	// glib.QueueG

	void g_queue_clear(GQueue* queue);
	void g_queue_clear_full(GQueue* queue, GDestroyNotify freeFunc);
	GQueue* g_queue_copy(GQueue* queue);
	void g_queue_delete_link(GQueue* queue, GList* link);
	GList* g_queue_find(GQueue* queue, void* data);
	GList* g_queue_find_custom(GQueue* queue, void* data, GCompareFunc func);
	void g_queue_foreach(GQueue* queue, GFunc func, void* userData);
	void g_queue_free(GQueue* queue);
	void g_queue_free_full(GQueue* queue, GDestroyNotify freeFunc);
	uint g_queue_get_length(GQueue* queue);
	int g_queue_index(GQueue* queue, void* data);
	void g_queue_init(GQueue* queue);
	void g_queue_insert_after(GQueue* queue, GList* sibling, void* data);
	void g_queue_insert_after_link(GQueue* queue, GList* sibling, GList* link);
	void g_queue_insert_before(GQueue* queue, GList* sibling, void* data);
	void g_queue_insert_before_link(GQueue* queue, GList* sibling, GList* link);
	void g_queue_insert_sorted(GQueue* queue, void* data, GCompareDataFunc func, void* userData);
	int g_queue_is_empty(GQueue* queue);
	int g_queue_link_index(GQueue* queue, GList* link);
	void* g_queue_peek_head(GQueue* queue);
	GList* g_queue_peek_head_link(GQueue* queue);
	void* g_queue_peek_nth(GQueue* queue, uint n);
	GList* g_queue_peek_nth_link(GQueue* queue, uint n);
	void* g_queue_peek_tail(GQueue* queue);
	GList* g_queue_peek_tail_link(GQueue* queue);
	void* g_queue_pop_head(GQueue* queue);
	GList* g_queue_pop_head_link(GQueue* queue);
	void* g_queue_pop_nth(GQueue* queue, uint n);
	GList* g_queue_pop_nth_link(GQueue* queue, uint n);
	void* g_queue_pop_tail(GQueue* queue);
	GList* g_queue_pop_tail_link(GQueue* queue);
	void g_queue_push_head(GQueue* queue, void* data);
	void g_queue_push_head_link(GQueue* queue, GList* link);
	void g_queue_push_nth(GQueue* queue, void* data, int n);
	void g_queue_push_nth_link(GQueue* queue, int n, GList* link);
	void g_queue_push_tail(GQueue* queue, void* data);
	void g_queue_push_tail_link(GQueue* queue, GList* link);
	int g_queue_remove(GQueue* queue, void* data);
	uint g_queue_remove_all(GQueue* queue, void* data);
	void g_queue_reverse(GQueue* queue);
	void g_queue_sort(GQueue* queue, GCompareDataFunc compareFunc, void* userData);
	void g_queue_unlink(GQueue* queue, GList* link);
	GQueue* g_queue_new();

	// glib.RWLock

	void g_rw_lock_clear(GRWLock* rwLock);
	void g_rw_lock_init(GRWLock* rwLock);
	void g_rw_lock_reader_lock(GRWLock* rwLock);
	int g_rw_lock_reader_trylock(GRWLock* rwLock);
	void g_rw_lock_reader_unlock(GRWLock* rwLock);
	void g_rw_lock_writer_lock(GRWLock* rwLock);
	int g_rw_lock_writer_trylock(GRWLock* rwLock);
	void g_rw_lock_writer_unlock(GRWLock* rwLock);

	// glib.RandG

	GRand* g_rand_copy(GRand* rand);
	double g_rand_double(GRand* rand);
	double g_rand_double_range(GRand* rand, double begin, double end);
	void g_rand_free(GRand* rand);
	uint g_rand_int(GRand* rand);
	int g_rand_int_range(GRand* rand, int begin, int end);
	void g_rand_set_seed(GRand* rand, uint seed);
	void g_rand_set_seed_array(GRand* rand, uint* seed, uint seedLength);
	GRand* g_rand_new();
	GRand* g_rand_new_with_seed(uint seed);
	GRand* g_rand_new_with_seed_array(uint* seed, uint seedLength);
	double g_random_double();
	double g_random_double_range(double begin, double end);
	uint g_random_int();
	int g_random_int_range(int begin, int end);
	void g_random_set_seed(uint seed);

	// glib.RecMutex

	void g_rec_mutex_clear(GRecMutex* recMutex);
	void g_rec_mutex_init(GRecMutex* recMutex);
	void g_rec_mutex_lock(GRecMutex* recMutex);
	int g_rec_mutex_trylock(GRecMutex* recMutex);
	void g_rec_mutex_unlock(GRecMutex* recMutex);

	// glib.Regex

	GRegex* g_regex_new(const(char)* pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions, GError** err);
	int g_regex_get_capture_count(GRegex* regex);
	GRegexCompileFlags g_regex_get_compile_flags(GRegex* regex);
	int g_regex_get_has_cr_or_lf(GRegex* regex);
	GRegexMatchFlags g_regex_get_match_flags(GRegex* regex);
	int g_regex_get_max_backref(GRegex* regex);
	int g_regex_get_max_lookbehind(GRegex* regex);
	const(char)* g_regex_get_pattern(GRegex* regex);
	int g_regex_get_string_number(GRegex* regex, const(char)* name);
	int g_regex_match(GRegex* regex, const(char)* string_, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo);
	int g_regex_match_all(GRegex* regex, const(char)* string_, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo);
	int g_regex_match_all_full(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** err);
	int g_regex_match_full(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** err);
	GRegex* g_regex_ref(GRegex* regex);
	char* g_regex_replace(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, const(char)* replacement, GRegexMatchFlags matchOptions, GError** err);
	char* g_regex_replace_eval(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, void* userData, GError** err);
	char* g_regex_replace_literal(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, const(char)* replacement, GRegexMatchFlags matchOptions, GError** err);
	char** g_regex_split(GRegex* regex, const(char)* string_, GRegexMatchFlags matchOptions);
	char** g_regex_split_full(GRegex* regex, char* string_, ptrdiff_t stringLen, int startPosition, GRegexMatchFlags matchOptions, int maxTokens, GError** err);
	void g_regex_unref(GRegex* regex);
	int g_regex_check_replacement(const(char)* replacement, int* hasReferences, GError** err);
	GQuark g_regex_error_quark();
	char* g_regex_escape_nul(const(char)* string_, int length);
	char* g_regex_escape_string(char* string_, int length);
	int g_regex_match_simple(const(char)* pattern, const(char)* string_, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions);
	char** g_regex_split_simple(const(char)* pattern, const(char)* string_, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions);

	// glib.ListSG

	GSList* g_slist_alloc();
	GSList* g_slist_append(GSList* list, void* data);
	GSList* g_slist_concat(GSList* list1, GSList* list2);
	GSList* g_slist_copy(GSList* list);
	GSList* g_slist_copy_deep(GSList* list, GCopyFunc func, void* userData);
	GSList* g_slist_delete_link(GSList* list, GSList* link);
	GSList* g_slist_find(GSList* list, void* data);
	GSList* g_slist_find_custom(GSList* list, void* data, GCompareFunc func);
	void g_slist_foreach(GSList* list, GFunc func, void* userData);
	void g_slist_free(GSList* list);
	void g_slist_free_1(GSList* list);
	void g_slist_free_full(GSList* list, GDestroyNotify freeFunc);
	int g_slist_index(GSList* list, void* data);
	GSList* g_slist_insert(GSList* list, void* data, int position);
	GSList* g_slist_insert_before(GSList* slist, GSList* sibling, void* data);
	GSList* g_slist_insert_sorted(GSList* list, void* data, GCompareFunc func);
	GSList* g_slist_insert_sorted_with_data(GSList* list, void* data, GCompareDataFunc func, void* userData);
	GSList* g_slist_last(GSList* list);
	uint g_slist_length(GSList* list);
	GSList* g_slist_nth(GSList* list, uint n);
	void* g_slist_nth_data(GSList* list, uint n);
	int g_slist_position(GSList* list, GSList* llink);
	GSList* g_slist_prepend(GSList* list, void* data);
	GSList* g_slist_remove(GSList* list, void* data);
	GSList* g_slist_remove_all(GSList* list, void* data);
	GSList* g_slist_remove_link(GSList* list, GSList* link);
	GSList* g_slist_reverse(GSList* list);
	GSList* g_slist_sort(GSList* list, GCompareFunc compareFunc);
	GSList* g_slist_sort_with_data(GSList* list, GCompareDataFunc compareFunc, void* userData);
	void g_clear_slist(GSList** slistPtr, GDestroyNotify destroy);

	// glib.ScannerG

	uint g_scanner_cur_line(GScanner* scanner);
	uint g_scanner_cur_position(GScanner* scanner);
	GTokenType g_scanner_cur_token(GScanner* scanner);
	GTokenValue g_scanner_cur_value(GScanner* scanner);
	void g_scanner_destroy(GScanner* scanner);
	int g_scanner_eof(GScanner* scanner);
	void g_scanner_error(GScanner* scanner, const(char)* format, ... );
	GTokenType g_scanner_get_next_token(GScanner* scanner);
	void g_scanner_input_file(GScanner* scanner, int inputFd);
	void g_scanner_input_text(GScanner* scanner, const(char)* text, uint textLen);
	void* g_scanner_lookup_symbol(GScanner* scanner, const(char)* symbol);
	GTokenType g_scanner_peek_next_token(GScanner* scanner);
	void g_scanner_scope_add_symbol(GScanner* scanner, uint scopeId, const(char)* symbol, void* value);
	void g_scanner_scope_foreach_symbol(GScanner* scanner, uint scopeId, GHFunc func, void* userData);
	void* g_scanner_scope_lookup_symbol(GScanner* scanner, uint scopeId, const(char)* symbol);
	void g_scanner_scope_remove_symbol(GScanner* scanner, uint scopeId, const(char)* symbol);
	uint g_scanner_set_scope(GScanner* scanner, uint scopeId);
	void g_scanner_sync_file_offset(GScanner* scanner);
	void g_scanner_unexp_token(GScanner* scanner, GTokenType expectedToken, const(char)* identifierSpec, const(char)* symbolSpec, const(char)* symbolName, const(char)* message, int isError);
	void g_scanner_warn(GScanner* scanner, const(char)* format, ... );
	GScanner* g_scanner_new(GScannerConfig* configTempl);

	// glib.Sequence

	GSequenceIter* g_sequence_append(GSequence* seq, void* data);
	void g_sequence_foreach(GSequence* seq, GFunc func, void* userData);
	void g_sequence_free(GSequence* seq);
	GSequenceIter* g_sequence_get_begin_iter(GSequence* seq);
	GSequenceIter* g_sequence_get_end_iter(GSequence* seq);
	GSequenceIter* g_sequence_get_iter_at_pos(GSequence* seq, int pos);
	int g_sequence_get_length(GSequence* seq);
	GSequenceIter* g_sequence_insert_sorted(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData);
	GSequenceIter* g_sequence_insert_sorted_iter(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData);
	int g_sequence_is_empty(GSequence* seq);
	GSequenceIter* g_sequence_lookup(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData);
	GSequenceIter* g_sequence_lookup_iter(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData);
	GSequenceIter* g_sequence_prepend(GSequence* seq, void* data);
	GSequenceIter* g_sequence_search(GSequence* seq, void* data, GCompareDataFunc cmpFunc, void* cmpData);
	GSequenceIter* g_sequence_search_iter(GSequence* seq, void* data, GSequenceIterCompareFunc iterCmp, void* cmpData);
	void g_sequence_sort(GSequence* seq, GCompareDataFunc cmpFunc, void* cmpData);
	void g_sequence_sort_iter(GSequence* seq, GSequenceIterCompareFunc cmpFunc, void* cmpData);
	void g_sequence_foreach_range(GSequenceIter* begin, GSequenceIter* end, GFunc func, void* userData);
	void* g_sequence_get(GSequenceIter* iter);
	GSequenceIter* g_sequence_insert_before(GSequenceIter* iter, void* data);
	void g_sequence_move(GSequenceIter* src, GSequenceIter* dest);
	void g_sequence_move_range(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end);
	GSequence* g_sequence_new(GDestroyNotify dataDestroy);
	GSequenceIter* g_sequence_range_get_midpoint(GSequenceIter* begin, GSequenceIter* end);
	void g_sequence_remove(GSequenceIter* iter);
	void g_sequence_remove_range(GSequenceIter* begin, GSequenceIter* end);
	void g_sequence_set(GSequenceIter* iter, void* data);
	void g_sequence_sort_changed(GSequenceIter* iter, GCompareDataFunc cmpFunc, void* cmpData);
	void g_sequence_sort_changed_iter(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, void* cmpData);
	void g_sequence_swap(GSequenceIter* a, GSequenceIter* b);

	// glib.SequenceIter

	int g_sequence_iter_compare(GSequenceIter* a, GSequenceIter* b);
	int g_sequence_iter_get_position(GSequenceIter* iter);
	GSequence* g_sequence_iter_get_sequence(GSequenceIter* iter);
	int g_sequence_iter_is_begin(GSequenceIter* iter);
	int g_sequence_iter_is_end(GSequenceIter* iter);
	GSequenceIter* g_sequence_iter_move(GSequenceIter* iter, int delta);
	GSequenceIter* g_sequence_iter_next(GSequenceIter* iter);
	GSequenceIter* g_sequence_iter_prev(GSequenceIter* iter);

	// glib.Source

	GSource* g_source_new(GSourceFuncs* sourceFuncs, uint structSize);
	void g_source_add_child_source(GSource* source, GSource* childSource);
	void g_source_add_poll(GSource* source, GPollFD* fd);
	void* g_source_add_unix_fd(GSource* source, int fd, GIOCondition events);
	uint g_source_attach(GSource* source, GMainContext* context);
	void g_source_destroy(GSource* source);
	int g_source_get_can_recurse(GSource* source);
	GMainContext* g_source_get_context(GSource* source);
	void g_source_get_current_time(GSource* source, GTimeVal* timeval);
	uint g_source_get_id(GSource* source);
	const(char)* g_source_get_name(GSource* source);
	int g_source_get_priority(GSource* source);
	long g_source_get_ready_time(GSource* source);
	long g_source_get_time(GSource* source);
	int g_source_is_destroyed(GSource* source);
	void g_source_modify_unix_fd(GSource* source, void* tag, GIOCondition newEvents);
	GIOCondition g_source_query_unix_fd(GSource* source, void* tag);
	GSource* g_source_ref(GSource* source);
	void g_source_remove_child_source(GSource* source, GSource* childSource);
	void g_source_remove_poll(GSource* source, GPollFD* fd);
	void g_source_remove_unix_fd(GSource* source, void* tag);
	void g_source_set_callback(GSource* source, GSourceFunc func, void* data, GDestroyNotify notify);
	void g_source_set_callback_indirect(GSource* source, void* callbackData, GSourceCallbackFuncs* callbackFuncs);
	void g_source_set_can_recurse(GSource* source, int canRecurse);
	void g_source_set_dispose_function(GSource* source, GSourceDisposeFunc dispose);
	void g_source_set_funcs(GSource* source, GSourceFuncs* funcs);
	void g_source_set_name(GSource* source, const(char)* name);
	void g_source_set_priority(GSource* source, int priority);
	void g_source_set_ready_time(GSource* source, long readyTime);
	void g_source_unref(GSource* source);
	int g_source_remove(uint tag);
	int g_source_remove_by_funcs_user_data(GSourceFuncs* funcs, void* userData);
	int g_source_remove_by_user_data(void* userData);
	void g_source_set_name_by_id(uint tag, const(char)* name);

	// glib.StringG

	GString* g_string_append(GString* string_, const(char)* val);
	GString* g_string_append_c(GString* string_, char c);
	GString* g_string_append_len(GString* string_, const(char)* val, ptrdiff_t len);
	void g_string_append_printf(GString* string_, const(char)* format, ... );
	GString* g_string_append_unichar(GString* string_, dchar wc);
	GString* g_string_append_uri_escaped(GString* string_, const(char)* unescaped, const(char)* reservedCharsAllowed, int allowUtf8);
	void g_string_append_vprintf(GString* string_, const(char)* format, void* args);
	GString* g_string_ascii_down(GString* string_);
	GString* g_string_ascii_up(GString* string_);
	GString* g_string_assign(GString* string_, const(char)* rval);
	GString* g_string_down(GString* string_);
	int g_string_equal(GString* v, GString* v2);
	GString* g_string_erase(GString* string_, ptrdiff_t pos, ptrdiff_t len);
	char* g_string_free(GString* string_, int freeSegment);
	GBytes* g_string_free_to_bytes(GString* string_);
	uint g_string_hash(GString* str);
	GString* g_string_insert(GString* string_, ptrdiff_t pos, const(char)* val);
	GString* g_string_insert_c(GString* string_, ptrdiff_t pos, char c);
	GString* g_string_insert_len(GString* string_, ptrdiff_t pos, const(char)* val, ptrdiff_t len);
	GString* g_string_insert_unichar(GString* string_, ptrdiff_t pos, dchar wc);
	GString* g_string_overwrite(GString* string_, size_t pos, const(char)* val);
	GString* g_string_overwrite_len(GString* string_, size_t pos, const(char)* val, ptrdiff_t len);
	GString* g_string_prepend(GString* string_, const(char)* val);
	GString* g_string_prepend_c(GString* string_, char c);
	GString* g_string_prepend_len(GString* string_, const(char)* val, ptrdiff_t len);
	GString* g_string_prepend_unichar(GString* string_, dchar wc);
	void g_string_printf(GString* string_, const(char)* format, ... );
	uint g_string_replace(GString* string_, const(char)* find, const(char)* replace, uint limit);
	GString* g_string_set_size(GString* string_, size_t len);
	GString* g_string_truncate(GString* string_, size_t len);
	GString* g_string_up(GString* string_);
	void g_string_vprintf(GString* string_, const(char)* format, void* args);
	GString* g_string_new(const(char)* init);
	GString* g_string_new_len(const(char)* init, ptrdiff_t len);
	GString* g_string_sized_new(size_t dflSize);

	// glib.StringChunk

	void g_string_chunk_clear(GStringChunk* chunk);
	void g_string_chunk_free(GStringChunk* chunk);
	char* g_string_chunk_insert(GStringChunk* chunk, const(char)* string_);
	char* g_string_chunk_insert_const(GStringChunk* chunk, const(char)* string_);
	char* g_string_chunk_insert_len(GStringChunk* chunk, const(char)* string_, ptrdiff_t len);
	GStringChunk* g_string_chunk_new(size_t size);

	// glib.StrvBuilder

	void g_strv_builder_add(GStrvBuilder* builder, const(char)* value);
	GStrv g_strv_builder_end(GStrvBuilder* builder);
	GStrvBuilder* g_strv_builder_ref(GStrvBuilder* builder);
	void g_strv_builder_unref(GStrvBuilder* builder);
	GStrvBuilder* g_strv_builder_new();

	// glib.TestLogBuffer

	void g_test_log_buffer_free(GTestLogBuffer* tbuffer);
	GTestLogMsg* g_test_log_buffer_pop(GTestLogBuffer* tbuffer);
	void g_test_log_buffer_push(GTestLogBuffer* tbuffer, uint nBytes, ubyte* bytes);
	GTestLogBuffer* g_test_log_buffer_new();

	// glib.TestLogMsg

	void g_test_log_msg_free(GTestLogMsg* tmsg);

	// glib.TestSuite

	void g_test_suite_add(GTestSuite* suite, GTestCase* testCase);
	void g_test_suite_add_suite(GTestSuite* suite, GTestSuite* nestedsuite);

	// glib.Thread

	GThread* g_thread_new(const(char)* name, GThreadFunc func, void* data);
	GThread* g_thread_try_new(const(char)* name, GThreadFunc func, void* data, GError** err);
	void* g_thread_join(GThread* thread);
	GThread* g_thread_ref(GThread* thread);
	void g_thread_unref(GThread* thread);
	GQuark g_thread_error_quark();
	void g_thread_exit(void* retval);
	GThread* g_thread_self();
	void g_thread_yield();
	void g_bit_lock(int* address, int lockBit);
	int g_bit_trylock(int* address, int lockBit);
	void g_bit_unlock(int* address, int lockBit);
	uint g_get_num_processors();
	void g_pointer_bit_lock(void* address, int lockBit);
	int g_pointer_bit_trylock(void* address, int lockBit);
	void g_pointer_bit_unlock(void* address, int lockBit);

	// glib.ThreadPool

	void g_thread_pool_free(GThreadPool* pool, int immediate, int wait);
	int g_thread_pool_get_max_threads(GThreadPool* pool);
	uint g_thread_pool_get_num_threads(GThreadPool* pool);
	int g_thread_pool_move_to_front(GThreadPool* pool, void* data);
	int g_thread_pool_push(GThreadPool* pool, void* data, GError** err);
	int g_thread_pool_set_max_threads(GThreadPool* pool, int maxThreads, GError** err);
	void g_thread_pool_set_sort_function(GThreadPool* pool, GCompareDataFunc func, void* userData);
	uint g_thread_pool_unprocessed(GThreadPool* pool);
	uint g_thread_pool_get_max_idle_time();
	int g_thread_pool_get_max_unused_threads();
	uint g_thread_pool_get_num_unused_threads();
	GThreadPool* g_thread_pool_new(GFunc func, void* userData, int maxThreads, int exclusive, GError** err);
	void g_thread_pool_set_max_idle_time(uint interval);
	void g_thread_pool_set_max_unused_threads(int maxThreads);
	void g_thread_pool_stop_unused_threads();

	// glib.TimeVal

	void g_time_val_add(GTimeVal* time, glong microseconds);
	char* g_time_val_to_iso8601(GTimeVal* time);
	int g_time_val_from_iso8601(const(char)* isoDate, GTimeVal* time);
	void g_get_current_time(GTimeVal* result);
	long g_get_monotonic_time();
	long g_get_real_time();
	void g_usleep(gulong microseconds);

	// glib.TimeZone

	GTimeZone* g_time_zone_new(const(char)* identifier);
	GTimeZone* g_time_zone_new_identifier(const(char)* identifier);
	GTimeZone* g_time_zone_new_local();
	GTimeZone* g_time_zone_new_offset(int seconds);
	GTimeZone* g_time_zone_new_utc();
	int g_time_zone_adjust_time(GTimeZone* tz, GTimeType type, long* time);
	int g_time_zone_find_interval(GTimeZone* tz, GTimeType type, long time);
	const(char)* g_time_zone_get_abbreviation(GTimeZone* tz, int interval);
	const(char)* g_time_zone_get_identifier(GTimeZone* tz);
	int g_time_zone_get_offset(GTimeZone* tz, int interval);
	int g_time_zone_is_dst(GTimeZone* tz, int interval);
	GTimeZone* g_time_zone_ref(GTimeZone* tz);
	void g_time_zone_unref(GTimeZone* tz);

	// glib.Timer

	void g_timer_continue(GTimer* timer);
	void g_timer_destroy(GTimer* timer);
	double g_timer_elapsed(GTimer* timer, gulong* microseconds);
	int g_timer_is_active(GTimer* timer);
	void g_timer_reset(GTimer* timer);
	void g_timer_start(GTimer* timer);
	void g_timer_stop(GTimer* timer);
	GTimer* g_timer_new();

	// glib.TrashStack

	uint g_trash_stack_height(GTrashStack** stackP);
	void* g_trash_stack_peek(GTrashStack** stackP);
	void* g_trash_stack_pop(GTrashStack** stackP);
	void g_trash_stack_push(GTrashStack** stackP, void* dataP);

	// glib.BBTree

	GTree* g_tree_new(GCompareFunc keyCompareFunc);
	GTree* g_tree_new_full(GCompareDataFunc keyCompareFunc, void* keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc);
	GTree* g_tree_new_with_data(GCompareDataFunc keyCompareFunc, void* keyCompareData);
	void g_tree_destroy(GTree* tree);
	void g_tree_foreach(GTree* tree, GTraverseFunc func, void* userData);
	void g_tree_foreach_node(GTree* tree, GTraverseNodeFunc func, void* userData);
	int g_tree_height(GTree* tree);
	void g_tree_insert(GTree* tree, void* key, void* value);
	GTreeNode* g_tree_insert_node(GTree* tree, void* key, void* value);
	void* g_tree_lookup(GTree* tree, void* key);
	int g_tree_lookup_extended(GTree* tree, void* lookupKey, void** origKey, void** value);
	GTreeNode* g_tree_lookup_node(GTree* tree, void* key);
	GTreeNode* g_tree_lower_bound(GTree* tree, void* key);
	int g_tree_nnodes(GTree* tree);
	GTreeNode* g_tree_node_first(GTree* tree);
	GTreeNode* g_tree_node_last(GTree* tree);
	GTree* g_tree_ref(GTree* tree);
	int g_tree_remove(GTree* tree, void* key);
	void g_tree_replace(GTree* tree, void* key, void* value);
	GTreeNode* g_tree_replace_node(GTree* tree, void* key, void* value);
	void* g_tree_search(GTree* tree, GCompareFunc searchFunc, void* userData);
	GTreeNode* g_tree_search_node(GTree* tree, GCompareFunc searchFunc, void* userData);
	int g_tree_steal(GTree* tree, void* key);
	void g_tree_traverse(GTree* tree, GTraverseFunc traverseFunc, GTraverseType traverseType, void* userData);
	void g_tree_unref(GTree* tree);
	GTreeNode* g_tree_upper_bound(GTree* tree, void* key);

	// glib.TreeNode

	void* g_tree_node_key(GTreeNode* node);
	GTreeNode* g_tree_node_next(GTreeNode* node);
	GTreeNode* g_tree_node_previous(GTreeNode* node);
	void* g_tree_node_value(GTreeNode* node);

	// glib.URI

	const(char)* g_uri_get_auth_params(GUri* uri);
	GUriFlags g_uri_get_flags(GUri* uri);
	const(char)* g_uri_get_fragment(GUri* uri);
	const(char)* g_uri_get_host(GUri* uri);
	const(char)* g_uri_get_password(GUri* uri);
	const(char)* g_uri_get_path(GUri* uri);
	int g_uri_get_port(GUri* uri);
	const(char)* g_uri_get_query(GUri* uri);
	const(char)* g_uri_get_scheme(GUri* uri);
	const(char)* g_uri_get_user(GUri* uri);
	const(char)* g_uri_get_userinfo(GUri* uri);
	GUri* g_uri_parse_relative(GUri* baseUri, const(char)* uriRef, GUriFlags flags, GError** err);
	GUri* g_uri_ref(GUri* uri);
	char* g_uri_to_string(GUri* uri);
	char* g_uri_to_string_partial(GUri* uri, GUriHideFlags flags);
	void g_uri_unref(GUri* uri);
	GUri* g_uri_build(GUriFlags flags, const(char)* scheme, const(char)* userinfo, const(char)* host, int port, const(char)* path, const(char)* query, const(char)* fragment);
	GUri* g_uri_build_with_user(GUriFlags flags, const(char)* scheme, const(char)* user, const(char)* password, const(char)* authParams, const(char)* host, int port, const(char)* path, const(char)* query, const(char)* fragment);
	GQuark g_uri_error_quark();
	char* g_uri_escape_bytes(ubyte* unescaped, size_t length, const(char)* reservedCharsAllowed);
	char* g_uri_escape_string(const(char)* unescaped, const(char)* reservedCharsAllowed, int allowUtf8);
	int g_uri_is_valid(const(char)* uriString, GUriFlags flags, GError** err);
	char* g_uri_join(GUriFlags flags, const(char)* scheme, const(char)* userinfo, const(char)* host, int port, const(char)* path, const(char)* query, const(char)* fragment);
	char* g_uri_join_with_user(GUriFlags flags, const(char)* scheme, const(char)* user, const(char)* password, const(char)* authParams, const(char)* host, int port, const(char)* path, const(char)* query, const(char)* fragment);
	char** g_uri_list_extract_uris(const(char)* uriList);
	GUri* g_uri_parse(const(char)* uriString, GUriFlags flags, GError** err);
	GHashTable* g_uri_parse_params(const(char)* params, ptrdiff_t length, const(char)* separators, GUriParamsFlags flags, GError** err);
	char* g_uri_parse_scheme(const(char)* uri);
	const(char)* g_uri_peek_scheme(const(char)* uri);
	char* g_uri_resolve_relative(const(char)* baseUriString, const(char)* uriRef, GUriFlags flags, GError** err);
	int g_uri_split(const(char)* uriRef, GUriFlags flags, char** scheme, char** userinfo, char** host, int* port, char** path, char** query, char** fragment, GError** err);
	int g_uri_split_network(const(char)* uriString, GUriFlags flags, char** scheme, char** host, int* port, GError** err);
	int g_uri_split_with_user(const(char)* uriRef, GUriFlags flags, char** scheme, char** user, char** password, char** authParams, char** host, int* port, char** path, char** query, char** fragment, GError** err);
	GBytes* g_uri_unescape_bytes(const(char)* escapedString, ptrdiff_t length, const(char)* illegalCharacters, GError** err);
	char* g_uri_unescape_segment(const(char)* escapedString, const(char)* escapedStringEnd, const(char)* illegalCharacters);
	char* g_uri_unescape_string(const(char)* escapedString, const(char)* illegalCharacters);

	// glib.UriParamsIter

	void g_uri_params_iter_init(GUriParamsIter* iter, const(char)* params, ptrdiff_t length, const(char)* separators, GUriParamsFlags flags);
	int g_uri_params_iter_next(GUriParamsIter* iter, char** attribute, char** value, GError** err);

	// glib.Variant

	GVariant* g_variant_new(const(char)* formatString, ... );
	GVariant* g_variant_new_array(GVariantType* childType, GVariant** children, size_t nChildren);
	GVariant* g_variant_new_boolean(int value);
	GVariant* g_variant_new_byte(ubyte value);
	GVariant* g_variant_new_bytestring(char* string_);
	GVariant* g_variant_new_bytestring_array(char** strv, ptrdiff_t length);
	GVariant* g_variant_new_dict_entry(GVariant* key, GVariant* value);
	GVariant* g_variant_new_double(double value);
	GVariant* g_variant_new_fixed_array(GVariantType* elementType, void* elements, size_t nElements, size_t elementSize);
	GVariant* g_variant_new_from_bytes(GVariantType* type, GBytes* bytes, int trusted);
	GVariant* g_variant_new_from_data(GVariantType* type, void* data, size_t size, int trusted, GDestroyNotify notify, void* userData);
	GVariant* g_variant_new_handle(int value);
	GVariant* g_variant_new_int16(short value);
	GVariant* g_variant_new_int32(int value);
	GVariant* g_variant_new_int64(long value);
	GVariant* g_variant_new_maybe(GVariantType* childType, GVariant* child);
	GVariant* g_variant_new_object_path(const(char)* objectPath);
	GVariant* g_variant_new_objv(char** strv, ptrdiff_t length);
	GVariant* g_variant_new_parsed(const(char)* format, ... );
	GVariant* g_variant_new_parsed_va(const(char)* format, void** app);
	GVariant* g_variant_new_printf(const(char)* formatString, ... );
	GVariant* g_variant_new_signature(const(char)* signature);
	GVariant* g_variant_new_string(const(char)* string_);
	GVariant* g_variant_new_strv(char** strv, ptrdiff_t length);
	GVariant* g_variant_new_take_string(char* string_);
	GVariant* g_variant_new_tuple(GVariant** children, size_t nChildren);
	GVariant* g_variant_new_uint16(ushort value);
	GVariant* g_variant_new_uint32(uint value);
	GVariant* g_variant_new_uint64(ulong value);
	GVariant* g_variant_new_va(const(char)* formatString, char** endptr, void** app);
	GVariant* g_variant_new_variant(GVariant* value);
	GVariant* g_variant_byteswap(GVariant* value);
	int g_variant_check_format_string(GVariant* value, const(char)* formatString, int copyOnly);
	GVariantClass g_variant_classify(GVariant* value);
	int g_variant_compare(void* one, void* two);
	char* g_variant_dup_bytestring(GVariant* value, size_t* length);
	char** g_variant_dup_bytestring_array(GVariant* value, size_t* length);
	char** g_variant_dup_objv(GVariant* value, size_t* length);
	char* g_variant_dup_string(GVariant* value, size_t* length);
	char** g_variant_dup_strv(GVariant* value, size_t* length);
	int g_variant_equal(void* one, void* two);
	void g_variant_get(GVariant* value, const(char)* formatString, ... );
	int g_variant_get_boolean(GVariant* value);
	ubyte g_variant_get_byte(GVariant* value);
	char* g_variant_get_bytestring(GVariant* value);
	char** g_variant_get_bytestring_array(GVariant* value, size_t* length);
	void g_variant_get_child(GVariant* value, size_t index, const(char)* formatString, ... );
	GVariant* g_variant_get_child_value(GVariant* value, size_t index);
	void* g_variant_get_data(GVariant* value);
	GBytes* g_variant_get_data_as_bytes(GVariant* value);
	double g_variant_get_double(GVariant* value);
	void* g_variant_get_fixed_array(GVariant* value, size_t* nElements, size_t elementSize);
	int g_variant_get_handle(GVariant* value);
	short g_variant_get_int16(GVariant* value);
	int g_variant_get_int32(GVariant* value);
	long g_variant_get_int64(GVariant* value);
	GVariant* g_variant_get_maybe(GVariant* value);
	GVariant* g_variant_get_normal_form(GVariant* value);
	char** g_variant_get_objv(GVariant* value, size_t* length);
	size_t g_variant_get_size(GVariant* value);
	const(char)* g_variant_get_string(GVariant* value, size_t* length);
	char** g_variant_get_strv(GVariant* value, size_t* length);
	GVariantType* g_variant_get_type(GVariant* value);
	const(char)* g_variant_get_type_string(GVariant* value);
	ushort g_variant_get_uint16(GVariant* value);
	uint g_variant_get_uint32(GVariant* value);
	ulong g_variant_get_uint64(GVariant* value);
	void g_variant_get_va(GVariant* value, const(char)* formatString, char** endptr, void** app);
	GVariant* g_variant_get_variant(GVariant* value);
	uint g_variant_hash(void* value);
	int g_variant_is_container(GVariant* value);
	int g_variant_is_floating(GVariant* value);
	int g_variant_is_normal_form(GVariant* value);
	int g_variant_is_of_type(GVariant* value, GVariantType* type);
	GVariantIter* g_variant_iter_new(GVariant* value);
	int g_variant_lookup(GVariant* dictionary, const(char)* key, const(char)* formatString, ... );
	GVariant* g_variant_lookup_value(GVariant* dictionary, const(char)* key, GVariantType* expectedType);
	size_t g_variant_n_children(GVariant* value);
	char* g_variant_print(GVariant* value, int typeAnnotate);
	GString* g_variant_print_string(GVariant* value, GString* string_, int typeAnnotate);
	GVariant* g_variant_ref(GVariant* value);
	GVariant* g_variant_ref_sink(GVariant* value);
	void g_variant_store(GVariant* value, void* data);
	GVariant* g_variant_take_ref(GVariant* value);
	void g_variant_unref(GVariant* value);
	int g_variant_is_object_path(const(char)* string_);
	int g_variant_is_signature(const(char)* string_);
	GVariant* g_variant_parse(GVariantType* type, const(char)* text, const(char)* limit, char** endptr, GError** err);
	char* g_variant_parse_error_print_context(GError* error, const(char)* sourceStr);
	GQuark g_variant_parse_error_quark();
	GQuark g_variant_parser_get_error_quark();

	// glib.VariantBuilder

	GVariantBuilder* g_variant_builder_new(GVariantType* type);
	void g_variant_builder_add(GVariantBuilder* builder, const(char)* formatString, ... );
	void g_variant_builder_add_parsed(GVariantBuilder* builder, const(char)* format, ... );
	void g_variant_builder_add_value(GVariantBuilder* builder, GVariant* value);
	void g_variant_builder_clear(GVariantBuilder* builder);
	void g_variant_builder_close(GVariantBuilder* builder);
	GVariant* g_variant_builder_end(GVariantBuilder* builder);
	void g_variant_builder_init(GVariantBuilder* builder, GVariantType* type);
	void g_variant_builder_open(GVariantBuilder* builder, GVariantType* type);
	GVariantBuilder* g_variant_builder_ref(GVariantBuilder* builder);
	void g_variant_builder_unref(GVariantBuilder* builder);

	// glib.VariantDict

	GVariantDict* g_variant_dict_new(GVariant* fromAsv);
	void g_variant_dict_clear(GVariantDict* dict);
	int g_variant_dict_contains(GVariantDict* dict, const(char)* key);
	GVariant* g_variant_dict_end(GVariantDict* dict);
	void g_variant_dict_init(GVariantDict* dict, GVariant* fromAsv);
	void g_variant_dict_insert(GVariantDict* dict, const(char)* key, const(char)* formatString, ... );
	void g_variant_dict_insert_value(GVariantDict* dict, const(char)* key, GVariant* value);
	int g_variant_dict_lookup(GVariantDict* dict, const(char)* key, const(char)* formatString, ... );
	GVariant* g_variant_dict_lookup_value(GVariantDict* dict, const(char)* key, GVariantType* expectedType);
	GVariantDict* g_variant_dict_ref(GVariantDict* dict);
	int g_variant_dict_remove(GVariantDict* dict, const(char)* key);
	void g_variant_dict_unref(GVariantDict* dict);

	// glib.VariantIter

	GVariantIter* g_variant_iter_copy(GVariantIter* iter);
	void g_variant_iter_free(GVariantIter* iter);
	size_t g_variant_iter_init(GVariantIter* iter, GVariant* value);
	int g_variant_iter_loop(GVariantIter* iter, const(char)* formatString, ... );
	size_t g_variant_iter_n_children(GVariantIter* iter);
	int g_variant_iter_next(GVariantIter* iter, const(char)* formatString, ... );
	GVariant* g_variant_iter_next_value(GVariantIter* iter);

	// glib.VariantType

	GVariantType* g_variant_type_new(const(char)* typeString);
	GVariantType* g_variant_type_new_array(GVariantType* element);
	GVariantType* g_variant_type_new_dict_entry(GVariantType* key, GVariantType* value);
	GVariantType* g_variant_type_new_maybe(GVariantType* element);
	GVariantType* g_variant_type_new_tuple(GVariantType** items, int length);
	GVariantType* g_variant_type_copy(GVariantType* type);
	char* g_variant_type_dup_string(GVariantType* type);
	GVariantType* g_variant_type_element(GVariantType* type);
	int g_variant_type_equal(void* type1, void* type2);
	GVariantType* g_variant_type_first(GVariantType* type);
	void g_variant_type_free(GVariantType* type);
	size_t g_variant_type_get_string_length(GVariantType* type);
	uint g_variant_type_hash(void* type);
	int g_variant_type_is_array(GVariantType* type);
	int g_variant_type_is_basic(GVariantType* type);
	int g_variant_type_is_container(GVariantType* type);
	int g_variant_type_is_definite(GVariantType* type);
	int g_variant_type_is_dict_entry(GVariantType* type);
	int g_variant_type_is_maybe(GVariantType* type);
	int g_variant_type_is_subtype_of(GVariantType* type, GVariantType* supertype);
	int g_variant_type_is_tuple(GVariantType* type);
	int g_variant_type_is_variant(GVariantType* type);
	GVariantType* g_variant_type_key(GVariantType* type);
	size_t g_variant_type_n_items(GVariantType* type);
	GVariantType* g_variant_type_next(GVariantType* type);
	const(char)* g_variant_type_peek_string(GVariantType* type);
	GVariantType* g_variant_type_value(GVariantType* type);
	GVariantType* g_variant_type_checked_(const(char)* arg0);
	size_t g_variant_type_string_get_depth_(const(char)* typeString);
	int g_variant_type_string_is_valid(const(char)* typeString);
	int g_variant_type_string_scan(const(char)* string_, const(char)* limit, char** endptr);

	// glib.Module

	int g_module_close(GModule* module_);
	void g_module_make_resident(GModule* module_);
	const(char)* g_module_name(GModule* module_);
	int g_module_symbol(GModule* module_, const(char)* symbolName, void** symbol);
	char* g_module_build_path(const(char)* directory, const(char)* moduleName);
	const(char)* g_module_error();
	GModule* g_module_open(const(char)* fileName, GModuleFlags flags);
	int g_module_supported();

	// glib.Base64

	size_t g_base64_decode_step(char* in_, size_t len, char* out_, int* state, uint* save);
	char* g_base64_decode_inplace(char* text, size_t* outLen);
	char* g_base64_decode(const(char)* text, size_t* outLen);
	char* g_base64_encode(char* data, size_t len);
	size_t g_base64_encode_close(int breakLines, char* out_, int* state, int* save);
	size_t g_base64_encode_step(char* in_, size_t len, int breakLines, char* out_, int* state, int* save);

	// glib.Idle

	uint g_idle_add(GSourceFunc function_, void* data);
	uint g_idle_add_full(int priority, GSourceFunc function_, void* data, GDestroyNotify notify);
	int g_idle_remove_by_data(void* data);
	GSource* g_idle_source_new();

	// glib.MemorySlice

	void* g_slice_alloc(size_t blockSize);
	void* g_slice_alloc0(size_t blockSize);
	void* g_slice_copy(size_t blockSize, void* memBlock);
	void g_slice_free1(size_t blockSize, void* memBlock);
	void g_slice_free_chain_with_offset(size_t blockSize, void* memChain, size_t nextOffset);
	long g_slice_get_config(GSliceConfig ckey);
	long* g_slice_get_config_state(GSliceConfig ckey, long address, uint* nValues);
	void g_slice_set_config(GSliceConfig ckey, long value);

	// glib.Spawn

	int g_spawn_async(char* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, GError** err);
	int g_spawn_async_with_pipes(char* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, int* standardInput, int* standardOutput, int* standardError, GError** err);
	int g_spawn_check_exit_status(int exitStatus, GError** err);
	void g_spawn_close_pid(GPid pid);
	int g_spawn_command_line_async(char* commandLine, GError** err);
	int g_spawn_command_line_sync(char* commandLine, char** standardOutput, char** standardError, int* exitStatus, GError** err);
	GQuark g_spawn_error_quark();
	GQuark g_spawn_exit_error_quark();
	int g_spawn_sync(char* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, char** standardOutput, char** standardError, int* exitStatus, GError** err);
	int g_spawn_async_with_fds(char* workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, int stdinFd, int stdoutFd, int stderrFd, GError** err);

	// glib.Str

	int g_ascii_digit_value(char c);
	char* g_ascii_dtostr(char* buffer, int bufLen, double d);
	char* g_ascii_formatd(char* buffer, int bufLen, const(char)* format, double d);
	int g_ascii_strcasecmp(const(char)* s1, const(char)* s2);
	char* g_ascii_strdown(const(char)* str, ptrdiff_t len);
	int g_ascii_strncasecmp(const(char)* s1, const(char)* s2, size_t n);
	double g_ascii_strtod(const(char)* nptr, char** endptr);
	long g_ascii_strtoll(const(char)* nptr, char** endptr, uint base);
	ulong g_ascii_strtoull(const(char)* nptr, char** endptr, uint base);
	char* g_ascii_strup(const(char)* str, ptrdiff_t len);
	char g_ascii_tolower(char c);
	char g_ascii_toupper(char c);
	int g_ascii_xdigit_value(char c);
	int g_printf(const(char)* format, ... );
	size_t g_printf_string_upper_bound(const(char)* format, void* args);
	int g_snprintf(char* string_, gulong n, const(char)* format, ... );
	int g_sprintf(char* string_, const(char)* format, ... );
	char* g_stpcpy(char* dest, const(char)* src);
	int g_str_has_prefix(const(char)* str, const(char)* prefix);
	int g_str_has_suffix(const(char)* str, const(char)* suffix);
	int g_str_is_ascii(const(char)* str);
	int g_str_match_string(const(char)* searchTerm, const(char)* potentialHit, int acceptAlternates);
	char* g_str_to_ascii(const(char)* str, const(char)* fromLocale);
	char** g_str_tokenize_and_fold(const(char)* string_, const(char)* translitLocale, char*** asciiAlternates);
	char* g_strcanon(char* string_, const(char)* validChars, char substitutor);
	int g_strcasecmp(const(char)* s1, const(char)* s2);
	char* g_strchomp(char* string_);
	char* g_strchug(char* string_);
	int g_strcmp0(const(char)* str1, const(char)* str2);
	char* g_strcompress(const(char)* source);
	char* g_strconcat(const(char)* string1, ... );
	char* g_strdelimit(char* string_, const(char)* delimiters, char newDelimiter);
	char* g_strdown(char* string_);
	char* g_strdup(const(char)* str);
	char* g_strdup_printf(const(char)* format, ... );
	char* g_strdup_vprintf(const(char)* format, void* args);
	char** g_strdupv(char** strArray);
	const(char)* g_strerror(int errnum);
	char* g_strescape(const(char)* source, const(char)* exceptions);
	void g_strfreev(char** strArray);
	char* g_strjoin(const(char)* separator, ... );
	char* g_strjoinv(const(char)* separator, char** strArray);
	size_t g_strlcat(char* dest, const(char)* src, size_t destSize);
	size_t g_strlcpy(char* dest, const(char)* src, size_t destSize);
	int g_strncasecmp(const(char)* s1, const(char)* s2, uint n);
	char* g_strndup(const(char)* str, size_t n);
	char* g_strnfill(size_t length, char fillChar);
	char* g_strreverse(char* string_);
	char* g_strrstr(const(char)* haystack, const(char)* needle);
	char* g_strrstr_len(const(char)* haystack, ptrdiff_t haystackLen, const(char)* needle);
	const(char)* g_strsignal(int signum);
	char** g_strsplit(const(char)* string_, const(char)* delimiter, int maxTokens);
	char** g_strsplit_set(const(char)* string_, const(char)* delimiters, int maxTokens);
	char* g_strstr_len(const(char)* haystack, ptrdiff_t haystackLen, const(char)* needle);
	double g_strtod(const(char)* nptr, char** endptr);
	char* g_strup(char* string_);
	GType g_strv_get_type();
	uint g_strv_length(char** strArray);
	int g_strv_contains(const(char)* strv, const(char)* str);
	int g_vasprintf(char** string_, const(char)* format, void* args);
	int g_vprintf(const(char)* format, void* args);
	int g_vsnprintf(char* string_, gulong n, const(char)* format, void* args);
	int g_vsprintf(char* string_, const(char)* format, void* args);
	int g_fprintf(FILE* file, const(char)* format, ... );
	int g_vfprintf(FILE* file, const(char)* format, void* args);
	int g_ascii_string_to_signed(const(char)* str, uint base, long min, long max, long* outNum, GError** err);
	int g_ascii_string_to_unsigned(const(char)* str, uint base, ulong min, ulong max, ulong* outNum, GError** err);
	int g_strv_equal(const(char)* strv1, const(char)* strv2);

	// glib.Timeout

	uint g_timeout_add(uint interval, GSourceFunc function_, void* data);
	uint g_timeout_add_full(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify);
	uint g_timeout_add_seconds(uint interval, GSourceFunc function_, void* data);
	uint g_timeout_add_seconds_full(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify);
	GSource* g_timeout_source_new(uint interval);
	GSource* g_timeout_source_new_seconds(uint interval);

	// glib.Util

	char* g_build_filenamev(char** args);
	char* g_build_pathv(const(char)* separator, char** args);
	void g_atexit(GVoidFunc func);
	char* g_basename(char* fileName);
	int g_bit_nth_lsf(gulong mask, int nthBit);
	int g_bit_nth_msf(gulong mask, int nthBit);
	uint g_bit_storage(gulong number);
	char* g_build_path(char* separator, char* firstElement, ... );
	char* g_environ_getenv(char** envp, char* variable);
	char** g_environ_setenv(char** envp, char* variable, char* value, int overwrite);
	char** g_environ_unsetenv(char** envp, char* variable);
	char* g_find_program_in_path(char* program);
	char* g_format_size(ulong size);
	char* g_format_size_for_display(long size);
	char* g_format_size_full(ulong size, GFormatSizeFlags flags);
	const(char)* g_get_application_name();
	char** g_get_environ();
	char* g_get_current_dir();
	char* g_get_home_dir();
	const(char)* g_get_host_name();
	const(char)* g_get_prgname();
	char* g_get_real_name();
	char** g_get_system_config_dirs();
	char** g_get_system_data_dirs();
	char* g_get_tmp_dir();
	char* g_get_user_cache_dir();
	char* g_get_user_config_dir();
	char* g_get_user_data_dir();
	char* g_get_user_name();
	char* g_get_user_runtime_dir();
	char* g_get_user_special_dir(GUserDirectory directory);
	char* g_getenv(char* variable);
	char** g_listenv();
	void g_nullify_pointer(void** nullifyLocation);
	uint g_parse_debug_string(const(char)* string_, GDebugKey* keys, uint nkeys);
	char* g_path_get_basename(char* fileName);
	char* g_path_get_dirname(char* fileName);
	int g_path_is_absolute(char* fileName);
	char* g_path_skip_root(char* fileName);
	void g_qsort_with_data(void* pbase, int totalElems, size_t size, GCompareDataFunc compareFunc, void* userData);
	void g_reload_user_special_dirs_cache();
	void g_set_application_name(const(char)* applicationName);
	void g_set_prgname(const(char)* prgname);
	int g_setenv(char* variable, char* value, int overwrite);
	uint g_spaced_primes_closest(uint num);
	void g_unsetenv(char* variable);
	char* g_canonicalize_filename(char* filename, char* relativeTo);
	char* g_get_os_info(const(char)* keyName);

	// glib.Atomic

	int g_atomic_int_add(int* atomic, int val);
	uint g_atomic_int_and(uint* atomic, uint val);
	int g_atomic_int_compare_and_exchange(int* atomic, int oldval, int newval);
	int g_atomic_int_dec_and_test(int* atomic);
	int g_atomic_int_exchange_and_add(int* atomic, int val);
	int g_atomic_int_get(int* atomic);
	void g_atomic_int_inc(int* atomic);
	uint g_atomic_int_or(uint* atomic, uint val);
	void g_atomic_int_set(int* atomic, int newval);
	uint g_atomic_int_xor(uint* atomic, uint val);
	ptrdiff_t g_atomic_pointer_add(void* atomic, ptrdiff_t val);
	size_t g_atomic_pointer_and(void* atomic, size_t val);
	int g_atomic_pointer_compare_and_exchange(void* atomic, void* oldval, void* newval);
	void* g_atomic_pointer_get(void* atomic);
	size_t g_atomic_pointer_or(void* atomic, size_t val);
	void g_atomic_pointer_set(void* atomic, void* newval);
	size_t g_atomic_pointer_xor(void* atomic, size_t val);

	// glib.CharacterSet

	char* g_convert(char* str, ptrdiff_t len, const(char)* toCodeset, const(char)* fromCodeset, size_t* bytesRead, size_t* bytesWritten, GError** err);
	GQuark g_convert_error_quark();
	char* g_convert_with_fallback(char* str, ptrdiff_t len, const(char)* toCodeset, const(char)* fromCodeset, const(char)* fallback, size_t* bytesRead, size_t* bytesWritten, GError** err);
	char* g_convert_with_iconv(char* str, ptrdiff_t len, GIConv converter, size_t* bytesRead, size_t* bytesWritten, GError** err);
	char* g_filename_display_basename(char* filename);
	char* g_filename_display_name(char* filename);
	char* g_filename_from_utf8(const(char)* utf8string, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err);
	char* g_filename_to_utf8(char* opsysstring, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err);
	int g_get_charset(char** charset);
	char* g_get_codeset();
	int g_get_filename_charsets(char*** filenameCharsets);
	char* g_locale_from_utf8(const(char)* utf8string, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err);
	char* g_locale_to_utf8(char* opsysstring, ptrdiff_t len, size_t* bytesRead, size_t* bytesWritten, GError** err);
	char** g_get_language_names_with_category(const(char)* categoryName);
	int g_get_console_charset(char** charset);

	// glib.Child

	uint g_child_watch_add(GPid pid, GChildWatchFunc function_, void* data);
	uint g_child_watch_add_full(int priority, GPid pid, GChildWatchFunc function_, void* data, GDestroyNotify notify);
	GSource* g_child_watch_source_new(GPid pid);

	// glib.DataList

	void g_datalist_clear(GData** datalist);
	void g_datalist_foreach(GData** datalist, GDataForeachFunc func, void* userData);
	void* g_datalist_get_data(GData** datalist, const(char)* key);
	uint g_datalist_get_flags(GData** datalist);
	void* g_datalist_id_dup_data(GData** datalist, GQuark keyId, GDuplicateFunc dupFunc, void* userData);
	void* g_datalist_id_get_data(GData** datalist, GQuark keyId);
	void* g_datalist_id_remove_no_notify(GData** datalist, GQuark keyId);
	int g_datalist_id_replace_data(GData** datalist, GQuark keyId, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy);
	void g_datalist_id_set_data_full(GData** datalist, GQuark keyId, void* data, GDestroyNotify destroyFunc);
	void g_datalist_init(GData** datalist);
	void g_datalist_set_flags(GData** datalist, uint flags);
	void g_datalist_unset_flags(GData** datalist, uint flags);

	// glib.DataSet

	void g_dataset_destroy(void* datasetLocation);
	void g_dataset_foreach(void* datasetLocation, GDataForeachFunc func, void* userData);
	void* g_dataset_id_get_data(void* datasetLocation, GQuark keyId);
	void* g_dataset_id_remove_no_notify(void* datasetLocation, GQuark keyId);
	void g_dataset_id_set_data_full(void* datasetLocation, GQuark keyId, void* data, GDestroyNotify destroyFunc);

	// glib.FileUtils

	int g_access(char* filename, int mode);
	int g_chdir(char* path);
	int g_close(int fd, GError** err);
	GFileError g_file_error_from_errno(int errNo);
	GQuark g_file_error_quark();
	int g_file_get_contents(char* filename, char** contents, size_t* length, GError** err);
	int g_file_open_tmp(char* tmpl, char** nameUsed, GError** err);
	char* g_file_read_link(char* filename, GError** err);
	int g_file_set_contents(char* filename, char* contents, ptrdiff_t length, GError** err);
	int g_file_test(char* filename, GFileTest test);
	int g_mkdir_with_parents(char* pathname, int mode);
	char* g_mkdtemp(char* tmpl);
	char* g_mkdtemp_full(char* tmpl, int mode);
	int g_mkstemp(char* tmpl);
	int g_mkstemp_full(char* tmpl, int flags, int mode);
	int g_rmdir(char* filename);
	int g_unlink(char* filename);

	// glib.Hostname

	int g_hostname_is_ascii_encoded(const(char)* hostname);
	int g_hostname_is_ip_address(const(char)* hostname);
	int g_hostname_is_non_ascii(const(char)* hostname);
	char* g_hostname_to_ascii(const(char)* hostname);
	char* g_hostname_to_unicode(const(char)* hostname);

	// glib.Internationalization

	const(char)* g_dcgettext(const(char)* domain, const(char)* msgid, int category);
	const(char)* g_dgettext(const(char)* domain, const(char)* msgid);
	const(char)* g_dngettext(const(char)* domain, const(char)* msgid, const(char)* msgidPlural, gulong n);
	const(char)* g_dpgettext(const(char)* domain, const(char)* msgctxtid, size_t msgidoffset);
	const(char)* g_dpgettext2(const(char)* domain, const(char)* context, const(char)* msgid);
	char** g_get_language_names();
	char** g_get_locale_variants(const(char)* locale);
	const(char)* g_strip_context(const(char)* msgid, const(char)* msgval);

	// glib.Memory

	void g_clear_pointer(void** pp, GDestroyNotify destroy);
	void g_free(void* mem);
	void* g_malloc(size_t nBytes);
	void* g_malloc0(size_t nBytes);
	void* g_malloc0_n(size_t nBlocks, size_t nBlockBytes);
	void* g_malloc_n(size_t nBlocks, size_t nBlockBytes);
	int g_mem_is_system_malloc();
	void g_mem_profile();
	void g_mem_set_vtable(GMemVTable* vtable);
	void* g_memdup(void* mem, uint byteSize);
	void* g_realloc(void* mem, size_t nBytes);
	void* g_realloc_n(void* mem, size_t nBlocks, size_t nBlockBytes);
	void* g_try_malloc(size_t nBytes);
	void* g_try_malloc0(size_t nBytes);
	void* g_try_malloc0_n(size_t nBlocks, size_t nBlockBytes);
	void* g_try_malloc_n(size_t nBlocks, size_t nBlockBytes);
	void* g_try_realloc(void* mem, size_t nBytes);
	void* g_try_realloc_n(void* mem, size_t nBlocks, size_t nBlockBytes);

	// glib.MessageLog

	void g_log(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* format, ... );
	void g_log_default_handler(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* message, void* unusedData);
	void g_log_remove_handler(const(char)* logDomain, uint handlerId);
	GLogLevelFlags g_log_set_always_fatal(GLogLevelFlags fatalMask);
	GLogFunc g_log_set_default_handler(GLogFunc logFunc, void* userData);
	GLogLevelFlags g_log_set_fatal_mask(const(char)* logDomain, GLogLevelFlags fatalMask);
	uint g_log_set_handler(const(char)* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData);
	uint g_log_set_handler_full(const(char)* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, void* userData, GDestroyNotify destroy);
	void g_logv(const(char)* logDomain, GLogLevelFlags logLevel, const(char)* format, void* args);

	// glib.Messages

	void g_on_error_query(const(char)* prgName);
	void g_on_error_stack_trace(const(char)* prgName);
	void g_print(const(char)* format, ... );
	void g_printerr(const(char)* format, ... );
	GPrintFunc g_set_print_handler(GPrintFunc func);
	GPrintFunc g_set_printerr_handler(GPrintFunc func);

	// glib.Quark

	const(char)* g_intern_static_string(const(char)* string_);
	const(char)* g_intern_string(const(char)* string_);
	GQuark g_quark_from_static_string(const(char)* string_);
	GQuark g_quark_from_string(const(char)* string_);
	const(char)* g_quark_to_string(GQuark quark);
	GQuark g_quark_try_string(const(char)* string_);

	// glib.ShellUtils

	GQuark g_shell_error_quark();
	int g_shell_parse_argv(char* commandLine, int* argcp, char*** argvp, GError** err);
	char* g_shell_quote(char* unquotedString);
	char* g_shell_unquote(char* quotedString, GError** err);

	// glib.Unicode

	wchar* g_ucs4_to_utf16(dchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	char* g_ucs4_to_utf8(dchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	GUnicodeBreakType g_unichar_break_type(dchar c);
	int g_unichar_combining_class(dchar uc);
	int g_unichar_compose(dchar a, dchar b, dchar* ch);
	int g_unichar_decompose(dchar ch, dchar* a, dchar* b);
	int g_unichar_digit_value(dchar c);
	size_t g_unichar_fully_decompose(dchar ch, int compat, dchar* result, size_t resultLen);
	int g_unichar_get_mirror_char(dchar ch, dchar* mirroredCh);
	GUnicodeScript g_unichar_get_script(dchar ch);
	int g_unichar_isalnum(dchar c);
	int g_unichar_isalpha(dchar c);
	int g_unichar_iscntrl(dchar c);
	int g_unichar_isdefined(dchar c);
	int g_unichar_isdigit(dchar c);
	int g_unichar_isgraph(dchar c);
	int g_unichar_islower(dchar c);
	int g_unichar_ismark(dchar c);
	int g_unichar_isprint(dchar c);
	int g_unichar_ispunct(dchar c);
	int g_unichar_isspace(dchar c);
	int g_unichar_istitle(dchar c);
	int g_unichar_isupper(dchar c);
	int g_unichar_iswide(dchar c);
	int g_unichar_iswide_cjk(dchar c);
	int g_unichar_isxdigit(dchar c);
	int g_unichar_iszerowidth(dchar c);
	int g_unichar_to_utf8(dchar c, char* outbuf);
	dchar g_unichar_tolower(dchar c);
	dchar g_unichar_totitle(dchar c);
	dchar g_unichar_toupper(dchar c);
	GUnicodeType g_unichar_type(dchar c);
	int g_unichar_validate(dchar ch);
	int g_unichar_xdigit_value(dchar c);
	dchar* g_unicode_canonical_decomposition(dchar ch, size_t* resultLen);
	void g_unicode_canonical_ordering(dchar* string_, size_t len);
	GUnicodeScript g_unicode_script_from_iso15924(uint iso15924);
	uint g_unicode_script_to_iso15924(GUnicodeScript script);
	dchar* g_utf16_to_ucs4(wchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	char* g_utf16_to_utf8(wchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	char* g_utf8_casefold(const(char)* str, ptrdiff_t len);
	int g_utf8_collate(const(char)* str1, const(char)* str2);
	char* g_utf8_collate_key(const(char)* str, ptrdiff_t len);
	char* g_utf8_collate_key_for_filename(const(char)* str, ptrdiff_t len);
	char* g_utf8_find_next_char(const(char)* p, const(char)* end);
	char* g_utf8_find_prev_char(const(char)* str, const(char)* p);
	dchar g_utf8_get_char(const(char)* p);
	dchar g_utf8_get_char_validated(const(char)* p, ptrdiff_t maxLen);
	char* g_utf8_normalize(const(char)* str, ptrdiff_t len, GNormalizeMode mode);
	char* g_utf8_offset_to_pointer(const(char)* str, glong offset);
	glong g_utf8_pointer_to_offset(const(char)* str, const(char)* pos);
	char* g_utf8_prev_char(const(char)* p);
	char* g_utf8_strchr(const(char)* p, ptrdiff_t len, dchar c);
	char* g_utf8_strdown(const(char)* str, ptrdiff_t len);
	glong g_utf8_strlen(const(char)* p, ptrdiff_t max);
	char* g_utf8_strncpy(char* dest, const(char)* src, size_t n);
	char* g_utf8_strrchr(const(char)* p, ptrdiff_t len, dchar c);
	char* g_utf8_strreverse(const(char)* str, ptrdiff_t len);
	char* g_utf8_strup(const(char)* str, ptrdiff_t len);
	char* g_utf8_substring(const(char)* str, glong startPos, glong endPos);
	dchar* g_utf8_to_ucs4(const(char)* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	dchar* g_utf8_to_ucs4_fast(const(char)* str, glong len, glong* itemsWritten);
	wchar* g_utf8_to_utf16(const(char)* str, glong len, glong* itemsRead, glong* itemsWritten, GError** err);
	int g_utf8_validate(char* str, ptrdiff_t maxLen, char** end);
	char* g_utf8_make_valid(const(char)* str, ptrdiff_t len);
	int g_utf8_validate_len(char* str, size_t maxLen, char** end);

	// glib.UnixUtils

	GQuark g_unix_error_quark();
	uint g_unix_fd_add(int fd, GIOCondition condition, GUnixFDSourceFunc function_, void* userData);
	uint g_unix_fd_add_full(int priority, int fd, GIOCondition condition, GUnixFDSourceFunc function_, void* userData, GDestroyNotify notify);
	GSource* g_unix_fd_source_new(int fd, GIOCondition condition);
	int g_unix_open_pipe(int* fds, int flags, GError** err);
	int g_unix_set_fd_nonblocking(int fd, int nonblock, GError** err);
	uint g_unix_signal_add(int signum, GSourceFunc handler, void* userData);
	uint g_unix_signal_add_full(int priority, int signum, GSourceFunc handler, void* userData, GDestroyNotify notify);
	GSource* g_unix_signal_source_new(int signum);

	// glib.URI

	char* g_filename_from_uri(const(char)* uri, char** hostname, GError** err);
	char* g_filename_to_uri(char* filename, const(char)* hostname, GError** err);

	// glib.Uuid

	int g_uuid_string_is_valid(const(char)* str);
	char* g_uuid_string_random();

	// glib.Version

	const(char)* glib_check_version(uint requiredMajor, uint requiredMinor, uint requiredMicro);
}