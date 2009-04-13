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


module gtkc.glib;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.glibtypes;
private import gtkc.gthreadtypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// glib.Version

	Linker.link(glib_check_version, "glib_check_version", LIBRARY.GLIB);

	// glib.Atomic

	Linker.link(g_atomic_int_get, "g_atomic_int_get", LIBRARY.GLIB);
	Linker.link(g_atomic_int_set, "g_atomic_int_set", LIBRARY.GLIB);
	Linker.link(g_atomic_int_add, "g_atomic_int_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_exchange_and_add, "g_atomic_int_exchange_and_add", LIBRARY.GLIB);
	Linker.link(g_atomic_int_compare_and_exchange, "g_atomic_int_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_get, "g_atomic_pointer_get", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_set, "g_atomic_pointer_set", LIBRARY.GLIB);
	Linker.link(g_atomic_pointer_compare_and_exchange, "g_atomic_pointer_compare_and_exchange", LIBRARY.GLIB);
	Linker.link(g_atomic_int_inc, "g_atomic_int_inc", LIBRARY.GLIB);
	Linker.link(g_atomic_int_dec_and_test, "g_atomic_int_dec_and_test", LIBRARY.GLIB);

	// glib.MainLoop

	Linker.link(g_main_loop_new, "g_main_loop_new", LIBRARY.GLIB);
	Linker.link(g_main_loop_ref, "g_main_loop_ref", LIBRARY.GLIB);
	Linker.link(g_main_loop_unref, "g_main_loop_unref", LIBRARY.GLIB);
	Linker.link(g_main_loop_run, "g_main_loop_run", LIBRARY.GLIB);
	Linker.link(g_main_loop_quit, "g_main_loop_quit", LIBRARY.GLIB);
	Linker.link(g_main_loop_is_running, "g_main_loop_is_running", LIBRARY.GLIB);
	Linker.link(g_main_loop_get_context, "g_main_loop_get_context", LIBRARY.GLIB);
	Linker.link(g_main_depth, "g_main_depth", LIBRARY.GLIB);
	Linker.link(g_main_current_source, "g_main_current_source", LIBRARY.GLIB);
	Linker.link(g_poll, "g_poll", LIBRARY.GLIB);

	// glib.MainContext

	Linker.link(g_main_context_new, "g_main_context_new", LIBRARY.GLIB);
	Linker.link(g_main_context_ref, "g_main_context_ref", LIBRARY.GLIB);
	Linker.link(g_main_context_unref, "g_main_context_unref", LIBRARY.GLIB);
	Linker.link(g_main_context_default, "g_main_context_default", LIBRARY.GLIB);
	Linker.link(g_main_context_iteration, "g_main_context_iteration", LIBRARY.GLIB);
	Linker.link(g_main_context_pending, "g_main_context_pending", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_id, "g_main_context_find_source_by_id", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_user_data, "g_main_context_find_source_by_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_find_source_by_funcs_user_data, "g_main_context_find_source_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_main_context_wakeup, "g_main_context_wakeup", LIBRARY.GLIB);
	Linker.link(g_main_context_acquire, "g_main_context_acquire", LIBRARY.GLIB);
	Linker.link(g_main_context_release, "g_main_context_release", LIBRARY.GLIB);
	Linker.link(g_main_context_is_owner, "g_main_context_is_owner", LIBRARY.GLIB);
	Linker.link(g_main_context_wait, "g_main_context_wait", LIBRARY.GLIB);
	Linker.link(g_main_context_prepare, "g_main_context_prepare", LIBRARY.GLIB);
	Linker.link(g_main_context_query, "g_main_context_query", LIBRARY.GLIB);
	Linker.link(g_main_context_check, "g_main_context_check", LIBRARY.GLIB);
	Linker.link(g_main_context_dispatch, "g_main_context_dispatch", LIBRARY.GLIB);
	Linker.link(g_main_context_set_poll_func, "g_main_context_set_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_get_poll_func, "g_main_context_get_poll_func", LIBRARY.GLIB);
	Linker.link(g_main_context_add_poll, "g_main_context_add_poll", LIBRARY.GLIB);
	Linker.link(g_main_context_remove_poll, "g_main_context_remove_poll", LIBRARY.GLIB);

	// glib.Timeout

	Linker.link(g_timeout_source_new, "g_timeout_source_new", LIBRARY.GLIB);
	Linker.link(g_timeout_source_new_seconds, "g_timeout_source_new_seconds", LIBRARY.GLIB);
	Linker.link(g_timeout_add, "g_timeout_add", LIBRARY.GLIB);
	Linker.link(g_timeout_add_full, "g_timeout_add_full", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds, "g_timeout_add_seconds", LIBRARY.GLIB);
	Linker.link(g_timeout_add_seconds_full, "g_timeout_add_seconds_full", LIBRARY.GLIB);

	// glib.Idle

	Linker.link(g_idle_source_new, "g_idle_source_new", LIBRARY.GLIB);
	Linker.link(g_idle_add, "g_idle_add", LIBRARY.GLIB);
	Linker.link(g_idle_add_full, "g_idle_add_full", LIBRARY.GLIB);
	Linker.link(g_idle_remove_by_data, "g_idle_remove_by_data", LIBRARY.GLIB);

	// glib.Child

	Linker.link(g_child_watch_source_new, "g_child_watch_source_new", LIBRARY.GLIB);
	Linker.link(g_child_watch_add, "g_child_watch_add", LIBRARY.GLIB);
	Linker.link(g_child_watch_add_full, "g_child_watch_add_full", LIBRARY.GLIB);

	// glib.Source

	Linker.link(g_source_new, "g_source_new", LIBRARY.GLIB);
	Linker.link(g_source_ref, "g_source_ref", LIBRARY.GLIB);
	Linker.link(g_source_unref, "g_source_unref", LIBRARY.GLIB);
	Linker.link(g_source_set_funcs, "g_source_set_funcs", LIBRARY.GLIB);
	Linker.link(g_source_attach, "g_source_attach", LIBRARY.GLIB);
	Linker.link(g_source_destroy, "g_source_destroy", LIBRARY.GLIB);
	Linker.link(g_source_is_destroyed, "g_source_is_destroyed", LIBRARY.GLIB);
	Linker.link(g_source_set_priority, "g_source_set_priority", LIBRARY.GLIB);
	Linker.link(g_source_get_priority, "g_source_get_priority", LIBRARY.GLIB);
	Linker.link(g_source_set_can_recurse, "g_source_set_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_get_can_recurse, "g_source_get_can_recurse", LIBRARY.GLIB);
	Linker.link(g_source_get_id, "g_source_get_id", LIBRARY.GLIB);
	Linker.link(g_source_get_context, "g_source_get_context", LIBRARY.GLIB);
	Linker.link(g_source_set_callback, "g_source_set_callback", LIBRARY.GLIB);
	Linker.link(g_source_set_callback_indirect, "g_source_set_callback_indirect", LIBRARY.GLIB);
	Linker.link(g_source_add_poll, "g_source_add_poll", LIBRARY.GLIB);
	Linker.link(g_source_remove_poll, "g_source_remove_poll", LIBRARY.GLIB);
	Linker.link(g_source_get_current_time, "g_source_get_current_time", LIBRARY.GLIB);
	Linker.link(g_source_remove, "g_source_remove", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_funcs_user_data, "g_source_remove_by_funcs_user_data", LIBRARY.GLIB);
	Linker.link(g_source_remove_by_user_data, "g_source_remove_by_user_data", LIBRARY.GLIB);

	// glib.ThreadPool

	Linker.link(g_thread_pool_new, "g_thread_pool_new", LIBRARY.GLIB);
	Linker.link(g_thread_pool_push, "g_thread_pool_push", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_threads, "g_thread_pool_set_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_threads, "g_thread_pool_get_max_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_threads, "g_thread_pool_get_num_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_unprocessed, "g_thread_pool_unprocessed", LIBRARY.GLIB);
	Linker.link(g_thread_pool_free, "g_thread_pool_free", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_unused_threads, "g_thread_pool_set_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_unused_threads, "g_thread_pool_get_max_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_num_unused_threads, "g_thread_pool_get_num_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_stop_unused_threads, "g_thread_pool_stop_unused_threads", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_sort_function, "g_thread_pool_set_sort_function", LIBRARY.GLIB);
	Linker.link(g_thread_pool_set_max_idle_time, "g_thread_pool_set_max_idle_time", LIBRARY.GLIB);
	Linker.link(g_thread_pool_get_max_idle_time, "g_thread_pool_get_max_idle_time", LIBRARY.GLIB);

	// glib.AsyncQueue

	Linker.link(g_async_queue_new, "g_async_queue_new", LIBRARY.GLIB);
	Linker.link(g_async_queue_new_full, "g_async_queue_new_full", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref, "g_async_queue_ref", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref, "g_async_queue_unref", LIBRARY.GLIB);
	Linker.link(g_async_queue_push, "g_async_queue_push", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted, "g_async_queue_push_sorted", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop, "g_async_queue_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop, "g_async_queue_try_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop, "g_async_queue_timed_pop", LIBRARY.GLIB);
	Linker.link(g_async_queue_length, "g_async_queue_length", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort, "g_async_queue_sort", LIBRARY.GLIB);
	Linker.link(g_async_queue_lock, "g_async_queue_lock", LIBRARY.GLIB);
	Linker.link(g_async_queue_unlock, "g_async_queue_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_ref_unlocked, "g_async_queue_ref_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_unref_and_unlock, "g_async_queue_unref_and_unlock", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_unlocked, "g_async_queue_push_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_push_sorted_unlocked, "g_async_queue_push_sorted_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_pop_unlocked, "g_async_queue_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_try_pop_unlocked, "g_async_queue_try_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_timed_pop_unlocked, "g_async_queue_timed_pop_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_length_unlocked, "g_async_queue_length_unlocked", LIBRARY.GLIB);
	Linker.link(g_async_queue_sort_unlocked, "g_async_queue_sort_unlocked", LIBRARY.GLIB);

	// glib.Module

	Linker.link(g_module_supported, "g_module_supported", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_build_path, "g_module_build_path", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_open, "g_module_open", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_symbol, "g_module_symbol", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_name, "g_module_name", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_make_resident, "g_module_make_resident", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_close, "g_module_close", LIBRARY.GLIB, LIBRARY.GMODULE);
	Linker.link(g_module_error, "g_module_error", LIBRARY.GLIB, LIBRARY.GMODULE);

	// glib.Memory

	Linker.link(g_malloc, "g_malloc", LIBRARY.GLIB);
	Linker.link(g_malloc0, "g_malloc0", LIBRARY.GLIB);
	Linker.link(g_realloc, "g_realloc", LIBRARY.GLIB);
	Linker.link(g_try_malloc, "g_try_malloc", LIBRARY.GLIB);
	Linker.link(g_try_malloc0, "g_try_malloc0", LIBRARY.GLIB);
	Linker.link(g_try_realloc, "g_try_realloc", LIBRARY.GLIB);
	Linker.link(g_free, "g_free", LIBRARY.GLIB);
	Linker.link(g_memdup, "g_memdup", LIBRARY.GLIB);
	Linker.link(g_mem_set_vtable, "g_mem_set_vtable", LIBRARY.GLIB);
	Linker.link(g_mem_is_system_malloc, "g_mem_is_system_malloc", LIBRARY.GLIB);
	Linker.link(g_mem_profile, "g_mem_profile", LIBRARY.GLIB);

	// glib.IOChannel

	Linker.link(g_io_channel_unix_new, "g_io_channel_unix_new", LIBRARY.GLIB);
	Linker.link(g_io_channel_unix_get_fd, "g_io_channel_unix_get_fd", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_fd, "g_io_channel_win32_new_fd", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_socket, "g_io_channel_win32_new_socket", LIBRARY.GLIB);
	Linker.link(g_io_channel_win32_new_messages, "g_io_channel_win32_new_messages", LIBRARY.GLIB);
	Linker.link(g_io_channel_init, "g_io_channel_init", LIBRARY.GLIB);
	Linker.link(g_io_channel_new_file, "g_io_channel_new_file", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_chars, "g_io_channel_read_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_unichar, "g_io_channel_read_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line, "g_io_channel_read_line", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_line_string, "g_io_channel_read_line_string", LIBRARY.GLIB);
	Linker.link(g_io_channel_read_to_end, "g_io_channel_read_to_end", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_chars, "g_io_channel_write_chars", LIBRARY.GLIB);
	Linker.link(g_io_channel_write_unichar, "g_io_channel_write_unichar", LIBRARY.GLIB);
	Linker.link(g_io_channel_flush, "g_io_channel_flush", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek_position, "g_io_channel_seek_position", LIBRARY.GLIB);
	Linker.link(g_io_channel_shutdown, "g_io_channel_shutdown", LIBRARY.GLIB);
	Linker.link(g_io_channel_error_from_errno, "g_io_channel_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_io_channel_ref, "g_io_channel_ref", LIBRARY.GLIB);
	Linker.link(g_io_channel_unref, "g_io_channel_unref", LIBRARY.GLIB);
	Linker.link(g_io_create_watch, "g_io_create_watch", LIBRARY.GLIB);
	Linker.link(g_io_add_watch, "g_io_add_watch", LIBRARY.GLIB);
	Linker.link(g_io_add_watch_full, "g_io_add_watch_full", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_size, "g_io_channel_get_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffer_size, "g_io_channel_set_buffer_size", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffer_condition, "g_io_channel_get_buffer_condition", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_flags, "g_io_channel_get_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_flags, "g_io_channel_set_flags", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_line_term, "g_io_channel_get_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_line_term, "g_io_channel_set_line_term", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_buffered, "g_io_channel_get_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_buffered, "g_io_channel_set_buffered", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_encoding, "g_io_channel_get_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_encoding, "g_io_channel_set_encoding", LIBRARY.GLIB);
	Linker.link(g_io_channel_get_close_on_unref, "g_io_channel_get_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_set_close_on_unref, "g_io_channel_set_close_on_unref", LIBRARY.GLIB);
	Linker.link(g_io_channel_read, "g_io_channel_read", LIBRARY.GLIB);
	Linker.link(g_io_channel_write, "g_io_channel_write", LIBRARY.GLIB);
	Linker.link(g_io_channel_seek, "g_io_channel_seek", LIBRARY.GLIB);
	Linker.link(g_io_channel_close, "g_io_channel_close", LIBRARY.GLIB);

	// glib.ErrorG

	Linker.link(g_error_new, "g_error_new", LIBRARY.GLIB);
	Linker.link(g_error_new_literal, "g_error_new_literal", LIBRARY.GLIB);
	Linker.link(g_error_free, "g_error_free", LIBRARY.GLIB);
	Linker.link(g_error_copy, "g_error_copy", LIBRARY.GLIB);
	Linker.link(g_error_matches, "g_error_matches", LIBRARY.GLIB);
	Linker.link(g_set_error, "g_set_error", LIBRARY.GLIB);
	Linker.link(g_set_error_literal, "g_set_error_literal", LIBRARY.GLIB);
	Linker.link(g_propagate_error, "g_propagate_error", LIBRARY.GLIB);
	Linker.link(g_clear_error, "g_clear_error", LIBRARY.GLIB);
	Linker.link(g_prefix_error, "g_prefix_error", LIBRARY.GLIB);
	Linker.link(g_propagate_prefixed_error, "g_propagate_prefixed_error", LIBRARY.GLIB);

	// glib.


	// glib.


	// glib.Messages

	Linker.link(g_print, "g_print", LIBRARY.GLIB);
	Linker.link(g_set_print_handler, "g_set_print_handler", LIBRARY.GLIB);
	Linker.link(g_printerr, "g_printerr", LIBRARY.GLIB);
	Linker.link(g_set_printerr_handler, "g_set_printerr_handler", LIBRARY.GLIB);
	Linker.link(g_on_error_query, "g_on_error_query", LIBRARY.GLIB);
	Linker.link(g_on_error_stack_trace, "g_on_error_stack_trace", LIBRARY.GLIB);

	// glib.MessageLog

	Linker.link(g_log, "g_log", LIBRARY.GLIB);
	Linker.link(g_logv, "g_logv", LIBRARY.GLIB);
	Linker.link(g_log_set_handler, "g_log_set_handler", LIBRARY.GLIB);
	Linker.link(g_log_remove_handler, "g_log_remove_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_always_fatal, "g_log_set_always_fatal", LIBRARY.GLIB);
	Linker.link(g_log_set_fatal_mask, "g_log_set_fatal_mask", LIBRARY.GLIB);
	Linker.link(g_log_default_handler, "g_log_default_handler", LIBRARY.GLIB);
	Linker.link(g_log_set_default_handler, "g_log_set_default_handler", LIBRARY.GLIB);

	// glib.Str

	Linker.link(g_strdup, "g_strdup", LIBRARY.GLIB);
	Linker.link(g_strndup, "g_strndup", LIBRARY.GLIB);
	Linker.link(g_strdupv, "g_strdupv", LIBRARY.GLIB);
	Linker.link(g_strnfill, "g_strnfill", LIBRARY.GLIB);
	Linker.link(g_stpcpy, "g_stpcpy", LIBRARY.GLIB);
	Linker.link(g_strstr_len, "g_strstr_len", LIBRARY.GLIB);
	Linker.link(g_strrstr, "g_strrstr", LIBRARY.GLIB);
	Linker.link(g_strrstr_len, "g_strrstr_len", LIBRARY.GLIB);
	Linker.link(g_str_has_prefix, "g_str_has_prefix", LIBRARY.GLIB);
	Linker.link(g_str_has_suffix, "g_str_has_suffix", LIBRARY.GLIB);
	Linker.link(g_strcmp0, "g_strcmp0", LIBRARY.GLIB);
	Linker.link(g_strlcpy, "g_strlcpy", LIBRARY.GLIB);
	Linker.link(g_strlcat, "g_strlcat", LIBRARY.GLIB);
	Linker.link(g_strdup_printf, "g_strdup_printf", LIBRARY.GLIB);
	Linker.link(g_strdup_vprintf, "g_strdup_vprintf", LIBRARY.GLIB);
	Linker.link(g_printf, "g_printf", LIBRARY.GLIB);
	Linker.link(g_vprintf, "g_vprintf", LIBRARY.GLIB);
	Linker.link(g_fprintf, "g_fprintf", LIBRARY.GLIB);
	Linker.link(g_vfprintf, "g_vfprintf", LIBRARY.GLIB);
	Linker.link(g_sprintf, "g_sprintf", LIBRARY.GLIB);
	Linker.link(g_vsprintf, "g_vsprintf", LIBRARY.GLIB);
	Linker.link(g_snprintf, "g_snprintf", LIBRARY.GLIB);
	Linker.link(g_vsnprintf, "g_vsnprintf", LIBRARY.GLIB);
	Linker.link(g_vasprintf, "g_vasprintf", LIBRARY.GLIB);
	Linker.link(g_printf_string_upper_bound, "g_printf_string_upper_bound", LIBRARY.GLIB);
	Linker.link(g_ascii_isalnum, "g_ascii_isalnum", LIBRARY.GLIB);
	Linker.link(g_ascii_isalpha, "g_ascii_isalpha", LIBRARY.GLIB);
	Linker.link(g_ascii_iscntrl, "g_ascii_iscntrl", LIBRARY.GLIB);
	Linker.link(g_ascii_isdigit, "g_ascii_isdigit", LIBRARY.GLIB);
	Linker.link(g_ascii_isgraph, "g_ascii_isgraph", LIBRARY.GLIB);
	Linker.link(g_ascii_islower, "g_ascii_islower", LIBRARY.GLIB);
	Linker.link(g_ascii_isprint, "g_ascii_isprint", LIBRARY.GLIB);
	Linker.link(g_ascii_ispunct, "g_ascii_ispunct", LIBRARY.GLIB);
	Linker.link(g_ascii_isspace, "g_ascii_isspace", LIBRARY.GLIB);
	Linker.link(g_ascii_isupper, "g_ascii_isupper", LIBRARY.GLIB);
	Linker.link(g_ascii_isxdigit, "g_ascii_isxdigit", LIBRARY.GLIB);
	Linker.link(g_ascii_digit_value, "g_ascii_digit_value", LIBRARY.GLIB);
	Linker.link(g_ascii_xdigit_value, "g_ascii_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_ascii_strcasecmp, "g_ascii_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strncasecmp, "g_ascii_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_ascii_strup, "g_ascii_strup", LIBRARY.GLIB);
	Linker.link(g_ascii_strdown, "g_ascii_strdown", LIBRARY.GLIB);
	Linker.link(g_ascii_tolower, "g_ascii_tolower", LIBRARY.GLIB);
	Linker.link(g_ascii_toupper, "g_ascii_toupper", LIBRARY.GLIB);
	Linker.link(g_string_ascii_up, "g_string_ascii_up", LIBRARY.GLIB);
	Linker.link(g_string_ascii_down, "g_string_ascii_down", LIBRARY.GLIB);
	Linker.link(g_strup, "g_strup", LIBRARY.GLIB);
	Linker.link(g_strdown, "g_strdown", LIBRARY.GLIB);
	Linker.link(g_strcasecmp, "g_strcasecmp", LIBRARY.GLIB);
	Linker.link(g_strncasecmp, "g_strncasecmp", LIBRARY.GLIB);
	Linker.link(g_strreverse, "g_strreverse", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoll, "g_ascii_strtoll", LIBRARY.GLIB);
	Linker.link(g_ascii_strtoull, "g_ascii_strtoull", LIBRARY.GLIB);
	Linker.link(g_ascii_strtod, "g_ascii_strtod", LIBRARY.GLIB);
	Linker.link(g_ascii_dtostr, "g_ascii_dtostr", LIBRARY.GLIB);
	Linker.link(g_ascii_formatd, "g_ascii_formatd", LIBRARY.GLIB);
	Linker.link(g_strtod, "g_strtod", LIBRARY.GLIB);
	Linker.link(g_strchug, "g_strchug", LIBRARY.GLIB);
	Linker.link(g_strchomp, "g_strchomp", LIBRARY.GLIB);
	Linker.link(g_strdelimit, "g_strdelimit", LIBRARY.GLIB);
	Linker.link(g_strescape, "g_strescape", LIBRARY.GLIB);
	Linker.link(g_strcompress, "g_strcompress", LIBRARY.GLIB);
	Linker.link(g_strcanon, "g_strcanon", LIBRARY.GLIB);
	Linker.link(g_strsplit, "g_strsplit", LIBRARY.GLIB);
	Linker.link(g_strsplit_set, "g_strsplit_set", LIBRARY.GLIB);
	Linker.link(g_strfreev, "g_strfreev", LIBRARY.GLIB);
	Linker.link(g_strconcat, "g_strconcat", LIBRARY.GLIB);
	Linker.link(g_strjoin, "g_strjoin", LIBRARY.GLIB);
	Linker.link(g_strjoinv, "g_strjoinv", LIBRARY.GLIB);
	Linker.link(g_strv_length, "g_strv_length", LIBRARY.GLIB);
	Linker.link(g_strerror, "g_strerror", LIBRARY.GLIB);
	Linker.link(g_strsignal, "g_strsignal", LIBRARY.GLIB);

	// glib.CharacterSet

	Linker.link(g_convert, "g_convert", LIBRARY.GLIB);
	Linker.link(g_convert_with_fallback, "g_convert_with_fallback", LIBRARY.GLIB);
	Linker.link(g_locale_to_utf8, "g_locale_to_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_to_utf8, "g_filename_to_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_from_utf8, "g_filename_from_utf8", LIBRARY.GLIB);
	Linker.link(g_filename_from_uri, "g_filename_from_uri", LIBRARY.GLIB);
	Linker.link(g_filename_to_uri, "g_filename_to_uri", LIBRARY.GLIB);
	Linker.link(g_get_filename_charsets, "g_get_filename_charsets", LIBRARY.GLIB);
	Linker.link(g_filename_display_name, "g_filename_display_name", LIBRARY.GLIB);
	Linker.link(g_filename_display_basename, "g_filename_display_basename", LIBRARY.GLIB);
	Linker.link(g_uri_list_extract_uris, "g_uri_list_extract_uris", LIBRARY.GLIB);
	Linker.link(g_locale_from_utf8, "g_locale_from_utf8", LIBRARY.GLIB);
	Linker.link(g_get_charset, "g_get_charset", LIBRARY.GLIB);

	// glib.Unicode

	Linker.link(g_unichar_validate, "g_unichar_validate", LIBRARY.GLIB);
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
	Linker.link(g_unichar_isxdigit, "g_unichar_isxdigit", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide, "g_unichar_iswide", LIBRARY.GLIB);
	Linker.link(g_unichar_iswide_cjk, "g_unichar_iswide_cjk", LIBRARY.GLIB);
	Linker.link(g_unichar_iszerowidth, "g_unichar_iszerowidth", LIBRARY.GLIB);
	Linker.link(g_unichar_toupper, "g_unichar_toupper", LIBRARY.GLIB);
	Linker.link(g_unichar_tolower, "g_unichar_tolower", LIBRARY.GLIB);
	Linker.link(g_unichar_totitle, "g_unichar_totitle", LIBRARY.GLIB);
	Linker.link(g_unichar_digit_value, "g_unichar_digit_value", LIBRARY.GLIB);
	Linker.link(g_unichar_xdigit_value, "g_unichar_xdigit_value", LIBRARY.GLIB);
	Linker.link(g_unichar_type, "g_unichar_type", LIBRARY.GLIB);
	Linker.link(g_unichar_break_type, "g_unichar_break_type", LIBRARY.GLIB);
	Linker.link(g_unichar_combining_class, "g_unichar_combining_class", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_ordering, "g_unicode_canonical_ordering", LIBRARY.GLIB);
	Linker.link(g_unicode_canonical_decomposition, "g_unicode_canonical_decomposition", LIBRARY.GLIB);
	Linker.link(g_unichar_get_mirror_char, "g_unichar_get_mirror_char", LIBRARY.GLIB);
	Linker.link(g_unichar_get_script, "g_unichar_get_script", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char, "g_utf8_get_char", LIBRARY.GLIB);
	Linker.link(g_utf8_get_char_validated, "g_utf8_get_char_validated", LIBRARY.GLIB);
	Linker.link(g_utf8_offset_to_pointer, "g_utf8_offset_to_pointer", LIBRARY.GLIB);
	Linker.link(g_utf8_pointer_to_offset, "g_utf8_pointer_to_offset", LIBRARY.GLIB);
	Linker.link(g_utf8_prev_char, "g_utf8_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_find_next_char, "g_utf8_find_next_char", LIBRARY.GLIB);
	Linker.link(g_utf8_find_prev_char, "g_utf8_find_prev_char", LIBRARY.GLIB);
	Linker.link(g_utf8_strlen, "g_utf8_strlen", LIBRARY.GLIB);
	Linker.link(g_utf8_strncpy, "g_utf8_strncpy", LIBRARY.GLIB);
	Linker.link(g_utf8_strchr, "g_utf8_strchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strrchr, "g_utf8_strrchr", LIBRARY.GLIB);
	Linker.link(g_utf8_strreverse, "g_utf8_strreverse", LIBRARY.GLIB);
	Linker.link(g_utf8_validate, "g_utf8_validate", LIBRARY.GLIB);
	Linker.link(g_utf8_strup, "g_utf8_strup", LIBRARY.GLIB);
	Linker.link(g_utf8_strdown, "g_utf8_strdown", LIBRARY.GLIB);
	Linker.link(g_utf8_casefold, "g_utf8_casefold", LIBRARY.GLIB);
	Linker.link(g_utf8_normalize, "g_utf8_normalize", LIBRARY.GLIB);
	Linker.link(g_utf8_collate, "g_utf8_collate", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key, "g_utf8_collate_key", LIBRARY.GLIB);
	Linker.link(g_utf8_collate_key_for_filename, "g_utf8_collate_key_for_filename", LIBRARY.GLIB);
	Linker.link(g_utf8_to_utf16, "g_utf8_to_utf16", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4, "g_utf8_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf8_to_ucs4_fast, "g_utf8_to_ucs4_fast", LIBRARY.GLIB);
	Linker.link(g_utf16_to_ucs4, "g_utf16_to_ucs4", LIBRARY.GLIB);
	Linker.link(g_utf16_to_utf8, "g_utf16_to_utf8", LIBRARY.GLIB);
	Linker.link(g_ucs4_to_utf16, "g_ucs4_to_utf16", LIBRARY.GLIB);
	Linker.link(g_ucs4_to_utf8, "g_ucs4_to_utf8", LIBRARY.GLIB);
	Linker.link(g_unichar_to_utf8, "g_unichar_to_utf8", LIBRARY.GLIB);

	// glib.Base64

	Linker.link(g_base64_encode_step, "g_base64_encode_step", LIBRARY.GLIB);
	Linker.link(g_base64_encode_close, "g_base64_encode_close", LIBRARY.GLIB);
	Linker.link(g_base64_encode, "g_base64_encode", LIBRARY.GLIB);
	Linker.link(g_base64_decode_step, "g_base64_decode_step", LIBRARY.GLIB);
	Linker.link(g_base64_decode, "g_base64_decode", LIBRARY.GLIB);
	Linker.link(g_base64_decode_inplace, "g_base64_decode_inplace", LIBRARY.GLIB);

	// glib.Checksum

	Linker.link(g_checksum_type_get_length, "g_checksum_type_get_length", LIBRARY.GLIB);
	Linker.link(g_checksum_new, "g_checksum_new", LIBRARY.GLIB);
	Linker.link(g_checksum_copy, "g_checksum_copy", LIBRARY.GLIB);
	Linker.link(g_checksum_free, "g_checksum_free", LIBRARY.GLIB);
	Linker.link(g_checksum_reset, "g_checksum_reset", LIBRARY.GLIB);
	Linker.link(g_checksum_update, "g_checksum_update", LIBRARY.GLIB);
	Linker.link(g_checksum_get_string, "g_checksum_get_string", LIBRARY.GLIB);
	Linker.link(g_checksum_get_digest, "g_checksum_get_digest", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_data, "g_compute_checksum_for_data", LIBRARY.GLIB);
	Linker.link(g_compute_checksum_for_string, "g_compute_checksum_for_string", LIBRARY.GLIB);

	// glib.Internationalization

	Linker.link(g_dgettext, "g_dgettext", LIBRARY.GLIB);
	Linker.link(g_dngettext, "g_dngettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext, "g_dpgettext", LIBRARY.GLIB);
	Linker.link(g_dpgettext2, "g_dpgettext2", LIBRARY.GLIB);
	Linker.link(g_strip_context, "g_strip_context", LIBRARY.GLIB);
	Linker.link(g_get_language_names, "g_get_language_names", LIBRARY.GLIB);

	// glib.TimeVal

	Linker.link(g_get_current_time, "g_get_current_time", LIBRARY.GLIB);
	Linker.link(g_usleep, "g_usleep", LIBRARY.GLIB);
	Linker.link(g_time_val_add, "g_time_val_add", LIBRARY.GLIB);
	Linker.link(g_time_val_from_iso8601, "g_time_val_from_iso8601", LIBRARY.GLIB);
	Linker.link(g_time_val_to_iso8601, "g_time_val_to_iso8601", LIBRARY.GLIB);

	// glib.Date

	Linker.link(g_date_new, "g_date_new", LIBRARY.GLIB);
	Linker.link(g_date_new_dmy, "g_date_new_dmy", LIBRARY.GLIB);
	Linker.link(g_date_new_julian, "g_date_new_julian", LIBRARY.GLIB);
	Linker.link(g_date_clear, "g_date_clear", LIBRARY.GLIB);
	Linker.link(g_date_free, "g_date_free", LIBRARY.GLIB);
	Linker.link(g_date_set_day, "g_date_set_day", LIBRARY.GLIB);
	Linker.link(g_date_set_month, "g_date_set_month", LIBRARY.GLIB);
	Linker.link(g_date_set_year, "g_date_set_year", LIBRARY.GLIB);
	Linker.link(g_date_set_dmy, "g_date_set_dmy", LIBRARY.GLIB);
	Linker.link(g_date_set_julian, "g_date_set_julian", LIBRARY.GLIB);
	Linker.link(g_date_set_time, "g_date_set_time", LIBRARY.GLIB);
	Linker.link(g_date_set_time_t, "g_date_set_time_t", LIBRARY.GLIB);
	Linker.link(g_date_set_time_val, "g_date_set_time_val", LIBRARY.GLIB);
	Linker.link(g_date_set_parse, "g_date_set_parse", LIBRARY.GLIB);
	Linker.link(g_date_add_days, "g_date_add_days", LIBRARY.GLIB);
	Linker.link(g_date_subtract_days, "g_date_subtract_days", LIBRARY.GLIB);
	Linker.link(g_date_add_months, "g_date_add_months", LIBRARY.GLIB);
	Linker.link(g_date_subtract_months, "g_date_subtract_months", LIBRARY.GLIB);
	Linker.link(g_date_add_years, "g_date_add_years", LIBRARY.GLIB);
	Linker.link(g_date_subtract_years, "g_date_subtract_years", LIBRARY.GLIB);
	Linker.link(g_date_days_between, "g_date_days_between", LIBRARY.GLIB);
	Linker.link(g_date_compare, "g_date_compare", LIBRARY.GLIB);
	Linker.link(g_date_clamp, "g_date_clamp", LIBRARY.GLIB);
	Linker.link(g_date_order, "g_date_order", LIBRARY.GLIB);
	Linker.link(g_date_get_day, "g_date_get_day", LIBRARY.GLIB);
	Linker.link(g_date_get_month, "g_date_get_month", LIBRARY.GLIB);
	Linker.link(g_date_get_year, "g_date_get_year", LIBRARY.GLIB);
	Linker.link(g_date_get_julian, "g_date_get_julian", LIBRARY.GLIB);
	Linker.link(g_date_get_weekday, "g_date_get_weekday", LIBRARY.GLIB);
	Linker.link(g_date_get_day_of_year, "g_date_get_day_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_days_in_month, "g_date_get_days_in_month", LIBRARY.GLIB);
	Linker.link(g_date_is_first_of_month, "g_date_is_first_of_month", LIBRARY.GLIB);
	Linker.link(g_date_is_last_of_month, "g_date_is_last_of_month", LIBRARY.GLIB);
	Linker.link(g_date_is_leap_year, "g_date_is_leap_year", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_week_of_year, "g_date_get_monday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_monday_weeks_in_year, "g_date_get_monday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_week_of_year, "g_date_get_sunday_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_get_sunday_weeks_in_year, "g_date_get_sunday_weeks_in_year", LIBRARY.GLIB);
	Linker.link(g_date_get_iso8601_week_of_year, "g_date_get_iso8601_week_of_year", LIBRARY.GLIB);
	Linker.link(g_date_strftime, "g_date_strftime", LIBRARY.GLIB);
	Linker.link(g_date_to_struct_tm, "g_date_to_struct_tm", LIBRARY.GLIB);
	Linker.link(g_date_valid, "g_date_valid", LIBRARY.GLIB);
	Linker.link(g_date_valid_day, "g_date_valid_day", LIBRARY.GLIB);
	Linker.link(g_date_valid_month, "g_date_valid_month", LIBRARY.GLIB);
	Linker.link(g_date_valid_year, "g_date_valid_year", LIBRARY.GLIB);
	Linker.link(g_date_valid_dmy, "g_date_valid_dmy", LIBRARY.GLIB);
	Linker.link(g_date_valid_julian, "g_date_valid_julian", LIBRARY.GLIB);
	Linker.link(g_date_valid_weekday, "g_date_valid_weekday", LIBRARY.GLIB);

	// glib.RandG

	Linker.link(g_rand_new_with_seed, "g_rand_new_with_seed", LIBRARY.GLIB);
	Linker.link(g_rand_new_with_seed_array, "g_rand_new_with_seed_array", LIBRARY.GLIB);
	Linker.link(g_rand_new, "g_rand_new", LIBRARY.GLIB);
	Linker.link(g_rand_copy, "g_rand_copy", LIBRARY.GLIB);
	Linker.link(g_rand_free, "g_rand_free", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed, "g_rand_set_seed", LIBRARY.GLIB);
	Linker.link(g_rand_set_seed_array, "g_rand_set_seed_array", LIBRARY.GLIB);
	Linker.link(g_rand_int, "g_rand_int", LIBRARY.GLIB);
	Linker.link(g_rand_int_range, "g_rand_int_range", LIBRARY.GLIB);
	Linker.link(g_rand_double, "g_rand_double", LIBRARY.GLIB);
	Linker.link(g_rand_double_range, "g_rand_double_range", LIBRARY.GLIB);
	Linker.link(g_random_set_seed, "g_random_set_seed", LIBRARY.GLIB);
	Linker.link(g_random_int, "g_random_int", LIBRARY.GLIB);
	Linker.link(g_random_int_range, "g_random_int_range", LIBRARY.GLIB);
	Linker.link(g_random_double, "g_random_double", LIBRARY.GLIB);
	Linker.link(g_random_double_range, "g_random_double_range", LIBRARY.GLIB);

	// glib.Util

	Linker.link(g_get_application_name, "g_get_application_name", LIBRARY.GLIB);
	Linker.link(g_set_application_name, "g_set_application_name", LIBRARY.GLIB);
	Linker.link(g_get_prgname, "g_get_prgname", LIBRARY.GLIB);
	Linker.link(g_set_prgname, "g_set_prgname", LIBRARY.GLIB);
	Linker.link(g_getenv, "g_getenv", LIBRARY.GLIB);
	Linker.link(g_setenv, "g_setenv", LIBRARY.GLIB);
	Linker.link(g_unsetenv, "g_unsetenv", LIBRARY.GLIB);
	Linker.link(g_listenv, "g_listenv", LIBRARY.GLIB);
	Linker.link(g_get_user_name, "g_get_user_name", LIBRARY.GLIB);
	Linker.link(g_get_real_name, "g_get_real_name", LIBRARY.GLIB);
	Linker.link(g_get_user_cache_dir, "g_get_user_cache_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_data_dir, "g_get_user_data_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_config_dir, "g_get_user_config_dir", LIBRARY.GLIB);
	Linker.link(g_get_user_special_dir, "g_get_user_special_dir", LIBRARY.GLIB);
	Linker.link(g_get_system_data_dirs, "g_get_system_data_dirs", LIBRARY.GLIB);
	Linker.link(g_get_system_config_dirs, "g_get_system_config_dirs", LIBRARY.GLIB);
	Linker.link(g_get_host_name, "g_get_host_name", LIBRARY.GLIB);
	Linker.link(g_get_home_dir, "g_get_home_dir", LIBRARY.GLIB);
	Linker.link(g_get_tmp_dir, "g_get_tmp_dir", LIBRARY.GLIB);
	Linker.link(g_get_current_dir, "g_get_current_dir", LIBRARY.GLIB);
	Linker.link(g_basename, "g_basename", LIBRARY.GLIB);
	Linker.link(g_path_is_absolute, "g_path_is_absolute", LIBRARY.GLIB);
	Linker.link(g_path_skip_root, "g_path_skip_root", LIBRARY.GLIB);
	Linker.link(g_path_get_basename, "g_path_get_basename", LIBRARY.GLIB);
	Linker.link(g_path_get_dirname, "g_path_get_dirname", LIBRARY.GLIB);
	Linker.link(g_build_filename, "g_build_filename", LIBRARY.GLIB);
	Linker.link(g_build_filenamev, "g_build_filenamev", LIBRARY.GLIB);
	Linker.link(g_build_path, "g_build_path", LIBRARY.GLIB);
	Linker.link(g_build_pathv, "g_build_pathv", LIBRARY.GLIB);
	Linker.link(g_format_size_for_display, "g_format_size_for_display", LIBRARY.GLIB);
	Linker.link(g_find_program_in_path, "g_find_program_in_path", LIBRARY.GLIB);
	Linker.link(g_bit_nth_lsf, "g_bit_nth_lsf", LIBRARY.GLIB);
	Linker.link(g_bit_nth_msf, "g_bit_nth_msf", LIBRARY.GLIB);
	Linker.link(g_bit_storage, "g_bit_storage", LIBRARY.GLIB);
	Linker.link(g_spaced_primes_closest, "g_spaced_primes_closest", LIBRARY.GLIB);
	Linker.link(g_atexit, "g_atexit", LIBRARY.GLIB);
	Linker.link(g_parse_debug_string, "g_parse_debug_string", LIBRARY.GLIB);
	Linker.link(g_qsort_with_data, "g_qsort_with_data", LIBRARY.GLIB);
	Linker.link(g_nullify_pointer, "g_nullify_pointer", LIBRARY.GLIB);

	// glib.ScannerG

	Linker.link(g_scanner_new, "g_scanner_new", LIBRARY.GLIB);
	Linker.link(g_scanner_destroy, "g_scanner_destroy", LIBRARY.GLIB);
	Linker.link(g_scanner_input_file, "g_scanner_input_file", LIBRARY.GLIB);
	Linker.link(g_scanner_sync_file_offset, "g_scanner_sync_file_offset", LIBRARY.GLIB);
	Linker.link(g_scanner_input_text, "g_scanner_input_text", LIBRARY.GLIB);
	Linker.link(g_scanner_peek_next_token, "g_scanner_peek_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_get_next_token, "g_scanner_get_next_token", LIBRARY.GLIB);
	Linker.link(g_scanner_eof, "g_scanner_eof", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_line, "g_scanner_cur_line", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_position, "g_scanner_cur_position", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_token, "g_scanner_cur_token", LIBRARY.GLIB);
	Linker.link(g_scanner_cur_value, "g_scanner_cur_value", LIBRARY.GLIB);
	Linker.link(g_scanner_set_scope, "g_scanner_set_scope", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_add_symbol, "g_scanner_scope_add_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_foreach_symbol, "g_scanner_scope_foreach_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_lookup_symbol, "g_scanner_scope_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_scope_remove_symbol, "g_scanner_scope_remove_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_lookup_symbol, "g_scanner_lookup_symbol", LIBRARY.GLIB);
	Linker.link(g_scanner_warn, "g_scanner_warn", LIBRARY.GLIB);
	Linker.link(g_scanner_error, "g_scanner_error", LIBRARY.GLIB);
	Linker.link(g_scanner_unexp_token, "g_scanner_unexp_token", LIBRARY.GLIB);

	// glib.StringCompletion

	Linker.link(g_completion_new, "g_completion_new", LIBRARY.GLIB);
	Linker.link(g_completion_add_items, "g_completion_add_items", LIBRARY.GLIB);
	Linker.link(g_completion_remove_items, "g_completion_remove_items", LIBRARY.GLIB);
	Linker.link(g_completion_clear_items, "g_completion_clear_items", LIBRARY.GLIB);
	Linker.link(g_completion_complete, "g_completion_complete", LIBRARY.GLIB);
	Linker.link(g_completion_complete_utf8, "g_completion_complete_utf8", LIBRARY.GLIB);
	Linker.link(g_completion_set_compare, "g_completion_set_compare", LIBRARY.GLIB);
	Linker.link(g_completion_free, "g_completion_free", LIBRARY.GLIB);

	// glib.Timer

	Linker.link(g_timer_new, "g_timer_new", LIBRARY.GLIB);
	Linker.link(g_timer_start, "g_timer_start", LIBRARY.GLIB);
	Linker.link(g_timer_stop, "g_timer_stop", LIBRARY.GLIB);
	Linker.link(g_timer_continue, "g_timer_continue", LIBRARY.GLIB);
	Linker.link(g_timer_elapsed, "g_timer_elapsed", LIBRARY.GLIB);
	Linker.link(g_timer_reset, "g_timer_reset", LIBRARY.GLIB);
	Linker.link(g_timer_destroy, "g_timer_destroy", LIBRARY.GLIB);

	// glib.Spawn

	Linker.link(g_spawn_async_with_pipes, "g_spawn_async_with_pipes", LIBRARY.GLIB);
	Linker.link(g_spawn_async, "g_spawn_async", LIBRARY.GLIB);
	Linker.link(g_spawn_sync, "g_spawn_sync", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_async, "g_spawn_command_line_async", LIBRARY.GLIB);
	Linker.link(g_spawn_command_line_sync, "g_spawn_command_line_sync", LIBRARY.GLIB);
	Linker.link(g_spawn_close_pid, "g_spawn_close_pid", LIBRARY.GLIB);

	// glib.FileUtils

	Linker.link(g_file_error_from_errno, "g_file_error_from_errno", LIBRARY.GLIB);
	Linker.link(g_file_get_contents, "g_file_get_contents", LIBRARY.GLIB);
	Linker.link(g_file_set_contents, "g_file_set_contents", LIBRARY.GLIB);
	Linker.link(g_file_test, "g_file_test", LIBRARY.GLIB);
	Linker.link(g_mkstemp, "g_mkstemp", LIBRARY.GLIB);
	Linker.link(g_file_open_tmp, "g_file_open_tmp", LIBRARY.GLIB);
	Linker.link(g_file_read_link, "g_file_read_link", LIBRARY.GLIB);
	Linker.link(g_mkdir_with_parents, "g_mkdir_with_parents", LIBRARY.GLIB);
	Linker.link(g_open, "g_open", LIBRARY.GLIB);
	Linker.link(g_rename, "g_rename", LIBRARY.GLIB);
	Linker.link(g_mkdir, "g_mkdir", LIBRARY.GLIB);
	Linker.link(g_stat, "g_stat", LIBRARY.GLIB);
	Linker.link(g_lstat, "g_lstat", LIBRARY.GLIB);
	Linker.link(g_unlink, "g_unlink", LIBRARY.GLIB);
	Linker.link(g_remove, "g_remove", LIBRARY.GLIB);
	Linker.link(g_rmdir, "g_rmdir", LIBRARY.GLIB);
	Linker.link(g_fopen, "g_fopen", LIBRARY.GLIB);
	Linker.link(g_freopen, "g_freopen", LIBRARY.GLIB);
	Linker.link(g_chmod, "g_chmod", LIBRARY.GLIB);
	Linker.link(g_access, "g_access", LIBRARY.GLIB);
	Linker.link(g_creat, "g_creat", LIBRARY.GLIB);
	Linker.link(g_chdir, "g_chdir", LIBRARY.GLIB);
	Linker.link(g_utime, "g_utime", LIBRARY.GLIB);

	// glib.Directory

	Linker.link(g_dir_open, "g_dir_open", LIBRARY.GLIB);
	Linker.link(g_dir_read_name, "g_dir_read_name", LIBRARY.GLIB);
	Linker.link(g_dir_rewind, "g_dir_rewind", LIBRARY.GLIB);
	Linker.link(g_dir_close, "g_dir_close", LIBRARY.GLIB);

	// glib.MappedFile

	Linker.link(g_mapped_file_new, "g_mapped_file_new", LIBRARY.GLIB);
	Linker.link(g_mapped_file_free, "g_mapped_file_free", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_length, "g_mapped_file_get_length", LIBRARY.GLIB);
	Linker.link(g_mapped_file_get_contents, "g_mapped_file_get_contents", LIBRARY.GLIB);

	// glib.URI

	Linker.link(g_uri_parse_scheme, "g_uri_parse_scheme", LIBRARY.GLIB);
	Linker.link(g_uri_escape_string, "g_uri_escape_string", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_string, "g_uri_unescape_string", LIBRARY.GLIB);
	Linker.link(g_uri_unescape_segment, "g_uri_unescape_segment", LIBRARY.GLIB);

	// glib.ShellUtils

	Linker.link(g_shell_parse_argv, "g_shell_parse_argv", LIBRARY.GLIB);
	Linker.link(g_shell_quote, "g_shell_quote", LIBRARY.GLIB);
	Linker.link(g_shell_unquote, "g_shell_unquote", LIBRARY.GLIB);

	// glib.OptionContext

	Linker.link(g_option_context_new, "g_option_context_new", LIBRARY.GLIB);
	Linker.link(g_option_context_set_summary, "g_option_context_set_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_get_summary, "g_option_context_get_summary", LIBRARY.GLIB);
	Linker.link(g_option_context_set_description, "g_option_context_set_description", LIBRARY.GLIB);
	Linker.link(g_option_context_get_description, "g_option_context_get_description", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translate_func, "g_option_context_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_context_set_translation_domain, "g_option_context_set_translation_domain", LIBRARY.GLIB);
	Linker.link(g_option_context_free, "g_option_context_free", LIBRARY.GLIB);
	Linker.link(g_option_context_parse, "g_option_context_parse", LIBRARY.GLIB);
	Linker.link(g_option_context_set_help_enabled, "g_option_context_set_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help_enabled, "g_option_context_get_help_enabled", LIBRARY.GLIB);
	Linker.link(g_option_context_set_ignore_unknown_options, "g_option_context_set_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_get_ignore_unknown_options, "g_option_context_get_ignore_unknown_options", LIBRARY.GLIB);
	Linker.link(g_option_context_get_help, "g_option_context_get_help", LIBRARY.GLIB);
	Linker.link(g_option_context_add_main_entries, "g_option_context_add_main_entries", LIBRARY.GLIB);
	Linker.link(g_option_context_add_group, "g_option_context_add_group", LIBRARY.GLIB);
	Linker.link(g_option_context_set_main_group, "g_option_context_set_main_group", LIBRARY.GLIB);
	Linker.link(g_option_context_get_main_group, "g_option_context_get_main_group", LIBRARY.GLIB);

	// glib.OptionGroup

	Linker.link(g_option_group_new, "g_option_group_new", LIBRARY.GLIB);
	Linker.link(g_option_group_free, "g_option_group_free", LIBRARY.GLIB);
	Linker.link(g_option_group_add_entries, "g_option_group_add_entries", LIBRARY.GLIB);
	Linker.link(g_option_group_set_parse_hooks, "g_option_group_set_parse_hooks", LIBRARY.GLIB);
	Linker.link(g_option_group_set_error_hook, "g_option_group_set_error_hook", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translate_func, "g_option_group_set_translate_func", LIBRARY.GLIB);
	Linker.link(g_option_group_set_translation_domain, "g_option_group_set_translation_domain", LIBRARY.GLIB);

	// glib.Pattern

	Linker.link(g_pattern_spec_new, "g_pattern_spec_new", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_free, "g_pattern_spec_free", LIBRARY.GLIB);
	Linker.link(g_pattern_spec_equal, "g_pattern_spec_equal", LIBRARY.GLIB);
	Linker.link(g_pattern_match, "g_pattern_match", LIBRARY.GLIB);
	Linker.link(g_pattern_match_string, "g_pattern_match_string", LIBRARY.GLIB);
	Linker.link(g_pattern_match_simple, "g_pattern_match_simple", LIBRARY.GLIB);

	// glib.Regex

	Linker.link(g_regex_new, "g_regex_new", LIBRARY.GLIB);
	Linker.link(g_regex_ref, "g_regex_ref", LIBRARY.GLIB);
	Linker.link(g_regex_unref, "g_regex_unref", LIBRARY.GLIB);
	Linker.link(g_regex_get_pattern, "g_regex_get_pattern", LIBRARY.GLIB);
	Linker.link(g_regex_get_max_backref, "g_regex_get_max_backref", LIBRARY.GLIB);
	Linker.link(g_regex_get_capture_count, "g_regex_get_capture_count", LIBRARY.GLIB);
	Linker.link(g_regex_get_string_number, "g_regex_get_string_number", LIBRARY.GLIB);
	Linker.link(g_regex_escape_string, "g_regex_escape_string", LIBRARY.GLIB);
	Linker.link(g_regex_match_simple, "g_regex_match_simple", LIBRARY.GLIB);
	Linker.link(g_regex_match, "g_regex_match", LIBRARY.GLIB);
	Linker.link(g_regex_match_full, "g_regex_match_full", LIBRARY.GLIB);
	Linker.link(g_regex_match_all, "g_regex_match_all", LIBRARY.GLIB);
	Linker.link(g_regex_match_all_full, "g_regex_match_all_full", LIBRARY.GLIB);
	Linker.link(g_regex_split_simple, "g_regex_split_simple", LIBRARY.GLIB);
	Linker.link(g_regex_split, "g_regex_split", LIBRARY.GLIB);
	Linker.link(g_regex_split_full, "g_regex_split_full", LIBRARY.GLIB);
	Linker.link(g_regex_replace, "g_regex_replace", LIBRARY.GLIB);
	Linker.link(g_regex_replace_literal, "g_regex_replace_literal", LIBRARY.GLIB);
	Linker.link(g_regex_replace_eval, "g_regex_replace_eval", LIBRARY.GLIB);
	Linker.link(g_regex_check_replacement, "g_regex_check_replacement", LIBRARY.GLIB);

	// glib.MatchInfo

	Linker.link(g_match_info_get_regex, "g_match_info_get_regex", LIBRARY.GLIB);
	Linker.link(g_match_info_get_string, "g_match_info_get_string", LIBRARY.GLIB);
	Linker.link(g_match_info_free, "g_match_info_free", LIBRARY.GLIB);
	Linker.link(g_match_info_matches, "g_match_info_matches", LIBRARY.GLIB);
	Linker.link(g_match_info_next, "g_match_info_next", LIBRARY.GLIB);
	Linker.link(g_match_info_get_match_count, "g_match_info_get_match_count", LIBRARY.GLIB);
	Linker.link(g_match_info_is_partial_match, "g_match_info_is_partial_match", LIBRARY.GLIB);
	Linker.link(g_match_info_expand_references, "g_match_info_expand_references", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch, "g_match_info_fetch", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_pos, "g_match_info_fetch_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named, "g_match_info_fetch_named", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_named_pos, "g_match_info_fetch_named_pos", LIBRARY.GLIB);
	Linker.link(g_match_info_fetch_all, "g_match_info_fetch_all", LIBRARY.GLIB);

	// glib.SimpleXML

	Linker.link(g_markup_escape_text, "g_markup_escape_text", LIBRARY.GLIB);
	Linker.link(g_markup_printf_escaped, "g_markup_printf_escaped", LIBRARY.GLIB);
	Linker.link(g_markup_vprintf_escaped, "g_markup_vprintf_escaped", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_end_parse, "g_markup_parse_context_end_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_free, "g_markup_parse_context_free", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_position, "g_markup_parse_context_get_position", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element, "g_markup_parse_context_get_element", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_element_stack, "g_markup_parse_context_get_element_stack", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_get_user_data, "g_markup_parse_context_get_user_data", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_new, "g_markup_parse_context_new", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_parse, "g_markup_parse_context_parse", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_push, "g_markup_parse_context_push", LIBRARY.GLIB);
	Linker.link(g_markup_parse_context_pop, "g_markup_parse_context_pop", LIBRARY.GLIB);
	Linker.link(g_markup_collect_attributes, "g_markup_collect_attributes", LIBRARY.GLIB);

	// glib.KeyFile

	Linker.link(g_key_file_new, "g_key_file_new", LIBRARY.GLIB);
	Linker.link(g_key_file_free, "g_key_file_free", LIBRARY.GLIB);
	Linker.link(g_key_file_set_list_separator, "g_key_file_set_list_separator", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_file, "g_key_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data, "g_key_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_data_dirs, "g_key_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_load_from_dirs, "g_key_file_load_from_dirs", LIBRARY.GLIB);
	Linker.link(g_key_file_to_data, "g_key_file_to_data", LIBRARY.GLIB);
	Linker.link(g_key_file_get_start_group, "g_key_file_get_start_group", LIBRARY.GLIB);
	Linker.link(g_key_file_get_groups, "g_key_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_key_file_get_keys, "g_key_file_get_keys", LIBRARY.GLIB);
	Linker.link(g_key_file_has_group, "g_key_file_has_group", LIBRARY.GLIB);
	Linker.link(g_key_file_has_key, "g_key_file_has_key", LIBRARY.GLIB);
	Linker.link(g_key_file_get_value, "g_key_file_get_value", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string, "g_key_file_get_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string, "g_key_file_get_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean, "g_key_file_get_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer, "g_key_file_get_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double, "g_key_file_get_double", LIBRARY.GLIB);
	Linker.link(g_key_file_get_string_list, "g_key_file_get_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_locale_string_list, "g_key_file_get_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_boolean_list, "g_key_file_get_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_integer_list, "g_key_file_get_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_double_list, "g_key_file_get_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_get_comment, "g_key_file_get_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_set_value, "g_key_file_set_value", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string, "g_key_file_set_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string, "g_key_file_set_locale_string", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean, "g_key_file_set_boolean", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer, "g_key_file_set_integer", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double, "g_key_file_set_double", LIBRARY.GLIB);
	Linker.link(g_key_file_set_string_list, "g_key_file_set_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_locale_string_list, "g_key_file_set_locale_string_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_boolean_list, "g_key_file_set_boolean_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_integer_list, "g_key_file_set_integer_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_double_list, "g_key_file_set_double_list", LIBRARY.GLIB);
	Linker.link(g_key_file_set_comment, "g_key_file_set_comment", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_group, "g_key_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_key, "g_key_file_remove_key", LIBRARY.GLIB);
	Linker.link(g_key_file_remove_comment, "g_key_file_remove_comment", LIBRARY.GLIB);

	// glib.BookmarkFile

	Linker.link(g_bookmark_file_new, "g_bookmark_file_new", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_free, "g_bookmark_file_free", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_file, "g_bookmark_file_load_from_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data, "g_bookmark_file_load_from_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_load_from_data_dirs, "g_bookmark_file_load_from_data_dirs", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_data, "g_bookmark_file_to_data", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_to_file, "g_bookmark_file_to_file", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_item, "g_bookmark_file_has_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_group, "g_bookmark_file_has_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_has_application, "g_bookmark_file_has_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_size, "g_bookmark_file_get_size", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_uris, "g_bookmark_file_get_uris", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_title, "g_bookmark_file_get_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_description, "g_bookmark_file_get_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_mime_type, "g_bookmark_file_get_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_is_private, "g_bookmark_file_get_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_icon, "g_bookmark_file_get_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_added, "g_bookmark_file_get_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_modified, "g_bookmark_file_get_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_visited, "g_bookmark_file_get_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_groups, "g_bookmark_file_get_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_applications, "g_bookmark_file_get_applications", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_get_app_info, "g_bookmark_file_get_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_title, "g_bookmark_file_set_title", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_description, "g_bookmark_file_set_description", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_mime_type, "g_bookmark_file_set_mime_type", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_is_private, "g_bookmark_file_set_is_private", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_icon, "g_bookmark_file_set_icon", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_added, "g_bookmark_file_set_added", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_groups, "g_bookmark_file_set_groups", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_modified, "g_bookmark_file_set_modified", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_visited, "g_bookmark_file_set_visited", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_set_app_info, "g_bookmark_file_set_app_info", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_add_group, "g_bookmark_file_add_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_add_application, "g_bookmark_file_add_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_group, "g_bookmark_file_remove_group", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_application, "g_bookmark_file_remove_application", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_remove_item, "g_bookmark_file_remove_item", LIBRARY.GLIB);
	Linker.link(g_bookmark_file_move_item, "g_bookmark_file_move_item", LIBRARY.GLIB);

	// glib.WindowsUtils

	Linker.link(g_win32_error_message, "g_win32_error_message", LIBRARY.GLIB);
	Linker.link(g_win32_getlocale, "g_win32_getlocale", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_directory, "g_win32_get_package_installation_directory", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_directory_of_module, "g_win32_get_package_installation_directory_of_module", LIBRARY.GLIB);
	Linker.link(g_win32_get_package_installation_subdirectory, "g_win32_get_package_installation_subdirectory", LIBRARY.GLIB);
	Linker.link(g_win32_get_windows_version, "g_win32_get_windows_version", LIBRARY.GLIB);
	Linker.link(g_win32_locale_filename_from_utf8, "g_win32_locale_filename_from_utf8", LIBRARY.GLIB);

	// glib.MemorySlice

	Linker.link(g_slice_alloc, "g_slice_alloc", LIBRARY.GLIB);
	Linker.link(g_slice_alloc0, "g_slice_alloc0", LIBRARY.GLIB);
	Linker.link(g_slice_copy, "g_slice_copy", LIBRARY.GLIB);
	Linker.link(g_slice_free1, "g_slice_free1", LIBRARY.GLIB);
	Linker.link(g_slice_free_chain_with_offset, "g_slice_free_chain_with_offset", LIBRARY.GLIB);

	// glib.MemoryChunk

	Linker.link(g_mem_chunk_new, "g_mem_chunk_new", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_alloc, "g_mem_chunk_alloc", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_alloc0, "g_mem_chunk_alloc0", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_free, "g_mem_chunk_free", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_destroy, "g_mem_chunk_destroy", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_reset, "g_mem_chunk_reset", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_clean, "g_mem_chunk_clean", LIBRARY.GLIB);
	Linker.link(g_blow_chunks, "g_blow_chunks", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_info, "g_mem_chunk_info", LIBRARY.GLIB);
	Linker.link(g_mem_chunk_print, "g_mem_chunk_print", LIBRARY.GLIB);

	// glib.ListG

	Linker.link(g_list_append, "g_list_append", LIBRARY.GLIB);
	Linker.link(g_list_prepend, "g_list_prepend", LIBRARY.GLIB);
	Linker.link(g_list_insert, "g_list_insert", LIBRARY.GLIB);
	Linker.link(g_list_insert_before, "g_list_insert_before", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted, "g_list_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_list_remove, "g_list_remove", LIBRARY.GLIB);
	Linker.link(g_list_remove_link, "g_list_remove_link", LIBRARY.GLIB);
	Linker.link(g_list_delete_link, "g_list_delete_link", LIBRARY.GLIB);
	Linker.link(g_list_remove_all, "g_list_remove_all", LIBRARY.GLIB);
	Linker.link(g_list_free, "g_list_free", LIBRARY.GLIB);
	Linker.link(g_list_alloc, "g_list_alloc", LIBRARY.GLIB);
	Linker.link(g_list_free_1, "g_list_free_1", LIBRARY.GLIB);
	Linker.link(g_list_length, "g_list_length", LIBRARY.GLIB);
	Linker.link(g_list_copy, "g_list_copy", LIBRARY.GLIB);
	Linker.link(g_list_reverse, "g_list_reverse", LIBRARY.GLIB);
	Linker.link(g_list_sort, "g_list_sort", LIBRARY.GLIB);
	Linker.link(g_list_insert_sorted_with_data, "g_list_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_list_sort_with_data, "g_list_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_list_concat, "g_list_concat", LIBRARY.GLIB);
	Linker.link(g_list_foreach, "g_list_foreach", LIBRARY.GLIB);
	Linker.link(g_list_first, "g_list_first", LIBRARY.GLIB);
	Linker.link(g_list_last, "g_list_last", LIBRARY.GLIB);
	Linker.link(g_list_nth, "g_list_nth", LIBRARY.GLIB);
	Linker.link(g_list_nth_data, "g_list_nth_data", LIBRARY.GLIB);
	Linker.link(g_list_nth_prev, "g_list_nth_prev", LIBRARY.GLIB);
	Linker.link(g_list_find, "g_list_find", LIBRARY.GLIB);
	Linker.link(g_list_find_custom, "g_list_find_custom", LIBRARY.GLIB);
	Linker.link(g_list_position, "g_list_position", LIBRARY.GLIB);
	Linker.link(g_list_index, "g_list_index", LIBRARY.GLIB);
	Linker.link(g_list_push_allocator, "g_list_push_allocator", LIBRARY.GLIB);
	Linker.link(g_list_pop_allocator, "g_list_pop_allocator", LIBRARY.GLIB);

	// glib.ListSG

	Linker.link(g_slist_alloc, "g_slist_alloc", LIBRARY.GLIB);
	Linker.link(g_slist_append, "g_slist_append", LIBRARY.GLIB);
	Linker.link(g_slist_prepend, "g_slist_prepend", LIBRARY.GLIB);
	Linker.link(g_slist_insert, "g_slist_insert", LIBRARY.GLIB);
	Linker.link(g_slist_insert_before, "g_slist_insert_before", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted, "g_slist_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_slist_remove, "g_slist_remove", LIBRARY.GLIB);
	Linker.link(g_slist_remove_link, "g_slist_remove_link", LIBRARY.GLIB);
	Linker.link(g_slist_delete_link, "g_slist_delete_link", LIBRARY.GLIB);
	Linker.link(g_slist_remove_all, "g_slist_remove_all", LIBRARY.GLIB);
	Linker.link(g_slist_free, "g_slist_free", LIBRARY.GLIB);
	Linker.link(g_slist_free_1, "g_slist_free_1", LIBRARY.GLIB);
	Linker.link(g_slist_length, "g_slist_length", LIBRARY.GLIB);
	Linker.link(g_slist_copy, "g_slist_copy", LIBRARY.GLIB);
	Linker.link(g_slist_reverse, "g_slist_reverse", LIBRARY.GLIB);
	Linker.link(g_slist_insert_sorted_with_data, "g_slist_insert_sorted_with_data", LIBRARY.GLIB);
	Linker.link(g_slist_sort, "g_slist_sort", LIBRARY.GLIB);
	Linker.link(g_slist_sort_with_data, "g_slist_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_slist_concat, "g_slist_concat", LIBRARY.GLIB);
	Linker.link(g_slist_foreach, "g_slist_foreach", LIBRARY.GLIB);
	Linker.link(g_slist_last, "g_slist_last", LIBRARY.GLIB);
	Linker.link(g_slist_nth, "g_slist_nth", LIBRARY.GLIB);
	Linker.link(g_slist_nth_data, "g_slist_nth_data", LIBRARY.GLIB);
	Linker.link(g_slist_find, "g_slist_find", LIBRARY.GLIB);
	Linker.link(g_slist_find_custom, "g_slist_find_custom", LIBRARY.GLIB);
	Linker.link(g_slist_position, "g_slist_position", LIBRARY.GLIB);
	Linker.link(g_slist_index, "g_slist_index", LIBRARY.GLIB);
	Linker.link(g_slist_push_allocator, "g_slist_push_allocator", LIBRARY.GLIB);
	Linker.link(g_slist_pop_allocator, "g_slist_pop_allocator", LIBRARY.GLIB);

	// glib.QueueG

	Linker.link(g_queue_new, "g_queue_new", LIBRARY.GLIB);
	Linker.link(g_queue_free, "g_queue_free", LIBRARY.GLIB);
	Linker.link(g_queue_init, "g_queue_init", LIBRARY.GLIB);
	Linker.link(g_queue_clear, "g_queue_clear", LIBRARY.GLIB);
	Linker.link(g_queue_is_empty, "g_queue_is_empty", LIBRARY.GLIB);
	Linker.link(g_queue_get_length, "g_queue_get_length", LIBRARY.GLIB);
	Linker.link(g_queue_reverse, "g_queue_reverse", LIBRARY.GLIB);
	Linker.link(g_queue_copy, "g_queue_copy", LIBRARY.GLIB);
	Linker.link(g_queue_foreach, "g_queue_foreach", LIBRARY.GLIB);
	Linker.link(g_queue_find, "g_queue_find", LIBRARY.GLIB);
	Linker.link(g_queue_find_custom, "g_queue_find_custom", LIBRARY.GLIB);
	Linker.link(g_queue_sort, "g_queue_sort", LIBRARY.GLIB);
	Linker.link(g_queue_push_head, "g_queue_push_head", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail, "g_queue_push_tail", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth, "g_queue_push_nth", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head, "g_queue_pop_head", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail, "g_queue_pop_tail", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth, "g_queue_pop_nth", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head, "g_queue_peek_head", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail, "g_queue_peek_tail", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth, "g_queue_peek_nth", LIBRARY.GLIB);
	Linker.link(g_queue_index, "g_queue_index", LIBRARY.GLIB);
	Linker.link(g_queue_remove, "g_queue_remove", LIBRARY.GLIB);
	Linker.link(g_queue_remove_all, "g_queue_remove_all", LIBRARY.GLIB);
	Linker.link(g_queue_insert_before, "g_queue_insert_before", LIBRARY.GLIB);
	Linker.link(g_queue_insert_after, "g_queue_insert_after", LIBRARY.GLIB);
	Linker.link(g_queue_insert_sorted, "g_queue_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_queue_push_head_link, "g_queue_push_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_tail_link, "g_queue_push_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_push_nth_link, "g_queue_push_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_head_link, "g_queue_pop_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_tail_link, "g_queue_pop_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_pop_nth_link, "g_queue_pop_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_head_link, "g_queue_peek_head_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_tail_link, "g_queue_peek_tail_link", LIBRARY.GLIB);
	Linker.link(g_queue_peek_nth_link, "g_queue_peek_nth_link", LIBRARY.GLIB);
	Linker.link(g_queue_link_index, "g_queue_link_index", LIBRARY.GLIB);
	Linker.link(g_queue_unlink, "g_queue_unlink", LIBRARY.GLIB);
	Linker.link(g_queue_delete_link, "g_queue_delete_link", LIBRARY.GLIB);

	// glib.Sequence

	Linker.link(g_sequence_new, "g_sequence_new", LIBRARY.GLIB);
	Linker.link(g_sequence_free, "g_sequence_free", LIBRARY.GLIB);
	Linker.link(g_sequence_get_length, "g_sequence_get_length", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach, "g_sequence_foreach", LIBRARY.GLIB);
	Linker.link(g_sequence_foreach_range, "g_sequence_foreach_range", LIBRARY.GLIB);
	Linker.link(g_sequence_sort, "g_sequence_sort", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_iter, "g_sequence_sort_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_begin_iter, "g_sequence_get_begin_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_end_iter, "g_sequence_get_end_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get_iter_at_pos, "g_sequence_get_iter_at_pos", LIBRARY.GLIB);
	Linker.link(g_sequence_append, "g_sequence_append", LIBRARY.GLIB);
	Linker.link(g_sequence_prepend, "g_sequence_prepend", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_before, "g_sequence_insert_before", LIBRARY.GLIB);
	Linker.link(g_sequence_move, "g_sequence_move", LIBRARY.GLIB);
	Linker.link(g_sequence_swap, "g_sequence_swap", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted, "g_sequence_insert_sorted", LIBRARY.GLIB);
	Linker.link(g_sequence_insert_sorted_iter, "g_sequence_insert_sorted_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed, "g_sequence_sort_changed", LIBRARY.GLIB);
	Linker.link(g_sequence_sort_changed_iter, "g_sequence_sort_changed_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_remove, "g_sequence_remove", LIBRARY.GLIB);
	Linker.link(g_sequence_remove_range, "g_sequence_remove_range", LIBRARY.GLIB);
	Linker.link(g_sequence_move_range, "g_sequence_move_range", LIBRARY.GLIB);
	Linker.link(g_sequence_search, "g_sequence_search", LIBRARY.GLIB);
	Linker.link(g_sequence_search_iter, "g_sequence_search_iter", LIBRARY.GLIB);
	Linker.link(g_sequence_get, "g_sequence_get", LIBRARY.GLIB);
	Linker.link(g_sequence_set, "g_sequence_set", LIBRARY.GLIB);
	Linker.link(g_sequence_range_get_midpoint, "g_sequence_range_get_midpoint", LIBRARY.GLIB);

	// glib.SequenceIter

	Linker.link(g_sequence_iter_is_begin, "g_sequence_iter_is_begin", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_is_end, "g_sequence_iter_is_end", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_next, "g_sequence_iter_next", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_prev, "g_sequence_iter_prev", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_position, "g_sequence_iter_get_position", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_move, "g_sequence_iter_move", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_get_sequence, "g_sequence_iter_get_sequence", LIBRARY.GLIB);
	Linker.link(g_sequence_iter_compare, "g_sequence_iter_compare", LIBRARY.GLIB);

	// glib.TrashStack

	Linker.link(g_trash_stack_push, "g_trash_stack_push", LIBRARY.GLIB);
	Linker.link(g_trash_stack_pop, "g_trash_stack_pop", LIBRARY.GLIB);
	Linker.link(g_trash_stack_peek, "g_trash_stack_peek", LIBRARY.GLIB);
	Linker.link(g_trash_stack_height, "g_trash_stack_height", LIBRARY.GLIB);

	// glib.HashTable

	Linker.link(g_hash_table_new, "g_hash_table_new", LIBRARY.GLIB);
	Linker.link(g_hash_table_new_full, "g_hash_table_new_full", LIBRARY.GLIB);
	Linker.link(g_hash_table_insert, "g_hash_table_insert", LIBRARY.GLIB);
	Linker.link(g_hash_table_replace, "g_hash_table_replace", LIBRARY.GLIB);
	Linker.link(g_hash_table_size, "g_hash_table_size", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup, "g_hash_table_lookup", LIBRARY.GLIB);
	Linker.link(g_hash_table_lookup_extended, "g_hash_table_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach, "g_hash_table_foreach", LIBRARY.GLIB);
	Linker.link(g_hash_table_find, "g_hash_table_find", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove, "g_hash_table_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal, "g_hash_table_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_remove, "g_hash_table_foreach_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_foreach_steal, "g_hash_table_foreach_steal", LIBRARY.GLIB);
	Linker.link(g_hash_table_remove_all, "g_hash_table_remove_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_steal_all, "g_hash_table_steal_all", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_keys, "g_hash_table_get_keys", LIBRARY.GLIB);
	Linker.link(g_hash_table_get_values, "g_hash_table_get_values", LIBRARY.GLIB);
	Linker.link(g_hash_table_destroy, "g_hash_table_destroy", LIBRARY.GLIB);
	Linker.link(g_hash_table_ref, "g_hash_table_ref", LIBRARY.GLIB);
	Linker.link(g_hash_table_unref, "g_hash_table_unref", LIBRARY.GLIB);
	Linker.link(g_direct_equal, "g_direct_equal", LIBRARY.GLIB);
	Linker.link(g_direct_hash, "g_direct_hash", LIBRARY.GLIB);
	Linker.link(g_int_equal, "g_int_equal", LIBRARY.GLIB);
	Linker.link(g_int_hash, "g_int_hash", LIBRARY.GLIB);
	Linker.link(g_str_equal, "g_str_equal", LIBRARY.GLIB);
	Linker.link(g_str_hash, "g_str_hash", LIBRARY.GLIB);

	// glib.HashTableIter

	Linker.link(g_hash_table_iter_init, "g_hash_table_iter_init", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_next, "g_hash_table_iter_next", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_get_hash_table, "g_hash_table_iter_get_hash_table", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_remove, "g_hash_table_iter_remove", LIBRARY.GLIB);
	Linker.link(g_hash_table_iter_steal, "g_hash_table_iter_steal", LIBRARY.GLIB);

	// glib.StringG

	Linker.link(g_string_new, "g_string_new", LIBRARY.GLIB);
	Linker.link(g_string_new_len, "g_string_new_len", LIBRARY.GLIB);
	Linker.link(g_string_sized_new, "g_string_sized_new", LIBRARY.GLIB);
	Linker.link(g_string_assign, "g_string_assign", LIBRARY.GLIB);
	Linker.link(g_string_vprintf, "g_string_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_append_vprintf, "g_string_append_vprintf", LIBRARY.GLIB);
	Linker.link(g_string_printf, "g_string_printf", LIBRARY.GLIB);
	Linker.link(g_string_append_printf, "g_string_append_printf", LIBRARY.GLIB);
	Linker.link(g_string_append, "g_string_append", LIBRARY.GLIB);
	Linker.link(g_string_append_c, "g_string_append_c", LIBRARY.GLIB);
	Linker.link(g_string_append_unichar, "g_string_append_unichar", LIBRARY.GLIB);
	Linker.link(g_string_append_len, "g_string_append_len", LIBRARY.GLIB);
	Linker.link(g_string_append_uri_escaped, "g_string_append_uri_escaped", LIBRARY.GLIB);
	Linker.link(g_string_prepend, "g_string_prepend", LIBRARY.GLIB);
	Linker.link(g_string_prepend_c, "g_string_prepend_c", LIBRARY.GLIB);
	Linker.link(g_string_prepend_unichar, "g_string_prepend_unichar", LIBRARY.GLIB);
	Linker.link(g_string_prepend_len, "g_string_prepend_len", LIBRARY.GLIB);
	Linker.link(g_string_insert, "g_string_insert", LIBRARY.GLIB);
	Linker.link(g_string_insert_c, "g_string_insert_c", LIBRARY.GLIB);
	Linker.link(g_string_insert_unichar, "g_string_insert_unichar", LIBRARY.GLIB);
	Linker.link(g_string_insert_len, "g_string_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_overwrite, "g_string_overwrite", LIBRARY.GLIB);
	Linker.link(g_string_overwrite_len, "g_string_overwrite_len", LIBRARY.GLIB);
	Linker.link(g_string_erase, "g_string_erase", LIBRARY.GLIB);
	Linker.link(g_string_truncate, "g_string_truncate", LIBRARY.GLIB);
	Linker.link(g_string_set_size, "g_string_set_size", LIBRARY.GLIB);
	Linker.link(g_string_free, "g_string_free", LIBRARY.GLIB);
	Linker.link(g_string_up, "g_string_up", LIBRARY.GLIB);
	Linker.link(g_string_down, "g_string_down", LIBRARY.GLIB);
	Linker.link(g_string_hash, "g_string_hash", LIBRARY.GLIB);
	Linker.link(g_string_equal, "g_string_equal", LIBRARY.GLIB);

	// glib.StringGChunk

	Linker.link(g_string_chunk_new, "g_string_chunk_new", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert, "g_string_chunk_insert", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_const, "g_string_chunk_insert_const", LIBRARY.GLIB);
	Linker.link(g_string_chunk_insert_len, "g_string_chunk_insert_len", LIBRARY.GLIB);
	Linker.link(g_string_chunk_clear, "g_string_chunk_clear", LIBRARY.GLIB);
	Linker.link(g_string_chunk_free, "g_string_chunk_free", LIBRARY.GLIB);

	// glib.ArrayG

	Linker.link(g_array_new, "g_array_new", LIBRARY.GLIB);
	Linker.link(g_array_sized_new, "g_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_array_append_vals, "g_array_append_vals", LIBRARY.GLIB);
	Linker.link(g_array_prepend_vals, "g_array_prepend_vals", LIBRARY.GLIB);
	Linker.link(g_array_insert_vals, "g_array_insert_vals", LIBRARY.GLIB);
	Linker.link(g_array_remove_index, "g_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_array_remove_index_fast, "g_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_array_remove_range, "g_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_array_sort, "g_array_sort", LIBRARY.GLIB);
	Linker.link(g_array_sort_with_data, "g_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_array_set_size, "g_array_set_size", LIBRARY.GLIB);
	Linker.link(g_array_free, "g_array_free", LIBRARY.GLIB);

	// glib.PtrArray

	Linker.link(g_ptr_array_new, "g_ptr_array_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sized_new, "g_ptr_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_ptr_array_add, "g_ptr_array_add", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove, "g_ptr_array_remove", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index, "g_ptr_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_fast, "g_ptr_array_remove_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_index_fast, "g_ptr_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_ptr_array_remove_range, "g_ptr_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort, "g_ptr_array_sort", LIBRARY.GLIB);
	Linker.link(g_ptr_array_sort_with_data, "g_ptr_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_ptr_array_set_size, "g_ptr_array_set_size", LIBRARY.GLIB);
	Linker.link(g_ptr_array_free, "g_ptr_array_free", LIBRARY.GLIB);
	Linker.link(g_ptr_array_foreach, "g_ptr_array_foreach", LIBRARY.GLIB);

	// glib.ByteArray

	Linker.link(g_byte_array_new, "g_byte_array_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_sized_new, "g_byte_array_sized_new", LIBRARY.GLIB);
	Linker.link(g_byte_array_append, "g_byte_array_append", LIBRARY.GLIB);
	Linker.link(g_byte_array_prepend, "g_byte_array_prepend", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index, "g_byte_array_remove_index", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_index_fast, "g_byte_array_remove_index_fast", LIBRARY.GLIB);
	Linker.link(g_byte_array_remove_range, "g_byte_array_remove_range", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort, "g_byte_array_sort", LIBRARY.GLIB);
	Linker.link(g_byte_array_sort_with_data, "g_byte_array_sort_with_data", LIBRARY.GLIB);
	Linker.link(g_byte_array_set_size, "g_byte_array_set_size", LIBRARY.GLIB);
	Linker.link(g_byte_array_free, "g_byte_array_free", LIBRARY.GLIB);

	// glib.BBTree

	Linker.link(g_tree_new, "g_tree_new", LIBRARY.GLIB);
	Linker.link(g_tree_new_with_data, "g_tree_new_with_data", LIBRARY.GLIB);
	Linker.link(g_tree_new_full, "g_tree_new_full", LIBRARY.GLIB);
	Linker.link(g_tree_insert, "g_tree_insert", LIBRARY.GLIB);
	Linker.link(g_tree_replace, "g_tree_replace", LIBRARY.GLIB);
	Linker.link(g_tree_nnodes, "g_tree_nnodes", LIBRARY.GLIB);
	Linker.link(g_tree_height, "g_tree_height", LIBRARY.GLIB);
	Linker.link(g_tree_lookup, "g_tree_lookup", LIBRARY.GLIB);
	Linker.link(g_tree_lookup_extended, "g_tree_lookup_extended", LIBRARY.GLIB);
	Linker.link(g_tree_foreach, "g_tree_foreach", LIBRARY.GLIB);
	Linker.link(g_tree_traverse, "g_tree_traverse", LIBRARY.GLIB);
	Linker.link(g_tree_search, "g_tree_search", LIBRARY.GLIB);
	Linker.link(g_tree_remove, "g_tree_remove", LIBRARY.GLIB);
	Linker.link(g_tree_steal, "g_tree_steal", LIBRARY.GLIB);
	Linker.link(g_tree_destroy, "g_tree_destroy", LIBRARY.GLIB);

	// glib.Node

	Linker.link(g_node_new, "g_node_new", LIBRARY.GLIB);
	Linker.link(g_node_copy, "g_node_copy", LIBRARY.GLIB);
	Linker.link(g_node_copy_deep, "g_node_copy_deep", LIBRARY.GLIB);
	Linker.link(g_node_insert, "g_node_insert", LIBRARY.GLIB);
	Linker.link(g_node_insert_before, "g_node_insert_before", LIBRARY.GLIB);
	Linker.link(g_node_insert_after, "g_node_insert_after", LIBRARY.GLIB);
	Linker.link(g_node_prepend, "g_node_prepend", LIBRARY.GLIB);
	Linker.link(g_node_reverse_children, "g_node_reverse_children", LIBRARY.GLIB);
	Linker.link(g_node_traverse, "g_node_traverse", LIBRARY.GLIB);
	Linker.link(g_node_children_foreach, "g_node_children_foreach", LIBRARY.GLIB);
	Linker.link(g_node_get_root, "g_node_get_root", LIBRARY.GLIB);
	Linker.link(g_node_find, "g_node_find", LIBRARY.GLIB);
	Linker.link(g_node_find_child, "g_node_find_child", LIBRARY.GLIB);
	Linker.link(g_node_child_index, "g_node_child_index", LIBRARY.GLIB);
	Linker.link(g_node_child_position, "g_node_child_position", LIBRARY.GLIB);
	Linker.link(g_node_last_child, "g_node_last_child", LIBRARY.GLIB);
	Linker.link(g_node_nth_child, "g_node_nth_child", LIBRARY.GLIB);
	Linker.link(g_node_first_sibling, "g_node_first_sibling", LIBRARY.GLIB);
	Linker.link(g_node_last_sibling, "g_node_last_sibling", LIBRARY.GLIB);
	Linker.link(g_node_depth, "g_node_depth", LIBRARY.GLIB);
	Linker.link(g_node_n_nodes, "g_node_n_nodes", LIBRARY.GLIB);
	Linker.link(g_node_n_children, "g_node_n_children", LIBRARY.GLIB);
	Linker.link(g_node_is_ancestor, "g_node_is_ancestor", LIBRARY.GLIB);
	Linker.link(g_node_max_height, "g_node_max_height", LIBRARY.GLIB);
	Linker.link(g_node_unlink, "g_node_unlink", LIBRARY.GLIB);
	Linker.link(g_node_destroy, "g_node_destroy", LIBRARY.GLIB);
	Linker.link(g_node_push_allocator, "g_node_push_allocator", LIBRARY.GLIB);
	Linker.link(g_node_pop_allocator, "g_node_pop_allocator", LIBRARY.GLIB);

	// glib.Quark

	Linker.link(g_quark_from_string, "g_quark_from_string", LIBRARY.GLIB);
	Linker.link(g_quark_from_static_string, "g_quark_from_static_string", LIBRARY.GLIB);
	Linker.link(g_quark_to_string, "g_quark_to_string", LIBRARY.GLIB);
	Linker.link(g_quark_try_string, "g_quark_try_string", LIBRARY.GLIB);
	Linker.link(g_intern_string, "g_intern_string", LIBRARY.GLIB);
	Linker.link(g_intern_static_string, "g_intern_static_string", LIBRARY.GLIB);

	// glib.DataList

	Linker.link(g_datalist_init, "g_datalist_init", LIBRARY.GLIB);
	Linker.link(g_datalist_id_set_data_full, "g_datalist_id_set_data_full", LIBRARY.GLIB);
	Linker.link(g_datalist_id_get_data, "g_datalist_id_get_data", LIBRARY.GLIB);
	Linker.link(g_datalist_id_remove_no_notify, "g_datalist_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_datalist_foreach, "g_datalist_foreach", LIBRARY.GLIB);
	Linker.link(g_datalist_clear, "g_datalist_clear", LIBRARY.GLIB);
	Linker.link(g_datalist_set_flags, "g_datalist_set_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_unset_flags, "g_datalist_unset_flags", LIBRARY.GLIB);
	Linker.link(g_datalist_get_flags, "g_datalist_get_flags", LIBRARY.GLIB);

	// glib.Dataset

	Linker.link(g_dataset_id_set_data_full, "g_dataset_id_set_data_full", LIBRARY.GLIB);
	Linker.link(g_dataset_id_get_data, "g_dataset_id_get_data", LIBRARY.GLIB);
	Linker.link(g_dataset_id_remove_no_notify, "g_dataset_id_remove_no_notify", LIBRARY.GLIB);
	Linker.link(g_dataset_foreach, "g_dataset_foreach", LIBRARY.GLIB);
	Linker.link(g_dataset_destroy, "g_dataset_destroy", LIBRARY.GLIB);

	// glib.Relation

	Linker.link(g_relation_new, "g_relation_new", LIBRARY.GLIB);
	Linker.link(g_relation_index, "g_relation_index", LIBRARY.GLIB);
	Linker.link(g_relation_insert, "g_relation_insert", LIBRARY.GLIB);
	Linker.link(g_relation_exists, "g_relation_exists", LIBRARY.GLIB);
	Linker.link(g_relation_count, "g_relation_count", LIBRARY.GLIB);
	Linker.link(g_relation_select, "g_relation_select", LIBRARY.GLIB);
	Linker.link(g_relation_delete, "g_relation_delete", LIBRARY.GLIB);
	Linker.link(g_relation_destroy, "g_relation_destroy", LIBRARY.GLIB);
	Linker.link(g_relation_print, "g_relation_print", LIBRARY.GLIB);

	// glib.Tuples

	Linker.link(g_tuples_destroy, "g_tuples_destroy", LIBRARY.GLIB);
	Linker.link(g_tuples_index, "g_tuples_index", LIBRARY.GLIB);

	// glib.Cache

	Linker.link(g_cache_new, "g_cache_new", LIBRARY.GLIB);
	Linker.link(g_cache_insert, "g_cache_insert", LIBRARY.GLIB);
	Linker.link(g_cache_remove, "g_cache_remove", LIBRARY.GLIB);
	Linker.link(g_cache_destroy, "g_cache_destroy", LIBRARY.GLIB);
	Linker.link(g_cache_key_foreach, "g_cache_key_foreach", LIBRARY.GLIB);
	Linker.link(g_cache_value_foreach, "g_cache_value_foreach", LIBRARY.GLIB);

	// glib.Allocator

	Linker.link(g_allocator_new, "g_allocator_new", LIBRARY.GLIB);
	Linker.link(g_allocator_free, "g_allocator_free", LIBRARY.GLIB);
}

extern(C)
{
	
	// glib.Version
	
	gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro) c_glib_check_version;
	
	// glib.Atomic
	
	gint function(gint* atomic) c_g_atomic_int_get;
	void function(gint* atomic, gint newval) c_g_atomic_int_set;
	void function(gint* atomic, gint val) c_g_atomic_int_add;
	gint function(gint* atomic, gint val) c_g_atomic_int_exchange_and_add;
	gboolean function(gint* atomic, gint oldval, gint newval) c_g_atomic_int_compare_and_exchange;
	gpointer function(gpointer* atomic) c_g_atomic_pointer_get;
	void function(gpointer* atomic, gpointer newval) c_g_atomic_pointer_set;
	gboolean function(gpointer* atomic, gpointer oldval, gpointer newval) c_g_atomic_pointer_compare_and_exchange;
	void function(gint* atomic) c_g_atomic_int_inc;
	gboolean function(gint* atomic) c_g_atomic_int_dec_and_test;
	
	// glib.MainLoop
	
	GMainLoop* function(GMainContext* context, gboolean isRunning) c_g_main_loop_new;
	GMainLoop* function(GMainLoop* loop) c_g_main_loop_ref;
	void function(GMainLoop* loop) c_g_main_loop_unref;
	void function(GMainLoop* loop) c_g_main_loop_run;
	void function(GMainLoop* loop) c_g_main_loop_quit;
	gboolean function(GMainLoop* loop) c_g_main_loop_is_running;
	GMainContext* function(GMainLoop* loop) c_g_main_loop_get_context;
	gint function() c_g_main_depth;
	GSource* function() c_g_main_current_source;
	gint function(GPollFD* fds, guint nfds, gint timeout) c_g_poll;
	
	// glib.MainContext
	
	GMainContext* function() c_g_main_context_new;
	GMainContext* function(GMainContext* context) c_g_main_context_ref;
	void function(GMainContext* context) c_g_main_context_unref;
	GMainContext* function() c_g_main_context_default;
	gboolean function(GMainContext* context, gboolean mayBlock) c_g_main_context_iteration;
	gboolean function(GMainContext* context) c_g_main_context_pending;
	GSource* function(GMainContext* context, guint sourceId) c_g_main_context_find_source_by_id;
	GSource* function(GMainContext* context, gpointer userData) c_g_main_context_find_source_by_user_data;
	GSource* function(GMainContext* context, GSourceFuncs* funcs, gpointer userData) c_g_main_context_find_source_by_funcs_user_data;
	void function(GMainContext* context) c_g_main_context_wakeup;
	gboolean function(GMainContext* context) c_g_main_context_acquire;
	void function(GMainContext* context) c_g_main_context_release;
	gboolean function(GMainContext* context) c_g_main_context_is_owner;
	gboolean function(GMainContext* context, GCond* cond, GMutex* mutex) c_g_main_context_wait;
	gboolean function(GMainContext* context, gint* priority) c_g_main_context_prepare;
	gint function(GMainContext* context, gint maxPriority, gint* timeout, GPollFD* fds, gint nFds) c_g_main_context_query;
	gint function(GMainContext* context, gint maxPriority, GPollFD* fds, gint nFds) c_g_main_context_check;
	void function(GMainContext* context) c_g_main_context_dispatch;
	void function(GMainContext* context, GPollFunc func) c_g_main_context_set_poll_func;
	GPollFunc function(GMainContext* context) c_g_main_context_get_poll_func;
	void function(GMainContext* context, GPollFD* fd, gint priority) c_g_main_context_add_poll;
	void function(GMainContext* context, GPollFD* fd) c_g_main_context_remove_poll;
	
	// glib.Timeout
	
	GSource* function(guint interval) c_g_timeout_source_new;
	GSource* function(guint interval) c_g_timeout_source_new_seconds;
	guint function(guint interval, GSourceFunc funct, gpointer data) c_g_timeout_add;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_timeout_add_full;
	guint function(guint interval, GSourceFunc funct, gpointer data) c_g_timeout_add_seconds;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_timeout_add_seconds_full;
	
	// glib.Idle
	
	GSource* function() c_g_idle_source_new;
	guint function(GSourceFunc funct, gpointer data) c_g_idle_add;
	guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_g_idle_add_full;
	gboolean function(gpointer data) c_g_idle_remove_by_data;
	
	// glib.Child
	
	GSource* function(GPid pid) c_g_child_watch_source_new;
	guint function(GPid pid, GChildWatchFunc funct, gpointer data) c_g_child_watch_add;
	guint function(gint priority, GPid pid, GChildWatchFunc funct, gpointer data, GDestroyNotify notify) c_g_child_watch_add_full;
	
	// glib.Source
	
	GSource* function(GSourceFuncs* sourceFuncs, guint structSize) c_g_source_new;
	GSource* function(GSource* source) c_g_source_ref;
	void function(GSource* source) c_g_source_unref;
	void function(GSource* source, GSourceFuncs* funcs) c_g_source_set_funcs;
	guint function(GSource* source, GMainContext* context) c_g_source_attach;
	void function(GSource* source) c_g_source_destroy;
	gboolean function(GSource* source) c_g_source_is_destroyed;
	void function(GSource* source, gint priority) c_g_source_set_priority;
	gint function(GSource* source) c_g_source_get_priority;
	void function(GSource* source, gboolean canRecurse) c_g_source_set_can_recurse;
	gboolean function(GSource* source) c_g_source_get_can_recurse;
	guint function(GSource* source) c_g_source_get_id;
	GMainContext* function(GSource* source) c_g_source_get_context;
	void function(GSource* source, GSourceFunc func, gpointer data, GDestroyNotify notify) c_g_source_set_callback;
	void function(GSource* source, gpointer callbackData, GSourceCallbackFuncs* callbackFuncs) c_g_source_set_callback_indirect;
	void function(GSource* source, GPollFD* fd) c_g_source_add_poll;
	void function(GSource* source, GPollFD* fd) c_g_source_remove_poll;
	void function(GSource* source, GTimeVal* timeval) c_g_source_get_current_time;
	gboolean function(guint tag) c_g_source_remove;
	gboolean function(GSourceFuncs* funcs, gpointer userData) c_g_source_remove_by_funcs_user_data;
	gboolean function(gpointer userData) c_g_source_remove_by_user_data;
	
	// glib.ThreadPool
	
	GThreadPool* function(GFunc func, gpointer userData, gint maxThreads, gboolean exclusive, GError** error) c_g_thread_pool_new;
	void function(GThreadPool* pool, gpointer data, GError** error) c_g_thread_pool_push;
	void function(GThreadPool* pool, gint maxThreads, GError** error) c_g_thread_pool_set_max_threads;
	gint function(GThreadPool* pool) c_g_thread_pool_get_max_threads;
	guint function(GThreadPool* pool) c_g_thread_pool_get_num_threads;
	guint function(GThreadPool* pool) c_g_thread_pool_unprocessed;
	void function(GThreadPool* pool, gboolean immediate, gboolean wait) c_g_thread_pool_free;
	void function(gint maxThreads) c_g_thread_pool_set_max_unused_threads;
	gint function() c_g_thread_pool_get_max_unused_threads;
	guint function() c_g_thread_pool_get_num_unused_threads;
	void function() c_g_thread_pool_stop_unused_threads;
	void function(GThreadPool* pool, GCompareDataFunc func, gpointer userData) c_g_thread_pool_set_sort_function;
	void function(guint interval) c_g_thread_pool_set_max_idle_time;
	guint function() c_g_thread_pool_get_max_idle_time;
	
	// glib.AsyncQueue
	
	GAsyncQueue* function() c_g_async_queue_new;
	GAsyncQueue* function(GDestroyNotify itemFreeFunc) c_g_async_queue_new_full;
	GAsyncQueue* function(GAsyncQueue* queue) c_g_async_queue_ref;
	void function(GAsyncQueue* queue) c_g_async_queue_unref;
	void function(GAsyncQueue* queue, gpointer data) c_g_async_queue_push;
	void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_async_queue_push_sorted;
	gpointer function(GAsyncQueue* queue) c_g_async_queue_pop;
	gpointer function(GAsyncQueue* queue) c_g_async_queue_try_pop;
	gpointer function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop;
	gint function(GAsyncQueue* queue) c_g_async_queue_length;
	void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData) c_g_async_queue_sort;
	void function(GAsyncQueue* queue) c_g_async_queue_lock;
	void function(GAsyncQueue* queue) c_g_async_queue_unlock;
	void function(GAsyncQueue* queue) c_g_async_queue_ref_unlocked;
	void function(GAsyncQueue* queue) c_g_async_queue_unref_and_unlock;
	void function(GAsyncQueue* queue, gpointer data) c_g_async_queue_push_unlocked;
	void function(GAsyncQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_async_queue_push_sorted_unlocked;
	gpointer function(GAsyncQueue* queue) c_g_async_queue_pop_unlocked;
	gpointer function(GAsyncQueue* queue) c_g_async_queue_try_pop_unlocked;
	gpointer function(GAsyncQueue* queue, GTimeVal* endTime) c_g_async_queue_timed_pop_unlocked;
	gint function(GAsyncQueue* queue) c_g_async_queue_length_unlocked;
	void function(GAsyncQueue* queue, GCompareDataFunc func, gpointer userData) c_g_async_queue_sort_unlocked;
	
	// glib.Module
	
	gboolean function() c_g_module_supported;
	gchar* function(gchar* directory, gchar* moduleName) c_g_module_build_path;
	GModule* function(gchar* fileName, GModuleFlags flags) c_g_module_open;
	gboolean function(GModule* modul, gchar* symbolName, gpointer* symbol) c_g_module_symbol;
	gchar* function(GModule* modul) c_g_module_name;
	void function(GModule* modul) c_g_module_make_resident;
	gboolean function(GModule* modul) c_g_module_close;
	gchar* function() c_g_module_error;
	
	// glib.Memory
	
	gpointer function(gsize nBytes) c_g_malloc;
	gpointer function(gsize nBytes) c_g_malloc0;
	gpointer function(gpointer mem, gsize nBytes) c_g_realloc;
	gpointer function(gsize nBytes) c_g_try_malloc;
	gpointer function(gsize nBytes) c_g_try_malloc0;
	gpointer function(gpointer mem, gsize nBytes) c_g_try_realloc;
	void function(gpointer mem) c_g_free;
	gpointer function(gconstpointer mem, guint byteSize) c_g_memdup;
	void function(GMemVTable* vtable) c_g_mem_set_vtable;
	gboolean function() c_g_mem_is_system_malloc;
	void function() c_g_mem_profile;
	
	// glib.IOChannel
	
	GIOChannel* function(int fd) c_g_io_channel_unix_new;
	gint function(GIOChannel* channel) c_g_io_channel_unix_get_fd;
	GIOChannel* function(gint fd) c_g_io_channel_win32_new_fd;
	GIOChannel* function(gint socket) c_g_io_channel_win32_new_socket;
	GIOChannel* function(gsize hwnd) c_g_io_channel_win32_new_messages;
	void function(GIOChannel* channel) c_g_io_channel_init;
	GIOChannel* function(gchar* filename, gchar* mode, GError** error) c_g_io_channel_new_file;
	GIOStatus function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead, GError** error) c_g_io_channel_read_chars;
	GIOStatus function(GIOChannel* channel, gunichar* thechar, GError** error) c_g_io_channel_read_unichar;
	GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, gsize* terminatorPos, GError** error) c_g_io_channel_read_line;
	GIOStatus function(GIOChannel* channel, GString* buffer, gsize* terminatorPos, GError** error) c_g_io_channel_read_line_string;
	GIOStatus function(GIOChannel* channel, gchar** strReturn, gsize* length, GError** error) c_g_io_channel_read_to_end;
	GIOStatus function(GIOChannel* channel, gchar* buf, gssize count, gsize* bytesWritten, GError** error) c_g_io_channel_write_chars;
	GIOStatus function(GIOChannel* channel, gunichar thechar, GError** error) c_g_io_channel_write_unichar;
	GIOStatus function(GIOChannel* channel, GError** error) c_g_io_channel_flush;
	GIOStatus function(GIOChannel* channel, gint64 offset, GSeekType type, GError** error) c_g_io_channel_seek_position;
	GIOStatus function(GIOChannel* channel, gboolean flush, GError** err) c_g_io_channel_shutdown;
	GIOChannelError function(gint en) c_g_io_channel_error_from_errno;
	GIOChannel* function(GIOChannel* channel) c_g_io_channel_ref;
	void function(GIOChannel* channel) c_g_io_channel_unref;
	GSource* function(GIOChannel* channel, GIOCondition condition) c_g_io_create_watch;
	guint function(GIOChannel* channel, GIOCondition condition, GIOFunc func, gpointer userData) c_g_io_add_watch;
	guint function(GIOChannel* channel, gint priority, GIOCondition condition, GIOFunc func, gpointer userData, GDestroyNotify notify) c_g_io_add_watch_full;
	gsize function(GIOChannel* channel) c_g_io_channel_get_buffer_size;
	void function(GIOChannel* channel, gsize size) c_g_io_channel_set_buffer_size;
	GIOCondition function(GIOChannel* channel) c_g_io_channel_get_buffer_condition;
	GIOFlags function(GIOChannel* channel) c_g_io_channel_get_flags;
	GIOStatus function(GIOChannel* channel, GIOFlags flags, GError** error) c_g_io_channel_set_flags;
	gchar* function(GIOChannel* channel, gint* length) c_g_io_channel_get_line_term;
	void function(GIOChannel* channel, gchar* lineTerm, gint length) c_g_io_channel_set_line_term;
	gboolean function(GIOChannel* channel) c_g_io_channel_get_buffered;
	void function(GIOChannel* channel, gboolean buffered) c_g_io_channel_set_buffered;
	gchar* function(GIOChannel* channel) c_g_io_channel_get_encoding;
	GIOStatus function(GIOChannel* channel, gchar* encoding, GError** error) c_g_io_channel_set_encoding;
	gboolean function(GIOChannel* channel) c_g_io_channel_get_close_on_unref;
	void function(GIOChannel* channel, gboolean doClose) c_g_io_channel_set_close_on_unref;
	GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesRead) c_g_io_channel_read;
	GIOError function(GIOChannel* channel, gchar* buf, gsize count, gsize* bytesWritten) c_g_io_channel_write;
	GIOError function(GIOChannel* channel, gint64 offset, GSeekType type) c_g_io_channel_seek;
	void function(GIOChannel* channel) c_g_io_channel_close;
	
	// glib.ErrorG
	
	GError* function(GQuark domain, gint code, gchar* format, ... ) c_g_error_new;
	GError* function(GQuark domain, gint code, gchar* message) c_g_error_new_literal;
	void function(GError* error) c_g_error_free;
	GError* function(GError* error) c_g_error_copy;
	gboolean function(GError* error, GQuark domain, gint code) c_g_error_matches;
	void function(GError** err, GQuark domain, gint code, gchar* format, ... ) c_g_set_error;
	void function(GError** err, GQuark domain, gint code, gchar* message) c_g_set_error_literal;
	void function(GError** dest, GError* src) c_g_propagate_error;
	void function(GError** err) c_g_clear_error;
	void function(GError** err, gchar* format, ... ) c_g_prefix_error;
	void function(GError** dest, GError* src, gchar* format, ... ) c_g_propagate_prefixed_error;
	
	// glib.
	
	
	// glib.
	
	
	// glib.Messages
	
	void function(gchar* format, ... ) c_g_print;
	GPrintFunc function(GPrintFunc func) c_g_set_print_handler;
	void function(gchar* format, ... ) c_g_printerr;
	GPrintFunc function(GPrintFunc func) c_g_set_printerr_handler;
	void function(gchar* prgName) c_g_on_error_query;
	void function(gchar* prgName) c_g_on_error_stack_trace;
	
	// glib.MessageLog
	
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, ... ) c_g_log;
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* format, va_list args) c_g_logv;
	guint function(gchar* logDomain, GLogLevelFlags logLevels, GLogFunc logFunc, gpointer userData) c_g_log_set_handler;
	void function(gchar* logDomain, guint handlerId) c_g_log_remove_handler;
	GLogLevelFlags function(GLogLevelFlags fatalMask) c_g_log_set_always_fatal;
	GLogLevelFlags function(gchar* logDomain, GLogLevelFlags fatalMask) c_g_log_set_fatal_mask;
	void function(gchar* logDomain, GLogLevelFlags logLevel, gchar* message, gpointer unusedData) c_g_log_default_handler;
	GLogFunc function(GLogFunc logFunc, gpointer userData) c_g_log_set_default_handler;
	
	// glib.Str
	
	gchar* function(gchar* str) c_g_strdup;
	gchar* function(gchar* str, gsize n) c_g_strndup;
	gchar** function(gchar** strArray) c_g_strdupv;
	gchar* function(gsize length, gchar fillChar) c_g_strnfill;
	gchar* function(gchar* dest, char* src) c_g_stpcpy;
	gchar* function(gchar* haystack, gssize haystackLen, gchar* needle) c_g_strstr_len;
	gchar* function(gchar* haystack, gchar* needle) c_g_strrstr;
	gchar* function(gchar* haystack, gssize haystackLen, gchar* needle) c_g_strrstr_len;
	gboolean function(gchar* str, gchar* prefix) c_g_str_has_prefix;
	gboolean function(gchar* str, gchar* suffix) c_g_str_has_suffix;
	int function(char* str1, char* str2) c_g_strcmp0;
	gsize function(gchar* dest, gchar* src, gsize destSize) c_g_strlcpy;
	gsize function(gchar* dest, gchar* src, gsize destSize) c_g_strlcat;
	gchar* function(gchar* format, ... ) c_g_strdup_printf;
	gchar* function(gchar* format, va_list args) c_g_strdup_vprintf;
	gint function(gchar* format, ... ) c_g_printf;
	gint function(gchar* format, va_list args) c_g_vprintf;
	gint function(FILE* file, gchar* format, ... ) c_g_fprintf;
	gint function(FILE* file, gchar* format, va_list args) c_g_vfprintf;
	gint function(gchar* string, gchar* format, ... ) c_g_sprintf;
	gint function(gchar* string, gchar* format, va_list args) c_g_vsprintf;
	gint function(gchar* string, gulong n, gchar* format, ... ) c_g_snprintf;
	gint function(gchar* string, gulong n, gchar* format, va_list args) c_g_vsnprintf;
	gint function(gchar** string, gchar* format, va_list args) c_g_vasprintf;
	gsize function(gchar* format, va_list args) c_g_printf_string_upper_bound;
	gboolean function(gchar c) c_g_ascii_isalnum;
	gboolean function(gchar c) c_g_ascii_isalpha;
	gboolean function(gchar c) c_g_ascii_iscntrl;
	gboolean function(gchar c) c_g_ascii_isdigit;
	gboolean function(gchar c) c_g_ascii_isgraph;
	gboolean function(gchar c) c_g_ascii_islower;
	gboolean function(gchar c) c_g_ascii_isprint;
	gboolean function(gchar c) c_g_ascii_ispunct;
	gboolean function(gchar c) c_g_ascii_isspace;
	gboolean function(gchar c) c_g_ascii_isupper;
	gboolean function(gchar c) c_g_ascii_isxdigit;
	gint function(gchar c) c_g_ascii_digit_value;
	gint function(gchar c) c_g_ascii_xdigit_value;
	gint function(gchar* s1, gchar* s2) c_g_ascii_strcasecmp;
	gint function(gchar* s1, gchar* s2, gsize n) c_g_ascii_strncasecmp;
	gchar* function(gchar* str, gssize len) c_g_ascii_strup;
	gchar* function(gchar* str, gssize len) c_g_ascii_strdown;
	gchar function(gchar c) c_g_ascii_tolower;
	gchar function(gchar c) c_g_ascii_toupper;
	GString* function(GString* string) c_g_string_ascii_up;
	GString* function(GString* string) c_g_string_ascii_down;
	gchar* function(gchar* string) c_g_strup;
	gchar* function(gchar* string) c_g_strdown;
	gint function(gchar* s1, gchar* s2) c_g_strcasecmp;
	gint function(gchar* s1, gchar* s2, guint n) c_g_strncasecmp;
	gchar* function(gchar* string) c_g_strreverse;
	gint64 function(gchar* nptr, gchar** endptr, guint base) c_g_ascii_strtoll;
	guint64 function(gchar* nptr, gchar** endptr, guint base) c_g_ascii_strtoull;
	gdouble function(gchar* nptr, gchar** endptr) c_g_ascii_strtod;
	gchar* function(gchar* buffer, gint bufLen, gdouble d) c_g_ascii_dtostr;
	gchar* function(gchar* buffer, gint bufLen, gchar* format, gdouble d) c_g_ascii_formatd;
	gdouble function(gchar* nptr, gchar** endptr) c_g_strtod;
	gchar* function(gchar* string) c_g_strchug;
	gchar* function(gchar* string) c_g_strchomp;
	gchar* function(gchar* string, gchar* delimiters, gchar newDelimiter) c_g_strdelimit;
	gchar* function(gchar* source, gchar* exceptions) c_g_strescape;
	gchar* function(gchar* source) c_g_strcompress;
	gchar* function(gchar* string, gchar* validChars, gchar substitutor) c_g_strcanon;
	gchar** function(gchar* string, gchar* delimiter, gint maxTokens) c_g_strsplit;
	gchar** function(gchar* string, gchar* delimiters, gint maxTokens) c_g_strsplit_set;
	void function(gchar** strArray) c_g_strfreev;
	gchar* function(gchar* string1, ... ) c_g_strconcat;
	gchar* function(gchar* separator, ... ) c_g_strjoin;
	gchar* function(gchar* separator, gchar** strArray) c_g_strjoinv;
	guint function(gchar** strArray) c_g_strv_length;
	gchar* function(gint errnum) c_g_strerror;
	gchar* function(gint signum) c_g_strsignal;
	
	// glib.CharacterSet
	
	gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_convert;
	gchar* function(gchar* str, gssize len, gchar* toCodeset, gchar* fromCodeset, gchar* fallback, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_convert_with_fallback;
	gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_locale_to_utf8;
	gchar* function(gchar* opsysstring, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_filename_to_utf8;
	gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_filename_from_utf8;
	gchar* function(gchar* uri, gchar** hostname, GError** error) c_g_filename_from_uri;
	gchar* function(gchar* filename, gchar* hostname, GError** error) c_g_filename_to_uri;
	gboolean function(gchar*** charsets) c_g_get_filename_charsets;
	gchar* function(gchar* filename) c_g_filename_display_name;
	gchar* function(gchar* filename) c_g_filename_display_basename;
	gchar** function(gchar* uriList) c_g_uri_list_extract_uris;
	gchar* function(gchar* utf8string, gssize len, gsize* bytesRead, gsize* bytesWritten, GError** error) c_g_locale_from_utf8;
	gboolean function(char** charset) c_g_get_charset;
	
	// glib.Unicode
	
	gboolean function(gunichar ch) c_g_unichar_validate;
	gboolean function(gunichar c) c_g_unichar_isalnum;
	gboolean function(gunichar c) c_g_unichar_isalpha;
	gboolean function(gunichar c) c_g_unichar_iscntrl;
	gboolean function(gunichar c) c_g_unichar_isdefined;
	gboolean function(gunichar c) c_g_unichar_isdigit;
	gboolean function(gunichar c) c_g_unichar_isgraph;
	gboolean function(gunichar c) c_g_unichar_islower;
	gboolean function(gunichar c) c_g_unichar_ismark;
	gboolean function(gunichar c) c_g_unichar_isprint;
	gboolean function(gunichar c) c_g_unichar_ispunct;
	gboolean function(gunichar c) c_g_unichar_isspace;
	gboolean function(gunichar c) c_g_unichar_istitle;
	gboolean function(gunichar c) c_g_unichar_isupper;
	gboolean function(gunichar c) c_g_unichar_isxdigit;
	gboolean function(gunichar c) c_g_unichar_iswide;
	gboolean function(gunichar c) c_g_unichar_iswide_cjk;
	gboolean function(gunichar c) c_g_unichar_iszerowidth;
	gunichar function(gunichar c) c_g_unichar_toupper;
	gunichar function(gunichar c) c_g_unichar_tolower;
	gunichar function(gunichar c) c_g_unichar_totitle;
	gint function(gunichar c) c_g_unichar_digit_value;
	gint function(gunichar c) c_g_unichar_xdigit_value;
	GUnicodeType function(gunichar c) c_g_unichar_type;
	GUnicodeBreakType function(gunichar c) c_g_unichar_break_type;
	gint function(gunichar uc) c_g_unichar_combining_class;
	void function(gunichar* string, gsize len) c_g_unicode_canonical_ordering;
	gunichar* function(gunichar ch, gsize* resultLen) c_g_unicode_canonical_decomposition;
	gboolean function(gunichar ch, gunichar* mirroredCh) c_g_unichar_get_mirror_char;
	GUnicodeScript function(gunichar ch) c_g_unichar_get_script;
	gunichar function(gchar* p) c_g_utf8_get_char;
	gunichar function(gchar* p, gssize maxLen) c_g_utf8_get_char_validated;
	gchar* function(gchar* str, glong offset) c_g_utf8_offset_to_pointer;
	glong function(gchar* str, gchar* pos) c_g_utf8_pointer_to_offset;
	gchar* function(gchar* p) c_g_utf8_prev_char;
	gchar* function(gchar* p, gchar* end) c_g_utf8_find_next_char;
	gchar* function(gchar* str, gchar* p) c_g_utf8_find_prev_char;
	glong function(gchar* p, gssize max) c_g_utf8_strlen;
	gchar* function(gchar* dest, gchar* src, gsize n) c_g_utf8_strncpy;
	gchar* function(gchar* p, gssize len, gunichar c) c_g_utf8_strchr;
	gchar* function(gchar* p, gssize len, gunichar c) c_g_utf8_strrchr;
	gchar* function(gchar* str, gssize len) c_g_utf8_strreverse;
	gboolean function(gchar* str, gssize maxLen, gchar** end) c_g_utf8_validate;
	gchar* function(gchar* str, gssize len) c_g_utf8_strup;
	gchar* function(gchar* str, gssize len) c_g_utf8_strdown;
	gchar* function(gchar* str, gssize len) c_g_utf8_casefold;
	gchar* function(gchar* str, gssize len, GNormalizeMode mode) c_g_utf8_normalize;
	gint function(gchar* str1, gchar* str2) c_g_utf8_collate;
	gchar* function(gchar* str, gssize len) c_g_utf8_collate_key;
	gchar* function(gchar* str, gssize len) c_g_utf8_collate_key_for_filename;
	gunichar2* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf8_to_utf16;
	gunichar* function(gchar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf8_to_ucs4;
	gunichar* function(gchar* str, glong len, glong* itemsWritten) c_g_utf8_to_ucs4_fast;
	gunichar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf16_to_ucs4;
	gchar* function(gunichar2* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_utf16_to_utf8;
	gunichar2* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_ucs4_to_utf16;
	gchar* function(gunichar* str, glong len, glong* itemsRead, glong* itemsWritten, GError** error) c_g_ucs4_to_utf8;
	gint function(gunichar c, gchar* outbuf) c_g_unichar_to_utf8;
	
	// glib.Base64
	
	gsize function(guchar* inn, gsize len, gboolean breakLines, gchar* f_out, gint* state, gint* save) c_g_base64_encode_step;
	gsize function(gboolean breakLines, gchar* f_out, gint* state, gint* save) c_g_base64_encode_close;
	gchar* function(guchar* data, gsize len) c_g_base64_encode;
	gsize function(gchar* inn, gsize len, guchar* f_out, gint* state, guint* save) c_g_base64_decode_step;
	guchar* function(gchar* text, gsize* outLen) c_g_base64_decode;
	guchar* function(gchar* text, gsize* outLen) c_g_base64_decode_inplace;
	
	// glib.Checksum
	
	gssize function(GChecksumType checksumType) c_g_checksum_type_get_length;
	GChecksum* function(GChecksumType checksumType) c_g_checksum_new;
	GChecksum* function(GChecksum* checksum) c_g_checksum_copy;
	void function(GChecksum* checksum) c_g_checksum_free;
	void function(GChecksum* checksum) c_g_checksum_reset;
	void function(GChecksum* checksum, guchar* data, gssize length) c_g_checksum_update;
	gchar* function(GChecksum* checksum) c_g_checksum_get_string;
	void function(GChecksum* checksum, guint8* buffer, gsize* digestLen) c_g_checksum_get_digest;
	gchar* function(GChecksumType checksumType, guchar* data, gsize length) c_g_compute_checksum_for_data;
	gchar* function(GChecksumType checksumType, gchar* str, gssize length) c_g_compute_checksum_for_string;
	
	// glib.Internationalization
	
	gchar* function(gchar* domain, gchar* msgid) c_g_dgettext;
	gchar* function(gchar* domain, gchar* msgid, gchar* msgidPlural, gulong n) c_g_dngettext;
	gchar* function(gchar* domain, gchar* msgctxtid, gsize msgidoffset) c_g_dpgettext;
	gchar* function(gchar* domain, gchar* context, gchar* msgid) c_g_dpgettext2;
	gchar* function(gchar* msgid, gchar* msgval) c_g_strip_context;
	gchar** function() c_g_get_language_names;
	
	// glib.TimeVal
	
	void function(GTimeVal* result) c_g_get_current_time;
	void function(gulong microseconds) c_g_usleep;
	void function(GTimeVal* time, glong microseconds) c_g_time_val_add;
	gboolean function(gchar* isoDate, GTimeVal* time) c_g_time_val_from_iso8601;
	gchar* function(GTimeVal* time) c_g_time_val_to_iso8601;
	
	// glib.Date
	
	GDate* function() c_g_date_new;
	GDate* function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_new_dmy;
	GDate* function(guint32 julianDay) c_g_date_new_julian;
	void function(GDate* date, guint nDates) c_g_date_clear;
	void function(GDate* date) c_g_date_free;
	void function(GDate* date, GDateDay day) c_g_date_set_day;
	void function(GDate* date, GDateMonth month) c_g_date_set_month;
	void function(GDate* date, GDateYear year) c_g_date_set_year;
	void function(GDate* date, GDateDay day, GDateMonth month, GDateYear y) c_g_date_set_dmy;
	void function(GDate* date, guint32 julianDate) c_g_date_set_julian;
	void function(GDate* date, GTime time) c_g_date_set_time;
	void function(GDate* date, time_t timet) c_g_date_set_time_t;
	void function(GDate* date, GTimeVal* timeval) c_g_date_set_time_val;
	void function(GDate* date, gchar* str) c_g_date_set_parse;
	void function(GDate* date, guint nDays) c_g_date_add_days;
	void function(GDate* date, guint nDays) c_g_date_subtract_days;
	void function(GDate* date, guint nMonths) c_g_date_add_months;
	void function(GDate* date, guint nMonths) c_g_date_subtract_months;
	void function(GDate* date, guint nYears) c_g_date_add_years;
	void function(GDate* date, guint nYears) c_g_date_subtract_years;
	gint function(GDate* date1, GDate* date2) c_g_date_days_between;
	gint function(GDate* lhs, GDate* rhs) c_g_date_compare;
	void function(GDate* date, GDate* minDate, GDate* maxDate) c_g_date_clamp;
	void function(GDate* date1, GDate* date2) c_g_date_order;
	GDateDay function(GDate* date) c_g_date_get_day;
	GDateMonth function(GDate* date) c_g_date_get_month;
	GDateYear function(GDate* date) c_g_date_get_year;
	guint32 function(GDate* date) c_g_date_get_julian;
	GDateWeekday function(GDate* date) c_g_date_get_weekday;
	guint function(GDate* date) c_g_date_get_day_of_year;
	guint8 function(GDateMonth month, GDateYear year) c_g_date_get_days_in_month;
	gboolean function(GDate* date) c_g_date_is_first_of_month;
	gboolean function(GDate* date) c_g_date_is_last_of_month;
	gboolean function(GDateYear year) c_g_date_is_leap_year;
	guint function(GDate* date) c_g_date_get_monday_week_of_year;
	guint8 function(GDateYear year) c_g_date_get_monday_weeks_in_year;
	guint function(GDate* date) c_g_date_get_sunday_week_of_year;
	guint8 function(GDateYear year) c_g_date_get_sunday_weeks_in_year;
	guint function(GDate* date) c_g_date_get_iso8601_week_of_year;
	gsize function(gchar* s, gsize slen, gchar* format, GDate* date) c_g_date_strftime;
	void function(GDate* date, void* tm) c_g_date_to_struct_tm;
	gboolean function(GDate* date) c_g_date_valid;
	gboolean function(GDateDay day) c_g_date_valid_day;
	gboolean function(GDateMonth month) c_g_date_valid_month;
	gboolean function(GDateYear year) c_g_date_valid_year;
	gboolean function(GDateDay day, GDateMonth month, GDateYear year) c_g_date_valid_dmy;
	gboolean function(guint32 julianDate) c_g_date_valid_julian;
	gboolean function(GDateWeekday weekday) c_g_date_valid_weekday;
	
	// glib.RandG
	
	GRand* function(guint32 seed) c_g_rand_new_with_seed;
	GRand* function(guint32* seed, guint seedLength) c_g_rand_new_with_seed_array;
	GRand* function() c_g_rand_new;
	GRand* function(GRand* rand) c_g_rand_copy;
	void function(GRand* rand) c_g_rand_free;
	void function(GRand* rand, guint32 seed) c_g_rand_set_seed;
	void function(GRand* rand, guint32* seed, guint seedLength) c_g_rand_set_seed_array;
	guint32 function(GRand* rand) c_g_rand_int;
	gint32 function(GRand* rand, gint32 begin, gint32 end) c_g_rand_int_range;
	gdouble function(GRand* rand) c_g_rand_double;
	gdouble function(GRand* rand, gdouble begin, gdouble end) c_g_rand_double_range;
	void function(guint32 seed) c_g_random_set_seed;
	guint32 function() c_g_random_int;
	gint32 function(gint32 begin, gint32 end) c_g_random_int_range;
	gdouble function() c_g_random_double;
	gdouble function(gdouble begin, gdouble end) c_g_random_double_range;
	
	// glib.Util
	
	gchar* function() c_g_get_application_name;
	void function(gchar* applicationName) c_g_set_application_name;
	gchar* function() c_g_get_prgname;
	void function(gchar* prgname) c_g_set_prgname;
	gchar* function(gchar* variable) c_g_getenv;
	gboolean function(gchar* variable, gchar* value, gboolean overwrite) c_g_setenv;
	void function(gchar* variable) c_g_unsetenv;
	gchar** function() c_g_listenv;
	gchar* function() c_g_get_user_name;
	gchar* function() c_g_get_real_name;
	gchar* function() c_g_get_user_cache_dir;
	gchar* function() c_g_get_user_data_dir;
	gchar* function() c_g_get_user_config_dir;
	gchar* function(GUserDirectory directory) c_g_get_user_special_dir;
	gchar** function() c_g_get_system_data_dirs;
	gchar** function() c_g_get_system_config_dirs;
	gchar* function() c_g_get_host_name;
	gchar* function() c_g_get_home_dir;
	gchar* function() c_g_get_tmp_dir;
	gchar* function() c_g_get_current_dir;
	gchar* function(gchar* fileName) c_g_basename;
	gboolean function(gchar* fileName) c_g_path_is_absolute;
	gchar* function(gchar* fileName) c_g_path_skip_root;
	gchar* function(gchar* fileName) c_g_path_get_basename;
	gchar* function(gchar* fileName) c_g_path_get_dirname;
	gchar* function(gchar* firstElement, ... ) c_g_build_filename;
	gchar* function(gchar** args) c_g_build_filenamev;
	gchar* function(gchar* separator, gchar* firstElement, ... ) c_g_build_path;
	gchar* function(gchar* separator, gchar** args) c_g_build_pathv;
	char* function(goffset size) c_g_format_size_for_display;
	gchar* function(gchar* program) c_g_find_program_in_path;
	gint function(gulong mask, gint nthBit) c_g_bit_nth_lsf;
	gint function(gulong mask, gint nthBit) c_g_bit_nth_msf;
	guint function(gulong number) c_g_bit_storage;
	guint function(guint num) c_g_spaced_primes_closest;
	void function(GVoidFunc func) c_g_atexit;
	guint function(gchar* string, GDebugKey* keys, guint nkeys) c_g_parse_debug_string;
	void function(gconstpointer pbase, gint totalElems, gsize size, GCompareDataFunc compareFunc, gpointer userData) c_g_qsort_with_data;
	void function(gpointer* nullifyLocation) c_g_nullify_pointer;
	
	// glib.ScannerG
	
	GScanner* function(GScannerConfig* configTempl) c_g_scanner_new;
	void function(GScanner* scanner) c_g_scanner_destroy;
	void function(GScanner* scanner, gint inputFd) c_g_scanner_input_file;
	void function(GScanner* scanner) c_g_scanner_sync_file_offset;
	void function(GScanner* scanner, gchar* text, guint textLen) c_g_scanner_input_text;
	GTokenType function(GScanner* scanner) c_g_scanner_peek_next_token;
	GTokenType function(GScanner* scanner) c_g_scanner_get_next_token;
	gboolean function(GScanner* scanner) c_g_scanner_eof;
	guint function(GScanner* scanner) c_g_scanner_cur_line;
	guint function(GScanner* scanner) c_g_scanner_cur_position;
	GTokenType function(GScanner* scanner) c_g_scanner_cur_token;
	GTokenValue function(GScanner* scanner) c_g_scanner_cur_value;
	guint function(GScanner* scanner, guint scopeId) c_g_scanner_set_scope;
	void function(GScanner* scanner, guint scopeId, gchar* symbol, gpointer value) c_g_scanner_scope_add_symbol;
	void function(GScanner* scanner, guint scopeId, GHFunc func, gpointer userData) c_g_scanner_scope_foreach_symbol;
	gpointer function(GScanner* scanner, guint scopeId, gchar* symbol) c_g_scanner_scope_lookup_symbol;
	void function(GScanner* scanner, guint scopeId, gchar* symbol) c_g_scanner_scope_remove_symbol;
	gpointer function(GScanner* scanner, gchar* symbol) c_g_scanner_lookup_symbol;
	void function(GScanner* scanner, gchar* format, ... ) c_g_scanner_warn;
	void function(GScanner* scanner, gchar* format, ... ) c_g_scanner_error;
	void function(GScanner* scanner, GTokenType expectedToken, gchar* identifierSpec, gchar* symbolSpec, gchar* symbolName, gchar* message, gint isError) c_g_scanner_unexp_token;
	
	// glib.StringCompletion
	
	GCompletion* function(GCompletionFunc func) c_g_completion_new;
	void function(GCompletion* cmp, GList* items) c_g_completion_add_items;
	void function(GCompletion* cmp, GList* items) c_g_completion_remove_items;
	void function(GCompletion* cmp) c_g_completion_clear_items;
	GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix) c_g_completion_complete;
	GList* function(GCompletion* cmp, gchar* prefix, gchar** newPrefix) c_g_completion_complete_utf8;
	void function(GCompletion* cmp, GCompletionStrncmpFunc strncmpFunc) c_g_completion_set_compare;
	void function(GCompletion* cmp) c_g_completion_free;
	
	// glib.Timer
	
	GTimer* function() c_g_timer_new;
	void function(GTimer* timer) c_g_timer_start;
	void function(GTimer* timer) c_g_timer_stop;
	void function(GTimer* timer) c_g_timer_continue;
	gdouble function(GTimer* timer, gulong* microseconds) c_g_timer_elapsed;
	void function(GTimer* timer) c_g_timer_reset;
	void function(GTimer* timer) c_g_timer_destroy;
	
	// glib.Spawn
	
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error) c_g_spawn_async_with_pipes;
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, GPid* childPid, GError** error) c_g_spawn_async;
	gboolean function(gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error) c_g_spawn_sync;
	gboolean function(gchar* commandLine, GError** error) c_g_spawn_command_line_async;
	gboolean function(gchar* commandLine, gchar** standardOutput, gchar** standardError, gint* exitStatus, GError** error) c_g_spawn_command_line_sync;
	void function(GPid pid) c_g_spawn_close_pid;
	
	// glib.FileUtils
	
	GFileError function(gint errNo) c_g_file_error_from_errno;
	gboolean function(gchar* filename, gchar** contents, gsize* length, GError** error) c_g_file_get_contents;
	gboolean function(gchar* filename, gchar* contents, gssize length, GError** error) c_g_file_set_contents;
	gboolean function(gchar* filename, GFileTest test) c_g_file_test;
	gint function(gchar* tmpl) c_g_mkstemp;
	gint function(gchar* tmpl, gchar** nameUsed, GError** error) c_g_file_open_tmp;
	gchar* function(gchar* filename, GError** error) c_g_file_read_link;
	int function(gchar* pathname, int mode) c_g_mkdir_with_parents;
	int function(gchar* filename, int flags, int mode) c_g_open;
	int function(gchar* oldfilename, gchar* newfilename) c_g_rename;
	int function(gchar* filename, int mode) c_g_mkdir;
	int function(gchar* filename, void* buf) c_g_stat;
	int function(gchar* filename, void* buf) c_g_lstat;
	int function(gchar* filename) c_g_unlink;
	int function(gchar* filename) c_g_remove;
	int function(gchar* filename) c_g_rmdir;
	FILE* function(gchar* filename, gchar* mode) c_g_fopen;
	FILE* function(gchar* filename, gchar* mode, FILE* stream) c_g_freopen;
	int function(gchar* filename, int mode) c_g_chmod;
	int function(gchar* filename, int mode) c_g_access;
	int function(gchar* filename, int mode) c_g_creat;
	int function(gchar* path) c_g_chdir;
	int function(gchar* filename, void* utb) c_g_utime;
	
	// glib.Directory
	
	GDir* function(gchar* path, guint flags, GError** error) c_g_dir_open;
	gchar* function(GDir* dir) c_g_dir_read_name;
	void function(GDir* dir) c_g_dir_rewind;
	void function(GDir* dir) c_g_dir_close;
	
	// glib.MappedFile
	
	GMappedFile* function(gchar* filename, gboolean writable, GError** error) c_g_mapped_file_new;
	void function(GMappedFile* file) c_g_mapped_file_free;
	gsize function(GMappedFile* file) c_g_mapped_file_get_length;
	gchar* function(GMappedFile* file) c_g_mapped_file_get_contents;
	
	// glib.URI
	
	char* function(char* uri) c_g_uri_parse_scheme;
	char* function(char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8) c_g_uri_escape_string;
	char* function(char* escapedString, char* illegalCharacters) c_g_uri_unescape_string;
	char* function(char* escapedString, char* escapedStringEnd, char* illegalCharacters) c_g_uri_unescape_segment;
	
	// glib.ShellUtils
	
	gboolean function(gchar* commandLine, gint* argcp, gchar*** argvp, GError** error) c_g_shell_parse_argv;
	gchar* function(gchar* unquotedString) c_g_shell_quote;
	gchar* function(gchar* quotedString, GError** error) c_g_shell_unquote;
	
	// glib.OptionContext
	
	GOptionContext* function(gchar* parameterString) c_g_option_context_new;
	void function(GOptionContext* context, gchar* summary) c_g_option_context_set_summary;
	gchar* function(GOptionContext* context) c_g_option_context_get_summary;
	void function(GOptionContext* context, gchar* description) c_g_option_context_set_description;
	gchar* function(GOptionContext* context) c_g_option_context_get_description;
	void function(GOptionContext* context, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify) c_g_option_context_set_translate_func;
	void function(GOptionContext* context, gchar* domain) c_g_option_context_set_translation_domain;
	void function(GOptionContext* context) c_g_option_context_free;
	gboolean function(GOptionContext* context, gint* argc, gchar*** argv, GError** error) c_g_option_context_parse;
	void function(GOptionContext* context, gboolean helpEnabled) c_g_option_context_set_help_enabled;
	gboolean function(GOptionContext* context) c_g_option_context_get_help_enabled;
	void function(GOptionContext* context, gboolean ignoreUnknown) c_g_option_context_set_ignore_unknown_options;
	gboolean function(GOptionContext* context) c_g_option_context_get_ignore_unknown_options;
	gchar* function(GOptionContext* context, gboolean mainHelp, GOptionGroup* group) c_g_option_context_get_help;
	void function(GOptionContext* context, GOptionEntry* entries, gchar* translationDomain) c_g_option_context_add_main_entries;
	void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_add_group;
	void function(GOptionContext* context, GOptionGroup* group) c_g_option_context_set_main_group;
	GOptionGroup* function(GOptionContext* context) c_g_option_context_get_main_group;
	
	// glib.OptionGroup
	
	GOptionGroup* function(gchar* name, gchar* description, gchar* helpDescription, gpointer userData, GDestroyNotify destroy) c_g_option_group_new;
	void function(GOptionGroup* group) c_g_option_group_free;
	void function(GOptionGroup* group, GOptionEntry* entries) c_g_option_group_add_entries;
	void function(GOptionGroup* group, GOptionParseFunc preParseFunc, GOptionParseFunc postParseFunc) c_g_option_group_set_parse_hooks;
	void function(GOptionGroup* group, GOptionErrorFunc errorFunc) c_g_option_group_set_error_hook;
	void function(GOptionGroup* group, GTranslateFunc func, gpointer data, GDestroyNotify destroyNotify) c_g_option_group_set_translate_func;
	void function(GOptionGroup* group, gchar* domain) c_g_option_group_set_translation_domain;
	
	// glib.Pattern
	
	GPatternSpec* function(gchar* pattern) c_g_pattern_spec_new;
	void function(GPatternSpec* pspec) c_g_pattern_spec_free;
	gboolean function(GPatternSpec* pspec1, GPatternSpec* pspec2) c_g_pattern_spec_equal;
	gboolean function(GPatternSpec* pspec, guint stringLength, gchar* string, gchar* stringReversed) c_g_pattern_match;
	gboolean function(GPatternSpec* pspec, gchar* string) c_g_pattern_match_string;
	gboolean function(gchar* pattern, gchar* string) c_g_pattern_match_simple;
	
	// glib.Regex
	
	GRegex* function(gchar* pattern, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions, GError** error) c_g_regex_new;
	GRegex* function(GRegex* regex) c_g_regex_ref;
	void function(GRegex* regex) c_g_regex_unref;
	gchar* function(GRegex* regex) c_g_regex_get_pattern;
	gint function(GRegex* regex) c_g_regex_get_max_backref;
	gint function(GRegex* regex) c_g_regex_get_capture_count;
	gint function(GRegex* regex, gchar* name) c_g_regex_get_string_number;
	gchar* function(gchar* string, gint length) c_g_regex_escape_string;
	gboolean function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_match_simple;
	gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match;
	gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error) c_g_regex_match_full;
	gboolean function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo) c_g_regex_match_all;
	gboolean function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GMatchInfo** matchInfo, GError** error) c_g_regex_match_all_full;
	gchar** function(gchar* pattern, gchar* string, GRegexCompileFlags compileOptions, GRegexMatchFlags matchOptions) c_g_regex_split_simple;
	gchar** function(GRegex* regex, gchar* string, GRegexMatchFlags matchOptions) c_g_regex_split;
	gchar** function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, gint maxTokens, GError** error) c_g_regex_split_full;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error) c_g_regex_replace;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, gchar* replacement, GRegexMatchFlags matchOptions, GError** error) c_g_regex_replace_literal;
	gchar* function(GRegex* regex, gchar* string, gssize stringLen, gint startPosition, GRegexMatchFlags matchOptions, GRegexEvalCallback eval, gpointer userData, GError** error) c_g_regex_replace_eval;
	gboolean function(gchar* replacement, gboolean* hasReferences, GError** error) c_g_regex_check_replacement;
	
	// glib.MatchInfo
	
	GRegex* function(GMatchInfo* matchInfo) c_g_match_info_get_regex;
	gchar* function(GMatchInfo* matchInfo) c_g_match_info_get_string;
	void function(GMatchInfo* matchInfo) c_g_match_info_free;
	gboolean function(GMatchInfo* matchInfo) c_g_match_info_matches;
	gboolean function(GMatchInfo* matchInfo, GError** error) c_g_match_info_next;
	gint function(GMatchInfo* matchInfo) c_g_match_info_get_match_count;
	gboolean function(GMatchInfo* matchInfo) c_g_match_info_is_partial_match;
	gchar* function(GMatchInfo* matchInfo, gchar* stringToExpand, GError** error) c_g_match_info_expand_references;
	gchar* function(GMatchInfo* matchInfo, gint matchNum) c_g_match_info_fetch;
	gboolean function(GMatchInfo* matchInfo, gint matchNum, gint* startPos, gint* endPos) c_g_match_info_fetch_pos;
	gchar* function(GMatchInfo* matchInfo, gchar* name) c_g_match_info_fetch_named;
	gboolean function(GMatchInfo* matchInfo, gchar* name, gint* startPos, gint* endPos) c_g_match_info_fetch_named_pos;
	gchar** function(GMatchInfo* matchInfo) c_g_match_info_fetch_all;
	
	// glib.SimpleXML
	
	gchar* function(gchar* text, gssize length) c_g_markup_escape_text;
	gchar* function(char* format, ... ) c_g_markup_printf_escaped;
	gchar* function(char* format, va_list args) c_g_markup_vprintf_escaped;
	gboolean function(GMarkupParseContext* context, GError** error) c_g_markup_parse_context_end_parse;
	void function(GMarkupParseContext* context) c_g_markup_parse_context_free;
	void function(GMarkupParseContext* context, gint* lineNumber, gint* charNumber) c_g_markup_parse_context_get_position;
	gchar* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element;
	GSList* function(GMarkupParseContext* context) c_g_markup_parse_context_get_element_stack;
	gpointer function(GMarkupParseContext* context) c_g_markup_parse_context_get_user_data;
	GMarkupParseContext* function(GMarkupParser* parser, GMarkupParseFlags flags, gpointer userData, GDestroyNotify userDataDnotify) c_g_markup_parse_context_new;
	gboolean function(GMarkupParseContext* context, gchar* text, gssize textLen, GError** error) c_g_markup_parse_context_parse;
	void function(GMarkupParseContext* context, GMarkupParser* parser, gpointer userData) c_g_markup_parse_context_push;
	gpointer function(GMarkupParseContext* context) c_g_markup_parse_context_pop;
	gboolean function(gchar* elementName, gchar** attributeNames, gchar** attributeValues, GError** error, GMarkupCollectType firstType, gchar* firstAttr, ... ) c_g_markup_collect_attributes;
	
	// glib.KeyFile
	
	GKeyFile* function() c_g_key_file_new;
	void function(GKeyFile* keyFile) c_g_key_file_free;
	void function(GKeyFile* keyFile, gchar separator) c_g_key_file_set_list_separator;
	gboolean function(GKeyFile* keyFile, gchar* file, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_file;
	gboolean function(GKeyFile* keyFile, gchar* data, gsize length, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_data;
	gboolean function(GKeyFile* keyFile, gchar* file, gchar** fullPath, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_data_dirs;
	gboolean function(GKeyFile* keyFile, gchar* file, gchar** searchDirs, gchar** fullPath, GKeyFileFlags flags, GError** error) c_g_key_file_load_from_dirs;
	gchar* function(GKeyFile* keyFile, gsize* length, GError** error) c_g_key_file_to_data;
	gchar* function(GKeyFile* keyFile) c_g_key_file_get_start_group;
	gchar** function(GKeyFile* keyFile, gsize* length) c_g_key_file_get_groups;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gsize* length, GError** error) c_g_key_file_get_keys;
	gboolean function(GKeyFile* keyFile, gchar* groupName) c_g_key_file_has_group;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_has_key;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_value;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_string;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, GError** error) c_g_key_file_get_locale_string;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_boolean;
	gint function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_integer;
	gdouble function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_double;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_string_list;
	gchar** function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gsize* length, GError** error) c_g_key_file_get_locale_string_list;
	gboolean* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_boolean_list;
	gint* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_integer_list;
	gdouble* function(GKeyFile* keyFile, gchar* groupName, gchar* key, gsize* length, GError** error) c_g_key_file_get_double_list;
	gchar* function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_get_comment;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* value) c_g_key_file_set_value;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* string) c_g_key_file_set_string;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar* string) c_g_key_file_set_locale_string;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean value) c_g_key_file_set_boolean;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint value) c_g_key_file_set_integer;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble value) c_g_key_file_set_double;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar*[] list, gsize length) c_g_key_file_set_string_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* locale, gchar*[] list, gsize length) c_g_key_file_set_locale_string_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gboolean[] list, gsize length) c_g_key_file_set_boolean_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gint[] list, gsize length) c_g_key_file_set_integer_list;
	void function(GKeyFile* keyFile, gchar* groupName, gchar* key, gdouble[] list, gsize length) c_g_key_file_set_double_list;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, gchar* comment, GError** error) c_g_key_file_set_comment;
	gboolean function(GKeyFile* keyFile, gchar* groupName, GError** error) c_g_key_file_remove_group;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_remove_key;
	gboolean function(GKeyFile* keyFile, gchar* groupName, gchar* key, GError** error) c_g_key_file_remove_comment;
	
	// glib.BookmarkFile
	
	GBookmarkFile* function() c_g_bookmark_file_new;
	void function(GBookmarkFile* bookmark) c_g_bookmark_file_free;
	gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error) c_g_bookmark_file_load_from_file;
	gboolean function(GBookmarkFile* bookmark, gchar* data, gsize length, GError** error) c_g_bookmark_file_load_from_data;
	gboolean function(GBookmarkFile* bookmark, gchar* file, gchar** fullPath, GError** error) c_g_bookmark_file_load_from_data_dirs;
	gchar* function(GBookmarkFile* bookmark, gsize* length, GError** error) c_g_bookmark_file_to_data;
	gboolean function(GBookmarkFile* bookmark, gchar* filename, GError** error) c_g_bookmark_file_to_file;
	gboolean function(GBookmarkFile* bookmark, gchar* uri) c_g_bookmark_file_has_item;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error) c_g_bookmark_file_has_group;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error) c_g_bookmark_file_has_application;
	gint function(GBookmarkFile* bookmark) c_g_bookmark_file_get_size;
	gchar** function(GBookmarkFile* bookmark, gsize* length) c_g_bookmark_file_get_uris;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_title;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_description;
	gchar* function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_mime_type;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_is_private;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar** href, gchar** mimeType, GError** error) c_g_bookmark_file_get_icon;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_added;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_modified;
	time_t function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_get_visited;
	gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error) c_g_bookmark_file_get_groups;
	gchar** function(GBookmarkFile* bookmark, gchar* uri, gsize* length, GError** error) c_g_bookmark_file_get_applications;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar** exec, guint* count, time_t* stamp, GError** error) c_g_bookmark_file_get_app_info;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* title) c_g_bookmark_file_set_title;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* description) c_g_bookmark_file_set_description;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* mimeType) c_g_bookmark_file_set_mime_type;
	void function(GBookmarkFile* bookmark, gchar* uri, gboolean isPrivate) c_g_bookmark_file_set_is_private;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* href, gchar* mimeType) c_g_bookmark_file_set_icon;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t added) c_g_bookmark_file_set_added;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar** groups, gsize length) c_g_bookmark_file_set_groups;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t modified) c_g_bookmark_file_set_modified;
	void function(GBookmarkFile* bookmark, gchar* uri, time_t visited) c_g_bookmark_file_set_visited;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec, gint count, time_t stamp, GError** error) c_g_bookmark_file_set_app_info;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* group) c_g_bookmark_file_add_group;
	void function(GBookmarkFile* bookmark, gchar* uri, gchar* name, gchar* exec) c_g_bookmark_file_add_application;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* group, GError** error) c_g_bookmark_file_remove_group;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, gchar* name, GError** error) c_g_bookmark_file_remove_application;
	gboolean function(GBookmarkFile* bookmark, gchar* uri, GError** error) c_g_bookmark_file_remove_item;
	gboolean function(GBookmarkFile* bookmark, gchar* oldUri, gchar* newUri, GError** error) c_g_bookmark_file_move_item;
	
	// glib.WindowsUtils
	
	gchar* function(gint error) c_g_win32_error_message;
	gchar* function() c_g_win32_getlocale;
	gchar* function(gchar* p, gchar* dllName) c_g_win32_get_package_installation_directory;
	gchar* function(gpointer hmodule) c_g_win32_get_package_installation_directory_of_module;
	gchar* function(gchar* p, gchar* dllName, gchar* subdir) c_g_win32_get_package_installation_subdirectory;
	guint function() c_g_win32_get_windows_version;
	gchar* function(gchar* utf8filename) c_g_win32_locale_filename_from_utf8;
	
	// glib.MemorySlice
	
	gpointer function(gsize blockSize) c_g_slice_alloc;
	gpointer function(gsize blockSize) c_g_slice_alloc0;
	gpointer function(gsize blockSize, gconstpointer memBlock) c_g_slice_copy;
	void function(gsize blockSize, gpointer memBlock) c_g_slice_free1;
	void function(gsize blockSize, gpointer memChain, gsize nextOffset) c_g_slice_free_chain_with_offset;
	
	// glib.MemoryChunk
	
	GMemChunk* function(gchar* name, gint atomSize, gsize areaSize, gint type) c_g_mem_chunk_new;
	gpointer function(GMemChunk* memChunk) c_g_mem_chunk_alloc;
	gpointer function(GMemChunk* memChunk) c_g_mem_chunk_alloc0;
	void function(GMemChunk* memChunk, gpointer mem) c_g_mem_chunk_free;
	void function(GMemChunk* memChunk) c_g_mem_chunk_destroy;
	void function(GMemChunk* memChunk) c_g_mem_chunk_reset;
	void function(GMemChunk* memChunk) c_g_mem_chunk_clean;
	void function() c_g_blow_chunks;
	void function() c_g_mem_chunk_info;
	void function(GMemChunk* memChunk) c_g_mem_chunk_print;
	
	// glib.ListG
	
	GList* function(GList* list, gpointer data) c_g_list_append;
	GList* function(GList* list, gpointer data) c_g_list_prepend;
	GList* function(GList* list, gpointer data, gint position) c_g_list_insert;
	GList* function(GList* list, GList* sibling, gpointer data) c_g_list_insert_before;
	GList* function(GList* list, gpointer data, GCompareFunc func) c_g_list_insert_sorted;
	GList* function(GList* list, gconstpointer data) c_g_list_remove;
	GList* function(GList* list, GList* llink) c_g_list_remove_link;
	GList* function(GList* list, GList* link) c_g_list_delete_link;
	GList* function(GList* list, gconstpointer data) c_g_list_remove_all;
	void function(GList* list) c_g_list_free;
	GList* function() c_g_list_alloc;
	void function(GList* list) c_g_list_free_1;
	guint function(GList* list) c_g_list_length;
	GList* function(GList* list) c_g_list_copy;
	GList* function(GList* list) c_g_list_reverse;
	GList* function(GList* list, GCompareFunc compareFunc) c_g_list_sort;
	GList* function(GList* list, gpointer data, GCompareDataFunc func, gpointer userData) c_g_list_insert_sorted_with_data;
	GList* function(GList* list, GCompareDataFunc compareFunc, gpointer userData) c_g_list_sort_with_data;
	GList* function(GList* list1, GList* list2) c_g_list_concat;
	void function(GList* list, GFunc func, gpointer userData) c_g_list_foreach;
	GList* function(GList* list) c_g_list_first;
	GList* function(GList* list) c_g_list_last;
	GList* function(GList* list, guint n) c_g_list_nth;
	gpointer function(GList* list, guint n) c_g_list_nth_data;
	GList* function(GList* list, guint n) c_g_list_nth_prev;
	GList* function(GList* list, gconstpointer data) c_g_list_find;
	GList* function(GList* list, gconstpointer data, GCompareFunc func) c_g_list_find_custom;
	gint function(GList* list, GList* llink) c_g_list_position;
	gint function(GList* list, gconstpointer data) c_g_list_index;
	void function(gpointer allocator) c_g_list_push_allocator;
	void function() c_g_list_pop_allocator;
	
	// glib.ListSG
	
	GSList* function() c_g_slist_alloc;
	GSList* function(GSList* list, gpointer data) c_g_slist_append;
	GSList* function(GSList* list, gpointer data) c_g_slist_prepend;
	GSList* function(GSList* list, gpointer data, gint position) c_g_slist_insert;
	GSList* function(GSList* slist, GSList* sibling, gpointer data) c_g_slist_insert_before;
	GSList* function(GSList* list, gpointer data, GCompareFunc func) c_g_slist_insert_sorted;
	GSList* function(GSList* list, gconstpointer data) c_g_slist_remove;
	GSList* function(GSList* list, GSList* link) c_g_slist_remove_link;
	GSList* function(GSList* list, GSList* link) c_g_slist_delete_link;
	GSList* function(GSList* list, gconstpointer data) c_g_slist_remove_all;
	void function(GSList* list) c_g_slist_free;
	void function(GSList* list) c_g_slist_free_1;
	guint function(GSList* list) c_g_slist_length;
	GSList* function(GSList* list) c_g_slist_copy;
	GSList* function(GSList* list) c_g_slist_reverse;
	GSList* function(GSList* list, gpointer data, GCompareDataFunc func, gpointer userData) c_g_slist_insert_sorted_with_data;
	GSList* function(GSList* list, GCompareFunc compareFunc) c_g_slist_sort;
	GSList* function(GSList* list, GCompareDataFunc compareFunc, gpointer userData) c_g_slist_sort_with_data;
	GSList* function(GSList* list1, GSList* list2) c_g_slist_concat;
	void function(GSList* list, GFunc func, gpointer userData) c_g_slist_foreach;
	GSList* function(GSList* list) c_g_slist_last;
	GSList* function(GSList* list, guint n) c_g_slist_nth;
	gpointer function(GSList* list, guint n) c_g_slist_nth_data;
	GSList* function(GSList* list, gconstpointer data) c_g_slist_find;
	GSList* function(GSList* list, gconstpointer data, GCompareFunc func) c_g_slist_find_custom;
	gint function(GSList* list, GSList* llink) c_g_slist_position;
	gint function(GSList* list, gconstpointer data) c_g_slist_index;
	void function(gpointer dummy) c_g_slist_push_allocator;
	void function() c_g_slist_pop_allocator;
	
	// glib.QueueG
	
	GQueue* function() c_g_queue_new;
	void function(GQueue* queue) c_g_queue_free;
	void function(GQueue* queue) c_g_queue_init;
	void function(GQueue* queue) c_g_queue_clear;
	gboolean function(GQueue* queue) c_g_queue_is_empty;
	guint function(GQueue* queue) c_g_queue_get_length;
	void function(GQueue* queue) c_g_queue_reverse;
	GQueue* function(GQueue* queue) c_g_queue_copy;
	void function(GQueue* queue, GFunc func, gpointer userData) c_g_queue_foreach;
	GList* function(GQueue* queue, gconstpointer data) c_g_queue_find;
	GList* function(GQueue* queue, gconstpointer data, GCompareFunc func) c_g_queue_find_custom;
	void function(GQueue* queue, GCompareDataFunc compareFunc, gpointer userData) c_g_queue_sort;
	void function(GQueue* queue, gpointer data) c_g_queue_push_head;
	void function(GQueue* queue, gpointer data) c_g_queue_push_tail;
	void function(GQueue* queue, gpointer data, gint n) c_g_queue_push_nth;
	gpointer function(GQueue* queue) c_g_queue_pop_head;
	gpointer function(GQueue* queue) c_g_queue_pop_tail;
	gpointer function(GQueue* queue, guint n) c_g_queue_pop_nth;
	gpointer function(GQueue* queue) c_g_queue_peek_head;
	gpointer function(GQueue* queue) c_g_queue_peek_tail;
	gpointer function(GQueue* queue, guint n) c_g_queue_peek_nth;
	gint function(GQueue* queue, gconstpointer data) c_g_queue_index;
	void function(GQueue* queue, gconstpointer data) c_g_queue_remove;
	void function(GQueue* queue, gconstpointer data) c_g_queue_remove_all;
	void function(GQueue* queue, GList* sibling, gpointer data) c_g_queue_insert_before;
	void function(GQueue* queue, GList* sibling, gpointer data) c_g_queue_insert_after;
	void function(GQueue* queue, gpointer data, GCompareDataFunc func, gpointer userData) c_g_queue_insert_sorted;
	void function(GQueue* queue, GList* link) c_g_queue_push_head_link;
	void function(GQueue* queue, GList* link) c_g_queue_push_tail_link;
	void function(GQueue* queue, gint n, GList* link) c_g_queue_push_nth_link;
	GList* function(GQueue* queue) c_g_queue_pop_head_link;
	GList* function(GQueue* queue) c_g_queue_pop_tail_link;
	GList* function(GQueue* queue, guint n) c_g_queue_pop_nth_link;
	GList* function(GQueue* queue) c_g_queue_peek_head_link;
	GList* function(GQueue* queue) c_g_queue_peek_tail_link;
	GList* function(GQueue* queue, guint n) c_g_queue_peek_nth_link;
	gint function(GQueue* queue, GList* link) c_g_queue_link_index;
	void function(GQueue* queue, GList* link) c_g_queue_unlink;
	void function(GQueue* queue, GList* link) c_g_queue_delete_link;
	
	// glib.Sequence
	
	GSequence* function(GDestroyNotify dataDestroy) c_g_sequence_new;
	void function(GSequence* seq) c_g_sequence_free;
	gint function(GSequence* seq) c_g_sequence_get_length;
	void function(GSequence* seq, GFunc func, gpointer userData) c_g_sequence_foreach;
	void function(GSequenceIter* begin, GSequenceIter* end, GFunc func, gpointer userData) c_g_sequence_foreach_range;
	void function(GSequence* seq, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_sort;
	void function(GSequence* seq, GSequenceIterCompareFunc cmpFunc, gpointer cmpData) c_g_sequence_sort_iter;
	GSequenceIter* function(GSequence* seq) c_g_sequence_get_begin_iter;
	GSequenceIter* function(GSequence* seq) c_g_sequence_get_end_iter;
	GSequenceIter* function(GSequence* seq, gint pos) c_g_sequence_get_iter_at_pos;
	GSequenceIter* function(GSequence* seq, gpointer data) c_g_sequence_append;
	GSequenceIter* function(GSequence* seq, gpointer data) c_g_sequence_prepend;
	GSequenceIter* function(GSequenceIter* iter, gpointer data) c_g_sequence_insert_before;
	void function(GSequenceIter* src, GSequenceIter* dest) c_g_sequence_move;
	void function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_swap;
	GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_insert_sorted;
	GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_insert_sorted_iter;
	void function(GSequenceIter* iter, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_sort_changed;
	void function(GSequenceIter* iter, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_sort_changed_iter;
	void function(GSequenceIter* iter) c_g_sequence_remove;
	void function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_remove_range;
	void function(GSequenceIter* dest, GSequenceIter* begin, GSequenceIter* end) c_g_sequence_move_range;
	GSequenceIter* function(GSequence* seq, gpointer data, GCompareDataFunc cmpFunc, gpointer cmpData) c_g_sequence_search;
	GSequenceIter* function(GSequence* seq, gpointer data, GSequenceIterCompareFunc iterCmp, gpointer cmpData) c_g_sequence_search_iter;
	gpointer function(GSequenceIter* iter) c_g_sequence_get;
	void function(GSequenceIter* iter, gpointer data) c_g_sequence_set;
	GSequenceIter* function(GSequenceIter* begin, GSequenceIter* end) c_g_sequence_range_get_midpoint;
	
	// glib.SequenceIter
	
	gboolean function(GSequenceIter* iter) c_g_sequence_iter_is_begin;
	gboolean function(GSequenceIter* iter) c_g_sequence_iter_is_end;
	GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_next;
	GSequenceIter* function(GSequenceIter* iter) c_g_sequence_iter_prev;
	gint function(GSequenceIter* iter) c_g_sequence_iter_get_position;
	GSequenceIter* function(GSequenceIter* iter, gint delta) c_g_sequence_iter_move;
	GSequence* function(GSequenceIter* iter) c_g_sequence_iter_get_sequence;
	gint function(GSequenceIter* a, GSequenceIter* b) c_g_sequence_iter_compare;
	
	// glib.TrashStack
	
	void function(GTrashStack** stackP, gpointer dataP) c_g_trash_stack_push;
	gpointer function(GTrashStack** stackP) c_g_trash_stack_pop;
	gpointer function(GTrashStack** stackP) c_g_trash_stack_peek;
	guint function(GTrashStack** stackP) c_g_trash_stack_height;
	
	// glib.HashTable
	
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc) c_g_hash_table_new;
	GHashTable* function(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_hash_table_new_full;
	void function(GHashTable* hashTable, gpointer key, gpointer value) c_g_hash_table_insert;
	void function(GHashTable* hashTable, gpointer key, gpointer value) c_g_hash_table_replace;
	guint function(GHashTable* hashTable) c_g_hash_table_size;
	gpointer function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_lookup;
	gboolean function(GHashTable* hashTable, gconstpointer lookupKey, gpointer* origKey, gpointer* value) c_g_hash_table_lookup_extended;
	void function(GHashTable* hashTable, GHFunc func, gpointer userData) c_g_hash_table_foreach;
	gpointer function(GHashTable* hashTable, GHRFunc predicate, gpointer userData) c_g_hash_table_find;
	gboolean function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_remove;
	gboolean function(GHashTable* hashTable, gconstpointer key) c_g_hash_table_steal;
	guint function(GHashTable* hashTable, GHRFunc func, gpointer userData) c_g_hash_table_foreach_remove;
	guint function(GHashTable* hashTable, GHRFunc func, gpointer userData) c_g_hash_table_foreach_steal;
	void function(GHashTable* hashTable) c_g_hash_table_remove_all;
	void function(GHashTable* hashTable) c_g_hash_table_steal_all;
	GList* function(GHashTable* hashTable) c_g_hash_table_get_keys;
	GList* function(GHashTable* hashTable) c_g_hash_table_get_values;
	void function(GHashTable* hashTable) c_g_hash_table_destroy;
	GHashTable* function(GHashTable* hashTable) c_g_hash_table_ref;
	void function(GHashTable* hashTable) c_g_hash_table_unref;
	gboolean function(gconstpointer v1, gconstpointer v2) c_g_direct_equal;
	guint function(gconstpointer v) c_g_direct_hash;
	gboolean function(gconstpointer v1, gconstpointer v2) c_g_int_equal;
	guint function(gconstpointer v) c_g_int_hash;
	gboolean function(gconstpointer v1, gconstpointer v2) c_g_str_equal;
	guint function(gconstpointer v) c_g_str_hash;
	
	// glib.HashTableIter
	
	void function(GHashTableIter* iter, GHashTable* hashTable) c_g_hash_table_iter_init;
	gboolean function(GHashTableIter* iter, gpointer* key, gpointer* value) c_g_hash_table_iter_next;
	GHashTable* function(GHashTableIter* iter) c_g_hash_table_iter_get_hash_table;
	void function(GHashTableIter* iter) c_g_hash_table_iter_remove;
	void function(GHashTableIter* iter) c_g_hash_table_iter_steal;
	
	// glib.StringG
	
	GString* function(gchar* init) c_g_string_new;
	GString* function(gchar* init, gssize len) c_g_string_new_len;
	GString* function(gsize dflSize) c_g_string_sized_new;
	GString* function(GString* string, gchar* rval) c_g_string_assign;
	void function(GString* string, gchar* format, va_list args) c_g_string_vprintf;
	void function(GString* string, gchar* format, va_list args) c_g_string_append_vprintf;
	void function(GString* string, gchar* format, ... ) c_g_string_printf;
	void function(GString* string, gchar* format, ... ) c_g_string_append_printf;
	GString* function(GString* string, gchar* val) c_g_string_append;
	GString* function(GString* string, gchar c) c_g_string_append_c;
	GString* function(GString* string, gunichar wc) c_g_string_append_unichar;
	GString* function(GString* string, gchar* val, gssize len) c_g_string_append_len;
	GString* function(GString* string, char* unescaped, char* reservedCharsAllowed, gboolean allowUtf8) c_g_string_append_uri_escaped;
	GString* function(GString* string, gchar* val) c_g_string_prepend;
	GString* function(GString* string, gchar c) c_g_string_prepend_c;
	GString* function(GString* string, gunichar wc) c_g_string_prepend_unichar;
	GString* function(GString* string, gchar* val, gssize len) c_g_string_prepend_len;
	GString* function(GString* string, gssize pos, gchar* val) c_g_string_insert;
	GString* function(GString* string, gssize pos, gchar c) c_g_string_insert_c;
	GString* function(GString* string, gssize pos, gunichar wc) c_g_string_insert_unichar;
	GString* function(GString* string, gssize pos, gchar* val, gssize len) c_g_string_insert_len;
	GString* function(GString* string, gsize pos, gchar* val) c_g_string_overwrite;
	GString* function(GString* string, gsize pos, gchar* val, gssize len) c_g_string_overwrite_len;
	GString* function(GString* string, gssize pos, gssize len) c_g_string_erase;
	GString* function(GString* string, gsize len) c_g_string_truncate;
	GString* function(GString* string, gsize len) c_g_string_set_size;
	gchar* function(GString* string, gboolean freeSegment) c_g_string_free;
	GString* function(GString* string) c_g_string_up;
	GString* function(GString* string) c_g_string_down;
	guint function(GString* str) c_g_string_hash;
	gboolean function(GString* v, GString* v2) c_g_string_equal;
	
	// glib.StringGChunk
	
	GStringChunk* function(gsize size) c_g_string_chunk_new;
	gchar* function(GStringChunk* chunk, gchar* string) c_g_string_chunk_insert;
	gchar* function(GStringChunk* chunk, gchar* string) c_g_string_chunk_insert_const;
	gchar* function(GStringChunk* chunk, gchar* string, gssize len) c_g_string_chunk_insert_len;
	void function(GStringChunk* chunk) c_g_string_chunk_clear;
	void function(GStringChunk* chunk) c_g_string_chunk_free;
	
	// glib.ArrayG
	
	GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize) c_g_array_new;
	GArray* function(gboolean zeroTerminated, gboolean clear, guint elementSize, guint reservedSize) c_g_array_sized_new;
	GArray* function(GArray* array, gconstpointer data, guint len) c_g_array_append_vals;
	GArray* function(GArray* array, gconstpointer data, guint len) c_g_array_prepend_vals;
	GArray* function(GArray* array, guint index, gconstpointer data, guint len) c_g_array_insert_vals;
	GArray* function(GArray* array, guint index) c_g_array_remove_index;
	GArray* function(GArray* array, guint index) c_g_array_remove_index_fast;
	GArray* function(GArray* array, guint index, guint length) c_g_array_remove_range;
	void function(GArray* array, GCompareFunc compareFunc) c_g_array_sort;
	void function(GArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_array_sort_with_data;
	GArray* function(GArray* array, guint length) c_g_array_set_size;
	gchar* function(GArray* array, gboolean freeSegment) c_g_array_free;
	
	// glib.PtrArray
	
	GPtrArray* function() c_g_ptr_array_new;
	GPtrArray* function(guint reservedSize) c_g_ptr_array_sized_new;
	void function(GPtrArray* array, gpointer data) c_g_ptr_array_add;
	gboolean function(GPtrArray* array, gpointer data) c_g_ptr_array_remove;
	gpointer function(GPtrArray* array, guint index) c_g_ptr_array_remove_index;
	gboolean function(GPtrArray* array, gpointer data) c_g_ptr_array_remove_fast;
	gpointer function(GPtrArray* array, guint index) c_g_ptr_array_remove_index_fast;
	void function(GPtrArray* array, guint index, guint length) c_g_ptr_array_remove_range;
	void function(GPtrArray* array, GCompareFunc compareFunc) c_g_ptr_array_sort;
	void function(GPtrArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_ptr_array_sort_with_data;
	void function(GPtrArray* array, gint length) c_g_ptr_array_set_size;
	gpointer* function(GPtrArray* array, gboolean freeSeg) c_g_ptr_array_free;
	void function(GPtrArray* array, GFunc func, gpointer userData) c_g_ptr_array_foreach;
	
	// glib.ByteArray
	
	GByteArray* function() c_g_byte_array_new;
	GByteArray* function(guint reservedSize) c_g_byte_array_sized_new;
	GByteArray* function(GByteArray* array, guint8* data, guint len) c_g_byte_array_append;
	GByteArray* function(GByteArray* array, guint8* data, guint len) c_g_byte_array_prepend;
	GByteArray* function(GByteArray* array, guint index) c_g_byte_array_remove_index;
	GByteArray* function(GByteArray* array, guint index) c_g_byte_array_remove_index_fast;
	GByteArray* function(GByteArray* array, guint index, guint length) c_g_byte_array_remove_range;
	void function(GByteArray* array, GCompareFunc compareFunc) c_g_byte_array_sort;
	void function(GByteArray* array, GCompareDataFunc compareFunc, gpointer userData) c_g_byte_array_sort_with_data;
	GByteArray* function(GByteArray* array, guint length) c_g_byte_array_set_size;
	guint8* function(GByteArray* array, gboolean freeSegment) c_g_byte_array_free;
	
	// glib.BBTree
	
	GTree* function(GCompareFunc keyCompareFunc) c_g_tree_new;
	GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData) c_g_tree_new_with_data;
	GTree* function(GCompareDataFunc keyCompareFunc, gpointer keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc) c_g_tree_new_full;
	void function(GTree* tree, gpointer key, gpointer value) c_g_tree_insert;
	void function(GTree* tree, gpointer key, gpointer value) c_g_tree_replace;
	gint function(GTree* tree) c_g_tree_nnodes;
	gint function(GTree* tree) c_g_tree_height;
	gpointer function(GTree* tree, gconstpointer key) c_g_tree_lookup;
	gboolean function(GTree* tree, gconstpointer lookupKey, gpointer* origKey, gpointer* value) c_g_tree_lookup_extended;
	void function(GTree* tree, GTraverseFunc func, gpointer userData) c_g_tree_foreach;
	void function(GTree* tree, GTraverseFunc traverseFunc, GTraverseType traverseType, gpointer userData) c_g_tree_traverse;
	gpointer function(GTree* tree, GCompareFunc searchFunc, gconstpointer userData) c_g_tree_search;
	gboolean function(GTree* tree, gconstpointer key) c_g_tree_remove;
	gboolean function(GTree* tree, gconstpointer key) c_g_tree_steal;
	void function(GTree* tree) c_g_tree_destroy;
	
	// glib.Node
	
	GNode* function(gpointer data) c_g_node_new;
	GNode* function(GNode* node) c_g_node_copy;
	GNode* function(GNode* node, GCopyFunc copyFunc, gpointer data) c_g_node_copy_deep;
	GNode* function(GNode* parent, gint position, GNode* node) c_g_node_insert;
	GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_before;
	GNode* function(GNode* parent, GNode* sibling, GNode* node) c_g_node_insert_after;
	GNode* function(GNode* parent, GNode* node) c_g_node_prepend;
	void function(GNode* node) c_g_node_reverse_children;
	void function(GNode* root, GTraverseType order, GTraverseFlags flags, gint maxDepth, GNodeTraverseFunc func, gpointer data) c_g_node_traverse;
	void function(GNode* node, GTraverseFlags flags, GNodeForeachFunc func, gpointer data) c_g_node_children_foreach;
	GNode* function(GNode* node) c_g_node_get_root;
	GNode* function(GNode* root, GTraverseType order, GTraverseFlags flags, gpointer data) c_g_node_find;
	GNode* function(GNode* node, GTraverseFlags flags, gpointer data) c_g_node_find_child;
	gint function(GNode* node, gpointer data) c_g_node_child_index;
	gint function(GNode* node, GNode* child) c_g_node_child_position;
	GNode* function(GNode* node) c_g_node_last_child;
	GNode* function(GNode* node, guint n) c_g_node_nth_child;
	GNode* function(GNode* node) c_g_node_first_sibling;
	GNode* function(GNode* node) c_g_node_last_sibling;
	guint function(GNode* node) c_g_node_depth;
	guint function(GNode* root, GTraverseFlags flags) c_g_node_n_nodes;
	guint function(GNode* node) c_g_node_n_children;
	gboolean function(GNode* node, GNode* descendant) c_g_node_is_ancestor;
	guint function(GNode* root) c_g_node_max_height;
	void function(GNode* node) c_g_node_unlink;
	void function(GNode* root) c_g_node_destroy;
	void function(gpointer dummy) c_g_node_push_allocator;
	void function() c_g_node_pop_allocator;
	
	// glib.Quark
	
	GQuark function(gchar* string) c_g_quark_from_string;
	GQuark function(gchar* string) c_g_quark_from_static_string;
	gchar* function(GQuark quark) c_g_quark_to_string;
	GQuark function(gchar* string) c_g_quark_try_string;
	gchar* function(gchar* string) c_g_intern_string;
	gchar* function(gchar* string) c_g_intern_static_string;
	
	// glib.DataList
	
	void function(GData** datalist) c_g_datalist_init;
	void function(GData** datalist, GQuark keyId, gpointer data, GDestroyNotify destroyFunc) c_g_datalist_id_set_data_full;
	gpointer function(GData** datalist, GQuark keyId) c_g_datalist_id_get_data;
	gpointer function(GData** datalist, GQuark keyId) c_g_datalist_id_remove_no_notify;
	void function(GData** datalist, GDataForeachFunc func, gpointer userData) c_g_datalist_foreach;
	void function(GData** datalist) c_g_datalist_clear;
	void function(GData** datalist, guint flags) c_g_datalist_set_flags;
	void function(GData** datalist, guint flags) c_g_datalist_unset_flags;
	guint function(GData** datalist) c_g_datalist_get_flags;
	
	// glib.Dataset
	
	void function(gconstpointer datasetLocation, GQuark keyId, gpointer data, GDestroyNotify destroyFunc) c_g_dataset_id_set_data_full;
	gpointer function(gconstpointer datasetLocation, GQuark keyId) c_g_dataset_id_get_data;
	gpointer function(gconstpointer datasetLocation, GQuark keyId) c_g_dataset_id_remove_no_notify;
	void function(gconstpointer datasetLocation, GDataForeachFunc func, gpointer userData) c_g_dataset_foreach;
	void function(gconstpointer datasetLocation) c_g_dataset_destroy;
	
	// glib.Relation
	
	GRelation* function(gint fields) c_g_relation_new;
	void function(GRelation* relation, gint field, GHashFunc hashFunc, GEqualFunc keyEqualFunc) c_g_relation_index;
	void function(GRelation* relation, ... ) c_g_relation_insert;
	gboolean function(GRelation* relation, ... ) c_g_relation_exists;
	gint function(GRelation* relation, gconstpointer key, gint field) c_g_relation_count;
	GTuples* function(GRelation* relation, gconstpointer key, gint field) c_g_relation_select;
	gint function(GRelation* relation, gconstpointer key, gint field) c_g_relation_delete;
	void function(GRelation* relation) c_g_relation_destroy;
	void function(GRelation* relation) c_g_relation_print;
	
	// glib.Tuples
	
	void function(GTuples* tuples) c_g_tuples_destroy;
	gpointer function(GTuples* tuples, gint index, gint field) c_g_tuples_index;
	
	// glib.Cache
	
	GCache* function(GCacheNewFunc valueNewFunc, GCacheDestroyFunc valueDestroyFunc, GCacheDupFunc keyDupFunc, GCacheDestroyFunc keyDestroyFunc, GHashFunc hashKeyFunc, GHashFunc hashValueFunc, GEqualFunc keyEqualFunc) c_g_cache_new;
	gpointer function(GCache* cache, gpointer key) c_g_cache_insert;
	void function(GCache* cache, gconstpointer value) c_g_cache_remove;
	void function(GCache* cache) c_g_cache_destroy;
	void function(GCache* cache, GHFunc func, gpointer userData) c_g_cache_key_foreach;
	void function(GCache* cache, GHFunc func, gpointer userData) c_g_cache_value_foreach;
	
	// glib.Allocator
	
	GAllocator* function(gchar* name, guint nPreallocs) c_g_allocator_new;
	void function(GAllocator* allocator) c_g_allocator_free;
}

// glib.Version

alias c_glib_check_version  glib_check_version;

// glib.Atomic

alias c_g_atomic_int_get  g_atomic_int_get;
alias c_g_atomic_int_set  g_atomic_int_set;
alias c_g_atomic_int_add  g_atomic_int_add;
alias c_g_atomic_int_exchange_and_add  g_atomic_int_exchange_and_add;
alias c_g_atomic_int_compare_and_exchange  g_atomic_int_compare_and_exchange;
alias c_g_atomic_pointer_get  g_atomic_pointer_get;
alias c_g_atomic_pointer_set  g_atomic_pointer_set;
alias c_g_atomic_pointer_compare_and_exchange  g_atomic_pointer_compare_and_exchange;
alias c_g_atomic_int_inc  g_atomic_int_inc;
alias c_g_atomic_int_dec_and_test  g_atomic_int_dec_and_test;

// glib.MainLoop

alias c_g_main_loop_new  g_main_loop_new;
alias c_g_main_loop_ref  g_main_loop_ref;
alias c_g_main_loop_unref  g_main_loop_unref;
alias c_g_main_loop_run  g_main_loop_run;
alias c_g_main_loop_quit  g_main_loop_quit;
alias c_g_main_loop_is_running  g_main_loop_is_running;
alias c_g_main_loop_get_context  g_main_loop_get_context;
alias c_g_main_depth  g_main_depth;
alias c_g_main_current_source  g_main_current_source;
alias c_g_poll  g_poll;

// glib.MainContext

alias c_g_main_context_new  g_main_context_new;
alias c_g_main_context_ref  g_main_context_ref;
alias c_g_main_context_unref  g_main_context_unref;
alias c_g_main_context_default  g_main_context_default;
alias c_g_main_context_iteration  g_main_context_iteration;
alias c_g_main_context_pending  g_main_context_pending;
alias c_g_main_context_find_source_by_id  g_main_context_find_source_by_id;
alias c_g_main_context_find_source_by_user_data  g_main_context_find_source_by_user_data;
alias c_g_main_context_find_source_by_funcs_user_data  g_main_context_find_source_by_funcs_user_data;
alias c_g_main_context_wakeup  g_main_context_wakeup;
alias c_g_main_context_acquire  g_main_context_acquire;
alias c_g_main_context_release  g_main_context_release;
alias c_g_main_context_is_owner  g_main_context_is_owner;
alias c_g_main_context_wait  g_main_context_wait;
alias c_g_main_context_prepare  g_main_context_prepare;
alias c_g_main_context_query  g_main_context_query;
alias c_g_main_context_check  g_main_context_check;
alias c_g_main_context_dispatch  g_main_context_dispatch;
alias c_g_main_context_set_poll_func  g_main_context_set_poll_func;
alias c_g_main_context_get_poll_func  g_main_context_get_poll_func;
alias c_g_main_context_add_poll  g_main_context_add_poll;
alias c_g_main_context_remove_poll  g_main_context_remove_poll;

// glib.Timeout

alias c_g_timeout_source_new  g_timeout_source_new;
alias c_g_timeout_source_new_seconds  g_timeout_source_new_seconds;
alias c_g_timeout_add  g_timeout_add;
alias c_g_timeout_add_full  g_timeout_add_full;
alias c_g_timeout_add_seconds  g_timeout_add_seconds;
alias c_g_timeout_add_seconds_full  g_timeout_add_seconds_full;

// glib.Idle

alias c_g_idle_source_new  g_idle_source_new;
alias c_g_idle_add  g_idle_add;
alias c_g_idle_add_full  g_idle_add_full;
alias c_g_idle_remove_by_data  g_idle_remove_by_data;

// glib.Child

alias c_g_child_watch_source_new  g_child_watch_source_new;
alias c_g_child_watch_add  g_child_watch_add;
alias c_g_child_watch_add_full  g_child_watch_add_full;

// glib.Source

alias c_g_source_new  g_source_new;
alias c_g_source_ref  g_source_ref;
alias c_g_source_unref  g_source_unref;
alias c_g_source_set_funcs  g_source_set_funcs;
alias c_g_source_attach  g_source_attach;
alias c_g_source_destroy  g_source_destroy;
alias c_g_source_is_destroyed  g_source_is_destroyed;
alias c_g_source_set_priority  g_source_set_priority;
alias c_g_source_get_priority  g_source_get_priority;
alias c_g_source_set_can_recurse  g_source_set_can_recurse;
alias c_g_source_get_can_recurse  g_source_get_can_recurse;
alias c_g_source_get_id  g_source_get_id;
alias c_g_source_get_context  g_source_get_context;
alias c_g_source_set_callback  g_source_set_callback;
alias c_g_source_set_callback_indirect  g_source_set_callback_indirect;
alias c_g_source_add_poll  g_source_add_poll;
alias c_g_source_remove_poll  g_source_remove_poll;
alias c_g_source_get_current_time  g_source_get_current_time;
alias c_g_source_remove  g_source_remove;
alias c_g_source_remove_by_funcs_user_data  g_source_remove_by_funcs_user_data;
alias c_g_source_remove_by_user_data  g_source_remove_by_user_data;

// glib.ThreadPool

alias c_g_thread_pool_new  g_thread_pool_new;
alias c_g_thread_pool_push  g_thread_pool_push;
alias c_g_thread_pool_set_max_threads  g_thread_pool_set_max_threads;
alias c_g_thread_pool_get_max_threads  g_thread_pool_get_max_threads;
alias c_g_thread_pool_get_num_threads  g_thread_pool_get_num_threads;
alias c_g_thread_pool_unprocessed  g_thread_pool_unprocessed;
alias c_g_thread_pool_free  g_thread_pool_free;
alias c_g_thread_pool_set_max_unused_threads  g_thread_pool_set_max_unused_threads;
alias c_g_thread_pool_get_max_unused_threads  g_thread_pool_get_max_unused_threads;
alias c_g_thread_pool_get_num_unused_threads  g_thread_pool_get_num_unused_threads;
alias c_g_thread_pool_stop_unused_threads  g_thread_pool_stop_unused_threads;
alias c_g_thread_pool_set_sort_function  g_thread_pool_set_sort_function;
alias c_g_thread_pool_set_max_idle_time  g_thread_pool_set_max_idle_time;
alias c_g_thread_pool_get_max_idle_time  g_thread_pool_get_max_idle_time;

// glib.AsyncQueue

alias c_g_async_queue_new  g_async_queue_new;
alias c_g_async_queue_new_full  g_async_queue_new_full;
alias c_g_async_queue_ref  g_async_queue_ref;
alias c_g_async_queue_unref  g_async_queue_unref;
alias c_g_async_queue_push  g_async_queue_push;
alias c_g_async_queue_push_sorted  g_async_queue_push_sorted;
alias c_g_async_queue_pop  g_async_queue_pop;
alias c_g_async_queue_try_pop  g_async_queue_try_pop;
alias c_g_async_queue_timed_pop  g_async_queue_timed_pop;
alias c_g_async_queue_length  g_async_queue_length;
alias c_g_async_queue_sort  g_async_queue_sort;
alias c_g_async_queue_lock  g_async_queue_lock;
alias c_g_async_queue_unlock  g_async_queue_unlock;
alias c_g_async_queue_ref_unlocked  g_async_queue_ref_unlocked;
alias c_g_async_queue_unref_and_unlock  g_async_queue_unref_and_unlock;
alias c_g_async_queue_push_unlocked  g_async_queue_push_unlocked;
alias c_g_async_queue_push_sorted_unlocked  g_async_queue_push_sorted_unlocked;
alias c_g_async_queue_pop_unlocked  g_async_queue_pop_unlocked;
alias c_g_async_queue_try_pop_unlocked  g_async_queue_try_pop_unlocked;
alias c_g_async_queue_timed_pop_unlocked  g_async_queue_timed_pop_unlocked;
alias c_g_async_queue_length_unlocked  g_async_queue_length_unlocked;
alias c_g_async_queue_sort_unlocked  g_async_queue_sort_unlocked;

// glib.Module

alias c_g_module_supported  g_module_supported;
alias c_g_module_build_path  g_module_build_path;
alias c_g_module_open  g_module_open;
alias c_g_module_symbol  g_module_symbol;
alias c_g_module_name  g_module_name;
alias c_g_module_make_resident  g_module_make_resident;
alias c_g_module_close  g_module_close;
alias c_g_module_error  g_module_error;

// glib.Memory

alias c_g_malloc  g_malloc;
alias c_g_malloc0  g_malloc0;
alias c_g_realloc  g_realloc;
alias c_g_try_malloc  g_try_malloc;
alias c_g_try_malloc0  g_try_malloc0;
alias c_g_try_realloc  g_try_realloc;
alias c_g_free  g_free;
alias c_g_memdup  g_memdup;
alias c_g_mem_set_vtable  g_mem_set_vtable;
alias c_g_mem_is_system_malloc  g_mem_is_system_malloc;
alias c_g_mem_profile  g_mem_profile;

// glib.IOChannel

alias c_g_io_channel_unix_new  g_io_channel_unix_new;
alias c_g_io_channel_unix_get_fd  g_io_channel_unix_get_fd;
alias c_g_io_channel_win32_new_fd  g_io_channel_win32_new_fd;
alias c_g_io_channel_win32_new_socket  g_io_channel_win32_new_socket;
alias c_g_io_channel_win32_new_messages  g_io_channel_win32_new_messages;
alias c_g_io_channel_init  g_io_channel_init;
alias c_g_io_channel_new_file  g_io_channel_new_file;
alias c_g_io_channel_read_chars  g_io_channel_read_chars;
alias c_g_io_channel_read_unichar  g_io_channel_read_unichar;
alias c_g_io_channel_read_line  g_io_channel_read_line;
alias c_g_io_channel_read_line_string  g_io_channel_read_line_string;
alias c_g_io_channel_read_to_end  g_io_channel_read_to_end;
alias c_g_io_channel_write_chars  g_io_channel_write_chars;
alias c_g_io_channel_write_unichar  g_io_channel_write_unichar;
alias c_g_io_channel_flush  g_io_channel_flush;
alias c_g_io_channel_seek_position  g_io_channel_seek_position;
alias c_g_io_channel_shutdown  g_io_channel_shutdown;
alias c_g_io_channel_error_from_errno  g_io_channel_error_from_errno;
alias c_g_io_channel_ref  g_io_channel_ref;
alias c_g_io_channel_unref  g_io_channel_unref;
alias c_g_io_create_watch  g_io_create_watch;
alias c_g_io_add_watch  g_io_add_watch;
alias c_g_io_add_watch_full  g_io_add_watch_full;
alias c_g_io_channel_get_buffer_size  g_io_channel_get_buffer_size;
alias c_g_io_channel_set_buffer_size  g_io_channel_set_buffer_size;
alias c_g_io_channel_get_buffer_condition  g_io_channel_get_buffer_condition;
alias c_g_io_channel_get_flags  g_io_channel_get_flags;
alias c_g_io_channel_set_flags  g_io_channel_set_flags;
alias c_g_io_channel_get_line_term  g_io_channel_get_line_term;
alias c_g_io_channel_set_line_term  g_io_channel_set_line_term;
alias c_g_io_channel_get_buffered  g_io_channel_get_buffered;
alias c_g_io_channel_set_buffered  g_io_channel_set_buffered;
alias c_g_io_channel_get_encoding  g_io_channel_get_encoding;
alias c_g_io_channel_set_encoding  g_io_channel_set_encoding;
alias c_g_io_channel_get_close_on_unref  g_io_channel_get_close_on_unref;
alias c_g_io_channel_set_close_on_unref  g_io_channel_set_close_on_unref;
alias c_g_io_channel_read  g_io_channel_read;
alias c_g_io_channel_write  g_io_channel_write;
alias c_g_io_channel_seek  g_io_channel_seek;
alias c_g_io_channel_close  g_io_channel_close;

// glib.ErrorG

alias c_g_error_new  g_error_new;
alias c_g_error_new_literal  g_error_new_literal;
alias c_g_error_free  g_error_free;
alias c_g_error_copy  g_error_copy;
alias c_g_error_matches  g_error_matches;
alias c_g_set_error  g_set_error;
alias c_g_set_error_literal  g_set_error_literal;
alias c_g_propagate_error  g_propagate_error;
alias c_g_clear_error  g_clear_error;
alias c_g_prefix_error  g_prefix_error;
alias c_g_propagate_prefixed_error  g_propagate_prefixed_error;

// glib.


// glib.


// glib.Messages

alias c_g_print  g_print;
alias c_g_set_print_handler  g_set_print_handler;
alias c_g_printerr  g_printerr;
alias c_g_set_printerr_handler  g_set_printerr_handler;
alias c_g_on_error_query  g_on_error_query;
alias c_g_on_error_stack_trace  g_on_error_stack_trace;

// glib.MessageLog

alias c_g_log  g_log;
alias c_g_logv  g_logv;
alias c_g_log_set_handler  g_log_set_handler;
alias c_g_log_remove_handler  g_log_remove_handler;
alias c_g_log_set_always_fatal  g_log_set_always_fatal;
alias c_g_log_set_fatal_mask  g_log_set_fatal_mask;
alias c_g_log_default_handler  g_log_default_handler;
alias c_g_log_set_default_handler  g_log_set_default_handler;

// glib.Str

alias c_g_strdup  g_strdup;
alias c_g_strndup  g_strndup;
alias c_g_strdupv  g_strdupv;
alias c_g_strnfill  g_strnfill;
alias c_g_stpcpy  g_stpcpy;
alias c_g_strstr_len  g_strstr_len;
alias c_g_strrstr  g_strrstr;
alias c_g_strrstr_len  g_strrstr_len;
alias c_g_str_has_prefix  g_str_has_prefix;
alias c_g_str_has_suffix  g_str_has_suffix;
alias c_g_strcmp0  g_strcmp0;
alias c_g_strlcpy  g_strlcpy;
alias c_g_strlcat  g_strlcat;
alias c_g_strdup_printf  g_strdup_printf;
alias c_g_strdup_vprintf  g_strdup_vprintf;
alias c_g_printf  g_printf;
alias c_g_vprintf  g_vprintf;
alias c_g_fprintf  g_fprintf;
alias c_g_vfprintf  g_vfprintf;
alias c_g_sprintf  g_sprintf;
alias c_g_vsprintf  g_vsprintf;
alias c_g_snprintf  g_snprintf;
alias c_g_vsnprintf  g_vsnprintf;
alias c_g_vasprintf  g_vasprintf;
alias c_g_printf_string_upper_bound  g_printf_string_upper_bound;
alias c_g_ascii_isalnum  g_ascii_isalnum;
alias c_g_ascii_isalpha  g_ascii_isalpha;
alias c_g_ascii_iscntrl  g_ascii_iscntrl;
alias c_g_ascii_isdigit  g_ascii_isdigit;
alias c_g_ascii_isgraph  g_ascii_isgraph;
alias c_g_ascii_islower  g_ascii_islower;
alias c_g_ascii_isprint  g_ascii_isprint;
alias c_g_ascii_ispunct  g_ascii_ispunct;
alias c_g_ascii_isspace  g_ascii_isspace;
alias c_g_ascii_isupper  g_ascii_isupper;
alias c_g_ascii_isxdigit  g_ascii_isxdigit;
alias c_g_ascii_digit_value  g_ascii_digit_value;
alias c_g_ascii_xdigit_value  g_ascii_xdigit_value;
alias c_g_ascii_strcasecmp  g_ascii_strcasecmp;
alias c_g_ascii_strncasecmp  g_ascii_strncasecmp;
alias c_g_ascii_strup  g_ascii_strup;
alias c_g_ascii_strdown  g_ascii_strdown;
alias c_g_ascii_tolower  g_ascii_tolower;
alias c_g_ascii_toupper  g_ascii_toupper;
alias c_g_string_ascii_up  g_string_ascii_up;
alias c_g_string_ascii_down  g_string_ascii_down;
alias c_g_strup  g_strup;
alias c_g_strdown  g_strdown;
alias c_g_strcasecmp  g_strcasecmp;
alias c_g_strncasecmp  g_strncasecmp;
alias c_g_strreverse  g_strreverse;
alias c_g_ascii_strtoll  g_ascii_strtoll;
alias c_g_ascii_strtoull  g_ascii_strtoull;
alias c_g_ascii_strtod  g_ascii_strtod;
alias c_g_ascii_dtostr  g_ascii_dtostr;
alias c_g_ascii_formatd  g_ascii_formatd;
alias c_g_strtod  g_strtod;
alias c_g_strchug  g_strchug;
alias c_g_strchomp  g_strchomp;
alias c_g_strdelimit  g_strdelimit;
alias c_g_strescape  g_strescape;
alias c_g_strcompress  g_strcompress;
alias c_g_strcanon  g_strcanon;
alias c_g_strsplit  g_strsplit;
alias c_g_strsplit_set  g_strsplit_set;
alias c_g_strfreev  g_strfreev;
alias c_g_strconcat  g_strconcat;
alias c_g_strjoin  g_strjoin;
alias c_g_strjoinv  g_strjoinv;
alias c_g_strv_length  g_strv_length;
alias c_g_strerror  g_strerror;
alias c_g_strsignal  g_strsignal;

// glib.CharacterSet

alias c_g_convert  g_convert;
alias c_g_convert_with_fallback  g_convert_with_fallback;
alias c_g_locale_to_utf8  g_locale_to_utf8;
alias c_g_filename_to_utf8  g_filename_to_utf8;
alias c_g_filename_from_utf8  g_filename_from_utf8;
alias c_g_filename_from_uri  g_filename_from_uri;
alias c_g_filename_to_uri  g_filename_to_uri;
alias c_g_get_filename_charsets  g_get_filename_charsets;
alias c_g_filename_display_name  g_filename_display_name;
alias c_g_filename_display_basename  g_filename_display_basename;
alias c_g_uri_list_extract_uris  g_uri_list_extract_uris;
alias c_g_locale_from_utf8  g_locale_from_utf8;
alias c_g_get_charset  g_get_charset;

// glib.Unicode

alias c_g_unichar_validate  g_unichar_validate;
alias c_g_unichar_isalnum  g_unichar_isalnum;
alias c_g_unichar_isalpha  g_unichar_isalpha;
alias c_g_unichar_iscntrl  g_unichar_iscntrl;
alias c_g_unichar_isdefined  g_unichar_isdefined;
alias c_g_unichar_isdigit  g_unichar_isdigit;
alias c_g_unichar_isgraph  g_unichar_isgraph;
alias c_g_unichar_islower  g_unichar_islower;
alias c_g_unichar_ismark  g_unichar_ismark;
alias c_g_unichar_isprint  g_unichar_isprint;
alias c_g_unichar_ispunct  g_unichar_ispunct;
alias c_g_unichar_isspace  g_unichar_isspace;
alias c_g_unichar_istitle  g_unichar_istitle;
alias c_g_unichar_isupper  g_unichar_isupper;
alias c_g_unichar_isxdigit  g_unichar_isxdigit;
alias c_g_unichar_iswide  g_unichar_iswide;
alias c_g_unichar_iswide_cjk  g_unichar_iswide_cjk;
alias c_g_unichar_iszerowidth  g_unichar_iszerowidth;
alias c_g_unichar_toupper  g_unichar_toupper;
alias c_g_unichar_tolower  g_unichar_tolower;
alias c_g_unichar_totitle  g_unichar_totitle;
alias c_g_unichar_digit_value  g_unichar_digit_value;
alias c_g_unichar_xdigit_value  g_unichar_xdigit_value;
alias c_g_unichar_type  g_unichar_type;
alias c_g_unichar_break_type  g_unichar_break_type;
alias c_g_unichar_combining_class  g_unichar_combining_class;
alias c_g_unicode_canonical_ordering  g_unicode_canonical_ordering;
alias c_g_unicode_canonical_decomposition  g_unicode_canonical_decomposition;
alias c_g_unichar_get_mirror_char  g_unichar_get_mirror_char;
alias c_g_unichar_get_script  g_unichar_get_script;
alias c_g_utf8_get_char  g_utf8_get_char;
alias c_g_utf8_get_char_validated  g_utf8_get_char_validated;
alias c_g_utf8_offset_to_pointer  g_utf8_offset_to_pointer;
alias c_g_utf8_pointer_to_offset  g_utf8_pointer_to_offset;
alias c_g_utf8_prev_char  g_utf8_prev_char;
alias c_g_utf8_find_next_char  g_utf8_find_next_char;
alias c_g_utf8_find_prev_char  g_utf8_find_prev_char;
alias c_g_utf8_strlen  g_utf8_strlen;
alias c_g_utf8_strncpy  g_utf8_strncpy;
alias c_g_utf8_strchr  g_utf8_strchr;
alias c_g_utf8_strrchr  g_utf8_strrchr;
alias c_g_utf8_strreverse  g_utf8_strreverse;
alias c_g_utf8_validate  g_utf8_validate;
alias c_g_utf8_strup  g_utf8_strup;
alias c_g_utf8_strdown  g_utf8_strdown;
alias c_g_utf8_casefold  g_utf8_casefold;
alias c_g_utf8_normalize  g_utf8_normalize;
alias c_g_utf8_collate  g_utf8_collate;
alias c_g_utf8_collate_key  g_utf8_collate_key;
alias c_g_utf8_collate_key_for_filename  g_utf8_collate_key_for_filename;
alias c_g_utf8_to_utf16  g_utf8_to_utf16;
alias c_g_utf8_to_ucs4  g_utf8_to_ucs4;
alias c_g_utf8_to_ucs4_fast  g_utf8_to_ucs4_fast;
alias c_g_utf16_to_ucs4  g_utf16_to_ucs4;
alias c_g_utf16_to_utf8  g_utf16_to_utf8;
alias c_g_ucs4_to_utf16  g_ucs4_to_utf16;
alias c_g_ucs4_to_utf8  g_ucs4_to_utf8;
alias c_g_unichar_to_utf8  g_unichar_to_utf8;

// glib.Base64

alias c_g_base64_encode_step  g_base64_encode_step;
alias c_g_base64_encode_close  g_base64_encode_close;
alias c_g_base64_encode  g_base64_encode;
alias c_g_base64_decode_step  g_base64_decode_step;
alias c_g_base64_decode  g_base64_decode;
alias c_g_base64_decode_inplace  g_base64_decode_inplace;

// glib.Checksum

alias c_g_checksum_type_get_length  g_checksum_type_get_length;
alias c_g_checksum_new  g_checksum_new;
alias c_g_checksum_copy  g_checksum_copy;
alias c_g_checksum_free  g_checksum_free;
alias c_g_checksum_reset  g_checksum_reset;
alias c_g_checksum_update  g_checksum_update;
alias c_g_checksum_get_string  g_checksum_get_string;
alias c_g_checksum_get_digest  g_checksum_get_digest;
alias c_g_compute_checksum_for_data  g_compute_checksum_for_data;
alias c_g_compute_checksum_for_string  g_compute_checksum_for_string;

// glib.Internationalization

alias c_g_dgettext  g_dgettext;
alias c_g_dngettext  g_dngettext;
alias c_g_dpgettext  g_dpgettext;
alias c_g_dpgettext2  g_dpgettext2;
alias c_g_strip_context  g_strip_context;
alias c_g_get_language_names  g_get_language_names;

// glib.TimeVal

alias c_g_get_current_time  g_get_current_time;
alias c_g_usleep  g_usleep;
alias c_g_time_val_add  g_time_val_add;
alias c_g_time_val_from_iso8601  g_time_val_from_iso8601;
alias c_g_time_val_to_iso8601  g_time_val_to_iso8601;

// glib.Date

alias c_g_date_new  g_date_new;
alias c_g_date_new_dmy  g_date_new_dmy;
alias c_g_date_new_julian  g_date_new_julian;
alias c_g_date_clear  g_date_clear;
alias c_g_date_free  g_date_free;
alias c_g_date_set_day  g_date_set_day;
alias c_g_date_set_month  g_date_set_month;
alias c_g_date_set_year  g_date_set_year;
alias c_g_date_set_dmy  g_date_set_dmy;
alias c_g_date_set_julian  g_date_set_julian;
alias c_g_date_set_time  g_date_set_time;
alias c_g_date_set_time_t  g_date_set_time_t;
alias c_g_date_set_time_val  g_date_set_time_val;
alias c_g_date_set_parse  g_date_set_parse;
alias c_g_date_add_days  g_date_add_days;
alias c_g_date_subtract_days  g_date_subtract_days;
alias c_g_date_add_months  g_date_add_months;
alias c_g_date_subtract_months  g_date_subtract_months;
alias c_g_date_add_years  g_date_add_years;
alias c_g_date_subtract_years  g_date_subtract_years;
alias c_g_date_days_between  g_date_days_between;
alias c_g_date_compare  g_date_compare;
alias c_g_date_clamp  g_date_clamp;
alias c_g_date_order  g_date_order;
alias c_g_date_get_day  g_date_get_day;
alias c_g_date_get_month  g_date_get_month;
alias c_g_date_get_year  g_date_get_year;
alias c_g_date_get_julian  g_date_get_julian;
alias c_g_date_get_weekday  g_date_get_weekday;
alias c_g_date_get_day_of_year  g_date_get_day_of_year;
alias c_g_date_get_days_in_month  g_date_get_days_in_month;
alias c_g_date_is_first_of_month  g_date_is_first_of_month;
alias c_g_date_is_last_of_month  g_date_is_last_of_month;
alias c_g_date_is_leap_year  g_date_is_leap_year;
alias c_g_date_get_monday_week_of_year  g_date_get_monday_week_of_year;
alias c_g_date_get_monday_weeks_in_year  g_date_get_monday_weeks_in_year;
alias c_g_date_get_sunday_week_of_year  g_date_get_sunday_week_of_year;
alias c_g_date_get_sunday_weeks_in_year  g_date_get_sunday_weeks_in_year;
alias c_g_date_get_iso8601_week_of_year  g_date_get_iso8601_week_of_year;
alias c_g_date_strftime  g_date_strftime;
alias c_g_date_to_struct_tm  g_date_to_struct_tm;
alias c_g_date_valid  g_date_valid;
alias c_g_date_valid_day  g_date_valid_day;
alias c_g_date_valid_month  g_date_valid_month;
alias c_g_date_valid_year  g_date_valid_year;
alias c_g_date_valid_dmy  g_date_valid_dmy;
alias c_g_date_valid_julian  g_date_valid_julian;
alias c_g_date_valid_weekday  g_date_valid_weekday;

// glib.RandG

alias c_g_rand_new_with_seed  g_rand_new_with_seed;
alias c_g_rand_new_with_seed_array  g_rand_new_with_seed_array;
alias c_g_rand_new  g_rand_new;
alias c_g_rand_copy  g_rand_copy;
alias c_g_rand_free  g_rand_free;
alias c_g_rand_set_seed  g_rand_set_seed;
alias c_g_rand_set_seed_array  g_rand_set_seed_array;
alias c_g_rand_int  g_rand_int;
alias c_g_rand_int_range  g_rand_int_range;
alias c_g_rand_double  g_rand_double;
alias c_g_rand_double_range  g_rand_double_range;
alias c_g_random_set_seed  g_random_set_seed;
alias c_g_random_int  g_random_int;
alias c_g_random_int_range  g_random_int_range;
alias c_g_random_double  g_random_double;
alias c_g_random_double_range  g_random_double_range;

// glib.Util

alias c_g_get_application_name  g_get_application_name;
alias c_g_set_application_name  g_set_application_name;
alias c_g_get_prgname  g_get_prgname;
alias c_g_set_prgname  g_set_prgname;
alias c_g_getenv  g_getenv;
alias c_g_setenv  g_setenv;
alias c_g_unsetenv  g_unsetenv;
alias c_g_listenv  g_listenv;
alias c_g_get_user_name  g_get_user_name;
alias c_g_get_real_name  g_get_real_name;
alias c_g_get_user_cache_dir  g_get_user_cache_dir;
alias c_g_get_user_data_dir  g_get_user_data_dir;
alias c_g_get_user_config_dir  g_get_user_config_dir;
alias c_g_get_user_special_dir  g_get_user_special_dir;
alias c_g_get_system_data_dirs  g_get_system_data_dirs;
alias c_g_get_system_config_dirs  g_get_system_config_dirs;
alias c_g_get_host_name  g_get_host_name;
alias c_g_get_home_dir  g_get_home_dir;
alias c_g_get_tmp_dir  g_get_tmp_dir;
alias c_g_get_current_dir  g_get_current_dir;
alias c_g_basename  g_basename;
alias c_g_path_is_absolute  g_path_is_absolute;
alias c_g_path_skip_root  g_path_skip_root;
alias c_g_path_get_basename  g_path_get_basename;
alias c_g_path_get_dirname  g_path_get_dirname;
alias c_g_build_filename  g_build_filename;
alias c_g_build_filenamev  g_build_filenamev;
alias c_g_build_path  g_build_path;
alias c_g_build_pathv  g_build_pathv;
alias c_g_format_size_for_display  g_format_size_for_display;
alias c_g_find_program_in_path  g_find_program_in_path;
alias c_g_bit_nth_lsf  g_bit_nth_lsf;
alias c_g_bit_nth_msf  g_bit_nth_msf;
alias c_g_bit_storage  g_bit_storage;
alias c_g_spaced_primes_closest  g_spaced_primes_closest;
alias c_g_atexit  g_atexit;
alias c_g_parse_debug_string  g_parse_debug_string;
alias c_g_qsort_with_data  g_qsort_with_data;
alias c_g_nullify_pointer  g_nullify_pointer;

// glib.ScannerG

alias c_g_scanner_new  g_scanner_new;
alias c_g_scanner_destroy  g_scanner_destroy;
alias c_g_scanner_input_file  g_scanner_input_file;
alias c_g_scanner_sync_file_offset  g_scanner_sync_file_offset;
alias c_g_scanner_input_text  g_scanner_input_text;
alias c_g_scanner_peek_next_token  g_scanner_peek_next_token;
alias c_g_scanner_get_next_token  g_scanner_get_next_token;
alias c_g_scanner_eof  g_scanner_eof;
alias c_g_scanner_cur_line  g_scanner_cur_line;
alias c_g_scanner_cur_position  g_scanner_cur_position;
alias c_g_scanner_cur_token  g_scanner_cur_token;
alias c_g_scanner_cur_value  g_scanner_cur_value;
alias c_g_scanner_set_scope  g_scanner_set_scope;
alias c_g_scanner_scope_add_symbol  g_scanner_scope_add_symbol;
alias c_g_scanner_scope_foreach_symbol  g_scanner_scope_foreach_symbol;
alias c_g_scanner_scope_lookup_symbol  g_scanner_scope_lookup_symbol;
alias c_g_scanner_scope_remove_symbol  g_scanner_scope_remove_symbol;
alias c_g_scanner_lookup_symbol  g_scanner_lookup_symbol;
alias c_g_scanner_warn  g_scanner_warn;
alias c_g_scanner_error  g_scanner_error;
alias c_g_scanner_unexp_token  g_scanner_unexp_token;

// glib.StringCompletion

alias c_g_completion_new  g_completion_new;
alias c_g_completion_add_items  g_completion_add_items;
alias c_g_completion_remove_items  g_completion_remove_items;
alias c_g_completion_clear_items  g_completion_clear_items;
alias c_g_completion_complete  g_completion_complete;
alias c_g_completion_complete_utf8  g_completion_complete_utf8;
alias c_g_completion_set_compare  g_completion_set_compare;
alias c_g_completion_free  g_completion_free;

// glib.Timer

alias c_g_timer_new  g_timer_new;
alias c_g_timer_start  g_timer_start;
alias c_g_timer_stop  g_timer_stop;
alias c_g_timer_continue  g_timer_continue;
alias c_g_timer_elapsed  g_timer_elapsed;
alias c_g_timer_reset  g_timer_reset;
alias c_g_timer_destroy  g_timer_destroy;

// glib.Spawn

alias c_g_spawn_async_with_pipes  g_spawn_async_with_pipes;
alias c_g_spawn_async  g_spawn_async;
alias c_g_spawn_sync  g_spawn_sync;
alias c_g_spawn_command_line_async  g_spawn_command_line_async;
alias c_g_spawn_command_line_sync  g_spawn_command_line_sync;
alias c_g_spawn_close_pid  g_spawn_close_pid;

// glib.FileUtils

alias c_g_file_error_from_errno  g_file_error_from_errno;
alias c_g_file_get_contents  g_file_get_contents;
alias c_g_file_set_contents  g_file_set_contents;
alias c_g_file_test  g_file_test;
alias c_g_mkstemp  g_mkstemp;
alias c_g_file_open_tmp  g_file_open_tmp;
alias c_g_file_read_link  g_file_read_link;
alias c_g_mkdir_with_parents  g_mkdir_with_parents;
alias c_g_open  g_open;
alias c_g_rename  g_rename;
alias c_g_mkdir  g_mkdir;
alias c_g_stat  g_stat;
alias c_g_lstat  g_lstat;
alias c_g_unlink  g_unlink;
alias c_g_remove  g_remove;
alias c_g_rmdir  g_rmdir;
alias c_g_fopen  g_fopen;
alias c_g_freopen  g_freopen;
alias c_g_chmod  g_chmod;
alias c_g_access  g_access;
alias c_g_creat  g_creat;
alias c_g_chdir  g_chdir;
alias c_g_utime  g_utime;

// glib.Directory

alias c_g_dir_open  g_dir_open;
alias c_g_dir_read_name  g_dir_read_name;
alias c_g_dir_rewind  g_dir_rewind;
alias c_g_dir_close  g_dir_close;

// glib.MappedFile

alias c_g_mapped_file_new  g_mapped_file_new;
alias c_g_mapped_file_free  g_mapped_file_free;
alias c_g_mapped_file_get_length  g_mapped_file_get_length;
alias c_g_mapped_file_get_contents  g_mapped_file_get_contents;

// glib.URI

alias c_g_uri_parse_scheme  g_uri_parse_scheme;
alias c_g_uri_escape_string  g_uri_escape_string;
alias c_g_uri_unescape_string  g_uri_unescape_string;
alias c_g_uri_unescape_segment  g_uri_unescape_segment;

// glib.ShellUtils

alias c_g_shell_parse_argv  g_shell_parse_argv;
alias c_g_shell_quote  g_shell_quote;
alias c_g_shell_unquote  g_shell_unquote;

// glib.OptionContext

alias c_g_option_context_new  g_option_context_new;
alias c_g_option_context_set_summary  g_option_context_set_summary;
alias c_g_option_context_get_summary  g_option_context_get_summary;
alias c_g_option_context_set_description  g_option_context_set_description;
alias c_g_option_context_get_description  g_option_context_get_description;
alias c_g_option_context_set_translate_func  g_option_context_set_translate_func;
alias c_g_option_context_set_translation_domain  g_option_context_set_translation_domain;
alias c_g_option_context_free  g_option_context_free;
alias c_g_option_context_parse  g_option_context_parse;
alias c_g_option_context_set_help_enabled  g_option_context_set_help_enabled;
alias c_g_option_context_get_help_enabled  g_option_context_get_help_enabled;
alias c_g_option_context_set_ignore_unknown_options  g_option_context_set_ignore_unknown_options;
alias c_g_option_context_get_ignore_unknown_options  g_option_context_get_ignore_unknown_options;
alias c_g_option_context_get_help  g_option_context_get_help;
alias c_g_option_context_add_main_entries  g_option_context_add_main_entries;
alias c_g_option_context_add_group  g_option_context_add_group;
alias c_g_option_context_set_main_group  g_option_context_set_main_group;
alias c_g_option_context_get_main_group  g_option_context_get_main_group;

// glib.OptionGroup

alias c_g_option_group_new  g_option_group_new;
alias c_g_option_group_free  g_option_group_free;
alias c_g_option_group_add_entries  g_option_group_add_entries;
alias c_g_option_group_set_parse_hooks  g_option_group_set_parse_hooks;
alias c_g_option_group_set_error_hook  g_option_group_set_error_hook;
alias c_g_option_group_set_translate_func  g_option_group_set_translate_func;
alias c_g_option_group_set_translation_domain  g_option_group_set_translation_domain;

// glib.Pattern

alias c_g_pattern_spec_new  g_pattern_spec_new;
alias c_g_pattern_spec_free  g_pattern_spec_free;
alias c_g_pattern_spec_equal  g_pattern_spec_equal;
alias c_g_pattern_match  g_pattern_match;
alias c_g_pattern_match_string  g_pattern_match_string;
alias c_g_pattern_match_simple  g_pattern_match_simple;

// glib.Regex

alias c_g_regex_new  g_regex_new;
alias c_g_regex_ref  g_regex_ref;
alias c_g_regex_unref  g_regex_unref;
alias c_g_regex_get_pattern  g_regex_get_pattern;
alias c_g_regex_get_max_backref  g_regex_get_max_backref;
alias c_g_regex_get_capture_count  g_regex_get_capture_count;
alias c_g_regex_get_string_number  g_regex_get_string_number;
alias c_g_regex_escape_string  g_regex_escape_string;
alias c_g_regex_match_simple  g_regex_match_simple;
alias c_g_regex_match  g_regex_match;
alias c_g_regex_match_full  g_regex_match_full;
alias c_g_regex_match_all  g_regex_match_all;
alias c_g_regex_match_all_full  g_regex_match_all_full;
alias c_g_regex_split_simple  g_regex_split_simple;
alias c_g_regex_split  g_regex_split;
alias c_g_regex_split_full  g_regex_split_full;
alias c_g_regex_replace  g_regex_replace;
alias c_g_regex_replace_literal  g_regex_replace_literal;
alias c_g_regex_replace_eval  g_regex_replace_eval;
alias c_g_regex_check_replacement  g_regex_check_replacement;

// glib.MatchInfo

alias c_g_match_info_get_regex  g_match_info_get_regex;
alias c_g_match_info_get_string  g_match_info_get_string;
alias c_g_match_info_free  g_match_info_free;
alias c_g_match_info_matches  g_match_info_matches;
alias c_g_match_info_next  g_match_info_next;
alias c_g_match_info_get_match_count  g_match_info_get_match_count;
alias c_g_match_info_is_partial_match  g_match_info_is_partial_match;
alias c_g_match_info_expand_references  g_match_info_expand_references;
alias c_g_match_info_fetch  g_match_info_fetch;
alias c_g_match_info_fetch_pos  g_match_info_fetch_pos;
alias c_g_match_info_fetch_named  g_match_info_fetch_named;
alias c_g_match_info_fetch_named_pos  g_match_info_fetch_named_pos;
alias c_g_match_info_fetch_all  g_match_info_fetch_all;

// glib.SimpleXML

alias c_g_markup_escape_text  g_markup_escape_text;
alias c_g_markup_printf_escaped  g_markup_printf_escaped;
alias c_g_markup_vprintf_escaped  g_markup_vprintf_escaped;
alias c_g_markup_parse_context_end_parse  g_markup_parse_context_end_parse;
alias c_g_markup_parse_context_free  g_markup_parse_context_free;
alias c_g_markup_parse_context_get_position  g_markup_parse_context_get_position;
alias c_g_markup_parse_context_get_element  g_markup_parse_context_get_element;
alias c_g_markup_parse_context_get_element_stack  g_markup_parse_context_get_element_stack;
alias c_g_markup_parse_context_get_user_data  g_markup_parse_context_get_user_data;
alias c_g_markup_parse_context_new  g_markup_parse_context_new;
alias c_g_markup_parse_context_parse  g_markup_parse_context_parse;
alias c_g_markup_parse_context_push  g_markup_parse_context_push;
alias c_g_markup_parse_context_pop  g_markup_parse_context_pop;
alias c_g_markup_collect_attributes  g_markup_collect_attributes;

// glib.KeyFile

alias c_g_key_file_new  g_key_file_new;
alias c_g_key_file_free  g_key_file_free;
alias c_g_key_file_set_list_separator  g_key_file_set_list_separator;
alias c_g_key_file_load_from_file  g_key_file_load_from_file;
alias c_g_key_file_load_from_data  g_key_file_load_from_data;
alias c_g_key_file_load_from_data_dirs  g_key_file_load_from_data_dirs;
alias c_g_key_file_load_from_dirs  g_key_file_load_from_dirs;
alias c_g_key_file_to_data  g_key_file_to_data;
alias c_g_key_file_get_start_group  g_key_file_get_start_group;
alias c_g_key_file_get_groups  g_key_file_get_groups;
alias c_g_key_file_get_keys  g_key_file_get_keys;
alias c_g_key_file_has_group  g_key_file_has_group;
alias c_g_key_file_has_key  g_key_file_has_key;
alias c_g_key_file_get_value  g_key_file_get_value;
alias c_g_key_file_get_string  g_key_file_get_string;
alias c_g_key_file_get_locale_string  g_key_file_get_locale_string;
alias c_g_key_file_get_boolean  g_key_file_get_boolean;
alias c_g_key_file_get_integer  g_key_file_get_integer;
alias c_g_key_file_get_double  g_key_file_get_double;
alias c_g_key_file_get_string_list  g_key_file_get_string_list;
alias c_g_key_file_get_locale_string_list  g_key_file_get_locale_string_list;
alias c_g_key_file_get_boolean_list  g_key_file_get_boolean_list;
alias c_g_key_file_get_integer_list  g_key_file_get_integer_list;
alias c_g_key_file_get_double_list  g_key_file_get_double_list;
alias c_g_key_file_get_comment  g_key_file_get_comment;
alias c_g_key_file_set_value  g_key_file_set_value;
alias c_g_key_file_set_string  g_key_file_set_string;
alias c_g_key_file_set_locale_string  g_key_file_set_locale_string;
alias c_g_key_file_set_boolean  g_key_file_set_boolean;
alias c_g_key_file_set_integer  g_key_file_set_integer;
alias c_g_key_file_set_double  g_key_file_set_double;
alias c_g_key_file_set_string_list  g_key_file_set_string_list;
alias c_g_key_file_set_locale_string_list  g_key_file_set_locale_string_list;
alias c_g_key_file_set_boolean_list  g_key_file_set_boolean_list;
alias c_g_key_file_set_integer_list  g_key_file_set_integer_list;
alias c_g_key_file_set_double_list  g_key_file_set_double_list;
alias c_g_key_file_set_comment  g_key_file_set_comment;
alias c_g_key_file_remove_group  g_key_file_remove_group;
alias c_g_key_file_remove_key  g_key_file_remove_key;
alias c_g_key_file_remove_comment  g_key_file_remove_comment;

// glib.BookmarkFile

alias c_g_bookmark_file_new  g_bookmark_file_new;
alias c_g_bookmark_file_free  g_bookmark_file_free;
alias c_g_bookmark_file_load_from_file  g_bookmark_file_load_from_file;
alias c_g_bookmark_file_load_from_data  g_bookmark_file_load_from_data;
alias c_g_bookmark_file_load_from_data_dirs  g_bookmark_file_load_from_data_dirs;
alias c_g_bookmark_file_to_data  g_bookmark_file_to_data;
alias c_g_bookmark_file_to_file  g_bookmark_file_to_file;
alias c_g_bookmark_file_has_item  g_bookmark_file_has_item;
alias c_g_bookmark_file_has_group  g_bookmark_file_has_group;
alias c_g_bookmark_file_has_application  g_bookmark_file_has_application;
alias c_g_bookmark_file_get_size  g_bookmark_file_get_size;
alias c_g_bookmark_file_get_uris  g_bookmark_file_get_uris;
alias c_g_bookmark_file_get_title  g_bookmark_file_get_title;
alias c_g_bookmark_file_get_description  g_bookmark_file_get_description;
alias c_g_bookmark_file_get_mime_type  g_bookmark_file_get_mime_type;
alias c_g_bookmark_file_get_is_private  g_bookmark_file_get_is_private;
alias c_g_bookmark_file_get_icon  g_bookmark_file_get_icon;
alias c_g_bookmark_file_get_added  g_bookmark_file_get_added;
alias c_g_bookmark_file_get_modified  g_bookmark_file_get_modified;
alias c_g_bookmark_file_get_visited  g_bookmark_file_get_visited;
alias c_g_bookmark_file_get_groups  g_bookmark_file_get_groups;
alias c_g_bookmark_file_get_applications  g_bookmark_file_get_applications;
alias c_g_bookmark_file_get_app_info  g_bookmark_file_get_app_info;
alias c_g_bookmark_file_set_title  g_bookmark_file_set_title;
alias c_g_bookmark_file_set_description  g_bookmark_file_set_description;
alias c_g_bookmark_file_set_mime_type  g_bookmark_file_set_mime_type;
alias c_g_bookmark_file_set_is_private  g_bookmark_file_set_is_private;
alias c_g_bookmark_file_set_icon  g_bookmark_file_set_icon;
alias c_g_bookmark_file_set_added  g_bookmark_file_set_added;
alias c_g_bookmark_file_set_groups  g_bookmark_file_set_groups;
alias c_g_bookmark_file_set_modified  g_bookmark_file_set_modified;
alias c_g_bookmark_file_set_visited  g_bookmark_file_set_visited;
alias c_g_bookmark_file_set_app_info  g_bookmark_file_set_app_info;
alias c_g_bookmark_file_add_group  g_bookmark_file_add_group;
alias c_g_bookmark_file_add_application  g_bookmark_file_add_application;
alias c_g_bookmark_file_remove_group  g_bookmark_file_remove_group;
alias c_g_bookmark_file_remove_application  g_bookmark_file_remove_application;
alias c_g_bookmark_file_remove_item  g_bookmark_file_remove_item;
alias c_g_bookmark_file_move_item  g_bookmark_file_move_item;

// glib.WindowsUtils

alias c_g_win32_error_message  g_win32_error_message;
alias c_g_win32_getlocale  g_win32_getlocale;
alias c_g_win32_get_package_installation_directory  g_win32_get_package_installation_directory;
alias c_g_win32_get_package_installation_directory_of_module  g_win32_get_package_installation_directory_of_module;
alias c_g_win32_get_package_installation_subdirectory  g_win32_get_package_installation_subdirectory;
alias c_g_win32_get_windows_version  g_win32_get_windows_version;
alias c_g_win32_locale_filename_from_utf8  g_win32_locale_filename_from_utf8;

// glib.MemorySlice

alias c_g_slice_alloc  g_slice_alloc;
alias c_g_slice_alloc0  g_slice_alloc0;
alias c_g_slice_copy  g_slice_copy;
alias c_g_slice_free1  g_slice_free1;
alias c_g_slice_free_chain_with_offset  g_slice_free_chain_with_offset;

// glib.MemoryChunk

alias c_g_mem_chunk_new  g_mem_chunk_new;
alias c_g_mem_chunk_alloc  g_mem_chunk_alloc;
alias c_g_mem_chunk_alloc0  g_mem_chunk_alloc0;
alias c_g_mem_chunk_free  g_mem_chunk_free;
alias c_g_mem_chunk_destroy  g_mem_chunk_destroy;
alias c_g_mem_chunk_reset  g_mem_chunk_reset;
alias c_g_mem_chunk_clean  g_mem_chunk_clean;
alias c_g_blow_chunks  g_blow_chunks;
alias c_g_mem_chunk_info  g_mem_chunk_info;
alias c_g_mem_chunk_print  g_mem_chunk_print;

// glib.ListG

alias c_g_list_append  g_list_append;
alias c_g_list_prepend  g_list_prepend;
alias c_g_list_insert  g_list_insert;
alias c_g_list_insert_before  g_list_insert_before;
alias c_g_list_insert_sorted  g_list_insert_sorted;
alias c_g_list_remove  g_list_remove;
alias c_g_list_remove_link  g_list_remove_link;
alias c_g_list_delete_link  g_list_delete_link;
alias c_g_list_remove_all  g_list_remove_all;
alias c_g_list_free  g_list_free;
alias c_g_list_alloc  g_list_alloc;
alias c_g_list_free_1  g_list_free_1;
alias c_g_list_length  g_list_length;
alias c_g_list_copy  g_list_copy;
alias c_g_list_reverse  g_list_reverse;
alias c_g_list_sort  g_list_sort;
alias c_g_list_insert_sorted_with_data  g_list_insert_sorted_with_data;
alias c_g_list_sort_with_data  g_list_sort_with_data;
alias c_g_list_concat  g_list_concat;
alias c_g_list_foreach  g_list_foreach;
alias c_g_list_first  g_list_first;
alias c_g_list_last  g_list_last;
alias c_g_list_nth  g_list_nth;
alias c_g_list_nth_data  g_list_nth_data;
alias c_g_list_nth_prev  g_list_nth_prev;
alias c_g_list_find  g_list_find;
alias c_g_list_find_custom  g_list_find_custom;
alias c_g_list_position  g_list_position;
alias c_g_list_index  g_list_index;
alias c_g_list_push_allocator  g_list_push_allocator;
alias c_g_list_pop_allocator  g_list_pop_allocator;

// glib.ListSG

alias c_g_slist_alloc  g_slist_alloc;
alias c_g_slist_append  g_slist_append;
alias c_g_slist_prepend  g_slist_prepend;
alias c_g_slist_insert  g_slist_insert;
alias c_g_slist_insert_before  g_slist_insert_before;
alias c_g_slist_insert_sorted  g_slist_insert_sorted;
alias c_g_slist_remove  g_slist_remove;
alias c_g_slist_remove_link  g_slist_remove_link;
alias c_g_slist_delete_link  g_slist_delete_link;
alias c_g_slist_remove_all  g_slist_remove_all;
alias c_g_slist_free  g_slist_free;
alias c_g_slist_free_1  g_slist_free_1;
alias c_g_slist_length  g_slist_length;
alias c_g_slist_copy  g_slist_copy;
alias c_g_slist_reverse  g_slist_reverse;
alias c_g_slist_insert_sorted_with_data  g_slist_insert_sorted_with_data;
alias c_g_slist_sort  g_slist_sort;
alias c_g_slist_sort_with_data  g_slist_sort_with_data;
alias c_g_slist_concat  g_slist_concat;
alias c_g_slist_foreach  g_slist_foreach;
alias c_g_slist_last  g_slist_last;
alias c_g_slist_nth  g_slist_nth;
alias c_g_slist_nth_data  g_slist_nth_data;
alias c_g_slist_find  g_slist_find;
alias c_g_slist_find_custom  g_slist_find_custom;
alias c_g_slist_position  g_slist_position;
alias c_g_slist_index  g_slist_index;
alias c_g_slist_push_allocator  g_slist_push_allocator;
alias c_g_slist_pop_allocator  g_slist_pop_allocator;

// glib.QueueG

alias c_g_queue_new  g_queue_new;
alias c_g_queue_free  g_queue_free;
alias c_g_queue_init  g_queue_init;
alias c_g_queue_clear  g_queue_clear;
alias c_g_queue_is_empty  g_queue_is_empty;
alias c_g_queue_get_length  g_queue_get_length;
alias c_g_queue_reverse  g_queue_reverse;
alias c_g_queue_copy  g_queue_copy;
alias c_g_queue_foreach  g_queue_foreach;
alias c_g_queue_find  g_queue_find;
alias c_g_queue_find_custom  g_queue_find_custom;
alias c_g_queue_sort  g_queue_sort;
alias c_g_queue_push_head  g_queue_push_head;
alias c_g_queue_push_tail  g_queue_push_tail;
alias c_g_queue_push_nth  g_queue_push_nth;
alias c_g_queue_pop_head  g_queue_pop_head;
alias c_g_queue_pop_tail  g_queue_pop_tail;
alias c_g_queue_pop_nth  g_queue_pop_nth;
alias c_g_queue_peek_head  g_queue_peek_head;
alias c_g_queue_peek_tail  g_queue_peek_tail;
alias c_g_queue_peek_nth  g_queue_peek_nth;
alias c_g_queue_index  g_queue_index;
alias c_g_queue_remove  g_queue_remove;
alias c_g_queue_remove_all  g_queue_remove_all;
alias c_g_queue_insert_before  g_queue_insert_before;
alias c_g_queue_insert_after  g_queue_insert_after;
alias c_g_queue_insert_sorted  g_queue_insert_sorted;
alias c_g_queue_push_head_link  g_queue_push_head_link;
alias c_g_queue_push_tail_link  g_queue_push_tail_link;
alias c_g_queue_push_nth_link  g_queue_push_nth_link;
alias c_g_queue_pop_head_link  g_queue_pop_head_link;
alias c_g_queue_pop_tail_link  g_queue_pop_tail_link;
alias c_g_queue_pop_nth_link  g_queue_pop_nth_link;
alias c_g_queue_peek_head_link  g_queue_peek_head_link;
alias c_g_queue_peek_tail_link  g_queue_peek_tail_link;
alias c_g_queue_peek_nth_link  g_queue_peek_nth_link;
alias c_g_queue_link_index  g_queue_link_index;
alias c_g_queue_unlink  g_queue_unlink;
alias c_g_queue_delete_link  g_queue_delete_link;

// glib.Sequence

alias c_g_sequence_new  g_sequence_new;
alias c_g_sequence_free  g_sequence_free;
alias c_g_sequence_get_length  g_sequence_get_length;
alias c_g_sequence_foreach  g_sequence_foreach;
alias c_g_sequence_foreach_range  g_sequence_foreach_range;
alias c_g_sequence_sort  g_sequence_sort;
alias c_g_sequence_sort_iter  g_sequence_sort_iter;
alias c_g_sequence_get_begin_iter  g_sequence_get_begin_iter;
alias c_g_sequence_get_end_iter  g_sequence_get_end_iter;
alias c_g_sequence_get_iter_at_pos  g_sequence_get_iter_at_pos;
alias c_g_sequence_append  g_sequence_append;
alias c_g_sequence_prepend  g_sequence_prepend;
alias c_g_sequence_insert_before  g_sequence_insert_before;
alias c_g_sequence_move  g_sequence_move;
alias c_g_sequence_swap  g_sequence_swap;
alias c_g_sequence_insert_sorted  g_sequence_insert_sorted;
alias c_g_sequence_insert_sorted_iter  g_sequence_insert_sorted_iter;
alias c_g_sequence_sort_changed  g_sequence_sort_changed;
alias c_g_sequence_sort_changed_iter  g_sequence_sort_changed_iter;
alias c_g_sequence_remove  g_sequence_remove;
alias c_g_sequence_remove_range  g_sequence_remove_range;
alias c_g_sequence_move_range  g_sequence_move_range;
alias c_g_sequence_search  g_sequence_search;
alias c_g_sequence_search_iter  g_sequence_search_iter;
alias c_g_sequence_get  g_sequence_get;
alias c_g_sequence_set  g_sequence_set;
alias c_g_sequence_range_get_midpoint  g_sequence_range_get_midpoint;

// glib.SequenceIter

alias c_g_sequence_iter_is_begin  g_sequence_iter_is_begin;
alias c_g_sequence_iter_is_end  g_sequence_iter_is_end;
alias c_g_sequence_iter_next  g_sequence_iter_next;
alias c_g_sequence_iter_prev  g_sequence_iter_prev;
alias c_g_sequence_iter_get_position  g_sequence_iter_get_position;
alias c_g_sequence_iter_move  g_sequence_iter_move;
alias c_g_sequence_iter_get_sequence  g_sequence_iter_get_sequence;
alias c_g_sequence_iter_compare  g_sequence_iter_compare;

// glib.TrashStack

alias c_g_trash_stack_push  g_trash_stack_push;
alias c_g_trash_stack_pop  g_trash_stack_pop;
alias c_g_trash_stack_peek  g_trash_stack_peek;
alias c_g_trash_stack_height  g_trash_stack_height;

// glib.HashTable

alias c_g_hash_table_new  g_hash_table_new;
alias c_g_hash_table_new_full  g_hash_table_new_full;
alias c_g_hash_table_insert  g_hash_table_insert;
alias c_g_hash_table_replace  g_hash_table_replace;
alias c_g_hash_table_size  g_hash_table_size;
alias c_g_hash_table_lookup  g_hash_table_lookup;
alias c_g_hash_table_lookup_extended  g_hash_table_lookup_extended;
alias c_g_hash_table_foreach  g_hash_table_foreach;
alias c_g_hash_table_find  g_hash_table_find;
alias c_g_hash_table_remove  g_hash_table_remove;
alias c_g_hash_table_steal  g_hash_table_steal;
alias c_g_hash_table_foreach_remove  g_hash_table_foreach_remove;
alias c_g_hash_table_foreach_steal  g_hash_table_foreach_steal;
alias c_g_hash_table_remove_all  g_hash_table_remove_all;
alias c_g_hash_table_steal_all  g_hash_table_steal_all;
alias c_g_hash_table_get_keys  g_hash_table_get_keys;
alias c_g_hash_table_get_values  g_hash_table_get_values;
alias c_g_hash_table_destroy  g_hash_table_destroy;
alias c_g_hash_table_ref  g_hash_table_ref;
alias c_g_hash_table_unref  g_hash_table_unref;
alias c_g_direct_equal  g_direct_equal;
alias c_g_direct_hash  g_direct_hash;
alias c_g_int_equal  g_int_equal;
alias c_g_int_hash  g_int_hash;
alias c_g_str_equal  g_str_equal;
alias c_g_str_hash  g_str_hash;

// glib.HashTableIter

alias c_g_hash_table_iter_init  g_hash_table_iter_init;
alias c_g_hash_table_iter_next  g_hash_table_iter_next;
alias c_g_hash_table_iter_get_hash_table  g_hash_table_iter_get_hash_table;
alias c_g_hash_table_iter_remove  g_hash_table_iter_remove;
alias c_g_hash_table_iter_steal  g_hash_table_iter_steal;

// glib.StringG

alias c_g_string_new  g_string_new;
alias c_g_string_new_len  g_string_new_len;
alias c_g_string_sized_new  g_string_sized_new;
alias c_g_string_assign  g_string_assign;
alias c_g_string_vprintf  g_string_vprintf;
alias c_g_string_append_vprintf  g_string_append_vprintf;
alias c_g_string_printf  g_string_printf;
alias c_g_string_append_printf  g_string_append_printf;
alias c_g_string_append  g_string_append;
alias c_g_string_append_c  g_string_append_c;
alias c_g_string_append_unichar  g_string_append_unichar;
alias c_g_string_append_len  g_string_append_len;
alias c_g_string_append_uri_escaped  g_string_append_uri_escaped;
alias c_g_string_prepend  g_string_prepend;
alias c_g_string_prepend_c  g_string_prepend_c;
alias c_g_string_prepend_unichar  g_string_prepend_unichar;
alias c_g_string_prepend_len  g_string_prepend_len;
alias c_g_string_insert  g_string_insert;
alias c_g_string_insert_c  g_string_insert_c;
alias c_g_string_insert_unichar  g_string_insert_unichar;
alias c_g_string_insert_len  g_string_insert_len;
alias c_g_string_overwrite  g_string_overwrite;
alias c_g_string_overwrite_len  g_string_overwrite_len;
alias c_g_string_erase  g_string_erase;
alias c_g_string_truncate  g_string_truncate;
alias c_g_string_set_size  g_string_set_size;
alias c_g_string_free  g_string_free;
alias c_g_string_up  g_string_up;
alias c_g_string_down  g_string_down;
alias c_g_string_hash  g_string_hash;
alias c_g_string_equal  g_string_equal;

// glib.StringGChunk

alias c_g_string_chunk_new  g_string_chunk_new;
alias c_g_string_chunk_insert  g_string_chunk_insert;
alias c_g_string_chunk_insert_const  g_string_chunk_insert_const;
alias c_g_string_chunk_insert_len  g_string_chunk_insert_len;
alias c_g_string_chunk_clear  g_string_chunk_clear;
alias c_g_string_chunk_free  g_string_chunk_free;

// glib.ArrayG

alias c_g_array_new  g_array_new;
alias c_g_array_sized_new  g_array_sized_new;
alias c_g_array_append_vals  g_array_append_vals;
alias c_g_array_prepend_vals  g_array_prepend_vals;
alias c_g_array_insert_vals  g_array_insert_vals;
alias c_g_array_remove_index  g_array_remove_index;
alias c_g_array_remove_index_fast  g_array_remove_index_fast;
alias c_g_array_remove_range  g_array_remove_range;
alias c_g_array_sort  g_array_sort;
alias c_g_array_sort_with_data  g_array_sort_with_data;
alias c_g_array_set_size  g_array_set_size;
alias c_g_array_free  g_array_free;

// glib.PtrArray

alias c_g_ptr_array_new  g_ptr_array_new;
alias c_g_ptr_array_sized_new  g_ptr_array_sized_new;
alias c_g_ptr_array_add  g_ptr_array_add;
alias c_g_ptr_array_remove  g_ptr_array_remove;
alias c_g_ptr_array_remove_index  g_ptr_array_remove_index;
alias c_g_ptr_array_remove_fast  g_ptr_array_remove_fast;
alias c_g_ptr_array_remove_index_fast  g_ptr_array_remove_index_fast;
alias c_g_ptr_array_remove_range  g_ptr_array_remove_range;
alias c_g_ptr_array_sort  g_ptr_array_sort;
alias c_g_ptr_array_sort_with_data  g_ptr_array_sort_with_data;
alias c_g_ptr_array_set_size  g_ptr_array_set_size;
alias c_g_ptr_array_free  g_ptr_array_free;
alias c_g_ptr_array_foreach  g_ptr_array_foreach;

// glib.ByteArray

alias c_g_byte_array_new  g_byte_array_new;
alias c_g_byte_array_sized_new  g_byte_array_sized_new;
alias c_g_byte_array_append  g_byte_array_append;
alias c_g_byte_array_prepend  g_byte_array_prepend;
alias c_g_byte_array_remove_index  g_byte_array_remove_index;
alias c_g_byte_array_remove_index_fast  g_byte_array_remove_index_fast;
alias c_g_byte_array_remove_range  g_byte_array_remove_range;
alias c_g_byte_array_sort  g_byte_array_sort;
alias c_g_byte_array_sort_with_data  g_byte_array_sort_with_data;
alias c_g_byte_array_set_size  g_byte_array_set_size;
alias c_g_byte_array_free  g_byte_array_free;

// glib.BBTree

alias c_g_tree_new  g_tree_new;
alias c_g_tree_new_with_data  g_tree_new_with_data;
alias c_g_tree_new_full  g_tree_new_full;
alias c_g_tree_insert  g_tree_insert;
alias c_g_tree_replace  g_tree_replace;
alias c_g_tree_nnodes  g_tree_nnodes;
alias c_g_tree_height  g_tree_height;
alias c_g_tree_lookup  g_tree_lookup;
alias c_g_tree_lookup_extended  g_tree_lookup_extended;
alias c_g_tree_foreach  g_tree_foreach;
alias c_g_tree_traverse  g_tree_traverse;
alias c_g_tree_search  g_tree_search;
alias c_g_tree_remove  g_tree_remove;
alias c_g_tree_steal  g_tree_steal;
alias c_g_tree_destroy  g_tree_destroy;

// glib.Node

alias c_g_node_new  g_node_new;
alias c_g_node_copy  g_node_copy;
alias c_g_node_copy_deep  g_node_copy_deep;
alias c_g_node_insert  g_node_insert;
alias c_g_node_insert_before  g_node_insert_before;
alias c_g_node_insert_after  g_node_insert_after;
alias c_g_node_prepend  g_node_prepend;
alias c_g_node_reverse_children  g_node_reverse_children;
alias c_g_node_traverse  g_node_traverse;
alias c_g_node_children_foreach  g_node_children_foreach;
alias c_g_node_get_root  g_node_get_root;
alias c_g_node_find  g_node_find;
alias c_g_node_find_child  g_node_find_child;
alias c_g_node_child_index  g_node_child_index;
alias c_g_node_child_position  g_node_child_position;
alias c_g_node_last_child  g_node_last_child;
alias c_g_node_nth_child  g_node_nth_child;
alias c_g_node_first_sibling  g_node_first_sibling;
alias c_g_node_last_sibling  g_node_last_sibling;
alias c_g_node_depth  g_node_depth;
alias c_g_node_n_nodes  g_node_n_nodes;
alias c_g_node_n_children  g_node_n_children;
alias c_g_node_is_ancestor  g_node_is_ancestor;
alias c_g_node_max_height  g_node_max_height;
alias c_g_node_unlink  g_node_unlink;
alias c_g_node_destroy  g_node_destroy;
alias c_g_node_push_allocator  g_node_push_allocator;
alias c_g_node_pop_allocator  g_node_pop_allocator;

// glib.Quark

alias c_g_quark_from_string  g_quark_from_string;
alias c_g_quark_from_static_string  g_quark_from_static_string;
alias c_g_quark_to_string  g_quark_to_string;
alias c_g_quark_try_string  g_quark_try_string;
alias c_g_intern_string  g_intern_string;
alias c_g_intern_static_string  g_intern_static_string;

// glib.DataList

alias c_g_datalist_init  g_datalist_init;
alias c_g_datalist_id_set_data_full  g_datalist_id_set_data_full;
alias c_g_datalist_id_get_data  g_datalist_id_get_data;
alias c_g_datalist_id_remove_no_notify  g_datalist_id_remove_no_notify;
alias c_g_datalist_foreach  g_datalist_foreach;
alias c_g_datalist_clear  g_datalist_clear;
alias c_g_datalist_set_flags  g_datalist_set_flags;
alias c_g_datalist_unset_flags  g_datalist_unset_flags;
alias c_g_datalist_get_flags  g_datalist_get_flags;

// glib.Dataset

alias c_g_dataset_id_set_data_full  g_dataset_id_set_data_full;
alias c_g_dataset_id_get_data  g_dataset_id_get_data;
alias c_g_dataset_id_remove_no_notify  g_dataset_id_remove_no_notify;
alias c_g_dataset_foreach  g_dataset_foreach;
alias c_g_dataset_destroy  g_dataset_destroy;

// glib.Relation

alias c_g_relation_new  g_relation_new;
alias c_g_relation_index  g_relation_index;
alias c_g_relation_insert  g_relation_insert;
alias c_g_relation_exists  g_relation_exists;
alias c_g_relation_count  g_relation_count;
alias c_g_relation_select  g_relation_select;
alias c_g_relation_delete  g_relation_delete;
alias c_g_relation_destroy  g_relation_destroy;
alias c_g_relation_print  g_relation_print;

// glib.Tuples

alias c_g_tuples_destroy  g_tuples_destroy;
alias c_g_tuples_index  g_tuples_index;

// glib.Cache

alias c_g_cache_new  g_cache_new;
alias c_g_cache_insert  g_cache_insert;
alias c_g_cache_remove  g_cache_remove;
alias c_g_cache_destroy  g_cache_destroy;
alias c_g_cache_key_foreach  g_cache_key_foreach;
alias c_g_cache_value_foreach  g_cache_value_foreach;

// glib.Allocator

alias c_g_allocator_new  g_allocator_new;
alias c_g_allocator_free  g_allocator_free;
